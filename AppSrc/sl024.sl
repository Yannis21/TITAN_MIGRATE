//AB/ Project sl024:kathgories eidon
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl024:kathgories eidon"
//AB/     Set ProjectFileName to "sl024.SL"

// Project Object Structure
//   sl024 is a dbModalPanelSub
//     Witemkat_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl024
Register_Object Witemkat_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WITEMKAT.DD

//AB-IgnoreEnd

Object sl024 is a dbModalPanelSub
    Set Label to "âò´ûö¶®Âú™ Ñ†õÈ§"
    Set Size to 217 375
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Set Main_DD to (Witemkat_DD(self))
    Set Server to (Witemkat_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Witemkat.File_Number
        Set Size to 175 357
        Set Location to 6 6

        Begin_Row
            Entry_Item Witemkat.Witemkat_code
            Entry_Item Witemkat.Witemkat_descr
        End_Row

        Set Form_Width    item 0 to 124
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 223
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 186 210

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 186 265

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 186 320

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

End_Object    // sl024

//AB/ End_Object    // prj
