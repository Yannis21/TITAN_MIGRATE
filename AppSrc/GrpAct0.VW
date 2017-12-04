//AB/ Project GrpAct0
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "GrpAct0"
//AB/     Set ProjectFileName to "GrpAct0.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   GrpAct0 is a dbViewSubS
//     Oth_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Grpact0_DD is a DataDictionary
//     Grpact0_ is a dbGridSub
//     Usergrps_Grp_Id is a dbFormSub
//     Usergrps_Grp_Name is a dbFormSub
//     TextBoxSub1 is a TextBoxSub

// Register all objects
Register_Object GrpAct0
Register_Object Grpact0_
Register_Object Grpact0_DD
Register_Object Oth_DD
Register_Object TextBoxSub1
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Id
Register_Object Usergrps_Grp_Name


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub
Use dbForm.Sub
Use Txtbox.Sub

Use OTH.DD
Use USERGRPS.DD
Use GRPACT0.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_GrpAct0 FOR GrpAct0

Object GrpAct0 is a dbViewSubS
    Set Label to "Group of Users rights for Activating Views"
    Set Size to 207 389
    Set Location to 6 6

    //AB-DDOStart

    Object Oth_DD is a Oth_DataDictionary
    End_Object    // Oth_DD

    Object Usergrps_DD is a Usergrps_DataDictionary
    End_Object    // Usergrps_DD

    Object Grpact0_DD is a Grpact0_DataDictionary
        Set DDO_Server to (Oth_DD(self))
        Set DDO_Server to (Usergrps_DD(self))
        Set Constrain_File to Usergrps.File_Number
    End_Object    // Grpact0_DD

    Set Main_DD to (Usergrps_DD(self))
    Set Server to (Usergrps_DD(self))

    //AB-DDOEnd

    Object Grpact0_ is a dbGridSub
        Set Main_File to Grpact0.File_Number
        Set Server to (Grpact0_DD(self))
        Set Size to 140 354
        Set Location to 44 17
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Oth.View_name
            Entry_Item Grpact0.View_id
            Entry_Item Grpact0.View_label
            Entry_Item Grpact0.Allow
        End_Row

        Set Form_Width    item 0 to 96
        Set Header_Label  item 0 to "View Name"
        
        Set Form_Width    item 1 to 72
        Set Header_Label  item 1 to "View Id"
        
        Set Form_Width    item 2 to 144
        Set Header_Label  item 2 to "View Label"
        
        Set Form_Width    item 3 to 34
        Set Header_Label  item 3 to "Allow"
        Set Column_Checkbox_State  item 3 to True
        

        //AB-StoreStart
                                
        Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        
        //AB-StoreEnd

    End_Object    // Grpact0_

    Object Usergrps_Grp_Id is a dbFormSub
        Entry_Item Usergrps.Grp_id
        Set Label to "Grp Id:"
        Set Size to 13 62
        Set Location to 8 43
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Usergrps_Grp_Id

    Object Usergrps_Grp_Name is a dbFormSub
        Entry_Item Usergrps.Grp_name
        Set Label to "Grp Name:"
        Set Size to 13 205
        Set Location to 8 159
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Usergrps_Grp_Name

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ž  €¢¢˜šâª â®¦¬¤ ê£œ©ž „­˜¨£¦šã"
        Set Color to clTeal
        Set TextColor to clWhite
        Set Location to 31 47
        Set Size to 10 249
        Set FontWeight to 600
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

End_Object    // GrpAct0

//AB/ End_Object    // prj
