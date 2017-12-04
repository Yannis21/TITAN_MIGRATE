//AB/ Project sl064 : Zones
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl064 : Zones"
//AB/     Set ProjectFileName to "sl064.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl064 is a dbModalPanelSub
//     Zones_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl064
Register_Object Zones_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use ZONES.DD

//AB-IgnoreEnd

CD_Popup_Object sl064 is a dbModalPanelSub
    Set Label to "ÖÈ§ú™"
    Set Size to 148 297
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Zones_DD is a Zones_DataDictionary
    End_Object    // Zones_DD

    Set Main_DD to (Zones_DD(self))
    Set Server to (Zones_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Zones.File_Number
        Set Size to 105 280
        Set Location to 6 6

        Begin_Row
            Entry_Item Zones.Zone_id
            Entry_Item Zones.Zone_descr
        End_Row

        Set Form_Width    item 0 to 73
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 199
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 115 126

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 115 181

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 115 236

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

CD_End_Object    // sl064

//AB/ End_Object    // prj
