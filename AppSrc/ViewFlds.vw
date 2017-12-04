//AB/ Project ViewFlds
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "ViewFlds"
//AB/         Set ProjectFileName to "ViewFlds.vw"
//AB/         Set GenerateFileName to "ViewFlds.vw"

// Project Object Structure
//   ViewFlds is a dbViewSubS
//     Oth_DD is a DataDictionary
//     Viewflds_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Oth_View_id is a dbForm
//       Oth_View_name is a dbForm
//       Oth_View_Label is a dbformsub
//     The_Table is a dbGrid

// Register all objects
Register_Object Container1
Register_Object Oth_DD
Register_Object Oth_View_id
Register_Object Oth_View_Label
Register_Object Oth_View_name
Register_Object The_Table
Register_Object ViewFlds
Register_Object Viewflds_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    use dbView.sub
    Use DFAllEnt.pkg
    Use dbForm.Sub

    Use OTH.DD
    Use VIEWFLDS.DD

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_ViewFlds FOR ;
    ;
    Object ViewFlds is a dbViewSubS
        Set Label to "ViewFlds"
        Set Size to 243 481
        Set Location to 12 56

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

        Object Container1 is a dbContainer3d
            Set Size to 58 465
            Set Location to 5 5
            Object Oth_View_id is a dbForm
                Entry_Item Oth.View_id
                Set Label to "View ID"
                Set Size to 13 68
                Set Location to 5 94
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Oth_View_id

            Object Oth_View_name is a dbForm
                Entry_Item Oth.View_name
                Set Label to "View Name"
                Set Size to 13 282
                Set Location to 20 94
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Oth_View_name

            Object Oth_View_Label is a dbformsub
                Entry_Item Oth.View_label
                Set Label to "View User Friendly Name"
                Set Size to 13 282
                Set Location to 37 94
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Oth_View_Label

        End_Object    // Container1

        Object The_Table is a dbGrid
            Set Main_File to Viewflds.File_Number
            Set Server to (Viewflds_DD(self))
            Set Size to 142 465
            Set Location to 77 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Viewflds.Scr_field_name
            End_Row

            Set Form_Width    item 0 to 459
            Set Header_Label  item 0 to "Screen Field Name"

        End_Object    // The_Table

    CD_End_Object    // ViewFlds


    //AB-StoreStart

    //AB-StoreEnd

//AB/     End_Object    // prj
