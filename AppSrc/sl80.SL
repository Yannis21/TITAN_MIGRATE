//AB/ Project sl80:kathg-pagion
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl80:kathg-pagion"
//AB/         Set ProjectFileName to "sl80.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl80 is a dbModalPanelSub
//     Pagkat_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Pagkat_DD
Register_Object sl80


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use PAGKAT.DD
    
    //AB-IgnoreEnd

    Object sl80 is a dbModalPanelSub
        Set Label to "âò´ûö¶®Âú™ èòöÂ‡§"
        Set Size to 148 297
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Pagkat_DD is a Pagkat_DataDictionary
        End_Object    // Pagkat_DD

        Set Main_DD to (Pagkat_DD(self))
        Set Server to (Pagkat_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Pagkat.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Pagkat.Pagkat_code
                Entry_Item Pagkat.Pagkat_descr
            End_Row

            Set Form_Width    item 0 to 51
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 220
            Set Header_Label  item 1 to "âò´ûö¶®Âò"
            
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

    End_Object    // sl80

//AB/     End_Object    // prj
