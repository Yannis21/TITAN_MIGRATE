//AB/ Project sl053:pumps
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl053:pumps"
//AB/     Set ProjectFileName to "sl053.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl053 is a dbModalPanelSub
//     Pumps_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Pumps_DD
Register_Object sl053


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use Pumps.DD

//AB-IgnoreEnd

Object sl053 is a dbModalPanelSub
    Set Label to "Ä®ÆúÂ¶ Ä§´¢†È§"
    Set Size to 148 325
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Pumps_DD is a Pumps_DataDictionary
    End_Object    // Pumps_DD

    Set Main_DD to (Pumps_DD(self))
    Set Server to (Pumps_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Pumps.File_Number
        Set Size to 105 309
        Set Location to 6 6

        Begin_Row
            Entry_Item Pumps.Pump_id
            Entry_Item Pumps.Pump_descr
            Entry_Item Pumps.Pump_license
            Entry_Item Pumps.Pump_mhkos
        End_Row

        Set Form_Width    item 0 to 70
        Set Header_Label  item 0 to "â‡õ†°Ê™ Ä§´¢Âò™"
        
        Set Form_Width    item 1 to 120
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "è†§ò°Âõò"
        
        Set Form_Width    item 3 to 46
        Set Header_Label  item 3 to "ã„°¶™"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 114 157

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 114 212

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 114 267

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

End_Object    // sl053

//AB/ End_Object    // prj
