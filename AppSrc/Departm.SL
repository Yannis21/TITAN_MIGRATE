//AB/ Project Departm:Lookup
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "Departm:Lookup"
//AB/         Set ProjectFileName to "Departm.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Departm is a dbModalPanelSub
//     Departm_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Departm
Register_Object Departm_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use DEPARTM.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object Departm is a dbModalPanelSub
        Set Label to "Users Departments"
        Set Size to 148 297
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Departm_DD is a Departm_DataDictionary
        End_Object    // Departm_DD

        Set Main_DD to (Departm_DD(self))
        Set Server to (Departm_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Departm.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Departm.Code
                Entry_Item Departm.Description
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "Code"
            
            Set Form_Width    item 1 to 212
            Set Header_Label  item 1 to "Description"
            
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

    CD_End_Object    // Departm

//AB/     End_Object    // prj
