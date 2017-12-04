//AB/ Project slUserGr
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slUserGr"
//AB/         Set ProjectFileName to "slusergr.sl"

// Project Object Structure
//   slUserGr is a dbModalPanelSub
//     Usergrps_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object slUserGr
Register_Object Usergrps_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use USERGRPS.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object slUserGr is a dbModalPanelSub
        Set Label to "é£·õú™ ï®û©´È§"
        Set Size to 148 297
        Set Location to 4 8
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Set Main_DD to (Usergrps_DD(self))
        Set Server to (Usergrps_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Usergrps.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Usergrps.Grp_id
                Entry_Item Usergrps.Grp_name
            End_Row

            Set Form_Width    item 0 to 61
            Set Header_Label  item 0 to "â‡õ.é£·õ¶™"
            
            Set Form_Width    item 1 to 213
            Set Header_Label  item 1 to "é§¶£ò©Âò"
            

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
            Set Location to 115 126
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "Ä°Á®‡©û"
            Set Location to 115 181
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä§òù„´û©û"
            Set Location to 115 236
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

    CD_End_Object    // slUserGr

//AB/     End_Object    // prj
