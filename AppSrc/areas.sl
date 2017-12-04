//AB/ Project Areas:lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Areas:lookup"
//AB/     Set ProjectFileName to "Areas.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Areas is a dbModalPanelSub
//     Areas_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Areas
Register_Object Areas_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use AREAS.DD

//AB-IgnoreEnd

CD_Popup_Object Areas is a dbModalPanelSub
    Set Label to "Areas"
    Set Size to 148 297
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Set Main_DD to (Areas_DD(self))
    Set Server to (Areas_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Areas.File_Number
        Set Size to 105 280
        Set Location to 6 6

        Begin_Row
            Entry_Item Areas.Area_id
            Entry_Item Areas.Area_descr
            Entry_Item Areas.Area_site
        End_Row

        Set Form_Width    item 0 to 44
        set header_label  item 0 to "â‡õ†°¶™" 
        
        Set Form_Width    item 1 to 194
        set header_label  item 1 to "èú®†ö®ò≠„" 
        
        Set Form_Width    item 2 to 34
        Set Header_Label  item 2 to "Site"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&Ñß†¢¶ö„" 
        Set Location to 115 126

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ä°Á®‡©û" 
        Set Location to 115 181

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "Ä&§òù„´û©û" 
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

CD_End_Object    // Areas

//AB/ End_Object    // prj
