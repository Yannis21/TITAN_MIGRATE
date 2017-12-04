//AB/ Project AnalKath TEST
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "AnalKath TEST"
//AB/     Set ProjectFileName to "Analkat1.vw"

// Project Object Structure
//   AnalKath1_View is a dbViewSubS
//     oRecArray is a Set
//     oYpolArray is a Array
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Gplan_DD is a DataDictionary
//     Garticl_DD is a DataDictionary
//     Gmove_DD is a DataDictionary
//     Gmhnes_DD is a DataDictionary
//     Ghmnies_DD is a DataDictionary
//     Gmovea_DD is a DataDictionary
//     dbGrpGplan is a dbGroupSub
//       Gplan_Gplan_Code is a dbFormSub
//       Gplan_Gplan_Descr1 is a dbFormSub
//       frmDate_Apo is a FormSub
//       frmDate_Eos is a FormSub
//       txtGplanCode is a TextBoxSub
//       txtGplanDescr is a TextBoxSub
//       txtDayApo is a TextBoxSub
//       txtDayEos is a TextBoxSub
//     RdGrpSelect is a RadioGroupSub
//       rdAllRecords is a RadioSub
//       rdNotDefinite is a RadioSub
//       rdDefinite is a RadioSub
//     dbGBook is a dbGridSub
//     oLocal_bn is a ButtonSub
//     oForeign_bn is a ButtonSub
//     oReport_bn is a ButtonSub
//     oGmoves_bn is a ButtonSub
//     frmSynXreHelp is a FormSub
//     frmSynPistHelp is a FormSub
//     frmYpolHelp is a FormSub
//     frmSynXre is a FormSub
//     frmSynPist is a FormSub
//     frmYpol is a FormSub
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       txtCompany is a TextBoxSub
//       txtBranch is a TextBoxSub
//       txtYear is a TextBoxSub

// Register all objects
Register_Object AnalKath1_View
Register_Object Branch_Branch_Name
Register_Object Branch_DD
Register_Object Company_Company_Name
Register_Object Company_DD
Register_Object dbGBook
Register_Object dbGrpGplan
Register_Object dbGrpYear
Register_Object frmDate_Apo
Register_Object frmDate_Eos
Register_Object frmSynPist
Register_Object frmSynPistHelp
Register_Object frmSynXre
Register_Object frmSynXreHelp
Register_Object frmYpol
Register_Object frmYpolHelp
Register_Object Garticl_DD
Register_Object Ghmnies_DD
Register_Object Gmhnes_DD
Register_Object Gmove_DD
Register_Object Gmovea_DD
Register_Object Gplan_DD
Register_Object Gplan_Gplan_Code
Register_Object Gplan_Gplan_Descr1
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object oForeign_bn
Register_Object oGmoves_bn
Register_Object oLocal_bn
Register_Object oRecArray
Register_Object oReport_bn
Register_Object oYpolArray
Register_Object RdGrpSelect
Register_Object rdAllRecords
Register_Object rdDefinite
Register_Object rdNotDefinite
Register_Object txtBranch
Register_Object txtCompany
Register_Object txtDayApo
Register_Object txtDayEos
Register_Object txtGplanCode
Register_Object txtGplanDescr
Register_Object txtYear
Register_Object Year_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Form.Sub
Use Txtbox.Sub
Use Rgroup.Sub
Use Radio.Sub
Use dbGrid.Sub
Use Button.Sub

Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD
Use GTHHMGIO.DD
Use GTYPKIN.DD
Use GPLAN.DD
Use GARTICL.DD
Use GMOVE.DD
Use GMHNES.DD
Use GHMNIES.DD
Use GMOVEA.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_AnalKath1_View FOR ;
;
Object AnalKath1_View is a dbViewSubS

    //AB-StoreTopStart

    Property Integer piCurrMode 0
    Property Integer piGplan_CodeObjID 0
    Property Integer piDate_ApoObjID 0
    Property Integer piDate_EosObjID 0

    Property Number pnYpolRowBook Public 0
    Property Number pnYpolRowEuro Public 0
    Property Number pnYpolRowRepo Public 0

    Property Number pnPreviousYpol     Public 0
    Property Number pnPreviousYpolEuro Public 0
    Property Number pnPreviousYpolRepo Public 0

    Property Date pdSelectedDate ""
    Property Date pdSelectedDateApo ""
    Property Date pdSelectedDateEos ""

    Property Integer piGmoveStatus 0
    Property Integer piFragmaGplanCode 0  //last bathmos
    Property String psGplanCode

    Property Number pnGeneralYpol 0
    Property Number pnSynXre      0
    Property Number pnSynPist     0
    Property Integer piLastRec    0
    Property Integer piCalcYpolFinished 0

    Register_Function Show_Ypol Integer iRec Returns Number

    Object oRecArray is a Set
    End_Object // oRecArray

    Object oYpolArray is an Array
    End_Object // oYpolArray

    //AB-StoreTopEnd

    Set Label to "Ä§ò¢¨´†°Ê âòü¶¢†°Ê "
    Set Size to 290 514
    Set Location to 4 5

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary

        //AB-StoreStart

        Set Ordering to 1
        Set Read_Only_State to True

        //AB-StoreEnd

    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))

        //AB-StoreStart

        Set Ordering to 1
        Set Read_Only_State to True

        //AB-StoreEnd

    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))

        //AB-StoreStart

        Set Ordering to 1
        Set Field_Options Field Year.Year_Year to DD_DisplayOnly

        Set Read_Only_State to True

        //AB-StoreEnd

    End_Object    // Year_DD

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary

        //AB-StoreStart

        Set Ordering to 1
        Set Read_Only_State to True

        //AB-StoreEnd

    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))

        //AB-StoreStart

        Set Ordering to 3


        Set Read_Only_State to True



        //AB-StoreEnd

    End_Object    // Gtypkin_DD

    Object Gplan_DD is a Gplan_DataDictionary

        //AB-StoreStart

        Set Ordering to 1

        Set Field_Exit_msg Field Gplan.Gplan_Code    To None
        Set Field_Options  Field Gplan.Gplan_Code    To DD_CLEAR_FIELD_OPTIONS DD_REQUIRED

        Set Read_Only_State to True




        //AB-StoreEnd

    End_Object    // Gplan_DD

    Object Garticl_DD is a Garticle_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))

        //AB-StoreStart

        Set Ordering to 1
        Set Read_Only_State to True

        //AB-StoreEnd

    End_Object    // Garticl_DD

    Object Gmove_DD is a Gmove_DataDictionary
        Set DDO_Server to (Gplan_DD(self))
        Set DDO_Server to (Garticl_DD(self))

        //AB-StoreStart

        Set Ordering to 4

        Procedure Constrain ///OnConstrain
            Date ldSelectedDateApo ldSelectedDateEos
            Integer liSelectedStatus

            Constrain Gmove Relates to Gplan //for the set constrain file to

            get pdSelectedDateApo to ldSelectedDateApo
            get pdSelectedDateEos to ldSelectedDateEos
            get piGmoveStatus to liSelectedStatus

            if (ldSelectedDateApo <> "") Constrain Gmove.GArticl_Hmnia ge ldSelectedDateApo
            //else Constrain Gmove.GArticl_Hmnia ge ""
            if (ldSelectedDateEos <> "") Constrain Gmove.GArticl_Hmnia le ldSelectedDateEos
            if (liSelectedStatus = 1) move 99 to liSelectedStatus //all the records
            else if (liSelectedStatus = 2) Constrain Gmove.Gmove_AA eq 0
            else if (liSelectedStatus = 3) Constrain Gmove.Gmove_AA gt 0
        End_Procedure   // OnConstrain

        Set Read_Only_State to True













        //AB-StoreEnd

    End_Object    // Gmove_DD

    Object Gmhnes_DD is a Gmhnes_DataDictionary
        Set DDO_Server to (Gplan_DD(self))

        //AB-StoreStart

        Procedure OnConstrain
            Constrain Gmhnes Relates to Gplan
        End_Procedure // OnConstrain

        Set Read_Only_State to True


        //AB-StoreEnd

    End_Object    // Gmhnes_DD

    Object Ghmnies_DD is a Ghmnies_DataDictionary
        Set DDO_Server to (Gmhnes_DD(self))

        //AB-StoreStart

        Procedure OnConstrain
            Constrain Ghmnies Relates to Gmhnes
        End_Procedure // OnConstrain

        Set Read_Only_State to True


        //AB-StoreEnd

    End_Object    // Ghmnies_DD

    Object Gmovea_DD is a Gmovea_DataDictionary
    End_Object    // Gmovea_DD

    Set Main_DD to (Gplan_DD(self))
    Set Server to (Gplan_DD(self))

    //AB-DDOEnd

    Object dbGrpGplan is a dbGroupSub
        Set Size to 44 380
        Set Location to 26 6
        Object Gplan_Gplan_Code is a dbFormSub
            Entry_Item Gplan.Gplan_code
            Set Size to 13 125
            Set Location to 9 67
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Set piGplan_CodeObjID to (Gplan_Gplan_Code(Self))

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

            On_Key kCancel Send Request_Cancel to Analkath1_View













            //AB-StoreEnd

        End_Object    // Gplan_Gplan_Code

        Object Gplan_Gplan_Descr1 is a dbFormSub
            Entry_Item Gplan.Gplan_descr1
            Set Size to 13 187
            Set Location to 25 67
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

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

            On_Key kCancel Send Request_Cancel to Analkath1_View


            //AB-StoreEnd

        End_Object    // Gplan_Gplan_Descr1

        Object frmDate_Apo is a FormSub
            Set Size to 13 45
            Set Location to 9 330
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart

            Set piDate_ApoObjID to (frmDate_Apo(Self))

            Procedure Exiting
                Forward Send Exiting
                Send ReCalculate_Values
            End_Procedure // Exiting

            On_Key kCancel Send Request_Cancel to Analkath1_View




            //AB-StoreEnd

        End_Object    // frmDate_Apo

        Object frmDate_Eos is a FormSub
            Set Size to 13 45
            Set Location to 25 330
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart

            Set piDate_EosObjID to (frmDate_Eos(self))

            Procedure Exiting
                Forward Send Exiting
                Send ReCalculate_Values
            End_Procedure // Exiting

            On_Key kCancel Send Request_Cancel to Analkath1_View



            //AB-StoreEnd

        End_Object    // frmDate_Eos

        Object txtGplanCode is a TextBoxSub
            Set Label to "ä¶öò®†ò©£Ê™: "
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 10 8
            Set Size to 13 55
            Set Enabled_State to TRUE
        End_Object    // txtGplanCode

        Object txtGplanDescr is a TextBoxSub
            Set Label to "èú®†ö®ò≠„: "
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 23 8
            Set Size to 13 55
            Set Enabled_State to TRUE
        End_Object    // txtGplanDescr

        Object txtDayApo is a TextBoxSub
            Set Label to "ÄßÊ Ü£§Âò:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 9 280
            Set Size to 13 46
            Set Enabled_State to TRUE
        End_Object    // txtDayApo

        Object txtDayEos is a TextBoxSub
            Set Label to "Ñ‡™ Ü£§Âò:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 23 280
            Set Size to 13 46
            Set Enabled_State to TRUE
        End_Object    // txtDayEos

    End_Object    // dbGrpGplan

    Object RdGrpSelect is a RadioGroupSub
        Set Size to 44 113
        Set Location to 26 392
        Object rdAllRecords is a RadioSub
            Set Label to "é¢ú™ ¶† Ñöö®ò≠‚™"
            Set Size to 10 91
            Set Location to 10 7

            //AB-StoreStart

                                                                                                                                                                                                                                                                                                                                            On_Key kCancel Send Request_Cancel to Analkath1_View
            On_Key kCancel Send Request_Cancel to Analkath1_View


            //AB-StoreEnd

        End_Object    // rdAllRecords

        Object rdNotDefinite is a RadioSub
            Set Label to "ãû é®†©´†°¶ß¶†û£‚§ú™"
            Set Size to 10 91
            Set Location to 20 7

            //AB-StoreStart

            Set Visible_State to False
            Set Enabled_State to False

            On_Key kCancel Send Request_Cancel to Analkath1_View

            //AB-StoreEnd

        End_Object    // rdNotDefinite

        Object rdDefinite is a RadioSub
            Set Label to "é®†©´†°¶ß¶†û£‚§ú™"
            Set Size to 10 91
            Set Location to 30 7

            //AB-StoreStart

            On_Key kCancel Send Request_Cancel to Analkath1_View


            //AB-StoreEnd

        End_Object    // rdDefinite


        //AB-StoreStart
        //***
        //*** Procedure: Notify_Select_state
        //*** Purpose  : Augemented to setup the output destination of the WinQL
        //***            report. The procedure is sent when the user changes the
        //***            selection.
        //***

        Procedure Notify_Select_State  Integer iNewItem  Integer iOldItem

            If iNewItem Eq 0 ;
                set piGmoveStatus to 1

            Else If iNewItem Eq 1;
                set piGmoveStatus to 2

            Else If iNewItem Eq 2 ;
                set piGmoveStatus to 3

            send ReCalculate_Values

        End_Procedure  // Notify_Select_State





        //AB-StoreEnd

    End_Object    // RdGrpSelect

    Object dbGBook is a dbGridSub
        Set Main_File to Gmove.File_Number
        Set Server to (Gmove_DD(self))
        Set Ordering to 4
        Set Size to 159 499
        Set Location to 84 6
        Set CurrentRowColor to 11468799
        Set CurrentCellColor to 11468799
        Set Wrap_State to TRUE
        Set Allow_Bottom_Add_State to FALSE
        Set Child_Table_State to FALSE
        Set Read_Only_State to TRUE
        Set Resize_Column_State to FALSE
        Set Scroll_Bar_Visible_State to FALSE

        Begin_Row
            Entry_Item Gmove.Garticl_hmnia
            Entry_Item Gmove.Gmove_aitiol
            Entry_Item Gmove.Gmove_x0
            Entry_Item Gmove.Gmove_p0
            Entry_Item (Show_Ypol(Self,Gmove.Recnum))
            Entry_Item Gmove.Gmove_x00
            Entry_Item Gmove.Gmove_p00
            Entry_Item ("")
            Entry_Item Gmove.Gmove_xr
            Entry_Item Gmove.Gmove_pr
            Entry_Item ("")
            Entry_Item Gthhmgio.Gthhmgio_code
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "Ü£ú®¶£û§Âò"

        Set Form_Width    item 1 to 193
        Set Header_Label  item 1 to "Ä†´†¶¢¶öÂò"

        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "ï®‚‡©û"

        Set Form_Width    item 3 to 83
        Set Header_Label  item 3 to "èÂ©´‡©û"

        Set Form_Width    item 4 to 83
        Set Header_Label  item 4 to "ìßÊ¢¶†ß¶"

        Set Form_Width    item 5 to 83
        Set Header_Label  item 5 to "ï®‚‡©û (E)"

        Set Form_Width    item 6 to 83
        Set Header_Label  item 6 to "èÂ©´‡©û (E)"

        Set Form_Width    item 7 to 83
        Set Header_Label  item 7 to "ìßÊ¢¶†ß¶"

        Set Form_Width    item 8 to 83
        Set Header_Label  item 8 to "ï®‚‡©û (R)"

        Set Form_Width    item 9 to 83
        Set Header_Label  item 9 to "èÂ©´‡©û (R)"

        Set Form_Width    item 10 to 83
        Set Header_Label  item 10 to "ìßÊ¢¶†ß¶"

        Set Form_Width    item 11 to 24
        Set Header_Label  item 11 to "Gthhmgio code"


        //AB-StoreStart

        Procedure Mask_DbCells Integer aiFromCol Integer aiToCol Integer aiDigitsG
           Integer liCounter6

           For liCounter6 From  aiFromCol to aiToCol
                Set Points    of dbGbook Item liCounter6 to aiDigitsG
                Set Form_Mask of dbGbook Item liCounter6 to ",*"
           Loop
        End_Procedure // Mask_DbCells


        Procedure Resize_DbCells Integer aiFromCol Integer aiToCol
           Integer liCounter5

           For liCounter5 From  aiFromCol to aiToCol
               Set Form_Width of dbGbook item liCounter5 to 0
           Loop
        End_Procedure // Resize_DbCells

        //***************** Predefined Procedures and Functions Section **************

        Set Form_Width    item 11 to 0

        Set Points Item 2 to 0
        Set Form_Mask Item 2 to ",*"

        Set Points Item 3 to 0
        Set Form_Mask Item 3 to ",*"

        Set Points Item 4 to 0
        Set Form_Mask Item 4 to ",*"

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

        procedure scroll integer direction integer lines
            If (direction = downward_direction) Begin
                If (lines = 1) Send Refresh_Ypol_For_Next_Line
                Else Send Refresh_Ypol_For_Next_Block
            End
            Forward Send scroll direction lines
        end_procedure // scroll

        Procedure End_Of_Data
            If (piCalcYpolFinished(Self)) Forward Send End_Of_Data
        End_Procedure // End_Of_Data

        Procedure Down_Row
            If (Current_Row(Self) = (Displayable_Rows(Self)-1)) Send scroll downward_direction 1
            Else Forward Send Down_Row
        End_Procedure // Down_Row

        Procedure Request_Clear_All
            //Delegate Send Request_Clear_All
        End_Procedure // Request_Clear_All

        Procedure Request_Cancel
            Integer liResult

            Send Switch_prior_area
            Send Top_Of_Panel to Analkath1_View
        End_Procedure // Request_Cancel

        On_Key kEnter      Send Down_Row Private
        On_Key kNext_item  Send Down_Row Private



        //AB-StoreEnd

    End_Object    // dbGBook

    Object oLocal_bn is a ButtonSub
        Set Label to "0"
        Set Location to 254 6

        //AB-StoreStart

        Procedure OnClick
            Send SetLocalCur
        end_Procedure // OnClick

        Set Visible_State to False
        Set TooltipValue to "Äßú†°Ê§†©û ©ú °Á®†¶ åÊ£†©£ò"





        //AB-StoreEnd

    End_Object    // oLocal_bn

    Object oForeign_bn is a ButtonSub
        Set Label to "00"
        Set Location to 254 62

        //AB-StoreStart

        Procedure OnClick
            String lsC_Code00
            Integer liD_Code00

            Set piCurrMode to 2
            set visible_state of (dbgBook(Current_Object)) to False

            Get Field_Current_Value of Year_DD Field Year.Year_C_Code00 to lsC_Code00
            Move (CurrDigits(lsC_Code00)) to liD_Code00
            Send Mask_DbCells to (dbgBook(Current_Object)) 5 7 liD_Code00
            Send Resize_DbCells to (dbgBook(Current_Object)) 2 4

            Set Form_width of (dbgBook(Current_Object)) item 5 to 83
            Set Form_width of (dbgBook(Current_Object)) item 6 to 83
            Set Form_width of (dbgBook(Current_Object)) item 7 to 83

            Send Resize_DbCells to (dbgBook(Current_Object)) 8 10

            set visible_state of (dbgBook(Current_Object)) to True

            Set Numeric_Mask of (frmYpol(Self)) item 0 to 14 liD_Code00 ", *"
            //send ReCalculate_Values

        end_Procedure // OnClick

        Set Visible_State to False
        Set TooltipValue to "Äßú†°Ê§†©û ©ú õú¨´ú®úÁ¶§ åÊ£†©£ò"



        //AB-StoreEnd

    End_Object    // oForeign_bn

    Object oReport_bn is a ButtonSub
        Set Label to "R"
        Set Location to 254 117

        //AB-StoreStart

        Procedure OnClick
            String lsC_CodeR
            Integer liD_CodeR

            Set piCurrMode to 3

            set visible_state of (dbgBook(Current_Object)) to False

            Get Field_Current_Value of Year_DD Field Year.Year_C_CodeR to lsC_CodeR
            Move (CurrDigits(lsC_CodeR)) to liD_CodeR
            Send Mask_DbCells to (dbgBook(Current_Object)) 8 10 liD_CodeR

            Send Resize_DbCells to (dbgBook(Current_Object)) 2 4

            Send Resize_DbCells to (dbgBook(Current_Object)) 5 7

            Set Form_width of (dbgBook(Current_Object)) item 8  to 83
            Set Form_width of (dbgBook(Current_Object)) item 9  to 83
            Set Form_width of (dbgBook(Current_Object)) item 10 to 83

            set visible_state of (dbgBook(Current_Object)) to true

            Set Numeric_Mask of (frmYpol(Self)) item 0 to 14 liD_CodeR ", *"
            //send ReCalculate_Values

        end_Procedure // OnClick

        Set Visible_State to False
        Set TooltipValue to "Äßú†°Ê§†©û ©ú åÊ£†©£ò Reporting"



        //AB-StoreEnd

    End_Object    // oReport_bn

    Object oGmoves_bn is a ButtonSub
        Set Label to "âò´òÆ‡®„©ú†™"
        Set Size to 14 71
        Set Location to 254 174

        //AB-StoreStart

        Procedure OnClick
            Send Activate_Gmove_View to Client_Area
        end_Procedure // OnClick

        Set Visible_State to False




        //AB-StoreEnd

    End_Object    // oGmoves_bn

    Object frmSynXreHelp is a FormSub
        Set Size to 13 82
        Set Location to 71 257
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmSynXreHelp

    Object frmSynPistHelp is a FormSub
        Set Size to 13 83
        Set Location to 71 338
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmSynPistHelp

    Object frmYpolHelp is a FormSub
        Set Size to 13 85
        Set Location to 71 420
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmYpolHelp

    Object frmSynXre is a FormSub
        Set Size to 13 82
        Set Location to 253 257
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmSynXre

    Object frmSynPist is a FormSub
        Set Size to 13 83
        Set Location to 253 338
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmSynPist

    Object frmYpol is a FormSub
        Set Size to 13 85
        Set Location to 253 420
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart

        //Set Numeric_Mask of (FormSub16(Self)) item 0 to 14 giD_Code0 ", *"


        //AB-StoreEnd

    End_Object    // frmYpol

    Object dbGrpYear is a dbGroupSub
        Set Server to (Year_DD(self))
        Set Size to 26 499
        Set Location to 0 6
        Object Company_Company_Name is a dbFormSub
            Entry_Item Company.Company_name
            Set Size to 13 126
            Set Location to 9 61
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Branch.Branch_name
            Set Size to 13 110
            Set Location to 9 259
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Year.Year_year
            Set Size to 13 61
            Set Location to 9 431
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object txtCompany is a TextBoxSub
            Set Label to "Ñ´ò†®Âò:"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 40
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
            Set Location to 10 206
            Set Size to 10 41
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
            Set Location to 10 385
            Set Size to 10 35
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // txtYear

    End_Object    // dbGrpYear


    //AB-StoreStart

    Procedure Init_Values

        Send Delete_Data to oRecArray
        Send Delete_Data to oYpolArray

        Set pnGeneralYpol to 0
        Set pnSynXre      to 0
        Set pnSynPist     to 0
        set value of (frmSynXre(Self)) item 0 to 0
        set value of (frmSynPist(Self)) item 0 to 0
        set value of (frmYpol(Self)) item 0 to 0
        set value of (frmSynXreHelp(Self)) item 0 to 0
        set value of (frmSynPistHelp(Self)) item 0 to 0
        set value of (frmYpolHelp(Self)) item 0 to 0
        Set piLastRec     to 0
        Set piCalcYpolFinished to False

    End_Procedure // Init_Values

    Procedure SetLocalCur
        String lsC_Code0
        Integer liD_Code0

        Set piCurrMode to 1
        set visible_state of (dbgBook(Current_Object)) to False

        Get Field_Current_Value of Year_DD Field Year.Year_C_Code0 to lsC_Code0
        Move (CurrDigits(lsC_Code0)) to liD_Code0
        Send Mask_DbCells to (dbgBook(Current_Object)) 2 4 liD_Code0

        Set Form_width of (dbgBook(Current_Object)) item 2 to 83
        Set Form_width of (dbgBook(Current_Object)) item 3 to 83
        Set Form_width of (dbgBook(Current_Object)) item 4 to 83

        Send Resize_DbCells to (dbgBook(Current_Object)) 5 7
        Send Resize_DbCells to (dbgBook(Current_Object)) 8 10

        set visible_state of (dbgBook(Current_Object)) to True

        Set Numeric_Mask of frmYpol        item 0 to 14 liD_Code0 ",*"
        Set Numeric_Mask of frmSynXre      item 0 to 14 liD_Code0 ",*"
        Set Numeric_Mask of frmSynPist     item 0 to 14 liD_Code0 ",*"
        Set Numeric_Mask of frmYpolHelp    item 0 to 14 liD_Code0 ",*"
        Set Numeric_Mask of frmSynXreHelp  item 0 to 14 liD_Code0 ",*"
        Set Numeric_Mask of frmSynPistHelp item 0 to 14 liD_Code0 ",*"

    End_Procedure // SetLocalCur

    Procedure Refresh_Ypol
        Date ldSelectedDateApo ldSelectedDateEos
        Integer liSelectedStatus liCount liMaxCount
        Number lnYpol lnSynXre lnSynPist lnYpolMhnes lnYpolHmeres
        String lsMhnasTo lsYearYYYY lsGplan_Code lsGplanRecr
        Integer liCurrMode
        Number lnYpolHelp lnSynXreHelp lnSynPistHelp

        Send Init_Values

        Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Recr to lsGplanRecr
        Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Code to lsGplan_Code

        get pdSelectedDateApo to ldSelectedDateApo
        get pdSelectedDateEos to ldSelectedDateEos
        get piGmoveStatus     to liSelectedStatus
        get piCurrMode        to liCurrMode
        If (liSelectedStatus = 3)      Move 0 to liSelectedStatus
        Else If (liSelectedStatus = 2) Move 99 to liSelectedStatus

        If (ldSelectedDateApo <> 0) Begin
            Move (TheMonthSegment(ldSelectedDateApo)) to lsMhnasTo
            Move (TheYearSegment(ldSelectedDateApo))  to lsYearYYYY
            Move (fnCalcMhnes_Ypol(Gmhnes_dd(self),liSelectedStatus,lsMhnasTo,lsYearYYYY,lsGplan_Code,liCurrMode))   to lnYpolMhnes
            Move (fnCalcHmnies_Ypol(Ghmnies_dd(self),liSelectedStatus,ldSelectedDateApo,"",lsGplan_Code,liCurrMode)) to lnYpolHmeres
            Set value of frmSynXreHelp  item 0 to (ImageCalcMhnes.1 + ImageCalcHmnies.1)
            Set value of frmSynPistHelp item 0 to (ImageCalcMhnes.2 + ImageCalcHmnies.2)
            set value of frmYpolHelp    item 0 to (lnYpolMhnes+lnYpolHmeres)
            Move (ImageCalcMhnes.1 + ImageCalcHmnies.1) to lnSynXre
            Move (ImageCalcMhnes.2 + ImageCalcHmnies.2) to lnSynPist
            Move (lnYpolMhnes+lnYpolHmeres)             to lnYpol
        End

        Get Displayable_Rows of dbGBook to liMaxCount

        Clear Gmove
        Move lsGplanRecr        to Gmove.Gplan_Recr
        Move ldSelectedDateApo  to Gmove.Garticl_Hmnia
        Find gt Gmove by Index.4
        While ((Found eq 1) and (Gmove.Gplan_Recr = lsGplanRecr ))
            If  ((ldSelectedDateEos <> "") and (Gmove.Garticl_Hmnia > ldSelectedDateEos)) Break
            If (liSelectedStatus = 99) Begin
                If (Gmove.Gmove_AA = 0) Begin
                    Move (lnYpol+(Gmove.Gmove_x0-Gmove.Gmove_p0)) to lnYpol
                    Move (lnSynXre+Gmove.Gmove_x0)                to lnSynXre
                    Move (lnSynPist+Gmove.Gmove_p0)               to lnSynPist
                    Send Add_Element to oRecArray Gmove.Recnum
                    Set array_value of oYpolArray Item (item_Count(oYpolArray(self))) to lnYpol
                    Add 1 to liCount
                End
            End
            Else If (liSelectedStatus = 0) Begin
                If (Gmove.Gmove_AA > 0) Begin
                    Move (lnYpol+(Gmove.Gmove_x0-Gmove.Gmove_p0)) to lnYpol
                    Move (lnSynXre+Gmove.Gmove_x0)                to lnSynXre
                    Move (lnSynPist+Gmove.Gmove_p0)               to lnSynPist
                    Send Add_Element to oRecArray Gmove.Recnum
                    Set array_value of oYpolArray Item (item_Count(oYpolArray(self))) to lnYpol
                    Add 1 to liCount
                End
            End
            Else If (liSelectedStatus = 1) Begin
                    Move (lnYpol+(Gmove.Gmove_x0-Gmove.Gmove_p0)) to lnYpol
                    Move (lnSynXre+Gmove.Gmove_x0)                to lnSynXre
                    Move (lnSynPist+Gmove.Gmove_p0)               to lnSynPist
                    Send Add_Element to oRecArray Gmove.Recnum
                    Set array_value of oYpolArray Item (item_Count(oYpolArray(self))) to lnYpol
                    Add 1 to liCount
            End

            Set piLastRec to Gmove.Recnum
            If (liCount = liMaxCount) Break
            Find gt Gmove by Index.4
        Loop

        If (liCount < liMaxCount) Set piCalcYpolFinished to True

        Set pnGeneralYpol to lnYpol
        Set pnSynXre      to lnSynXre
        Set pnSynPist     to lnSynPist
        If (piCalcYpolFinished(Self)) Begin
            set value of (frmYpol(Self))         item 0 to lnYpol
            set value of (frmSynXre(Self))       item 0 to lnSynXre
            set value of (frmSynPist(Self))      item 0 to lnSynPist
        End
    End_Procedure // Refresh_Ypol

    Procedure Refresh_Next_Ypol Integer aiLines
        Date    ldSelectedDateApo ldSelectedDateEos
        Integer liSelectedStatus liCount liMaxCount liLastRec
        Number  lnYpol lnSynXre lnSynPist
        Date    ldLastHmnia
        Number  lnLastTypkin lnLastGarticl
        String  lsGplanRecr

        Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Recr to lsGplanRecr

        get pdSelectedDateApo to ldSelectedDateApo
        get pdSelectedDateEos to ldSelectedDateEos
        get piGmoveStatus to liSelectedStatus

        Get pnGeneralYpol to lnYpol
        Get pnSynXre      to lnSynXre
        Get pnSynPist     to lnSynPist

        Move aiLines to liMaxCount

        Get piLastRec to liLastRec
        Clear Gmove
        Move liLastRec to Gmove.Recnum
        Find eq Gmove by Recnum
        Move Gmove.Garticl_Hmnia to ldLastHmnia
        Move Gmove.Gtypkin_Code  to lnLastTypkin
        Move Gmove.Garticl_No    to lnLastGarticl

        Clear Gmove
        Move lsGplanRecr   to Gmove.Gplan_Recr
        Move ldLastHmnia   to Gmove.Garticl_Hmnia
        Move lnLastTypkin  to Gmove.Gtypkin_Code
        Move lnLastGarticl to Gmove.Garticl_No
        Move liLastRec     to Gmove.Recnum
        Find gt Gmove by Index.4
        While ((Found eq 1) and (Gmove.Gplan_Recr = lsGplanRecr ))
            If  ((ldSelectedDateEos <> "") and (Gmove.Garticl_Hmnia > ldSelectedDateEos)) Break
            If (liSelectedStatus = 2) Begin
                If (Gmove.Gmove_AA = 0) Begin
                    Move (lnYpol+(Gmove.Gmove_x0-Gmove.Gmove_p0)) to lnYpol
                    Move (lnSynXre+Gmove.Gmove_x0)                to lnSynXre
                    Move (lnSynPist+Gmove.Gmove_p0)               to lnSynPist
                    Send Add_Element to oRecArray Gmove.Recnum
                    Set array_value of oYpolArray Item (item_Count(oYpolArray(self))) to lnYpol
                    Add 1 to liCount
                End
            End
            Else If (liSelectedStatus = 3) Begin
                If (Gmove.Gmove_AA > 0) Begin
                    Move (lnYpol+(Gmove.Gmove_x0-Gmove.Gmove_p0)) to lnYpol
                    Move (lnSynXre+Gmove.Gmove_x0)                to lnSynXre
                    Move (lnSynPist+Gmove.Gmove_p0)               to lnSynPist
                    Send Add_Element to oRecArray Gmove.Recnum
                    Set array_value of oYpolArray Item (item_Count(oYpolArray(self))) to lnYpol
                    Add 1 to liCount
                End
            End
            Else If (liSelectedStatus = 1) Begin
                    Move (lnYpol+(Gmove.Gmove_x0-Gmove.Gmove_p0)) to lnYpol
                    Move (lnSynXre+Gmove.Gmove_x0)                to lnSynXre
                    Move (lnSynPist+Gmove.Gmove_p0)               to lnSynPist
                    Send Add_Element to oRecArray Gmove.Recnum
                    Set array_value of oYpolArray Item (item_Count(oYpolArray(self))) to lnYpol
                    Add 1 to liCount
            End

            Set piLastRec to Gmove.Recnum
            If (liCount = liMaxCount) Break
            Find gt Gmove by Index.4
        Loop

        If (liCount < liMaxCount) Set piCalcYpolFinished to True

        Set pnGeneralYpol to lnYpol
        Set pnSynXre      to lnSynXre
        Set pnSynPist     to lnSynPist
        If (piCalcYpolFinished(Self)) Begin
            set value of (frmYpol(Self))         item 0 to lnYpol
            set value of (frmSynXre(Self))       item 0 to lnSynXre
            set value of (frmSynPist(Self))      item 0 to lnSynPist
        End
    End_Procedure // Refresh_Next_Ypol

    Procedure Refresh_Ypol_For_Next_Block
        Integer liMaxCount

        Get Displayable_Rows of dbGBook to liMaxCount
        Move (liMaxCount - 1) to liMaxCount
        Send Refresh_Next_Ypol liMaxCount
    End_Procedure // Refresh_Ypol_For_Next_Block

    Procedure Refresh_Ypol_For_Next_Line
        Send Refresh_Next_Ypol 1
    End_Procedure // Refresh_Ypol_For_Next_Line

    Function Show_Ypol Integer iRec Returns Number
        Number liItem
        Get Find_Element of oRecArray iRec to liItem
        Function_Return (value(oYpolArray(Self),liItem))
    End_Function // Refresh_Ypol

    Procedure ReCalculate_Values
        String lsTRs lsFromDate lsTodate
        Integer liCount
        Integer liGplanCodeObjID
        Integer liDate_ApoObjID liDate_EosObjID
        Date ldFromDate ldTodate

        Get piGplan_CodeObjID to liGplanCodeObjID
        Get piDate_ApoObjID   to liDate_ApoObjID
        Get piDate_EosObjID   to liDate_EosObjID

        set value of (frmYpol(Self))   item 0 to ""

        get value of liGplanCodeObjID item 0 to lsTrs
        set psGplanCode to lsTrs

        get value of liDate_ApoObjID item 0 to ldFromDate
        set pdSelectedDateAPo to ldFromdate

        get value of liDate_EosObjID item 0 to ldToDate
        set pdSelectedDateEos to ldTodate

        if (lsFromDate = "") Begin
            Get Field_Current_Value of Year_DD Field Year.Year_XrhshFrom to ldFromDate
            If (ldFromDate = "") Move Year.Year_XrhshFrom to ldFromDate
        End

        send rebuild_constraints to (Gmove_DD(Self))

        send Refresh_Ypol

        Send Beginning_Of_Data to dbGBook True

    End_Procedure // ReCalculate_Values

    //***************** Predefined Procedures and Functions Section **************

    Procedure Request_Clear_All
        Forward Send Request_Clear_all
        Send DoRefindYear Self (Year_DD(Self))
        Send Init_Values
    End_Procedure // Request_Clear_All

    Procedure Request_Clear
        Forward Send Request_Clear
        Send Init_Values
    End_Procedure // Request_Clear

    Procedure Activate_View Returns Integer
          Integer Rval
          String lsC_Code0 lsC_Code00 lsC_CodeR

          Forward Get MSG_Activate_View to Rval

          If (Not(rVal)) Begin

              Get Field_Current_Value of Year_DD Field SysCurGL.Year_C_Code0  to lsC_Code0
              Get Field_Current_Value of Year_DD Field SysCurGL.Year_C_Code00 to lsC_Code00
              Get Field_Current_Value of Year_DD Field SysCurGL.Year_C_CodeR  to lsC_CodeR
              If (lsC_Code0 <> "")  Set Label of oLocal_bn   to lsC_Code0
              If (lsC_Code00 <> "") Set Label of oForeign_bn to lsC_Code00
              If (lsC_CodeR <> "")  Set Label of oReport_Bn  to lsC_CodeR

              Set pnYpolRowBook To 0
              Set pnYpolRowEuro To 0
              Set pnYpolROwRepo To 0

              Set piFragmaGplanCode to 0

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

CD_End_Object    // AnalKath1_View


//AB-StoreStart

Use Gmoves.vw
//AB-StoreEnd

//AB/ End_Object    // prj
