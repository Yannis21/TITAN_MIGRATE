//AB/ Project aa
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "aa"
//AB/         Set ProjectFileName to "aa.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   aa is a dbView
//     FormSub1 is a FormSub
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object aa
Register_Object ButtonSub1
Register_Object FormSub1


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Form.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_aa FOR aa

    Object aa is a dbView
        Set Label to "Put The Label of The View Here"
        Set Size to 90 300
        Set Location to 9 23

        //AB-DDOStart


        //AB-DDOEnd

        Object FormSub1 is a FormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 13 85
            Set Location to 34 55
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "FormSub1"

            //AB-StoreStart
            
            On_Key Key_Ctrl+Key_W Send ChangeMyPassword
            
            
            //AB-StoreEnd

        End_Object    // FormSub1

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Location to 34 147
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                Send ChangeMyPassword
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    End_Object    // aa

//AB/     End_Object    // prj
