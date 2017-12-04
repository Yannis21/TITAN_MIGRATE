//AB/ Project sl186a:item-clients
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl186a:item-clients"
//AB/     Set ProjectFileName to "sl186a.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl186a is a dbModalPanelSub
//     clients_dd2 is a clients_DataDictionary
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     oSelList is a dblist
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object clients_dd2
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl186a
Register_Object Units_DD
Register_Object Witemcl_DD
Register_Object Witemkat_DD



//AB-StoreTopStart
open clients

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD
Use WITEMCL.DD

//AB-IgnoreEnd

Object sl186a is a dbModalPanelSub

    //AB-StoreTopStart

    Property String Fragmaprom Public ""

    object clients_dd2 is a clients_DataDictionary
    end_object

    Function fnclient String asCode Returns string
        String sDescr
        send clear to clients_dd2
        move asCode to clients.client_id
        send find to clients_dd2 eq 6
        get field_current_value of clients_dd2 field clients.client_name to sDescr
        function_return sDescr
    end_Function

    //AB-StoreTopEnd

    Set Label to "ÑÂõû Ä§· è®¶£ûüú¨´„"
    Set Size to 254 495
    Set Location to 5 5
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

    Object Witemcl_DD is a Witemcl_DataDictionary
        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart

        Begin_Constraints
            If (fragmaprom(Self)<>'') Begin
                Constrain witemcl.client_code eq (fragmaprom(Self))
            End
        End_Constraints


        //AB-StoreEnd

    End_Object    // Witemcl_DD

    Set Main_DD to (Witemcl_DD(self))
    Set Server to (Witemcl_DD(self))

    //AB-DDOEnd

    Object oSelList is a dblist
        Set Main_File to Witemcl.File_Number
        Set Ordering to 2
        Set Size to 212 480
        Set Location to 6 6
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679

        Begin_Row
            Entry_Item Item.Item_code
            Entry_Item Item.Item_descr
            Entry_Item Witemcl.Client_code
            Entry_Item (Fnclient(self,witemcl.client_code))
            Entry_Item Witemcl.Client_itemcode
            Entry_Item Witemcl.Client_date
            Entry_Item Witemcl.Client_price
        End_Row

        Set Form_Width    item 0 to 61
        Set Header_Label  item 0 to "â‡õ.ÑÂõ¶¨™"

        Set Form_Width    item 1 to 90
        Set Header_Label  item 1 to "èú®†ö®ò≠„ ÑÂõ¶¨™"

        Set Form_Width    item 2 to 55
        Set Header_Label  item 2 to "â‡õ.î¶®‚ò"

        Set Form_Width    item 3 to 96
        Set Header_Label  item 3 to "Ñß‡§¨£Âò î¶®‚ò"

        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "ÑÂõ¶™ è®¶£ûü."

        Set Form_Width    item 5 to 60
        Set Header_Label  item 5 to "í'Ü£/§Âò Ñ†©òö."

        Set Form_Width    item 6 to 52
        Set Header_Label  item 6 to "í'í†£„ Ñ†©òö."


        //AB-StoreStart

        Property String Store_Fragma_prom public ""

        Procedure Store_Defaults
           forward send Store_Defaults
           Set Store_Fragma_prom to (Fragmaprom(Self))
        end_Procedure

        Procedure Restore_Defaults
            forward send Restore_Defaults
            Set Fragmaprom to (Store_Fragma_prom(Self))
        end_Procedure

        Procedure Activating
            Forward Send Activating
            Send Rebuild_Constraints to WitemCl_DD
        End_Procedure

        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos  SysCurXr.C_Code0  to    iDecimals
            Set Points          Item 6 to       iDecimals
            Set Numeric_Mask    Item 6 to 14    iDecimals '*, '
        End_Procedure







        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 222 326

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 222 381

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 222 436

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
    procedure page integer pagemode
        forward send page pagemode
        set location to 40,40
    end_procedure













    //AB-StoreEnd

End_Object    // sl186a


//AB-StoreStart




//AB-StoreEnd

//AB/ End_Object    // prj
