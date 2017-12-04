//AB/ Project sl111
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl111"
//AB/     Set ProjectFileName to "sl111.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl111 is a dbModalPanelSub
//     Payresp_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Payresp_DD
Register_Object sl111


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use PAYRESP.DD

//AB-IgnoreEnd

Object sl111 is a dbModalPanelSub
    Set Label to "ìßúÁü¨§¶† è¢û®‡£È§ "
    Set Size to 148 443
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Set Main_DD to (Payresp_DD(self))
    Set Server to (Payresp_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Payresp.File_Number
        Set Size to 105 430
        Set Location to 6 6

        Begin_Row
            Entry_Item Payresp.Presp_id
            Entry_Item Payresp.Presp_name
            Entry_Item Payresp.Presp_afm
            Entry_Item Payresp.Presp_address
            Entry_Item Payresp.Presp_phone
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 106
        Set Header_Label  item 1 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "Ä.î.ã"
        
        Set Form_Width    item 3 to 135
        Set Header_Label  item 3 to "É†úÁü¨§©û"
        
        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "íû¢‚≠‡§¶"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 277

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 332

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 113 387

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

End_Object    // sl111

//AB/ End_Object    // prj
