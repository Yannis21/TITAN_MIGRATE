//AB/ Project Nomism
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Nomism"
//AB/         Set ProjectFileName to "Nomism.vw"

// Project Object Structure
//   Nomism is a dbViewSubS
//     Nomisma_DD is a DataDictionary
//     Nomisma_Nomisma_Code is a dbFormSub
//     Nomisma_Nomisma_Descr is a dbFormSub
//     Nomisma_Nomisma_Short is a dbFormSub
//     Nomisma_Dekadika is a dbFormSub
//     Nomisma_Monades is a dbFormSub
//     Nomisma_Kl_Isot_Euro is a dbFormSub
//     Nomisma_Euro_Zone is a dbCheckBoxSub
//     Nomisma_Einai_Drx is a dbCheckBoxSub
//     Nomisma_Einai_Euro is a dbCheckBoxSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub

// Register all objects
Register_Object Nomism
Register_Object Nomisma_DD
Register_Object Nomisma_Dekadika
Register_Object Nomisma_Einai_Drx
Register_Object Nomisma_Einai_Euro
Register_Object Nomisma_Euro_Zone
Register_Object Nomisma_Kl_Isot_Euro
Register_Object Nomisma_Monades
Register_Object Nomisma_Nomisma_Code
Register_Object Nomisma_Nomisma_Descr
Register_Object Nomisma_Nomisma_Short
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbChkbox.Sub
    Use Txtbox.Sub

    Use NOMISMA.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Nomism FOR ;
    ;
    Object Nomism is a dbViewSubS
        Set Label to "ç‚§ò å¶£Â©£ò´ò"
        Set Size to 193 317
        Set Location to 6 8

        //AB-DDOStart

        Object Nomisma_DD is a Nomisma_DataDictionary
        End_Object    // Nomisma_DD

        Set Main_DD to (Nomisma_DD(self))
        Set Server to (Nomisma_DD(self))

        //AB-DDOEnd

        Object Nomisma_Nomisma_Code is a dbFormSub
            Entry_Item Nomisma.Nomisma_code
            Set Size to 13 63
            Set Location to 7 78
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Nomisma_Nomisma_Code

        Object Nomisma_Nomisma_Descr is a dbFormSub
            Entry_Item Nomisma.Nomisma_descr
            Set Size to 13 201
            Set Location to 25 78
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Nomisma_Nomisma_Descr

        Object Nomisma_Nomisma_Short is a dbFormSub
            Entry_Item Nomisma.Nomisma_short
            Set Size to 13 50
            Set Location to 45 78
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Nomisma_Nomisma_Short

        Object Nomisma_Dekadika is a dbFormSub
            Entry_Item Nomisma.Dekadika
            Set Size to 13 18
            Set Location to 63 78
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Nomisma_Dekadika

        Object Nomisma_Monades is a dbFormSub
            Entry_Item Nomisma.Monades
            Set Size to 13 43
            Set Location to 84 78
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Nomisma_Monades

        Object Nomisma_Kl_Isot_Euro is a dbFormSub
            Entry_Item Nomisma.Kl_isot_euro
            Set Size to 13 67
            Set Location to 102 78
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Nomisma_Kl_Isot_Euro

        Object Nomisma_Euro_Zone is a dbCheckBoxSub
            Entry_Item Nomisma.Euro_zone
            Set Size to 13 19
            Set Location to 127 78
        End_Object    // Nomisma_Euro_Zone

        Object Nomisma_Einai_Drx is a dbCheckBoxSub
            Entry_Item Nomisma.Einai_drx
            Set Size to 10 59
            Set Location to 143 78
        End_Object    // Nomisma_Einai_Drx

        Object Nomisma_Einai_Euro is a dbCheckBoxSub
            Entry_Item Nomisma.Einai_euro
            Set Size to 10 59
            Set Location to 158 78
        End_Object    // Nomisma_Einai_Euro

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "â‡õ†°Ê™"
            Set Location to 8 7
            Set Size to 10 45
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„"
            Set Location to 25 7
            Set Size to 10 51
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "Î§õú†•û"
            Set Location to 44 7
            Set Size to 10 43
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Éú°òõ†°·"
            Set Location to 63 7
            Set Size to 10 49
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ã¶§·õú™ Ä§òö‡ö„™"
            Set Location to 84 7
            Set Size to 10 68
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "à©¶´†£Âò Ñ¨®È"
            Set Location to 102 7
            Set Size to 10 50
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "Ñ¨®È ÖÈ§û"
            Set Location to 127 7
            Set Size to 10 44
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "ÑÂ§ò† Éêï"
            Set Location to 142 7
            Set Size to 10 40
        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "ÑÂ§ò† Ñ¨®È"
            Set Location to 155 7
            Set Size to 10 43
        End_Object    // TextBoxSub9

    CD_End_Object    // Nomism

//AB/     End_Object    // prj
