
"use strict";

let WatchdogStatus = require('./WatchdogStatus.js');
let WiperFront = require('./WiperFront.js');
let DoorRequest = require('./DoorRequest.js');
let AcceleratorPedalReport = require('./AcceleratorPedalReport.js');
let LowVoltageSystemReport = require('./LowVoltageSystemReport.js');
let WiperRear = require('./WiperRear.js');
let DoorState = require('./DoorState.js');
let DriverInputReport = require('./DriverInputReport.js');
let SonarArcNum = require('./SonarArcNum.js');
let TurnSignal = require('./TurnSignal.js');
let WheelPositionReport = require('./WheelPositionReport.js');
let TirePressureReport = require('./TirePressureReport.js');
let GearCmd = require('./GearCmd.js');
let ParkingBrake = require('./ParkingBrake.js');
let MiscReport = require('./MiscReport.js');
let BrakeCmd = require('./BrakeCmd.js');
let SteeringCmd = require('./SteeringCmd.js');
let MiscCmd = require('./MiscCmd.js');
let HmiGlobalEnableReport = require('./HmiGlobalEnableReport.js');
let GlobalEnableCmd = require('./GlobalEnableCmd.js');
let HornState = require('./HornState.js');
let HighBeam = require('./HighBeam.js');
let Brake2Report = require('./Brake2Report.js');
let Ignition = require('./Ignition.js');
let SurroundReport = require('./SurroundReport.js');
let BrakeReport = require('./BrakeReport.js');
let Gear = require('./Gear.js');
let GearReport = require('./GearReport.js');
let ActuatorControlMode = require('./ActuatorControlMode.js');
let WheelSpeedReport = require('./WheelSpeedReport.js');
let HighBeamState = require('./HighBeamState.js');
let LowBeam = require('./LowBeam.js');
let WheelSpeedType = require('./WheelSpeedType.js');
let TwistCmd = require('./TwistCmd.js');
let SteeringReport = require('./SteeringReport.js');
let OtherActuatorsReport = require('./OtherActuatorsReport.js');
let Steering2Report = require('./Steering2Report.js');
let FaultActionsReport = require('./FaultActionsReport.js');
let AcceleratorPedalCmd = require('./AcceleratorPedalCmd.js');

module.exports = {
  WatchdogStatus: WatchdogStatus,
  WiperFront: WiperFront,
  DoorRequest: DoorRequest,
  AcceleratorPedalReport: AcceleratorPedalReport,
  LowVoltageSystemReport: LowVoltageSystemReport,
  WiperRear: WiperRear,
  DoorState: DoorState,
  DriverInputReport: DriverInputReport,
  SonarArcNum: SonarArcNum,
  TurnSignal: TurnSignal,
  WheelPositionReport: WheelPositionReport,
  TirePressureReport: TirePressureReport,
  GearCmd: GearCmd,
  ParkingBrake: ParkingBrake,
  MiscReport: MiscReport,
  BrakeCmd: BrakeCmd,
  SteeringCmd: SteeringCmd,
  MiscCmd: MiscCmd,
  HmiGlobalEnableReport: HmiGlobalEnableReport,
  GlobalEnableCmd: GlobalEnableCmd,
  HornState: HornState,
  HighBeam: HighBeam,
  Brake2Report: Brake2Report,
  Ignition: Ignition,
  SurroundReport: SurroundReport,
  BrakeReport: BrakeReport,
  Gear: Gear,
  GearReport: GearReport,
  ActuatorControlMode: ActuatorControlMode,
  WheelSpeedReport: WheelSpeedReport,
  HighBeamState: HighBeamState,
  LowBeam: LowBeam,
  WheelSpeedType: WheelSpeedType,
  TwistCmd: TwistCmd,
  SteeringReport: SteeringReport,
  OtherActuatorsReport: OtherActuatorsReport,
  Steering2Report: Steering2Report,
  FaultActionsReport: FaultActionsReport,
  AcceleratorPedalCmd: AcceleratorPedalCmd,
};
