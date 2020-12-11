
"use strict";

let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')
let ack_alarm = require('./ack_alarm.js')
let set_float_value = require('./set_float_value.js')
let enable_disable = require('./enable_disable.js')
let set_mode = require('./set_mode.js')
let QueryAlarms = require('./QueryAlarms.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let set_odometry = require('./set_odometry.js')
let get_alarms = require('./get_alarms.js')
let home = require('./home.js')
let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let set_ptz = require('./set_ptz.js')
let get_digital_input = require('./get_digital_input.js')
let SetBuzzer = require('./SetBuzzer.js')
let SetElevator = require('./SetElevator.js')
let set_analog_output = require('./set_analog_output.js')
let get_modbus_register = require('./get_modbus_register.js')
let get_mode = require('./get_mode.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let set_height = require('./set_height.js')
let GetBool = require('./GetBool.js')
let set_modbus_register = require('./set_modbus_register.js')
let SetMotorPID = require('./SetMotorPID.js')
let set_digital_output = require('./set_digital_output.js')
let InsertTask = require('./InsertTask.js')
let ResetFromSubState = require('./ResetFromSubState.js')
let axis_record = require('./axis_record.js')
let SetMotorMode = require('./SetMotorMode.js')
let SetLaserMode = require('./SetLaserMode.js')
let SetMotorStatus = require('./SetMotorStatus.js')

module.exports = {
  set_CartesianEuler_pose: set_CartesianEuler_pose,
  ack_alarm: ack_alarm,
  set_float_value: set_float_value,
  enable_disable: enable_disable,
  set_mode: set_mode,
  QueryAlarms: QueryAlarms,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  set_odometry: set_odometry,
  get_alarms: get_alarms,
  home: home,
  SetNamedDigitalOutput: SetNamedDigitalOutput,
  SetEncoderTurns: SetEncoderTurns,
  set_ptz: set_ptz,
  get_digital_input: get_digital_input,
  SetBuzzer: SetBuzzer,
  SetElevator: SetElevator,
  set_analog_output: set_analog_output,
  get_modbus_register: get_modbus_register,
  get_mode: get_mode,
  set_named_digital_output: set_named_digital_output,
  set_height: set_height,
  GetBool: GetBool,
  set_modbus_register: set_modbus_register,
  SetMotorPID: SetMotorPID,
  set_digital_output: set_digital_output,
  InsertTask: InsertTask,
  ResetFromSubState: ResetFromSubState,
  axis_record: axis_record,
  SetMotorMode: SetMotorMode,
  SetLaserMode: SetLaserMode,
  SetMotorStatus: SetMotorStatus,
};
