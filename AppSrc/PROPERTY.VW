//AB/ Project oProperties
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "oProperties"
//AB/     Set ProjectFileName to "oProperties.vw"

// Project Object Structure
//   oProperties is a dbViewSubS
//     oTextBox2 is a TextBoxSub
//     oTextBox1 is a TextBoxSub
//     chkPAE is a CheckBoxSub

// Register all objects
Register_Object chkPAE
Register_Object oTextBox1
Register_Object oTextBox2
Register_Object Property

//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Use Locales.pkg

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Tabdlg.Sub
    Use DFAllEnt.pkg
    Use Button.Sub
    Use Line.Sub
    Use Txtbox.Sub
    Use Chkbox.Sub
    Use Form.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use Group.Sub
    Use Cmbfrm.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_oProperties FOR oProperties

    Object oProperties is a dbViewSubS

        //AB-StoreTopStart
        //Register_Function GetTheAppPath Returns String

        Property Integer piMustRestart False

        //AB-StoreTopEnd

        Set Minimize_Icon to FALSE
        Set Label to "àõ†Ê´û´ú™ Ñ≠ò®£¶ö„™"
        Set Size to 240 290
        Set Location to 12 62

        //AB-DDOStart


        //AB-DDOEnd

        Object oTDlgProperty is a TabDialogSub
            Set Size to 198 281
            Set Location to 6 3
            Set Rotate_Mode to RM_Rotate
            Set Skip_Button_Mode to SBM_ALWAYS
            Object TP_General is a TabPage
                Set Label to "General"
                Set Tab_ToolTip_Value to "Çú§†°ò Æò®ò°´û®†©´†°· ú≠ò®£¶ö„™"
                Object oSysfile_bn is a ButtonSub
                    Set Label to "Ä§ò§‚‡©û"
                    Set Bitmap to "tweakui4.bmp"
                    Set Size to 22 24
                    Set Location to 7 7
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart

                    Procedure OnClick
                        Reread Sysfile
                        Unlock
                        Set Label of otxtSysfile to "Ä§ò§‚‡©û ¶¢¶°¢û®Èüû°ú"
                    End_Procedure // OnClick





                    //AB-StoreEnd

                End_Object    // oSysfile_bn

                Object LineControlSub1 is a LineControlSub
                    Set Size to 2 265
                    Set Location to 33 7
                End_Object    // LineControlSub1

                Object otxtSysfile is a TextBoxSub
                    Set Label to "Ä§ò§‚‡©û õúõ¶£‚§‡§ ë¨©´„£ò´¶™"
                    Set Auto_Size_State to FALSE
                    Set TextColor to clNavy
                    Set Location to 9 33
                    Set Size to 18 75
                    Set Justification_Mode to jMode_Left
                    Set TypeFace to "MS Sans Serif"
                End_Object    // otxtSysfile

                Object TextBoxSub9 is a TextBoxSub
                    Set Label to "ï®„©û è.Ä.Ñ."
                    Set Location to 47 14
                    Set Size to 10 45
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub9

                Object chkPAE is a CheckBoxSub

                    //AB-StoreTopStart

                    //AB-StoreTopEnd

                    Set Size to 13 9
                    Set Location to 45 65

                    //AB-StoreStart

                    Procedure OnChange
                        Integer isChecked
                        String  lsTheAppPath
                        Get Checked_State to isChecked
                        Move (GetTheAppPath(Self)) to lsTheAppPath
                        set_profile_string lsTheAppPath "ShowPAE" to (isChecked=1)
                    End_Procedure

                    //AB-StoreEnd

                End_Object    // chkPAE

                Object TextBoxSub10 is a TextBoxSub
                    Set Label to "íú¢. Ä®†üû£Ê™ é®†©´†°¶Á Ä•†¶ö®·≠¶¨"
                    Set Location to 60 14
                    Set Size to 10 128
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub10

                Object frmLastOrist is a FormSub

                    //AB-StoreTopStart

                    //AB-StoreTopEnd

                    Set Size to 13 57
                    Set Location to 58 145
                    Set Label_Col_Offset to 2
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart

                    Procedure OnChange
                        Integer iNum
                        String lsTheAppPath
                        Move (GetTheAppPath(Self)) to lsTheAppPath
                        Get Value Item 0 to iNum
                        set_profile_string lsTheAppPath "LastOristAxioNo" to iNum
                    End_Procedure // OnChange


                    //AB-StoreEnd

                End_Object    // frmLastOrist


                //AB-StoreStart

                Set Label to "Çú§†°·"

                //AB-StoreEnd

            End_Object    // TP_General

            Object TP_Locales is a TabPageSub
                Set Label to "Locales"
                Set Tab_ToolTip_Value to "í¶ß†°‚™ ë´òüú®‚™"
                Object rdgLocales is a RadioGroupSub
                    Set Label to "Ñß†¢¶ö„ ´¶ß†°È§ ©´òüú®È§"
                    Set Size to 45 105
                    Set Location to 10 7
                    Object rdWinDflt is a RadioSub
                        Set Label to "Windows Defaults"
                        Set Size to 10 74
                        Set Location to 14 5
                    End_Object    // rdWinDflt

                    Object rdUsr is a RadioSub
                        Set Label to "Ñß†¢¶ö‚™ Æ®„©´û"
                        Set Size to 10 73
                        Set Location to 29 5
                    End_Object    // rdUsr


                    //AB-StoreStart

                    Procedure Notify_Select_State integer iToItem integer iFromItem
                        String lsTheAppPath
                        Integer liCurRadio

                        Get Current_Radio to liCurRadio
                        Set Enabled_State of grpUsrDef     to (liCurRadio=1)
                        Set Enabled_State of grpDateFormat to (liCurRadio=1)
                        If (iFromitem <> -1) Begin
                            Move (GetTheAppPath(Self)) to lsTheAppPath
                            set_profile_string lsTheAppPath "UserDefinedLocales" to (liCurRadio=1)
                            Set Application_Locales ghoWorkSpace to (liCurRadio=1)
                            Set piMustRestart to (liCurRadio=0)
                        End
                    End_Procedure


                    //AB-StoreEnd

                End_Object    // rdgLocales

                Object grpUsrDef is a GroupSub
                    Set Label to "É†òÆ‡®†©´†°·"
                    Set Size to 60 152
                    Set Location to 10 119
                    Object cbfrmDecSep is a ComboFormSub
                        Set Label to "Éú°òõ†°È§:"
                        Set Size to 14 64
                        Set Location to 10 57
                        Set Label_Col_Offset to 50
                        Set Combo_Sort_State to FALSE
                        Set Allow_Blank_State to TRUE
                        Set Entry_State Item 0 to FALSE

                        //AB-StoreStart

                        Procedure Combo_Fill_List
                            Send combo_add_item ""
                            Send combo_add_item "."
                            Send combo_add_item ","
                        End_Procedure // Combo_Fill_List

                        Procedure OnChange
                           Integer bState
                           String lsTheAppPath lsDecSep
                           Get validate_combo_value to bState
                           If Not (bState) Begin
                               Move (GetTheAppPath(Self)) to lsTheAppPath
                               Get Value Item 0 to lsDecSep
                               set profile_DWORD lsTheAppPath "DecimalSeparator" to (Ascii(lsDecSep))
                               If (lsDecSep = "") set profile_DWORD lsTheAppPath "ThousandSeparator" to (Ascii(lsDecSep))
                               Else If (lsDecSep = ".") set profile_DWORD lsTheAppPath "ThousandSeparator" to (Ascii(","))
                               Else If (lsDecSep = ",") set profile_DWORD lsTheAppPath "ThousandSeparator" to (Ascii("."))
                               Set Enabled_State of bnApply to True
                           End
                        End_Procedure // OnChange





                        //AB-StoreEnd

                    End_Object    // cbfrmDecSep

                    Object cbfrmThSep is a ComboFormSub
                        Set Label to "ï†¢†·õ‡§:"
                        Set Size to 14 64
                        Set Location to 25 57
                        Set Label_Col_Offset to 50
                        Set Combo_Sort_State to FALSE
                        Set Allow_Blank_State to TRUE
                        Set Entry_State Item 0 to FALSE

                        //AB-StoreStart

                        Procedure Combo_Fill_List
                            Send combo_add_item ""
                            Send combo_add_item "."
                            Send combo_add_item ","
                        End_Procedure // Combo_Fill_List

                        Procedure OnChange
                           Integer bState
                           String lsTheAppPath lsThSep
                           Get validate_combo_value to bState
                           If Not (bState) Begin
                               Move (GetTheAppPath(Self)) to lsTheAppPath
                               Get Value Item 0 to lsThSep
                               set profile_DWORD lsTheAppPath "ThousandSeparator" to (Ascii(lsThSep))
                               If (lsThSep = "") set profile_DWORD lsTheAppPath "DecimalSeparator" to (Ascii(lsThSep))
                               Else If (lsThSep = ".") set profile_DWORD lsTheAppPath "DecimalSeparator" to (Ascii(","))
                               Else If (lsThSep = ",") set profile_DWORD lsTheAppPath "DecimalSeparator" to (Ascii("."))
                               Set Enabled_State of bnApply to True
                           End
                        End_Procedure // OnChange





                        //AB-StoreEnd

                    End_Object    // cbfrmThSep

                    Object cbfrmDateSep is a ComboFormSub
                        Set Label to "Ü£ú®¶£û§†È§:"
                        Set Size to 14 64
                        Set Location to 40 57
                        Set Label_Col_Offset to 50
                        Set Combo_Sort_State to FALSE
                        Set Allow_Blank_State to TRUE
                        Set Entry_State Item 0 to FALSE

                        //AB-StoreStart

                        Procedure Combo_Fill_List
                            Send combo_add_item ""
                            Send combo_add_item "/"
                            Send combo_add_item "-"
                        End_Procedure // Combo_Fill_List

                        Procedure OnChange
                           Integer bState
                           String lsTheAppPath lsDateSep
                           Get validate_combo_value to bState
                           If Not (bState) Begin
                               Move (GetTheAppPath(Self)) to lsTheAppPath
                               Get Value Item 0 to lsDateSep
                               set profile_DWORD lsTheAppPath "DateSeparator" to (Ascii(lsDateSep))
                           End
                        End_Procedure // OnChange




                        //AB-StoreEnd

                    End_Object    // cbfrmDateSep

                    Object bnApply is a ButtonSub
                        Set Label to "Apply"
                        Set Bitmap to "Chkmrk0.bmp"
                        Set Size to 24 25
                        Set Location to 10 124
                        Set Enabled_State to FALSE
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart
                        Procedure OnClick
                            String lsTheAppPath
                            Integer liDecSep liThSep liDateSep

                            Move (GetTheAppPath(Self)) to lsTheAppPath
                            Get profile_DWORD lsTheAppPath "DecimalSeparator"   to liDecSep
                            Get profile_DWORD lsTheAppPath "ThousandSeparator"  to liThSep
                            Get profile_DWORD lsTheAppPath "DateSeparator"      to liDateSep
                            Set Custom_Number_Format to (Character(liThSep)) (Character(liDecSep))
                            Set Custom_Date_Separator to (Character(liDateSep))
                            Set Enabled_State to False
                        End_Procedure // OnClick





                        //AB-StoreEnd

                    End_Object    // bnApply

                End_Object    // grpUsrDef

                Object grpDateFormat is a GroupSub
                    Set Label to "Format"
                    Set Size to 44 152
                    Set Location to 71 119
                    Object cbfrmDateFormat is a ComboFormSub
                        Set Label to "Ü£ú®¶£û§†È§:"
                        Set Size to 14 64
                        Set Location to 10 57
                        Set Label_Col_Offset to 50
                        Set Combo_Sort_State to FALSE
                        Set Allow_Blank_State to TRUE
                        Set Entry_State Item 0 to FALSE

                        //AB-StoreStart

                        Procedure Combo_Fill_List
                            Send combo_add_item "USA"
                            Send combo_add_item "EUROPEAN"
                            Send combo_add_item "MILITARY"
                            Send combo_add_item ""
                        End_Procedure // Combo_Fill_List

                        Procedure OnChange
                           Integer bState rVal
                           String lsTheAppPath lsDateFormat
                           Get validate_combo_value to bState
                           If Not (bState) Begin
                               Move (GetTheAppPath(Self)) to lsTheAppPath
                               Get Value Item 0 to lsDateFormat
                               Get combo_item_matching lsDateFormat  to rVal
                               Case Begin
                                    Case (rVal = DF_DATE_USA)
                                        set_profile_String lsTheAppPath "DateFormat" to "DF_DATE_USA"
                                        Set Label of txtEg to "e.g. 01/31/2000"
                                        Set Bitmap Of bnDateFormat to "locale5.bmp"
                                        Case Break
                                    Case (rVal = DF_DATE_EUROPEAN)
                                        set_profile_String lsTheAppPath "DateFormat" to "DF_DATE_EUROPEAN"
                                        Set Bitmap Of bnDateFormat to "locale3.bmp"
                                        Set Label of txtEg to "e.g. 31/01/2000"
                                        Case Break
                                    Case (rVal = DF_DATE_MILITARY)
                                        set_profile_String lsTheAppPath "DateFormat" to "DF_DATE_MILITARY"
                                        Set Bitmap Of bnDateFormat to "locale5.bmp"
                                        Set Label of txtEg to "e.g. 2000/01/31"
                                        Case Break
                                    Case Else
                                        set_profile_String lsTheAppPath "DateFormat" to ""
                                        Set Label of txtEg to "Windows default"
                               Case End
                               Set Enabled_State of bnDateFormat to True
                           End
                        End_Procedure // OnChange

                        Set Default_Combo_Item to 3




                        //AB-StoreEnd

                    End_Object    // cbfrmDateFormat

                    Object bnDateFormat is a ButtonSub
                        Set Label to "Apply"
                        Set Bitmap to "locale3.bmp"
                        Set Size to 22 25
                        Set Location to 9 124
                        Set Enabled_State to FALSE
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart
                        Procedure OnClick
                            String lsTheAppPath lsDateFormat
                            Integer liDateFormat

                            Move (GetTheAppPath(Self)) to lsTheAppPath
                            Get_profile_string lsTheAppPath "DateFormat"   to lsDateFormat
                            If (lsDateFormat <> "") Begin
                                Move lsDateFormat to  liDateFormat
                                Set Custom_Date_Format to liDateFormat
                            End
                            Else Send Info_Box "è®‚ßú† §ò úßò§ú°†§„©ú†™ ´û§ ú≠ò®£¶ö„.\n\nÉ†ò≠¶®ú´†°· ¶† ò¢¢òö‚™ üò ú≠ò®£¶©´¶Á§ ´û§ \núßÊ£ú§û ≠¶®ò ß¶¨ üò ú°°†§„©ú†™ ´û§ ú≠ò®£¶ö„ ©¶¨." "è¢û®¶≠¶®Âò ©¨©´„£ò´¶™"
                            Set Enabled_State to False
                        End_Procedure // OnClick









                        //AB-StoreEnd

                    End_Object    // bnDateFormat

                    Object txtEg is a TextBoxSub
                        Set Label to "e.g."
                        Set Location to 28 59
                        Set Size to 10 13
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // txtEg

                End_Object    // grpDateFormat


                //AB-StoreStart

                Set Label to "í¶ß†°· ëÁ£ô¶¢ò"
                Set Button_Shadow_State To True


                //AB-StoreEnd

            End_Object    // TP_Locales

            Object TP_Print is a TabPageSub
                Set Label to "Print"
                Set Tab_ToolTip_Value to "Ñß†¢¶ö‚™ ö†ò ´†™ ú°´¨ßÈ©ú†™"
                Object rdgMargins is a RadioGroupSub
                    Set Label to "èú®†üÈ®†ò ú°´¨ßÈ©ú‡§"
                    Set Size to 81 256
                    Set Location to 10 10
                    Object rdDefault is a RadioSub
                        Set Label to "Default"
                        Set Size to 10 39
                        Set Location to 10 5
                    End_Object    // rdDefault

                    Object rdUsr is a RadioSub
                        Set Label to "Ñß†¢¶ö‚™ Æ®„©´û"
                        Set Size to 10 75
                        Set Location to 25 5
                    End_Object    // rdUsr

                    Object frmLeft is a FormSub
                        Set Size to 13 35
                        Set Location to 12 135
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"

                        //AB-StoreStart

                        Procedure OnChange
                            Number lnCm
                            Get Value Item 0 to lnCm
                            Set Value of frmLeftIn Item 0 to (CmToInches(lnCm))
                            Set Enabled_State of bnApply to True
                        End_Procedure





                        //AB-StoreEnd

                    End_Object    // frmLeft

                    Object frmRight is a FormSub
                        Set Size to 13 35
                        Set Location to 28 135
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"

                        //AB-StoreStart

                        Procedure OnChange
                            Number lnCm
                            Get Value Item 0 to lnCm
                            Set Value of frmRightIn Item 0 to (CmToInches(lnCm))
                            Set Enabled_State of bnApply to True
                        End_Procedure





                        //AB-StoreEnd

                    End_Object    // frmRight

                    Object frmTop is a FormSub
                        Set Size to 13 35
                        Set Location to 45 135
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"

                        //AB-StoreStart

                        Procedure OnChange
                            Number lnCm
                            Get Value Item 0 to lnCm
                            Set Value of frmTopIn Item 0 to (CmToInches(lnCm))
                            Set Enabled_State of bnApply to True
                        End_Procedure





                        //AB-StoreEnd

                    End_Object    // frmTop

                    Object frmBottom is a FormSub
                        Set Size to 13 35
                        Set Location to 62 135
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"

                        //AB-StoreStart

                        Procedure OnChange
                            Number lnCm
                            Get Value Item 0 to lnCm
                            Set Value of frmBottomIn Item 0 to (CmToInches(lnCm))
                            Set Enabled_State of bnApply to True
                        End_Procedure





                        //AB-StoreEnd

                    End_Object    // frmBottom

                    Object frmLeftIn is a FormSub
                        Set Size to 13 35
                        Set Location to 12 201
                        Set Color to clBtnFace
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Enabled_State to FALSE
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart




                        //AB-StoreEnd

                    End_Object    // frmLeftIn

                    Object frmRightIn is a FormSub
                        Set Size to 13 35
                        Set Location to 28 201
                        Set Color to clBtnFace
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Enabled_State to FALSE
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart

                        //AB-StoreEnd

                    End_Object    // frmRightIn

                    Object frmTopIn is a FormSub
                        Set Size to 13 35
                        Set Location to 45 201
                        Set Color to clBtnFace
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Enabled_State to FALSE
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart


                        //AB-StoreEnd

                    End_Object    // frmTopIn

                    Object frmBottomIn is a FormSub
                        Set Size to 13 35
                        Set Location to 62 201
                        Set Color to clBtnFace
                        Set Label_Col_Offset to 2
                        Set Form_Datatype Item 0 to Mask_Numeric_Window
                        Set Enabled_State to FALSE
                        Set Form_Mask Item 0 to "0.00"
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart


                        //AB-StoreEnd

                    End_Object    // frmBottomIn

                    Object bnApply is a ButtonSub
                        Set Label to "Ñ≠ò®£¶ö„"
                        Set Size to 15 50
                        Set Location to 58 10
                        Set Enabled_State to FALSE
                        Set Form_TypeFace Item 0 to "MS Sans Serif"
                        Set Item_Shadow_State Item 0 to TRUE
                        Set Shadow_State Item 0 to TRUE

                        //AB-StoreStart

                        Procedure ApplayMargins
                            Number lnMargin
                            String lsTheAppPath

                            Move (GetTheAppPath(Self)) to lsTheAppPath
                            Get Value of frmLeft Item 0 to lnMargin
                            set profile_DWORD lsTheAppPath "LeftMargin" to (CmToTwips(lnMargin))
                            Get Value of frmRight Item 0 to lnMargin
                            set profile_DWORD lsTheAppPath "RightMargin" to (CmToTwips(lnMargin))
                            Get Value of frmTop Item 0 to lnMargin
                            set profile_DWORD lsTheAppPath "TopMargin" to (CmToTwips(lnMargin))
                            Get Value of frmBottom Item 0 to lnMargin
                            set profile_DWORD lsTheAppPath "BottomMargin" to (CmToTwips(lnMargin))
                            Set Enabled_State to False
                        End_Procedure // ApplayMargins

                        Procedure OnClick
                            Send ApplayMargins
                        End_Procedure // OnClick




                        //AB-StoreEnd

                    End_Object    // bnApply

                    Object txtLeft is a TextBoxSub
                        Set Label to "Ä®†©´ú®Ê:"
                        Set Location to 12 95
                        Set Size to 12 36
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // txtLeft

                    Object txtRight is a TextBoxSub
                        Set Label to "Éú•†Ê:"
                        Set Location to 28 95
                        Set Size to 13 36
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // txtRight

                    Object txtTop is a TextBoxSub
                        Set Label to "è·§‡:"
                        Set Location to 45 95
                        Set Size to 13 36
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // txtTop

                    Object txtBottom is a TextBoxSub
                        Set Label to "â·´‡:"
                        Set Location to 62 95
                        Set Size to 13 36
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // txtBottom

                    Object Text1 is a TextBoxSub
                        Set Label to "cm"
                        Set Location to 14 175
                        Set Size to 10 11
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text1

                    Object Text2 is a TextBoxSub
                        Set Label to "cm"
                        Set Location to 30 175
                        Set Size to 10 11
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text2

                    Object Text3 is a TextBoxSub
                        Set Label to "cm"
                        Set Location to 47 175
                        Set Size to 10 11
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text3

                    Object Text4 is a TextBoxSub
                        Set Label to "cm"
                        Set Location to 64 175
                        Set Size to 10 11
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text4

                    Object Text5 is a TextBoxSub
                        Set Label to "in"
                        Set Location to 13 241
                        Set Size to 10 7
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text5

                    Object Text6 is a TextBoxSub
                        Set Label to "in"
                        Set Location to 30 241
                        Set Size to 10 7
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text6

                    Object Text7 is a TextBoxSub
                        Set Label to "in"
                        Set Location to 47 241
                        Set Size to 10 7
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text7

                    Object Text8 is a TextBoxSub
                        Set Label to "in"
                        Set Location to 64 241
                        Set Size to 10 7
                        Set TypeFace to "MS Sans Serif"
                    End_Object    // Text8


                    //AB-StoreStart

                    Procedure Notify_Select_State integer iToItem integer iFromItem
                        Integer liCurRadio
                        String lsTheAppPath

                        Get Current_Radio                       to liCurRadio
                        Set Enabled_State        of frmLeft     to (liCurRadio=1)
                        Set Enabled_State        of frmRight    to (liCurRadio=1)
                        Set Enabled_State        of frmTop      to (liCurRadio=1)
                        Set Enabled_State        of frmBottom   to (liCurRadio=1)
                        Set Object_Shadow_State  of txtLeft     to (liCurRadio=0)
                        Set Object_Shadow_State  of txtRight    to (liCurRadio=0)
                        Set Object_Shadow_State  of txtTop      to (liCurRadio=0)
                        Set Object_Shadow_State  of txtBottom   to (liCurRadio=0)

                        If (iFromitem <> -1) Begin
                            Move (GetTheAppPath(Self)) to lsTheAppPath
                            set_profile_string lsTheAppPath "UserDefinedMargins" to (liCurRadio=1)
                        End
                    End_Procedure // Notify_Select_State






                    //AB-StoreEnd

                End_Object    // rdgMargins


                //AB-StoreStart

                Set Label to "Ñ°´¨ßÈ©ú†™"

                //AB-StoreEnd

            End_Object    // TP_Print


            //AB-StoreStart

            //***************** Predefined Procedures and Functions Section **************

            Function tab_change integer pageNumber integer focus_mode returns integer
                Integer rVal Itm bState liDecSep liThSep liDateSep
                Integer liMargin
                String lsTheAppPath lsDateFormat
                Case Begin

                   Case (PageNumber = 0)
                       Set Label of (otxtSysfile(TP_General(Self))) to "Ä§ò§‚‡©û õúõ¶£‚§‡§ ë¨©´„£ò´¶™"
                       Move (GetTheAppPath(Self)) to lsTheAppPath
                       get_profile_string lsTheAppPath "ShowPAE" to bState
                       Set Checked_State of (chkPAE(TP_General(Self)))  to (If((bState),1,0))
                       get_profile_string lsTheAppPath "LastOristAxioNo" to bState
                       Set Value Of (frmLastOrist(TP_General(Self)))  Item 0 to bState
                       Case Break

                   Case (PageNumber = 1)
                       Move (GetTheAppPath(Self)) to lsTheAppPath
                       get_profile_string lsTheAppPath "UserDefinedLocales" to bState
                       Set Current_Radio of (rdgLocales(TP_Locales(Self)))  to (If((bState),1,0))
                       Get profile_DWORD lsTheAppPath "DecimalSeparator"    to liDecSep
                       If (liDecSep <> REG_VALUE_NOT_EXIST) Set Value of (cbfrmDecSep(grpUsrDef(TP_Locales(Self))))         to (Character(liDecSep))
                       Get profile_DWORD lsTheAppPath "ThousandSeparator"  to liThSep
                       If (liThSep <> REG_VALUE_NOT_EXIST) Set Value of (cbfrmThSep(grpUsrDef(TP_Locales(Self))))          to (Character(liThSep))
                       Get profile_DWORD lsTheAppPath "DateSeparator"      to liDateSep
                       If (liDateSep <> REG_VALUE_NOT_EXIST) Set Value of (cbfrmDateSep(grpUsrDef(TP_Locales(Self))))        to (Character(liDateSep))
                       Get_profile_string lsTheAppPath "DateFormat"    to lsDateFormat
                       Move (Replace("DF_DATE_",lsDateFormat,"")) to lsDateFormat
                       Set Value of (cbfrmDateFormat(grpDateFormat(TP_Locales(Self))))         to lsDateFormat
                       If (lsDateFormat = "USA") Set Label of (txtEg(grpDateFormat(TP_Locales(Self)))) to "e.g. 01/31/2000"
                       Else If (lsDateFormat = "EUROPEAN") Set Label of (txtEg(grpDateFormat(TP_Locales(Self)))) to "e.g. 31/01/2000"
                       Else If (lsDateFormat = "MILITARY") Set Label of (txtEg(grpDateFormat(TP_Locales(Self)))) to "e.g. 2000/01/31"
                       Else Set Label of (txtEg(grpDateFormat(TP_Locales(Self)))) to "Windows Default"
                       Case Break
                   Case (PageNumber = 2)
                       Move (GetTheAppPath(Self)) to lsTheAppPath
                       get_profile_string lsTheAppPath "UserDefinedMargins" to bState
                       Set Current_Radio of (rdgMargins(TP_Print(Self)))  to (If((bState),1,0))
                       Get profile_DWORD lsTheAppPath "LeftMargin"    to liMargin
                       If (liMargin <> REG_VALUE_NOT_EXIST) Set Value of (frmLeft(rdgMargins(TP_Print(Self))))   to (TwipsToCm(liMargin))
                       Get profile_DWORD lsTheAppPath "RightMargin"    to liMargin
                       If (liMargin <> REG_VALUE_NOT_EXIST) Set Value of (frmRight(rdgMargins(TP_Print(Self))))  to (TwipsToCm(liMargin))
                       Get profile_DWORD lsTheAppPath "TopMargin"    to liMargin
                       If (liMargin <> REG_VALUE_NOT_EXIST) Set Value of (frmTop(rdgMargins(TP_Print(Self))))    to (TwipsToCm(liMargin))
                       Get profile_DWORD lsTheAppPath "BottomMargin"    to liMargin
                       If (liMargin <> REG_VALUE_NOT_EXIST) Set Value of (frmBottom(rdgMargins(TP_Print(Self)))) to (TwipsToCm(liMargin))
                       Set Enabled_State of (bnApply(rdgMargins(TP_Print(Self)))) to False
                Case End
                Forward Get tab_change pageNumber focus_mode to Rval
                Function_Return rVal
            End_Function









            //AB-StoreEnd

        End_Object    // oTDlgProperty

        Object oBtnOk is a ButtonSub
            Set Label to "&â¢úÂ©†£¶"
            Set Size to 14 51
            Set Location to 207 233
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            //***************** Predefined Procedures and Functions Section **************

            Procedure OnClick
                Send Deactivate To oProperties
            End_Procedure

            Set TooltipValue to "Ñ•¶õ¶™"














            //AB-StoreEnd

        End_Object    // oBtnOk


        //AB-StoreStart


        //***************** Predefined Procedures and Functions Section **************

        Procedure End_Construct_Object
            Forward Send End_Construct_Object
            Set piPropertiesObjectId of (Main(Self)) to Self
        End_Procedure

        Procedure Page Integer iMode
            Integer hWnd hSmId iItems bState
            Forward Send Page iMode
            Get Window_Handle to hWnd
            If ((hWnd <> 0) and (iMode = 1)) Begin
                Move (GetSystemMenu(hWnd,False)) to hSmId
                Move (GetMenuItemCount(hSmId)) to iItems
                Move (DeleteMenu(hSmId,(iItems-1),MF_BYPOSITION)) to bState
                Move (DeleteMenu(hSmId,(iItems-2),MF_BYPOSITION)) to bState
            End
        End_Procedure

        Procedure Deactivating Returns Integer
            Integer rVal
            If (piMustRestart(Self)) Send Info_Box "è®‚ßú† §ò úßò§ú°†§„©ú†™ ´û§ ú≠ò®£¶ö„.\n\nÉ†ò≠¶®ú´†°· ¶† ò¢¢òö‚™ üò ú≠ò®£¶©´¶Á§ ´û§ \núßÊ£ú§û ≠¶®ò ß¶¨ üò ú°°†§„©ú†™ ´û§ ú≠ò®£¶ö„ ©¶¨." "è¢û®¶≠¶®Âò ©¨©´„£ò´¶™"
            Forward Get MSG_Deactivating to rVal
            Procedure_Return rVal
        End_Procedure

        //Set Icon to "Ide1.ico"
        Set Block_Mouse_State to true

        On_Key Key_Alt+Key_K      Send KeyAction to (oBtnOk(Self))
        On_Key KCancel            Send KeyAction to (oBtnOk(Self))
        On_Key KExit_application  Send KeyAction to (oBtnOk(Self))
        On_Key KExit_Function     Send KeyAction to (oBtnOk(Self))















        //AB-StoreEnd

    End_Object    // oProperties


    //AB-StoreStart

    //AB-StoreEnd

//AB/     End_Object    // prj
