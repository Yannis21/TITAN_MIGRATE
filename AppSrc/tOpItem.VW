//AB/ Project tOpItem
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "tOpItem"
//AB/     Set ProjectFileName to "tOpItem.VW"

// Project Object Structure
//   tOpItem is a dbViewSubs
//     Cmoves_DDR is a Cmoves_DataDictionary
//     Clients_DDR is a Clients_DataDictionary
//     TextBoxSub1 is a TextBoxSub
//     frmApo is a cSyDateForm
//     btnAutoCopen is a ButtonSub
//     frmText is a ButtonSub
//     frmText2 is a ButtonSub
//     FormSub1 is a FormSub
//     chkDebug is a CheckBox

// Register all objects
Register_Object btnAutoCopen
Register_Object Clients_DDR
Register_Object Cmoves_DDR
Register_Object chkDebug
Register_Object FormSub1
Register_Object frmApo
Register_Object frmText
Register_Object frmText2
Register_Object TextBoxSub1
Register_Object tOpItem


//AB/ AppBuild VIEW


//AB-StoreTopStart

Use Globals.Inc
Use bp2ndCop.dg
Use bpACopen.dg
Open Ctypkin
Open CmovesA2
Use TranLock
Use sl100.sl
Open sysfile
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use Txtbox.Sub
Use cSyDateForm.Pkg
Use Button.Sub
Use Form.Sub
Use DFAllEnt.pkg

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_tOpItem FOR tOpItem

Object tOpItem is a dbViewSubs

    //AB-StoreTopStart
    
    Property String psModule ''
    
    Object Cmoves_DDR is a Cmoves_DataDictionary
    End_Object
    
    Object Clients_DDR is a Clients_DataDictionary
    End_Object
    
    Procedure ShowDebug
        Integer iState
        Get Visible_State of chkDebug to iState
        If (iState=0) Set Checked_State of chkDebug to False
        Set Visible_State of chkDebug to (1-iState)
    End_Procedure
    
    
    //AB-StoreTopEnd

    Set Label to "ãòù†°„ ú§û£‚®‡©û ©¨©Æú´Â©ú‡§ / °¢úÂ©†£¶"
    Set Size to 158 253
    Set Location to 7 11
    Set Color to 13415581

    //AB-DDOStart


    //AB-DDOEnd

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ü£ú®¶£û§Âò °¢ú†©Â£ò´¶™ úÈ™"
        Set Color to 13415581
        Set Location to 37 36
        Set Size to 25 45
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object frmApo is a cSyDateForm
        Set Size to 13 66
        Set Location to 42 91
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmApo

    Object btnAutoCopen is a ButtonSub
        Set Label to "Ñßú•ú®öò©Âò"
        Set Size to 15 77
        Set Location to 66 86
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set TooltipValue to "Ä¨´Ê£ò´û õû£†¶¨®öÂò úöö®ò≠È§ ©¨©Æ‚´†©û™ (Open Items)"
        
        Procedure Make_The_Records String asClientID Date adHmnia String asModule
            String  sStr sModule sLabel sCmovesRecr sClientID sPel sPelat
            Integer iYes iError_Object_ID iMet iRecnum iRec0 iBreak
            Date    dHmnia dCmvHmnia dOrio
            /////////////////////////////////////////////////////////////
            // H logikh ayths ths diadikasias einai h exhs :
            // Saronoume ta pistotika Cmoves me ypoloipo pros sysxetish
            // me company  oso pio piso yparxoun anoixta parastatika
            // mexri thn hmnia othonhs.
            // Gia kathe ena apo ayta, kaleitai h bpAcopen h opoia afou
            // vrei to trexon Cmoves, psaxnei me thn seira ths apo thn
            // enarxh ta pio palia anoixta parastatika eos thn hmeromhnia
            // othonhs kai gia kathe pelath tou arxikou Cmoves, oles tis
            // xreostikes kinhseis tou kai ftiaxnei ta zeygaria ton
            // Copen mexri exantlhshs tou posou tou arxikoy pistotikou
            // Cmoves pou pername apo edo.
            /////////////////////////////////////////////////////////////
        
        //    Move (DateCompose(31,12,2003)) to dOrio
              move sysfile.last_hmnia_ekt    to dorio
        
            Direct_Output Channel 9 "C:\VDF6\Sysxet.txt"
        
        
            Clear CmovesA2
            Move SyscurXr.Company_Code  to CmovesA2.Company_Code
            Move 1                      to CmovesA2.Flag_Ypol  // Osa exoun ypoloipo pros sysxetish
            Move 2                      to CmovesA2.Flag_Copen // Osa einai pistotikes kinhseis
            Move asModule               to CmovesA2.Module_From
            Move asClientID             to CmovesA2.Client_ID
        
            Find GT CmovesA2 by Index.15 // Comp+Flag_Ypol+Flag_Copen+Module_From+Client_ID+Cmoves_Hmnia+Cmoves_Rec0
            While ((Found=1) And (CmovesA2.Company_Code=SyscurXr.Company_Code )  And ;
                                 (CmovesA2.Flag_Ypol    =1                    )  And ;
                                 (CmovesA2.Flag_Copen   =2                    )  And ;
                                 (CmovesA2.Module_From  =asModule             )  And ;
                                 (CmovesA2.Client_ID    =asClientID           ))
        
                Set Label Of frmText2 to (Trim(CmovesA2.Client_ID)+'  '+String(CmovesA2.Cmoves_Hmnia))
        
                // Theloume na sysxetisoume oles tis eggrafes EKTOS apo
                // kinhseis apografhs pou eginan META thn proth apografh tou 2003
                If ((CmovesA2.Ctypkin_Code='101') Or (CmovesA2.Ctypkin_Code='102') Or ;
                    (CmovesA2.Ctypkin_Code='201') Or (CmovesA2.Ctypkin_Code='202')) Begin
                     If (CmovesA2.Cmoves_Hmnia>dOrio);
                        Goto Synexise_Sysxetiseis_Edo
                End
        
                Integer isChecked
                If (CmovesA2.Cmoves_Hmnia<=adHmnia) Begin
        
                    If (Cmoves.Cmoves_Recr = "10.641036") Begin
                        Pause 24 00 "OOPS.... TOTALLY UNEXPECTED"
                        Error 666 "Ä°¨®È§ú´ò† û õ†òõ†°ò©†ò"
                    End
        
                    Get Checked_State of chkDebug to isChecked
                    If (isChecked) Begin
                        Write   Channel 9   "Hmnia: "   CmovesA2.Cmoves_Hmnia   "  "
                        Write   Channel 9   "Pel: "     CmovesA2.Client_ID      "  "
                        Write   Channel 9   "Kin: "     CmovesA2.Ctypkin_Code   "  "
                        Write   Channel 9   "Recr: "    CmovesA2.Cmoves_Recr    "  "
                        Write   Channel 9   "Pros Sysx: "    CmovesA2.Axia_Pros_Sysx "  "
                        Write   Channel 9   "Sysxetismenh: "   CmovesA2.Axia_Sysxet "  "
                        Write   Channel 9   "Diathesimo: "   CmovesA2.Axia_Ypol_Sysx "  "
                        Writeln Channel 9
                    End
        
        
                    Move CmovesA2.Client_ID         to sPelat
                    Move CmovesA2.Cmoves_Hmnia      to dCmvHmnia
                    Move CmovesA2.Cmoves_Rec0       to iRec0
                    Move CmovesA2.Cmoves_Recr       to sCmovesRecr
        
                    Set piLathos        Of bpACopen to 0
                    Set piBtnID         Of bpACopen to (frmText2(Self))
                    Set pdHmniaEos      Of bpACopen to adHmnia
                    Set psCmovesRecr    Of bpACopen to sCmovesRecr
                    Set psModule        Of bpACopen to asModule
        
                    Set piDebug         Of bpACopen to (isChecked)
        
                    Send DoProcess                  to bpACopen
        
                    Clear CmovesA2
                    Move SyscurXr.Company_Code  to CmovesA2.Company_Code
                    Move 1                      to CmovesA2.Flag_Ypol
                    Move 2                      to CmovesA2.Flag_Copen
                    Move asModule               to CmovesA2.Module_From
                    Move sPelat                 to CmovesA2.Client_ID
                    Move dCmvHmnia              to CmovesA2.Cmoves_Hmnia
                    Move iRec0                  to CmovesA2.Cmoves_Rec0
                End
        
                Synexise_Sysxetiseis_Edo:
        
                Find GT CmovesA2 by Index.15 // Comp+Flag_Ypol+Flag_Copen+Module_From+Cmoves_Hmnia+Cmoves_Rec0
        
            Loop
        
            Close_Output Channel 9
        
        End_procedure
        
        
        Procedure OnClick
            String  sStr sModule sLabel sCmovesRecr sClientID sPel sPelat sStringOK
            Integer iYes iError_Object_ID iMet iRecnum iRec0 iBreak iNum
            Date    dHmnia dCmvHmnia
        
            Get Value Of FormSub1 Item 0 to sPel
            Move (Trim(sPel)) to sPel
        
            If (sPel<>'') Begin
                Clear Clients
                Move sPel to Clients.Client_ID
                Find Eq Clients By Index.6
                If (Not(Found)) Begin
                    Send Info_Box 'Ä§Áßò®°´¶™ èú¢·´û™ (Ñ¢‚ö•´ú ´ò Ñ¢¢û§†°·)\nÜ õ†òõ†°ò©Âò õ†ò°Êß´ú´ò†' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            End
        
        //    ////////////
        //    // Make String of Valid Characters
        //    Move '' to sStringOK
        //    // Fill with Numbers (0-9)
        //    For iNum From 48 to 57
        //        Move (Append(sStringOK,Character(iNum))) to sStringOK
        //    Loop
        //    // Fill with Capital Letters (A-Z) ENGLISH
        //    For iNum From 65 to 90
        //        Move (Append(sStringOK,Character(iNum))) to sStringOK
        //    Loop
        //    // Fill with '.'
        //    Move (Append(sStringOK,'.')) to sStringOK
        //    ////////////
        
        //    If (sPel<>'') Begin
        //        For iNum From 1 to (Length(sPel))
        //            If (Not(sStringOK Contains (Mid(sPel,1,iNum)))) Begin
        //                Send Info_Box 'é °‡õ†°Ê™ ßú¢·´û ßú®†‚Æú† ò°ò´·¢¢û¢¶¨™ Æò®ò°´„®ú™\nÑ¢‚ö•´ú £„ß‡™ ¨ß·®Æ¶¨§ Ñ¢¢û§†°¶Â Æò®ò°´„®ú™\nÄß¶õú°´¶Â Æò®ò°´„®ú™ (0-9) & (Ä-Ö) & .' 'è¢û®¶≠¶®Âò'
        //                Procedure_Return
        //            End
        //        Loop
        //    End
        
        
            Get Value Of frmApo Item 0  to  dHmnia
            If (dHmnia='') Sysdate          dHmnia
        
        
            Move 0 to iBreak
            Move ''                         to sStr
            Set Label Of frmText            to ''
            Set Label Of frmText2           to ''
            Get psModule                    to sModule
            If (Trim(sModule)='') Move '01' to sModule
        
            Append sStr 'åò ©¨§úÆÂ©‡ £ú ´û§ ò¨´Ê£ò´û õû£†¶¨®öÂò úöö®ò≠È§ ©¨©Æ‚´†©û™'
        
            Get YesNo_Box sStr "Ñß†ôúôòÂ‡©û" 0 to iYes
            If (iYes=MBR_YES) Begin
        
                Send ChangeAllFileModes                                DF_Filemode_ReadOnly
                Set_Attribute DF_File_Mode Of Copen.File_Number     to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Cmoves.File_Number    to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Clients.File_Number   to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Payresp.File_Number   to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Sysrecc.File_Number   to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of CmovesA.File_Number   to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Btnemp.File_Number    To DF_Filemode_Default
                Move Error_Object_ID                                to  iError_Object_ID
        
                Indicate Err False
        
        
                Set Enabled_State to False
        
                Clear Clients
        
                If (sPel<>'') Begin
                    Move sPel to Clients.Client_ID
                    Find EQ Clients By Index.6
                    If (Found) Begin
                        Set Label Of frmText to Clients.Client_ID
                        Begin_Transaction
                            Send Make_The_Records Clients.Client_ID dHmnia sModule
                        End_Transaction
                        UNLOCK
                    End
                End
                Else Begin
                    Find Gt Clients By Index.6
                    While (Found)
                        Set Label Of frmText to Clients.Client_ID
                        Begin_Transaction
                            Send Make_The_Records Clients.Client_ID dHmnia sModule
                        End_Transaction
                        UNLOCK
                        Find Gt Clients By Index.6
                    Loop
                End
        
                Send ChangeAllFileModes DF_Filemode_Default
                Move iError_Object_ID to  Error_Object_ID
                Set Enabled_State to True
                Set Label Of frmText  to ''
                Set Label Of frmText2 to ''
                If (Not(Err)) Send Info_Box 'Ü ò¨´Ê£ò´û õû£†¶¨®öÂò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
            End
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // btnAutoCopen

    Object frmText is a ButtonSub
        Set Size to 14 238
        Set Location to 106 5
        Set Border_Style to Border_StaticEdge
        Set Focus_Mode to NonFocusable
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        //AB-StoreEnd

    End_Object    // frmText

    Object frmText2 is a ButtonSub
        Set Size to 14 238
        Set Location to 122 5
        Set Border_Style to Border_StaticEdge
        Set Focus_Mode to NonFocusable
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        //AB-StoreEnd

    End_Object    // frmText2

    Object FormSub1 is a FormSub
        Set Size to 13 85
        Set Location to 15 82
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Prompt_Object to (sl100(Self))
        //AB-StoreEnd

    End_Object    // FormSub1

    Object chkDebug is a CheckBox

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Debug"
        Set Size to 10 38
        Set Location to 89 97
        Set Color to 13415581

        //AB-StoreStart
        
        //AB-StoreEnd

    End_Object    // chkDebug


    //AB-StoreStart
    
    On_Key Key_Alt+Key_o Send ShowDebug
    
    Procedure Activate_View Returns Integer
        Integer rVal iMonth iYear iLastDay iDay
        Date    dShmera dTo dLast
        String  sTo sDay sMonth sModule
        Move '' to sTo
        Sysdate dShmera
        Forward Get Msg_Activate_View to rVal
        Get psMenuModule Of Main_Menu   to sModule
        Set psModule                    to sModule
    
        Set Visible_State of chkDebug to False
        Set Checked_State of chkDebug to False
    
        Procedure_Return rVal
    End_Procedure
    
    
    
    //AB-StoreEnd

End_Object    // tOpItem


//AB-StoreStart


//AB-StoreEnd

//AB/ End_Object    // prj
