//AB/ Project v444
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v444"
//AB/     Set ProjectFileName to "v444.vw"
//AB/     Set GenerateFileName to "v444.vw"

// Project Object Structure
//   v444 is a dbView
//     Company_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Company_Company_code is a dbForm
//       Company_Company_name is a dbForm
//       Company_Company_doy is a dbComboForm

// Register all objects
Register_Object Company_Company_code
Register_Object Company_Company_doy
Register_Object Company_Company_name
Register_Object Company_DD
Register_Object Container1
Register_Object v444


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg

Use COMPANY.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v444 FOR v444

Object v444 is a dbView
    Set Label to "v444"
    Set Size to 81 464
    Set Location to 6 6

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Set Main_DD to (Company_DD(self))
    Set Server to (Company_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Size to 55 448
        Set Location to 5 5
        Object Company_Company_code is a dbForm
            Entry_Item Company.Company_code
            Set Label to "Company Code:"
            Set Size to 13 27
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

        Object Company_Company_doy is a dbComboForm
            Entry_Item Company.Company_doy
            Set Label to "Company Doy:"
            Set Size to 13 42
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Company_Company_doy

    End_Object    // Container1

End_Object    // v444

//AB/ End_Object    // prj
