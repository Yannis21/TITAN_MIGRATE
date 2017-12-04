//AB/ Project V063:GTHAA
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V063:GTHAA"
//AB/         Set ProjectFileName to "V063.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   V063 is a dbViewSubS
//     Syscurgl_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gthaa_DD is a DataDictionary
//     Gthaa_ is a dbGridSub
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object dbGrpYear
Register_Object Gthaa_
Register_Object Gthaa_DD
Register_Object Gthhmgio_DD
Register_Object Syscurgl_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object V063
Register_Object Year_Year_Year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub

    Use SYSCURGL.DD
    Use GTHHMGIO.DD
    Use GTHAA.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_V063 FOR ;
    ;
    Object V063 is a dbViewSubS

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set Label to "Ü£ú®¶£û§Âú™ Ü£ú®¶¢¶öÂ‡§"
        Set Size to 140 515
        Set Location to 6 5

        //AB-DDOStart

        Object Syscurgl_DD is a Syscurgl_DataDictionary
        End_Object    // Syscurgl_DD

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary
        End_Object    // Gthhmgio_DD

        Object Gthaa_DD is a Gthaa_DataDictionary
            Set DDO_Server to (Gthhmgio_DD(self))

            //AB-StoreStart
                                                                            
                                                                            
            //AB-StoreEnd

        End_Object    // Gthaa_DD

        Set Main_DD to (Gthaa_DD(self))
        Set Server to (Gthaa_DD(self))

        //AB-DDOEnd

        Object Gthaa_ is a dbGridSub
            Set Main_File to Gthaa.File_Number
            Set Ordering to 3
            Set Size to 91 505
            Set Location to 28 3
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Gthhmgio.Gthhmgio_code
                Entry_Item Gthhmgio.Gthhmgio_descr
                Entry_Item Gthaa.Gthaa_lhmnia
            End_Row

            Set Form_Width    item 0 to 112
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 315
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 69
            Set Header_Label  item 2 to "Ü£ú®¶£û§Âò"
            

            //AB-StoreStart
                                                                
                                                                
            //AB-StoreEnd

        End_Object    // Gthaa_

        Object dbGrpYear is a dbGroupSub
            Set Size to 26 506
            Set Location to -2 3
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurgl.Company_name
                Set Server to (Syscurgl_DD(self))
                Set Size to 13 144
                Set Location to 9 48
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
                Set Location to 9 266
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

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "Ñ´ò†®Âò:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 11 8
                Set Size to 10 31
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub1

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 219
                Set Size to 10 36
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
                Set Location to 10 403
                Set Size to 10 29
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGrpYear


        //AB-StoreStart
                                        
                                        
                                        
        //AB-StoreEnd

    CD_End_Object    // V063

//AB/     End_Object    // prj
