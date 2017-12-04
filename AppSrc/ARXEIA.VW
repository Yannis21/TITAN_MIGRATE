//AB/ Project Arxeia
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Arxeia"
//AB/         Set ProjectFileName to "Arxeia.vw"

// Project Object Structure
//   Arxeia is a dbView
//     Arxeia_DD is a DataDictionary
//     Arxeia_Arxeio_id is a dbForm
//     Arxeia_Arxeio_name is a dbForm
//     Arxeia_Access_name is a dbForm
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Arxeia
Register_Object Arxeia_Access_name
Register_Object Arxeia_Arxeio_id
Register_Object Arxeia_Arxeio_name
Register_Object Arxeia_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Txtbox.Sub

    Use ARXEIA.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Arxeia FOR Arxeia

    Object Arxeia is a dbView
        Set Label to "€¨®œå˜"
        Set Size to 82 360
        Set Location to 32 24

        //AB-DDOStart

        Object Arxeia_DD is a Arxeia_DataDictionary
        End_Object    // Arxeia_DD

        Set Main_DD to (Arxeia_DD(self))
        Set Server to (Arxeia_DD(self))

        //AB-DDOEnd

        Object Arxeia_Arxeio_id is a dbForm
            Entry_Item Arxeia.Arxeio_id
            Set Size to 13 60
            Set Location to 2 115
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Arxeia_Arxeio_id

        Object Arxeia_Arxeio_name is a dbForm
            Entry_Item Arxeia.Arxeio_name
            Set Size to 13 169
            Set Location to 21 115
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Arxeia_Arxeio_name

        Object Arxeia_Access_name is a dbForm
            Entry_Item Arxeia.Access_name
            Set Size to 13 223
            Set Location to 41 115
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Arxeia_Access_name

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "€/€ €¨®œå¦¬"
            Set Location to 4 67
            Set Size to 10 45
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ž¤¦£˜©å˜"
            Set Location to 22 76
            Set Size to 10 34
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "” ¢ ¡æ §¨¦ª «¦  •¨ã©«ž î¤¦£˜"
            Set Location to 42 4
            Set Size to 10 105
        End_Object    // TextBoxSub3


        //AB-StoreStart
                                                
                                                
                                                
        //AB-StoreEnd

    End_Object    // Arxeia

//AB/     End_Object    // prj
