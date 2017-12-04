//AB/ Project Departm
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Departm"
//AB/     Set ProjectFileName to "Departm.VW"

// Project Object Structure
//   Departm is a dbView
//     Departm_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Departm_Code is a dbForm
//     Departm_Description is a dbForm
//     The_Table is a dbGrid
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub

// Register all objects
Register_Object Departm
Register_Object Departm_Code
Register_Object Departm_DD
Register_Object Departm_Description
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object The_Table
Register_Object Usergrps_DD
Register_Object Users_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Txtbox.Sub

Use DEPARTM.DD
Use USERGRPS.DD
Use USERS.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Departm FOR ;
;
Object Departm is a dbView
    Set Label to "’£ã£˜«˜ •¨ž©«é¤"
    Set Size to 213 479
    Set Location to 6 9

    //AB-DDOStart

    Object Departm_DD is a Departm_DataDictionary
    End_Object    // Departm_DD

    Object Usergrps_DD is a Usergrps_DataDictionary

        //AB-StoreStart
        
        
        
        
        //AB-StoreEnd

    End_Object    // Usergrps_DD

    Object Users_DD is a Users_DataDictionary
        Set DDO_Server to (Usergrps_DD(self))
        Set DDO_Server to (Departm_DD(self))
        Set Constrain_File to Departm.File_Number

        //AB-StoreStart
        
        
        
        //AB-StoreEnd

    End_Object    // Users_DD

    Set Main_DD to (Departm_DD(self))
    Set Server to (Departm_DD(self))

    //AB-DDOEnd

    Object Departm_Code is a dbForm
        Entry_Item Departm.Code
        Set Size to 13 124
        Set Location to 8 67
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Departm_Code

    Object Departm_Description is a dbForm
        Entry_Item Departm.Description
        Set Size to 13 300
        Set Location to 23 67
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Departm_Description

    Object The_Table is a dbGrid
        Set Main_File to Users.File_Number
        Set Server to (Users_DD(self))
        Set Size to 138 467
        Set Location to 52 4
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Users.User_id
            Entry_Item Users.Name
            Entry_Item Users.Login_id
            Entry_Item Users.Password
            Entry_Item Users.Admin_rights
            Entry_Item Usergrps.Grp_name
        End_Row

        Set Form_Width    item 0 to 68
        Set Header_Label  item 0 to "€/€ •¨ã©«ž"
        
        Set Form_Width    item 1 to 103
        Set Header_Label  item 1 to "Ž¤¦£˜©å˜ •¨ã©«ž"
        
        Set Form_Width    item 2 to 88
        Set Header_Label  item 2 to "‰à› ¡æª •¨ã©«ž"
        
        Set Form_Width    item 3 to 75
        Set Header_Label  item 3 to "Password •¨ã©«ž"
        
        Set Form_Width    item 4 to 61
        Set Header_Label  item 4 to "ƒ ¡˜ é£..Admin "
        Set Column_Checkbox_State  item 4 to True
        
        Set Form_Width    item 5 to 65
        Set Header_Label  item 5 to "Ž£á›˜"
        

        //AB-StoreStart
        Set Read_Only_State to True
        
        Set CurrentRowColor to 11468799
        Set CurrentCellColor to 11468799
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "‰à› ¡æª ’£ã£˜«¦ª"
        Set Location to 8 3
        Set Size to 10 61
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Ž¤¦£˜©å˜"
        Set Location to 23 31
        Set Size to 10 35
    End_Object    // TextBoxSub2

CD_End_Object    // Departm

//AB/ End_Object    // prj
