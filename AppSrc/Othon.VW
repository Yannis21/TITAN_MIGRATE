//AB/ Project Othon
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Othon"
//AB/     Set ProjectFileName to "Othon.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Othon is a dbViewSubS
//     Oth_DD is a DataDictionary
//     Viewflds_DD is a DataDictionary
//     Container1 is a dbContainer3dSub
//       Oth_View_id is a dbFormSub
//       Oth_View_name is a dbFormSub
//       Oth_View_label is a dbFormSub
//     Viewflds_ is a dbGridSub

// Register all objects
Register_Object Container1
Register_Object Oth_DD
Register_Object Oth_View_id
Register_Object Oth_View_label
Register_Object Oth_View_name
Register_Object Othon
Register_Object Viewflds_
Register_Object Viewflds_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbCont3.Sub
Use dbForm.Sub
Use dbGrid.Sub

Use Oth.DD
Use ViewFlds.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Othon FOR Othon

Object Othon is a dbViewSubS
    Set Label to "Screen Fields / Views"
    Set Size to 243 485
    Set Location to 6 6

    //AB-DDOStart

    Object Oth_DD is a Oth_DataDictionary
    End_Object    // Oth_DD

    Object Viewflds_DD is a Viewflds_DataDictionary
        Set DDO_Server to (Oth_DD(self))
        Set Constrain_File to Oth.File_Number
    End_Object    // Viewflds_DD

    Set Main_DD to (Oth_DD(self))
    Set Server to (Oth_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3dSub
        Set Size to 55 470
        Set Location to 2 5
        Object Oth_View_id is a dbFormSub
            Entry_Item Oth.View_id
            Set Label to "View Id:"
            Set Size to 13 61
            Set Location to 5 86
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Oth_View_id

        Object Oth_View_name is a dbFormSub
            Entry_Item Oth.View_name
            Set Label to "View Name:"
            Set Size to 13 300
            Set Location to 20 86
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Oth_View_name

        Object Oth_View_label is a dbFormSub
            Entry_Item Oth.View_label
            Set Label to "User Friendly Name"
            Set Size to 13 300
            Set Location to 34 86
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Oth_View_label

    End_Object    // Container1

    Object Viewflds_ is a dbGridSub
        Set Main_File to Viewflds.File_Number
        Set Server to (Viewflds_DD(self))
        Set Size to 159 471
        Set Location to 64 5
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Viewflds.Scr_field_name
            Entry_Item Viewflds.Usr_field_name
        End_Row

        Set Form_Width    item 0 to 178
        Set Header_Label  item 0 to "Screen Field Name"
        
        Set Form_Width    item 1 to 284
        Set Header_Label  item 1 to "User Friendly Field Name"
        
    End_Object    // Viewflds_

End_Object    // Othon

//AB/ End_Object    // prj
