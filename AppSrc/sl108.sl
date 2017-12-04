//AB/ Project sl108:polhtes
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl108:polhtes"
//AB/     Set ProjectFileName to "sl108.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl108 is a dbModalPanelSub
//     Salesmen_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Salesmen_DD
Register_Object sl108


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use SALESMEN.DD

//AB-IgnoreEnd

Object sl108 is a dbModalPanelSub
    Set Label to "ãû´®È¶ è‡¢û´È§"
    Set Size to 148 421
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Set Main_DD to (Salesmen_DD(self))
    Set Server to (Salesmen_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Salesmen.File_Number
        Set Size to 105 408
        Set Location to 6 6

        Begin_Row
            Entry_Item Salesmen.Sls_id
            Entry_Item Salesmen.Sls_name
            Entry_Item Salesmen.Sls_afm
            Entry_Item Salesmen.Sls_address
            Entry_Item Salesmen.Sls_phone
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "â‡õ†°¶™"
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "Ä.î.ã"
        
        Set Form_Width    item 3 to 125
        Set Header_Label  item 3 to "É†úÁü¨§©û"
        
        Set Form_Width    item 4 to 54
        Set Header_Label  item 4 to "íû¢‚≠‡§¶"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 117 255

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 117 310

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 117 365

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

End_Object    // sl108

//AB/ End_Object    // prj
