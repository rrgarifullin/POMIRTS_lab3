/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _ASNXPNM_
#define _ASNXPNM_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#include <runtime.h>

#ifndef _IEC_CONST
#define _IEC_CONST _WEAK const
#endif

/* Constants */
#ifdef _REPLACE_CONST
 #define nxpnmERR_INVALID_DEVICE 35340U
 #define nxpnmERR_SEND_MESSAGE 35341U
 #define nxpnmERR_TIMEOUT 35342U
 #define nxpnmERR_PROFINET_STACK 35343U
 #define nxpnmERR_PARAMETER 35344U
 #define nxpnmERR_MEMORY 35345U
 #define nxpnmERR_SUBSCRIBE_LISTENER 35346U
 #define nxpnmERR_NO_MORE_ENTRIES 35347U
 #define nxpnmERR_INVALID_NAME 35348U
 #define nxpnmFLAG_DELETE_DIAG_BUFFER 1U
 #define nxpnmFLAG_DIFF_BLOCK_IS_BIGGER 1U
#else
 _IEC_CONST unsigned short nxpnmERR_INVALID_DEVICE = 35340U;
 _IEC_CONST unsigned short nxpnmERR_SEND_MESSAGE = 35341U;
 _IEC_CONST unsigned short nxpnmERR_TIMEOUT = 35342U;
 _IEC_CONST unsigned short nxpnmERR_PROFINET_STACK = 35343U;
 _IEC_CONST unsigned short nxpnmERR_PARAMETER = 35344U;
 _IEC_CONST unsigned short nxpnmERR_MEMORY = 35345U;
 _IEC_CONST unsigned short nxpnmERR_SUBSCRIBE_LISTENER = 35346U;
 _IEC_CONST unsigned short nxpnmERR_NO_MORE_ENTRIES = 35347U;
 _IEC_CONST unsigned short nxpnmERR_INVALID_NAME = 35348U;
 _IEC_CONST unsigned long nxpnmFLAG_DELETE_DIAG_BUFFER = 1U;
 _IEC_CONST unsigned long nxpnmFLAG_DIFF_BLOCK_IS_BIGGER = 1U;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct nxpnmGetHandle
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long pName;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long handle;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmGetHandle_typ;

typedef struct nxpnmSubscribe
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmSubscribe_typ;

typedef struct nxpnmUnsubscribe
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmUnsubscribe_typ;

typedef struct nxpnmAcyclicRead
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long handle;
	unsigned long api;
	unsigned short slot;
	unsigned short subslot;
	unsigned short index;
	unsigned long dataLengthMax;
	unsigned long pData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long pnIoStatus;
	unsigned long dataLength;
	unsigned short addValue1;
	unsigned short addValue2;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmAcyclicRead_typ;

typedef struct nxpnmAcyclicWrite
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long handle;
	unsigned long api;
	unsigned short slot;
	unsigned short subslot;
	unsigned short index;
	unsigned long dataLength;
	unsigned long pData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long pnIoStatus;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmAcyclicWrite_typ;

typedef struct nxpnmDeviceDiagnosis
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long handle;
	unsigned long flags;
	unsigned long diagLengthMax;
	unsigned long pDiagData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long diagLength;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmDeviceDiagnosis_typ;

typedef struct nxpnmAlarmInd
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long alarmLengthMax;
	unsigned long pAlarmData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long handle;
	unsigned long api;
	unsigned short slot;
	unsigned short subslot;
	unsigned long moduleId;
	unsigned long subModuleId;
	unsigned short alarmPriority;
	unsigned short alarmType;
	unsigned short alarmSpecifier;
	unsigned short userStructId;
	unsigned long alarmLength;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmAlarmInd_typ;

typedef struct nxpnmAlarmAck
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long handle;
	unsigned short alarmSpecifier;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long pnIoStatus;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmAlarmAck_typ;

typedef struct nxpnmDiffBlock
{
	/* VAR_INPUT (analog) */
	unsigned long pDevice;
	unsigned long handle;
	unsigned short dataLengthMax;
	unsigned long pData;
	/* VAR_OUTPUT (analog) */
	unsigned short status;
	unsigned long pnStatus;
	unsigned long flags;
	unsigned short numApi;
	unsigned long dataLength;
	/* VAR (analog) */
	unsigned short _state;
	unsigned short _result;
	unsigned long _srcId;
	/* VAR_INPUT (digital) */
	plcbit enable;
} nxpnmDiffBlock_typ;



/* Prototyping of functions and function blocks */
void nxpnmGetHandle(struct nxpnmGetHandle* inst);
void nxpnmSubscribe(struct nxpnmSubscribe* inst);
void nxpnmUnsubscribe(struct nxpnmUnsubscribe* inst);
void nxpnmAcyclicRead(struct nxpnmAcyclicRead* inst);
void nxpnmAcyclicWrite(struct nxpnmAcyclicWrite* inst);
void nxpnmDeviceDiagnosis(struct nxpnmDeviceDiagnosis* inst);
void nxpnmAlarmInd(struct nxpnmAlarmInd* inst);
void nxpnmAlarmAck(struct nxpnmAlarmAck* inst);
void nxpnmDiffBlock(struct nxpnmDiffBlock* inst);


#ifdef __cplusplus
};
#endif
#endif /* _ASNXPNM_ */

