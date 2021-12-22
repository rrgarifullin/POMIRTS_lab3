
TYPE
	MTWinderAxisControllerIntType : 	STRUCT  (*Data for internal use.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		Configuration : MTWinderConfigurationType; (*Data for internal use.*)
		Parameters : MTWinderAxisControllerType; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		StartSynchronizationOld : BOOL; (*Data for internal use.*)
		StopSynchronizationOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		Update : BOOL; (*Data for internal use.*)
		WinderRatio : LREAL; (*Data for internal use.*)
		ActualDiameter : REAL; (*Data for internal use.*)
		ActIntegrationTime : REAL; (*Data for internal use.*)
		ActProportionalGainOld : REAL; (*Data for internal use.*)
		ActProportionalGain : REAL; (*Data for internal use.*)
		ActualInertia : REAL; (*Data for internal use.*)
		RollerDensity : REAL; (*Data for internal use.*)
		StatusIDUpdate : DINT; (*Data for internal use.*)
		StatusIDCommando : DINT; (*Data for internal use.*)
		StatusIDCyclic : DINT; (*Data for internal use.*)
		InSynchronizationOld : BOOL; (*Data for internal use.*)
		SynchronizationParameters : MTWinderAxisControllerSyncType; (*Data for internal use.*)
		SetLineVelocitySampled : REAL; (*Data for internal use.*)
	END_STRUCT;
	MTWinderAxisControllerSyncEnum : 
		( (*Synchronization state of the axis controller.*)
		mtWND_STATE_STOP := 0, (*Data for internal use.*)
		mtWND_STATE_RAMP_UP := 1, (*Data for internal use.*)
		mtWND_STATE_IN_SYNC := 2, (*Data for internal use.*)
		mtWND_STATE_RAMP_DOWN := 3 (*Data for internal use.*)
		);
	MTWinderAxisControllerSyncType : 	STRUCT  (*Ramp up time parameters for the synchronization.*)
		SyncState : MTWinderAxisControllerSyncEnum; (*Data for internal use.*)
		SyncLineVelocity : REAL; (*Data for internal use.*)
		SyncLineVelocityOld : REAL; (*Data for internal use.*)
		SyncLineAcceleration : REAL; (*Data for internal use.*)
		alpha : REAL; (*Data for internal use.*)
		SyncTime : REAL; (*Data for internal use.*)
	END_STRUCT;
	MTWinderAxisControllerType : 	STRUCT  (*Parameter for the winder axis.*)
		MinTorque : REAL; (*Lower limit for the motor torque preset value SetMotorTorque. Unit: [Nm]. *)
		MaxTorque : REAL; (*Upper limit for the motor torque preset value SetMotorTorque. Unit: [Nm].*)
		Interpolation : MTWinderInterpolationType; (*Parameter for interpolating the speed controller parameters of the winder axis.*)
	END_STRUCT;
	MTWinderAxisType : 	STRUCT  (*Axis parameter.*)
		LineUnits : REAL; (*Scaling of the line position. Unit: [Units/m]. *)
		WinderUnits : UDINT; (*Scaling of the winder axis. Unit: [Units].*)
		RevMotor : UDINT; (*Number of motor revolutions required for the position of the winder to increase/decrease by a number of units equal to WinderUnits. Unit: [Rev]. *)
		GearRatio : REAL; (*Gear ratio between the motor and winder (motor speed � winder speed). Unit: [1]. *)
		WinderType : MTWinderTypeEnum; (*Selects whether the system is a winder or unwinder unit.*)
		ReverseWinderDirection : BOOL; (*Changes the direction of rotation for the winder axis.*)
	END_STRUCT;
	MTWinderConfigurationType : 	STRUCT  (*Configuration parameters for the winder and the motor.*)
		Geometry : MTWinderGeometryType; (*Geometric parameter of winder.*)
		Axis : MTWinderAxisType; (*Axis parameter.*)
	END_STRUCT;
	MTWinderControllerType : 	STRUCT  (*Parameter for setting the controller.*)
		PIDParameters : MTPIDParametersType; (*PID parameter.*)
		MaxLineVelocityCorrection : REAL; (*Maximum permitted correction by controller depending on the line velocity. Unit: [mm/s].*)
		MaxControlError : REAL; (*Threshold value for detecting material failure. Unit: [mm] for closed-loop dancer control, [N] for closed-loop tension control.*)
	END_STRUCT;
	MTWinderDancerControllerIntType : 	STRUCT  (*Data for internal use.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		Configuration : MTWinderConfigurationType; (*Data for internal use.*)
		Parameters : MTWinderControllerType; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		WinderRatio : LREAL; (*Data for internal use.*)
		ActualDiameter : REAL; (*Data for internal use.*)
		MaterialBreak : BOOL; (*Data for internal use.*)
		ControlError : REAL; (*Data for internal use.*)
		ControlErrorOld : REAL; (*Data for internal use.*)
		PIDStatusID : DINT; (*Data for internal use.*)
		ProportionalPart : REAL; (*Data for internal use.*)
		IntegrationPart : REAL; (*Data for internal use.*)
		DerivativePart : REAL; (*Data for internal use.*)
		ControllerOutput : REAL; (*Data for internal use.*)
		HoldIntegration : MTPIDIntegrationEnum; (*Data for internal use.*)
		IntegrationStatus : MTPIDIntegrationEnum; (*Data for internal use.*)
		StatusIDUpdate : DINT; (*Data for internal use.*)
	END_STRUCT;
	MTWinderDiameterEstBufferParType : 	STRUCT  (*Buffer parameters for the diameter estimator.*)
		Counter : USINT; (*Data for internal use.*)
		Index : USINT; (*Data for internal use.*)
		ActDiameter : ARRAY[0..99]OF LREAL; (*Data for internal use.*)
		WinderRevolution : ARRAY[0..99]OF LREAL; (*Data for internal use.*)
	END_STRUCT;
	MTWinderDiameterEstInternalType : 	STRUCT  (*Data for internal use.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		Configuration : MTWinderConfigurationType; (*Data for internal use.*)
		Parameters : MTWinderDiameterEstType; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		Mode : MTWinderDiameterEstModeEnum; (*Data for internal use.*)
		SetPresetDiameterOld : BOOL; (*Data for internal use.*)
		PresetDiameter : REAL; (*Data for internal use.*)
		WinderRatio : LREAL; (*Data for internal use.*)
		RollerDensity : REAL; (*Data for internal use.*)
		SetPresetDiameterMode : USINT; (*Data for internal use.*)
		ReverseWinder : SINT; (*Data for internal use.*)
		MaterialBreak : BOOL; (*Data for internal use.*)
		SystemParameters : MTWinderDiameterEstSysParType; (*Data for internal use.*)
		EstimationParameters : MTWinderDiameterEstParType; (*Data for internal use.*)
		BufferParameters : MTWinderDiameterEstBufferParType; (*Data for internal use.*)
		LQFilter : MTWinderDiameterEstLQFilterType; (*Data for internal use.*)
		ActDiameter : REAL; (*Data for internal use.*)
		AvgMaterialThickness : REAL; (*Data for internal use.*)
		MinDiameterAchieved : BOOL; (*Data for internal use.*)
		ActLinePosition : DINT; (*Data for internal use.*)
		ActLinePositionOld : DINT; (*Data for internal use.*)
		FilterWindowTime : LREAL; (*Data for internal use.*)
		RemainingRunTime : ARRAY[0..2]OF REAL; (*Data for internal use.*)
		LineVelocity : REAL; (*Data for internal use.*)
	END_STRUCT;
	MTWinderDiameterEstLQFilterType : 	STRUCT  (*Filter parameters for the diameter estimator.*)
		LQError : REAL; (*Data for internal use.*)
		LQOutputFiltered : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
		LQOutput : ARRAY[0..1]OF REAL; (*Data for internal use.*)
		LQParameterVector : ARRAY[0..2]OF REAL; (*Data for internal use.*)
		UpdateFilter : BOOL; (*Data for internal use.*)
		ResetFilter : BOOL; (*Data for internal use.*)
		InitFilter : BOOL; (*Data for internal use.*)
		NumberOfDataVector : UDINT; (*Data for internal use.*)
		BVector : ARRAY[0..1]OF DINT; (*Data for internal use.*)
		XVector : ARRAY[0..1]OF LREAL; (*Data for internal use.*)
	END_STRUCT;
	MTWinderDiameterEstModeEnum : 
		( (*Diameter estimation mode.*)
		mtWND_NO_ESTIMATION := 0, (*Disables the diameter estimation.*)
		mtWND_POSITION_BASED := 1, (*Cyclic diameter estimation based on differences in position.*)
		mtWND_VELOCITY_INTEGRATION_BASED := 2 (*Cyclic diameter estimation based on integrated speeds.*)
		);
	MTWinderDiameterEstParType : 	STRUCT  (*Estimation parameters for the diameter estimator.*)
		ActDiameter : LREAL; (*Data for internal use.*)
		ActDiameterOld : REAL; (*Data for internal use.*)
		ActDiameterCorrect : REAL; (*Data for internal use.*)
		ActDiameterStart : REAL; (*Data for internal use.*)
		StartEstimation : BOOL; (*Data for internal use.*)
		StartLinePosition : DINT; (*Data for internal use.*)
		StartWinderPosition : DINT; (*Data for internal use.*)
		StartDancerPosition : REAL; (*Data for internal use.*)
		LinePositionIntegration : LREAL; (*Data for internal use.*)
		WinderPositionIntegration : LREAL; (*Data for internal use.*)
		ActWinderRevolution : ARRAY[0..2]OF LREAL; (*Data for internal use.*)
		WinderRevolution : LREAL; (*Data for internal use.*)
		ActLinePositionOld : DINT; (*Data for internal use.*)
	END_STRUCT;
	MTWinderDiameterEstSysParType : 	STRUCT  (*System parameters for the diameter estimator.*)
		ActWinderPositionOld : DINT; (*Data for internal use.*)
		ActWinderPositionDelta : DINT; (*Data for internal use.*)
		ActWinderRevolution : LREAL; (*Data for internal use.*)
		ActMotorRevolution : ARRAY[0..1]OF UDINT; (*Data for internal use.*)
	END_STRUCT;
	MTWinderDiameterEstType : 	STRUCT  (*Parameter for diameter estimation.*)
		CyclicEstimationWindow : UDINT; (*Duration of the cyclic estimation window for estimating the diameter. Unit: [Units].*)
		FilterWindow : UDINT; (*Position-related filter constant for the filter. Unit: [Units].*)
		MaterialBreakThreshold : REAL; (*Window for detecting material failure. Unit: [mm].*)
	END_STRUCT;
	MTWinderGeometryType : 	STRUCT  (*Geometric parameter of winder.*)
		WinderWidth : REAL; (*Width of the winder. Unit: [mm]. *)
		MaterialThickness : REAL; (*Material thickness or diameter (e.g. of the wire). Unit: [�m]. *)
		MaxDiameter : REAL; (*Maximum winder diameter. Unit: [mm]. *)
		MinDiameter : REAL; (*Minimum winder diameter. Unit: [mm].*)
		MinInertia : REAL; (*Moment of inertia of the winder at diameter MinDiameter. Unit: [kgm�]. *)
		TestDiameter : REAL; (*Winder diameter between the minimum and maximum diameter at which the TestInertia or TestProportionalGain and TestIntegrationTime are determined. This diameter should be as large as possible. Unit: [mm].*)
		TestInertia : REAL; (*Moment of inertia of the winder at diameter TestDiameter. Unit: [kgm�]. *)
	END_STRUCT;
	MTWinderInterpolationType : 	STRUCT  (*Parameter for interpolating the speed controller parameters of the winder axis.*)
		MinProportionalGain : REAL; (*Proportional gain of speed controller at minimum diameter MinDiameter. Unit: [As].*)
		TestProportionalGain : REAL; (*Proportional gain of speed controller at diameter TestDiameter. Unit: [As].*)
		MinIntegrationTime : REAL; (*Integration time of speed controller at minimum diameter. Unit: [s].*)
		TestIntegrationTime : REAL; (*Integration time of speed controller at diameter TestDiameter. Unit: [s].*)
	END_STRUCT;
	MTWinderModelTypeEnum : 
		( (*Model for the winder application.*)
		mtWND_DANCER := 0, (*Uses the simulation model for dancer control.*)
		mtWND_TENSION_CLOSED_LOOP := 1, (*Uses the simulation model for closed-loop tension control.*)
		mtWND_TENSION_OPEN_LOOP := 2 (*Uses the simulation model for open-loop tension control.*)
		);
	MTWinderSimMaterialParType : 	STRUCT  (*Simulation model material parameters.*)
		RollerDensity : REAL; (*Roller density [kg/m�].*)
		ElasticityConstant : REAL; (*Elacticity constant [N/mm�].*)
		Elongation : REAL; (*Elongation [N/m�].*)
		Material : USINT; (*Plastic = 0. Paper = 1.*)
	END_STRUCT;
	MTWinderSimSystemParType : 	STRUCT  (*Simulation model system parameters.*)
		LinePosition : LREAL; (*Actual line position, [m]*)
		LineVelocity : LREAL; (*Actual line velocity, [m/s]*)
		IntegratorState : LREAL; (*Integrator state.*)
		MaterialTension : ARRAY[0..2]OF LREAL; (*Material tension [N].*)
		DancerArmPosition : ARRAY[0..2]OF LREAL; (*Dancer arm position [rad].*)
		DancerArmVelocity : ARRAY[0..2]OF LREAL; (*Dancer arm velocity [rad/s].*)
		WinderRollerPosition : ARRAY[0..2]OF LREAL; (*Winder roller position [rad].*)
		WinderRollerVelocity : ARRAY[0..2]OF LREAL; (*Winder roller velocity [rad/s].*)
		UnwoundMaterialLength : ARRAY[0..2]OF LREAL; (*Unwound material length [mm].*)
	END_STRUCT;
	MTWinderSimulationModelIntType : 	STRUCT  (*Data for internal use.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		Configuration : MTWinderConfigurationType; (*Data for internal use.*)
		Parameters : MTWinderSimulationModelType; (*Data for internal use.*)
		SystemParameters : MTWinderSimSystemParType; (*Data for internal use.*)
		MaterialParameters : MTWinderSimMaterialParType; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		ActualDiameter : REAL; (*Data for internal use.*)
		InitSpeedControllerOld : REAL; (*Data for internal use.*)
		ActProportionalGain : REAL; (*Data for internal use.*)
		ActIntegrationTime : REAL; (*Data for internal use.*)
		MaterialBreak : BOOL; (*Data for internal use.*)
		ModelType : MTWinderModelTypeEnum; (*Data for internal use.*)
		TorqueMode : MTWinderTorqueModeEnum; (*Data for internal use.*)
		Update : BOOL; (*Data for internal use.*)
		InhibitUpdate : BOOL; (*Data for internal use.*)
	END_STRUCT;
	MTWinderSimulationModelType : 	STRUCT  (*Parameter for the simulation model.*)
		MaterialLength : REAL; (*Material length between the unwinder and infeed or between the outfeed and winder. Unit: [mm]. *)
		StartDiameter : REAL; (*Winder diameter used to start the simulation. Unit: [mm]. *)
		MaxDancerPosition : REAL; (*Maximum position of the dancer arm. Unit: [mm]. *)
		DancerLength : REAL; (*Length of the dancer arm. Unit: [mm]. *)
		DancerInertia : REAL; (*Moment of inertia of the dancer. Unit: [kgm�]. *)
		SpeedTorqueFactor : REAL; (*Friction coefficient for the winder proportional to the velocity. Unit: [Nms]. *)
		TorqueConstant : REAL; (*Torque constant of the motor from the winder Unit: [Nm/A]. *)
		Noise : BOOL; (*Enables noise for the ActLinePosition, ActLineVelocity, ActWinderPosition, ActWinderVelocity, ActDancerPosition and ActMaterialTension outputs.*)
	END_STRUCT;
	MTWinderTaperTensionInternalType : 	STRUCT  (*Data for internal use.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		Configuration : MTWinderConfigurationType; (*Data for internal use.*)
		Parameters : MTWinderTaperTensionType; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		ActualDiameter : REAL; (*Data for internal use.*)
		StartMotorTorque : REAL; (*Data for internal use.*)
		MaxMotorTorque : REAL; (*Data for internal use.*)
		MinMotorTorque : REAL; (*Data for internal use.*)
		SetMotorTorque : REAL; (*Data for internal use.*)
		StatusIDUpdate : DINT; (*Data for internal use.*)
	END_STRUCT;
	MTWinderTaperTensionModeEnum : 
		( (*Tension curve mode.*)
		mtWND_LINEAR_DECREASE_TENSION := 0, (*Linear reduction of the tension.*)
		mtWND_LINEAR_DECREASE_TORQUE := 1 (*Linear reduction of the torque.*)
		);
	MTWinderTaperTensionType : 	STRUCT  (*Parameter for determining the tension profile.*)
		StartDiameter : REAL; (*Tension is reduced beginning with this diameter. Unit: [mm].*)
		MaxMaterialTension : REAL; (*Maximum tension. Unit: [N].*)
		MinMaterialTension : REAL; (*Minimum tension. Unit: [N].*)
		Mode : MTWinderTaperTensionModeEnum; (*Tension curve mode.*)
	END_STRUCT;
	MTWinderTensionControllerIntType : 	STRUCT  (*Data for internal use.*)
		CycleTime : REAL; (*Task cycle time. Unit: [s].*)
		Configuration : MTWinderConfigurationType; (*Data for internal use.*)
		Parameters : MTWinderControllerType; (*Data for internal use.*)
		ParametersValid : BOOL; (*Data for internal use.*)
		UpdateOld : BOOL; (*Data for internal use.*)
		EnableOld : BOOL; (*Data for internal use.*)
		WinderRatio : LREAL; (*Data for internal use.*)
		ActualDiameter : REAL; (*Data for internal use.*)
		MaterialBreak : BOOL; (*Data for internal use.*)
		ControlError : REAL; (*Data for internal use.*)
		ControlErrorOld : REAL; (*Data for internal use.*)
		PIDStatusID : DINT; (*Data for internal use.*)
		ProportionalPart : REAL; (*Data for internal use.*)
		IntegrationPart : REAL; (*Data for internal use.*)
		DerivativePart : REAL; (*Data for internal use.*)
		ControllerOutput : REAL; (*Data for internal use.*)
		HoldIntegration : MTPIDIntegrationEnum; (*Data for internal use.*)
		IntegrationStatus : MTPIDIntegrationEnum; (*Data for internal use.*)
		StatusIDUpdate : DINT; (*Data for internal use.*)
	END_STRUCT;
	MTWinderTorqueModeEnum : 
		( (*Specifies how the value of the SetMotorTorque input is used.*)
		mtWND_TORQUE_LIMIT := 40, (*Uses SetMotorTorque for torque limiting.*)
		mtWND_TORQUE_FF := 32 (*Uses SetMotorTorque for feed-forward torque control.*)
		);
	MTWinderTypeEnum : 
		( (*Selects whether the system is a winder or unwinder unit.*)
		mtWND_REWIND := -1, (*Winder used for winding.*)
		mtWND_UNWIND := +1 (*Winder used for unwinding.*)
		);
END_TYPE