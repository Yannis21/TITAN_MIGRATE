//AB/ Project Sysrecc
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Sysrecc"
//AB/     Set ProjectFileName to "Sysrecc.vw"
//AB/     Set GenerateFileName to "Sysrecc.vw"

// Project Object Structure
//   Sysrecc is a dbView
//     Syscurxr_DD is a DataDictionary
//     Sysrecc_DD is a DataDictionary
//     Sysrecc_Constr_Clients is a dbCheckBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Syscurxr_Company_Name is a dbFormSub
//       Syscurxr_Branch_Name is a dbFormSub
//       Syscurxr_Year_Year is a dbFormSub
//       Syscurxr_Year_Descr is a dbFormSub

// Register all objects
Register_Object dbGroupSub1
Register_Object Syscurxr_Branch_Name
Register_Object Syscurxr_Company_Name
Register_Object Syscurxr_DD
Register_Object Syscurxr_Year_Descr
Register_Object Syscurxr_Year_Year
Register_Object Sysrecc
Register_Object Sysrecc_Constr_Clients
Register_Object Sysrecc_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbChkbox.Sub
Use dbGroup.Sub
Use dbForm.Sub

Use SYSCURXR.DD
Use SYSRECC.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Sysrecc FOR Sysrecc

Object Sysrecc is a dbView
    set label to "ƒ ˜®œå¨ ©ž §˜¨˜£â«¨à¤ ˜¨®œå¦¬ SYSRECC" 
    Set Size to 225 469
    Set Location to 18 84

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Sysrecc_DD is a Sysrecc_DataDictionary

        //AB-StoreStart
                            
        Procedure Request_Save
            Integer iClose iPrev iNew
            Move Sysrecc.Constr_Clients to iPrev
            Forward Send Request_Save
            Move Sysrecc.Constr_Clients to iNew
            Reread Sysrecc
            Unlock
            If (iPrev<>iNew) Move (Close_All_Views(Self,True)) to iClose
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Sysrecc_DD

    Set Main_DD to (Sysrecc_DD(self))
    Set Server to (Sysrecc_DD(self))

    //AB-DDOEnd

    Object Sysrecc_Constr_Clients is a dbCheckBoxSub
        Entry_Item Sysrecc.Constr_clients
        Set Label to "Must Constrain Clients to Company/Branch/Year"
        Set Size to 10 184
        Set Location to 7 10
    End_Object    // Sysrecc_Constr_Clients

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 60 446
        Set Location to 143 10
        Object Syscurxr_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Label to "Company Name:"
            Set Size to 13 366
            Set Location to 10 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Syscurxr_Company_Name

        Object Syscurxr_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Label to "Branch Name:"
            Set Size to 13 366
            Set Location to 24 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Syscurxr_Branch_Name

        Object Syscurxr_Year_Year is a dbFormSub
            Entry_Item Syscurxr.Year_year
            Set Server to (Syscurxr_DD(self))
            Set Label to "Year Year:"
            Set Size to 13 30
            Set Location to 40 70
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Syscurxr_Year_Year

        Object Syscurxr_Year_Descr is a dbFormSub
            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 322
            Set Location to 40 115
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Syscurxr_Year_Descr

    End_Object    // dbGroupSub1


    //AB-StoreStart
    
    Procedure Page Integer PageMode
        Forward Send Page PageMode
        Reread Sysrecc
        Unlock
    End_procedure
    
    //AB-StoreEnd

End_Object    // Sysrecc

//AB/ End_Object    // prj
