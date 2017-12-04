//AB/ Project Salesmen:lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Salesmen:lookup"
//AB/     Set ProjectFileName to "Salesmen.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Salesmen is a dbModalPanelSub
//     Salesgrp_DD is a DataDictionary
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
Register_Object Salesgrp_DD
Register_Object Salesmen
Register_Object Salesmen_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use SALESGRP.DD
Use SALESMEN.DD

//AB-IgnoreEnd

CD_Popup_Object Salesmen is a dbModalPanelSub
    Set Label to "SalesMen"
    Set Size to 148 505
    Set Location to 6 6
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Salesgrp_DD is a Salesgrp_DataDictionary
    End_Object    // Salesgrp_DD

    Object Salesmen_DD is a Salesmen_DataDictionary
        Set DDO_Server to (Salesgrp_DD(self))
    End_Object    // Salesmen_DD

    Set Main_DD to (Salesmen_DD(self))
    Set Server to (Salesmen_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Salesmen.File_Number
        Set Size to 105 490
        Set Location to 6 6

        Begin_Row
            Entry_Item Salesmen.Sls_id
            Entry_Item Salesmen.Sls_name
            Entry_Item Salesmen.Sls_phone
            Entry_Item Salesgrp.Descr
        End_Row

        Set Form_Width    item 0 to 59
        set header_label  item 0 to "â‡õ†°¶™" 
        
        Set Form_Width    item 1 to 189
        set header_label  item 1 to "Ñß‡§¨£Âò" 
        
        Set Form_Width    item 2 to 151
        set header_label  item 2 to "íû¢‚≠‡§ò" 
        
        Set Form_Width    item 3 to 84
        set header_label  item 3 to "é£·õò/é£Â¢¶¨" 
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&Ñß†¢¶ö„" 
        Set Location to 113 337

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ä°Á®‡©û" 
        Set Location to 113 391

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "Ä&§òù„´û©û" 
        Set Location to 113 447

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

CD_End_Object    // Salesmen

//AB/ End_Object    // prj
