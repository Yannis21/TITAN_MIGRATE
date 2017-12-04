//AB/ Project GrpOth0
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpOth0"
//AB/         Set ProjectFileName to "GrpOth0.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   GrpOth0 is a dbView
//     Oth_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Viewflds_DD is a DataDictionary
//     Grpoth0_DD is a DataDictionary
//     Usergrps_Grp_Id is a dbformsub
//     Usergrps_Grp_Name is a dbformsub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     Grppedia_ is a dbGridSub

// Register all objects
Register_Object GrpOth0
Register_Object Grpoth0_DD
Register_Object Grppedia_
Register_Object Oth_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Id
Register_Object Usergrps_Grp_Name
Register_Object Viewflds_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbGrid.Sub

    Use OTH.DD
    Use USERGRPS.DD
    Use VIEWFLDS.DD
    Use GRPOTH0.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpOth0 FOR GrpOth0

    Object GrpOth0 is a dbView
        Set Label to "Group Access per View and View Field"
        Set Size to 286 473
        Set Location to 10 44

        //AB-DDOStart

        Object Oth_DD is a Oth_DataDictionary
        End_Object    // Oth_DD

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Object Viewflds_DD is a Viewflds_DataDictionary
            Set DDO_Server to (Oth_DD(self))
        End_Object    // Viewflds_DD

        Object Grpoth0_DD is a Grpoth0_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Viewflds_DD(self))
            Set Constrain_File to Usergrps.File_Number
        End_Object    // Grpoth0_DD

        Set Main_DD to (Usergrps_DD(self))
        Set Server to (Usergrps_DD(self))

        //AB-DDOEnd

        Object Usergrps_Grp_Id is a dbformsub
            Entry_Item Usergrps.Grp_id
            Set Label to "Group ID"
            Set Size to 13 70
            Set Location to 5 45
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Usergrps_Grp_Id

        Object Usergrps_Grp_Name is a dbformsub
            Entry_Item Usergrps.Grp_name
            Set Label to "Group Name"
            Set Size to 13 241
            Set Location to 5 190
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Usergrps_Grp_Name

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "R = Allow Reading/Viewing the file's Data"
            Set Auto_Size_State to FALSE
            Set Location to 39 6
            Set Size to 10 139
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "E = Allow Editing of a record"
            Set Auto_Size_State to FALSE
            Set Location to 39 181
            Set Size to 10 96
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "Users must log off and log on again for the changes to apply"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 27 6
            Set Size to 10 376
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "P = Allow Copying of file field's value"
            Set Auto_Size_State to FALSE
            Set Location to 39 309
            Set Size to 10 125
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object Grppedia_ is a dbGridSub
            Set Main_File to Grpoth0.File_Number
            Set Server to (Grpoth0_DD(self))
            Set Size to 211 450
            Set Location to 50 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Oth.View_label
                Entry_Item Viewflds.Scr_field_name
                Entry_Item Viewflds.Usr_field_name
                Entry_Item Grpoth0.Allow_read
                Entry_Item Grpoth0.Allow_change
                Entry_Item Grpoth0.Allow_copy
            End_Row

            Set Form_Width    item 0 to 100
            Set Header_Label  item 0 to "View User Friendly Name"

            Set Form_Width    item 1 to 122
            Set Header_Label  item 1 to "Screen Field Name"

            Set Form_Width    item 2 to 176
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
                If (Should_Save(GrpOth0_DD(Self))) Send Request_Save to GrpOth0_DD
            End_procedure

            Function Child_Entering Returns Integer
                Integer rVal iParent
                Forward Get Child_Entering to rVal
                Get Field_Current_Value Of UserGrps_DD Field Usergrps.Grp_id to iParent
                If (NOT(iParent)) Begin
                    Send Info_Box "You Must Select a User Group First" "Information"
                    Move 1 to rVal
                End
                Function_Return rVal
            End_Function











            //AB-StoreEnd

        End_Object    // Grppedia_


        //AB-StoreStart
        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation

        //AB-StoreEnd

    End_Object    // GrpOth0

//AB/     End_Object    // prj
