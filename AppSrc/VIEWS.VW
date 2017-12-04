//AB/ Project Views
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Views"
//AB/     Set ProjectFileName to "Views.vw"

// Project Object Structure
//   Views is a dbView
//     Views_DD is a DataDictionary
//     Views_View_id is a dbForm
//     Views_Menu_Name is a dbformsub

// Register all objects
Register_Object Views
Register_Object Views_DD
Register_Object Views_Menu_Name
Register_Object Views_View_id


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbForm.Sub

Use VIEWS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Views FOR Views

Object Views is a dbView
    Set Label to "Views"
    Set Size to 67 370
    Set Location to 22 44

    //AB-DDOStart

    Object Views_DD is a Views_DataDictionary
    End_Object    // Views_DD

    Set Main_DD to (Views_DD(self))
    Set Server to (Views_DD(self))

    //AB-DDOEnd

    Object Views_View_id is a dbForm
        Entry_Item Views.View_id
        Set Label to "View ID"
        Set Size to 13 54
        Set Location to 8 58
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        Set Item_Option item 0 to noenter true

        //AB-StoreEnd

    End_Object    // Views_View_id

    Object Views_Menu_Name is a dbformsub
        Entry_Item Views.Menu_name
        Set Label to "View Name"
        Set Size to 13 255
        Set Location to 26 58
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Views_Menu_Name

End_Object    // Views

//AB/ End_Object    // prj
