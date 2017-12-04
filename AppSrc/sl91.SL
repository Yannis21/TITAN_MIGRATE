//AB/ Project sl91:ypopelates
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl91:ypopelates"
//AB/     Set ProjectFileName to "sl91.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl91 is a dbModalPanelSub
//     Yclients_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl91
Register_Object Yclients_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use YCLIENTS.DD

//AB-IgnoreEnd

Object sl91 is a dbModalPanelSub
    Set Label to "ìß¶Ø„≠†¶† èú¢·´ú™"
    Set Size to 226 497
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Yclients_DD is a Yclients_DataDictionary
    End_Object    // Yclients_DD

    Set Main_DD to (Yclients_DD(self))
    Set Server to (Yclients_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Yclients.File_Number
        Set Ordering to 1
        Set Size to 186 482
        Set Location to 6 6

        Begin_Row
            Entry_Item Yclients.Id
            Entry_Item Yclients.Name
            Entry_Item Yclients.Afm
            Entry_Item Yclients.Address
            Entry_Item Yclients.Phone
            Entry_Item Yclients.Fdate
            Entry_Item Yclients.Codem
        End_Row

        Set Form_Width    item 0 to 55
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 2 to 55
        Set Header_Label  item 2 to "Ä.î.ã"
        
        Set Form_Width    item 3 to 120
        Set Header_Label  item 3 to "É†úÁü¨§©û"
        
        Set Form_Width    item 4 to 58
        Set Header_Label  item 4 to "íû¢‚≠‡§¶"
        
        Set Form_Width    item 5 to 44
        Set Header_Label  item 5 to "Ü£.ò®Æ„™"
        
        Set Form_Width    item 6 to 44
        Set Header_Label  item 6 to "â‡õ.ë¨§õ."
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 194 331

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 194 387

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 194 441

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

End_Object    // sl91

//AB/ End_Object    // prj
