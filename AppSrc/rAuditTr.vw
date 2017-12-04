//AB/ Project rAuditTr
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "rAuditTr"
//AB/         Set ProjectFileName to "rAuditTr.vw"
//AB/         Set GenerateFileName to "rAuditTr.vw"

// Project Object Structure
//   rAuditTr is a dbViewSub
//     TextBoxSub1 is a TextBoxSub
//     frmApo is a cSyDateForm
//     TextBoxSub2 is a TextBoxSub
//     frmEos is a cSyDateForm
//     ButtonSub1 is a ButtonSub
//     btnMess is a ButtonSub
//     chkTransaction is a CheckBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object btnMess
Register_Object chkTransaction
Register_Object frmApo
Register_Object frmEos
Register_Object rAuditTr
Register_Object TextBoxSub1
Register_Object TextBoxSub2


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Open Gmove
    Open HGmove
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Txtbox.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub
    Use Chkbox.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_rAuditTr FOR rAuditTr

    Object rAuditTr is a dbViewSub

        //AB-StoreTopStart
                                
        Property Bool pbAbort Public False
        
        //AB-StoreTopEnd

        Set Label to "‹œ«˜­¦¨á œšš¨˜­é¤ ¡˜«˜š¨˜­ãª (Auditing) ©œ  ©«¦¨ ¡á ˜¨®œå˜"
        Set Size to 121 445
        Set Location to 7 7

        //AB-DDOStart


        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Œ˜ £œ«˜­œ¨Ÿ¦ç¤ œšš¨˜­âª €§¦"
            Set Location to 16 75
            Set Size to 10 113
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object frmApo is a cSyDateForm
            Set Size to 13 66
            Set Location to 14 195
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmApo

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "„àª"
            Set Location to 16 276
            Set Size to 10 15
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object frmEos is a cSyDateForm
            Set Size to 13 66
            Set Location to 14 296
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmEos

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "‹œ«˜­¦¨á"
            Set Size to 18 287
            Set Location to 39 75
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                Integer iErr iErrID iYes iTrans
                Date    dHmniaEos dHmniaApo
                String  sLabel
            
                Set pbAbort To False
            
                Get Value Of frmApo Item 0 To dHmniaApo
                Get Value Of frmEos Item 0 To dHmniaEos
            
                Get Checked_State Of chkTransaction to iTrans
            
                If (dHmniaApo="") Move "01/01/1980" to dHmniaApo
            
                If (dHmniaApo>dHmniaEos) Begin
                    Send Stop_Box "Š˜¤Ÿ˜©£â¤œª †£œ¨¦£ž¤åœª" "‘­á¢£˜ 4401"
                    Send Activate to frmApo
                    Procedure_Return
                End
            
                If (dHmniaEos="") Begin
                    Send Stop_Box "‘¬£§¢ž¨é©«œ «ž¤ †£œ¨¦£ž¤å˜" "‘­á¢£˜ 4402"
                    Send Activate to frmEos
                    Procedure_Return
                End
            
                Set Label Of btnMess to ""
            
            
                Get YesNo_Box ("Œ˜ £œ«˜­œ¨Ÿ¦ç¤ ©«˜  ©«¦¨ ¡á ˜¨®œå˜\n¦  œšš¨˜­âª œàª ¡˜  "+String(dHmniaEos)) to iYes
            
                If (iYes=MBR_NO) Procedure_Return
            
                If (iTrans) Begin
                    Begin_Transaction
                        Send ChangeAllFileModes DF_Filemode_ReadOnly
                        Set_Attribute DF_File_Mode Of Gmove.File_Number     To DF_Filemode_Default
                        Set_Attribute DF_File_Mode Of HGmove.File_Number    To DF_Filemode_Default
                        Move Error_Object_ID to iErrID
                        Indicate Err False
            
                        Clear Gmove
                        Move dHmniaApo to Gmove.Garticl_Hmnia
                        Find Ge Gmove By Index.4 // Garticl_Hmnia + Gtypkin_Code + Recnum
                        While ((Found) And (Gmove.Garticl_Hmnia <= dHmniaEos))
                            Set Label Of btnMess to ("Recnum="+String(Gmove.Recnum)+"   ‹œ«˜­â¨à "+String(Gmove.Garticl_Hmnia)+"  "+Trim(Gmove.Gmove_Aitiol))
                            
                            
                            Copy_Records Gmove.File_Number To HGmove.File_Number 1
                            
                            
                            Move (Err) To iErr
                            If (iErr) Begin
                                Set pbAbort To True
                                Abort_Transaction
                            End
                            Delete Gmove
                            If (iErr) Begin
                                Set pbAbort To True
                                Abort_Transaction
                            End
                            Find GT Gmove By Index.4 // Garticl_Hmnia + Gtypkin_Code + Recnum
                        Loop
                    End_Transaction
                    Unlock
                    Move iErrID to Error_Object_ID
                    Send ChangeAllFileModes DF_Filemode_Default  // See Stark.Pkg for This Desktop Procedure
                End
                Else Begin
                    Clear Gmove
                    Move dHmniaApo to Gmove.Garticl_Hmnia
                    Find Ge Gmove By Index.4 // Garticl_Hmnia + Gtypkin_Code + Recnum
                    While ((Found) And (Gmove.Garticl_Hmnia <= dHmniaEos))
                        Set Label Of btnMess to ("Recnum="+String(Gmove.Recnum)+"   ‹œ«˜­â¨à "+String(Gmove.Garticl_Hmnia)+"  "+Trim(Gmove.Gmove_Aitiol))
                        Copy_Records Gmove.File_Number To HGmove.File_Number 1
                        Delete Gmove
                        Find GT Gmove By Index.4 // Garticl_Hmnia + Gtypkin_Code + Recnum
                    Loop
                End
                Send Info_Box "† ‹œ«˜­¦¨á Ž¢¦¡¢ž¨éŸž¡œ"    "¢ž¨¦­¦¨å˜"
                Set Label Of btnMess to ""
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object btnMess is a ButtonSub

            //AB-StoreTopStart
                                
                                
            //AB-StoreTopEnd

            Set Size to 18 419
            Set Location to 77 11
            Set Border_Style to Border_StaticEdge
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                
                                
                                
            //AB-StoreEnd

        End_Object    // btnMess

        Object chkTransaction is a CheckBoxSub
            Set Label to "‹œ ®¨ã©ž TRANSACTION (‡˜ ¡¢œ ›é©œ  æ¢¦ «¦ ©ç©«ž£˜) œàª æ«¦¬ ¦¢¦¡¢ž¨àŸœå ž › ˜› ¡˜©å˜"
            Set Size to 10 329
            Set Location to 62 57
            Set Auto_Size_State to FALSE
        End_Object    // chkTransaction

    End_Object    // rAuditTr


    //AB-StoreStart
        
    //AB-StoreEnd

//AB/     End_Object    // prj
