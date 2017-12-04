//AB/ Project tOpItN
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "tOpItN"
//AB/         Set ProjectFileName to "tOpItN.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   tOpItN is a dbViewSubS
//     Cmoves_DDR is a Cmoves_DataDictionary
//     Clients_DDR is a Clients_DataDictionary
//     TextBoxSub1 is a TextBoxSub
//     frmApo is a cSyDateForm
//     btnAutoCopen is a ButtonSub
//     frmText is a ButtonSub

// Register all objects
Register_Object btnAutoCopen
Register_Object Clients_DDR
Register_Object Cmoves_DDR
Register_Object frmApo
Register_Object frmText
Register_Object TextBoxSub1
Register_Object tOpItN


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Use Globals.Inc
    Use bp2ndCop.dg
    Use bpACopen.dg
    Open Ctypkin
    Open CmovesA2
    Use TranLock
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Txtbox.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_tOpItN FOR tOpItN

    Object tOpItN is a dbViewSubS

        //AB-StoreTopStart
                
        Property String psModule ''
        
        Object Cmoves_DDR is a Cmoves_DataDictionary
        End_Object
        
        Object Clients_DDR is a Clients_DataDictionary
        End_Object
        
        //AB-StoreTopEnd

        Set Label to "ãòù†°„ ú§û£‚®‡©û ©¨©Æú´Â©ú‡§ / °¢úÂ©†£¶"
        Set Size to 100 253
        Set Location to 7 11
        Set Color to 13415581

        //AB-DDOStart


        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ü£ú®¶£û§Âò °¢ú†©Â£ò´¶™ úÈ™"
            Set Color to 13415581
            Set Location to 14 35
            Set Size to 25 45
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
            Set Location to 44 86
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart
                        
            Set TooltipValue to "Ä¨´Ê£ò´û õû£†¶¨®öÂò úöö®ò≠È§ ©¨©Æ‚´†©û™ (Open Items)"
            
            Procedure OnClick
                String  sStr sModule sLabel sCmovesRecr sClientID
                Integer iYes iError_Object_ID iMet iRecnum iRec0 iBreak
                Date    dHmnia dCmvHmnia
            
                Move 0 to iBreak
                Move ''                         to sStr
                Set Label Of frmText            to ''
                Get psModule                    to sModule
                If (Trim(sModule)='') Move '01' to sModule
            
                Append sStr 'åò ©¨§úÆÂ©‡ £ú ´û§ ò¨´Ê£ò´û õû£†¶¨®öÂò úöö®ò≠È§ ©¨©Æ‚´†©û™'
            
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
            
                    Indicate Err False
            
                    Begin_Transaction
                        Reread
                        Move Error_Object_ID        to  iError_Object_ID
                        Get Value Of frmApo Item 0  to  dHmnia
                        If (dHmnia='') Sysdate          dHmnia
            
                        /////////////////////////////////////////////////////////////
                        // H logikh ayths ths diadikasias einai h exhs :
                        // Saronoume ta pistotika Cmoves me ypoloipo pros sysxetish
                        // me company + branch oso pio piso yparxoun anoixta parastatika
                        // mexri thn hmnia othonhs.
                        // Gia kathe ena apo ayta, kaleitai h bpAcopen h opoia afou
                        // vrei to trexon Cmoves, psaxnei me thn seira ths apo thn
                        // enarxh ta pio palia anoixta parastatika eos thn hmeromhnia
                        // othonhs kai gia kathe pelath tou arxikou Cmoves, oles tis
                        // xreostikes kinhseis tou kai ftiaxnei ta zeygaria ton
                        // Copen mexri exantlhshs tou posou tou arxikoy pistotikou
                        // Cmoves pou pername apo edo.
                        /////////////////////////////////////////////////////////////
            
                        Clear CmovesA2
                        Move SyscurXr.Company_Code  to CmovesA2.Company_Code
                        Move SyscurXr.Branch_Code   to CmovesA2.Branch_Code
                        Move 1                      to CmovesA2.Flag_Ypol  // Osa exoun ypoloipo pros sysxetish
                        Move 2                      to CmovesA2.Flag_Copen // Osa einai pistotikes kinhseis
                        Move sModule                to CmovesA2.Module_From
                        Find GT CmovesA2 by Index.15 // Comp+Branch+Flag_Ypol+Flag_Copen+Module_From+Client_ID+Cmoves_Hmnia+Cmoves_Rec0
                        While ((Found=1) And (CmovesA2.Company_Code=SyscurXr.Company_Code)  And ;
                                             (CmovesA2.Branch_Code =SyscurXr.Branch_Code )  And ;
                                             (CmovesA2.Flag_Ypol   =1                    )  And ;
                                             (CmovesA2.Flag_Copen  =2                    )  And ;
                                             (CmovesA2.Module_From =sModule              )  And ;
                                             (iBreak=0))
            
                            If (CmovesA2.Cmoves_Hmnia>dHmnia) Begin
                                // Vres ton epomeno pelath apo ayton pou diavaze mexri tora
                                // kai mhdenise xana thn hmeromhnia na bgei apo ton index
                                // kai na xanampei me ton epomeno pelath
                                Send Clear              to Clients_DDR
                                Move CmovesA2.Client_ID to Clients.Client_ID
                                Send Find               to Clients_DDR Eq 6
                                If (Not(Found)) Error 50100 'è®Êô¢û£ò ©´û§ úÁ®ú©û ßú¢·´û - TopItem'
                                Send Find               to Clients_DDR GT 6
                                If (Found) Begin
                                    Get Field_Current_Value Of Clients_DDR Field Clients.Client_ID to sClientID
                                    Clear CmovesA2
                                    Move SyscurXr.Company_Code  to CmovesA2.Company_Code
                                    Move SyscurXr.Branch_Code   to CmovesA2.Branch_Code
                                    Move 1                      to CmovesA2.Flag_Ypol  // Osa exoun ypoloipo pros sysxetish
                                    Move 2                      to CmovesA2.Flag_Copen // Osa einai pistotikes kinhseis
                                    Move sModule                to CmovesA2.Module_From
                                    Move sClientID              to CmovesA2.Client_ID
                                    Move ''                     to CmovesA2.Cmoves_Hmnia
                                End
                                Else Move 1 to iBreak
                            End
                            Else Begin
                                Set Label Of frmText        to (Trim(CmovesA2.Client_ID)+'  '+String(CmovesA2.Cmoves_Hmnia))
                                Move CmovesA2.Cmoves_Recr   to sCmovesRecr
                                Set piLathos        Of bpACopen to 0
                                Set pdHmniaEos      Of bpACopen to dHmnia
                                Set psCmovesRecr    Of bpACopen to sCmovesRecr
                                Set psModule        Of bpACopen to sModule
                                Send DoProcess                  to bpACopen
                            End
                            Find GT CmovesA2 by Index.15 // Comp+Branch+Flag_Ypol+Flag_Copen+Module_From+Cmoves_Hmnia+Cmoves_Rec0
                        Loop
                    End_Transaction
                    UNLOCK
                    Send ChangeAllFileModes DF_Filemode_Default
                    Move iError_Object_ID to  Error_Object_ID
                    Set Enabled_State to True
                    Set Label Of frmText to ''
                    If (Not(Err)) Send Info_Box 'Ü ò¨´Ê£ò´û õû£†¶¨®öÂò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
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

    End_Object    // tOpItN

//AB/     End_Object    // prj
