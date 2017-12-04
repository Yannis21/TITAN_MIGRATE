//AB/ Project Fpa:Lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Fpa:Lookup"
//AB/     Set ProjectFileName to "Fpa.SL"

// Project Object Structure
//   Fpa is a dbModalPanelSub
//     Fpa_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Fpa
Register_Object Fpa_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use FPA.DD

//AB-IgnoreEnd

CD_Popup_Object Fpa is a dbModalPanelSub
    set label to "è¶©¶©´· î.è.Ä." 
    Set Size to 148 181
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Set Main_DD to (Fpa_DD(self))
    Set Server to (Fpa_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Fpa.File_Number
        Set Size to 105 165
        Set Location to 6 6

        Begin_Row
            Entry_Item Fpa.Fpa_pososto
            Entry_Item Fpa.Fpa_descr
        End_Row

        Set Form_Width    item 0 to 66
        set header_label  item 0 to "% îèÄ" 
        
        Set Form_Width    item 1 to 90
        set header_label  item 1 to "èú®†ö®ò≠„" 
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&Ñß†¢¶ö„" 
        Set Size to 14 46
        Set Location to 113 26

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ä°Á®‡©û" 
        Set Size to 14 46
        Set Location to 113 75

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "Ä&§òù„´û©û" 
        Set Size to 14 46
        Set Location to 113 126

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

CD_End_Object    // Fpa

//AB/ End_Object    // prj
