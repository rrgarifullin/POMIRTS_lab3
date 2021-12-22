
TYPE
	MC_LOAD_SIM_INPUT_DATA_REF : 	STRUCT  (*input data for load simulation function blocks*)
		Position : LREAL; (*axis position*)
		Velocity : REAL; (*velocity of the axis*)
		Acceleration : REAL; (*acceleration of the axis*)
	END_STRUCT;
	MC_0131_IS_TYP : 	STRUCT  (*internal structure for MC_BR_ReadLoadSimInputData*)
		TSample : REAL; (*internal variable*)
		Valid : BOOL; (*internal variable*)
		Busy : BOOL; (*internal variable*)
		Error : BOOL; (*internal variable*)
		state : USINT; (*internal variable*)
		LoadSimInputData : MC_LOAD_SIM_INPUT_DATA_REF; (*internal variable*)
		LockID : USINT; (*internal variable*)
		LockIDPar : USINT; (*internal variable*)
		PosIntegerOffset : UINT; (*internal variable*)
		PosIntegerRecIdx : USINT; (*internal variable*)
		Reserve1 : USINT; (*internal variable*)
		PosRealOffset : UINT; (*internal variable*)
		PosRealRecIdx : USINT; (*internal variable*)
		Reserve2 : USINT; (*internal variable*)
		VelRealOffset : UINT; (*internal variable*)
		VelRecIdx : USINT; (*internal variable*)
		LockIDFb : USINT; (*internal variable*)
		ErrorID : UINT; (*internal variable*)
		Reserve3 : UDINT; (*internal variable*)
	END_STRUCT;
	MC_0132_IS_TYP : 	STRUCT  (*internal structure for MC_BR_WriteLoadSimTorque*)
		TSample : REAL; (*internal variable*)
		Valid : BOOL; (*internal variable*)
		Busy : BOOL; (*internal variable*)
		Error : BOOL; (*internal variable*)
		state : USINT; (*internal variable*)
		LockID : USINT; (*internal variable*)
		LockIDPar : USINT; (*internal variable*)
		VarIdx : UINT; (*internal variable*)
		ErrorID : UINT; (*internal variable*)
		VarParIndex : UINT; (*internal variable*)
		LockIDFb : USINT; (*internal variable*)
		Reserve1 : USINT; (*internal variable*)
		Reserve2 : UINT; (*internal variable*)
		Reserve3 : UDINT; (*internal variable*)
	END_STRUCT;
	MC_0142_IS_TYP : 	STRUCT  (*internal structure for MC_BR_ReadLoadSimTorque*)
		TSample : REAL; (*internal variable*)
		Valid : BOOL; (*internal variable*)
		Busy : BOOL; (*internal variable*)
		Error : BOOL; (*internal variable*)
		state : USINT; (*internal variable*)
		Torque : REAL; (*internal variable*)
		LockID : USINT; (*internal variable*)
		LockIDPar : USINT; (*internal variable*)
		Reserve1 : USINT; (*internal variable*)
		Reserve2 : USINT; (*internal variable*)
		TorqueRealOffset : UINT; (*internal variable*)
		TorqueRealRecIdx : USINT; (*internal variable*)
		LockIDFb : USINT; (*internal variable*)
		ErrorID : UINT; (*internal variable*)
		Reserve3 : UINT; (*internal variable*)
	END_STRUCT;
	MC_0143_IS_TYP : 	STRUCT  (*internal structure for MC_BR_WriteLoadSimPosition*)
		TSample : REAL; (*internal variable*)
		Valid : BOOL; (*internal variable*)
		Busy : BOOL; (*internal variable*)
		Error : BOOL; (*internal variable*)
		state : USINT; (*internal variable*)
		nextState : USINT; (*internal variable*)
		LockID : USINT; (*internal variable*)
		LockIDPar : USINT; (*internal variable*)
		Reserve1 : USINT; (*internal variable*)
		VarIdx : UINT; (*internal variable*)
		ErrorID : UINT; (*internal variable*)
		Increments : UDINT; (*internal variable*)
		MotorRevolutions : UDINT; (*internal variable*)
		VarParIndex : UINT; (*internal variable*)
		Reserve2 : UINT; (*internal variable*)
		PreviousMode : UINT; (*internal variable*)
		LockIDFb : USINT; (*internal variable*)
		C_ErrorID : UINT; (*internal variable*)
	END_STRUCT;
END_TYPE