
"use strict";

let alarmsmonitor = require('./alarmsmonitor.js');
let ptz = require('./ptz.js');
let Register = require('./Register.js');
let AlarmSensor = require('./AlarmSensor.js');
let Axis = require('./Axis.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let inputs_outputs = require('./inputs_outputs.js');
let Pose2DArray = require('./Pose2DArray.js');
let MotorStatus = require('./MotorStatus.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let named_input_output = require('./named_input_output.js');
let BoolArray = require('./BoolArray.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let BatteryStatus = require('./BatteryStatus.js');
let Registers = require('./Registers.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let InverterStatus = require('./InverterStatus.js');
let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let Data = require('./Data.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let Interfaces = require('./Interfaces.js');
let QueryAlarm = require('./QueryAlarm.js');
let MotorPID = require('./MotorPID.js');
let Alarms = require('./Alarms.js');
let LaserMode = require('./LaserMode.js');
let encoders = require('./encoders.js');
let alarmmonitor = require('./alarmmonitor.js');
let SubState = require('./SubState.js');
let named_inputs_outputs = require('./named_inputs_outputs.js');
let State = require('./State.js');
let ElevatorAction = require('./ElevatorAction.js');
let MotorsStatus = require('./MotorsStatus.js');
let StringArray = require('./StringArray.js');
let LaserStatus = require('./LaserStatus.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');
let SetElevatorAction = require('./SetElevatorAction.js');
let SetElevatorResult = require('./SetElevatorResult.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');

module.exports = {
  alarmsmonitor: alarmsmonitor,
  ptz: ptz,
  Register: Register,
  AlarmSensor: AlarmSensor,
  Axis: Axis,
  MotorHeadingOffset: MotorHeadingOffset,
  Pose2DStamped: Pose2DStamped,
  inputs_outputs: inputs_outputs,
  Pose2DArray: Pose2DArray,
  MotorStatus: MotorStatus,
  BatteryDockingStatus: BatteryDockingStatus,
  named_input_output: named_input_output,
  BoolArray: BoolArray,
  ElevatorStatus: ElevatorStatus,
  BatteryStatus: BatteryStatus,
  Registers: Registers,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  InverterStatus: InverterStatus,
  MotorsStatusDifferential: MotorsStatusDifferential,
  Data: Data,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  SafetyModuleStatus: SafetyModuleStatus,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  BatteryStatusStamped: BatteryStatusStamped,
  Interfaces: Interfaces,
  QueryAlarm: QueryAlarm,
  MotorPID: MotorPID,
  Alarms: Alarms,
  LaserMode: LaserMode,
  encoders: encoders,
  alarmmonitor: alarmmonitor,
  SubState: SubState,
  named_inputs_outputs: named_inputs_outputs,
  State: State,
  ElevatorAction: ElevatorAction,
  MotorsStatus: MotorsStatus,
  StringArray: StringArray,
  LaserStatus: LaserStatus,
  SetElevatorGoal: SetElevatorGoal,
  SetElevatorAction: SetElevatorAction,
  SetElevatorResult: SetElevatorResult,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
  SetElevatorActionGoal: SetElevatorActionGoal,
};
