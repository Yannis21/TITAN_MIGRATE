//AB/ Project Oth:Lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Oth:Lookup"
//AB/     Set ProjectFileName to "Oth.SL"

// Project Object Structure
//   Oth is a dbModalPanelSub
//     Oth_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Oth
Register_Object Oth_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use OTH.DD

//AB-IgnoreEnd

CD_Popup_Object Oth is a dbModalPanelSub

    //AB-StoreTopStart
    
    //AB-StoreTopEnd

    Set Label to "Select a Screen View"
    Set Size to 148 481
    Set Location to 14 28
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Oth_DD is a Oth_DataDictionary
    End_Object    // Oth_DD

    Set Main_DD to (Oth_DD(self))
    Set Server to (Oth_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Oth.File_Number
        Set Ordering to 1
        Set Size to 105 466
        Set Location to 6 6

        Begin_Row
            Entry_Item Oth.View_name
            Entry_Item Oth.View_label
        End_Row

        Set Form_Width    item 0 to 189
        Set Header_Label  item 0 to "View name"
        
        Set Form_Width    item 1 to 269
        Set Header_Label  item 1 to "View label"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 312
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 367
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 113 422
        Set Form_TypeFace Item 0 to "MS Sans Serif"

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

CD_End_Object    // Oth

//AB/ End_Object    // prj
