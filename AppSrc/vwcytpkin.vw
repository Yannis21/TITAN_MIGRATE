//AB/ Project VWCYTPKIN
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "VWCYTPKIN"
//AB/     Set ProjectFileName to "VWCYTPKIN.vw"
//AB/     Set GenerateFileName to "VWCYTPKIN.vw"

// Project Object Structure
//   VWCYTPKIN is a dbView
//     Ctypkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Ctypkin_Ctypkin_Code is a dbFormSub
//     Ctypkin_Ctypkin_Descr is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object Ctypkin_Ctypkin_Code
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_DD
Register_Object dbGroupSub1
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object VWCYTPKIN
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbGroup.Sub

Use CTYPKIN.DD
Use SYSCURXR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_VWCYTPKIN FOR VWCYTPKIN

Object VWCYTPKIN is a dbView
    set label to "â‡õ†°¶ß¶Âû©û â†§„©ú‡§" 
    Set Size to 87 465
    Set Location to 10 12

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Set Main_DD to (Ctypkin_DD(self))
    Set Server to (Ctypkin_DD(self))

    //AB-DDOEnd

    Object Ctypkin_Ctypkin_Code is a dbFormSub
        Entry_Item Ctypkin.Ctypkin_code
        Set Size to 13 57
        Set Location to 35 77
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Ctypkin_Ctypkin_Code

    Object Ctypkin_Ctypkin_Descr is a dbFormSub
        Entry_Item Ctypkin.Ctypkin_descr
        Set Size to 13 366
        Set Location to 51 77
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Ctypkin_Ctypkin_Descr

    Object TextBoxSub1 is a TextBoxSub
        set label to "â‡õ†°Ê™ âÂ§û©û™" 
        Set Location to 34 7
        Set Size to 10 56
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        set label to "èú®†ö®ò≠„ âÂ§û©û™" 
        Set Location to 52 7
        Set Size to 10 66
    End_Object    // TextBoxSub2

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 455
        Set Location to 0 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 91
            Set Location to 9 54
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 203
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 381
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub3 is a TextBoxSub
            set label to "Ñ´ò†®úÂò" 
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            set label to "ìß¶°/£ò :" 
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 153
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            set label to "ï®„©û :          " 
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 332
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub5

    End_Object    // dbGroupSub1


    //AB-StoreStart
                        
                        
                        
    //AB-StoreEnd

End_Object    // VWCYTPKIN

//AB/ End_Object    // prj
