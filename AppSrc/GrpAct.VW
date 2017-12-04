//AB/ Project GrpAct
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "GrpAct"
//AB/     Set ProjectFileName to "GrpAct.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   GrpAct is a dbViewSubS
//     Usergrps_DD is a DataDictionary
//     Departm_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Oth_DD is a DataDictionary
//     Grpact_DD is a DataDictionary
//     Users_User_Id is a dbFormSub
//     Users_Login_Id is a dbFormSub
//     Users_Name is a dbFormSub
//     Grpact_ is a dbGridSub
//     TextBoxSub1 is a TextBoxSub

// Register all objects
Register_Object Departm_DD
Register_Object GrpAct
Register_Object Grpact_
Register_Object Grpact_DD
Register_Object Oth_DD
Register_Object TextBoxSub1
Register_Object Usergrps_DD
Register_Object Users_DD
Register_Object Users_Login_Id
Register_Object Users_Name
Register_Object Users_User_Id


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbGrid.Sub
Use Txtbox.Sub

Use USERGRPS.DD
Use DEPARTM.DD
Use USERS.DD
Use OTH.DD
Use GRPACT.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_GrpAct FOR GrpAct

Object GrpAct is a dbViewSubS
    Set Label to "Users rights for Activating Views"
    Set Size to 207 389
    Set Location to 6 6

    //AB-DDOStart

    Object Usergrps_DD is a Usergrps_DataDictionary
    End_Object    // Usergrps_DD

    Object Departm_DD is a Departm_DataDictionary
    End_Object    // Departm_DD

    Object Users_DD is a Users_DataDictionary
        Set DDO_Server to (Usergrps_DD(self))
        Set DDO_Server to (Departm_DD(self))
    End_Object    // Users_DD

    Object Oth_DD is a Oth_DataDictionary
    End_Object    // Oth_DD

    Object Grpact_DD is a Grpact_DataDictionary
        Set DDO_Server to (Users_DD(self))
        Set DDO_Server to (Oth_DD(self))
        Set Constrain_File to Users.File_Number
    End_Object    // Grpact_DD

    Set Main_DD to (Users_DD(self))
    Set Server to (Users_DD(self))

    //AB-DDOEnd

    Object Users_User_Id is a dbFormSub
        Entry_Item Users.User_id
        Set Label to "User Id:"
        Set Size to 13 95
        Set Location to 6 49
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Users_User_Id

    Object Users_Login_Id is a dbFormSub
        Entry_Item Users.Login_id
        Set Label to "Login Id:"
        Set Size to 13 95
        Set Location to 20 49
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
        Set Label to "Name:"
        Set Size to 13 189
        Set Location to 20 182
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Users_Name

    Object Grpact_ is a dbGridSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Set Main_File to Grpact.File_Number
        Set Server to (Grpact_DD(self))
        Set Size to 127 354
        Set Location to 56 17
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Oth.View_name
            Entry_Item Grpact.View_id
            Entry_Item Grpact.View_label
            Entry_Item Grpact.Allow
        End_Row

        Set Form_Width    item 0 to 123
        Set Header_Label  item 0 to "View Name"
        
        Set Form_Width    item 1 to 73
        Set Header_Label  item 1 to "View Id"
        
        Set Form_Width    item 2 to 117
        Set Header_Label  item 2 to "View Label"
        
        Set Form_Width    item 3 to 35
        Set Header_Label  item 3 to "Allow"
        Set Column_Checkbox_State  item 3 to True
        

        //AB-StoreStart
                                
        Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        
        //AB-StoreEnd

    End_Object    // Grpact_

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ž  €¢¢˜šâª â®¦¬¤ ê£œ©ž „­˜¨£¦šã"
        Set Color to clTeal
        Set TextColor to clWhite
        Set Location to 42 47
        Set Size to 10 249
        Set FontWeight to 600
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

End_Object    // GrpAct

//AB/ End_Object    // prj
