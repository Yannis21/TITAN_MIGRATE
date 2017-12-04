ÄÄ´ bpEnYpol.DG   ÃÄÄÄÄÄÄ´ 02/09/2002 19:38 ÃÄÄÄÄÄÄÄþDT=757243077
BPENYPOL	OBJECT	Object bpEnYpol is a BusinessProcessSub
PIFROMAKYROSH	PROPERTY	Property Integer    piFromAkyrosh   Public  0
PILATHOS	PROPERTY	Property Integer    piLathos        Public  0
PNQTY	PROPERTY	Property Number     pnQty           Public  0
PICURRENT	PROPERTY	Property Integer    piCurrent       Public  0
PSRECR	PROPERTY	Property String     psRecr          Public ''
PIPMSSXET	PROPERTY	Property Integer    piPmsSxet       Public  0
FIUPDATE_PMOVES_QTY	FUNCTION	Function fiUpdate_Pmoves_Qty String asRecr Number anQty Returns Integer
ONPROCESS	PROCEDURE	Procedure OnProcess
ONERROR	PROCEDURE	Procedure OnError integer error_info string errMsg
START_PROCESS	PROCEDURE	Procedure Start_Process
END_PROCESS	PROCEDURE	Procedure End_Process
