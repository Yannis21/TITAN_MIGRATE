//AB/ Project 000a
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "000a"
//AB/         Set ProjectFileName to "000a.vw"
//AB/         Set GenerateFileName to "000a.vw"

// Project Object Structure
//   o000a is a dbView
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Company_Company_name is a dbForm
//       Branch_Branch_name is a dbForm
//       Year_Year_year is a dbForm
//       Year_Year_descr is a dbForm
//       Ctypkin_Ctypkin_code is a dbForm
//       Ctypkin_Ctypkin_descr is a dbForm

// Register all objects
Register_Object Branch_Branch_name
Register_Object Branch_DD
Register_Object Company_Company_name
Register_Object Company_DD
Register_Object Container1
Register_Object Ctypkin_Ctypkin_code
Register_Object Ctypkin_Ctypkin_descr
Register_Object Ctypkin_DD
Register_Object o000a
Register_Object Year_DD
Register_Object Year_Year_descr
Register_Object Year_Year_year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use COMPANY.DD
    Use BRANCH.DD
    Use YEAR.DD
    Use CTYPKIN.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_o000a FOR o000a

    Object o000a is a dbView
        Set Label to "000"
        Set Size to 126 464
        Set Location to 6 6

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary
        End_Object    // Company_DD

        Object Branch_DD is a Branch_DataDictionary
            Set DDO_Server to (Company_DD(self))
        End_Object    // Branch_DD

        Object Year_DD is a Year_DataDictionary
            Set DDO_Server to (Branch_DD(self))
        End_Object    // Year_DD

        Object Ctypkin_DD is a Ctypkin_DataDictionary
            Set DDO_Server to (Year_DD(self))
        End_Object    // Ctypkin_DD

        Set Main_DD to (Ctypkin_DD(self))
        Set Server to (Ctypkin_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Size to 100 448
            Set Location to 5 5
            Object Company_Company_name is a dbForm
                Entry_Item Company.Company_name
                Set Label to "Company Name:"
                Set Size to 13 366
                Set Location to 5 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Company_Company_name

            Object Branch_Branch_name is a dbForm
                Entry_Item Branch.Branch_name
                Set Label to "Branch Name:"
                Set Size to 13 366
                Set Location to 20 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Branch_Branch_name

            Object Year_Year_year is a dbForm
                Entry_Item Year.Year_year
                Set Label to "Year Year:"
                Set Size to 13 34
                Set Location to 34 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Year_Year_year

            Object Year_Year_descr is a dbForm
                Entry_Item Year.Year_descr
                Set Label to "Year Descr:"
                Set Size to 13 186
                Set Location to 50 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Year_Year_descr

            Object Ctypkin_Ctypkin_code is a dbForm
                Entry_Item Ctypkin.Ctypkin_code
                Set Label to "Ctypkin Code:"
                Set Size to 13 27
                Set Location to 65 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Ctypkin_Ctypkin_code

            Object Ctypkin_Ctypkin_descr is a dbForm
                Entry_Item Ctypkin.Ctypkin_descr
                Set Label to "Ctypkin Descr:"
                Set Size to 13 366
                Set Location to 80 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Ctypkin_Ctypkin_descr

        End_Object    // Container1

    End_Object    // o000a

//AB/     End_Object    // prj
