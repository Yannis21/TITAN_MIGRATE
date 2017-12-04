//AB/ Project VWBRANCH
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "VWBRANCH"
//AB/         Set ProjectFileName to "VWBRANCH.vw"
//AB/         Set GenerateFileName to "VWBRANCH.vw"

// Project Object Structure
//   VWBRANCH is a dbView
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Company_Company_code is a dbForm
//       Company_Company_name is a dbForm
//       Branch_Branch_code is a dbForm
//       Branch_Branch_name is a dbForm
//       Branch_Branch_Site is a dbFormSub

// Register all objects
Register_Object Branch_Branch_code
Register_Object Branch_Branch_name
Register_Object Branch_Branch_Site
Register_Object Branch_DD
Register_Object Company_Company_code
Register_Object Company_Company_name
Register_Object Company_DD
Register_Object Container1
Register_Object VWBRANCH


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub

    Use COMPANY.DD
    Use BRANCH.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_VWBRANCH FOR VWBRANCH

    Object VWBRANCH is a dbView
        Set Label to "VWBRANCH"
        Set Size to 107 464
        Set Location to 6 6

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary
        End_Object    // Company_DD

        Object Branch_DD is a Branch_DataDictionary
            Set DDO_Server to (Company_DD(self))
        End_Object    // Branch_DD

        Set Main_DD to (Branch_DD(self))
        Set Server to (Branch_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Size to 82 448
            Set Location to 5 5
            Object Company_Company_code is a dbForm
                Entry_Item Company.Company_code
                Set Label to "Company Code:"
                Set Size to 13 66
                Set Location to 5 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Company_Company_code

            Object Company_Company_name is a dbForm
                Entry_Item Company.Company_name
                Set Label to "Company Name:"
                Set Size to 13 366
                Set Location to 20 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Company_Company_name

            Object Branch_Branch_code is a dbForm
                Entry_Item Branch.Branch_code
                Set Label to "Branch Code:"
                Set Size to 13 66
                Set Location to 34 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Branch_Branch_code

            Object Branch_Branch_name is a dbForm
                Entry_Item Branch.Branch_name
                Set Label to "Branch Name:"
                Set Size to 13 366
                Set Location to 50 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Branch_Branch_name

            Object Branch_Branch_Site is a dbFormSub
                Entry_Item Branch.Branch_site
                Set Label to "Branch Site:"
                Set Size to 13 36
                Set Location to 65 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Branch_Branch_Site

        End_Object    // Container1

    End_Object    // VWBRANCH

//AB/     End_Object    // prj
