//AB/ Project Gthhmgio:Gthhmgio
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Gthhmgio:Gthhmgio"
//AB/         Set ProjectFileName to "Gthhmgio.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Gthhmgio is a dbView
//     Gthhmgio_DD is a DataDictionary
//     Gthhmgio_Gthhmgio_Code is a dbFormSub
//     Gthhmgio_Gthhmgio_Descr is a dbFormSub
//     Gthhmgio_Gthhmgio_Period is a dbComboFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Gthhmgio_DD
Register_Object Gthhmgio_Gthhmgio_Code
Register_Object Gthhmgio_Gthhmgio_Descr
Register_Object Gthhmgio_Gthhmgio_Period
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Gthhmgio


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbCmbfrm.Sub
    Use Txtbox.Sub

    Use GTHHMGIO.DD

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Gthhmgio FOR ;
    ;
    Object Gthhmgio is a dbView
        Set Label to "áú‡®û£‚§ò Ü£ú®¶¢Êö†ò"
        Set Size to 66 271
        Set Location to 7 6

        //AB-DDOStart

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary
        End_Object    // Gthhmgio_DD

        Set Main_DD to (Gthhmgio_DD(self))
        Set Server to (Gthhmgio_DD(self))

        //AB-DDOEnd

        Object Gthhmgio_Gthhmgio_Code is a dbFormSub
            Entry_Item Gthhmgio.Gthhmgio_code
            Set Size to 13 58
            Set Location to 2 65
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Gthhmgio_Gthhmgio_Code

        Object Gthhmgio_Gthhmgio_Descr is a dbFormSub
            Entry_Item Gthhmgio.Gthhmgio_descr
            Set Size to 13 195
            Set Location to 17 65
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Gthhmgio_Gthhmgio_Descr

        Object Gthhmgio_Gthhmgio_Period is a dbComboFormSub
            Entry_Item Gthhmgio.Gthhmgio_period
            Set Size to 13 123
            Set Location to 32 65
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Gthhmgio_Gthhmgio_Period

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 15 6
            Set Size to 13 55
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "â‡õ†°Ê™:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 1 6
            Set Size to 13 55
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "èú®Â¶õ¶™:"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 30 6
            Set Size to 13 55
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3


        //AB-StoreStart
        //Set Verify_Exit_Msg To Get_No_Confirmation


        //AB-StoreEnd

    CD_End_Object    // Gthhmgio

//AB/     End_Object    // prj
