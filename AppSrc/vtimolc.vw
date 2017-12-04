//AB/ Project vtimolc
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vtimolc"
//AB/         Set ProjectFileName to "vtimolc.vw"

// Project Object Structure
//   vtimolc is a dbView
//     Syscurxr_DD is a DataDictionary
//     Btnordh_DD is a DataDictionary
//     Btnordd_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Btnordh_Vorderbt is a dbForm
//       Btnordh_Vcompany is a dbForm
//       Btnordh_Vsite is a dbForm
//       Btnordh_Vclientcode is a dbForm
//       Btnordh_Vconscode is a dbForm
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       FormSub1 is a FormSub
//       FormSub2 is a FormSub
//       FormSub3 is a FormSub
//       FormSub4 is a FormSub
//     The_Table is a dbGrid
//     dbGroupSub2 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//       TextBoxSub11 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Btnordd_DD
Register_Object Btnordh_DD
Register_Object Btnordh_Vclientcode
Register_Object Btnordh_Vcompany
Register_Object Btnordh_Vconscode
Register_Object Btnordh_Vorderbt
Register_Object Btnordh_Vsite
Register_Object Company_Company_Name
Register_Object Container1
Register_Object dbGroupSub2
Register_Object FormSub1
Register_Object FormSub2
Register_Object FormSub3
Register_Object FormSub4
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub9
Register_Object The_Table
Register_Object vtimolc
Register_Object Year_Year_Year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use Form.Sub
    Use dbGroup.Sub
    Use dbForm.Sub

    Use SYSCURXR.DD
    Use BTNORDH.DD
    Use BTNORDD.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vtimolc FOR vtimolc

    Object vtimolc is a dbViewSubS

        //AB-StoreTopStart
        use clients.dd
        use cn.dd
        use company.dd
        use branch.dd
        //AB-StoreTopEnd

        Set Label to "í†£¶°ò´·¢¶ö¶™"
        Set Size to 280 446
        Set Location to 9 6

        //AB-DDOStart

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Btnordh_DD is a Btnordh_DataDictionary
        End_Object    // Btnordh_DD

        Object Btnordd_DD is a Btnordd_DataDictionary
            Set DDO_Server to (Btnordh_DD(self))
            Set Constrain_File to Btnordh.File_Number
        End_Object    // Btnordd_DD

        Set Main_DD to (Btnordh_DD(self))
        Set Server to (Btnordh_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 82 434
            Set Location to 26 5
            Object Btnordh_Vorderbt is a dbForm
                Entry_Item Btnordh.Vorderbt
                Set Size to 13 83
                Set Location to 5 96
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Btnordh_Vorderbt

            Object Btnordh_Vcompany is a dbForm
                Entry_Item Btnordh.Vcompany
                Set Size to 13 83
                Set Location to 18 96
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    if (btnordh.vcompany ne "") begin
                     set value of (formsub1(self)) to syscurxr.company_name
                    end
                end_procedure




                //AB-StoreEnd

            End_Object    // Btnordh_Vcompany

            Object Btnordh_Vsite is a dbForm
                Entry_Item Btnordh.Vsite
                Set Size to 13 83
                Set Location to 33 96
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                   if (btnordh.vsite ne "") begin
                    set value of (formsub2(self)) to syscurxr.branch_name
                   end
                end_procedure


                //AB-StoreEnd

            End_Object    // Btnordh_Vsite

            Object Btnordh_Vclientcode is a dbForm
                Entry_Item Btnordh.Vclientcode
                Set Size to 13 83
                Set Location to 47 96
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    if (btnordh.vclientcode ne "") begin
                      clear clients
                      move btnordh.vclientcode   to clients.client_id
                      find eq clients by index.6
                      set value of (formsub3(self)) to clients.client_name
                    end
                end_procedure










                //AB-StoreEnd

            End_Object    // Btnordh_Vclientcode

            Object Btnordh_Vconscode is a dbForm
                Entry_Item Btnordh.Vconscode
                Set Size to 13 83
                Set Location to 61 96
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                  if (btnordh.vconscode ne "") begin
                      clear cn
                      move btnordh.vconscode     to cn.cn_code
                      find eq cn by index.5
                      if (found = 1) set value of (formsub4(self)) to cn.cn_descr
                      else           set value of (formsub4(self)) to ''
                  end
                end_procedure






                //AB-StoreEnd

            End_Object    // Btnordh_Vconscode

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ ëÁ£ôò©û™"
                Set Location to 6 24
                Set Size to 10 66
            End_Object    // TextBoxSub1

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "Ñ´ò†®úÂò"
                Set Location to 20 24
                Set Size to 10 37
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "í¶£‚ò™"
                Set Location to 33 24
                Set Size to 10 35
            End_Object    // TextBoxSub3

            Object TextBoxSub4 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ èú¢·´û"
                Set Location to 47 24
                Set Size to 10 65
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ Ñ®ö¶¨"
                Set Location to 60 24
                Set Size to 10 52
            End_Object    // TextBoxSub5

            Object FormSub1 is a FormSub
                Set Size to 13 244
                Set Location to 18 185
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // FormSub1

            Object FormSub2 is a FormSub
                Set Size to 13 244
                Set Location to 33 185
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // FormSub2

            Object FormSub3 is a FormSub
                Set Size to 13 244
                Set Location to 47 185
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // FormSub3

            Object FormSub4 is a FormSub
                Set Size to 13 244
                Set Location to 62 185
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // FormSub4

        End_Object    // Container1

        Object The_Table is a dbGrid
            Set Main_File to Btnordd.File_Number
            Set Server to (Btnordd_DD(self))
            Set Size to 150 435
            Set Location to 110 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Btnordh.Vorderbt
                Entry_Item Btnordd.Vclientcode
                Entry_Item Btnordd.Vconscode
                Entry_Item Btnordd.Vitem
                Entry_Item Btnordd.Vqty
                Entry_Item Btnordd.Vprice
                Entry_Item Btnordd.Vpricep
                Entry_Item Btnordd.Vprice_e
                Entry_Item Btnordd.Vpricep_e
            End_Row

            Set Form_Width    item 0 to 75
            Set Header_Label  item 0 to "â‡õ.ëÁ£ôò©û™"

            Set Form_Width    item 1 to 75
            Set Header_Label  item 1 to "â‡õ.èú¢·´û"

            Set Form_Width    item 2 to 75
            Set Header_Label  item 2 to "â‡õ.Ñ®ö¶¨"

            Set Form_Width    item 3 to 82
            Set Header_Label  item 3 to "Ñ†õ¶™"

            Set Form_Width    item 4 to 55
            Set Header_Label  item 4 to "è¶©Ê´û´ò"

            Set Form_Width    item 5 to 65
            Set Header_Label  item 5 to "í†£„ ã¶§·õ¶™"

            Set Form_Width    item 6 to 0
            Set Header_Label  item 6 to "Vpricep"

            Set Form_Width    item 7 to 0
            Set Header_Label  item 7 to "Extra"

            Set Form_Width    item 8 to 0
            Set Header_Label  item 8 to "Vpricep E"


            //AB-StoreStart
            set read_only_state to true
            Set Column_Option Item 6 to NoEnter True
            Set Column_Option Item 7 to NoEnter True
            Set Column_Option Item 8 to NoEnter True

            Procedure End_Construct_Object
                Integer iDecs
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
                Set Points          Item 4 to 2
                Set Points          Item 5 to iDecs
                Set Numeric_Mask    Item 5 to 14 iDecs '*, '
            End_Procedure




            //AB-StoreEnd

        End_Object    // The_Table

        Object dbGroupSub2 is a dbGroupSub
            Set Size to 26 437
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

            Object TextBoxSub9 is a TextBoxSub
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

            End_Object    // TextBoxSub9

            Object TextBoxSub10 is a TextBoxSub
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
            End_Object    // TextBoxSub10

            Object TextBoxSub11 is a TextBoxSub
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
            End_Object    // TextBoxSub11

        End_Object    // dbGroupSub2


        //AB-StoreStart


        //AB-StoreEnd

    End_Object    // vtimolc

//AB/     End_Object    // prj
