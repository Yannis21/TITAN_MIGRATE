//AB/ Project CONSTRCN:LOOKUP
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "CONSTRCN:LOOKUP"
//AB/     Set ProjectFileName to "CONSTRCN.SL"

// Project Object Structure
//   CONSTRCN is a dbModalPanelSub
//     Constrct_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object CONSTRCN
Register_Object Constrct_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CONSTRCT.DD

//AB-IgnoreEnd

CD_Popup_Object CONSTRCN is a dbModalPanelSub
    Set Label to "Constructors"
    Set Size to 148 423
    Set Location to 6 6
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Set Main_DD to (Constrct_DD(self))
    Set Server to (Constrct_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Constrct.File_Number
        Set Size to 105 406
        Set Location to 6 6

        Begin_Row
            Entry_Item Constrct.Cnt_id
            Entry_Item Constrct.Cnt_name
            Entry_Item Constrct.Cnt_phone
        End_Row

        Set Form_Width    item 0 to 59
        Set Header_Label  item 0 to "�������"
        
        Set Form_Width    item 1 to 189
        Set Header_Label  item 1 to "��ब��"
        
        Set Form_Width    item 2 to 151
        Set Header_Label  item 2 to "����घ"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&�������"
        Set Location to 114 253

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&���ਫ਼"
        Set Location to 114 307

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "�&���㫞��"
        Set Location to 114 363

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

CD_End_Object    // CONSTRCN

//AB/ End_Object    // prj
