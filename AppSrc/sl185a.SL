//AB/ Project sl185a:entoles paragoghs
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl185a:entoles paragoghs"
//AB/     Set ProjectFileName to "sl185a.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl185a is a dbModalPanelSub
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Witemxen_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     the_table is a dbGridSub

// Register all objects
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl185a
Register_Object the_table
Register_Object Units_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Witemxen_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub
Use dbGrid.Sub


Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use WITEMXEN.DD

//AB-IgnoreEnd

Object sl185a is a dbModalPanelSub

    //AB-StoreTopStart
    Function fnwhat integer code Returns string
        string name
        integer what
        move code to what
        if (what = 1);
           move 'è®Ê™ ëÁ§üú©û' to name
        else;
           move 'è®Ê™ Äß¶©Á§üú©û' to name
        function_return name
    end_Function
    //AB-StoreTopEnd

    Set Label to "Ñ¨®ú´„®†¶ Ñ§´¶¢È§ èò®òö‡ö„™"
    Set Size to 148 499
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))
    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))
    End_Object    // Witemx_DD

    Object Witemxen_DD is a Witemxen_DataDictionary
        Set DDO_Server to (Witemx_DD(self))
    End_Object    // Witemxen_DD

    Set Main_DD to (Witemxen_DD(self))
    Set Server to (Witemxen_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Size to 105 280
        Set Location to 6 6


    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 330

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 385

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 113 440

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn

    Object the_table is a dbGridSub
        Set Main_File to Witemxen.File_Number
        Set Ordering to 3
        Set Size to 106 493
        Set Location to 2 1
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Witemxen.Witemxen_hmnia
            Entry_Item Witemxen.Witemxen_recr
            Entry_Item Witemxen.Witemxen_code
            Entry_Item Witemx.Witemx_descr
            Entry_Item Witemxen.Status
            Entry_Item (Fnwhat(self,witemxen.status))
            Entry_Item Witemxen.Qty
        End_Row

        Set Form_Width    item 0 to 65
        Set Header_Label  item 0 to "Ü£/§Âò Ñ§´¶¢È§"
        
        Set Form_Width    item 1 to 56
        Set Header_Label  item 1 to "Ä/ò Ñ§´¶¢„™"
        
        Set Form_Width    item 2 to 80
        Set Header_Label  item 2 to "â‡õ†°Ê™ ÑÂõ¶¨™"
        
        Set Form_Width    item 3 to 120
        Set Header_Label  item 3 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
        
        Set Form_Width    item 4 to 45
        Set Header_Label  item 4 to "âò´ûö¶®Âò"
        
        Set Form_Width    item 5 to 74
        Set Header_Label  item 5 to "Ñ§´¶¢„ èò®òö‡ö„™"
        
        Set Form_Width    item 6 to 46
        Set Header_Label  item 6 to "è¶©Ê´û´ò"
        

        //AB-StoreStart
        Set Points Of the_table  Item  6 to 1
        
        
        //AB-StoreEnd

    End_Object    // the_table


    //AB-StoreStart
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    //AB-StoreEnd

End_Object    // sl185a

//AB/ End_Object    // prj
