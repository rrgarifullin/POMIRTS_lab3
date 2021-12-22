
{REDUND_OK} FUNCTION_BLOCK MTRegisterController (*PID controller for mark to mark register control in rotogravure printing presses.*)
	VAR_INPUT
		Enable : BOOL; (*The function block is active as long as this input is set.*)
		WebLength : DINT; (*Web length to previous printing unit Lij. Unit: [�m]. *)
		ImageLength : DINT; (*Circumference of printing cylinder. Unit: [�m]. *)
		SensorPosition : DINT; (*Distance from printing unit to register mark sensor LSi. Unit: [�m]. *)
		MaxVelocityCorrection : REAL; (*Positive and negative limit of controller output. Unit: [�m/s]. *)
		Update : BOOL; (*Parameters are updated on a rising edge of the input.*)
		SetLineVelocity : REAL; (*Set line velocity. Unit: [�m/s].*)
		SetRegisterPosition : DINT; (*Set register position. Unit: [�m].*)
		ActRegisterPosition : DINT; (*Actual register position. Unit: [�m].*)
		Trigger : BOOL; (*Every rising edge of "Trigger" a new output "VelocityCorrection" is calculated.*)
		ResponseRate : REAL; (*Defines the time constant of the control loop. *)
		ResponseOvershoot : REAL; (*Defines the tendency to oscillate of the control loop. *)
		InitController : BOOL; (*Initializes the control parameters according to the inputs "ResponseRate" and "ResponseOvershoot" at a positive edge.*)
		Invert : BOOL; (*Inverts the controller output.*)
		Hold : BOOL; (*Freezes the function block.*)
		Reset : BOOL; (*Every rising edge of "Reset" the controller states are reset to zero.*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*The function block is active.*)
		Error : BOOL; (*Error occurred during operation.*)
		StatusID : DINT; (*Status information.*)
		UpdateDone : BOOL; (*Parameters updated.*)
		VelocityCorrection : REAL; (*Actual correction velocity. Unit: [�m/s].*)
		InitDone : BOOL; (*Controller parameters initialized successfully.*)
	END_VAR
	VAR
		Internal : MTRegisterControllerInternalType; (*Data for internal use.*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} FUNCTION_BLOCK MTRegisterDecoupling (*Decoupling network for velocities of printing cylinders in rotogravure printing presses.*)
	VAR_INPUT
		Enable : BOOL; (*The function block is active as long as this input is set.*)
		Parameters : MTRegisterSystemType; (*System parameters.*)
		Update : BOOL; (*Parameters are updated on a rising edge of the input.*)
		VelocityCorrectionIn : ARRAY[0..19] OF REAL; (*Correction velocity input. Unit: [�m/s].*)
		SetLineVelocity : REAL; (*Set line velocity. Unit: [�m/s].*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*The function block is active.*)
		Error : BOOL; (*Error occurred during operation.*)
		StatusID : DINT; (*Status information.*)
		UpdateDone : BOOL; (*Parameters updated.*)
		VelocityCorrectionOut : ARRAY[0..19] OF REAL; (*Decoupled correction velocity. Unit: [�m/s].*)
	END_VAR
	VAR
		Internal : MTRegisterDecouplingInternalType; (*Data for internal use.*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} FUNCTION_BLOCK MTRegisterSimulationModel (*Simulation model of a rotogravure printing press.*)
	VAR_INPUT
		Enable : BOOL; (*The function block is active as long as this input is set.*)
		Parameters : MTRegisterSimulationModelType; (*Parameters for the simulation model.*)
		Update : BOOL; (*Parameters are updated on a rising edge of the input.*)
		SetLineVelocity : REAL; (*Set line velocity. Unit: [�m/s].*)
		ActVelocity : ARRAY[0..19] OF REAL; (*Actual velocity of the printing cylinder. Unit: [�m/s].*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*The function block is active.*)
		Error : BOOL; (*Error occurred during operation.*)
		StatusID : DINT; (*Status information.*)
		UpdateDone : BOOL; (*Parameters updated.*)
		ActRegisterPosition : ARRAY[0..19] OF DINT; (*Actual register position. Unit: [�m].*)
		Trigger : ARRAY[0..19] OF BOOL; (*Rising edge indicates new "ActRegisterPosition" value.*)
		MaterialBreak : BOOL; (*Material breakage has been detected.*)
	END_VAR
	VAR
		Internal : MTRegisterSimulationModelIntType; (*Data for internal use.*)
	END_VAR
END_FUNCTION_BLOCK
