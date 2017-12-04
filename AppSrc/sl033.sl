//AB/ Project SL033:BKINKAT
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL033:BKINKAT"
//AB/     Set ProjectFileName to "sl033.SL"

// Project Object Structure
//   sl033 is a dbModalPanelSub
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Btypkin_DD is a DataDictionary
//     Baxiokat_DD is a DataDictionary
//     Bkinkat_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Baxiokat_DD
Register_Object Bkinkat_DD
Register_Object Branch_DD
Register_Object Btypkin_DD
Register_Object Company_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl033
Register_Object Year_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD
Use BTYPKIN.DD
Use BAXIOKAT.DD
Use BKINKAT.DD

//AB-IgnoreEnd

CD_Popup_Object sl033 is a dbModalPanelSub

    //AB-StoreTopStart
    Property Integer piFragmaBtypkinCode 0
    
    
    
    //AB-StoreTopEnd

    Set Label to "âò´ûö¶®Âú™ ò•†¶ö®·≠‡§ ö†ò ´†™ °†§„©ú†™"
    Set Size to 206 362
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))
    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))
    End_Object    // Year_DD

    Object Btypkin_DD is a Btypkin_DataDictionary
        Set DDO_Server to (Year_DD(self))
    End_Object    // Btypkin_DD

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Object Bkinkat_DD is a Bkinkat_DataDictionary
        Set DDO_Server to (Btypkin_DD(self))
        Set DDO_Server to (Baxiokat_DD(self))

        //AB-StoreStart
                                
        Procedure OnConstrain
            Integer liBtypkinCode
        
            Get piFragmaBtypkinCode to liBtypkinCode
            If (liBtypkinCode <> 0) Constrain Bkinkat.Btypkin_Code eq liBtypkinCode
        End_Procedure // OnConstrain
        
        //AB-StoreEnd

    End_Object    // Bkinkat_DD

    Set Main_DD to (Bkinkat_DD(self))
    Set Server to (Bkinkat_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Bkinkat.File_Number
        Set Size to 164 350
        Set Location to 5 4

        Begin_Row
            Entry_Item Baxiokat.Baxiokat_code
            Entry_Item Baxiokat.Baxiokat_descr
            Entry_Item Baxiokat.Baxiokat_type
            Entry_Item (Export_Code_Description(Self,2,Baxiokat.Baxiokat_type))
        End_Row

        Set Form_Width    item 0 to 36
        Set Header_Label  item 0 to "Ñ†õ¶™"
        
        Set Form_Width    item 1 to 194
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 29
        Set Header_Label  item 2 to "Ñ†©./è¢û®."
        
        Set Form_Width    item 3 to 83
        Set Header_Label  item 3 to "Ñ†©./è¢û®."
        

        //AB-StoreStart
                                
        Property Integer piStoreFragmaBtypkinCode 0
        
        
        Procedure Store_Defaults
           Forward Send Store_Defaults
           Set piStoreFragmaBtypkinCode to (piFragmaBtypkinCode(Self))
        End_Procedure
        
        Procedure ReStore_Defaults
           Forward Send ReStore_Defaults
           Set piFragmaBtypkinCode to (piStoreFragmaBtypkinCode(Self))
        End_Procedure
        
        Procedure Activating
           Forward Send Activating
           Send Rebuild_Constraints to Bkinkat_DD
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 172 195

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 172 250

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 172 304

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

CD_End_Object    // sl033

//AB/ End_Object    // prj
