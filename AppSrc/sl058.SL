//AB/ Project sl058 : Countries - Xores
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl058 : Countries - Xores"
//AB/         Set ProjectFileName to "sl058.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl058 is a dbModalPanelSub
//     Country_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Country_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl058


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use Country.DD
    
    //AB-IgnoreEnd

    Object sl058 is a dbModalPanelSub
        Set Label to "ïÈ®ú™"
        Set Size to 148 297
        Set Location to 6 10
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Set Main_DD to (Country_DD(self))
        Set Server to (Country_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Country.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Country.Country_id
                Entry_Item Country.Country_descr
            End_Row

            Set Form_Width    item 0 to 87
            Set Header_Label  item 0 to "â‡õ"
            
            Set Form_Width    item 1 to 183
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 115 126

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 115 181

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
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

    End_Object    // sl058

//AB/     End_Object    // prj
