//AB/ Project sl163:Protypa Arthra
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl163:Protypa Arthra"
//AB/     Set ProjectFileName to "Sl163.sl"

// Project Object Structure
//   sl163 is a dbModalPanelSub
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Gparticl_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Gparticl_DD
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl163


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use GTHHMGIO.DD
Use GTYPKIN.DD
Use GPARTICL.DD

//AB-IgnoreEnd

CD_Popup_Object sl163 is a dbModalPanelSub

    //AB-StoreTopStart
    
    //AB-StoreTopEnd

    Set Minimize_Icon to FALSE
    Set Label to "è®Ê´¨ßò Ä®ü®ò"
    Set Size to 148 455
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary
    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))
    End_Object    // Gtypkin_DD

    Object Gparticl_DD is a Gparticl_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))
    End_Object    // Gparticl_DD

    Set Main_DD to (Gparticl_DD(self))
    Set Server to (Gparticl_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Gparticl.File_Number
        Set Size to 105 441
        Set Location to 6 6

        Begin_Row
            Entry_Item Gparticl.Garticl_recr
            Entry_Item Gparticl.Garticl_par
            Entry_Item Gparticl.Gtypkin_code
            Entry_Item Gtypkin.Gtypkin_descr
            Entry_Item Gparticl.Garticl_c_code2
        End_Row

        Set Form_Width    item 0 to 50
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 187
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 39
        Set Header_Label  item 2 to "âÂ§û©û"
        
        Set Form_Width    item 3 to 117
        Set Header_Label  item 3 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 4 to 40
        Set Header_Label  item 4 to "åÊ£†©£ò"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 114 287

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 114 341

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 114 397

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
    Set Label to "è®Ê´¨ßò Ä®ü®ò"
    
    //AB-StoreEnd

CD_End_Object    // sl163

//AB/ End_Object    // prj
