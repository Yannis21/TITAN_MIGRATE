//AB/ Project ConstrGR:lookup Groups Constructors
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "ConstrGR:lookup Groups Constructors"
//AB/         Set ProjectFileName to "ConstrGR.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   ConstrGR is a dbModalPanelSub
//     Constrgr_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object ConstrGR
Register_Object Constrgr_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CONSTRGR.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object ConstrGR is a dbModalPanelSub
        Set Label to "Constructors Groups"
        Set Size to 148 297
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Constrgr_DD is a Constrgr_DataDictionary
        End_Object    // Constrgr_DD

        Set Main_DD to (Constrgr_DD(self))
        Set Server to (Constrgr_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Constrgr.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Constrgr.Cntgrp_code
                Entry_Item Constrgr.Cntgrp_descr
            End_Row

            Set Form_Width    item 0 to 52
            set header_label  item 0 to "�������" 
            
            Set Form_Width    item 1 to 221
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

    CD_End_Object    // ConstrGR

//AB/     End_Object    // prj
