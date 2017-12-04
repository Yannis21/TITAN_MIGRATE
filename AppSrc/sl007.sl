//AB/ Project Ctypkin : sl007
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Ctypkin : sl007"
//AB/     Set ProjectFileName to "sl007.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl007 is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Ctypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl007


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CTYPKIN.DD

//AB-IgnoreEnd

Object sl007 is a dbModalPanelSub

    //AB-StoreTopStart
    Property String psModule Public ''
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™    "
    Set Size to 148 350
    Set Location to 4 7
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                
        Begin_Constraints
            If (psModule(sl007(Self))<>'') Constrain Ctypkin.Ctypkin_Module eq (psModule(sl007(Self)))
        End_Constraints
        
        
        
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Set Main_DD to (Ctypkin_DD(self))
    Set Server to (Ctypkin_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Ctypkin.File_Number
        Set Size to 105 335
        Set Location to 6 6

        Begin_Row
            Entry_Item Ctypkin.Ctypkin_code
            Entry_Item Ctypkin.Ctypkin_descr
        End_Row

        Set Form_Width    item 0 to 71
        Set Header_Label  item 0 to "â‡õ†°Ê™ â†§„©ú‡™"
        
        Set Form_Width    item 1 to 255
        Set Header_Label  item 1 to "èú®†ö®ò≠„ â†§„©ú‡™"
        

        //AB-StoreStart
                    
                    
        Procedure Activate
            Forward Send Activate
            Send Beginning_Of_Data to oSelList True
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 171

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 226

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 113 281

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
    
    Procedure Activate Returns Integer
        Integer rVal
        Send Rebuild_Constraints to Ctypkin_DD
        Forward Get Msg_Activate to rVal
        Procedure_Return rVal
    End_Procedure
    
    //AB-StoreEnd

End_Object    // sl007

//AB/ End_Object    // prj
