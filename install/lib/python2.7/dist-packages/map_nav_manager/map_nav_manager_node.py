#!/usr/bin/env python

# Software License Agreement (BSD License)
#
# Copyright (c) 2015, Robotnik Automation SLL
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Robotnik Automation SSL nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

import subprocess
import shlex
import os, sys
import yaml

import rospy
import rospkg
import rosparam
import roslaunch

import rosnode

import time
import threading

import re

from map_nav_manager.msg import State as MapNavState
from robotnik_msgs.msg import State
from std_srvs.srv import *
from map_nav_manager.srv import *


DEFAULT_FREQ = 10.0
MAX_FREQ = 100.0


# Class Template of Robotnik component for Pyhton
class MapNavManagerNode:

	# /dev/null
	NULL = open(os.devnull, 'w')

	re_ping_node = re.compile('pinging ([^ ]+) with a timeout of \d+.\d+s\s*xmlrpc reply from')

	def __init__(self, args):

		self.node_name = rospy.get_name()
		#self.node_name = rospy.get_name().replace('/','')
		self.desired_freq = args['desired_freq']
		self._config_params_file_path = args['map_nav_config']
		rospy.loginfo('%s::init: config params located in %s'%(self.node_name,self._config_params_file_path))

		# Checks value of freq
		if self.desired_freq <= 0.0 or self.desired_freq > MAX_FREQ:
			rospy.loginfo('%s::init: Desired freq (%f) is not possible. Setting desired_freq to %f'%(self.node_name,self.desired_freq, DEFAULT_FREQ))
			self.desired_freq = DEFAULT_FREQ


		self.real_freq = 0.0

		# Saves the state of the component
		self.state = State.INIT_STATE
		# Saves the previous state
		self.previous_state = State.INIT_STATE
		# flag to control the initialization of the component
		self.initialized = False
		# flag to control the initialization of ROS stuff
		self.ros_initialized = False
		# flag to control that the control loop is running
		self.running = False
		# Variable used to control the loop frequency
		self.time_sleep = 1.0 / self.desired_freq
		# State msg to publish
		self.msg_state = MapNavState()
		# Timer to publish state
		self.publish_state_timer = 1

		self.start_mapping = False
		self.stop_mapping = False
		self.start_navigation = False
		self.stop_navigation = False
		self.save_map = False
		self.set_default_map = False
		self.stop_map_server = False
		self.start_map_server = False
		self.start_localization = False
		self.stop_localization = False

		self.commands = {}
		self.commands['gmapping'] = args['mapping']
		self.commands['move_base'] = args['navigation']
		self.commands['map_saver'] = args['map_saver']
		self.commands['map_server'] = args['map_server']
		self.commands['amcl'] = args['localization']

		self.updateProcesses()

		self.map_name = ''

		#self._config_params_file = args['config_params_file']
		#rp = rospkg.RosPack()
		#self._config_params_file_path = os.path.join(rp.get_path('map_nav_manager'), 'config', self._config_params_file)

		self.t_publish_state = threading.Timer(self.publish_state_timer, self.publishROSstate)

		#Service objects
		self.run_mapping_srv = None  # rospy.Service('~start_mapping_srv', Trigger, self.startMappingServiceCb)
		self.run_navigation_srv = None  # rospy.Service('~start_navigation_srv', Trigger, self.startNavigationServiceCb)
		self.stop_mapping_srv = None
		self.stop_navigation_srv = None
		self.save_map_srv = None
		self.start_map_server_srv = None
		self.stop_map_server_srv = None
		self.start_localization_srv = None
		self.stop_localization_srv = None
		self.restart_all_srv = None

		# Timer to avoid consecutive operations
		self.time_between_process_operations = 5.0
		self.last_time_operation = rospy.Time(0)

		self.restart_all = False
		self.restart_step = 0

	# ===================================================================================================================================
	# ===================================================================================================================================

	def isProcessOperationAvailable(self):
		'''
			return true if we can do a process operation
		'''
		if (rospy.Time.now() - self.last_time_operation).to_sec() >= self.time_between_process_operations:
			#rospy.logerr('isProcessOperationAvailable:: true')
			return True
		else:
			#rospy.logerr('isProcessOperationAvailable:: false')
			return False

	def startMappingServiceCb(self, req):
		'''
			ROS start mapping server
			@param req: Required action
			@type req: std_srv/Empty
		'''
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")
		#rospy.loginfo('startMappingServiceCb: called!')
		if self.map_server:
			return SetFilenameResponse(False, "Map server is running. Mapping is not allowed")
		if self.localization:
			return SetFilenameResponse(False, "Localization amcl process is running. Mapping is not allowed")

		if not self.mapping:
			self.start_mapping = True
			#self.stop_mapping = False
		return TriggerResponse(True, "Successfull!")

	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopMappingServiceCb(self, req):
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")

		rospy.loginfo('stopMappingServiceCb: called!')
		if self.mapping:
			self.stop_mapping = True
		return TriggerResponse(True, "Successfull!")

	# ===================================================================================================================================
	# ===================================================================================================================================

	# ===================================================================================================================================
	# ===================================================================================================================================
	def startNavigationServiceCb(self, req):
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")
		#rospy.loginfo('startNavigationServiceCb: called!')
		if not self.navigation:
			self.start_navigation = True
		return TriggerResponse(True, "Successfull!")

	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopNavigationServiceCb(self, req):
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")
		#rospy.loginfo('stopNavigationServiceCb: called!')
		if self.navigation:
			self.stop_navigation = True
		#self.run_slam_gmapping = False
		return TriggerResponse(True, "Successfull!")


	def restartAllServiceCb(self, req):
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Already restarting all processes")

		self.restart_all = True
		self.restart_step = 0

		return TriggerResponse(True, "Restarting all processes!")

	#===================================================================================================================================
	#===================================================================================================================================

	def saveMapServiceCb(self, req):
		if self.restart_all:
			return SetFilenameResponse(False, "Action not available. Restarting all processes")
		#rospy.loginfo('saveMapServiceCb: called!')
		# self.run_slam_gmapping = False
		# si no esta mapping a true es poruqe no esta funcionando gmapping luego no hay topic /map para salvar
		if self.mapping:
			# rospy.loginfo(req.name)
			self.map_name = req.name
			self.set_default_map = req.use_it_by_default
			self.save_map = True
			return SetFilenameResponse(True, "Map saved correctly")
		else:
			return SetFilenameResponse(False, "It's not possible to save the map")

	 #===================================================================================================================================
	#===================================================================================================================================


	def startMapServerServiceCb(self, req):
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")

		if self.mapping:
			return SetFilenameResponse(False, "Mapping process is running. Map server is not allowed")

		if not self.map_server:
			# rospy.loginfo(req.name)
			self.map_name = req.name
			self.set_default_map = req.use_it_by_default
			self.start_map_server = True
			return SetFilenameResponse(True, "Running map server with map %s"%(req.name))
		else:
			return SetFilenameResponse(True, "Map server already running")


	 #===================================================================================================================================
	#===================================================================================================================================


	def stopMapServerServiceCb(self, req):
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")

		if not self.map_server:
			return TriggerResponse(False, "Map server not running!")
		else:
			self.stop_map_server = True
			return TriggerResponse(True, "Successfull!")


    # ===================================================================================================================================
	# ===================================================================================================================================

	def startLocalizationServiceCb(self, req):
		'''
			ROS service for starting localization nodes
		'''
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")
		#rospy.loginfo('startLocalizationServiceCb: called!')
		if self.mapping:
			return SetFilenameResponse(False, "Mapping process is running. Localization is not allowed")

		if not self.localization:
			self.start_localization = True

		return TriggerResponse(True, "Successfull!")

	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopLocalizationServiceCb(self, req):
		'''
			ROS service for stoping localization nodes
		'''
		if self.restart_all:
			return TriggerResponse(False, "Action not available. Restarting all processes")

		if self.localization:
			self.stop_localization= True
		return TriggerResponse(True, "Successfull!")


	# ===================================================================================================================================
	# ===================================================================================================================================

	def autoRunLocAndNavServiceCb(self, req):
		'''
			ROS service to set the autorun configuration
		'''
		#rospy.loginfo('%s::autoRunLocAndNavServiceCb: called',self.node_name)

		if self.loadYaml() == 0:
			self.dict_yaml['map_server']['autorun'] = req.data
			self.dict_yaml['localization']['autorun'] = req.data
			self.dict_yaml['navigation']['autorun'] = req.data

			if self.saveYaml() != 0:
				rospy.logerr('%s::autoRunLocAndNavServiceCb: error saving yaml config file', self.node_name)
				return SetBoolResponse(False, "Error updating yaml")
			else:
				rospy.loginfo('%s::autoRunLocAndNavServiceCb: default params updated successfully', self.node_name)
				return SetBoolResponse(True, "Successfull!")
		else:
			rospy.logerr('%s::autoRunLocAndNavServiceCb: error reading yaml config file', self.node_name)
			return SetBoolResponse(False, "Error updating yaml")



	# ===================================================================================================================================
	# ===================================================================================================================================

	def updateProcesses(self):
		'''
			check the processes already executed in the system
		'''
		self.listed_nodes = rosnode.get_node_names()
		try:
			process = subprocess.Popen(['rosnode','ping','-a'],stderr=self.NULL,stdout=subprocess.PIPE)
		except KeyboardInterrupt:
			return

		out, err = process.communicate()

		self.executed_nodes = self.re_ping_node.findall(out)

		if any("map_server" in s for s in self.executed_nodes):
			self.map_server = True
		else:
			self.map_server = False
		if any("move_base" in s for s in self.executed_nodes):
			self.navigation = True
		else:
			self.navigation = False
		if any("amcl" in s for s in self.executed_nodes):
			self.localization = True
		else:
			self.localization = False
		if any("gmapping" in s for s in self.executed_nodes):
			self.mapping = True
		else:
			self.mapping = False

		return 0

	# ===================================================================================================================================
	# ===================================================================================================================================

	def startProcess(self, command_type):
		'''
			starts the process defined in the self.commands attribute
			returns 0 if OK, -1 if error
		'''
		if self.commands.has_key(command_type):
			#if any(command_type in s for s in rosnode.get_node_names()):
			#	rospy.logwarn("startProcess: process for %s already running", command_type)
			#	return -1

			command = self.commands[command_type]['command'] + ' ' + self.commands[command_type]['params'] + ' ' + self.commands[command_type]['args']
			rospy.loginfo("startProcess: command %s ", command)
			command = shlex.split(command)
			try:
				self.commands[command_type]['process'] = subprocess.Popen(command)
				rospy.loginfo("startProcess: %s process started.", command_type)
			except ValueError:
				rospy.logerr('startProcess: error running the command %s', self.commands[command_type]['command'] + ' ' + self.commands[command_type]['params'])
				return -1
		else:
			rospy.logerr('startProcess:: no %s commands defined', command_type)
			return -1

		return 0


	def stopProcess(self, command_type):
		'''
			stops the process defined in the self.commands attribute
			returns 0 if OK, -1 if error
		'''

		if self.commands.has_key(command_type):

			if self.commands[command_type]['process'] != '':
				rospy.loginfo("killwith:%s",self.commands[command_type]['killwith'])
				if self.commands[command_type]['killwith'] == 'rosnode':
					node_name = [s for s in rosnode.get_node_names() if command_type in s]
					command = 'rosnode kill ' + node_name[0]
					rospy.loginfo("command:%s", command)
					command = shlex.split(command)
					try:
						p = subprocess.Popen(command)
					except ValueError:
						rospy.logerr('stopProcess: error stopping the command %s', self.commands[command_type]['command'] + ' ' + self.commands[command_type]['params'])
						return -1
				else:
					try:
						self.commands[command_type]['process'].terminate()
						self.commands[command_type]['process'].wait()
						self.commands[command_type]['process'] = ''
						rospy.loginfo("stopProcess: %s process stopped", command_type)
					except ValueError:
						rospy.logerr('stopProcess: error terminating the command %s', self.commands[command_type]['command'] + ' ' + self.commands[command_type]['params'])
						return -1

			#check if the process has been initiated by other program
			elif any(command_type in s for s in rosnode.get_node_names()):
				node_name = [s for s in rosnode.get_node_names() if command_type in s]
				command = 'rosnode kill ' + node_name[0]
				rospy.loginfo("command:%s", command)
				command = shlex.split(command)
				try:
					p = subprocess.Popen(command)
				except ValueError:
					rospy.logerr('stopProcess: error stopping the command %s', self.commands[command_type]['command'] + ' ' + self.commands[command_type]['params'])
					return -1
				p.wait()
				rospy.logwarn("stopProcess: %s process stopped", command_type)
			else:
				rospy.logwarn("stopProcess: process for %s not running", command_type)
				return 0

		else:
			rospy.logerr('stopProcess:: no %s commands defined', command_type)
			return -1

		return 0


	def waitProcess(self, command_type):
		'''
			waits the process defined in the self.commands attribute
			returns 0 if OK, -1 if error
		'''

		if self.commands.has_key(command_type):
			if self.commands[command_type]['process'] != '':
				try:
					self.commands[command_type]['process'].wait()
					self.commands[command_type]['process'] = ''
					rospy.loginfo("waitProcess: %s process stopped", command_type)
				except ValueError:
					rospy.logerr('waitProcess: error waiting the command %s', self.commands[command_type]['command'] + ' ' + self.commands[command_type]['params'])
					return -1

			else:
				rospy.logwarn("waitProcess: process for %s not running", command_type)
				return 0

		else:
			rospy.logerr('waitProcess:: no %s commands defined', command_type)
			return -1

		return 0


	# ===================================================================================================================================
	# ===================================================================================================================================

	def startMappingNodes(self):
		'''
			ROS start mapping nodes (gmapping)
			@param req: Required action
			@type req: std_srv/Empty
		'''

		if self.startProcess('gmapping') == 0:
			self.mapping = True
		else:
			rospy.logwarn('startMappinNodes: the node does not start correctly.')
		self.start_mapping = False


	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopMappingNodes(self):
		'''
			ROS start mapping nodes (gmapping)
			@param req: Required action
			@type req: std_srv/Empty
		'''

		if self.stopProcess('gmapping') == 0:
			self.mapping = False

		self.stop_mapping = False



	#===================================================================================================================================
	#===================================================================================================================================

	def startNavigationNodes(self):
		'''
			ROS start navigation nodes (amcl, move_base)
			@param req: Required actionS
			@type req: std_srv/Empty
		'''
		if self.startProcess('move_base') == 0:
			self.navigation = True

		self.start_navigation = False


	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopNavigationNodes(self):

		if self.stopProcess('move_base') == 0:
			self.navigation = False

		self.stop_navigation = False

	#===================================================================================================================================
	#===================================================================================================================================

	def saveMap(self):
		'''
			Saves the current map into the desired folder
		'''
		if self.commands.has_key('map_saver'):
			self.commands['map_saver']['args'] = '-f ' + self.commands['map_saver']['maps_folder'] + '/' + self.map_name

		self.startProcess('map_saver')
		self.waitProcess('map_saver')
		self.save_map = False

		# Need to modify config yaml file to autorun mapping
		if self.set_default_map:
			if self.loadYaml() == 0:
				self.dict_yaml['map_server']['default_map'] = self.map_name
				self.commands['map_server']['default_map'] = self.map_name
				if self.saveYaml() != 0:
					rospy.logerr('%s::saveMap: error saving yaml config file', self.node_name)
				else:
					rospy.loginfo('%s::saveMap: map %s saved as default one', self.node_name, self.map_name)
			else:
				rospy.logerr('%s::saveMap: error loading yaml config file', self.node_name)
			self.set_default_map = False

	# ===================================================================================================================================
	# ===================================================================================================================================

	def startMapServer(self):
		'''
			Starts a map server with the desired map
		'''
		if self.set_default_map:
			if self.loadYaml() == 0:
				self.dict_yaml['map_server']['default_map'] = self.map_name
				self.commands['map_server']['default_map'] = self.map_name
				if self.saveYaml() != 0:
					rospy.logerr('%s::saveMap: error saving yaml config file', self.node_name)
				else:
					rospy.loginfo('%s::saveMap: map %s saved as default one', self.node_name, self.map_name)
			else:
				rospy.logerr('%s::saveMap: error loading yaml config file', self.node_name)
			self.set_default_map = False


		if self.map_name == '' and self.commands['map_server'].has_key('default_map'):
			self.map_name = self.commands['map_server']['default_map']
			rospy.logwarn('startMapServer: setting map name to default one: %s', self.map_name)

		if self.commands.has_key('map_server'):
			map_file = self.map_name
			self.commands['map_server']['args'] = self.commands['map_server']['maps_folder'] + '/' + map_file + '.yaml'

		if self.startProcess('map_server') == 0:
			self.map_server = True
		else:
			rospy.logwarn('startMapServer: the node does not start correctly. Check if map name and path is correct.')

		self.start_map_server = False

	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopMapServer(self):
		'''

		'''
		if self.stopProcess('map_server') == 0:
			self.map_server = False

		self.stop_map_server = False

	  # ===================================================================================================================================
	# ===================================================================================================================================

	def startLocalization(self):
		'''
			Starts localization nodes
		'''
		if self.startProcess('amcl') == 0:
			self.localization = True

		self.start_localization = False

		return

	# ===================================================================================================================================
	# ===================================================================================================================================

	def stopLocalization(self):
		'''
			ROS service for stoping localization nodes
		'''
		if self.stopProcess('amcl') == 0:
			self.localization = False

		self.stop_localization = False

		return



	# ===================================================================================================================================
	# ===================================================================================================================================

	def setup(self):
		'''
			Initializes de hand
			@return: True if OK, False otherwise
		'''

		self.initialized = True

		return 0


	def rosSetup(self):
		'''
			Creates and inits ROS components
		'''

		self.setup()


		if self.ros_initialized:
			return 0

		# Publishers
		self._state_publisher = rospy.Publisher('~state', MapNavState, queue_size=10)
		# Subscribers
		# topic_name, msg type, callback, queue_size
		# self.topic_sub = rospy.Subscriber('topic_name', Int32, self.topicCb, queue_size = 10)
		# Service Servers
		# self.service_server = rospy.Service('~service', Empty, self.serviceCb)
		# Service Clients
		# self.service_client = rospy.ServiceProxy('service_name', ServiceMsg)
		# ret = self.service_client.call(ServiceMsg)

		self.run_mapping_srv = rospy.Service('~start_mapping', Trigger, self.startMappingServiceCb)
		self.run_navigation_srv = rospy.Service('~start_navigation', Trigger, self.startNavigationServiceCb)
		self.stop_mapping_srv = rospy.Service('~stop_mapping', Trigger, self.stopMappingServiceCb)
		self.stop_navigation_srv = rospy.Service('~stop_navigation', Trigger, self.stopNavigationServiceCb)
		self.save_map_srv = rospy.Service('~save_map', SetFilename, self.saveMapServiceCb)
		self.start_map_server_srv = rospy.Service('~start_map_server', SetFilename, self.startMapServerServiceCb)
		self.stop_map_server_srv = rospy.Service('~stop_map_server', Trigger, self.stopMapServerServiceCb)
		self.start_localization_srv = rospy.Service('~start_localization', Trigger, self.startLocalizationServiceCb)
		self.stop_localization_srv = rospy.Service('~stop_localization', Trigger, self.stopLocalizationServiceCb)
		self.stop_localization_srv = rospy.Service('~autorun_loc_and_nav', SetBool, self.autoRunLocAndNavServiceCb)
		self.restart_all_srv = rospy.Service('~restart_all', Trigger, self.restartAllServiceCb)

		self.ros_initialized = True

		self.publishROSstate()

		return 0


	def shutdown(self):
		'''
			Shutdowns device
			@return: 0 if it's performed successfully, -1 if there's any problem or the component is running
		'''
		if self.running or not self.initialized:
			return -1
		rospy.loginfo('%s::shutdown'%self.node_name)

		# Cancels current timers
		self.t_publish_state.cancel()

		self._state_publisher.unregister()

		self.initialized = False

		return 0


	def rosShutdown(self):
		'''
			Shutdows all ROS components
			@return: 0 if it's performed successfully, -1 if there's any problem or the component is running
		'''
		if self.running or not self.ros_initialized:
			return -1

		# Performs ROS topics & services shutdown
		self._state_publisher.unregister()

		self.ros_initialized = False

		return 0


	def stop(self):
		'''
			Creates and inits ROS components
		'''
		self.running = False

		return 0


	def start(self):
		'''
			Runs ROS configuration and the main control loop
			@return: 0 if OK
		'''
		self.rosSetup()

		if self.running:
			return 0

		self.running = True

		self.controlLoop()

		return 0


	def controlLoop(self):
		'''
			Main loop of the component
			Manages actions by state
		'''
		rospy.loginfo('%s::controlLoop: Running...'%self.node_name)

		while self.running and not rospy.is_shutdown():

			t1 = time.time()

			self.updateProcesses()

			if self.state == State.INIT_STATE:
				self.initState()

			elif self.state == State.STANDBY_STATE:
				self.standbyState()

			elif self.state == State.READY_STATE:
				self.readyState()

			elif self.state == State.EMERGENCY_STATE:
				self.emergencyState()

			elif self.state == State.FAILURE_STATE:
				self.failureState()

			elif self.state == State.SHUTDOWN_STATE:
				self.shutdownState()

			self.allState()

			t2 = time.time()
			tdiff = (t2 - t1)


			t_sleep = self.time_sleep - tdiff

			if t_sleep > 0.0:
				try:
					rospy.sleep(t_sleep)
				except rospy.exceptions.ROSInterruptException:
					rospy.loginfo('%s::controlLoop: ROS interrupt exception'%self.node_name)
					self.running = False

			t3= time.time()
			self.real_freq = 1.0/(t3 - t1)

		self.running = False
		# Performs component shutdown
		self.shutdownState()
		# Performs ROS shutdown
		self.rosShutdown()
		rospy.loginfo('%s::controlLoop: exit control loop'%self.node_name)

		return 0


	def rosPublish(self):
		'''
			Publish topics at standard frequency
		'''

		return 0


	def initState(self):
		'''
			Actions performed in init state
		'''

		if not self.initialized:
			self.setup()

		else:
			# checks auto-run flags
			# available map server, navigation and localization
			if self.commands['map_server']['autorun']:
				self.start_map_server = True

			if self.commands['amcl']['autorun']:
				self.start_localization = True

			if self.commands['move_base']['autorun']:
				self.start_navigation = True

			self.switchToState(State.STANDBY_STATE)


		return


	def standbyState(self):
		'''
			Actions performed in standby state
		'''

		self.switchToState(State.READY_STATE)

		return


	def readyState(self):
		'''
			Actions performed in ready state
		'''
		new_process_operation = False

		if self.isProcessOperationAvailable():

			# Petition to restart is active
			if self.restart_all:
				# STOP ALL
				if self.restart_step == 0:
					rospy.loginfo('%s::readyState: enable stopping flags for all the processes!'%(self.node_name))
					self.restart_step += 1
					if self.mapping:
						self.stop_mapping = True
					if self.navigation:
						self.stop_navigation = True
					if self.map_server:
						self.stop_map_server = True
					if self.localization:
						self.stop_localization = True
				# WAIT FOR STOP
				elif self.restart_step == 1:

					if not self.mapping and not self.navigation and not self.localization and not self.map_server:
						rospy.loginfo('%s::readyState:  all the processes are stopped!'%(self.node_name))
						self.restart_step += 1
					else:
						rospy.loginfo_throttle(1,'%s::readyState: waiting for all the processes to be stopped!'%(self.node_name))
				# START ALL
				elif self.restart_step == 2:
					rospy.loginfo('%s::readyState: enable start flags for all the processes (excluding mapping)!'%(self.node_name))
					self.restart_step += 1
					self.start_navigation = True
					self.start_map_server = True
					self.start_localization = True
				# WAIT FOR START
				elif self.restart_step == 3:
					if self.navigation and self.localization and self.map_server:
						rospy.loginfo('%s::readyState:  all the processes are running again!'%(self.node_name))
						self.restart_step += 1
					else:
						rospy.loginfo_throttle(1,'%s::readyState: waiting for all the processes (excluding mapping) to be running!'%(self.node_name))
				# END
				elif self.restart_step == 4:
					rospy.loginfo('%s::readyState: restart sequence completed!'%(self.node_name))
					self.restart_all = False

			# MAPPING
			if self.start_mapping:
				new_process_operation = True
				self.startMappingNodes()
			elif self.stop_mapping:
				new_process_operation = True
				self.stopMappingNodes()

			# SAVE MAP
			elif self.save_map:
				self.saveMap()

			# MAP SERVER
			elif self.start_map_server:
				new_process_operation = True
				self.startMapServer()
			elif self.stop_map_server:
				new_process_operation = True
				self.stopMapServer()

			# LOCALIZATION
			elif self.start_localization:
				new_process_operation = True
				self.startLocalization()
			elif self.stop_localization:
				new_process_operation = True
				self.stopLocalization()

			# NAVIGATION
			elif self.start_navigation:
				new_process_operation = True
				self.startNavigationNodes()
			elif self.stop_navigation:
				new_process_operation = True
				self.stopNavigationNodes()

		if new_process_operation:
			self.last_time_operation = rospy.Time.now()

		return


	def shutdownState(self):
		'''
			Actions performed in shutdown state
		'''
		if self.shutdown() == 0:
			self.switchToState(State.INIT_STATE)

		return


	def emergencyState(self):
		'''
			Actions performed in emergency state
		'''

		return


	def failureState(self):
		'''
			Actions performed in failure state
		'''


		return


	def switchToState(self, new_state):
		'''
			Performs the change of state
		'''
		if self.state != new_state:
			self.previous_state = self.state
			self.state = new_state
			rospy.loginfo('%s::switchToState: %s'%(self.node_name, self.stateToString(self.state)))

		return


	def allState(self):
		'''
			Actions performed in all states
		'''
		self.rosPublish()

		return


	def stateToString(self, state):
		'''
			@param state: state to set
			@type state: State
			@returns the equivalent string of the state
		'''
		if state == State.INIT_STATE:
			return 'INIT_STATE'

		elif state == State.STANDBY_STATE:
			return 'STANDBY_STATE'

		elif state == State.READY_STATE:
			return 'READY_STATE'

		elif state == State.EMERGENCY_STATE:
			return 'EMERGENCY_STATE'

		elif state == State.FAILURE_STATE:
			return 'FAILURE_STATE'

		elif state == State.SHUTDOWN_STATE:
			return 'SHUTDOWN_STATE'
		else:
			return 'UNKNOWN_STATE'


	def publishROSstate(self):
		'''
			Publish the State of the component at the desired frequency
		'''
		self.msg_state.state.state = self.state
		self.msg_state.state.state_description = self.stateToString(self.state)
		self.msg_state.state.desired_freq = self.desired_freq
		self.msg_state.state.real_freq = self.real_freq
		self.msg_state.mapping = self.mapping
		self.msg_state.navigation = self.navigation
		self.msg_state.map_server = self.map_server
		self.msg_state.localization = self.localization
		self._state_publisher.publish(self.msg_state)

		self.t_publish_state = threading.Timer(self.publish_state_timer, self.publishROSstate)
		self.t_publish_state.start()

	def loadYaml(self):
		'''
			Loads the saved positions/states from the config file into memory
			@return 0 if OK
			@return -1 if ERROR
		'''
		try:
			# opens the file in read mode
			f = open(self._config_params_file_path, 'r')
			self.dict_yaml = yaml.safe_load(f)
			if self.dict_yaml is None:
				self.dict_yaml = {}
			#rospy.loginfo('loadYaml: dict = %s'%self.dict_yaml)
			f.close()

		except IOError, e:
			rospy.logerr('%s:loadYaml:  error openning file %s: %s'%(self.node_name, self._config_params_file_path, e))
			return -1

		except yaml.scanner.ScannerError, e:
			rospy.logerr('%s:loadYaml:  error parsing file %s: %s'%(self.node_name, self._config_params_file_path, e))
			return -1

		return 0


	def saveYaml(self):
		'''
			Saves positions/states from memory to file
			@return 0 if OK
			@return -1 if ERROR
		'''
		try:
			# opens the file in read mode
			f = open(self._config_params_file_path, 'w')
			f.write( yaml.dump(self.dict_yaml, default_flow_style=False))
			f.close()

		except IOError, e:
			rospy.logerr('%s:loadYaml:  error openning file %s: %s'%(self.node_name, self._config_params_file_path, e))
			return -1

		return 0


	"""
	def topicCb(self, msg):
		'''
			Callback for inelfe_video_manager state
			@param msg: received message
			@type msg: std_msgs/Int32
		'''
		# DEMO
		rospy.loginfo('RComponent:topicCb')
	def serviceCb(self, req):
		'''
			ROS service server
			@param req: Required action
			@type req: std_srv/Empty
		'''
		# DEMO
		rospy.loginfo('RComponent:serviceCb')
	"""

def main():

    rospy.init_node("map_nav_manager_node")


    _name = rospy.get_name().replace('/','')

    arg_defaults = {
        'topic_state': 'state',
        'desired_freq': DEFAULT_FREQ,
        'navigation': {},
        'mapping': {},
        'map_server': {},
        'map_saver': {},
        'localization': {},
        'map_nav_config': os.path.join(rospkg.RosPack().get_path('map_nav_manager'), 'config', 'map_nav_manager.yaml')
    }

    args = {}

    for name in arg_defaults:
        try:
            if rospy.search_param(name):
                args[name] = rospy.get_param('~%s'%(name)) # Adding the name of the node, because the para has the namespace of the node
            else:
                args[name] = arg_defaults[name]
            #print name
        except rospy.ROSException, e:
            rospy.logerr('%s: %s'%(e, _name))


    map_nav_manager_node = MapNavManagerNode(args)

    rospy.loginfo('%s: starting'%(_name))

    map_nav_manager_node.start()


if __name__ == "__main__":
	main()
