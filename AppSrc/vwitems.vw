//AB/ Project VWITEMS
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "VWITEMS"
//AB/         Set ProjectFileName to "VWITEMS.VW"

// Project Object Structure
//   VWITEMS is a dbViewSubS
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Iteml_DD is a DataDictionary
//     Witemxt_DD is a DataDictionary
//     Item_Item_Code is a dbFormSub
//     Item_Item_Descr is a dbFormSub
//     Witemkat_Witemkat_Code is a dbFormSub
//     Witemkat_Witemkat_Descr is a dbFormSub
//     Units_Units_Code is a dbFormSub
//     Units_Units_Descr is a dbFormSub
//     Item_Fpa_Pososto is a dbFormSub
//     Item_Item_Qual is a dbComboFormSub
//     Item_Wapokat_Code is a dbFormSub
//     Witemx_ is a dbGridSub
//     Witemxt_ is a dbGridSub
//     Textbox3 is a Textbox
//     Textbox5 is a Textbox
//     Textbox7 is a Textbox
//     Textbox9 is a Textbox
//     Textbox10 is a Textbox
//     Textbox11 is a Textbox
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object dbGroupSub1
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Item_Fpa_Pososto
Register_Object Item_Item_Code
Register_Object Item_Item_Descr
Register_Object Item_Item_Qual
Register_Object Item_Wapokat_Code
Register_Object Iteml_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Textbox10
Register_Object Textbox11
Register_Object Textbox3
Register_Object Textbox5
Register_Object Textbox7
Register_Object Textbox9
Register_Object Units_DD
Register_Object Units_Units_Code
Register_Object Units_Units_Descr
Register_Object VWITEMS
Register_Object Witemkat_DD
Register_Object Witemkat_Witemkat_Code
Register_Object Witemkat_Witemkat_Descr
Register_Object Witemx_
Register_Object Witemx_DD
Register_Object Witemxt_
Register_Object Witemxt_DD
Register_Object Year_Year_Year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbCmbfrm.Sub
    Use dbGrid.Sub
    Use dbGroup.Sub
    Use Txtbox.Sub

    Use UNITS.DD
    Use WITEMKAT.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMX.DD
    Use SYSCURXR.DD
    Use ITEML.DD
    Use WITEMXT.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_VWITEMS FOR VWITEMS

    Object VWITEMS is a dbViewSubS
        Set Label to "âò´òÆÈ®û©û Ñ†õÈ§"
        Set Size to 284 468
        Set Location to 3 4

        //AB-DDOStart

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))
        End_Object    // Item_DD

        Object Witemx_DD is a Witemx_DataDictionary
            Set DDO_Server to (Item_DD(self))
            Set Constrain_File to Item.File_Number
        End_Object    // Witemx_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Iteml_DD is a Iteml_DataDictionary
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))
        End_Object    // Iteml_DD

        Object Witemxt_DD is a Witemxt_DataDictionary
            Set DDO_Server to (Witemx_DD(self))
            Set Constrain_File to Witemx.File_Number
        End_Object    // Witemxt_DD

        Set Main_DD to (Item_DD(self))
        Set Server to (Item_DD(self))

        //AB-DDOEnd

        Object Item_Item_Code is a dbFormSub
            Entry_Item Item.Item_code
            Set Size to 13 66
            Set Location to 29 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart





            //AB-StoreEnd

        End_Object    // Item_Item_Code

        Object Item_Item_Descr is a dbFormSub
            Entry_Item Item.Item_descr
            Set Size to 13 296
            Set Location to 29 151
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Item_Item_Descr

        Object Witemkat_Witemkat_Code is a dbFormSub
            Entry_Item Witemkat.Witemkat_code
            Set Size to 13 66
            Set Location to 45 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Witemkat_Witemkat_Code

        Object Witemkat_Witemkat_Descr is a dbFormSub
            Entry_Item Witemkat.Witemkat_descr
            Set Size to 13 296
            Set Location to 44 151
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Witemkat_Witemkat_Descr

        Object Units_Units_Code is a dbFormSub
            Entry_Item Units.Units_code
            Set Size to 13 66
            Set Location to 60 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Units_Units_Code

        Object Units_Units_Descr is a dbFormSub
            Entry_Item Units.Units_descr
            Set Size to 13 296
            Set Location to 60 151
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Units_Units_Descr

        Object Item_Fpa_Pososto is a dbFormSub
            Entry_Item Fpa.Fpa_pososto
            Set Size to 13 66
            Set Location to 75 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Set Points to 2

            //AB-StoreEnd

        End_Object    // Item_Fpa_Pososto

        Object Item_Item_Qual is a dbComboFormSub
            Entry_Item Item.Item_qual
            Set Size to 13 66
            Set Location to 91 76
            Set Label_Col_Offset to 2
        End_Object    // Item_Item_Qual

        Object Item_Wapokat_Code is a dbFormSub
            Entry_Item Item.Wapokat_code
            Set Size to 13 66
            Set Location to 107 77
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Item_Wapokat_Code

        Object Witemx_ is a dbGridSub
            Set Main_File to Witemx.File_Number
            Set Server to (Witemx_DD(self))
            Set Ordering to 1
            Set Size to 54 372
            Set Location to 126 76
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Witemx.Year_year
                Entry_Item Witemx.Witemx_code
                Entry_Item Witemx.Witemx_descr
                Entry_Item Witemx.Witemx_yeardesc
                Entry_Item Witemx.Item_apokat_cod
            End_Row

            Set Form_Width    item 0 to 45
            Set Header_Label  item 0 to "ï®„©û :          "

            Set Form_Width    item 1 to 74
            Set Header_Label  item 1 to "â‡õ†°Ê™ Ñ†õ¶¨™"

            Set Form_Width    item 2 to 131
            Set Header_Label  item 2 to "èú®†ö®ò≠„ ÑÂõ¶¨™"

            Set Form_Width    item 3 to 68
            Set Header_Label  item 3 to "Ñ´¶™ Ä§ò≠¶®·™"

            Set Form_Width    item 4 to 47
            Set Header_Label  item 4 to "Åò©. Äß¶ü."


            //AB-StoreStart

            Set Column_Option Item 4 to NoEnter true


            //AB-StoreEnd

        End_Object    // Witemx_

        Object Witemxt_ is a dbGridSub
            Set Main_File to Witemxt.File_Number
            Set Server to (Witemxt_DD(self))
            Set Ordering to 4
            Set Size to 70 372
            Set Location to 186 77
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Witemxt.Axia
                Entry_Item Witemxt.Axia0
                Entry_Item Witemxt.Value_date
            End_Row

            Set Form_Width    item 0 to 139
            Set Header_Label  item 0 to " Ä•Âò"

            Set Form_Width    item 1 to 147
            Set Header_Label  item 1 to "Ä•Âò íú¢†°„"

            Set Form_Width    item 2 to 78
            Set Header_Label  item 2 to "Ü£ú®¶£.à©ÆÁ¶™"


            //AB-StoreStart

            Procedure End_Construct_Object
                Integer iDecs
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
                Set Points Item 0 to iDecs
                Set Points Item 1 to iDecs
                Set Numeric_Mask Item 0 to 14 iDecs '*, '
                Set Numeric_Mask Item 1 to 14 iDecs '*, '
            End_Procedure

            //AB-StoreEnd

        End_Object    // Witemxt_

        Object Textbox3 is a Textbox
            Set Label to "â‡õ†°Ê™ Ñ†õ¶¨™"
            Set Location to 29 7
            Set Size to 10 53
        End_Object    // Textbox3

        Object Textbox5 is a Textbox
            Set Label to "âò´ûö¶®Âò Ñ†õ¶¨™"
            Set Location to 46 7
            Set Size to 10 61
        End_Object    // Textbox5

        Object Textbox7 is a Textbox
            Set Label to "â‡õ.ã¶§.ã‚´®û©û™"
            Set Location to 60 7
            Set Size to 10 67
        End_Object    // Textbox7

        Object Textbox9 is a Textbox
            Set Label to "% îèÄ"
            Set Location to 75 7
            Set Size to 10 60
        End_Object    // Textbox9

        Object Textbox10 is a Textbox
            Set Label to "è¶†Ê´û´ò"
            Set Location to 91 7
            Set Size to 10 49
        End_Object    // Textbox10

        Object Textbox11 is a Textbox
            Set Label to "Åò©†°„ Äß¶ü„°û"
            Set Location to 107 7
            Set Size to 10 56
        End_Object    // Textbox11

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 444
            Set Location to -2 3
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 91
                Set Location to 9 54
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 103
                Set Location to 9 203
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub

                //AB-StoreTopStart

                //AB-StoreTopEnd

                Entry_Item Syscurxr.Year_descr
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 61
                Set Location to 9 371
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false

                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "Ñ´ò†®úÂò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 10
                Set Size to 10 31
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE

                //AB-StoreStart

                //AB-StoreEnd

            End_Object    // TextBoxSub1

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 153
                Set Size to 10 39
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 11 322
                Set Size to 10 40
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGroupSub1


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            integer rval
            set value of (company_company_name(dbgroupsub1(self))) to syscurxr.company_name
            set value of (branch_branch_name(dbgroupsub1(self))) to syscurxr.branch_name
            set value of (year_year_year(dbgroupsub1(self))) to syscurxr.year_descr

            Forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure


        //AB-StoreEnd

    End_Object    // VWITEMS

//AB/     End_Object    // prj
