//AB/ Project My View
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "My View"
//AB/     Set ProjectFileName to "My_View.vw"
//AB/     Set GenerateFileName to "My_View.vw"

// Project Object Structure
//   My_View is a dbView
//     Year_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Year_Company_code is a dbForm
//       Year_Branch_code is a dbForm
//       Year_Year_year is a dbForm
//       Year_Year_recr is a dbForm
//       Year_Year_c_code0 is a dbComboForm
//       Year_Year_c_code00 is a dbComboForm
//       Year_Year_c_coder is a dbComboForm

// Register all objects
Register_Object Container1
Register_Object My_View
Register_Object Year_Branch_code
Register_Object Year_Company_code
Register_Object Year_DD
Register_Object Year_Year_c_code0
Register_Object Year_Year_c_code00
Register_Object Year_Year_c_coder
Register_Object Year_Year_recr
Register_Object Year_Year_year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg

Use YEAR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_My_View FOR My_View

Object My_View is a dbView
    Set Label to "My View"
    Set Size to 141 164
    Set Location to 6 6

    //AB-DDOStart

    Object Year_DD is a Year_DataDictionary
    End_Object    // Year_DD

    Set Main_DD to (Year_DD(self))
    Set Server to (Year_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Size to 114 148
        Set Location to 5 5
        Object Year_Company_code is a dbForm
            Entry_Item Year.Company_code
            Set Label to "Company Code:"
            Set Size to 13 66
            Set Location to 5 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Company_code

        Object Year_Branch_code is a dbForm
            Entry_Item Year.Branch_code
            Set Label to "Branch Code:"
            Set Size to 13 66
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Branch_code

        Object Year_Year_year is a dbForm
            Entry_Item Year.Year_year
            Set Label to "Year Year:"
            Set Size to 13 34
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Year_year

        Object Year_Year_recr is a dbForm
            Entry_Item Year.Year_recr
            Set Label to "Year Recr:"
            Set Size to 13 48
            Set Location to 50 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Year_recr

        Object Year_Year_c_code0 is a dbComboForm
            Entry_Item Year.Year_c_code0
            Set Label to "Year C Code0:"
            Set Size to 13 34
            Set Location to 65 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Year_c_code0

        Object Year_Year_c_code00 is a dbComboForm
            Entry_Item Year.Year_c_code00
            Set Label to "Year C Code00:"
            Set Size to 13 34
            Set Location to 80 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Year_c_code00

        Object Year_Year_c_coder is a dbComboForm
            Entry_Item Year.Year_c_coder
            Set Label to "Year C Coder:"
            Set Size to 13 34
            Set Location to 95 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Year_Year_c_coder

    End_Object    // Container1

End_Object    // My_View

//AB/ End_Object    // prj
