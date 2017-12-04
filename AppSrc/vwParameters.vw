//AB/ Project vwParameters
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwParameters"
//AB/     Set ProjectFileName to "vwParameters.vw"

// Project Object Structure
//   vwParameters is a dbViewSubS
//     oTextBox2 is a TextBoxSub
//     oTextBox1 is a TextBoxSub
//     chkPAE is a CheckBoxSub

// Register all objects
Register_Object chkPAE
Register_Object oTextBox1
Register_Object oTextBox2
Register_Object vwParameters


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use Txtbox.Sub
Use Chkbox.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_vwParameters FOR ;
;
Object vwParameters is a dbViewSubS

    //AB-StoreTopStart
    
    //AB-StoreTopEnd

    Set Border_Style to Border_Thick
    Set Label to "èò®·£ú´®¶† ë¨©´„£ò´¶™ - Äß¶ Registry"
    Set Size to 150 293
    Set Location to 2 2
    Set Color to 16763541

    //AB-DDOStart


    //AB-DDOEnd

    Object oTextBox2 is a TextBoxSub
        Set Label to "Ä•†Êö®ò≠ò - "
        Set Color to 16763541
        Set TextColor to 19946
        Set FontSize to 14 8
        Set Location to 7 7
        Set Size to 9 48
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // oTextBox2

    Object oTextBox1 is a TextBoxSub
        Set Label to "ï®„©û è.Ä.Ñ."
        Set Color to 16763541
        Set Location to 9 80
        Set Size to 10 55
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // oTextBox1

    Object chkPAE is a CheckBoxSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 10 9
        Set Location to 8 269

        //AB-StoreStart
        
        Procedure OnChange
            Integer isChecked
            String lsTheAppPath
            Get Checked_State                                   To isChecked
            Move (GetTheAppPath(Self))                          To lsTheAppPath
            Set_Profile_String lsTheAppPath "XrhshPAE"          To isChecked
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // chkPAE


    //AB-StoreStart
    
    Procedure Activate_View Returns Integer
        Integer rVal bState
        String  lsTheAppPath
        Forward Get Msg_Activate_View                       To rVal
        Move (GetTheAppPath(Self))                          To lsTheAppPath
        Get_Profile_String lsTheAppPath "XrhshPAE"          To bState
        Set Checked_State Of (chkPAE(Self))                 To (If((bState),1,0))
        Procedure_Return rVal
    End_Procedure
    
    
    
    //AB-StoreEnd

CD_End_Object    // vwParameters

//AB/ End_Object    // prj
