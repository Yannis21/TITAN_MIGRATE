//AB/ Project sl23: apothkes
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl23: apothkes"
//AB/         Set ProjectFileName to "sl23.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl23 is a dbModalPanelSub
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl23
Register_Object Wapokat_DD
Register_Object Wapomast_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use WAPOKAT.DD
    Use WAPOMAST.DD
    
    //AB-IgnoreEnd

    Object sl23 is a dbModalPanelSub
        set label to "Äß¶ü„°ú™" 
        Set Size to 148 285
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Wapokat_DD is a Wapokat_DataDictionary
        End_Object    // Wapokat_DD

        Object Wapomast_DD is a Wapomast_DataDictionary
            Set DDO_Server to (Wapokat_DD(self))
        End_Object    // Wapomast_DD

        Set Main_DD to (Wapomast_DD(self))
        Set Server to (Wapomast_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Wapomast.File_Number
            Set Size to 105 269
            Set Location to 6 6

            Begin_Row
                Entry_Item Wapomast.Wapomast_code
                Entry_Item Wapomast.Wapomast_descr
            End_Row

            Set Form_Width    item 0 to 80
            set header_label  item 0 to "Äß¶ü„°ú™" 
            
            Set Form_Width    item 1 to 180
            set header_label  item 1 to "èú®†ö®ò≠„" 
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 113 115

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 113 170

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 113 225

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

    End_Object    // sl23

//AB/     End_Object    // prj
