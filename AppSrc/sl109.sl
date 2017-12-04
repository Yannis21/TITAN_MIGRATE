//AB/ Project sl109
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl109"
//AB/     Set ProjectFileName to "sl109.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl109 is a dbModalPanelSub
//     Constrct_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Constrct_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl109


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CONSTRCT.DD

//AB-IgnoreEnd

Object sl109 is a dbModalPanelSub
    Set Label to "Ñ®ö¶¢·ô¶† "
    Set Size to 148 427
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Set Main_DD to (Constrct_DD(self))
    Set Server to (Constrct_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Constrct.File_Number
        Set Size to 105 415
        Set Location to 6 6

        Begin_Row
            Entry_Item Constrct.Cnt_id
            Entry_Item Constrct.Cnt_name
            Entry_Item Constrct.Cnt_afm
            Entry_Item Constrct.Cnt_address
            Entry_Item Constrct.Cnt_phone
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
        Set Location to 116 261

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 116 315

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 116 371

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

End_Object    // sl109

//AB/ End_Object    // prj
