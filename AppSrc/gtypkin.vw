//AB/ Project Gtypkin
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Gtypkin"
//AB/     Set ProjectFileName to "gtypkin.vw"

// Project Object Structure
//   Gtypkin_View is a dbViewSubS
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Syscurgl_DD is a DataDictionary
//     Gflagkin_DD is a DataDictionary
//     Gtypkin_Gtypkin_Code is a dbFormSub
//     Gtypkin_Gtypkin_Descr is a dbFormSub
//     Gthhmgio_Gthhmgio_Code is a dbFormSub
//     Gthhmgio_Gthhmgio_Descr is a dbFormSub
//     Gtypkin_Gtypkin_Anti is a dbFormSub
//     Gtypkin_Gtypkin_Printer is a dbFormSub
//     Gtypkin_Gtypkin_Form is a dbFormSub
//     Gtypkin_Gtypkin_L_No is a dbFormSub
//     Gtypkin_Gtypkin_L_Hmnia is a dbFormSub
//     Gtypkin_Gtypkin_Seira is a dbFormSub
//     Gtypkin_Gtypkin_Abr is a dbFormSub
//     Gflagkin_ is a dbGridSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
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
Register_Object Gflagkin_
Register_Object Gflagkin_DD
Register_Object Gthhmgio_DD
Register_Object Gthhmgio_Gthhmgio_Code
Register_Object Gthhmgio_Gthhmgio_Descr
Register_Object Gtypkin_DD
Register_Object Gtypkin_Gtypkin_Abr
Register_Object Gtypkin_Gtypkin_Anti
Register_Object Gtypkin_Gtypkin_Code
Register_Object Gtypkin_Gtypkin_Descr
Register_Object Gtypkin_Gtypkin_Form
Register_Object Gtypkin_Gtypkin_L_Hmnia
Register_Object Gtypkin_Gtypkin_L_No
Register_Object Gtypkin_Gtypkin_Printer
Register_Object Gtypkin_Gtypkin_Seira
Register_Object Gtypkin_View
Register_Object Syscurgl_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbGrid.Sub
Use Txtbox.Sub
Use dbGroup.Sub

Use GTHHMGIO.DD
Use GTYPKIN.DD
Use SysCurGL.dd
Use Gflagkin.dd

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Gtypkin_View FOR ;
;
Object Gtypkin_View is a dbViewSubS

    //AB-StoreTopStart
                            
    //AB-StoreTopEnd

    Set Label to "íÁß¶† â†§„©ú‡§           "
    Set Size to 242 513
    Set Location to 7 6

    //AB-DDOStart

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary
    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))

        //AB-StoreStart
        Set allow_foreign_new_save_state to True
        
        
        
        //AB-StoreEnd

    End_Object    // Gtypkin_DD

    Object Syscurgl_DD is a SysCurGL_DataDictionary
    End_Object    // Syscurgl_DD

    Object Gflagkin_DD is a Gflagkin_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))
        Set Constrain_File to Gtypkin.File_Number
    End_Object    // Gflagkin_DD

    Set Main_DD to (Gtypkin_DD(self))
    Set Server to (Gtypkin_DD(self))

    //AB-DDOEnd

    Object Gtypkin_Gtypkin_Code is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_code
        Set Size to 13 42
        Set Location to 34 87
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Code

    Object Gtypkin_Gtypkin_Descr is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_descr
        Set Size to 13 251
        Set Location to 50 87
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Descr

    Object Gthhmgio_Gthhmgio_Code is a dbFormSub
        Entry_Item Gthhmgio.Gthhmgio_code
        Set Size to 13 42
        Set Location to 66 87
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gthhmgio_Gthhmgio_Code

    Object Gthhmgio_Gthhmgio_Descr is a dbFormSub
        Entry_Item Gthhmgio.Gthhmgio_descr
        Set Size to 13 251
        Set Location to 82 87
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Gthhmgio_Gthhmgio_Descr

    Object Gtypkin_Gtypkin_Anti is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_anti
        Set Label to "Ä§´†©¨£ôò¢¢Ê£ú§¶™:"
        Set Size to 13 126
        Set Location to 114 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Anti

    Object Gtypkin_Gtypkin_Printer is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_printer
        Set Label to "É†úÁü¨§©û Ñ°´¨ß‡´„:"
        Set Size to 13 366
        Set Location to 129 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Printer

    Object Gtypkin_Gtypkin_Form is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_form
        Set Label to "îÊ®£ò Ñ°´Áß‡©û™:"
        Set Size to 13 66
        Set Location to 144 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Form

    Object Gtypkin_Gtypkin_L_No is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_l_no
        Set Label to "íú¢ú¨´òÂ¶™ Ä®†ü£Ê™:"
        Set Size to 13 90
        Set Location to 159 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_L_No

    Object Gtypkin_Gtypkin_L_Hmnia is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_l_hmnia
        Set Label to "íú¢ú¨´òÂò Ü£ú®¶£û§Âò:"
        Set Size to 13 66
        Set Location to 174 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_L_Hmnia

    Object Gtypkin_Gtypkin_Seira is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_seira
        Set Label to "ëú†®·:"
        Set Size to 13 27
        Set Location to 189 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Seira

    Object Gtypkin_Gtypkin_Abr is a dbFormSub
        Entry_Item Gtypkin.Gtypkin_abr
        Set Label to "ë¨§´¶£¶ö®ò≠Âò:"
        Set Size to 13 66
        Set Location to 204 86
        Set Label_Col_Offset to 80
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gtypkin_Gtypkin_Abr

    Object Gflagkin_ is a dbGridSub
        Set Main_File to Gflagkin.File_Number
        Set Server to (Gflagkin_DD(self))
        Set Ordering to 1
        Set Size to 69 165
        Set Location to 33 341
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Gflagkin.Gflagkin_flag
            Entry_Item (Export_Code_Description(self,0,gflagkin.gflagkin_flag))
        End_Row

        Set Form_Width    item 0 to 36
        Set Header_Label  item 0 to "Flag"
        
        Set Form_Width    item 1 to 121
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
                                                    
        //***************** Predefined Procedures and Functions Section **************
        
        Procedure Request_Clear_All
            //Delegate Send Request_Clear_All
        End_Procedure // Request_Clear_All
        
        
        
        
        //AB-StoreEnd

    End_Object    // Gflagkin_

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "â‡õ†°Ê™ â†§û©û™ :     "
        Set Auto_Size_State to FALSE
        Set TextColor to clNavy
        Set FontSize to 4 0
        Set Location to 36 7
        Set Size to 10 65
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
        Set Enabled_State to TRUE
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„  â†§û©û™ :     "
        Set Auto_Size_State to FALSE
        Set TextColor to clNavy
        Set FontSize to 4 0
        Set Location to 52 7
        Set Size to 10 75
        Set Justification_Mode to jMode_Right
        Set TypeFace to "MS Sans Serif"
        Set Enabled_State to TRUE
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "â‡õ†°Ê™ Ü£/öÂ¶¨ :     "
        Set Auto_Size_State to FALSE
        Set TextColor to clNavy
        Set FontSize to 4 0
        Set Location to 68 7
        Set Size to 12 71
        Set Justification_Mode to jMode_Right
        Set TypeFace to "MS Sans Serif"
        Set Enabled_State to TRUE
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„  Ü£/öÂ¶¨ :     "
        Set Auto_Size_State to FALSE
        Set TextColor to clNavy
        Set FontSize to 4 0
        Set Location to 84 7
        Set Size to 12 71
        Set Justification_Mode to jMode_Right
        Set TypeFace to "MS Sans Serif"
        Set Enabled_State to TRUE
    End_Object    // TextBoxSub7

    Object dbGrpYear is a dbGroupSub
        Set Server to (Gthhmgio_DD(self))
        Set Size to 26 506
        Set Location to 0 2
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurgl.Company_name
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 144
            Set Location to 9 49
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
            Set Location to 9 269
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
            Set Location to 10 10
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
            Set Location to 10 224
            Set Size to 10 35
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
            Set Location to 10 402
            Set Size to 10 29
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3

    End_Object    // dbGrpYear


    //AB-StoreStart
                            
    //AB-StoreEnd

CD_End_Object    // Gtypkin_View

//AB/ End_Object    // prj
