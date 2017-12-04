//AB/ Project slTabView
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slTabView"
//AB/         Set ProjectFileName to "slTabView.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   slTabView is a dbModalPanelSub
//     Oth_DD is a DataDictionary
//     Tabview_DD is a DataDictionary
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
Register_Object slTabView
Register_Object Tabview_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use Oth.DD
    Use TABVIEW.DD
    
    //AB-IgnoreEnd

    Object slTabView is a dbModalPanelSub
        Set Label to "Choose Tab Pages from View"
        Set Size to 148 297
        Set Location to 4 5

        //AB-DDOStart

        Object Oth_DD is a Oth_DataDictionary
        End_Object    // Oth_DD

        Object Tabview_DD is a Tabview_DataDictionary
            Set DDO_Server to (Oth_DD(self))
        End_Object    // Tabview_DD

        Set Main_DD to (Tabview_DD(self))
        Set Server to (Tabview_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Tabview.File_Number
            Set Size to 105 280
            Set Location to 6 6
            Set Auto_Server_State to TRUE

            Begin_Row
                Entry_Item Tabview.Tabview_aa
                Entry_Item Oth.View_name
                Entry_Item Tabview.Tab_label
            End_Row

            Set Form_Width    item 0 to 43
            Set Header_Label  item 0 to "a/a"
            
            Set Form_Width    item 1 to 80
            Set Header_Label  item 1 to "View name"
            
            Set Form_Width    item 2 to 148
            Set Header_Label  item 2 to "Tab Page"
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 115 126
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 115 181
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 115 236
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

    End_Object    // slTabView

//AB/     End_Object    // prj
