//AB/ Project sl055:mhxanikoi
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl055:mhxanikoi"
//AB/     Set ProjectFileName to "sl055.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl055 is a dbModalPanelSub
//     Mhxanik_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Mhxanik_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl055


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use MHXANIK.DD

//AB-IgnoreEnd

Object sl055 is a dbModalPanelSub
    Set Label to "Ä®ÆúÂ¶ ãûÆò§†°È§"
    Set Size to 148 430
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Set Main_DD to (Mhxanik_DD(self))
    Set Server to (Mhxanik_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Mhxanik.File_Number
        Set Size to 105 415
        Set Location to 6 6

        Begin_Row
            Entry_Item Mhxanik.Mhx_id
            Entry_Item Mhxanik.Mhx_name
            Entry_Item Mhxanik.Mhx_afm
            Entry_Item Mhxanik.Mhx_address
            Entry_Item Mhxanik.Mhx_phone
        End_Row

        Set Form_Width    item 0 to 70
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 2 to 50
        Set Header_Label  item 2 to "Ä.î.ã"
        
        Set Form_Width    item 3 to 135
        Set Header_Label  item 3 to "É†úÁü¨§©û"
        
        Set Form_Width    item 4 to 52
        Set Header_Label  item 4 to "íû¢‚≠‡§¶"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 263

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 317

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 113 373

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

End_Object    // sl055

//AB/ End_Object    // prj
