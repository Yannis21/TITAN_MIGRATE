//AB/ Project V83A
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V83A"
//AB/     Set ProjectFileName to "V83A.vw"
//AB/     Set GenerateFileName to "V83A.vw"

// Project Object Structure
//   V83A is a dbView
//     Syscurxr_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Pagkat_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Pagia_DD is a DataDictionary
//     Pagia_Pagia_code is a dbForm
//     Pagia_Pagia_codea is a dbForm
//     Pagia_Pagia_descr is a dbForm
//     Pagia_Pagkat_code is a dbForm
//     Pagia_Pagia_bydate is a dbForm
//     Pagia_Pagia_modifdate is a dbForm
//     Pagia_Pagia_fpa is a dbForm
//     Clients_Client_Name is a dbFormSub
//     Pagkat_Pagkat_Descr is a dbFormSub
//     dbFormSub1 is a dbFormSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object dbFormSub1
Register_Object Pagia_DD
Register_Object Pagia_Pagia_bydate
Register_Object Pagia_Pagia_code
Register_Object Pagia_Pagia_codea
Register_Object Pagia_Pagia_descr
Register_Object Pagia_Pagia_fpa
Register_Object Pagia_Pagia_modifdate
Register_Object Pagia_Pagkat_code
Register_Object Pagkat_DD
Register_Object Pagkat_Pagkat_Descr
Register_Object Payresp_DD
Register_Object Syscurxr_DD
Register_Object Towns_DD
Register_Object V83A


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbForm.Sub

Use SYSCURXR.DD
Use COUNTRY.DD
Use TOWNS.DD
Use PAGKAT.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use PAGIA.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V83A FOR V83A

Object V83A is a dbView
    Set Label to "V83A"
    Set Size to 248 499
    Set Location to 5 7

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Pagkat_DD is a Pagkat_DataDictionary
    End_Object    // Pagkat_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Object Pagia_DD is a Pagia_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Pagkat_DD(self))
    End_Object    // Pagia_DD

    Set Main_DD to (Pagia_DD(self))
    Set Server to (Pagia_DD(self))

    //AB-DDOEnd

    Object Pagia_Pagia_code is a dbForm
        Entry_Item Pagia.Pagia_code
        Set Label to "Pagia Code:"
        Set Size to 13 126
        Set Location to 5 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_code

    Object Pagia_Pagia_codea is a dbForm
        Entry_Item Pagia.Pagia_codea
        Set Label to "Pagia Codea:"
        Set Size to 13 27
        Set Location to 20 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_codea

    Object Pagia_Pagia_descr is a dbForm
        Entry_Item Pagia.Pagia_descr
        Set Label to "Pagia Descr:"
        Set Size to 13 306
        Set Location to 34 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_descr

    Object Pagia_Pagkat_code is a dbForm
        Entry_Item Pagia.Pagkat_code
        Set Label to "Pagkat Code:"
        Set Size to 13 37
        Set Location to 50 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagkat_code

    Object Pagia_Pagia_bydate is a dbForm
        Entry_Item Pagia.Pagia_bydate
        Set Label to "Pagia Bydate:"
        Set Size to 13 66
        Set Location to 80 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_bydate

    Object Pagia_Pagia_modifdate is a dbForm
        Entry_Item Pagia.Pagia_modifdate
        Set Label to "Pagia Modifdate:"
        Set Size to 13 66
        Set Location to 95 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_modifdate

    Object Pagia_Pagia_fpa is a dbForm
        Entry_Item Pagia.Pagia_fpa
        Set Label to "Pagia Fpa:"
        Set Size to 13 34
        Set Location to 110 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_fpa

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Label to "Client Name:"
        Set Size to 13 142
        Set Location to 74 329
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Clients_Client_Name

    Object Pagkat_Pagkat_Descr is a dbFormSub
        Entry_Item Pagkat.Pagkat_descr
        Set Label to "Pagkat Descr:"
        Set Size to 13 246
        Set Location to 48 130
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagkat_Pagkat_Descr

    Object dbFormSub1 is a dbFormSub
        Entry_Item Clients.Client_id
        Set Size to 13 85
        Set Location to 76 187
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // dbFormSub1

End_Object    // V83A

//AB/ End_Object    // prj
