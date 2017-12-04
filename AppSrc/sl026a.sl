//AB/ Project sl026a:item
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl026a:item"
//AB/     Set ProjectFileName to "sl026a.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl026a is a dbModalPanelSub
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl026a
Register_Object Units_DD
Register_Object Witemkat_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD

//AB-IgnoreEnd

Object sl026a is a dbModalPanelSub
    set label to "ÑÂõû" 
    Set Size to 148 372
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))
    End_Object    // Item_DD

    Set Main_DD to (Item_DD(self))
    Set Server to (Item_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Item.File_Number
        Set Size to 105 359
        Set Location to 6 6

        Begin_Row
            Entry_Item Item.Item_code
            Entry_Item Item.Item_descr
            Entry_Item Fpa.Fpa_pososto
            Entry_Item Item.Item_qual
        End_Row

        Set Form_Width    item 0 to 70
        set header_label  item 0 to "â‡õ†°Ê™ Ñ†õ¶¨™" 
        
        Set Form_Width    item 1 to 160
        set header_label  item 1 to "èú®†ö®ò≠„" 
        
        Set Form_Width    item 2 to 59
        set header_label  item 2 to "% îèÄ" 
        
        Set Form_Width    item 3 to 62
        set header_label  item 3 to "è¶†Ê´û´ò" 
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&Ñß†¢¶ö„" 
        Set Location to 114 207

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ä°Á®‡©û" 
        Set Location to 114 261

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "Ä&§òù„´û©û" 
        Set Location to 114 317

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

End_Object    // sl026a

//AB/ End_Object    // prj
