
{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsProcessAlarm		(*process alarm*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		deviceHandle	: UDINT;		(*profinet slave handle*)
		alarmHandle		: UDINT;		(*alarm handle*)
		userStructId	: UINT;			(*user structure identifier*)
		api				: UDINT;		(*api*)
		slot			: UDINT;		(*slot*)
		subslot			: UDINT;		(*subslot*)
		alarmDataLen	: UINT;			(*alarm data length*)
		pAlarmData		: UDINT;		(*alarm data given as pointer*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
		pnIoStatus		: UDINT;		(*profinet io status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsDiagnosisAlarm		(*diagnosis alarm*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		deviceHandle	: UDINT;		(*profinet slave handle*)
		alarmHandle		: UDINT;		(*alarm handle*)
		diagHandle		: UDINT;		(*diagnosis handle*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
		pnIoStatus		: UDINT;		(*profinet io status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsPlugModule			(*plug module*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		deviceHandle	: UDINT;		(*profinet slave handle*)
		api				: UDINT;		(*api*)
		slot			: UDINT;		(*slot*)
		moduleId		: UDINT;		(*module identifier*)
		moduleState		: UINT;			(*module state*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsPullModule			(*pull module*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		deviceHandle	: UDINT;		(*profinet slave handle*)
		api				: UDINT;		(*api*)
		slot			: UDINT;		(*slot*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsGetHandle			(*get slave handle*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
		deviceHandle	: UDINT;		(*profinet slave handle*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsAddChannelDiag		(*add channel diagnosis*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		api				: UDINT;		(*api*)
		slot			: UDINT;		(*slot*)
		subslot			: UDINT;		(*subslot*)
		channelNum		: UINT;			(*channel number*)
		channelProp		: UINT;			(*channel property*)
		channelErrType	: UINT;			(*channel error type*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
		diagHandle		: UDINT;		(*profinet diagnosis handle*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsAddExtChannelDiag	(*add channel diagnosis*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		api				: UDINT;		(*api*)
		slot			: UDINT;		(*slot*)
		subslot			: UDINT;		(*subslot*)
		channelNum		: UINT;			(*channel number*)
		channelProp		: UINT;			(*channel property*)
		channelErrType	: UINT;			(*channel error type*)
		extChannelAddValue	: UDINT;	(*reserved for future use, set to zero*)
		extChannelErrType	: UINT;		(*extended channel error type*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
		diagHandle		: UDINT;		(*profinet diagnosis handle*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsAddGenChannelDiag	(*add channel diagnosis*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		api				: UDINT;		(*api*)
		slot			: UDINT;		(*slot*)
		subslot			: UDINT;		(*subslot*)
		channelNum		: UINT;			(*channel number*)
		channelProp		: UINT;			(*channel property*)
		channelErrType	: UINT;			(*channel error type*)
		userStructId	: UINT;			(*user structure identifier*)
		diagDataLen		: UINT;			(*diagnosis data length*)
		pDiagData		: UDINT;		(*diagnosis data given as pointer*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
		diagHandle		: UDINT;		(*profinet diagnosis handle*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsRemChannelDiag		(*remove channel diagnosis*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		diagHandle		: UDINT;		(*diagnosis handle*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsSetName				(*set station name*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
		pName			: UDINT;		(*new station name*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsStartBusComm		(*start bus communication*)
	VAR_INPUT
		enable			: BOOL;			(*enables execution*)
		pDevice			: UDINT;		(*interface name given as a pointer, e.g., "SL<x>.SS<y>.IF<z>"*)
	END_VAR
	VAR
        _state			: UINT;			(*internal variable*)
		_result			: UINT;			(*internal variable*)
        _srcId			: UDINT;		(*internal variable*)
	END_VAR
	VAR_OUTPUT
		status			: UINT;			(*execution status: ERR_OK, ERR_FUB_ENABLE_FALSE, ERR_FUB_BUSY, 0xXXXX = see help*)
		pnStatus		: UDINT;		(*profinet stack status*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsGetIm0 (*Gets the I&M0 data set for this device*)
	VAR_INPUT
		enable		: BOOL;				(*Enables execution.*)
		pDevice		: UDINT;			(*Name of the profinet device e.g. SS1.IF1.*)
	END_VAR
	VAR_OUTPUT
		status		: DINT;  			(*Status information.*)
		pnStatus	: UDINT;			(*Profinet stack status*)
		IM0 		: PnIm0Type;		(*I&M0 data*)
	END_VAR
	VAR
		_state		: UINT;				(*internal variable*)
		_result		: UINT;				(*internal variable*)
        _srcId		: UDINT;			(*internal variable*)
	END_VAR	
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsSetOem (*Sets the OEM data for this device*)
	VAR_INPUT
		enable		: BOOL;				(*Enables execution.*)
		pDevice		: UDINT;			(*Name of the profinet device e.g. SS1.IF1.*)
		DeviceID	: UINT;				(*Profinet Device Identification*)
		DeviceType	: ARRAY[0..24]OF USINT; (*Profinet Device Type*)
		IM0 		: PnIm0Type;		(*I&M0 data to be set*)
	END_VAR
	VAR_OUTPUT
		status		: DINT;  			(*Status information.*)
		pnStatus	: UDINT;			(*Profinet stack status*)
	END_VAR
	VAR
		_state		: UINT;				(*internal variable*)
		_result		: UINT;				(*internal variable*)
        _srcId		: UDINT;			(*internal variable*)
	END_VAR	
END_FUNCTION_BLOCK

{REDUND_CONTEXT} {REDUND_UNREPLICABLE} FUNCTION_BLOCK nxpnsSetIm5 (*Sets the I&M5 data for this device*)
	VAR_INPUT
		enable		: BOOL;				(*Enables execution.*)
		pDevice		: UDINT;			(*Name of the profinet device e.g. SS1.IF1.*)
		IM5 		: PnIm5Type;		(*I&M5 data to be set*)
	END_VAR
	VAR_OUTPUT
		status		: DINT;  			(*Status information.*)
		pnStatus	: UDINT;			(*Profinet stack status*)
	END_VAR
	VAR
		_state		: UINT;				(*internal variable*)
		_result		: UINT;				(*internal variable*)
        _srcId		: UDINT;			(*internal variable*)
	END_VAR	
END_FUNCTION_BLOCK