//AB/ Project Gpmoves:GPMOVES
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Gpmoves:GPMOVES"
//AB/     Set ProjectFileName to "Gpmoves.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Gpmoves is a dbViewSubS
//     Syscurgl_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Gplan_DD is a DataDictionary
//     Gflagkin_DD is a DataDictionary
//     Gparticl_DD is a DataDictionary
//     Gpmoves_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Isotimia_DD is a DataDictionary
//     dbGroupSub1 is a dbGroup
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     dbGroupSub2 is a dbGroup
//       Gtypkin_Gtypkin_Code is a dbFormSub
//       Gtypkin_Gtypkin_Descr is a dbFormSub
//       Gparticl_Garticl_Par is a dbFormSub
//       Gparticl_Garticl_C_Code2 is a dbComboFormSub
//       Gparticl_Garticl_Rate0 is a dbFormSub
//       TextBoxSub7 is a TextBoxSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//       TextBoxSub11 is a TextBoxSub
//       TextBoxSub12 is a TextBoxSub
//       Gparticl_Garticl_Rec4 is a dbFormSub
//     dbGroupSub3 is a dbGroupSub
//       Gplan_Gplan_Descr2 is a dbFormSub
//       TextBoxSub13 is a TextBoxSub
//       TextBoxSub14 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       ButtonSub2 is a ButtonSub
//       Gparticl_Garticl_Syp2 is a dbFormSub
//     Gplan_N is a dbGridSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub2
Register_Object Company_Company_Name
Register_Object Nomisma_DD
Register_Object dbGroupSub1
Register_Object dbGroupSub2
Register_Object dbGroupSub3
Register_Object Gflagkin_DD
Register_Object Gparticl_DD
Register_Object Gparticl_Garticl_C_Code2
Register_Object Gparticl_Garticl_Par
Register_Object Gparticl_Garticl_Rate0
Register_Object Gparticl_Garticl_Rec4
Register_Object Gparticl_Garticl_Syp2
Register_Object Gplan_DD
Register_Object Gplan_Gplan_Descr2
Register_Object Gplan_N
Register_Object Gpmoves_DD
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object Gtypkin_Gtypkin_Code
Register_Object Gtypkin_Gtypkin_Descr
Register_Object Isotimia_DD
Register_Object Syscurgl_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Gpmoves
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbCmbfrm.Sub
Use dbGroup.Sub
Use Button.Sub
Use dbGrid.Sub

Use SysCurGL.DD
Use GTHHMGIO.DD
Use GTYPKIN.DD
Use GPLAN.DD
Use GFLAGKIN.DD
Use GPARTICL.DD
Use GPMOVES.DD
Use Nomisma.DD
Use Isotimia.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Gpmoves FOR ;
;
Object Gpmoves is a dbViewSubS

    //AB-StoreTopStart
    Register_Object R058
    Register_Procedure PrintCurrArthro number lnSelectedArthro##
    on_key kExit_application send none private
    On_Key Key_alt+Key_F4 send none private


    Function Check_Val_Lines Returns Integer
        Local Integer   Rval##
        local Number    lnGmove_Lines## lnGarticl_AA##
        Local String    lsRecr##

        get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_Mlines   to lnGmove_Lines##
        //get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_AA       to lnGarticl_AA##
        get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_Recr     to lsRecr##

        If ((lnGmove_Lines## eq 0) And (lnGarticl_AA## eq 0) and (lsRecr## ne '')) Move 1 to Rval##

        Function_Return Rval##
    End_Function

    Function Check_Val_Ypol Returns Integer
        Local Integer Rval##
        local Number lnYpolArthroy##

        get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_Syp2   to lnYpolArthroy##
        if (lnYpolArthroy## eq 0) Move 1 to Rval##

        Function_Return Rval##
    End_Function


    //AB-StoreTopEnd

    Set Label to "è®Ê´¨ßò Ä®ü®ò"
    Set Size to 290 514
    Set Location to 2 6

    //AB-DDOStart

    Object Syscurgl_DD is a Syscurgl_DataDictionary
    End_Object    // Syscurgl_DD

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary
    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))
    End_Object    // Gtypkin_DD

    Object Gplan_DD is a Gplan_DataDictionary

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set DDO_Server to ((self))

        //AB-StoreStart

        Set Field_Exit_msg Field Gplan.Gplan_Code  To None


        //AB-StoreEnd

    End_Object    // Gplan_DD

    Object Gflagkin_DD is a Gflagkin_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))
    End_Object    // Gflagkin_DD

    Object Gparticl_DD is a Gparticl_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))
    End_Object    // Gparticl_DD

    Object Gpmoves_DD is a Gpmoves_DataDictionary

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set DDO_Server to (Gplan_DD(self))
        Set DDO_Server to (Gparticl_DD(self))
        Set Constrain_File to Gparticl.File_Number

        //AB-StoreStart

        //AB-StoreEnd

    End_Object    // Gpmoves_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Isotimia_DD is a Isotimia_DataDictionary
        Set DDO_Server to (Nomisma_DD(self))
    End_Object    // Isotimia_DD

    Set Main_DD to (Gparticl_DD(self))
    Set Server to (Gparticl_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroup
        Set Size to 42 502
        Set Location to 1 5
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurgl.Company_name
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 135
            Set Location to 9 71
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurgl.Branch_name
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 110
            Set Location to 9 269
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Entry_Item Syscurgl.Year_year
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 61
            Set Location to 8 436
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false

            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ñ´ò†®Âò         :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 7
            Set Size to 10 55
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ìß¶°/£ò     :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 211
            Set Size to 10 47
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "ï®„©û      :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 385
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3

    End_Object    // dbGroupSub1

    Object dbGroupSub2 is a dbGroup
        Set Size to 57 502
        Set Location to 45 5
        Object Gtypkin_Gtypkin_Code is a dbFormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Entry_Item Gtypkin.Gtypkin_code
            Set Size to 13 78
            Set Location to 10 213
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure OnChange
                Send CurrRefresh
            End_Procedure

            //AB-StoreEnd

        End_Object    // Gtypkin_Gtypkin_Code

        Object Gtypkin_Gtypkin_Descr is a dbFormSub
            Entry_Item Gtypkin.Gtypkin_descr
            Set Size to 13 148
            Set Location to 10 348
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gtypkin_Gtypkin_Descr

        Object Gparticl_Garticl_Par is a dbFormSub
            Entry_Item Gparticl.Garticl_par
            Set Size to 13 425
            Set Location to 25 71
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gparticl_Garticl_Par

        Object Gparticl_Garticl_C_Code2 is a dbComboFormSub
            Entry_Item Gparticl.Garticl_c_code2
            Set Size to 13 80
            Set Location to 39 71
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gparticl_Garticl_C_Code2

        Object Gparticl_Garticl_Rate0 is a dbFormSub
            Entry_Item Gparticl.Garticl_rate0
            Set Size to 13 78
            Set Location to 41 213
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gparticl_Garticl_Rate0

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "èò®ò©´ò´†°Ê:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 27 5
            Set Size to 10 60
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "åÊ£†©£ò:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 41 6
            Set Size to 10 60
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "âÂ§û©û:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 11 165
            Set Size to 12 43
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 10 294
            Set Size to 12 52
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub10

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "à©¶´†£Âò:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 40 165
            Set Size to 12 43
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub11

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "â. è®Ê´¨ß¨ Ä®ü®¶¨:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 10 5
            Set Size to 12 65
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub12

        Object Gparticl_Garticl_Rec4 is a dbFormSub
            Entry_Item Gparticl.Garticl_recr
            Set Size to 13 66
            Set Location to 10 71
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gparticl_Garticl_Rec4

    End_Object    // dbGroupSub2

    Object dbGroupSub3 is a dbGroupSub
        Set Size to 46 502
        Set Location to 227 5
        Object Gplan_Gplan_Descr2 is a dbFormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Entry_Item Gplan.Gplan_descr1
            Set Server to (Gpmoves_DD(self))
            Set Size to 13 234
            Set Location to 9 69
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set Enabled_State to False
            //AB-StoreEnd

        End_Object    // Gplan_Gplan_Descr2

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "ìßÊ¢¶†ß¶ Ä®ü®¶¨:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 7 331
            Set Size to 13 72
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub13

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "ä¶öò®†ò©£Ê™:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 8 8
            Set Size to 13 55
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub14

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "Ä•Âò ã.ì.î:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 20 8
            Set Size to 13 55
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub15

        Object ButtonSub2 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 97
            Set Location to 23 206

            //AB-StoreStart
            Procedure onClick
                  send check_Arthro_For_Ypol to (Gmove_dd(self))

            End_Procedure
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object Gparticl_Garticl_Syp2 is a dbFormSub
            Entry_Item Gparticl.Garticl_syp2
            Set Size to 13 97
            Set Location to 8 393
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gparticl_Garticl_Syp2

    End_Object    // dbGroupSub3

    Object Gplan_N is a dbGridSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Main_File to Gpmoves.File_Number
        Set Server to (Gpmoves_DD(self))
        Set Size to 122 502
        Set Location to 104 5
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Gplan.Gplan_code
            Entry_Item Gpmoves.Gmoves_aitiol
            Entry_Item Gpmoves.Gmoves_x2
            Entry_Item Gpmoves.Gmoves_p2
        End_Row

        Set Form_Width    item 0 to 104
        Set Header_Label  item 0 to "â‡õ†°Ê™ ä¶öò®†ò©£¶Á"

        Set Form_Width    item 1 to 225
        Set Header_Label  item 1 to "Ä†´†¶¢¶öÂò"

        Set Form_Width    item 2 to 82
        Set Header_Label  item 2 to "ï®‚‡©û"

        Set Form_Width    item 3 to 82
        Set Header_Label  item 3 to "èÂ©´‡©û"


        //AB-StoreStart
        //Set Auto_Regenerate_State to false
        //set column_shadow_state item 4 to true
        //register_function fiValidateCheck_Save for Garticl_DD integer xxx## returns integer

        Set Child_Table_State to true
        set header_justification_mode item 2  to JMODE_RIGHT
        set header_justification_mode item 3  to JMODE_RIGHT

        Function Check_DD_Values Returns Integer
            Local Integer Rval##
            local Number lnYpolArthroy## lnGmove_Lines## lnGarticl_AA##

            get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_Syp2   to lnYpolArthroy##
            get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_Mlines to lnGmove_Lines##
        //    get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_AA     to lnGarticl_AA##

            If ((lnGmove_Lines## eq 0) And (lnGarticl_AA## eq 0))      Function_Return 1
            else if (lnYpolArthroy## eq 0)                              Function_Return 2

            move 0 to Rval##
            Function_Return Rval##
        End_Function


        Function Child_Exiting Integer ToObj## Returns Integer
            local integer Rval##

            Forward get Child_Exiting ToObj## to Rval##


            If ((Check_Val_Lines(Self)) Eq 1) Begin
                Send request_Delete to (GParticl_dd(self))
                Send request_Clear  to (Gpmoves(self))
            End
            if ((Check_Val_Ypol(Self)) Eq 0) Function_Return 1


            //get field_current_value of (Garticl_dd(self)) Field Garticl.Garticl_Syp2   to lnYpolArthroy##
            //if (lnYpolArthroy## ne 0) Function_Return 1


            //get field_current_value of (Garticl_dd(self)) Field Garticl.Garticl_Mlines to lnGmove_Lines##
            //get field_current_value of (Garticl_dd(self)) Field Garticl.Garticl_AA     to lnGarticl_AA##
            //If ((lnGmove_Lines## eq 0) And (lnGarticl_AA## eq 0)) Begin
            //    Send request_Delete to (Garticl_dd(self))
            //    Send request_Clear  to (Gmove_View(self))
            //End

            function_return Rval## // if non-zero do not enter
        End_function


        Function Child_entering returns Integer
            Local Integer Rval
            Local Number lnChkAA##

        //    get field_current_value of (GParticl_dd(self)) Field GParticl.Garticl_AA to lnChkAA##
            if (lnChkAA## ne 0) move 1 to Rval
            else move 0 to Rval

            Delegate Get Save_Header to rval

            Function_Return Rval
        End_Function




        Procedure Request_Cancel
            Local Integer liResult##
            //roytina ypologismo;y synnallagmatik;vn diaforvn kai ypologismoy ayt;vn BUSINESS PROSSESS
            //èêÑèÑà åÄ ãÄêââÄêÑíÄà Ü ÑÇÇêÄîÏ ãÑ íÜå ëìååÄääÄÇãÄíàâÜ ÉàÄîéêÄ ÑÄå ìèÄêïÑà

            If ((Check_Val_Lines(Self)) Eq 1) Begin
                Send request_Delete to (GParticl_dd(self))
                forward send request_Cancel
            End
            if ((Check_Val_Ypol(Self)) Eq 1) forward send request_Cancel

        end_Procedure


        Function ShowGrid Integer liCcol## Returns Number
            Local Integer liBase## liToCol##

            Get Base_Item to libase##
            get Value item (liBase## + LiCcol##) to LiToCol##
            Function_Return liToCol##
        End_Function

        Procedure Request_Clear_All
        End_Procedure

        Procedure Change_The_Value
            Set Field_Changed_Value of (Gpmoves_DD(Self)) field GPmoves.Gmoves_p2 to 0
        End_Procedure

        Function Where_To_Go Integer iColOffset Integer aiFrom Integer aiTo Returns Integer
            Local Integer ival liItemLimit liColOffset
            Get Item_Limit to liItemLimit
            If ((aiFrom gt aiTo) and (Top_Item(Self)<>0)) Set Top_Item to 0
                If (mod(aito,liItemLimit)=iColOffset) Begin
                    get Value Item (aiTo-1) to iVal
                    If (ival ne 0) Begin
                        Send Change_The_Value
                        If (aiFrom gt aiTo) Move (aiTo-1) to aiTo
                        Else Begin
                            If ((Row_Count(Self)-1) eq (Current_row(self))) Send Add_Row
                                Move (aiTo+1) to aiTo
                        End
                    End
            End
            Function_Return aiTo
        End_Function

        Procedure Item_Change Integer aiFrom Integer aiTo Returns Integer
            Local Integer iTo iBase
            // ??ú????? The noEnter Column,aiFrom,aiTo

            Move (Where_To_Go(Self,3,aiFrom,aiTo)) to aito
            Forward Get MSG_Item_Change aiFrom aiTo to ito
            //Get Base_Item To iBase
            Procedure_Return ito
        End_Procedure

        //Function Where_To_Go0 Integer aiCurRow Integer aiColOffset Integer aiTo String asBack_For Returns Integer
        //    Local Integer ival
        //    If (current_Col(Self)=aiColOffset) Begin
        //    If ((aiCurRow eq 0) and (Uppercase(asBack_For) = "BACKWARD")) Function_Return 0
        //    get Value Item (aiTo-1) to iVal
        //        If (ival ne 0) Begin
        //            If ((Row_Count(Self)-1) eq (Current_row(self))) Send Add_Row
        //            If (Uppercase(asBack_For) = "BACKWARD") Move (aiTo-1) to aiTo
        //            Else Move (aiTo+1) to aiTo
        //        End
        //    End
        //Function_Return aiTo
        //End_Function


        //AB-StoreEnd

    End_Object    // Gplan_N


    //AB-StoreStart

    Set Verify_Exit_Msg To Get_No_Confirmation


    //-----------------------------------------------------------------------

    Function Confirm_Delete_Garticl Returns Integer
        local integer rval
        Get confirm "Delete Entire Article?" to rval
        Function_Return rval
    End_Function

    // Only confirm on the saving of new records
    Function Confirm_Save_Garticl Returns Integer
        local integer NoSave Srvr Rec
        Get Server to Srvr
        Get Current_Record of Srvr to Rec
        If Rec eq 0 ;
           Get Confirm "Save this NEW Article header?" to NoSave
        Function_Return NoSave
    End_Function

    // Define alternate confirmation Messages
    //  Set Verify_operation_Msg to GET_No_Confirmation

    Set Verify_Save_MSG       to GET_No_Confirmation
    Set Verify_Delete_MSG     to GET_Confirm_delete_Garticl

    //-------------------------------------------------------------------
    // Change: Table entry checking - attempt to save header record
    //         before entering a table (this is called by table. Return
    //         a non-zero if the save failed (i.e., don't enter table)
    //-------------------------------------------------------------------

    Function Save_header returns integer
       Local integer Rec Changed Srvr
       Get Server to Srvr                // The Header DDO.
       Get Current_Record of Srvr to Rec // The current order rec#.
       Get Should_Save to Changed        // Are there any current changes?

       // If there is no record and no changes we have an error.
       If (Rec=0 AND Changed=0) Begin // no rec
          Error 300 'You must First Create & Save Main Articl Header'
          Function_Return 1
       End

       // Attempt to Save the current Record
       // request_save_no_clear does a save without clearing.
       Send request_save_no_clear

       // The save succeeded if there are now no changes, and we
       // have a saved record. Should_save tells us if we've got changes.
       // We must check the data-sets current_record property to see if
       // we have a record. If it is 0, we had no save.
       Get Should_Save to Changed  // is a save still needed
       Get Current_record of Srvr to Rec // current record of the DD
       // if no record or changes still exist, return an error code of 1
       If (Rec=0 OR Changed) ;
          Function_return 1
    end_function




    //------------------------------------------------------------------------------------NEW COde
    Procedure Request_Clear_All

    End_Procedure

    Procedure Request_Clear
        Forward Send Clear
        set PsGplan_Code to ""
        send rebuild_constraints to (gparticl_dd(self))
        set Field_Changed_Value of (gparticl_dd(self)) Field Gparticl.Garticl_C_Code2 to Year.Year_C_Code0
    End_Procedure

       Procedure Activate_View Returns Integer
             Local Integer Rval
             Local Integer Obj# Srvr#

             Forward Get MSG_Activate_View to Rval


             Get Server to Srvr#

             set PsGplan_Code to ""
             send rebuild_constraints to (gparticl_dd(self))

             if (Current_Record(Srvr#) eq 0) set Field_Changed_Value of (gparticl_dd(self)) Field Gparticl.Garticl_C_Code2 to Year.Year_C_Code0
             Set piFragmaGplanCode to 1

        End_Procedure

        Procedure  CurrRefresh
            local String lsCurr##
            Local Integer liDec##

            get field_current_Value Of (Gparticl_dd(Self)) Field Gparticl.Garticl_C_Code2 to lsCurr##



            clear Nomisma
            move lsCurr## to Nomisma.Nomisma_Code
            Find Eq Nomisma By Index.1
            move Nomisma.Dekadika to liDec##

            Set Numeric_Mask of (Gplan_N(Self)) item 2 to 14 liDec## ", *"
            Set Numeric_Mask of (Gplan_N(Self)) item 3 to 14 LiDec## ", *"
            Set Numeric_Mask of (Gparticl_Garticl_Syp2(DbGroupSub3(Self))) item 0 to 14 LiDec## ", *"
            Set Numeric_Mask of (Gparticl_Garticl_Rate0(DbGroupSub2(Self))) item 0 to 14 LiDec## ", *"

        End_Procedure

        Procedure Request_Cancel

            //roytina ypologismo;y synnallagmatik;vn diaforvn kai ypologismoy ayt;vn BUSINESS PROSSESS
            //èêÑèÑà åÄ ãÄêââÄêÑíÄà Ü ÑÇÇêÄîÏ ãÑ íÜå ëìååÄääÄÇãÄíàâÜ ÉàÄîéêÄ ÑÄå ìèÄêïÑà
            If ((Check_Val_Lines(Self)) Eq 1) Begin
                Send request_Delete to (GParticl_dd(self))
                forward send request_Cancel
            End
            if ((Check_Val_Ypol(Self)) Eq 1) forward send request_Cancel

        End_Procedure


    //AB-StoreEnd

CD_End_Object    // Gpmoves

//AB/ End_Object    // prj
