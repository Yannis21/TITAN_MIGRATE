//AB/ Project slViews
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slViews"
//AB/         Set ProjectFileName to "slviews.sl"

// Project Object Structure
//   slViews is a dbModalPanelSub
//     Views_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object slViews
Register_Object Views_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use VIEWS.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object slViews is a dbModalPanelSub
        Set Label to "Ñß†¢¶ö‚™ ãú§¶Á"
        Set Size to 148 297
        Set Location to 4 20
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Views_DD is a Views_DataDictionary
        End_Object    // Views_DD

        Set Main_DD to (Views_DD(self))
        Set Server to (Views_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Views.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Views.View_id
                Entry_Item Views.Menu_name
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "Ä/Ä Ñß†¢¶ö„™"
            
            Set Form_Width    item 1 to 211
            Set Header_Label  item 1 to "èú®†ö®ò≠„ Ñß†¢¶ö„™"
            

            //AB-StoreStart
                    
            Set Color to 16776436
            Set TextColor to clNavy
            Set CurrentRowColor to 16775135
            Set CurrentRowTextColor to clNavy
            Set CurrentCellColor to 16775135
            Set CurrentCellTextColor to clNavy
            Set Header_Column_Sorted_State to True
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "Ñß†¢¶ö„"
            Set Location to 115 126
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "Ä°Á®‡©û"
            Set Location to 115 181
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä§òù„´û©û"
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

    CD_End_Object    // slViews

//AB/     End_Object    // prj
