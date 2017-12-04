//AB/ Project tOpItDN
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "tOpItDN"
//AB/         Set ProjectFileName to "tOpItDN.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   tOpItDN is a dbViewSubS
//     Cmoves_DDR is a Cmoves_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Cmovesa2_DD is a DataDictionary
//     TextBoxSub1 is a TextBoxSub
//     frmApo is a cSyDateForm
//     btnAutoCopen is a ButtonSub
//     frmText is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object btnAutoCopen
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cmoves_DD
Register_Object Cmoves_DDR
Register_Object Cmovesa_DD
Register_Object Cmovesa2_DD
Register_Object Copen_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object frmApo
Register_Object frmText
Register_Object Payresp_DD
Register_Object TextBoxSub1
Register_Object Towns_DD
Register_Object tOpItDN


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    Use Globals.Inc
    Use bp2ndCop.dg
    Use bpACopen.dg
    Open Ctypkin
    Open CmovesA2
    Use TranLock
    Use bpCmvAf.dg
    Use bpCmvRm.dg

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub

    Use CTYPKIN.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    Use CMOVESA.DD
    Use COPEN.DD
    Use CMOVESA2.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_tOpItDN FOR tOpItDN

    Object tOpItDN is a dbViewSubS

        //AB-StoreTopStart
        Property Integer    piWhat      Public  0
        Property Integer    piXr_or_Pi  Public  0
        Property String     psModule    Public ''
        Property String     psClientID  Public ''
        Property date       pdApo       Public ''
        Property date       pdEos       Public ''

        Object Cmoves_DDR is a Cmoves_DataDictionary
        End_Object


        //AB-StoreTopEnd

        Set Label to "ãòù†°„ ò°Á®‡©û ©¨©Æú´Â©ú‡§ / Ä§¶†ö£ò"
        Set Size to 100 253
        Set Location to 7 11
        Set Color to 6986751

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Object Payresp_DD is a Payresp_DataDictionary
        End_Object    // Payresp_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
            Set DDO_Server to (Areas_DD(self))
            Set DDO_Server to (Payresp_DD(self))
        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
        End_Object    // Cmoves_DD

        Object Cmovesa_DD is a Cmovesa_DataDictionary
        End_Object    // Cmovesa_DD

        Object Copen_DD is a Copen_DataDictionary
            Set DDO_Server to (Cmoves_DD(self))
            Set DDO_Server to (Cmovesa_DD(self))
            Set Constrain_File to Cmoves.File_Number

            //AB-StoreStart

            Set piFromBP to 1


            Procedure Request_Delete
                Integer iRetval iRecnum iLathos isClosed iOpenRecnum iCopenRecnum iErr
                String  sCopen_Recr sCMoves_Recr sCMovesA_Recr sMessage
                String  sAliasCtypkinRecr sMasterCtypkinRecr sClient_Recr sCopenDD2Recr
                Number nMeion nAxia nXr nPi nAfairese

                Move 0 to nMeion
                Move 0 to nAfairese

                Get Field_Current_Value Of Clients_DD   Field Clients.Client_Recr   to sClient_Recr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.Recnum         to iRecnum
                Get Field_Current_Value Of CMoves_DD    Field Cmoves.Ctypkin_Recr   to sMasterCtypkinRecr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.Is_Closed      to isClosed
                Get Field_Current_Value Of Copen_DD     Field Copen.Recnum          to iCopenRecnum
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Recr      to sCopen_Recr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.CMoves_Recr    to sCMoves_Recr
                Get Field_Current_Value Of CMovesA_DD   Field CMovesA.CMoves_Recr   to sCMovesA_Recr
                Get Field_Current_Value Of CMovesA_DD   Field CmovesA.Ctypkin_Recr  to sAliasCtypkinRecr
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Axia0     to nMeion
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_X0        to nXr
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_P0        to nPi

                If ((Trim(sCMoves_Recr)     <>'') And ;
                    (Trim(sCMovesA_Recr)    <>'') And ;
                    (Trim(sAliasCtypkinRecr)<>''))      Begin

                    Begin_Transaction

                        Forward Send Request_Delete

                        // 1. Diagrafoume to antistrofo copen kratontas
                        //    omos thn axia tou gia na thn afairesoume
                        Set psCmovesRecr    Of bpCmvRm  to sCmoves_Recr
                        Set psCmovesARecr   Of bpCmvRm  to sCmovesA_Recr
                        Send DoProcess      to bpCmvRm
                        Get pnAxia          Of bpCmvRm  to nAfairese
                        Get piLathos        Of bpCmvRm  to iLathos
                        If (iLathos) Begin
                            Abort_Transaction
                            Goto End_Trans_Delete_Copen
                        End

                        // 2. Anoigoume to record tou Cmoves pou exei
                        //    to CmovesA san header kai afairoume thn axia
                        Set psCmovesRecr    Of bpCmvAf  to sCmovesA_Recr
                        //Set piAfairese      Of bpCmvAf  to True
                        //Set pnAxia          Of bpCmvAf  to nAfairese
                        Set piAfairese      Of bpCmvAf  to False
                        Set pnAxia          Of bpCmvAf  to 0
                        Send DoProcess      to bpCmvAf

                        // 3. Anoigoume to kanoniko Header Cmoves
                        Set psCmovesRecr    Of bpCmvAf  to sCmoves_Recr
                        Set piAfairese      Of bpCmvAf  to False
                        Set pnAxia          Of bpCmvAf  to 0
                        Send DoProcess      to bpCmvAf

                    End_Transaction

                    End_Trans_Delete_Copen:
                         If (iLathos=30001) Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò§´Â©´®¶≠¶ Copen ö†ò §ò õ†òö®ò≠úÂ' 'ë≠·¢£ò 30001'
                    Else If (iLathos=30000) Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò§´Â©´®¶≠¶ Cmoves' 'ë≠·¢£ò 30000'
                End
                Else Send Stop_Box 'â·ß¶†¶ Recr òß¶ ´ò ò®ÆúÂò Cmoves/CmovesA/Ctypkin úÂ§ò† °ú§Ê' 'ë≠·¢£ò 55555'
                //Send KeyAction to btnPeriorise
            End_Procedure


            //AB-StoreEnd

        End_Object    // Copen_DD

        Object Cmovesa2_DD is a Cmovesa2_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
        End_Object    // Cmovesa2_DD

        Set Main_DD to (Cmoves_DD(self))
        Set Server to (Cmoves_DD(self))

        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ü£ú®¶£û§Âò ò§¶Âö£ò´¶™ òß¶"
            Set Color to 6986751
            Set Location to 14 35
            Set Size to 26 50
            Set Justification_Mode to jMode_Center
        End_Object    // TextBoxSub1

        Object frmApo is a cSyDateForm
            Set Size to 13 66
            Set Location to 19 91
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
        End_Object    // frmApo

        Object btnAutoCopen is a ButtonSub
            Set Label to "Ñßú•ú®öò©Âò"
            Set Size to 15 77
            Set Location to 43 86
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart

            Set TooltipValue to "Ä¨´Ê£ò´û õ†òö®ò≠„ ©¨©Æú´†©£‚§‡§ °†§„©ú‡§ (Open Items)"

            Procedure OnClick
                String  sStr sModule sLabel sCmovesRecr
                Integer iYes iError_Object_ID iMet iRecnum
                Date    dHmnia

                Move ''                         to sStr
                Set Label Of frmText            to ''
                Get psModule                    to sModule
                If (Trim(sModule)='') Move '01' to sModule

                Get Value Of frmApo Item 0      to dHmnia
                If (dHmnia='') Begin
                    Send Stop_Box 'Éú§ ß¢û°´®¶¢¶ö„©ò´ú û£ú®¶£û§Âò' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End

                Append sStr 'åò ©¨§úÆÂ©‡ £ú ´û§ õ†òö®ò≠„ úöö®ò≠È§ ©¨©Æ‚´†©û™'

                Get YesNo_Box sStr "Ñß†ôúôòÂ‡©û" 0 to iYes
                If (iYes=MBR_YES) Begin

                    Set Enabled_State to False

                    Send ChangeAllFileModes                                DF_Filemode_ReadOnly
                    Set_Attribute DF_File_Mode Of Copen.File_Number     to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Cmoves.File_Number    to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Clients.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Payresp.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Sysrecc.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of CmovesA.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Btnemp.File_Number    To DF_Filemode_Default

                    Indicate Err False

                    Begin_Transaction
                        Reread
                        Move Error_Object_ID to iError_Object_ID
                        Send Clear to Cmoves_DD
                        Move SyscurXr.Company_Code  to Cmoves.Company_Code
                        Move SyscurXr.Branch_Code   to Cmoves.Branch_Code
                        Move 2                      to Cmoves.Flag_Copen // Osa einai pistotikes kinhseis
                        Move sModule                to Cmoves.Module_From
                        Move dHmnia                 to Cmoves.Cmoves_Hmnia
                        Send Find to Cmoves_DD GT 10 // Comp+Branch+Flag_Copen+Module_From+Cmoves_Hmnia+Cmoves_Rec0
                        While ((Found=1) And (Cmoves.Company_Code=SyscurXr.Company_Code) And ;
                                             (Cmoves.Branch_Code =SyscurXr.Branch_Code ) And ;
                                             (Cmoves.Flag_Copen  =2                    ) And ;
                                             (Cmoves.Module_From =sModule              ))
                            Set Label Of frmText to (String(Cmoves.Recnum)+' '+String(Cmoves.Cmoves_Hmnia))
                            Get Field_Current_Value Of Cmoves_DD Field Cmoves.Recnum to iRecnum
                            Send Rebuild_Constraints to Copen_DD
                            Send Find to Copen_DD First_Record 4 // Cmoves_Recr+Copen_Recr
                            While (Found)
                                Send Request_Delete to Copen_DD
                                Send Find to Copen_DD Next_Record 4 // Cmoves_Recr+Copen_Recr
                            Loop
                            Send Find_By_Recnum to Cmoves_DD Cmoves.File_Number iRecnum
                            Send Find to Cmoves_DD GT 10
                        Loop
                    End_Transaction
                    UNLOCK
                    Send ChangeAllFileModes DF_Filemode_Default
                    Move iError_Object_ID to  Error_Object_ID
                    Set Enabled_State to True
                    Set Label Of frmText to ''
                    If (Not(Err)) Send Info_Box 'Ü õ†òö®ò≠„ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                End
            End_Procedure // OnClick
















































            //AB-StoreEnd

        End_Object    // btnAutoCopen

        Object frmText is a ButtonSub
            Set Size to 14 238
            Set Location to 67 5
            Set Border_Style to Border_StaticEdge
            Set Focus_Mode to NonFocusable

            //AB-StoreStart
            Procedure OnClick

            End_Procedure // OnClick
            //AB-StoreEnd

        End_Object    // frmText


        //AB-StoreStart

        Procedure Activate_View Returns Integer
            Integer rVal iMonth iYear iLastDay iDay
            Date    dShmera dTo dLast
            String  sTo sDay sMonth sModule
            Move '' to sTo
            Sysdate dShmera
            Forward Get Msg_Activate_View to rVal
            Get psMenuModule Of Main_Menu   to sModule
            Set psModule                    to sModule
            Procedure_Return rVal
        End_Procedure











        //AB-StoreEnd

    End_Object    // tOpItDN

//AB/     End_Object    // prj
