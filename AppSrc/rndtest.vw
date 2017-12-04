//AB/ Project RndTest
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "RndTest"
//AB/     Set ProjectFileName to "RndTest.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   RndTest is a dbViewSubS
//     poso is a dbFormSub
//     decimals is a dbFormSub
//     ButtonSub1 is a ButtonSub
//     Apotelesma is a FormSub

// Register all objects
Register_Object Apotelesma
Register_Object ButtonSub1
Register_Object decimals
Register_Object poso
Register_Object RndTest


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use dbForm.Sub
Use Button.Sub
Use Form.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_RndTest FOR RndTest

Object RndTest is a dbViewSubS
    Set Label to "Put The Label of The View Here"
    Set Size to 150 300
    Set Location to 6 6

    //AB-DDOStart


    //AB-DDOEnd

    Object poso is a dbFormSub
        Set Size to 13 85
        Set Location to 29 21
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // poso

    Object decimals is a dbFormSub
        Set Size to 13 48
        Set Location to 28 133
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // decimals

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Location to 64 44

        //AB-StoreStart
        
        
        Procedure OnClick
            Number n1 n2 n3
            Get value of poso item 0 to n1
            Get value of decimals item 0 to n2
            Set Value Of Apotelesma to ;
            (Round_Number(n1,n2))
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object Apotelesma is a FormSub
        Set Size to 13 85
        Set Location to 67 134
        Set Label_Col_Offset to 2
        Set Value Item 0 to "FormSub1"
    End_Object    // Apotelesma

End_Object    // RndTest

//AB/ End_Object    // prj
