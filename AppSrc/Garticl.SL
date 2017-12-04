//AB/ Project Garticl:Garticl
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Garticl:Garticl"
//AB/     Set ProjectFileName to "Garticl.SL"

// Project Object Structure
//   Garticl is a dbModalPanelSub
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Garticl_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Garticl
Register_Object Garticl_DD
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use GTHHMGIO.DD
Use GTYPKIN.DD
Use GARTICL.DD

//AB-IgnoreEnd

CD_Popup_Object Garticl is a dbModalPanelSub

    //AB-StoreTopStart
    Property String psFragmaGtypkinRecr ''
    
    //AB-StoreTopEnd

    Set Minimize_Icon to FALSE
    Set Label to "äÂ©´ò Ä®ü®‡§"
    Set Size to 286 407
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary
    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))
    End_Object    // Gtypkin_DD

    Object Garticl_DD is a Garticl_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))

        //AB-StoreStart
                
        Procedure OnConstrain
            String lsGtypkinRecr
        
            Get psFragmaGtypkinRecr to lsGtypkinRecr
            If (lsGtypkinRecr <> 0) Constrain Garticl.Gtypkin_Recr eq lsGtypkinRecr
        End_Procedure // OnConstrain
        
        //AB-StoreEnd

    End_Object    // Garticl_DD

    Set Main_DD to (Garticl_DD(self))
    Set Server to (Garticl_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Garticl.File_Number
        Set Size to 247 393
        Set Location to 6 6

        Begin_Row
            Entry_Item Garticl.Garticl_hmnia
            Entry_Item Garticl.Gtypkin_code
            Entry_Item Gthhmgio.Gthhmgio_code
            Entry_Item Garticl.Garticl_recr
            Entry_Item Gtypkin.Gtypkin_descr
            Entry_Item Garticl.Garticl_aitiol
        End_Row

        Set Form_Width    item 0 to 53
        Set Header_Label  item 0 to "Ü£ú®¶£û§Âò"
        
        Set Form_Width    item 1 to 37
        Set Header_Label  item 1 to "âÂ§û©û"
        
        Set Form_Width    item 2 to 33
        Set Header_Label  item 2 to "Ü£/ö†¶"
        
        Set Form_Width    item 3 to 50
        Set Header_Label  item 3 to "Ä®.  Ä®ü®¶¨"
        
        Set Form_Width    item 4 to 100
        Set Header_Label  item 4 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 5 to 113
        Set Header_Label  item 5 to "Ä†´†¶¢¶öÂò"
        

        //AB-StoreStart
                
        Property String psStoreFragmaGtypkinRecr ''
        
        Procedure Store_Defaults
            forward send Store_Defaults
            Set psStoreFragmaGtypkinRecr to (psFragmaGtypkinRecr(Self))
        end_Procedure // Store_Defaults
        
        Procedure Restore_Defaults
            forward send Restore_Defaults
            Set psFragmaGtypkinRecr to (psStoreFragmaGtypkinRecr(self))
        end_Procedure // Restore_Defaults
        
        Procedure Activating
            Forward Send Activating
            Send Rebuild_Constraints to (Garticl_DD(self))
        End_Procedure // Activating
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 257 241

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 257 294

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 257 350

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

CD_End_Object    // Garticl

//AB/ End_Object    // prj
