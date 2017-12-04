//AB/ Project Cfkin
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Cfkin"
//AB/         Set ProjectFileName to "Cfkin.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Cfkin is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Cflagkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Syscurxr_Company_Name is a dbFormSub
//     Syscurxr_Branch_Name is a dbFormSub
//     Syscurxr_Year_Descr is a dbFormSub
//     Ctypkin_Ctypkin_Code is a dbFormSub
//     Ctypkin_Ctypkin_Descr is a dbFormSub
//     Ctypkin_Ctypkin_Module is a dbComboFormSub
//     Cflagkin_ is a dbGridSub

// Register all objects
Register_Object Cfkin
Register_Object Cflagkin_
Register_Object Cflagkin_DD
Register_Object Ctypkin_Ctypkin_Code
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_Ctypkin_Module
Register_Object Ctypkin_DD
Register_Object Syscurxr_Branch_Name
Register_Object Syscurxr_Company_Name
Register_Object Syscurxr_DD
Register_Object Syscurxr_Year_Descr


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbCmbfrm.Sub
    Use dbGrid.Sub

    Use CTYPKIN.DD
    Use CFLAGKIN.DD
    Use SYSCURXR.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Cfkin FOR ;
    ;
    Object Cfkin is a dbViewSubS
        Set Label to "Put The Label of The View Here"
        Set Size to 263 475
        Set Location to 6 6

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Cflagkin_DD is a Cflagkin_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set Constrain_File to Ctypkin.File_Number
        End_Object    // Cflagkin_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Ctypkin_DD(self))
        Set Server to (Ctypkin_DD(self))

        //AB-DDOEnd

        Object Syscurxr_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Label to "Company Name:"
            Set Size to 13 366
            Set Location to 14 67
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Syscurxr_Company_Name

        Object Syscurxr_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Label to "Branch Name:"
            Set Size to 13 366
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Syscurxr_Branch_Name

        Object Syscurxr_Year_Descr is a dbFormSub
            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Label to "Year Descr:"
            Set Size to 13 366
            Set Location to 50 65
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Syscurxr_Year_Descr

        Object Ctypkin_Ctypkin_Code is a dbFormSub
            Entry_Item Ctypkin.Ctypkin_code
            Set Label to "Ctypkin Code:"
            Set Size to 13 85
            Set Location to 87 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ctypkin_Ctypkin_Code

        Object Ctypkin_Ctypkin_Descr is a dbFormSub
            Entry_Item Ctypkin.Ctypkin_descr
            Set Label to "Ctypkin Descr:"
            Set Size to 13 366
            Set Location to 102 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ctypkin_Ctypkin_Descr

        Object Ctypkin_Ctypkin_Module is a dbComboFormSub
            Entry_Item Ctypkin.Ctypkin_module
            Set Label to "Ctypkin Module:"
            Set Size to 13 92
            Set Location to 122 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ctypkin_Ctypkin_Module

        Object Cflagkin_ is a dbGridSub
            Set Main_File to Cflagkin.File_Number
            Set Server to (Cflagkin_DD(self))
            Set Size to 70 368
            Set Location to 150 64
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Cflagkin.Cflagkin_flag
                Entry_Item (Code_Description(Self))
            End_Row

            Set Form_Width    item 0 to 101
            Set Header_Label  item 0 to "Flag"
            
            Set Form_Width    item 1 to 259
            Set Header_Label  item 1 to "Flag Descr"
            

            //AB-StoreStart
            
            Set Export_Code_Description_State Item 0 to true
            
            
            //AB-StoreEnd

        End_Object    // Cflagkin_

    CD_End_Object    // Cfkin

//AB/     End_Object    // prj
