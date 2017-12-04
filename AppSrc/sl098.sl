//AB/ Project SL098:CURRENCIES
//AB/     Object prj is a LOOKUP_Project
//AB/         Set ProjectName to "SL098:CURRENCIES"
//AB/         Set ProjectFileName to "SL098.SL"
//AB/         Set GenerateFileName to "NONAME"

    //AB-IgnoreStart

    USE AllEntSC


    Use CURRENCY.DD

    //AB-IgnoreEnd

    CD_Popup_Object SL098 is a dbModalPanelSub
        Set Minimize_Icon to FALSE
        Set Label to "(Xlate(Label(Self)))"
        Set Size to 148 198
        Set Location to 4 5

        //AB-DDOStart

        Object Currency_DD is a Currency_DataDictionary
        End_Object    // Currency_DD

        Set Main_DD to (Currency_DD(Current_Object))
        Set Server to (Currency_DD(Current_Object))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Currency.File_Number
            Set Size to 105 186
            Set Location to 6 3

            Begin_Row
                Entry_Item Currency.Currency_rec0
                Entry_Item Currency.Currency_c_code
            End_Row

            Set Form_Width    item 0 to 38
            Set Header_Label  item 0 to "Currency rec0"

            Set Form_Width    item 1 to 135
            Set Header_Label  item 1 to "Currency c code"

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 112 29

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 112 83

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 112 138

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

    CD_End_Object    // SL098

//AB/     End_Object    // prj
