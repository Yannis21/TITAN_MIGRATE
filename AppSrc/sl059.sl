//AB/ Project sl059
//AB/     Object prj is a LOOKUP_Project
//AB/         Set ProjectName to "sl059"
//AB/         Set ProjectFileName to "sl059.SL"
//AB/         Set GenerateFileName to "NONAME"

    //AB-IgnoreStart




    Use NOMISMA.DD

    //AB-IgnoreEnd

    CD_Popup_Object sl059 is a dbModalPanelSub
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE
        Set Popup_State to FALSE
        Set Minimize_Icon to FALSE
        set label to "å¶£Â©£ò´ò" 
        Set Size to 148 295
        Set Location to 4 5

        //AB-DDOStart

        Object Nomisma_DD is a Nomisma_DataDictionary
        End_Object    // Nomisma_DD

        Set Main_DD to (Nomisma_DD(Current_Object))
        Set Server to (Nomisma_DD(Current_Object))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Nomisma.File_Number
            Set Size to 105 278
            Set Location to 6 6

            Begin_Row
                Entry_Item Nomisma.Nomisma_code
                Entry_Item Nomisma.Nomisma_descr
                Entry_Item Nomisma.Nomisma_short
                Entry_Item Nomisma.Dekadika
            End_Row

            Set Form_Width    item 0 to 45
            set header_label  item 0 to "â‡õ†°¶™" 

            Set Form_Width    item 1 to 115
            set header_label  item 1 to "èú®†ö®ò≠„" 

            Set Form_Width    item 2 to 58
            set header_label  item 2 to "ëÁ§´¶£û" 

            Set Form_Width    item 3 to 54
            set header_label  item 3 to "Éú°òõ†°·" 

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 113 124

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 113 179

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 113 234

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

    CD_End_Object    // sl059

//AB/     End_Object    // prj
