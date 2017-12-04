//AB/ Project v064 : Zones
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v064 : Zones"
//AB/     Set ProjectFileName to "v064.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   v064 is a dbViewSubS
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Zones_DD is a DataDictionary
//     Brzones_DD is a DataDictionary
//     Zones_Zone_Id is a dbFormSub
//     Zones_Zone_Descr is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub

// Register all objects
Register_Object Branch_DD
Register_Object Brzones_DD
Register_Object Company_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object v064
Register_Object Zones_DD
Register_Object Zones_Zone_Descr
Register_Object Zones_Zone_Id


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub

Use COMPANY.DD
Use BRANCH.DD
Use ZONES.DD
Use BRZONES.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v064 FOR v064

Object v064 is a dbViewSubS
    Set Label to "ÖÈ§ú™"
    Set Size to 77 226
    Set Location to 6 9

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))
    End_Object    // Branch_DD

    Object Zones_DD is a Zones_DataDictionary
    End_Object    // Zones_DD

    Object Brzones_DD is a BrZones_DataDictionary
        Set DDO_Server to (Branch_DD(self))
        Set DDO_Server to (Zones_DD(self))
        Set Constrain_File to Zones.File_Number
    End_Object    // Brzones_DD

    Set Main_DD to (Zones_DD(self))
    Set Server to (Zones_DD(self))

    //AB-DDOEnd

    Object Zones_Zone_Id is a dbFormSub
        Entry_Item Zones.Zone_id
        Set Size to 13 36
        Set Location to 12 64
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Zones_Zone_Id

    Object Zones_Zone_Descr is a dbFormSub
        Entry_Item Zones.Zone_descr
        Set Size to 13 126
        Set Location to 30 64
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Zones_Zone_Descr

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "â‡õ†°Ê™"
        Set Location to 12 16
        Set Size to 10 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„"
        Set Location to 30 16
        Set Size to 10 38
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

End_Object    // v064

//AB/ End_Object    // prj
