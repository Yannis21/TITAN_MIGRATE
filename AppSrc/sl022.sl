//AB/ Project sl022:kathg-apothkon
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl022:kathg-apothkon"
//AB/     Set ProjectFileName to "sl022.SL"

// Project Object Structure
//   sl022 is a dbModalPanelSub
//     Wapokat_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl022
Register_Object Wapokat_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WAPOKAT.DD

//AB-IgnoreEnd

CD_Popup_Object sl022 is a dbModalPanelSub
    set label to "ĢĻ¨åĒ §ĻĄé¤" 
    Set Size to 148 297
    Set Location to 12 19
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Set Main_DD to (Wapokat_DD(self))
    Set Server to (Wapokat_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Wapokat.File_Number
        Set Size to 105 280
        Set Location to 6 6

        Begin_Row
            Entry_Item Wapokat.Wapokat_code
            Entry_Item Wapokat.Wapokat_descr
        End_Row

        Set Form_Width    item 0 to 42
        set header_label  item 0 to "ā ĄĻĒ" 
        
        Set Form_Width    item 1 to 228
        set header_label  item 1 to "¨ ¨­ã" 
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&§ ĸĻã" 
        Set Location to 115 126

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ąį¨āŠ" 
        Set Location to 115 181

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "&¤ãĢŠ" 
        Set Location to 115 236

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

CD_End_Object    // sl022

//AB/ End_Object    // prj
