//AB/ Project vwZ
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vwZ"
//AB/         Set ProjectFileName to "vwZ.VW"

// Project Object Structure
//   vwZ is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object vwZ


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_vwZ FOR ;
    ;
    Object vwZ is a dbViewSubS
        Set Label to "â¢‚†©†£¶ û£‚®ò™ - Ñ°õ¶©û 'Ö'"
        Set Size to 66 270
        Set Location to 6 6

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub
            Set Label to "Î°õ¶©û"
            Set Size to 14 79
            Set Location to 25 94
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                        
            Procedure OnClick
                Integer iInt iYes
                Get YesNo_Box 'á‚¢ú´ú §ò °¢úÂ©ú´ú ´û§ ©û£ú®†§„ û£‚®ò ú°õÂõ¶§´ò™ Ö ?' to iYes
                If (iYes=MBR_NO) Procedure_Return
                Get fiVgaleZ to iInt
                If (iInt=0) Send Info_Box 'í¶ Ö ú°õÊüû°ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
                Else        Send Info_Box 'Ü õ†òõ†°ò©Âò ÉÑå ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
            End_Procedure // OnClick
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    CD_End_Object    // vwZ

//AB/     End_Object    // prj
