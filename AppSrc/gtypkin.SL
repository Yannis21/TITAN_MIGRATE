//AB/ Project gtypkin:Gtypkin
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "gtypkin:Gtypkin"
//AB/         Set ProjectFileName to "gtypkin.SL"

// Project Object Structure
//   gtypkin is a dbModalPanel
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object gtypkin
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


    //AB-IgnoreStart

    Use DFAllEnt.pkg


    Use GTHHMGIO.DD
    Use GTYPKIN.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object gtypkin is a dbModalPanel
        Set Minimize_Icon to FALSE
        Set Label to "äÂ©´ò â†§„©ú‡§"
        Set Size to 171 467
        Set Location to 4 5

        //AB-DDOStart

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary
        End_Object    // Gthhmgio_DD

        Object Gtypkin_DD is a Gtypkin_DataDictionary
            Set DDO_Server to (Gthhmgio_DD(self))
        End_Object    // Gtypkin_DD

        Set Main_DD to (Gtypkin_DD(self))
        Set Server to (Gtypkin_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Gtypkin.File_Number
            Set Size to 132 450
            Set Location to 6 6

            Begin_Row
                Entry_Item Gtypkin.Gtypkin_code
                Entry_Item Gtypkin.Gtypkin_descr
                Entry_Item Gtypkin.Gtypkin_abr
                Entry_Item Gtypkin.Gtypkin_seira
                Entry_Item Gthhmgio.Gthhmgio_code
                Entry_Item Gthhmgio.Gthhmgio_descr
            End_Row

            Set Form_Width    item 0 to 40
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 150
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 68
            Set Header_Label  item 2 to "ë¨§´¶£¶ö®ò≠Âò"
            
            Set Form_Width    item 3 to 30
            Set Header_Label  item 3 to "ëú†®·"
            
            Set Form_Width    item 4 to 55
            Set Header_Label  item 4 to "â‡õ†°Ê™ Ü£/ö†¶¨"
            
            Set Form_Width    item 5 to 99
            Set Header_Label  item 5 to "èú®†ö®ò≠„ Ü£/öÂ¶¨"
            
        End_Object    // oSelList

        Object oOK_bn is a Button
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 140 298

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a Button
            Set Label to "&Ä°Á®‡©û"
            Set Location to 140 353

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a Button
            Set Label to "&Ä§òù„´û©û..."
            Set Location to 140 408

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_O Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_C Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_S Send KeyAction To (oSearch_bn(current_object))
        //AB-StoreEnd

    CD_End_Object    // gtypkin

//AB/     End_Object    // prj
