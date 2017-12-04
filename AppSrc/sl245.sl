//AB/ Project sl245
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl245"
//AB/     Set ProjectFileName to "sl245.sl"

// Project Object Structure
//   sl245 is a dbModalPanelSub
//     Arxeia_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Arxeia_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl245


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use ARXEIA.DD

//AB-IgnoreEnd

CD_Popup_Object sl245 is a dbModalPanelSub
    Set Label to "Ä®ÆúÂò"
    Set Size to 148 402
    Set Location to 10 52
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Arxeia_DD is a Arxeia_DataDictionary
    End_Object    // Arxeia_DD

    Set Main_DD to (Arxeia_DD(self))
    Set Server to (Arxeia_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Arxeia.File_Number
        Set Size to 105 385
        Set Location to 6 6

        Begin_Row
            Entry_Item Arxeia.Arxeio_id
            Entry_Item Arxeia.Arxeio_name
            Entry_Item Arxeia.Access_name
        End_Row

        Set Form_Width    item 0 to 65
        Set Header_Label  item 0 to "Ä/Ä Ä®ÆúÂ¶¨"
        
        Set Form_Width    item 1 to 114
        Set Header_Label  item 1 to "é§¶£ò©Âò Ä®ÆúÂ¶¨"
        
        Set Form_Width    item 2 to 197
        Set Header_Label  item 2 to "î†¢†°Ê ß®¶™ ´¶§ ï®„©´û é§¶£ò "
        

        //AB-StoreStart
        Set Color to 16776436
        Set TextColor to clNavy
        Set CurrentRowColor to 16775135
        Set CurrentRowTextColor to clNavy
        Set CurrentCellColor to 16775135
        Set CurrentCellTextColor to clNavy
        Set Header_Column_Sorted_State to True
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "Ñß†¢¶ö„"
        Set Location to 113 230
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "Ä°Á®‡©û"
        Set Location to 113 286
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä§òù„´û©û"
        Set Location to 113 341
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

CD_End_Object    // sl245

//AB/ End_Object    // prj
