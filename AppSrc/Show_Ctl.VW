//AB/ Project Show_Ctl
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Show_Ctl"
//AB/         Set ProjectFileName to "Show_Ctl.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Show_Ctl is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Show_Ctl


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Show_Ctl FOR ;
    ;
    Object Show_Ctl is a dbViewSubS
        Set Label to "èò®·£ú´®¶† / ê¨ü£„©ú†™"
        Set Size to 66 270
        Set Location to 6 6

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub
            Set Label to "Ñ§ú®ö¶ß¶Âû©û"
            Set Size to 14 79
            Set Location to 25 94
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                        
            Procedure OnClick
                Integer iInt
                Send Mouse_Down to Show_Ctl
                Get fiShowCTL to iInt
            End_Procedure // OnClick
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    CD_End_Object    // Show_Ctl

//AB/     End_Object    // prj
