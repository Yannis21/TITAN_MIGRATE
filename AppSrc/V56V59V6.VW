//AB/ Project V56V59V60:ANALKATH2
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V56V59V60:ANALKATH2"
//AB/         Set ProjectFileName to "V56v59v6.vw"

// Project Object Structure
//   V56V59V60 is a dbViewSubS
//     oRecArrayMhnes is a Set
//     oYpolArrayMhnes is a Array
//     oRecArrayHmnies is a Set
//     oYpolArrayHmnies is a Array
//     Gplan_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Syscurgl_DD is a DataDictionary
//     Garticl_DD is a DataDictionary
//     Gmove_DD is a DataDictionary
//     Gmhnes_DD is a DataDictionary
//     Ghmnies_DD is a DataDictionary
//     Gplan_Gplan_Code is a dbFormSub
//     Gplan_Gplan_Descr1 is a dbFormSub
//     cbDefiniteRec is a CheckBoxSub
//     dbTDAnalkath is a dbTabDialogSubS
//       TP_dbTPMhnes is a dbTabPageSubS
//         mhnes_ is a dbGridSub
//       TP_dbTPHmnies is a dbTabPageSubS
//         Ghmnies_ is a dbGridSub
//         frmSynXreMhnes is a FormSub
//         frmSYnPistMhnes is a FormSub
//         frmSYnYpolMhnes is a FormSub
//       TP_dbTPMove is a dbTabPageSubS
//         Gtypkin_ is a dbGridSub
//         oGmove_bn is a ButtonSub
//     oLocal_bn is a ButtonSub
//     oForeign_bn is a ButtonSub
//     oReport_Bn is a ButtonSub
//     txtGplanCode is a TextBoxSub
//     txtGplanDescr is a TextBoxSub
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       txtCompany is a TextBoxSub
//       txtBranch is a TextBoxSub
//       txtYear is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object cbDefiniteRec
Register_Object dbGrpYear
Register_Object dbTDAnalkath
Register_Object frmSYnPistMhnes
Register_Object frmSYnYpolMhnes
Register_Object frmSynXreMhnes
Register_Object Garticl_DD
Register_Object Ghmnies_
Register_Object Ghmnies_DD
Register_Object Gmhnes_DD
Register_Object Gmove_DD
Register_Object Gplan_DD
Register_Object Gplan_Gplan_Code
Register_Object Gplan_Gplan_Descr1
Register_Object Gthhmgio_DD
Register_Object Gtypkin_
Register_Object Gtypkin_DD
Register_Object mhnes_
Register_Object oForeign_bn
Register_Object oGmove_bn
Register_Object oLocal_bn
Register_Object oRecArrayHmnies
Register_Object oRecArrayMhnes
Register_Object oReport_Bn
Register_Object oYpolArrayHmnies
Register_Object oYpolArrayMhnes
Register_Object Syscurgl_DD
Register_Object TP_dbTPHmnies
Register_Object TP_dbTPMhnes
Register_Object TP_dbTPMove
Register_Object txtBranch
Register_Object txtCompany
Register_Object txtGplanCode
Register_Object txtGplanDescr
Register_Object txtYear
Register_Object V56V59V60
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                                
    Use Gmoves.vw
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Chkbox.Sub
    Use dbTabDlgS.Sub
    Use dbGrid.Sub
    Use Form.Sub
    Use Button.Sub
    Use Txtbox.Sub
    Use dbGroup.Sub

    Use GPLAN.DD
    Use GTHHMGIO.DD
    Use GTYPKIN.DD
    Use SysCurGL.dd
    Use GARTICL.DD
    Use GMOVE.DD
    Use GMHNES.DD
    Use GHMNIES.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V56V59V60 FOR V56V59V60

    Object V56V59V60 is a dbViewSubS

        //AB-StoreTopStart
        Property Integer piMhnesObjectId 0
        Property Integer piGhmniesObjectId 0
        Property Integer piGtypkinObjectId 0
        Property Integer pifrmSynYpolMhnesObjectId 0
        Property Integer pifrmSynXreMhnesObjectId 0
        Property Integer pifrmSynPistMhnesObjectId 0
        
        Property Integer piCurrCode 1
        
        Property Integer piSelectedMhnas 0
        Property Integer piSelectedYear 0
        
        Property Date   pdSelectedDAte ""
        Property String psSelectedGplanCode ""
        
        
        Property Number pnProYpolBook_Iso 0
        Property Number pnProYpolEuro_Iso 0
        Property Number pnProYpolRepo_Iso 0
        Property Number pnProYpolTH_Iso   0
        
        Property Number pnProYpolBook_IsoHmnies 0
        Property Number pnProYpolEuro_IsoHmnies 0
        Property Number pnProYpolRepo_IsoHmnies 0
        Property Number pnProYpolTH_IsoHmnies   0
        
        Property Integer piChkTheorimenoVW 0
        
        ////////////////////////////////////////////////////////////////////////////
        
        Property Number  pnGeneralYpolMhnes   0
        Property Number  pnSynXreMhnes        0
        Property Number  pnSynPistMhnes       0
        Property Number  pnGeneralYpolHmnies  0
        Property Number  pnSynXreHmnies       0
        Property Number  pnSynPistHmnies      0
        Property Integer piLastRecMhnes       0
        Property Integer piLastRecHmnies      0
        Property Integer piCalcYpolMhnesFinished  False
        Property Integer piCalcYpolHmniesFinished False
        
        Object oRecArrayMhnes is a Set
        End_Object // oRecArrayMhnes
        
        Object oYpolArrayMhnes is an Array
        End_Object // oYpolArrayMhnes
        
        Object oRecArrayHmnies is a Set
        End_Object // oRecArrayHmnies
        
        Object oYpolArrayHmnies is an Array
        End_Object // oYpolArrayHmnies
        
        Function fsgtypkin integer igtypkin returns string
            string sdescr
            clear gtypkin
            move igtypkin      to gtypkin.gtypkin_code
            find eq gtypkin by index.1
            if (found) move gtypkin.gtypkin_descr to sdescr
            else       move '' to sdescr
            Function_Return sdescr
        End_function
        
        //AB-StoreTopEnd

        Set Label to "à©¶ùÁö†¶ ãû§È§"
        Set Size to 278 515
        Set Location to 4 5

        //AB-DDOStart

        Object Gplan_DD is a Gplan_DataDictionary

            //AB-StoreStart
            //Set Ordering to 1
            
            Set Field_Exit_msg Field Gplan.Gplan_Code  To None
            
            Function Validate_Save Returns Integer
                Function_Return 1
            End_Function // Validate_Save
            
            Function Validate_Delete Returns Integer
                Function_Return 1
            End_Function // Validate_Delete
            
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Gplan_DD

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary

            //AB-StoreStart
            Set Ordering to 1
            
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Gthhmgio_DD

        Object Gtypkin_DD is a Gtypkin_DataDictionary
            Set DDO_Server to (Gthhmgio_DD(self))

            //AB-StoreStart
            Set Ordering to 1
            
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Gtypkin_DD

        Object Syscurgl_DD is a SysCurGL_DataDictionary
        End_Object    // Syscurgl_DD

        Object Garticl_DD is a Garticl_DataDictionary
            Set DDO_Server to (Gtypkin_DD(self))

            //AB-StoreStart
            Set Ordering to 1
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Garticl_DD

        Object Gmove_DD is a Gmove_DataDictionary
            Set DDO_Server to (Garticl_DD(self))
            Set DDO_Server to (Gplan_DD(self))
            Set Constrain_File to Gplan.File_Number

            //AB-StoreStart
            Set Ordering to 4
            
            //Procedure OnConstrain
            //    Date ldSelectedDate
            //    Integer liTheorimeno
            //    Get pdSelectedDate    to ldSelectedDate
            //    Get piChkTheorimenoVW to liTheorimeno
            //    Constrain Gmove Relates to Gplan
            //    If (ldSelectedDate <> "" )  Constrain Gmove.Garticl_Hmnia   eq ldSelectedDate
            //    If (liTheorimeno)           Constrain Gmove.Gmove_AA        gt 0
            //End_Procedure // OnConstrain
            
            Procedure Constrain ///OnConstrain
                Date ldSelectedDate
                Integer liTheorimeno
                Get pdSelectedDate    to ldSelectedDate
                Get piChkTheorimenoVW to liTheorimeno
                Constrain Gmove Relates to Gplan
                If (ldSelectedDate <> "" )  Constrain Gmove.Garticl_Hmnia   eq ldSelectedDate
                If (liTheorimeno)           Constrain Gmove.Gmove_AA        gt 0
            End_Procedure   // OnConstrain
            
            
            Function Validate_Save Returns Integer
                Function_Return 1
            End_Function // Validate_Save
            
            Function Validate_Delete Returns Integer
                Function_Return 1
            End_Function // Validate_Delete
            
            Set Read_Only_State to True
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Gmove_DD

        Object Gmhnes_DD is a Gmhnes_DataDictionary
            Set DDO_Server to (Gplan_DD(self))
            Set Constrain_File to Gplan.File_Number

            //AB-StoreStart
            Set Ordering to 3
            
            Function Validate_Save Returns Integer
                Function_Return 1
            End_Function // Validate_Save
            
            Function Validate_Delete Returns Integer
                Function_Return 1
            End_Function // Validate_Delete
            
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Gmhnes_DD

        Object Ghmnies_DD is a Ghmnies_DataDictionary
            Set DDO_Server to (Gmhnes_DD(self))
            Set Constrain_File to Gmhnes.File_Number

            //AB-StoreStart
            Set Ordering to 3
            
            Function Validate_Save Returns Integer
                Function_Return 1
            End_Function // Validate_Save
            
            Function Validate_Delete Returns Integer
                Function_Return 1
            End_Function // Validate_Delete
            
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Ghmnies_DD

        Set Main_DD to (Gplan_DD(self))
        Set Server to (Gplan_DD(self))

        //AB-DDOEnd

        Object Gplan_Gplan_Code is a dbFormSub
            Entry_Item Gplan.Gplan_code
            Set Size to 13 126
            Set Location to 30 81
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                        
            Procedure Prompt
                Forward Send Prompt
                Send ReCalculate_Values
            End_Procedure // Prompt
            
            Procedure Find_Ge
                Forward Send Find_Ge
                Send ReCalculate_Values
            End_Procedure // Find_Ge
            
            Procedure Find_Next
                Forward Send Find_Next
                Send ReCalculate_Values
            End_Procedure // Find_Ge
            
            Procedure Find_Previous
                Forward Send Find_Previous
                Send ReCalculate_Values
            End_Procedure // Find_Ge
            
            Procedure entry_autofind integer find_mode
                Forward Send entry_autofind find_mode
                Send ReCalculate_Values
            End_Procedure // entry_autofind
            
            On_Key kCancel Send Request_Cancel to V56V59V60
            
            
            //AB-StoreEnd

        End_Object    // Gplan_Gplan_Code

        Object Gplan_Gplan_Descr1 is a dbFormSub
            Entry_Item Gplan.Gplan_descr1
            Set Size to 13 233
            Set Location to 44 81
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                        
            Procedure Prompt
                Forward Send Prompt
                Send ReCalculate_Values
            End_Procedure // Prompt
            
            Procedure Find_Ge
                Forward Send Find_Ge
                Send ReCalculate_Values
            End_Procedure // Find_Ge
            
            Procedure Find_Next
                Forward Send Find_Next
                Send ReCalculate_Values
            End_Procedure // Find_Ge
            
            Procedure Find_Previous
                Forward Send Find_Previous
                Send ReCalculate_Values
            End_Procedure // Find_Ge
            
            Procedure entry_autofind integer find_mode
                Forward Send entry_autofind find_mode
                Send ReCalculate_Values
            End_Procedure // entry_autofind
            
            On_Key kCancel Send Request_Cancel to V56V59V60
            
            
            
            //AB-StoreEnd

        End_Object    // Gplan_Gplan_Descr1

        Object cbDefiniteRec is a CheckBoxSub
            Set Label to "é®†©´†°¶ß¶†û£‚§ú™ Ñöö®ò≠‚™"
            Set Size to 10 113
            Set Location to 48 353
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                        
            Procedure onChange0
                 Integer listate
                 Integer liD_Code0
                 String lsC_Code0
            
                 Get checked_state to liState
            
                 If (liState = 1) Begin
                     Set Enabled_State of (oForeign_bn(Self)) to False
                     Set Enabled_State of (oReport_Bn(Self)) to False
            
                     Set piChkTheorimenoVW to 1
                     Set piCurrCode to 1
            
                     Send ReCalculate_Values
            
                     Get Field_Current_Value of Year_DD Field Year.Year_C_Code0 to lsC_Code0
            //                 Move (CurrDigits(lsC_Code0)) to liD_Code0
                     Move 2 to liD_Code0
                     Set Numeric_Mask of (pifrmSynYpolMhnesObjectId(Self)) item 0 to 14 liD_Code0 ", *"
                     Set Numeric_Mask of (pifrmSynXreMhnesObjectId(Self))  item 0 to 14 liD_Code0 ", *"
                     Set Numeric_Mask of (pifrmSynPistMhnesObjectId(Self)) item 0 to 14 liD_Code0 ", *"
            
                     set visible_state of (piMhnesObjectId(Self)) to False
            
                     Send Mask_DbCells to (piMhnesObjectId(Self)) 11 13 liD_Code0
            
                     Set Form_width of (piMhnesObjectId(Self)) item 11 to 81
                     Set Form_width of (piMhnesObjectId(Self)) item 12 to 81
                     Set Form_width of (piMhnesObjectId(Self)) item 13 to 84
            
                     Send Resize_DbCells to (piMhnesObjectId(Self)) 2 4
                     Send Resize_DbCells to (piMhnesObjectId(Self)) 5 7
                     Send Resize_DbCells to (piMhnesObjectId(Self)) 8 10
            
                     set visible_state of (piMhnesObjectId(Self)) to True
            
            
                     ///////////////////////////////////////////////////// 2nd Page
                     set visible_state of (piGhmniesObjectId(Self)) to False
            
                     Send Mask_DbCells to (piGhmniesObjectId(Self)) 10 12 liD_Code0
            
                     Set Form_width of (piGhmniesObjectId(Self)) item 10 to 81
                     Set Form_width of (piGhmniesObjectId(Self)) item 11 to 81
                     Set Form_width of (piGhmniesObjectId(Self)) item 12 to 84
            
                     Send Resize_DbCells to (piGhmniesObjectId(Self)) 1 3
                     Send Resize_DbCells to (piGhmniesObjectId(Self)) 4 6
                     Send Resize_DbCells to (piGhmniesObjectId(Self)) 7 9
            
                     set visible_state of (piGhmniesObjectId(Self)) to True
                 end
                 Else begin
                     Set Enabled_State of (oForeign_bn(Self)) to True
                     Set Enabled_State of (oReport_Bn(Self)) to True
                     Set piChkTheorimenoVW to 0
                     Send SetLocalCur
                 end
            
            End_Procedure // onChange
            
            Set Visible_State to False
            On_Key kCancel Send Request_Cancel to V56V59V60
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // cbDefiniteRec

        Object dbTDAnalkath is a dbTabDialogSubS
            Set Size to 198 505
            Set Location to 63 3
            Set Rotate_Mode to RM_Rotate
            Object TP_dbTPMhnes is a dbTabPageSubS
                Set Label to "dbTPMhnes"
                Object mhnes_ is a dbGridSub

                    //AB-StoreTopStart
                    Function Show_Ypol_Mhnes Integer iRec Returns Number
                        Number liItem
                        Get Find_Element of oRecArrayMhnes iRec to liItem
                        Function_Return (value(oYpolArrayMhnes(Self),liItem))
                    End_Function // Show_Ypol_Mhnes
                    
                    //AB-StoreTopEnd

                    Set Main_File to Gmhnes.File_Number
                    Set Server to (Gmhnes_DD(self))
                    Set Ordering to 3
                    Set Size to 154 318
                    Set Location to 22 7
                    Set CurrentRowColor to 11468799
                    Set Resize_Column_State to FALSE
                    Set Wrap_State to TRUE
                    Set Allow_Bottom_Add_State to FALSE
                    Set Child_Table_State to FALSE
                    Set Read_Only_State to TRUE
                    Set Scroll_Bar_Visible_State to FALSE

                    Begin_Row
                        Entry_Item Gmhnes.Gmhnes_yyyy
                        Entry_Item Gmhnes.Gmhnes_period
                        Entry_Item Gmhnes.Gmhnes_sx2
                        Entry_Item Gmhnes.Gmhnes_sp2
                        Entry_Item (Show_Ypol_Mhnes(Self,Gmhnes.Recnum))
                        Entry_Item Gmhnes.Gmhnes_sx00
                        Entry_Item Gmhnes.Gmhnes_sp00
                        Entry_Item ("")
                        Entry_Item Gmhnes.Gmhnes_sxr
                        Entry_Item Gmhnes.Gmhnes_spr
                        Entry_Item ("")
                        Entry_Item Gmhnes.Gmhnes_sx1
                        Entry_Item Gmhnes.Gmhnes_sp1
                        Entry_Item ("")
                    End_Row

                    Set Form_Width    item 0 to 27
                    Set Header_Label  item 0 to "Ñ´¶™"
                    
                    Set Form_Width    item 1 to 48
                    Set Header_Label  item 1 to "ã„§ò™"
                    
                    Set Form_Width    item 2 to 81
                    Set Header_Label  item 2 to "ï®‚‡©û"
                    
                    Set Form_Width    item 3 to 81
                    Set Header_Label  item 3 to "èÂ©´‡©û"
                    
                    Set Form_Width    item 4 to 85
                    Set Header_Label  item 4 to "ìßÊ¢¶†ß¶"
                    
                    Set Form_Width    item 5 to 81
                    Set Header_Label  item 5 to "ï®‚‡©û (Ñ)"
                    
                    Set Form_Width    item 6 to 81
                    Set Header_Label  item 6 to "èÂ©´‡©û (E)"
                    
                    Set Form_Width    item 7 to 84
                    Set Header_Label  item 7 to "ìßÊ¢¶†ß¶"
                    
                    Set Form_Width    item 8 to 81
                    Set Header_Label  item 8 to "ï®‚‡©û (R)"
                    
                    Set Form_Width    item 9 to 81
                    Set Header_Label  item 9 to "èÂ©´‡©û (R)"
                    
                    Set Form_Width    item 10 to 84
                    Set Header_Label  item 10 to "ìßÊ¢¶†ß¶"
                    
                    Set Form_Width    item 11 to 132
                    Set Header_Label  item 11 to "ï®‚‡©û*"
                    
                    Set Form_Width    item 12 to 132
                    Set Header_Label  item 12 to "èÂ©´‡©û*"
                    
                    Set Form_Width    item 13 to 84
                    Set Header_Label  item 13 to "ìßÊ¢¶†ß¶"
                    

                    //AB-StoreStart
                                                                                                                                                                                                                                                                
                    Set piMhnesObjectId of V56V59V60 to Self
                    
                    Procedure Set ItemFormMask Integer aiNum String aiMask
                        Integer liD_Code0
                        String  lsC_Code0
                    
                        Move SyscurGL.C_Code0 to lsC_Code0
                        Move 2 to liD_Code0 //(CurrDigits(lsC_Code0)) to liD_Code0
                        //Set Form_Mask Item 2 to aiMask
                        Set Points    Item 2 to liD_Code0
                        //Set Form_Mask Item 3 to aiMask
                        Set Points    Item 3 to liD_Code0
                        //Set Form_Mask Item 4 to aiMask
                        Set Points    Item 4 to liD_Code0
                    End_Procedure // ItemFormMask
                    
                    Set ItemFormMask to 14  ",*"
                    
                    Procedure Mask_DbCells Integer FromCol Integer ToCol Integer aiDigitsG
                       Integer liCounter6
                    
                       For liCounter6 From  FromCol to ToCol
                            //Set Form_Mask Item liCounter6 to ",*"
                            Set Points    Item liCounter6 to aiDigitsG
                       Loop
                    End_Procedure // Mask_DbCells
                    
                    
                    Procedure Resize_DbCells Integer FromCol Integer ToCol
                       Integer Counter5
                    
                       For Counter5 From  FromCol to ToCol
                           Set Form_Width    item Counter5 to 0
                       Loop
                    End_Procedure // Resize_DbCells
                    
                    //***************** Predefined Procedures and Functions Section **************
                    
                    //Not used
                    //procedure scroll integer direction integer lines
                    //    If (direction = downward_direction) Begin
                    //        If (lines = 1) Send Refresh_Ypol_Mhnes_For_Next_Line
                    //        Else Send Refresh_Ypol_Mhnes_For_Next_Block
                    //    End
                    //    Forward Send scroll direction lines
                    //end_procedure // scroll
                    
                    //Not used
                    //Procedure End_Of_Data
                    //    If (piCalcYpolMhnesFinished(Self)) Forward Send End_Of_Data
                    //End_Procedure // End_Of_Data
                    
                    //Not used
                    //Procedure Down_Row
                    //    If (Current_Row(Self) = (Displayable_Rows(Self)-1)) Send scroll downward_direction 1
                    //    Else Forward Send Down_Row
                    //End_Procedure // Down_Row
                    
                    Procedure Request_Clear_All
                        //Delegate Send Request_Clear_All
                    End_Procedure // Request_Clear_All
                    
                    Procedure Request_Cancel
                        Send Switch_prior_area
                        Send Top_Of_Panel to V56V59V60
                    End_Procedure // Request_Cancel
                    
                    On_Key kEnter      Send Down_Row Private
                    On_Key kNext_item  Send Down_Row Private
                    
                    set column_shadow_state item 1 to true
                    set column_shadow_state item 2 to true
                    set column_shadow_state item 3 to true
                    set column_shadow_state item 4 to true
                    set column_shadow_state item 5 to true
                    set column_shadow_state item 6 to true
                    set column_shadow_state item 7 to true
                    set column_shadow_state item 8 to true
                    set column_shadow_state item 9 to true
                    set column_shadow_state item 10 to true
                    set column_shadow_state item 11 to true
                    set column_shadow_state item 12 to true
                    set column_shadow_state item 13 to true
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // mhnes_


                //AB-StoreStart
                Set Label to "ã„§ú™"
                
                
                //AB-StoreEnd

            End_Object    // TP_dbTPMhnes

            Object TP_dbTPHmnies is a dbTabPageSubS
                Set Label to "dbTPHmnies"
                Object Ghmnies_ is a dbGridSub

                    //AB-StoreTopStart
                    Function Show_Ypol_Hmnies Integer iRec Returns Number
                        Number liItem
                        Get Find_Element of oRecArrayHmnies iRec to liItem
                        Function_Return (value(oYpolArrayHmnies(Self),liItem))
                    End_Function // Show_Ypol_Hmnies
                    
                    //AB-StoreTopEnd

                    Set Main_File to Ghmnies.File_Number
                    Set Server to (Ghmnies_DD(self))
                    Set Ordering to 3
                    Set Size to 153 318
                    Set Location to 22 7
                    Set CurrentRowColor to 11468799
                    Set Resize_Column_State to FALSE
                    Set Wrap_State to TRUE
                    Set Allow_Bottom_Add_State to FALSE
                    Set Read_Only_State to TRUE
                    Set Scroll_Bar_Visible_State to FALSE

                    Begin_Row
                        Entry_Item Ghmnies.Ghmnies_hmnia
                        Entry_Item Ghmnies.Ghmnies_sx2
                        Entry_Item Ghmnies.Ghmnies_sp2
                        Entry_Item (Show_Ypol_Hmnies(Self,Ghmnies.Recnum))
                        Entry_Item Ghmnies.Ghmnies_sx00
                        Entry_Item Ghmnies.Ghmnies_sp00
                        Entry_Item ("")
                        Entry_Item Ghmnies.Ghmnies_sxr
                        Entry_Item Ghmnies.Ghmnies_spr
                        Entry_Item ("")
                        Entry_Item Ghmnies.Ghmnies_sx1
                        Entry_Item Ghmnies.Ghmnies_sp1
                        Entry_Item ("")
                    End_Row

                    Set Form_Width    item 0 to 75
                    Set Header_Label  item 0 to "Ü£ú®¶£û§Âò"
                    
                    Set Form_Width    item 1 to 81
                    Set Header_Label  item 1 to "ï®‚‡©û"
                    
                    Set Form_Width    item 2 to 81
                    Set Header_Label  item 2 to "èÂ©´‡©û"
                    
                    Set Form_Width    item 3 to 84
                    Set Header_Label  item 3 to "ìßÊ¢¶†ß¶"
                    
                    Set Form_Width    item 4 to 81
                    Set Header_Label  item 4 to "ï®‚‡©û (Ñ)"
                    
                    Set Form_Width    item 5 to 81
                    Set Header_Label  item 5 to "èÂ©´‡©û (E)"
                    
                    Set Form_Width    item 6 to 84
                    Set Header_Label  item 6 to "ìßÊ¢¶†ß¶"
                    
                    Set Form_Width    item 7 to 81
                    Set Header_Label  item 7 to "ï®‚‡©û (R)"
                    
                    Set Form_Width    item 8 to 81
                    Set Header_Label  item 8 to "èÂ©´‡©û (R)"
                    
                    Set Form_Width    item 9 to 84
                    Set Header_Label  item 9 to "ìßÊ¢¶†ß¶"
                    
                    Set Form_Width    item 10 to 132
                    Set Header_Label  item 10 to "ï®‚‡©û*"
                    
                    Set Form_Width    item 11 to 132
                    Set Header_Label  item 11 to "èÂ©´‡©û*"
                    
                    Set Form_Width    item 12 to 84
                    Set Header_Label  item 12 to "ìßÊ¢¶†ß¶"
                    

                    //AB-StoreStart
                                                                                                                                                                                                                                                                
                    Set piGhmniesObjectId of V56V59V60 to Self
                    
                    Procedure Set ItemFormMask Integer aiNum String aiMask
                        Integer liD_Code0
                        String  lsC_Code0
                    
                        Move SyscurGL.C_Code0 to lsC_Code0
                        Move 2 to liD_Code0 //(CurrDigits(lsC_Code0)) to liD_Code0
                        //Set Form_Mask Item 2 to aiMask
                        Set Points    Item 2 to liD_Code0
                        //Set Form_Mask Item 3 to aiMask
                        Set Points    Item 3 to liD_Code0
                        //Set Form_Mask Item 4 to aiMask
                        Set Points    Item 4 to liD_Code0
                    End_Procedure // ItemFormMask
                    
                    Set ItemFormMask to 14  ",*"
                    
                    Procedure Mask_DbCells Integer FromCol Integer ToCol Integer aiDigitsG
                       Integer liCounter6
                    
                       For liCounter6 From  FromCol to ToCol
                            //Set Form_Mask Item liCounter6 to ",*"
                            Set Points    Item liCounter6 to aiDigitsG
                       Loop
                    End_Procedure // Mask_DbCells
                    
                    
                    Procedure Resize_DbCells Integer FromCol Integer ToCol
                       Integer Counter5
                    
                       For Counter5 From  FromCol to ToCol
                           Set Form_Width    item Counter5 to 0
                       Loop
                    End_Procedure // Resize_DbCells
                    
                    //***************** Predefined Procedures and Functions Section **************
                    
                    Procedure Request_Clear_All
                        //Delegate Send Request_Clear_All
                    End_Procedure // Request_Clear_All
                    
                    Procedure Request_Cancel
                        Send Switch_prior_area
                        Send Top_Of_Panel to V56V59V60
                    End_Procedure // Request_Cancel
                    
                    On_Key kEnter      Send Down_Row Private
                    On_Key kNext_item  Send Down_Row Private
                    
                    set column_shadow_state item 1 to true
                    set column_shadow_state item 2 to true
                    set column_shadow_state item 3 to true
                    set column_shadow_state item 4 to true
                    set column_shadow_state item 5 to true
                    set column_shadow_state item 6 to true
                    set column_shadow_state item 7 to true
                    set column_shadow_state item 8 to true
                    set column_shadow_state item 9 to true
                    set column_shadow_state item 10 to true
                    set column_shadow_state item 11 to true
                    set column_shadow_state item 12 to true
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Ghmnies_

                Object frmSynXreMhnes is a FormSub
                    Set Size to 13 80
                    Set Location to 8 81
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_Datatype Item 0 to Mask_Numeric_Window
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                                                                                                                                
                    Set pifrmSynXreMhnesObjectId of V56V59V60 to Self
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // frmSynXreMhnes

                Object frmSYnPistMhnes is a FormSub
                    Set Size to 13 80
                    Set Location to 8 161
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_Datatype Item 0 to Mask_Numeric_Window
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                                                                                                                                
                    Set pifrmSynPistMhnesObjectId of V56V59V60 to Self
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // frmSYnPistMhnes

                Object frmSYnYpolMhnes is a FormSub
                    Set Size to 13 84
                    Set Location to 8 241
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_Datatype Item 0 to Mask_Numeric_Window
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                                                                                                                                
                    Set pifrmSynYpolMhnesObjectId of V56V59V60 to Self
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // frmSYnYpolMhnes


                //AB-StoreStart
                Set Label to "Ü£ú®¶£û§Âú™"
                
                //AB-StoreEnd

            End_Object    // TP_dbTPHmnies

            Object TP_dbTPMove is a dbTabPageSubS
                Set Label to "dbTPMove"
                Object Gtypkin_ is a dbGridSub
                    Set Main_File to Gmove.File_Number
                    Set Server to (Gmove_DD(self))
                    Set Ordering to 4
                    Set Size to 159 492
                    Set Location to 4 5
                    Set CurrentRowColor to 11468799
                    Set CurrentCellColor to 11468799
                    Set Wrap_State to TRUE
                    Set Allow_Bottom_Add_State to FALSE
                    Set Read_Only_State to TRUE

                    Begin_Row
                        Entry_Item Gmove.Garticl_hmnia
                        Entry_Item Gplan.Gplan_code
                        Entry_Item Gmove.Gtypkin_code
                        Entry_Item (fsgtypkin(self,gmove.gtypkin_code))
                        Entry_Item Gmove.Gmove_aitiol
                        Entry_Item Gmove.Gmove_x2
                        Entry_Item Gmove.Gmove_p2
                    End_Row

                    Set Form_Width    item 0 to 61
                    Set Header_Label  item 0 to "Ü£/§Âò Ä®ü®¶¨"
                    
                    Set Form_Width    item 1 to 65
                    Set Header_Label  item 1 to "â‡õ†°Ê™ ä.ë"
                    
                    Set Form_Width    item 2 to 41
                    Set Header_Label  item 2 to "èò®ò©´."
                    
                    Set Form_Width    item 3 to 59
                    Set Header_Label  item 3 to "èú®†ö®ò≠„"
                    
                    Set Form_Width    item 4 to 123
                    Set Header_Label  item 4 to "Ä†´†¶¢¶öÂò"
                    
                    Set Form_Width    item 5 to 69
                    Set Header_Label  item 5 to "ï®‚‡©û"
                    
                    Set Form_Width    item 6 to 68
                    Set Header_Label  item 6 to "èÂ©´‡©û"
                    

                    //AB-StoreStart
                                                            
                    Procedure Set ItemFormMask String aiMask
                        Integer liD_Code00
                        String  lsC_Code00
                    
                        Move SyscurGL.C_Code00 to lsC_Code00
                        Move 2 to liD_Code00  //(CurrDigits(lsC_Code00)) to liD_Code00
                        //Set Form_Mask Item 5 to aiMask
                        Set Points    Item 5 to liD_Code00
                        //Set Form_Mask Item 6 to aiMask
                        Set Points    Item 6 to liD_Code00
                    End_Procedure // ItemFormMask
                    
                    Set ItemFormMask to ",*"
                    
                    Set piGtypkinObjectId of V56V59V60 to Self
                    
                    //***************** Predefined Procedures and Functions Section **************
                    
                    Procedure Request_Clear_All
                        //Delegate Send Request_Clear_All
                    End_Procedure // Request_Clear_All
                    
                    Procedure Request_Cancel
                        Send Switch_prior_area
                        Send Top_Of_Panel to V56V59V60
                    End_Procedure // Request_Cancel
                    
                    Set Column_Shadow_State Item 1 to True
                    Set Column_Option Item 2 to NoEnter True
                    Set Column_Shadow_State Item 3 to True
                    Set Column_Shadow_State Item 4 to True
                    Set Column_Shadow_State Item 5 to True
                    Set Column_Shadow_State Item 6 to True
                    
                    
                    procedure item_change integer fromi integer toi returns integer
                        local integer rval icol iBase_item iGridID iCurrItem ival
                        Local String Sdescr
                        Move (GTYPKIN_(tp_dbtpmove(dbtdanalkath(self)))) to iGridID
                        forward get msg_item_change fromi toi to rval
                      //  if (focus(Desktop) = iGridID) begin
                      //      Get Column fromi to iCol
                      //      if (icol=0) begin
                      //          Get Base_Item to iBase_item
                      //          Get Value Item (iBase_item+2) to ival
                      //          Move (Fsgtypkin(self,ival))   to Sdescr
                      //          Set value item (iBase_item+3) to sdescr
                      //      End
                      //  end
                        procedure_return rval
                    end_procedure
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Gtypkin_

                Object oGmove_bn is a ButtonSub
                    Set Label to "Ñ£≠·§†©û Ä®ü®¶¨"
                    Set Size to 14 496
                    Set Location to 167 2
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                
                    Procedure OnClick
                         string srecr
                         get field_current_value of gmove_dd field gmove.garticl_recr to srecr
                         set psrecr of (gmove_view(self)) to srecr
                         Send Activate_Gmove_View To (Client_Area(current_object))
                    End_Procedure // OnClick
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // oGmove_bn


                //AB-StoreStart
                                                                                                                                                                                                            
                Set Label to "Ñöö®ò≠‚™ - Ä®ü®ò"
                
                //AB-StoreEnd

            End_Object    // TP_dbTPMove


            //AB-StoreStart
                                                                                                                                                        
            Function tab_change integer pageNumber integer focus_mode returns integer
                Integer rval
            
                If (Focus_Mode = 1) Begin
                    Case Begin
                        Case (pagenumber = 0)
                            Case Break
                        Case (pagenumber = 1)
                            Send Refresh_Ypol_Hmnies
                            Send Beginning_Of_Data to (piGhmniesObjectId(Self)) True
                            Case Break
                        Case (pagenumber = 2)
                            Send Refresh_Gmoves
                            Case Break
                    Case End
                End
            
                //spy 16/02/2000 For future use
                //Set Enabled_State of oLocal_bn     to (pagenumber <> 2)
                //Set Enabled_State of oForeign_bn   to (pagenumber <> 2)
                //Set Enabled_State of oReport_bn    to (pagenumber <> 2)
                //Set Enabled_State of cbDefinateRec to (pagenumber <> 2)
            
                Forward get tab_change pageNumber focus_mode to rval
                Function_Return rval
            End_Function // tab_change
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // dbTDAnalkath

        Object oLocal_bn is a ButtonSub
            Set Label to "0"
            Set Size to 15 49
            Set Location to 29 352
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                        
            Procedure OnClick
                Send SetLocalCur
            end_Procedure // OnClick
            
            Set TooltipValue to "Äßú†°Ê§†©û ©ú °Á®†¶ åÊ£†©£ò"
            
            Set Visible_State to False
            
            
            //AB-StoreEnd

        End_Object    // oLocal_bn

        Object oForeign_bn is a ButtonSub

            //AB-StoreTopStart
                                                                                                                                                        
            //AB-StoreTopEnd

            Set Label to "00"
            Set Size to 15 49
            Set Location to 29 405
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                        
            Procedure OnClick
                String lsC_Code00
                Integer liD_Code00
            
                Set piCurrCode to 2
            
                Send ReCalculate_Values
            
                Get Field_Current_Value of Year_DD Field Year.Year_C_Code00  to lsC_Code00
                Move 2 to liD_Code00   //(CurrDigits(lsC_Code00)) to liD_Code00
                Set Numeric_Mask of (pifrmSynYpolMhnesObjectId(Self)) item 0 to 14 liD_Code00 ", *"
                Set Numeric_Mask of (pifrmSynXreMhnesObjectId(Self))  item 0 to 14 liD_Code00 ", *"
                Set Numeric_Mask of (pifrmSynPistMhnesObjectId(Self)) item 0 to 14 liD_Code00 ", *"
            
                set visible_state of (piMhnesObjectId(Self)) to False
            
                Send Mask_DbCells to (piMhnesObjectId(Self)) 5 7 liD_Code00
            
                Set Form_width of (piMhnesObjectId(Self)) item 5 to 81
                Set Form_width of (piMhnesObjectId(Self)) item 6 to 81
                Set Form_width of (piMhnesObjectId(Self)) item 7 to 84
            
                Send Resize_DbCells to (piMhnesObjectId(Self)) 2 4
                Send Resize_DbCells to (piMhnesObjectId(Self)) 8 10
                Send Resize_DbCells to (piMhnesObjectId(Self)) 11 13
            
                set visible_state of (piMhnesObjectId(Self)) to True
            
                //////////////////////////////////////////////////2nd Page
                set visible_state of (piGhmniesObjectId(Self)) to False
            
                Send Mask_DbCells to (piGhmniesObjectId(Self)) 4 6 liD_Code00
            
                Set Form_width of (piGhmniesObjectId(Self)) item 4 to 81
                Set Form_width of (piGhmniesObjectId(Self)) item 5 to 81
                Set Form_width of (piGhmniesObjectId(Self)) item 6 to 84
            
                Send Resize_DbCells to (piGhmniesObjectId(Self)) 1 3
                Send Resize_DbCells to (piGhmniesObjectId(Self)) 7 9
                Send Resize_DbCells to (piGhmniesObjectId(Self)) 10 12
            
                set visible_state of (piGhmniesObjectId(Self)) to True
            end_Procedure // OnClick
            
            Set TooltipValue to "Äßú†°Ê§†©û ©ú õú¨´ú®úÁ¶§ åÊ£†©£ò"
            
            Set Visible_State to False
            
            
            
            //AB-StoreEnd

        End_Object    // oForeign_bn

        Object oReport_Bn is a ButtonSub

            //AB-StoreTopStart
                                                                                                                                                        
            //AB-StoreTopEnd

            Set Label to "R"
            Set Size to 15 49
            Set Location to 29 458
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                        
            Procedure OnClick
                Integer liD_CodeR
                String lsC_CodeR
            
                Set piCurrCode to 3
            
                Send ReCalculate_Values
            
                Get Field_Current_Value of Year_DD Field Year.Year_C_CodeR to lsC_CodeR
                Move 2 to liD_CodeR  //(CurrDigits(lsC_CodeR)) to liD_CodeR
                Set Numeric_Mask of (pifrmSynYpolMhnesObjectId(Self)) item 0 to 14 liD_CodeR ", *"
                Set Numeric_Mask of (pifrmSynXreMhnesObjectId(Self))  item 0 to 14 liD_CodeR ", *"
                Set Numeric_Mask of (pifrmSynPistMhnesObjectId(Self)) item 0 to 14 liD_CodeR ", *"
            
                set visible_state of (piMhnesObjectId(Self)) to False
            
                Send Mask_DbCells to (piMhnesObjectId(Self)) 8 10 liD_CodeR
            
                Set Form_width of (piMhnesObjectId(Self)) item 8  to 81
                Set Form_width of (piMhnesObjectId(Self)) item 9  to 81
                Set Form_width of (piMhnesObjectId(Self)) item 10 to 84
            
                Send Resize_DbCells to (piMhnesObjectId(Self)) 2 4
                Send Resize_DbCells to (piMhnesObjectId(Self)) 5 7
                Send Resize_DbCells to (piMhnesObjectId(Self)) 11 13
            
                set visible_state of (piMhnesObjectId(Self)) to True
            /////////////////////////////////////////////////////
            
            
                set visible_state of (piGhmniesObjectId(Self)) to False
            
                Send Mask_DbCells to (piGhmniesObjectId(Self)) 7 9 liD_CodeR
            
                Set Form_width of (piGhmniesObjectId(Self)) item 7  to 81
                Set Form_width of (piGhmniesObjectId(Self)) item 8  to 81
                Set Form_width of (piGhmniesObjectId(Self)) item 9  to 84
            
                Send Resize_DbCells to (piGhmniesObjectId(Self)) 1 3
                Send Resize_DbCells to (piGhmniesObjectId(Self)) 4 6
                Send Resize_DbCells to (piGhmniesObjectId(Self)) 10 12
            
                set visible_state of (piGhmniesObjectId(Self)) to True
            end_Procedure // OnClick
            
            Set TooltipValue to "Äßú†°Ê§†©û åÊ£†©£ò Reporting"
            
            Set Visible_State to False
            
            //AB-StoreEnd

        End_Object    // oReport_Bn

        Object txtGplanCode is a TextBoxSub
            Set Label to "ä¶öò®†ò©£Ê™:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 32 7
            Set Size to 10 68
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // txtGplanCode

        Object txtGplanDescr is a TextBoxSub
            Set Label to "èú®†ö®ò≠„:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 46 7
            Set Size to 10 68
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // txtGplanDescr

        Object dbGrpYear is a dbGroupSub
            Set Size to 26 506
            Set Location to 0 2
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurgl.Company_name
                Set Server to (Syscurgl_DD(self))
                Set Size to 13 126
                Set Location to 9 53
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurgl.Branch_name
                Set Server to (Syscurgl_DD(self))
                Set Size to 13 110
                Set Location to 9 261
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub
                Entry_Item Syscurgl.Year_year
                Set Server to (Syscurgl_DD(self))
                Set Size to 13 61
                Set Location to 8 440
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object txtCompany is a TextBoxSub
                Set Label to "Ñ´ò†®Âò:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 10
                Set Size to 10 32
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // txtCompany

            Object txtBranch is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 215
                Set Size to 10 36
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // txtBranch

            Object txtYear is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 403
                Set Size to 10 28
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // txtYear

        End_Object    // dbGrpYear


        //AB-StoreStart
                
        Procedure Refresh_Gmoves
            Date ldHmnia
            get Field_Current_Value of (GHmnies_DD(Self)) field Ghmnies.Ghmnies_Hmnia to ldHmnia
            Set pdSelectedDate to ldHmnia
            send rebuild_constraints to (Gmove_DD(Self))
            send beginning_of_data to (piGtypkinObjectId(Self))
        End_Procedure // ReFresh_Grids
        
        Procedure Init_Values_Mhnes
            Send Delete_Data to oRecArrayMhnes
            Send Delete_Data to oYpolArrayMhnes
        
            set pnProYpolBook_Iso to 0
            set pnProYpolEuro_Iso to 0
            set pnProYpolRepo_Iso to 0
            set pnProYpolTh_Iso   to 0
        
            Set pnGeneralYpolMhnes to 0
            Set pnSynXreMhnes      to 0
            Set pnSynPistMhnes     to 0
        
            Set piCalcYpolMhnesFinished to False
        End_Procedure // Init_Values_Mhnes
        
        Procedure Init_Values_Hmnies
            Send Delete_Data to oRecArrayHmnies
            Send Delete_Data to oYpolArrayHmnies
        
            set pnProYpolBook_IsoHmnies to 0
            set pnProYpolEuro_IsoHmnies to 0
            set pnProYpolRepo_IsoHmnies to 0
            set pnProYpolTh_IsoHmnies   to 0
        
            Set pdSelectedDate to 0
        
            Set pnGeneralYpolHmnies to 0
            Set pnSynXreHmnies      to 0
            Set pnSynPistHmnies     to 0
        
            Set piCalcYpolMhnesFinished to False
        
            Set Value of (pifrmSynYpolMhnesObjectId(Self)) item 0 to 0
            Set Value of (pifrmSynXreMhnesObjectId(Self))  item 0 to 0
            Set Value of (pifrmSynPistMhnesObjectId(Self)) item 0 to 0
        End_Procedure // Init_Values_Hmnies
        
        Procedure Init_Values
            Send Init_Values_Mhnes
            Send Init_Values_Hmnies
        End_Procedure // Init_Values
        
        //---------For Mhnes----------
        
        Procedure Refresh_Ypol_Mhnes
            Integer liCurrMode liMaxCount liCount
            String lsGplan_Code lsGplanRecr
            Number lnYpol lnSynXre lnSynPist
        
            Send Init_Values_Mhnes
        
            Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Recr to lsGplanRecr
            Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Code to lsGplan_Code
        
            get piCurrCode        to liCurrMode
        
            Get Displayable_Rows of (piMhnesObjectId(Self)) to liMaxCount
        
            Clear Gmhnes
            Move lsGplanRecr        to Gmhnes.Gplan_Recr
            Find gt Gmhnes by Index.3 //Gmhnes: Gplan_Recr - Gmhnes_YYYY - Gmhnes_Period
            While ((Found eq 1) and (Gmhnes.Gplan_Recr = lsGplanRecr ))
        
                Move (lnYpol+(Gmhnes.Gmhnes_sx2-Gmhnes.Gmhnes_sp2)) to lnYpol
                Move (lnSynXre+Gmhnes.Gmhnes_sx2)                   to lnSynXre
                Move (lnSynPist+Gmhnes.Gmhnes_sp2)                  to lnSynPist
                Send Add_Element to oRecArrayMhnes Gmhnes.Recnum
                Set array_value of oYpolArrayMhnes Item (item_Count(oYpolArrayMhnes(self))) to lnYpol
                Add 1 to liCount
        
                Set piLastRecMhnes to Gmhnes.Recnum
                //Not All
                //If (liCount = liMaxCount) Break
                Find gt Gmhnes by Index.3 //Gmhnes: Gplan_Recr - Gmhnes_YYYY - Gmhnes_Period
            Loop
        
            If (liCount < liMaxCount) Set piCalcYpolMhnesFinished to True
        
            Set pnGeneralYpolMhnes to lnYpol
            Set pnSynXreMhnes      to lnSynXre
            Set pnSynPistMhnes     to lnSynPist
            send beginning_of_data to (piMhnesObjectId(Self))
        End_Procedure // Refresh_Ypol_Mhnes
        
        //Not Used
        Procedure Refresh_Next_Ypol_Mhnes Integer aiLines
            Integer liMaxCount liCount liLastRec liLastYYYY liLastPeriod
            Number lnYpol lnSynXre lnSynPist
            String lsGplanRecr
        
            Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Recr to lsGplanRecr
        
            Get pnGeneralYpolMhnes to lnYpol
            Get pnSynXreMhnes      to lnSynXre
            Get pnSynPistMhnes     to lnSynPist
        
            Move aiLines to liMaxCount
        
            Get piLastRecMhnes to liLastRec
            Clear Gmhnes
            Move liLastRec to Gmhnes.Recnum
            Find eq Gmhnes by Recnum
            Move Gmhnes.Gmhnes_YYYY    to liLastYYYY
            Move Gmhnes.Gmhnes_Period  to liLastPeriod
        
            Clear Gmhnes
            Move lsGplanRecr   to Gmhnes.Gplan_Recr
            Move liLastYYYY    to Gmhnes.Gmhnes_YYYY
            Move liLastPeriod  to Gmhnes.Gmhnes_Period
            Find gt Gmhnes by Index.3 //Gmhnes: Gplan_Recr - Gmhnes_YYYY - Gmhnes_Period
            While ((Found eq 1) and (Gmhnes.Gplan_Recr = lsGplanRecr ))
                Move (lnYpol+(Gmhnes.Gmhnes_sx2-Gmhnes.Gmhnes_sp2)) to lnYpol
                Move (lnSynXre+Gmhnes.Gmhnes_sx2)                   to lnSynXre
                Move (lnSynPist+Gmhnes.Gmhnes_sp2)                  to lnSynPist
                Send Add_Element to oRecArrayMhnes Gmhnes.Recnum
                Set array_value of oYpolArrayMhnes Item (item_Count(oYpolArrayMhnes(self))) to lnYpol
                Add 1 to liCount
        
                Set piLastRecMhnes to Gmhnes.Recnum
                If (liCount = liMaxCount) Break
                Find gt Gmhnes by Index.3 //Gmhnes: Gplan_Recr - Gmhnes_YYYY - Gmhnes_Period
            Loop
        
            If (liCount < liMaxCount) Set piCalcYpolMhnesFinished to True
        
            Set pnGeneralYpolMhnes to lnYpol
            Set pnSynXreMhnes      to lnSynXre
            Set pnSynPistMhnes     to lnSynPist
        End_Procedure // Refresh_Next_Ypol_Mhnes
        
        //Not Used
        Procedure Refresh_Ypol_Mhnes_For_Next_Block
            Integer liMaxCount
        
            Get Displayable_Rows of (piMhnesObjectId(Self)) to liMaxCount
            Move (liMaxCount - 1) to liMaxCount
            Send Refresh_Next_Ypol_Mhnes liMaxCount
        End_Procedure // Refresh_Ypol_Mhnes_For_Next_Block
        
        //Not Used
        Procedure Refresh_Ypol_Mhnes_For_Next_Line
            Send Refresh_Next_Ypol_Mhnes 1
        End_Procedure // Refresh_Ypol_Mhnes_For_Next_Line
        
        //---------For hmnies----------
        Procedure Refresh_Ypol_Hmnies
            Integer liCurrMode liMaxCount liCount liSelectedStatus
            Number lnYpol lnSynXre lnSynPist lnYpolMhnes
            Integer lsYearYYYY lsMhnasTo
            String lsGplan_Code lsGmhnesRecr
        
            Send Init_Values_Hmnies
        
            Get Field_Current_Value of GMhnes_DD Field GMhnes.Gmhnes_Recr to lsGmhnesRecr
            Get Field_Current_Value of GPlan_DD  Field Gplan.Gplan_Code   to lsGplan_Code
        
            get piCurrCode        to liCurrMode
            Get piChkTheorimenoVW to liSelectedStatus
            Move (1-liSelectedStatus) to liSelectedStatus
            Get Displayable_Rows of (piGhmniesObjectId(Self)) to liMaxCount
        
            Get Field_Current_Value of GMhnes_DD Field Gmhnes.Gmhnes_YYYY   to lsYearYYYY
            Get Field_Current_Value of GMhnes_DD Field Gmhnes.Gmhnes_Period to lsMhnasTo
        
            Move (fnCalcMhnes_Ypol(Gmhnes_dd(self),liSelectedStatus,lsMhnasTo,lsYearYYYY,lsGplan_Code,liCurrMode))   to lnYpolMhnes
            Set value of (pifrmSynXreMhnesObjectId(Self))    item 0 to (ImageCalcMhnes.1 + ImageCalcHmnies.1)
            Set value of (pifrmSynPistMhnesObjectId(Self))   item 0 to (ImageCalcMhnes.2 + ImageCalcHmnies.2)
            set value of (pifrmSynYpolMhnesObjectId(Self))   item 0 to lnYpolMhnes
            Move (ImageCalcMhnes.1 + ImageCalcHmnies.1) to lnSynXre
            Move (ImageCalcMhnes.2 + ImageCalcHmnies.2) to lnSynPist
            Move lnYpolMhnes                            to lnYpol
        
            Clear Ghmnies
            Move lsGmhnesRecr  to Ghmnies.Gmhnes_Recr
            Find gt Ghmnies by Index.3 //Ghmnies: Gmhnes_Recr - Ghmnies_Hmnia
            While ((Found eq 1) and (Ghmnies.Gmhnes_Recr = lsGmhnesRecr))
        
                Move (lnYpol+(Ghmnies.Ghmnies_sx2-Ghmnies.Ghmnies_sp2)) to lnYpol
                Move (lnSynXre+Ghmnies.Ghmnies_sx2)                     to lnSynXre
                Move (lnSynPist+Ghmnies.Ghmnies_sp2)                    to lnSynPist
                Send Add_Element to oRecArrayHmnies Ghmnies.Recnum
                Set array_value of oYpolArrayHmnies Item (item_Count(oYpolArrayHmnies(self))) to lnYpol
                Add 1 to liCount
        
                Set piLastRecHmnies to Ghmnies.Recnum
                //Not All
                //If (liCount = liMaxCount) Break
                Find gt Ghmnies by Index.3 //Ghmnies: Gmhnes_Recr - Ghmnies_Hmnia
            Loop
        
            If (liCount < liMaxCount) Set piCalcYpolHmniesFinished to True
        
            Set pnGeneralYpolHmnies to lnYpol
            Set pnSynXreHmnies      to lnSynXre
            Set pnSynPistHmnies     to lnSynPist
            send beginning_of_data to (piGhmniesObjectId(Self))
        End_Procedure // Refresh_Ypol_Hmnies
        
        //Not Used
        Procedure Refresh_Next_Ypol_Hmnies Integer aiLines
        End_Procedure // Refresh_Next_Ypol_Hmnies
        
        //Not Used
        Procedure Refresh_Ypol_Hmnies_For_Next_Block
            Integer liMaxCount
        
            Get Displayable_Rows of (piGhmniesObjectId(Self)) to liMaxCount
            Move (liMaxCount - 1) to liMaxCount
            Send Refresh_Next_Ypol_Hmnies liMaxCount
        End_Procedure // Refresh_Ypol_Hmnies_For_Next_Block
        
        //Not Used
        Procedure Refresh_Ypol_Hmnies_For_Next_Line
            Send Refresh_Next_Ypol_Hmnies 1
        End_Procedure // Refresh_Ypol_Hmnies_For_Next_Line
        
        Procedure Refresh_Ypol
            Send Refresh_Ypol_Mhnes
            Send Refresh_Ypol_Hmnies
        End_Procedure // Refresh_Ypol
        
        Procedure ReCalculate_Values
            String lsDate
            Date ldxx
            Integer liSelectedMhnas liSelectedYear
            Date ldHmnia
        
            get Field_Current_Value of (Gmhnes_DD(Self)) field Gmhnes.Gmhnes_Period to liSelectedMhnas
            Set piSelectedMhnas to liSelectedMhnas
            get Field_Current_Value of (Gmhnes_dd(self)) field Gmhnes.Gmhnes_YYYY  to  liSelectedYear
            Set piSelectedYear to liSelectedYear
        
            Send Refresh_Gmoves
            send  Refresh_Ypol
        End_Procedure // ReCalculate_Values
        
        Procedure SetLocalCur
            String lsC_Code0
            Integer liD_Code0
        
            Set piCurrCode to 1
        
            Send ReCalculate_Values
        
            Move SysCurGL.C_Code0  to lsC_Code0
            Move 2 to liD_Code0  //(CurrDigits(lsC_Code0)) to liD_Code0
            Set Numeric_Mask of (pifrmSynYpolMhnesObjectId(Self)) item 0 to 14 liD_Code0 ", *"
            Set Numeric_Mask of (pifrmSynXreMhnesObjectId(Self))  item 0 to 14 liD_Code0 ", *"
            Set Numeric_Mask of (pifrmSynPistMhnesObjectId(Self)) item 0 to 14 liD_Code0 ", *"
        
            set visible_state of (piMhnesObjectId(Self)) to False
        
            Send Mask_DbCells to (piMhnesObjectId(Self)) 2 4 liD_Code0
        
            Set Form_width of (piMhnesObjectId(Self)) item 2 to 81
            Set Form_width of (piMhnesObjectId(Self)) item 3 to 81
            Set Form_width of (piMhnesObjectId(Self)) item 4 to 84
        
            Send Resize_DbCells to (piMhnesObjectId(Self)) 5 7
            Send Resize_DbCells to (piMhnesObjectId(Self)) 8 10
            Send Resize_DbCells to (piMhnesObjectId(Self)) 11 13
        
            set visible_state of (piMhnesObjectId(Self)) to True
        
            ///////////////////////////////////////////////////// 2nd Page Hmnies
            set visible_state of (piGhmniesObjectId(Self)) to False
        
            Send Mask_DbCells to (piGhmniesObjectId(Self)) 1 3 liD_Code0
        
            Set Form_width of (piGhmniesObjectId(Self)) item 1 to 81
            Set Form_width of (piGhmniesObjectId(Self)) item 2 to 81
            Set Form_width of (piGhmniesObjectId(Self)) item 3 to 84
        
            Send Resize_DbCells to (piGhmniesObjectId(self)) 4 6
            Send Resize_DbCells to (piGhmniesObjectId(self)) 7 9
            Send Resize_DbCells to (piGhmniesObjectId(self)) 10 12
        
            set visible_state of (piGhmniesObjectId(Self)) to True
        
        End_Procedure // SetLocalCur
        
        //***************** Predefined Procedures and Functions Section **************
        
        Procedure Request_Clear_All
            Forward Send Request_Clear_all
            Send Init_Values
        End_Procedure // Request_Clear_All
        
        Procedure Request_Clear
            Forward Send Request_Clear
            Send Init_Values
        End_Procedure // Request_Clear_All
        
        Procedure Activate_View Returns Integer
            Integer Rval
            Forward Get MSG_Activate_View to Rval
            If (Not(rVal)) Begin
                Set Label of oLocal_bn   to SysCurGL.C_Code0
                Set Label of oForeign_bn to SysCurGL.C_Code00
                Set Label of oReport_Bn  to SysCurGL.C_CodeR
                Send SetLocalCur
            End
        
            Procedure_Return rVal
        End_Procedure // Activate_View
        
        Procedure Request_Cancel
            Send Request_Clear
            Forward Send Request_Cancel
        End_Procedure // Request_Cancel
        
        //Set Verify_Exit_Msg To Get_No_Confirmation
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V56V59V60


    //AB-StoreStart
                                                
                                                
    //AB-StoreEnd

//AB/     End_Object    // prj
