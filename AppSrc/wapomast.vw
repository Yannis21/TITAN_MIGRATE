//AB/ Project Wapomast
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Wapomast"
//AB/     Set ProjectFileName to "Wapomast.vw"
//AB/     Set GenerateFileName to "Wapomast.vw"

// Project Object Structure
//   Wapomast is a dbView
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Wapokat_Wapokat_code is a dbForm
//       Wapokat_Wapokat_descr is a dbForm
//       Textbox1 is a Textbox
//       Textbox2 is a Textbox
//     Wapomast_ is a dbGridSub

// Register all objects
Register_Object Container1
Register_Object Textbox1
Register_Object Textbox2
Register_Object Wapokat_DD
Register_Object Wapokat_Wapokat_code
Register_Object Wapokat_Wapokat_descr
Register_Object Wapomast
Register_Object Wapomast_
Register_Object Wapomast_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbGrid.Sub

Use WAPOKAT.DD
Use WAPOMAST.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Wapomast FOR Wapomast

Object Wapomast is a dbViewSubS
    Set Label to "Äß¶ü„°ú™"
    Set Size to 161 284
    Set Location to 2 6

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))
        Set Constrain_File to Wapokat.File_Number
    End_Object    // Wapomast_DD

    Set Main_DD to (Wapokat_DD(self))
    Set Server to (Wapokat_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 41 268
        Set Location to 5 5
        Object Wapokat_Wapokat_code is a dbForm
            Entry_Item Wapokat.Wapokat_code
            Set Size to 13 66
            Set Location to 5 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Wapokat_Wapokat_code

        Object Wapokat_Wapokat_descr is a dbForm
            Entry_Item Wapokat.Wapokat_descr
            Set Size to 13 186
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Wapokat_Wapokat_descr

        Object Textbox1 is a Textbox
            Set Label to "âò´ûö. Äß¶ü„°û™"
            Set Location to 5 3
            Set Size to 10 60
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "èú®†ö®ò≠„"
            Set Location to 21 3
            Set Size to 10 40
        End_Object    // Textbox2

    End_Object    // Container1

    Object Wapomast_ is a dbGridSub
        Set Main_File to Wapomast.File_Number
        Set Server to (Wapomast_DD(self))
        Set Size to 96 270
        Set Location to 48 3
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Wapomast.Wapomast_code
            Entry_Item Wapomast.Wapomast_descr
        End_Row

        Set Form_Width    item 0 to 81
        Set Header_Label  item 0 to "â‡õ†°Ê™ Äß¶ü„°û™"

        Set Form_Width    item 1 to 180
        Set Header_Label  item 1 to "èú®†ö®ò≠„"


        //AB-StoreStart
        set column_prompt_object item 0 to none
        set column_prompt_object item 1 to none

        //AB-StoreEnd

    End_Object    // Wapomast_

End_Object    // Wapomast

//AB/ End_Object    // prj
