//AB/ Project CodeType LookUp
//AB/     Object prj is a LOOKUP_Project
//AB/         Set ProjectName to "CodeType LookUp"
//AB/         Set ProjectFileName to "Codetype.sl"

    //AB-IgnoreStart

    USE AllentSc


    Use CODETYPE.DD

    //AB-IgnoreEnd

    CD_Popup_Object CodeType_SL is a dbModalPanelSub
        Set Minimize_Icon to FALSE
        set label to "Ä®ÆúÂ¶ CODETYPE" 
        Set Size to 151 264
        Set Location to 5 5

        //AB-DDOStart

        Object Codetype_DD is a Codetype_DataDictionary
        End_Object    // Codetype_DD

        Set Main_DD to (Codetype_DD(Current_Object))
        Set Server to (Codetype_DD(Current_Object))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Codetype.File_Number
            Set Size to 105 247
            Set Location to 6 6

            Begin_Row
                Entry_Item Codetype.Type
                Entry_Item Codetype.Description
            End_Row

            Set Form_Width    item 0 to 60
            set header_label  item 0 to "íÁß¶™" 

            Set Form_Width    item 1 to 180
            set header_label  item 1 to "èú®†ö®ò≠„" 

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Default_State to TRUE
            set label to "&Ñß†¢¶ö„" 
            Set Location to 115 93

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 115 148

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 115 203

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

    CD_End_Object    // CodeType_SL

//AB/     End_Object    // prj
