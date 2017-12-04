//AB/ Project V15:APOTHEMATA
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V15:APOTHEMATA"
//AB/         Set ProjectFileName to "V15.vw"

// Project Object Structure
//   V15 is a dbView
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Wam_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     Wax_Wax_Recr is a dbFormSub
//     Castores_Castores_Code is a dbFormSub
//     The_Table is a dbGrid
//     TextBoxSub4 is a TextBoxSub
//     BitmapFlatButtonSub1 is a BitmapFlatButtonSub

// Register all objects
Register_Object BitmapFlatButtonSub1
Register_Object Branch_Branch_Name
Register_Object Castores_Castores_Code
Register_Object Company_Company_Name
Register_Object dbGroupSub1
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object The_Table
Register_Object Units_DD
Register_Object V15
Register_Object Wam_DD
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wax_Wax_Recr
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use r15.rv
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use Flatbtn.Sub

    Use UNITS.DD
    Use WITEMKAT.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMX.DD
    Use WAPOKAT.DD
    Use WAPOMAST.DD
    Use WAX.DD
    Use WAM.DD
    Use SYSCURXR.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V15 FOR V15

    Object V15 is a dbView

        //AB-StoreTopStart
        property string pswax public ''
        //AB-StoreTopEnd

        Set Label to "âò´·©´ò©û Äß¶üú£·´‡§ Äß¶ü„°û™"
        Set Size to 294 521
        Set Location to 1 2

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
        End_Object    // Witemx_DD

        Object Wapokat_DD is a Wapokat_DataDictionary
        End_Object    // Wapokat_DD

        Object Wapomast_DD is a Wapomast_DataDictionary
            Set DDO_Server to (Wapokat_DD(self))
        End_Object    // Wapomast_DD

        Object Wax_DD is a Wax_DataDictionary
            Set DDO_Server to (Wapomast_DD(self))
        End_Object    // Wax_DD

        Object Wam_DD is a Wam_DataDictionary
            Set DDO_Server to (Witemx_DD(self))
            Set DDO_Server to (Wax_DD(self))
            Set Constrain_File to Wax.File_Number

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // Wam_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Wax_DD(self))
        Set Server to (Wax_DD(self))

        //AB-DDOEnd

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 504
            Set Location to -2 1
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 123
                Set Location to 9 81
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 110
                Set Location to 9 269
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
                Set Location to 8 440
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false

                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "Ñ´ò†®Âò:"
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
                Set Location to 10 211
                Set Size to 10 47
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
                Set Location to 10 391
                Set Size to 10 40
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGroupSub1

        Object Wax_Wax_Recr is a dbFormSub
            Entry_Item Wax.Wax_recr
            Set Size to 13 123
            Set Location to 31 82
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            procedure prompt
                set pswapokat of (wax(self)) to ''
                forward send prompt
            end_procedure







            //AB-StoreEnd

        End_Object    // Wax_Wax_Recr

        Object Castores_Castores_Code is a dbFormSub
            Entry_Item Wax.Wax_descr
            Set Size to 13 185
            Set Location to 31 271
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            procedure prompt
                set pswapokat of (wax(self)) to ''
                forward send prompt
            end_procedure





            //AB-StoreEnd

        End_Object    // Castores_Castores_Code

        Object The_Table is a dbGrid
            Set Main_File to Wam.File_Number
            Set Server to (Wam_DD(self))
            Set Ordering to 1
            Set Size to 225 507
            Set Location to 50 4
            Set Color to 14280447
            Set CurrentRowColor to 11783679
            Set CurrentCellColor to 11783679
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Wam.Witemx_code
                Entry_Item Witemx.Witemx_descr
                Entry_Item Wam.Wam_qty_eisa
                Entry_Item Wam.Wam_qty_exa
                Entry_Item Wam.Wam_amt_eisa
                Entry_Item Wam.Wam_amt_exa
                Entry_Item Wam.Wam_qty_apoth
                Entry_Item Wam.Wam_amt_apoth
            End_Row

            Set Form_Width    item 0 to 58
            Set Header_Label  item 0 to "â‡õ†°Ê™ "

            Set Form_Width    item 1 to 100
            Set Header_Label  item 1 to "èú®†ö®ò≠„"

            Set Form_Width    item 2 to 56
            Set Header_Label  item 2 to "è¶©Ê´.Ñ†©òö."

            Set Form_Width    item 3 to 56
            Set Header_Label  item 3 to "è¶©Ê´.Ñ•òö."

            Set Form_Width    item 4 to 60
            Set Header_Label  item 4 to "Ä•Âò Ñ†©òö."

            Set Form_Width    item 5 to 59
            Set Header_Label  item 5 to "Ä•Âò Ñ•òö."

            Set Form_Width    item 6 to 55
            Set Header_Label  item 6 to "ìß¶¢.è¶©¶´."

            Set Form_Width    item 7 to 56
            Set Header_Label  item 7 to "ìßÊ¢.Ä•Âò™"


            //AB-StoreStart
            set read_only_state to true
            Set child_table_state        to True
            set points item 2 to 1
            set points item 3 to 1
            set points item 6 to 1
            Procedure End_Construct_Object
                Integer iDecimal
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos  SysCurXr.C_Code0  to    iDecimal
                Set Points Item 4 to iDecimal
                Set Points Item 5 to iDecimal
                Set Points Item 7 to iDecimal
                Set Numeric_Mask Item 4 to 14 idecimal '*, '
                Set Numeric_Mask Item 5 to 14 iDecimal '*, '
                Set Numeric_Mask Item 7 to 14 iDecimal '*, '
            End_Procedure











            //AB-StoreEnd

        End_Object    // The_Table

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Äß¶ü„°û"
            Set Location to 33 10
            Set Size to 10 37
            Set FontWeight to 800
        End_Object    // TextBoxSub4

        Object BitmapFlatButtonSub1 is a BitmapFlatButtonSub
            Set Size to 24 29
            Set Location to 25 471
            Set Bitmap to "printer.bmp"

            //AB-StoreStart
            procedure onclick
                string swax
                get value of wax_wax_recr to swax
                set pswax of (r15(self)) to swax
                Send runwamreport to (wamWQLReport(r15(Self)))
            end_procedure







            //AB-StoreEnd

        End_Object    // BitmapFlatButtonSub1


        //AB-StoreStart





        //AB-StoreEnd

    End_Object    // V15


    //AB-StoreStart






    //AB-StoreEnd

//AB/     End_Object    // prj
