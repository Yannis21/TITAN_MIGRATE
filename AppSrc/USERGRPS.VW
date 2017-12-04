//AB/ Project UserGrps
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "UserGrps"
//AB/     Set ProjectFileName to "Usergrps.vw"

// Project Object Structure
//   UserGrps is a dbView
//     Departm_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Usergrps_Grp_id is a dbForm
//     Usergrps_Grp_name is a dbForm
//     The_Table is a dbGrid
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub

// Register all objects
Register_Object Departm_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object The_Table
Register_Object UserGrps
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_id
Register_Object Usergrps_Grp_name
Register_Object Users_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Txtbox.Sub

Use DEPARTM.DD
Use USERGRPS.DD
Use USERS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_UserGrps FOR UserGrps

Object UserGrps is a dbView
    Set Label to "Ž£á›œª •¨ž©«é¤"
    Set Size to 236 468
    Set Location to 2 10

    //AB-DDOStart

    Object Departm_DD is a Departm_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Departm_DD

    Object Usergrps_DD is a Usergrps_DataDictionary
    End_Object    // Usergrps_DD

    Object Users_DD is a Users_DataDictionary
        Set DDO_Server to (Usergrps_DD(self))
        Set DDO_Server to (Departm_DD(self))
        Set Constrain_File to Usergrps.File_Number

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Users_DD

    Set Main_DD to (Usergrps_DD(self))
    Set Server to (Usergrps_DD(self))

    //AB-DDOEnd

    Object Usergrps_Grp_id is a dbForm
        Entry_Item Usergrps.Grp_id
        Set Size to 13 124
        Set Location to 9 67
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Usergrps_Grp_id

    Object Usergrps_Grp_name is a dbForm
        Entry_Item Usergrps.Grp_name
        Set Size to 13 300
        Set Location to 23 67
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Usergrps_Grp_name

    Object The_Table is a dbGrid
        Set Main_File to Users.File_Number
        Set Server to (Users_DD(self))
        Set Size to 161 458
        Set Location to 55 4
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Users.User_id
            Entry_Item Users.Name
            Entry_Item Users.Login_id
            Entry_Item Users.Password
            Entry_Item Users.Admin_rights
            Entry_Item Departm.Description
        End_Row

        Set Form_Width    item 0 to 61
        Set Header_Label  item 0 to "€/€ •¨ã©«ž"
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "Ž¤¦£˜©å˜ •¨ã©«ž"
        
        Set Form_Width    item 2 to 80
        Set Header_Label  item 2 to "‰à› ¡æª •¨ã©«ž"
        
        Set Form_Width    item 3 to 70
        Set Header_Label  item 3 to "Password •¨ã©«ž"
        
        Set Form_Width    item 4 to 79
        Set Header_Label  item 4 to "ƒ ¡˜ é£.Admin."
        Set Column_Checkbox_State  item 4 to True
        
        Set Form_Width    item 5 to 61
        Set Header_Label  item 5 to "’£ã£˜"
        

        //AB-StoreStart
        Set Read_Only_State to True
        
        Set CurrentRowColor to 11468799
        Set CurrentCellColor to 11468799
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "‰à› ¡æª Ž£á›˜ª"
        Set Location to 10 5
        Set Size to 10 57
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Ž¤¦£˜©å˜"
        Set Location to 25 26
        Set Size to 10 35
    End_Object    // TextBoxSub2

End_Object    // UserGrps

//AB/ End_Object    // prj
