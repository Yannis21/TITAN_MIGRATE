//AB/ Project GFormat
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GFormat"
//AB/         Set ProjectFileName to "GFormat.vw"

// Project Object Structure
//   GFormat is a dbViewSubS
//     Syscurgl_DD is a DataDictionary
//     Gformat_DD is a DataDictionary
//     The_Table is a dbGridSub
//     Container1 is a dbContainer3dSub
//       Company_Company_name is a dbFormSub
//       Branch_Branch_name is a dbFormSub
//       Year_Year_year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_name
Register_Object Company_Company_name
Register_Object Container1
Register_Object GFormat
Register_Object Gformat_DD
Register_Object Syscurgl_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object The_Table
Register_Object Year_Year_year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub
    Use dbCont3.Sub
    Use dbForm.Sub
    Use Txtbox.Sub

    Use SysCurGL.dd
    Use GFORMAT.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GFormat FOR GFormat

    Object GFormat is a dbViewSubS

        //AB-StoreTopStart
                
        //AB-StoreTopEnd

        Set Label to "‹á©¡œª Š¦š ©« ¡¦ç ‘®œ›å¦¬"
        Set Size to 254 467
        Set Location to 8 7

        //AB-DDOStart

        Object Syscurgl_DD is a SysCurGL_DataDictionary
        End_Object    // Syscurgl_DD

        Object Gformat_DD is a Gformat_DataDictionary

            //AB-StoreStart
                                
                                
                                
            //AB-StoreEnd

        End_Object    // Gformat_DD

        Set Main_DD to (Gformat_DD(self))
        Set Server to (Gformat_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGridSub
            Set Main_File to Gformat.File_Number
            Set Size to 171 454
            Set Location to 64 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Gformat.Gformat_code
                Entry_Item Gformat.Gformat_mask
            End_Row

            Set Form_Width    item 0 to 123
            Set Header_Label  item 0 to "‰˜«žš¦¨å˜ ‰à› ¡¦ç"
            
            Set Form_Width    item 1 to 322
            Set Header_Label  item 1 to "‹¦¨­ã ‹á©¡˜ª"
            

            //AB-StoreStart
                                
            //***************** Predefined Procedures and Functions Section **************
            
            Procedure Request_Clear_All
            End_Procedure // Request_Clear_All
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object Container1 is a dbContainer3dSub
            Set Server to (Syscurgl_DD(self))
            Set Border_Style to Border_StaticEdge
            Set Size to 54 454
            Set Location to 5 4
            Object Company_Company_name is a dbFormSub
                Entry_Item Syscurgl.Company_name
                Set Size to 13 366
                Set Location to 5 66
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Company_Company_name

            Object Branch_Branch_name is a dbFormSub
                Entry_Item Syscurgl.Branch_name
                Set Size to 13 366
                Set Location to 20 66
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Branch_Branch_name

            Object Year_Year_year is a dbFormSub
                Entry_Item Syscurgl.Year_year
                Set Size to 13 45
                Set Location to 34 66
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                                            
                //AB-StoreEnd

            End_Object    // Year_Year_year

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "„«˜ ¨å˜:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 4 4
                Set Size to 13 57
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub1

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "“§¦¡˜«á©«ž£˜:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 18 4
                Set Size to 13 57
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "•¨ã©ž:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 33 4
                Set Size to 13 57
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // Container1


        //AB-StoreStart
                
                
        //AB-StoreEnd

    End_Object    // GFormat

//AB/     End_Object    // prj
