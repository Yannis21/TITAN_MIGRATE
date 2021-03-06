//AB/ Project SL031:BTYPKIN
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL031:BTYPKIN"
//AB/     Set ProjectFileName to "SL031.SL"

// Project Object Structure
//   SL031 is a dbModalPanelSub
//     Btypkin_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Btypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL031


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use BTYPKIN.DD

//AB-IgnoreEnd

CD_Popup_Object SL031 is a dbModalPanelSub
    Set Label to " ¤ãŠ Ē  Ĩ Ļ¨á­ā¤"
    Set Size to 213 506
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Btypkin_DD is a Btypkin_DataDictionary
    End_Object    // Btypkin_DD

    Set Main_DD to (Btypkin_DD(self))
    Set Server to (Btypkin_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Btypkin.File_Number
        Set Size to 173 491
        Set Location to 3 6

        Begin_Row
            Entry_Item Btypkin.Btypkin_code
            Entry_Item Btypkin.Btypkin_descr
            Entry_Item Btypkin.Gtypkin_code
            Entry_Item Btypkin.Ctypkin_code
            Entry_Item Btypkin.Vtypkin_code
            Entry_Item Btypkin.Btypkin_anti_xp
            Entry_Item Btypkin.Locked
        End_Row

        Set Form_Width    item 0 to 39
        Set Header_Label  item 0 to "å¤Š"
        
        Set Form_Width    item 1 to 172
        Set Header_Label  item 1 to "¨ ¨­ã"
        
        Set Form_Width    item 2 to 46
        Set Header_Label  item 2 to "å¤Š "
        
        Set Form_Width    item 3 to 70
        Set Header_Label  item 3 to "å¤Š ĸĢé¤        "
        
        Set Form_Width    item 4 to 53
        Set Header_Label  item 4 to "å¤Š ¨ĻŖ."
        
        Set Form_Width    item 5 to 64
        Set Header_Label  item 5 to " Ŧ¤ĸĸŠĻŖ."
        
        Set Form_Width    item 6 to 42
        Set Header_Label  item 6 to "ĸ āŖâ¤"
        Set Column_Checkbox_State  item 6 to True
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&§ ĸĻã"
        Set Location to 177 337
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ąį¨āŠ"
        Set Location to 177 393
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "&¤ãĢŠ"
        Set Location to 177 447
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Search To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
    On_Key Key_Alt+Key_E Send KeyAction To oOk_bn
    On_Key Key_Alt+Key_A Send KeyAction To oCancel_bn
    On_Key Key_Alt+Key_N Send KeyAction To oSearch_bn
    
    //AB-StoreEnd

CD_End_Object    // SL031

//AB/ End_Object    // prj
