//AB/ Project slPayTerms
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "slPayTerms"
//AB/     Set ProjectFileName to "slPayTerms.SL"

// Project Object Structure
//   slPayTerms is a dbModalPanelSub
//     PayTerms_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object PayTerms_DD
Register_Object slPayTerms


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use PAYTERMS.DD

//AB-IgnoreEnd

Object slPayTerms is a dbModalPanelSub
    Set Label to "Ó®¶† è¢û®‡£„™"
    Set Size to 223 461
    Set Location to 7 15

    //AB-DDOStart

    Object PayTerms_DD is a Payterms_DataDictionary
    End_Object    // PayTerms_DD

    Set Main_DD to (PayTerms_DD(self))
    Set Server to (PayTerms_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Payterms.File_Number
        Set Size to 181 445
        Set Location to 6 6
        Set Auto_Server_State to TRUE

        Begin_Row
            Entry_Item Payterms.Payterms_code
            Entry_Item Payterms.Payterms_descr
            Entry_Item Payterms.Old_description
        End_Row

        Set Form_Width    item 0 to 67
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 209
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 163
        Set Header_Label  item 2 to "èò¢ò†· èú®†ö®ò≠„"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 191 293
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 191 347
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 191 403
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

End_Object    // slPayTerms

//AB/ End_Object    // prj
