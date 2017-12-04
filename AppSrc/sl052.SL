//AB/ Project sl052:drivers
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl052:drivers"
//AB/     Set ProjectFileName to "sl052.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl052 is a dbModalPanelSub
//     Drivers_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Drivers_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl052


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use DRIVERS.DD

//AB-IgnoreEnd

Object sl052 is a dbModalPanelSub
    Set Label to "Ä®ÆúÂ¶ éõûöÈ§ "
    Set Size to 148 371
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Drivers_DD is a Drivers_DataDictionary
    End_Object    // Drivers_DD

    Set Main_DD to (Drivers_DD(self))
    Set Server to (Drivers_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Drivers.File_Number
        Set Size to 105 354
        Set Location to 6 6

        Begin_Row
            Entry_Item Drivers.Driver_id
            Entry_Item Drivers.Driver_name
            Entry_Item Drivers.Driver_afm
            Entry_Item Drivers.Driver_city
            Entry_Item Drivers.Driver_phone
        End_Row

        Set Form_Width    item 0 to 70
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 2 to 50
        Set Header_Label  item 2 to "Ä.î.ã"
        
        Set Form_Width    item 3 to 76
        Set Header_Label  item 3 to "èÊ¢û"
        
        Set Form_Width    item 4 to 50
        Set Header_Label  item 4 to "íû¢‚≠‡§¶"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 114 201

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 114 255

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 114 311

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    //AB-StoreEnd

End_Object    // sl052

//AB/ End_Object    // prj
