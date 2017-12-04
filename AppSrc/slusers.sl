//AB/ Project slUsers
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slUsers"
//AB/         Set ProjectFileName to "slusers.sl"

// Project Object Structure
//   slUsers is a dbModalPanelSub
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object slUsers
Register_Object Usergrps_DD
Register_Object Users_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use USERGRPS.DD
    Use USERS.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object slUsers is a dbModalPanelSub
        Set Label to "ï®„©´ú™"
        Set Size to 186 455
        Set Location to 9 15
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Object Users_DD is a Users_DataDictionary

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set DDO_Server to (Usergrps_DD(self))

            //AB-StoreStart
                    
                    
                    
            //AB-StoreEnd

        End_Object    // Users_DD

        Set Main_DD to (Users_DD(self))
        Set Server to (Users_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Users.File_Number
            Set Size to 143 437
            Set Location to 6 6

            Begin_Row
                Entry_Item Users.User_id
                Entry_Item Users.Name
                Entry_Item Usergrps.Grp_name
                Entry_Item Users.Login_id
                Entry_Item Users.Anenergos
            End_Row

            Set Form_Width    item 0 to 47
            Set Header_Label  item 0 to "Ä/Ä"
            
            Set Form_Width    item 1 to 133
            Set Header_Label  item 1 to "é§¶£ò´úßÈ§¨£¶"
            
            Set Form_Width    item 2 to 93
            Set Header_Label  item 2 to "é£·õò"
            
            Set Form_Width    item 3 to 144
            Set Header_Label  item 3 to "ï®„©´û™"
            
            Set Form_Width    item 4 to 14
            Set Header_Label  item 4 to "Ä§ú§ú®öÊ™"
            Set Column_Checkbox_State  item 4 to True
            

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
            Set Location to 152 284
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "Ä°Á®‡©û"
            Set Location to 152 339
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä§òù„´û©û"
            Set Location to 152 394
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

    CD_End_Object    // slUsers

//AB/     End_Object    // prj
