//AB/ Project CheckClientsCN
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "CheckClientsCN"
//AB/     Set ProjectFileName to "CheckClientsCN.vw"
//AB/     Set GenerateFileName to "CheckClientsCN.vw"

// Project Object Structure
//   CheckClientsCN is a dbView
//     Clients_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Clients_Client_id is a dbForm
//       Clients_Client_name is a dbForm
//       Clients_Client_afm is a dbForm
//     The_Table is a dbGrid

// Register all objects
Register_Object CheckClientsCN
Register_Object Clients_Client_afm
Register_Object Clients_Client_id
Register_Object Clients_Client_name
Register_Object Clients_DD
Register_Object Cn_DD
Register_Object Container1
Register_Object The_Table


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg

Use CLIENTS.DD
Use CN.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_CheckClientsCN FOR CheckClientsCN

Object CheckClientsCN is a dbView
    Set Label to "CheckClientsCN"
    Set Size to 153 588
    Set Location to 6 6

    //AB-DDOStart

    Object Clients_DD is a Clients_DataDictionary
    End_Object    // Clients_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Cn_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Size to 55 568
        Set Location to 5 5
        Object Clients_Client_id is a dbForm
            Entry_Item Clients.Client_id
            Set Label to "Client Id:"
            Set Size to 13 126
            Set Location to 5 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_id

        Object Clients_Client_name is a dbForm
            Entry_Item Clients.Client_name
            Set Label to "Client Name:"
            Set Size to 13 486
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_name

        Object Clients_Client_afm is a dbForm
            Entry_Item Clients.Client_afm
            Set Label to "Client Afm:"
            Set Size to 13 126
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_afm

    End_Object    // Container1

    Object The_Table is a dbGrid
        Set Main_File to Cn.File_Number
        Set Server to (Cn_DD(self))
        Set Ordering to 4
        Set Size to 70 574
        Set Location to 65 4
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Cn.Cn_code
            Entry_Item Cn.Cn_descr
            Entry_Item Cn.Cn_start_date
            Entry_Item Cn.Cn_end_date
        End_Row

        Set Form_Width    item 0 to 120
        Set Header_Label  item 0 to "Cn Code"
        
        Set Form_Width    item 1 to 360
        Set Header_Label  item 1 to "Cn Descr"
        
        Set Form_Width    item 2 to 21
        Set Header_Label  item 2 to "Cn Start Date"
        
        Set Form_Width    item 3 to 21
        Set Header_Label  item 3 to "Cn End Date"
        
    End_Object    // The_Table

End_Object    // CheckClientsCN

//AB/ End_Object    // prj
