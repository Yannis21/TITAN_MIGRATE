//AB/ Project Itemold
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Itemold"
//AB/     Set ProjectFileName to "Itemold.VW"
//AB/     Set GenerateFileName to "Item.vw"

// Project Object Structure
//   Itemold is a dbView
//     witemx_DD2 is a witemx_DataDictionary
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     Witemcld_DD is a DataDictionary
//     Itemd_DD is a DataDictionary
//     Witemxt_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//     Container1 is a dbContainer3d
//       Item_Item_code is a dbForm
//       Item_Item_descr is a dbForm
//       Witemkat_Witemkat_descr is a dbForm
//       Item_Wapokat_Code is a dbFormSub
//       FormSub1 is a FormSub
//       Units_Units_descr is a dbForm
//       Item_Fpa_Pososto is a dbFormSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       Item_Item_Analysh is a dbComboForm
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       Textbox1 is a Textbox
//       Item_Item_Qual is a dbComboFormSub
//       Textbox2 is a Textbox
//       TextBoxSub16 is a TextBoxSub
//       Item_Item_Orio is a dbFormSub
//       Item_Codeglpol is a dbFormSub
//       Item_Codeglago is a dbFormSub
//       Item_Link1 is a dbFormSub
//       Item_Link2 is a dbFormSub
//       Witemx_Mesosta_Xre is a dbFormSub
//       Witemx_Mesosta_Pis is a dbFormSub
//       TextBoxSub18 is a TextBoxSub
//       TextBoxSub19 is a TextBoxSub
//       TextBoxSub20 is a TextBoxSub
//       TextBoxSub21 is a TextBoxSub
//       TextBoxSub25 is a TextBoxSub
//       TextBoxSub26 is a TextBoxSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         the_table is a dbGridSub
//       dbTabPageSubS2 is a dbTabPageSubS
//         Witemx_ is a dbGridSub
//       dbTabPageSubS3 is a dbTabPageSubS
//         Witemxt_ is a dbGridSub
//         TextBoxSub22 is a TextBoxSub
//       dbTabPageSubS4 is a dbTabPageSubS
//         Witemcl_ is a dbGridSub
//       dbTabPageSubS5 is a dbTabPageSubS
//         TextBoxSub23 is a TextBoxSub
//         Witemcl_Client_Code is a dbFormSub
//         FormSub2 is a FormSub
//         Witemcld_ is a dbGridSub
//         TextBoxSub24 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object Container1
Register_Object dbGroupSub1
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object dbTabPageSubS2
Register_Object dbTabPageSubS3
Register_Object dbTabPageSubS4
Register_Object dbTabPageSubS5
Register_Object FormSub1
Register_Object FormSub2
Register_Object Fpa_DD
Register_Object Item_Codeglago
Register_Object Item_Codeglpol
Register_Object Item_DD
Register_Object Item_Fpa_Pososto
Register_Object Item_Item_Analysh
Register_Object Item_Item_code
Register_Object Item_Item_descr
Register_Object Item_Item_Orio
Register_Object Item_Item_Qual
Register_Object Item_Link1
Register_Object Item_Link2
Register_Object Item_Wapokat_Code
Register_Object Itemd_DD
Register_Object Itemold
Register_Object Syscurxr_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub2
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub26
Register_Object TextBoxSub3
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object the_table
Register_Object Units_DD
Register_Object Units_Units_descr
Register_Object Witemcl_
Register_Object Witemcl_Client_Code
Register_Object Witemcl_DD
Register_Object Witemcld_
Register_Object Witemcld_DD
Register_Object Witemkat_DD
Register_Object Witemkat_Witemkat_descr
Register_Object Witemx_
Register_Object Witemx_DD
Register_Object Witemx_Mesosta_Pis
Register_Object Witemx_Mesosta_Xre
Register_Object Witemxt_
Register_Object Witemxt_DD
Register_Object witemx_DD2
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use Form.Sub
Use dbCmbfrm.Sub
Use dbTabDlgS.Sub
Use dbGrid.Sub

Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use SYSCURXR.DD
Use WITEMCL.DD
Use WITEMCLD.DD
Use ITEMD.DD
Use WITEMXT.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Itemold FOR Itemold

Object Itemold is a dbView

    //AB-StoreTopStart
    use clients.dd
    use iteml.dd
    use wapokat.dd
    Object witemx_DD2 is a witemx_DataDictionary
    End_Object    // Ctypkin_DD

    Function Save_header returns integer
       Local integer Rec Changed Srvr
       Get Server to Srvr
       Get Current_Record of Srvr to Rec
       Get Should_Save to Changed

       If (Rec=0 AND Changed=0) Begin // no rec
          Error 300 'è®‚ßú† å· è®¶ûöûüúÂ Ñöö®ò≠„ ÑÂõ¶¨™ !!'
          Function_Return 1
       End

    //   Send request_save to caitems_dd

       Get Should_Save to Changed
       Get Current_record of Srvr to Rec
       If (Rec=0 OR Changed) ;
          Function_return 1
    end_function


    //AB-StoreTopEnd

    Set Label to "Ä®ÆúÂ¶ ú†õÈ§"
    Set Size to 288 469
    Set Location to 2 3

    //AB-DDOStart

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
        set allow_foreign_new_save_state to  true
        //AB-StoreEnd

    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))
        Set Constrain_File to Item.File_Number
    End_Object    // Witemx_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Witemcl_DD is a Witemcl_DataDictionary
        Set DDO_Server to (Item_DD(self))
        Set Constrain_File to Item.File_Number
    End_Object    // Witemcl_DD

    Object Witemcld_DD is a Witemcld_DataDictionary
        Set DDO_Server to (Witemcl_DD(self))
        Set Constrain_File to Witemcl.File_Number
    End_Object    // Witemcld_DD

    Object Itemd_DD is a Itemd_DataDictionary
        Set DDO_Server to (Item_DD(self))
        Set Constrain_File to Item.File_Number
    End_Object    // Itemd_DD

    Object Witemxt_DD is a Witemxt_DataDictionary
        Set DDO_Server to (Witemx_DD(self))
        Set Constrain_File to Witemx.File_Number
    End_Object    // Witemxt_DD

    Set Main_DD to (Item_DD(self))
    Set Server to (Item_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 449
        Set Location to -2 5
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 83
            Set Location to 9 74
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
            Set Location to 9 215
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
            Set Location to 9 383
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false

            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub8 is a TextBoxSub
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

        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 165
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 334
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub10

    End_Object    // dbGroupSub1

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 128 448
        Set Location to 26 5
        Object Item_Item_code is a dbForm
            Entry_Item Item.Item_code
            Set Size to 13 87
            Set Location to 4 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure refresh integer iMode
                local integer iRec
                string lskind##
                Forward Send Refresh iMode
                Get Current_record of (item_dd(Current_object)) to iRec
                get field_current_value of (item_dd(current_object)) field item.item_analysh to lskind##
                set visible_state of (the_table(dbTabPageSubS1(dbTabDialogSubS1(current_object)))) to false
                if (lskind## eq "2") set visible_state of (the_table(dbTabPageSubS1(dbTabDialogSubS1(current_object)))) to true
            end_procedure







            //AB-StoreEnd

        End_Object    // Item_Item_code

        Object Item_Item_descr is a dbForm
            Entry_Item Item.Item_descr
            Set Size to 13 273
            Set Location to 4 165
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // Item_Item_descr

        Object Witemkat_Witemkat_descr is a dbForm
            Entry_Item Witemkat.Witemkat_descr
            Set Size to 13 362
            Set Location to 20 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Witemkat_Witemkat_descr

        Object Item_Wapokat_Code is a dbFormSub
            Entry_Item Item.Wapokat_code
            Set Size to 13 87
            Set Location to 34 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            procedure onchange
                string sapokat
                get value item 0 to sapokat
                move sapokat to wapokat.wapokat_code
                find eq wapokat by index.1
                if (found) set value of (formsub1(self)) to wapokat.wapokat_descr
                else       set value of (formsub1(self)) to ''
            end_procedure




            //AB-StoreEnd

        End_Object    // Item_Wapokat_Code

        Object FormSub1 is a FormSub
            Set Size to 13 273
            Set Location to 34 165
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub1

        Object Units_Units_descr is a dbForm
            Entry_Item Units.Units_descr
            Set Size to 13 87
            Set Location to 49 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Units_Units_descr

        Object Item_Fpa_Pososto is a dbFormSub
            Entry_Item Fpa.Fpa_pososto
            Set Size to 13 42
            Set Location to 65 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Set Numeric_Mask Item 0 to 4 2

            //AB-StoreEnd

        End_Object    // Item_Fpa_Pososto

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ã¶§·õò ã‚´®û©û™"
            Set Location to 50 2
            Set Size to 10 66
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ ÑÂõ¶¨™"
            Set Location to 6 2
            Set Size to 10 60
        End_Object    // TextBoxSub3

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "% îèÄ"
            Set Location to 65 2
            Set Size to 10 60
        End_Object    // TextBoxSub5

        Object Item_Item_Analysh is a dbComboForm
            Entry_Item Item.Item_analysh
            Set Size to 13 87
            Set Location to 80 76
            Set Form_Border Item 0 to Border_Normal
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Entry_State to FALSE
            Set Undefined_Save_Mode to cb_err_update_none
            Set Undefined_Display_Mode to cb_err_update_none

            //AB-StoreStart





            //AB-StoreEnd

        End_Object    // Item_Item_Analysh

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Ä§·¢¨©û ÑÂõ¶¨™"
            Set Location to 81 2
            Set Size to 10 57
        End_Object    // TextBoxSub6

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "âò´ûö¶®Âò ÑÂõ¶¨™"
            Set Location to 20 2
            Set Size to 10 61
        End_Object    // TextBoxSub15

        Object Textbox1 is a Textbox
            Set Label to "è¶†Ê´û´ò"
            Set Location to 97 2
            Set Size to 10 49
        End_Object    // Textbox1

        Object Item_Item_Qual is a dbComboFormSub
            Entry_Item Item.Item_qual
            Set Size to 13 87
            Set Location to 95 76
            Set Label_Col_Offset to 2
        End_Object    // Item_Item_Qual

        Object Textbox2 is a Textbox
            Set Label to "âò´ûö¶®Âò  Äß¶ü„°û™"
            Set Location to 34 2
            Set Size to 10 73
        End_Object    // Textbox2

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "é®†¶ Ä©≠ò¢úÂò™"
            Set Location to 111 2
            Set Size to 10 61
        End_Object    // TextBoxSub16

        Object Item_Item_Orio is a dbFormSub
            Entry_Item Item.Item_orio
            Set Size to 13 42
            Set Location to 110 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set Points Item 0 to 1
            //AB-StoreEnd

        End_Object    // Item_Item_Orio

        Object Item_Codeglpol is a dbFormSub
            Entry_Item Item.Codeglpol
            Set Size to 13 76
            Set Location to 48 363
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Item_Codeglpol

        Object Item_Codeglago is a dbFormSub
            Entry_Item Item.Codeglago
            Set Size to 13 76
            Set Location to 62 363
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Item_Codeglago

        Object Item_Link1 is a dbFormSub
            Entry_Item Item.Link1
            Set Size to 13 76
            Set Location to 75 363
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Item_Link1

        Object Item_Link2 is a dbFormSub
            Entry_Item Item.Link2
            Set Size to 13 76
            Set Location to 87 363
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Item_Link2

        Object Witemx_Mesosta_Xre is a dbFormSub
            Entry_Item Witemx.Mesosta_xre
            Set Server to (Witemx_DD(self))
            Set Size to 13 76
            Set Location to 100 363
            Set TextColor to clNavy
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            set enabled_state to false
            Procedure End_Construct_Object
                String  sNom
                Integer iDecs
                Forward Send End_Construct_Object
                Move SysCurxr.C_Code0 to sNom
                Clear Nomisma
                Move sNom to Nomisma.Nomisma_Code
                Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
                If (Found=1)    Move Nomisma.Dekadika to iDecs
                Else            Move 0 to iDecs
                // èò®òõ¶Æ„: ò§ ´¶ ôò©†°Ê §¶£†©£ò Æ®„©û™ ÉÑå úÆú† õú°òõ†°·
                // ´Ê´ú ú•' ¶®†©£¶Á ô·ù¶¨£ú ú£ú†™ 2
                If (iDecs=0) Move 2 to iDecs
                Set Points          Item 0 to       iDecs
                Set Numeric_Mask    Item 0 to 14    iDecs ' ,*'

            End_Procedure
            //AB-StoreEnd

        End_Object    // Witemx_Mesosta_Xre

        Object Witemx_Mesosta_Pis is a dbFormSub
            Entry_Item Witemx.Mesosta_pis
            Set Server to (Witemx_DD(self))
            Set Size to 13 76
            Set Location to 113 363
            Set TextColor to clNavy
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            set enabled_state to false
            Procedure End_Construct_Object
                String  sNom
                Integer iDecs
                Forward Send End_Construct_Object
                Move SysCurxr.C_Code0 to sNom
                Clear Nomisma
                Move sNom to Nomisma.Nomisma_Code
                Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
                If (Found=1)    Move Nomisma.Dekadika to iDecs
                Else            Move 0 to iDecs
                // èò®òõ¶Æ„: ò§ ´¶ ôò©†°Ê §¶£†©£ò Æ®„©û™ ÉÑå úÆú† õú°òõ†°·
                // ´Ê´ú ú•' ¶®†©£¶Á ô·ù¶¨£ú ú£ú†™ 2
                If (iDecs=0) Move 2 to iDecs
                Set Points          Item 0 to       iDecs
                Set Numeric_Mask    Item 0 to 14    iDecs ' ,*'

            End_Procedure

            //AB-StoreEnd

        End_Object    // Witemx_Mesosta_Pis

        Object TextBoxSub18 is a TextBoxSub
            Set Label to "ãú©¶©´òü£†°„ í†£„ Äö¶®·™"
            Set Location to 103 252
            Set Size to 10 97
        End_Object    // TextBoxSub18

        Object TextBoxSub19 is a TextBoxSub
            Set Label to "ãú©¶©´òü£†°„ í†£„ èÈ¢û©û™"
            Set Location to 116 252
            Set Size to 10 97
        End_Object    // TextBoxSub19

        Object TextBoxSub20 is a TextBoxSub
            Set Label to "í£„£ò ¢¶ö/©£¶Á Ç.ä ß‡¢„©ú‡§"
            Set Location to 50 252
            Set Size to 10 107
        End_Object    // TextBoxSub20

        Object TextBoxSub21 is a TextBoxSub
            Set Label to "í£„£ò ¢¶ö/©£¶Á Ç.ä òö¶®È§"
            Set Location to 63 252
            Set Size to 10 101
        End_Object    // TextBoxSub21

        Object TextBoxSub25 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ ëÁ§õú©û™ 1"
            Set Location to 76 252
            Set Size to 10 73
        End_Object    // TextBoxSub25

        Object TextBoxSub26 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ ëÁ§õú©û™ 2"
            Set Location to 88 252
            Set Size to 10 71
        End_Object    // TextBoxSub26


        //AB-StoreStart

        //AB-StoreEnd

    End_Object    // Container1

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 116 450
        Set Location to 156 5
        Set Border_Style to Border_Normal
        Object dbTabPageSubS1 is a dbTabPageSubS
            Set Label to "dbTabPageSubS1"
            Object the_table is a dbGridSub

                //AB-StoreTopStart





                //AB-StoreTopEnd

                Set Main_File to Itemd.File_Number
                Set Server to (Itemd_DD(self))
                Set Size to 92 433
                Set Location to 2 1
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Itemd.Recnum
                    Entry_Item Itemd.Itemd_code
                    Entry_Item (Fsitem(self,itemd.itemd_code))
                    Entry_Item Itemd.Itemd_qty
                    Entry_Item Itemd.Itemd_fpa
                    Entry_Item Itemd.Itemd_axia
                    Entry_Item Itemd.Itemd_total
                End_Row

                Set Form_Width    item 0 to 0
                Set Header_Label  item 0 to "Recnum"

                Set Form_Width    item 1 to 80
                Set Header_Label  item 1 to "â‡õ†°Ê™ Ñ†õ¶¨™"

                Set Form_Width    item 2 to 110
                Set Header_Label  item 2 to "èú®†ö®ò≠„"

                Set Form_Width    item 3 to 60
                Set Header_Label  item 3 to "è¶©Ê´û´ò"

                Set Form_Width    item 4 to 30
                Set Header_Label  item 4 to "î.è.Ä"

                Set Form_Width    item 5 to 75
                Set Header_Label  item 5 to "í†£„ ã¶§·õ¶™"

                Set Form_Width    item 6 to 71
                Set Header_Label  item 6 to "ëÁ§¶¢¶ Ä•Âò™"


                //AB-StoreStart

                Set Column_Option Item 0 to NoEnter True

                Set Column_Shadow_State item 6 to true

                Procedure End_Construct_Object
                    Integer iDecs
                    Forward Send End_Construct_Object
                    Get fiDekadika_Nomismatos  SysCurXr.C_Code0  to    iDecs
                    Set Points Item 3 to 1
                    Set Points Item 5 to iDecs
                    Set Points Item 6 to iDecs
                    Set Numeric_Mask Item 3 to 14 1 ' ,*'
                    Set Numeric_Mask Item 5 to 14 iDecs ' ,*'
                    Set Numeric_Mask Item 6 to 14 iDecs ' ,*'
                End_Procedure

                procedure item_change integer fromi integer toi returns integer
                    local integer rval icol iBase_item iGridID iCurrItem
                    Local String rval##
                    Move (the_table(dbTabPageSubS1(dbTabDialogSubS1(self)))) to iGridID
                    forward get msg_item_change fromi toi to rval
                    if (focus(Desktop) = iGridID) begin
                        Get Column fromi to iCol
                        if (icol=1) begin
                            Get Base_Item to iBase_item
                            Get Value Item (iBase_item+1) to rval##
                            Move (Fsitem(self,Rval##))   to rval##
                            Set value item (iBase_item+2) to Rval##
                        End
                    end
                    procedure_return rval
                end_procedure

                Function Child_entering returns Integer
                    Integer rval
                    Forward Get Child_Entering to rVal
                    If (NOT(rVal)) Begin
                        If (Should_Save(item_DD(Self))) Send Request_Save to item_DD
                    End

                    function_return rVal
                End_Function











































                //AB-StoreEnd

            End_Object    // the_table


            //AB-StoreStart
            set label to "Ä§·¢¨©û ëÁ§üú´‡§ Ñ†õÈ§"
            //AB-StoreEnd

        End_Object    // dbTabPageSubS1

        Object dbTabPageSubS2 is a dbTabPageSubS
            Set Label to "dbTabPageSubS2"
            Object Witemx_ is a dbGridSub
                Set Main_File to Witemx.File_Number
                Set Server to (Witemx_DD(self))
                Set Size to 91 378
                Set Location to 2 0
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

                Set Form_Width    item 4 to 53
                Set Header_Label  item 4 to "âò´ûö. Äß¶ü."


                //AB-StoreStart

                Set Column_Option Item 4 to NoEnter true
                Function Child_entering returns Integer
                    Integer rval
                    Forward Get Child_Entering to rVal
                    If (NOT(rVal)) Begin
                        If (Should_Save(witemx_DD(Self))) Send Request_Save to witemx_DD
                    End
                    function_return rVal
                End_Function





                //AB-StoreEnd

            End_Object    // Witemx_


            //AB-StoreStart
            set label to "ÑÂõû ï®„©ú‡™"
            //AB-StoreEnd

        End_Object    // dbTabPageSubS2

        Object dbTabPageSubS3 is a dbTabPageSubS
            Set Label to "dbTabPageSubS3"
            Object Witemxt_ is a dbGridSub
                Set Main_File to Witemxt.File_Number
                Set Server to (Witemxt_DD(self))
                Set Size to 83 439
                Set Location to 15 1
                Set Wrap_State to TRUE
                Set Border_Style to Border_Normal

                Begin_Row
                    Entry_Item Witemxt.Value_date
                    Entry_Item Witemxt.Qty
                    Entry_Item Witemxt.Axia0
                    Entry_Item Witemxt.Pcdisc
                    Entry_Item Witemxt.Orio
                    Entry_Item Witemxt.Pagioorio
                    Entry_Item Witemxt.Pcdiscantlia
                End_Row

                Set Form_Width    item 0 to 62
                Set Header_Label  item 0 to "Ü£/§Âò à©ÆÁ¶™"

                Set Form_Width    item 1 to 59
                Set Header_Label  item 1 to "è¶©Ê´û´ò ÑÈ™"

                Set Form_Width    item 2 to 74
                Set Header_Label  item 2 to "âòüò®„ ´†£„ ã¶§."

                Set Form_Width    item 3 to 59
                Set Header_Label  item 3 to "è¶©¶©´Ê Ñ°ß"

                Set Form_Width    item 4 to 55
                Set Header_Label  item 4 to "é®†¶ â¨ô†°È§"

                Set Form_Width    item 5 to 60
                Set Header_Label  item 5 to "è·ö†¶ é®Â¶¨"

                Set Form_Width    item 6 to 61
                Set Header_Label  item 6 to "è¶©¶©´Ê Ñ°ß"


                //AB-StoreStart
                Procedure End_Construct_Object
                    Integer iDecs
                    Forward Send End_Construct_Object
                    Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
                    Set Points Item 2 to iDecs
                    Set Points Item 5 to iDecs
                    Set Numeric_Mask Item 2 to 14 iDecs ' ,*'
                    Set Numeric_Mask Item 5 to 14 iDecs ' ,*'

                End_Procedure


                Function Child_entering returns Integer
                    Integer rval
                    Forward Get Child_Entering to rVal
                    If (NOT(rVal)) Begin
                        If (Should_Save(witemxt_DD(Self))) Send Request_Save to witemxt_DD
                    End
                    function_return rVal
                End_Function








                //AB-StoreEnd

            End_Object    // Witemxt_

            Object TextBoxSub22 is a TextBoxSub
                Set Label to "ë´òüú®‚™ ö†ò ï®„©û Ä§´¢Âò™"
                Set Color to clNavy
                Set TextColor to clYellow
                Set Location to 4 253
                Set Size to 10 148
                Set FontWeight to 800
                Set Justification_Mode to jMode_Center
            End_Object    // TextBoxSub22


            //AB-StoreStart
            set label to "í†£¶°ò´·¢¶ö¶™"

            //AB-StoreEnd

        End_Object    // dbTabPageSubS3

        Object dbTabPageSubS4 is a dbTabPageSubS
            Set Label to "dbTabPageSubS4"
            Object Witemcl_ is a dbGridSub
                Set Main_File to Witemcl.File_Number
                Set Server to (Witemcl_DD(self))
                Set Size to 92 436
                Set Location to 2 3
                Set Color to 14280447
                Set CurrentRowColor to 11783679
                Set CurrentCellColor to 11783679
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Witemcl.Recnum
                    Entry_Item Witemcl.Client_code
                    Entry_Item (Fsclient(self,witemcl.client_code))
                    Entry_Item Witemcl.Client_itemcode
                    Entry_Item Witemcl.Client_date
                    Entry_Item Witemcl.Client_price
                End_Row

                Set Form_Width    item 0 to 0
                Set Header_Label  item 0 to "Recnum"

                Set Form_Width    item 1 to 75
                Set Header_Label  item 1 to "â‡õ.è®¶£ûüú¨´„"

                Set Form_Width    item 2 to 106
                Set Header_Label  item 2 to "Ñß‡§¨£Âò"

                Set Form_Width    item 3 to 89
                Set Header_Label  item 3 to "â‡õ.ÑÂõ¶¨™ è®¶£ûü."

                Set Form_Width    item 4 to 79
                Set Header_Label  item 4 to "í'Ü£/§Âò Ñ†©òö‡ö„™ "

                Set Form_Width    item 5 to 79
                Set Header_Label  item 5 to "í'í†£„ Ñ†©òö‡ö„™"


                //AB-StoreStart
                set child_table_state to true
                Set Column_Option Item 0 to NoEnter True
                Procedure End_Construct_Object
                    Integer iDecs
                    Forward Send End_Construct_Object
                    Get fiDekadika_Nomismatos  SysCurXr.C_Code0  to    iDecs
                    Set Points Item 5 to iDecs
                    Set Numeric_Mask Item 5 to 14 iDecs ' ,*'
                End_Procedure

                procedure prompt
                    Set psModule Of (sl100(self)) to '02'
                    forward send prompt
                end_procedure
                procedure item_change integer fromi integer toi returns integer
                    local integer rval icol iBase_item ici iGridID
                    Local String rval##
                    forward get msg_item_change fromi toi to rval
                    Move (witemcl_(dbTabPageSubS4(dbTabDialogSubS1(self)))) to iGridID
                    if (focus(Desktop) = witemcl_(self)) begin
                       Get Current_Col to iCol
                       Get Base_Item to iBase_item
                       if (icol = 1) begin
                          Get Value Item (iBase_item+1) to rval##
                          Move (fsclient(self,Rval##)) to rval##
                          set value item  (iBase_item+2)  to Rval##
                       end
                    end
                    procedure_return rval
                end_procedure

                Function Child_entering returns Integer
                    Integer rval
                    Forward Get Child_Entering to rVal
                    If (NOT(rVal)) Begin
                        If (Should_Save(witemcl_DD(Self))) Send Request_Save to witemcl_DD
                    End
                    function_return rVal
                End_Function




























                //AB-StoreEnd

            End_Object    // Witemcl_


            //AB-StoreStart
            set label to 'ÑÂõû - è®¶£ûüú¨´‚™'
            //AB-StoreEnd

        End_Object    // dbTabPageSubS4

        Object dbTabPageSubS5 is a dbTabPageSubS
            Set Label to "í†£¶°ò´·¢¶ö¶™ Ñ†õÈ§-è®¶£ûüú¨´È§"
            Object TextBoxSub23 is a TextBoxSub
                Set Label to "è®¶£ûüú¨´„™ :"
                Set Location to 2 1
                Set Size to 10 51
                Set FontWeight to 800
            End_Object    // TextBoxSub23

            Object Witemcl_Client_Code is a dbFormSub
                Entry_Item Witemcl.Client_code
                Set Server to (Witemcl_DD(self))
                Set Size to 13 61
                Set Location to 1 63
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Prompt_Button_Mode to pb_PromptOff
                Set Form_FontWeight Item 0 to 800

                //AB-StoreStart
                set enabled_state to false
                procedure onchange
                   string sclient
                   move (Fsclient(self,witemcl.client_code)) to sclient
                   if (sclient <> '') set value of (formsub2(dbTabPageSubS5(dbTabDialogSubS1(self)))) to sclient
                   else               set value of (formsub2(dbTabPageSubS5(dbTabDialogSubS1(self)))) to ''
                end_procedure



                //AB-StoreEnd

            End_Object    // Witemcl_Client_Code

            Object FormSub2 is a FormSub
                Set Size to 13 122
                Set Location to 1 128
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Form_FontWeight Item 0 to 800

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub2

            Object Witemcld_ is a dbGridSub
                Set Main_File to Witemcld.File_Number
                Set Server to (Witemcld_DD(self))
                Set Size to 81 437
                Set Location to 16 1
                Set Color to 14280447
                Set CurrentRowColor to 11783679
                Set CurrentCellColor to 11783679
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Witemcld.Value_date
                    Entry_Item Witemcld.Qty
                    Entry_Item Witemcld.Axia00
                    Entry_Item Witemcld.Pcdisc
                    Entry_Item Witemcld.Orio
                    Entry_Item Witemcld.Pagioorio
                    Entry_Item Witemcld.Pcdiscantlia
                End_Row

                Set Form_Width    item 0 to 62
                Set Header_Label  item 0 to "Ü£/§Âò à©ÆÁ¶™"

                Set Form_Width    item 1 to 59
                Set Header_Label  item 1 to "è¶©Ê´û´ò ÑÈ™"

                Set Form_Width    item 2 to 74
                Set Header_Label  item 2 to "âòüò®„ ´†£„ ãÊ§"

                Set Form_Width    item 3 to 59
                Set Header_Label  item 3 to "è¶©¶©´Ê Ñ°ß´"

                Set Form_Width    item 4 to 55
                Set Header_Label  item 4 to "é®†¶ â¨ô†°È§"

                Set Form_Width    item 5 to 60
                Set Header_Label  item 5 to "è·ö†¶ é®Â¶¨"

                Set Form_Width    item 6 to 61
                Set Header_Label  item 6 to "è¶©¶©´Ê Ñ°ß´"


                //AB-StoreStart
                Procedure End_Construct_Object
                    Integer iDecs
                    Forward Send End_Construct_Object
                    Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
                    Set Points Item 2 to iDecs
                    Set Points Item 5 to iDecs
                    Set Numeric_Mask Item 2 to 14 iDecs ' ,*'
                    Set Numeric_Mask Item 5 to 14 iDecs ' ,*'
                End_Procedure


                Function Child_entering returns Integer
                    Integer rval
                    Forward Get Child_Entering to rVal
                    If (NOT(rVal)) Begin
                        If (Should_Save(witemxt_DD(Self))) Send Request_Save to witemxt_DD
                    End
                    function_return rVal
                End_Function

                //AB-StoreEnd

            End_Object    // Witemcld_

            Object TextBoxSub24 is a TextBoxSub
                Set Label to "ë´òüú®‚™ ö†ò ï®„©û Ä§´¢Âò™"
                Set Color to clNavy
                Set TextColor to clYellow
                Set Location to 2 253
                Set Size to 10 148
                Set FontWeight to 800
                Set Justification_Mode to jMode_Center
            End_Object    // TextBoxSub24

        End_Object    // dbTabPageSubS5


        //AB-StoreStart
        //Procedure Activate
        //    Integer rVal
        //    Delegate Get Save_Header to rval
        //    If (Not(rVal)) Forward Send Activate
        //End_Procedure

        //Function tab_change integer pagenumber integer focus_mode returns integer
        //    integer rval
        //    Delegate Get Save_Header to rval
        //    if (not(rval)) forward get tab_change pagenumber focus_mode to rval
        //    function_return rval
        //end_function






        //AB-StoreEnd

    End_Object    // dbTabDialogSubS1


    //AB-StoreStart

    Procedure Close_Panel
        send clear to witemx_dd2
        move syscurxr.company_code to witemx.company_code
        move syscurxr.branch_code  to witemx.branch_code
        move syscurxr.year_year    to witemx.year_year
        move item.item_code        to witemx.witemx_code
        if (item.item_code <> '') begin
           send find to witemx_dd2    eq 5
           if (not(found)) begin
              send stop_box 'Éú§ ò§¶Â•ò´ú ´¶ úÂõ¶™ ©´„§ ´®‚Æ¶¨©ò Æ®„©û !!' 'ë≠·¢£ò'
              procedure_return
           end
           else Forward Send Close_Panel
        end
        else Forward Send Close_Panel
    End_Procedure

    Procedure request_cancel
        send clear to witemx_dd2
        move syscurxr.company_code to witemx.company_code
        move syscurxr.branch_code  to witemx.branch_code
        move syscurxr.year_year    to witemx.year_year
        move item.item_code        to witemx.witemx_code
        if (item.item_code <> '') begin
           send find to witemx_dd2    eq 5
           if (not(found)) begin
              send stop_box 'Éú§ ò§¶Â•ò´ú ´¶ úÂõ¶™ ©´„§ ´®‚Æ¶¨©ò Æ®„©û !!' 'ë≠·¢£ò'
              procedure_return
           end
           else Forward Send request_cancel
        end
        else Forward Send request_cancel
    End_Procedure

    Procedure Activate_View0000 returns Integer
        Integer rVal
        Send Clear to Item_DD
        Send Rebuild_Constraints    to Itemd_DD
        Send Rebuild_Constraints    to Witemx_DD
        Send Rebuild_Constraints    to Witemxt_DD
        Send Rebuild_Constraints    to Witemcl_DD
        Send Rebuild_Constraints    to Witemcld_DD
        Send Beginning_Of_Data      to (The_Table(dbTabPageSubS1(dbTabDialogSubS1(Self)))) True
        Send Beginning_Of_Data      to (Witemx_  (dbTabPageSubS2(dbTabDialogSubS1(Self)))) True
        Send Beginning_Of_Data      to (Witemxt_ (dbTabPageSubS3(dbTabDialogSubS1(Self)))) True
        Send Beginning_Of_Data      to (Witemcl_ (dbTabPageSubS4(dbTabDialogSubS1(Self)))) True
        Send Beginning_Of_Data      to (Witemcld_(dbTabPageSubS5(dbTabDialogSubS1(Self)))) True
        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure























    //AB-StoreEnd

End_Object    // Itemold

//AB/ End_Object    // prj
