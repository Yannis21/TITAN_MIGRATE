//AB/ Project Gthhmgio:Gthhmgio
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "Gthhmgio:Gthhmgio"
//AB/         Set ProjectFileName to "Gthhmgio.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Gthhmgio is a dbModalPanel
//     Gthhmgio_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object Gthhmgio_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Gthhmgio


    //AB-IgnoreStart

    Use DFAllEnt.pkg


    Use GTHHMGIO.DD

    //AB-IgnoreEnd

    CD_Popup_Object Gthhmgio is a dbModalPanel
        Set Minimize_Icon to FALSE
        Set Label to "äÂ©´ò Ü£ú®¶¢¶öÂ‡§"
        Set Size to 148 297
        Set Location to 4 5

        //AB-DDOStart

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary
        End_Object    // Gthhmgio_DD

        Set Main_DD to (Gthhmgio_DD(self))
        Set Server to (Gthhmgio_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Gthhmgio.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Gthhmgio.Gthhmgio_code
                Entry_Item Gthhmgio.Gthhmgio_descr
            End_Row

            Set Form_Width    item 0 to 52
            Set Header_Label  item 0 to "â‡õ†°Ê™"

            Set Form_Width    item 1 to 220
            Set Header_Label  item 1 to "èú®†ö®ò≠„"

        End_Object    // oSelList

        Object oOK_bn is a Button
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 111 127

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a Button
            Set Label to "&Ä°Á®‡©û"
            Set Location to 111 181

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a Button
            Set Label to "&Ä§òù„´û©û..."
            Set Location to 111 237

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

    CD_End_Object    // Gthhmgio

//AB/     End_Object    // prj
