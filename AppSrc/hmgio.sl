//AB/ Project Hmgio:Lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Hmgio:Lookup"
//AB/     Set ProjectFileName to "Hmgio.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Hmgio is a dbModalPanelSub
//     Hmgio_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Hmgio
Register_Object Hmgio_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use HMGIO.DD

//AB-IgnoreEnd

Object Hmgio is a dbModalPanelSub

    //AB-StoreTopStart
    Property String psModule Public ''
    
    //AB-StoreTopEnd

    Set Label to "Ü£ú®¶¢Êö†ò"
    Set Size to 200 297
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Hmgio_DD is a Hmgio_DataDictionary

        //AB-StoreStart
        Function fiEggrafh_OK Returns Integer
            Integer rVal
            String sModule
            Get psModule to sModule
            If ((hmgio.Hmgio_Module=smodule) Or (hmgio.Hmgio_Module='04')) Move 1 to rVal
            Function_Return rVal
        End_Function
        
        Begin_Constraints
             Constrain hmgio as (fiEggrafh_OK(Self)=1)
        End_Constraints
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Hmgio_DD

    Set Main_DD to (Hmgio_DD(self))
    Set Server to (Hmgio_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Hmgio.File_Number
        Set Size to 161 280
        Set Location to 6 6
        Set Auto_Index_State to FALSE

        Begin_Row
            Entry_Item Hmgio.Hmgio_code
            Entry_Item Hmgio.Hmgio_descr
        End_Row

        Set Form_Width    item 0 to 84
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 188
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
                                    
        Procedure Activate
            Forward Send Activate
            Send Rebuild_Constraints to Hmgio_DD
            Send Beginning_Of_Data to oSelList True
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 169 131

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 169 185

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 169 241

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

End_Object    // Hmgio

//AB/ End_Object    // prj
