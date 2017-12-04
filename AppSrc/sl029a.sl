//AB/ Project sl029a:wtypkin
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl029a:wtypkin"
//AB/         Set ProjectFileName to "sl029a.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl029a is a dbModalPanelSub
//     Wtypkin_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl029a
Register_Object Wtypkin_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use WTYPKIN.DD
    
    //AB-IgnoreEnd

    Object sl029a is a dbModalPanelSub
        set label to "é®†©£Ê™ â†§„©ú‡§ Äß¶ü„°û™" 
        Set Size to 148 297
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Set Main_DD to (Wtypkin_DD(self))
        Set Server to (Wtypkin_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Wtypkin.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Wtypkin.Wtypkin_code
                Entry_Item Wtypkin.Wtypkin_descr
            End_Row

            Set Form_Width    item 0 to 60
            set header_label  item 0 to "â‡õ†°¶™" 
            
            Set Form_Width    item 1 to 212
            set header_label  item 1 to "èú®†ö®ò≠„" 
            
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

    End_Object    // sl029a

//AB/     End_Object    // prj
