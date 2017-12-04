//AB/ Project GrpViews
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpViews"
//AB/         Set ProjectFileName to "Grpviews.vw"

// Project Object Structure
//   GrpViews is a dbViewSubS
//     Departm_DD is a DataDictionary
//     Views_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Grpviews_DD is a DataDictionary
//     Users_User_Id is a dbFormSub
//     Users_Login_Id is a dbFormSub
//     Users_Name is a dbFormSub
//     Usergrps_Grp_Name is a dbFormSub
//     Departm_Description is a dbFormSub
//     The_Table is a dbGridSub
//     TextBoxSub2 is a TextBoxSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox
//     Textbox5 is a Textbox
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub

// Register all objects
Register_Object Departm_DD
Register_Object Departm_Description
Register_Object GrpViews
Register_Object Grpviews_DD
Register_Object TextBoxSub2
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object The_Table
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Name
Register_Object Users_DD
Register_Object Users_Login_Id
Register_Object Users_Name
Register_Object Users_User_Id
Register_Object Views_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbGrid.Sub
    Use Txtbox.Sub

    Use DEPARTM.DD
    Use VIEWS.DD
    Use USERGRPS.DD
    Use USERS.DD
    Use GRPVIEWS.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpViews FOR GrpViews

    Object GrpViews is a dbViewSubS
        Set Label to "è®Ê©ôò©û  ï®û©´È§ Ä§· Ñß†¢¶ö„ ãú§¶Á"
        Set Size to 284 361
        Set Location to 2 5

        //AB-DDOStart

        Object Departm_DD is a Departm_DataDictionary

            //AB-StoreStart
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Departm_DD

        Object Views_DD is a Views_DataDictionary

            //AB-StoreStart
            Set Read_Only_State to True
            //AB-StoreEnd

        End_Object    // Views_DD

        Object Usergrps_DD is a Usergrps_DataDictionary

            //AB-StoreStart
            Set Read_Only_State to True
            //AB-StoreEnd

        End_Object    // Usergrps_DD

        Object Users_DD is a Users_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Departm_DD(self))

            //AB-StoreStart
            Set Read_Only_State to True
            //AB-StoreEnd

        End_Object    // Users_DD

        Object Grpviews_DD is a Grpviews_DataDictionary
            Set DDO_Server to (Users_DD(self))
            Set DDO_Server to (Views_DD(self))
            Set Constrain_File to Users.File_Number
        End_Object    // Grpviews_DD

        Set Main_DD to (Users_DD(self))
        Set Server to (Users_DD(self))

        //AB-DDOEnd

        Object Users_User_Id is a dbFormSub
            Entry_Item Users.User_id
            Set Size to 13 59
            Set Location to 2 70
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Users_User_Id

        Object Users_Login_Id is a dbFormSub
            Entry_Item Users.Login_id
            Set Size to 13 251
            Set Location to 18 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Users_Login_Id

        Object Users_Name is a dbFormSub
            Entry_Item Users.Name
            Set Size to 13 251
            Set Location to 34 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Users_Name

        Object Usergrps_Grp_Name is a dbFormSub
            Entry_Item Usergrps.Grp_name
            Set Size to 13 251
            Set Location to 50 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            Set Item_Option item 0 to NoEnter True
            
            //AB-StoreEnd

        End_Object    // Usergrps_Grp_Name

        Object Departm_Description is a dbFormSub
            Entry_Item Departm.Description
            Set Size to 13 251
            Set Location to 66 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Departm_Description

        Object The_Table is a dbGridSub
            Set Main_File to Grpviews.File_Number
            Set Server to (Grpviews_DD(self))
            Set Size to 150 346
            Set Location to 93 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Views.View_id
                Entry_Item Views.Menu_name
                Entry_Item Grpviews.Allow_read
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "Ä/Ä ãú§¶Á"
            
            Set Form_Width    item 1 to 265
            Set Header_Label  item 1 to "èú®†ö®ò≠„ ãú§¶Á"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "R"
            Set Column_Checkbox_State  item 2 to True
            

            //AB-StoreStart
            Set CurrentRowColor to 11468799
            Set CurrentCellColor to 11468799
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "é† Ä¢¢òö‚™ ‚Æ¶¨§ Í£ú©û Ñ≠ò®£¶ö„"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 84 5
            Set Size to 10 249
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object Textbox1 is a Textbox
            Set Label to "Ä/Ä ï®„©´û"
            Set Location to 4 23
            Set Size to 10 43
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "â‡õ†°Ê™ ï®„©´û "
            Set Location to 18 9
            Set Size to 10 56
        End_Object    // Textbox2

        Object Textbox3 is a Textbox
            Set Label to "Ñß‡§¨£Âò ï®„©´û"
            Set Location to 34 3
            Set Size to 10 61
        End_Object    // Textbox3

        Object Textbox4 is a Textbox
            Set Label to "é§¶£ò©Âò é£·õò™"
            Set Location to 50 3
            Set Size to 10 61
        End_Object    // Textbox4

        Object Textbox5 is a Textbox
            Set Label to "í£„£ò"
            Set Location to 65 41
            Set Size to 10 23
        End_Object    // Textbox5

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "R = Ñß†´®‚ßú´ò† Ñ£≠·§†©û / è®Ê©ôò©û ©´û§ Ñß†¢¶ö„ ãú§¶Á"
            Set Auto_Size_State to FALSE
            Set Location to 245 4
            Set Size to 10 213
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "Éú§ í®¶ß¶†¶Á§´ò† ¶† âú§´®†°‚™ Ñß†¢¶ö‚™ ´¶¨ ãú§¶Á"
            Set Color to clRed
            Set TextColor to clWhite
            Set Location to 258 1
            Set Size to 10 314
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

    End_Object    // GrpViews

//AB/     End_Object    // prj
