//AB/ Project HmgioW:Lookup
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "HmgioW:Lookup"
//AB/         Set ProjectFileName to "HmgioW.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   HmgioW is a dbModalPanelSub
//     Hmgiow_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object HmgioW
Register_Object Hmgiow_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use HMGIOW.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object HmgioW is a dbModalPanelSub

        //AB-StoreTopStart
        Property String psModule Public ''
        
        //AB-StoreTopEnd

        set label to "������暠� ����㡞�" 
        Set Size to 148 297
        Set Location to 5 9
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Hmgiow_DD is a Hmgiow_DataDictionary
        End_Object    // Hmgiow_DD

        Set Main_DD to (Hmgiow_DD(self))
        Set Server to (Hmgiow_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Hmgiow.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Hmgiow.Hmgiow_code
                Entry_Item Hmgiow.Hmgiow_descr
            End_Row

            Set Form_Width    item 0 to 48
            set header_label  item 0 to "�������" 
            
            Set Form_Width    item 1 to 225
            set header_label  item 1 to "���������" 
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&�������" 
            Set Location to 115 126

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&���ਫ਼" 
            Set Location to 115 181

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "�&���㫞��" 
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

    CD_End_Object    // HmgioW

//AB/     End_Object    // prj
