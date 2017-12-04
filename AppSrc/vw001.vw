//AB/ Project VW001
//AB/ Object prj is a VIEW_Project
//AB/    set ProjectName to "VW001"
//AB/    set ProjectFileName to "VW001.vw"
//AB/    set GenerateFileName to "VW001.vw"

//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt

Use COMPANY.DD  

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_VW001 FOR VW001

Object VW001 is a dbView
    set label to "VW001"
    set location to 6 6

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary                  
    End_Object  // Company_DD

    Set Main_DD to (Company_DD(self))
    Set Server  to (Company_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Location to 5 5

        Object Company_Company_code is a dbForm
            Entry_Item Company.Company_code
            Set Label to "Company Code:"
            Set Size to 13 66
            Set Location to 5 66
            set Label_Justification_Mode to jMode_Right
            set Label_Col_Offset to 2
            set Label_Row_Offset to 0
        End_Object  //  Company_Company_code

        Object Company_Company_name is a dbForm
            Entry_Item Company.Company_name
            Set Label to "Company Name:"
            Set Size to 13 366
            Set Location to 20 66
            set Label_Justification_Mode to jMode_Right
            set Label_Col_Offset to 2
            set Label_Row_Offset to 0
        End_Object  //  Company_Company_name

        Object Company_Company_afm is a dbForm
            Entry_Item Company.Company_afm
            Set Label to "Company Afm:"
            Set Size to 13 126
            Set Location to 35 66
            set Label_Justification_Mode to jMode_Right
            set Label_Col_Offset to 2
            set Label_Row_Offset to 0
        End_Object  //  Company_Company_afm

        Object Company_Company_addr is a dbForm
            Entry_Item Company.Company_addr
            Set Label to "Company Addr:"
            Set Size to 13 306
            Set Location to 50 66
            set Label_Justification_Mode to jMode_Right
            set Label_Col_Offset to 2
            set Label_Row_Offset to 0
        End_Object  //  Company_Company_addr

        Object Company_Company_tk is a dbForm
            Entry_Item Company.Company_tk
            Set Label to "Company Tk:"
            Set Size to 13 66
            Set Location to 65 66
            set Label_Justification_Mode to jMode_Right
            set Label_Col_Offset to 2
            set Label_Row_Offset to 0
        End_Object  //  Company_Company_tk

        Set Size to 85 448
    End_Object  //  Container1

    Set Size to 111 464
End_Object  // VW001

//AB/ End_Object   //  Prj
