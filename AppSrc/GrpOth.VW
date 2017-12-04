//AB/ Project GrpOth
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpOth"
//AB/         Set ProjectFileName to "GrpOth.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   GrpOth is a dbViewSubS
//     Departm_DD is a DataDictionary
//     Oth_DD is a DataDictionary
//     Viewflds_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Grpoth_DD is a DataDictionary
//     Users_User_Id is a dbForm
//     Users_Login_Id is a dbForm
//     Users_Name is a dbForm
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     Usergrps_Grp_Name is a dbformsub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     Grppedia_ is a dbGridSub
//     Departm_Description is a dbformsub

// Register all objects
Register_Object Departm_DD
Register_Object Departm_Description
Register_Object GrpOth
Register_Object Grpoth_DD
Register_Object Grppedia_
Register_Object Oth_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Name
Register_Object Users_DD
Register_Object Users_Login_Id
Register_Object Users_Name
Register_Object Users_User_Id
Register_Object Viewflds_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    use dbView.sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use dbForm.Sub
    Use dbGrid.Sub

    Use DEPARTM.DD
    Use OTH.DD
    Use VIEWFLDS.DD
    Use USERGRPS.DD
    Use USERS.DD
    Use GRPOTH.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpOth FOR GrpOth

    Object GrpOth is a dbViewSubS

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "User Access per View and View Field"
        Set Size to 286 473
        Set Location to 4 10

        //AB-DDOStart

        Object Departm_DD is a Departm_DataDictionary
        End_Object    // Departm_DD

        Object Oth_DD is a Oth_DataDictionary
        End_Object    // Oth_DD

        Object Viewflds_DD is a Viewflds_DataDictionary
            Set DDO_Server to (Oth_DD(self))
        End_Object    // Viewflds_DD

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Object Users_DD is a Users_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Departm_DD(self))
        End_Object    // Users_DD

        Object Grpoth_DD is a Grpoth_DataDictionary
            Set DDO_Server to (Users_DD(self))
            Set DDO_Server to (Viewflds_DD(self))
            Set Constrain_File to Users.File_Number
        End_Object    // Grpoth_DD

        Set Main_DD to (Users_DD(self))
        Set Server to (Users_DD(self))

        //AB-DDOEnd

        Object Users_User_Id is a dbForm
            Entry_Item Users.User_id
            Set Label to "User Code"
            Set Size to 13 56
            Set Location to 4 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Users_User_Id

        Object Users_Login_Id is a dbForm
            Entry_Item Users.Login_id
            Set Label to "User Login ID"
            Set Size to 13 362
            Set Location to 18 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Set Shadow_State to True

            //AB-StoreEnd

        End_Object    // Users_Login_Id

        Object Users_Name is a dbForm
            Entry_Item Users.Name
            Set Label to "User Name"
            Set Size to 13 362
            Set Location to 32 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Set Shadow_State to True

            //AB-StoreEnd

        End_Object    // Users_Name

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "R = Allow Reading/Viewing the file's Data"
            Set Auto_Size_State to FALSE
            Set Location to 94 6
            Set Size to 10 139
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "E = Allow Editing of a record"
            Set Auto_Size_State to FALSE
            Set Location to 94 181
            Set Size to 10 96
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object Usergrps_Grp_Name is a dbformsub
            Entry_Item Usergrps.Grp_name
            Set Label to "Group Name"
            Set Size to 13 362
            Set Location to 49 68
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Usergrps_Grp_Name

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "User must log off and log on again for the changes to apply"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 80 6
            Set Size to 10 386
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "P = Allow Copying of file field's value"
            Set Auto_Size_State to FALSE
            Set Location to 94 309
            Set Size to 10 125
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object Grppedia_ is a dbGridSub
            Set Main_File to Grpoth.File_Number
            Set Server to (Grpoth_DD(self))
            Set Size to 159 450
            Set Location to 105 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Oth.View_label
                Entry_Item Viewflds.Scr_field_name
                Entry_Item Viewflds.Usr_field_name
                Entry_Item Grpoth.Allow_read
                Entry_Item Grpoth.Allow_change
                Entry_Item Grpoth.Allow_copy
            End_Row

            Set Form_Width    item 0 to 114
            Set Header_Label  item 0 to "View User Friendly"

            Set Form_Width    item 1 to 117
            Set Header_Label  item 1 to "Screen Field Name"

            Set Form_Width    item 2 to 166
            Set Header_Label  item 2 to "User Friendly Screen Field Name"

            Set Form_Width    item 3 to 16
            Set Header_Label  item 3 to "R"
            Set Column_Checkbox_State  item 3 to True

            Set Form_Width    item 4 to 16
            Set Header_Label  item 4 to "E"
            Set Column_Checkbox_State  item 4 to True

            Set Form_Width    item 5 to 16
            Set Header_Label  item 5 to "P"
            Set Column_Checkbox_State  item 5 to True


            //AB-StoreStart

            Set Column_Option Item 0 to Noenter True
            Set Column_Option Item 1 to Noenter True

            Procedure Select_Toggling Integer iInt1 Integer iInt2
                Forward Send Select_Toggling iInt1 iInt2
                If (Should_Save(GrpOth_DD(Self))) Send Request_Save to GrpOth_DD
            End_procedure

            Function Child_Entering Returns Integer
                Integer rVal iParent
                Forward Get Child_Entering to rVal
                If (Should_Save(Users_DD(Self))) Send Request_Save to Users_DD
                Get Field_Current_Value Of Users_DD Field Users.User_ID to iParent
                If (Not(iParent)) Begin
                    Send Info_Box "You Must Select a User First" "Information"
                    Move 1 to rVal
                End
                Function_Return rVal
            End_Function













            //AB-StoreEnd

        End_Object    // Grppedia_

        Object Departm_Description is a dbformsub
            Entry_Item Departm.Description
            Set Label to "Department Name"
            Set Size to 13 362
            Set Location to 65 68
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Departm_Description


        //AB-StoreStart

        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation


        //AB-StoreEnd

    End_Object    // GrpOth

//AB/     End_Object    // prj
