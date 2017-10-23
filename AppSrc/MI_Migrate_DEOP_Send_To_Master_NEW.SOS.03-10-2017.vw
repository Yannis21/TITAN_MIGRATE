
Use DBVIEW.SUB

//AB/ Project Data Entry View
//AB/ Object prj is a View_Project
//AB/     Set Size to 230 325

//Open SYSCURXR
//Open COMPANY

Use File_dlg.pkg
Use cComDPDLG.pkg
Use cComXFIND.pkg
Use BUTTON.Sub
Use Windows.pkg


Activate_View Activate_MI_Migrate_DEOP_Send_To_Master_NEW for MI_Migrate_DEOP_Send_To_Master_NEW
Object MI_Migrate_DEOP_Send_To_Master_NEW is a dbView

    Set Border_Style to Border_Thick
    Set Size to 119 411
    Set Location to 15 14

    Property Integer piChoice public 0


    Set Label to "Äß¶©´¶¢„ ÉÑéè òß¶ ã¶§·õò ©´û§ Ñ§¶ß¶†û£‚§û Å·©û"
    Set Color to 14742506

    On_Key Key_Alt+Key_O Send OpenMe

    Procedure OpenMe
        Integer iState
        Get Visible_State of frmJSBD        to iState
        Set Visible_State of frmJSBD        to (1-iState)
        Set Enabled_State of frmJSBD        to (1-iState)
        //Set Visible_State of btnDelSMSMI    to (1-iState)
        //Set Enabled_State of btnDelSMSMI    to (1-iState)
    End_Procedure


    Procedure Activate_View Returns Integer
        Integer rVal
        String  sFolderInitial
        Forward Get Msg_Activate_View to rVal
        Set Value of frmJSBD to ""
        Procedure_Return rVal
    End_Procedure
     
    Use chartranslate.pkg

    Object btnDelSMSMI is a ButtonSub
        Set Size to 14 171
        Set Location to 99 139
        Set Label to "Delete ALL DEOP in SMSMI"

        Set Enabled_State to False
        Set Visible_State to False

            //AB-StoreStart
            Procedure OnClick
                Open MIORDH     Mode DF_EXCLUSIVE
                Open MIORDD     Mode DF_EXCLUSIVE
                ZeroFile MIORDH
                ZeroFile MIORDD
                Open MIORDH     Mode DF_SHARE
                Open MIORDD     Mode DF_SHARE
            End_Procedure // OnClick
            //AB-StoreEnd
    End_Object


    Object frmJSBD is a Form
        Set Size to 13 70
        Set Location to 99 56
        Set Label_Col_Offset to 25
        Set Password_State to True
        Set Label_Row_Offset to 1

        Set Enabled_State to False
        Set Visible_State to False

        //AB-StoreStart
        Procedure OnChange
            String sStr
            Get Value item 0 to sStr
            Set Enabled_State of btnDelSMSMI  to (sStr="05091960")
            Set Visible_State of btnDelSMSMI  to (sStr="05091960")
        End_Procedure
        //AB-StoreEnd

    End_Object


    Object btnSub2 is a Button
        Set Size to 20 383
        Set Location to 67 11
        Set Label to "Äß¶©´¶¢„"

        Procedure OnClick
            Date dExportDate
            String sMess sExportStatus sCountMess sPrespID
            String sFilename sLabel sClientCode sClientRecr sClientAFM sCNRecr
            Integer bIsCreated iWhat iVal isGood iCnt iFS iExportFlag
            Integer iFileNumber iFields iField_Type iRecn ichkDebug ichkNoCN

            Get Label to sLabel
            Get Checked_State of chkDebug to ichkDebug

            Move 0 to iCnt
            Move "" to sClientCode

            File_Size CN to iFS
            Clear CN
            Find GE CN.RECNUM
            While (Found)
                Add 1 to iCnt
                Move ("CN... "+String(iCnt)+" / "+String(iFS)) to sMess
                Set Label to sMess

                Integer iNoClientAllowed iNoCopy
                Move 0 to iNoCopy

                Clear CLIENTS
                Move CN.CLIENT_ID to Clients.CLIENT_ID
                Find Eq CLIENTS by Index.6

                If ( (Clients.EXPORTFLAG=1) and ((CN.EXPORTFLAG=1) or (Trim(CN.POLH_RECR)='1')) ) Begin

                    Clear BtnOrdH
                    Move CN.CN_CODE to BtnOrdH.CN_CODE
                    Find GE BtnOrdH by Index.3
                    While ((Found) and (BtnOrdH.CN_CODE=CN.CN_CODE))
                        If (BtnOrdH.DEOP_ACTIVE=0) Begin
                            Move 1 to isGood

                            Clear MICN
                            Move CN.CN_CODE to MICN.CN_CODE
                            Find Eq MICN by Index.5
                            If (not(Found)) Begin
                                If (ichkDebug) Begin
                                    Showln "---"
                                    Showln "èú¢·´û™: " Clients.CLIENT_ID  "  ÉÑéè:" BtnOrdH.AA_DEOP "  Î®ö¶:" CN.CN_CODE
                                    Showln "Éú§ ô®‚üû°ú ´¶ ‚®ö¶ ©´û§ SMSMI / MICN °ò† Éú§ £ú´ò≠‚®üû°ò§ ´ò ò§´Â©´¶†Æò ÉÑéè"
                                    Move 0 to isGood
                                End
                            End

                            If (isGood=1) Begin
                                Move MICN.CLIENT_ID     to sClientCode
                                Move MICN.CLIENT_RECR   to sClientRecr
                                Move MICN.CN_RECR       to sCNRecr

                                Clear MIORDH
                                Move BtnOrdH.VBranch    to MIORDH.VBranch
                                Move BtnOrdH.AA_DEOP    to MIORDH.AA_DEOP
                                Find EQ MIORDH by Index.1
                                If (Found) Begin
                                    Clear MIORDD
                                    Move MIORDH.RECR to MIORDD.BTNORDH_RECR
                                    Find GE MIORDD by Index.1
                                    While ((Found) and (MIORDD.BTNORDH_RECR=MIORDH.RECR))
                                        Delete MIORDD
                                        Find GT MIORDD by Index.1
                                    Loop
                                    Delete MIORDH
                                End

                                Move BtnOrdH.File_Number to iFileNumber
                                Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
                                Clear MIORDH
                                For FieldIndex from 0 to iFields
                                    Move (Trim(BtnOrdH.Recnum&)) to MIORDH.Recnum&
                                Loop
                                Move sClientCode    to MIORDH.CLIENT_ID
                                Move sCNRecr        to MIORDH.CN_RECR
                                SaveRecord MIORDH

                                Move BtnOrdD.File_Number to iFileNumber
                                Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
                                Clear BTNORDD
                                Move BTNOrdH.RECR to BTNOrdD.BTNORDH_RECR
                                Find GE BTNORDD by Index.1
                                While ((Found) and (BTNOrdD.BTNORDH_RECR=BTNOrdH.RECR))
                                    Clear MIORDD
                                    For FieldIndex from 0 to iFields
                                        Move (Trim(BtnOrdD.Recnum&)) to MIORDD.Recnum&
                                    Loop
                                    Move MIORDH.RECR to MIORDD.BTNORDH_RECR
                                    Clear item
                                    Move MIORDD.VITEM to item.ITEM_CODE
                                    Find Eq item by Index.5
                                    If (not(Found)) Begin
                                        Showln "è®Êô¢û£ò ÑÁ®ú©û™ ´¶¨ ÑÂõ¶¨™:" (Trim(MIORDD.VITEM)) "   ë≠·¢£ò 6891"
                                    End
                                    If (item.WAPOKAT_CODE=Sysfile.WAPOKAT_ETOIMA) Move 1 to MIORDD.ITEM_TI_EINAI
                                    Else If (UPPERCASE(Left(MIORDD.VITEM,1))="P") Move 2 to MIORDD.ITEM_TI_EINAI
                                    Else If           (Left(MIORDD.VITEM,1) ="ä") Move 3 to MIORDD.ITEM_TI_EINAI
                                    Else If           (Left(MIORDD.VITEM,1) ="¢") Move 3 to MIORDD.ITEM_TI_EINAI
                                    SaveRecord MIORDD
                                    Find GT BTNORDD by Index.1
                                Loop
                            End // If (isGood) MICN
                        End // If (BtnOrdH.DEOP_ACTIVE=0)) Begin
                        Find GT BtnOrdH by Index.3
                    Loop // While ((Found) and (CN.CN_CODE to BtnOrdH.CN_CODE))
                End
                Find GT CN.RECNUM
            Loop
            Set Label to sLabel
            Send Info_Box "Process Finished" "Information"
        End_Procedure // OnClick

    End_Object

    Object chkDebug is a CheckBox
        Set Size to 10 12
        Set Location to 45 111
        Set Checked_State to True
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkNoCN is a CheckBox
        Set Size to 10 9
        Set Location to 16 111
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object oTextBox1 is a TextBox
        Set Auto_Size_State to False
        Set Size to 17 163
        Set Location to 17 131
        Set Label to "Ñßú•ú®öò©Âò Ó¢‡§ ´‡§ Ñ§ú®öÈ§ ÉÑéè Æ‡®Â™ ‚¢úöÆ¶ ò§ ´¶ ‚®ö¶ úÂ§ò† £ò®°ò®†©£‚§¶"
        Set Justification_Mode to JMode_Left
        Set FontWeight to 600
    End_Object

    Object oTextBox2 is a TextBox
        Set Size to 50 10
        Set Location to 45 131
        Set Label to "Åö·¢ú ãû§Á£ò´ò ©´û§ ¶üÊ§û"
    End_Object

End_Object

//AB/ End_Object    // prj
