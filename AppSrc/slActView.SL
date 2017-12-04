//AB/ Project slOth
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slOth"
//AB/         Set ProjectFileName to "slOth.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   slOth is a dbModalPanelSub
//     Oth_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Oth_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object slOth


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use Oth.DD
    
    //AB-IgnoreEnd

    Object slOth is a dbModalPanelSub
        Set Label to "Choose from Views Activated"
        Set Size to 148 176
        Set Location to 4 5

        //AB-DDOStart

        Object Oth_DD is a Oth_DataDictionary
        End_Object    // Oth_DD

        Set Main_DD to (Oth_DD(self))
        Set Server to (Oth_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Oth.File_Number
            Set Size to 105 158
            Set Location to 6 6

            Begin_Row
                Entry_Item Oth.View_name
            End_Row

            Set Form_Width    item 0 to 151
            Set Header_Label  item 0 to "View name"
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 114 5
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 114 59
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 114 115
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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

    End_Object    // slOth

//AB/     End_Object    // prj
