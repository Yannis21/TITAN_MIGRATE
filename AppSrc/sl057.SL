//AB/ Project sl057 : Towns -Nomoi - Eyr Perioxes
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl057 : Towns -Nomoi - Eyr Perioxes"
//AB/         Set ProjectFileName to "sl057.SL"

// Project Object Structure
//   sl057 is a dbModalPanelSub
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
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
Register_Object sl057
Register_Object Towns_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use COUNTRY.DD
    Use TOWNS.DD
    
    //AB-IgnoreEnd

    Object sl057 is a dbModalPanelSub
        Set Label to "å¶£¶Â - Ñ¨®Á´ú®ú™ ßú®†¶Æ‚™"
        Set Size to 148 297
        Set Location to 6 10
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Set Main_DD to (Towns_DD(self))
        Set Server to (Towns_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Towns.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Towns.Town_id
                Entry_Item Towns.Town_descr
                Entry_Item Country.Country_descr
            End_Row

            Set Form_Width    item 0 to 43
            Set Header_Label  item 0 to "â‡õ"
            
            Set Form_Width    item 1 to 137
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 94
            Set Header_Label  item 2 to "ïÈ®ò"
            
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

    End_Object    // sl057

//AB/     End_Object    // prj
