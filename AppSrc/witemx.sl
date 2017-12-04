//AB/ Project Witemx:Lookup Eidon Apothikhs
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "Witemx:Lookup Eidon Apothikhs"
//AB/         Set ProjectFileName to "Witemx.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Witemx is a dbModalPanelSub
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Item_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Units_DD
Register_Object Witemkat_DD
Register_Object Witemx
Register_Object Witemx_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use UNITS.DD
    Use WITEMKAT.DD
    Use ITEM.DD
    Use WITEMX.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object Witemx is a dbModalPanelSub
        set label to "Ñ†õû / Witemx" 
        Set Size to 148 503
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Item_DD is a Item_DataDictionary
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
        End_Object    // Item_DD

        Object Witemx_DD is a Witemx_DataDictionary
            Set DDO_Server to (Item_DD(self))
        End_Object    // Witemx_DD

        Set Main_DD to (Witemx_DD(self))
        Set Server to (Witemx_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Witemx.File_Number
            Set Size to 105 488
            Set Location to 6 6

            Begin_Row
                Entry_Item Witemx.Witemx_recr
                Entry_Item Witemx.Witemx_code
                Entry_Item Witemx.Witemx_descr
                entry_item units.units_descr 
                Entry_Item Witemkat.Witemkat_descr
                Entry_Item Item.Item_descr
            End_Row

            Set Form_Width    item 0 to 43
            Set Header_Label  item 0 to "Recr"
            
            Set Form_Width    item 1 to 43
            set header_label  item 1 to "â‡õ†°¶™" 
            
            Set Form_Width    item 2 to 176
            set header_label  item 2 to "èú®†ö®ò≠„" 
            
            Set Form_Width    item 3 to 46
            set header_label  item 3 to "ã/ã" 
            
            Set Form_Width    item 4 to 104
            set header_label  item 4 to "âò´ûö¶®Âò   :" 
            
            Set Form_Width    item 5 to 69
            set header_label  item 5 to "Ñ†õ¶™" 
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 113 335

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 113 390

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 113 445

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

    CD_End_Object    // Witemx

//AB/     End_Object    // prj
