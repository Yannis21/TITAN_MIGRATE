//AB/ Project Wtypkin
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Wtypkin"
//AB/     Set ProjectFileName to "Wtypkin.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Wtypkin is a dbView
//     Wtypkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Ctypkin_Ctypkin_Code is a dbFormSub
//     Ctypkin_Ctypkin_Descr is a dbFormSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox

// Register all objects
Register_Object Ctypkin_Ctypkin_Code
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Syscurxr_DD
Register_Object Textbox1
Register_Object Textbox2
Register_Object Wtypkin
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbForm.Sub

Use WTYPKIN.DD
Use SYSCURXR.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Wtypkin FOR ;
;
Object Wtypkin is a dbViewSubS
    set label to "â†§„©ú†™ Äß¶ü„°û™"
    Set Size to 61 458
    Set Location to 10 4

    //AB-DDOStart

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Set Main_DD to (Wtypkin_DD(self))
    Set Server to (Wtypkin_DD(self))

    //AB-DDOEnd

    Object Ctypkin_Ctypkin_Code is a dbFormSub
        Entry_Item Wtypkin.Wtypkin_code
        Set Size to 13 57
        Set Location to 5 73
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Ctypkin_Ctypkin_Code

    Object Ctypkin_Ctypkin_Descr is a dbFormSub
        Entry_Item Wtypkin.Wtypkin_descr
        Set Size to 13 366
        Set Location to 22 73
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Ctypkin_Ctypkin_Descr

    Object Textbox1 is a Textbox
        set label to "â‡õ†°Ê™ âÂ§û©û™"
        Set Location to 6 3
        Set Size to 10 68
    End_Object    // Textbox1

    Object Textbox2 is a Textbox
        set label to "èú®†ö®ò≠„"
        Set Location to 22 4
        Set Size to 10 45
    End_Object    // Textbox2


    //AB-StoreStart


    //AB-StoreEnd

CD_End_Object    // Wtypkin

//AB/ End_Object    // prj
