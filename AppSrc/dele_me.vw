//AB/ Project dele_me
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "dele_me"
//AB/         Set ProjectFileName to "dele_me.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   dele_me is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Cmoves_ is a dbGridSub
//     Copen_ is a dbGridSub
//     Cmovesa_Recnum is a dbFormSub
//     Cmovesa_Cmoves_Hmnia is a dbFormSub
//     Cmovesa_Cmoves_Par is a dbFormSub
//     Cmovesa_Cmoves_Axia is a dbFormSub
//     Cmovesa_Cmoves_Recr is a dbFormSub
//     Cmovesa_Client_Id is a dbFormSub
//     Cmovesa_Cmoves_Rec0 is a dbFormSub
//     Cmovesa_Cmoves_X0 is a dbFormSub
//     Cmovesa_Cmoves_P0 is a dbFormSub

// Register all objects
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cmoves_
Register_Object Cmoves_DD
Register_Object Cmovesa_Client_Id
Register_Object Cmovesa_Cmoves_Axia
Register_Object Cmovesa_Cmoves_Hmnia
Register_Object Cmovesa_Cmoves_P0
Register_Object Cmovesa_Cmoves_Par
Register_Object Cmovesa_Cmoves_Rec0
Register_Object Cmovesa_Cmoves_Recr
Register_Object Cmovesa_Cmoves_X0
Register_Object Cmovesa_DD
Register_Object Cmovesa_Recnum
Register_Object Copen_
Register_Object Copen_DD
Register_Object Ctypkin_DD
Register_Object dele_me


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub
    Use dbForm.Sub

    Use CTYPKIN.DD
    Use CITIES.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    Use CMOVESA.DD
    Use COPEN.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_dele_me FOR ;
    ;
    Object dele_me is a dbViewSubS

        //AB-StoreTopStart
            
        //AB-StoreTopEnd

        Set Label to "Put The Label of The View Here"
        Set Size to 281 517
        Set Location to 4 4

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Cities_DD is a Cities_DataDictionary
        End_Object    // Cities_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))

            //AB-StoreStart
            Set piFromBp to 1
            
            //AB-StoreEnd

        End_Object    // Cmoves_DD

        Object Cmovesa_DD is a Cmovesa_DataDictionary
        End_Object    // Cmovesa_DD

        Object Copen_DD is a Copen_DataDictionary
            Set DDO_Server to (Cmoves_DD(self))
            Set DDO_Server to (Cmovesa_DD(self))
            Set Constrain_File to Cmoves.File_Number
        End_Object    // Copen_DD

        Set Main_DD to (Cmoves_DD(self))
        Set Server to (Cmoves_DD(self))

        //AB-DDOEnd

        Object Cmoves_ is a dbGridSub
            Set Main_File to Cmoves.File_Number
            Set Size to 70 461
            Set Location to 12 8
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Cmoves.Cmoves_recr
                Entry_Item Cmoves.Cmoves_hmnia
                Entry_Item Cmoves.Cmoves_axia
                Entry_Item Cmoves.Cmoves_x0
                Entry_Item Cmoves.Cmoves_p0
                Entry_Item Cmoves.Cmoves_open_sx0
                Entry_Item Cmoves.Cmoves_open_sp0
                Entry_Item Cmoves.Cmoves_open_yx0
                Entry_Item Cmoves.Cmoves_open_yp0
                Entry_Item Cmoves.Axia_pros_sysx
                Entry_Item Cmoves.Axia_sysxet
                Entry_Item Cmoves.Axia_ypol_sysx
                Entry_Item Cmoves.Client_id
            End_Row

            Set Form_Width    item 0 to 39
            Set Header_Label  item 0 to "Cmoves Recr"
            
            Set Form_Width    item 1 to 50
            Set Header_Label  item 1 to "Cmoves Hmnia"
            
            Set Form_Width    item 2 to 50
            Set Header_Label  item 2 to "Cmoves Axia"
            
            Set Form_Width    item 3 to 50
            Set Header_Label  item 3 to "Cmoves X0"
            
            Set Form_Width    item 4 to 50
            Set Header_Label  item 4 to "Cmoves P0"
            
            Set Form_Width    item 5 to 50
            Set Header_Label  item 5 to "Cmoves Open Sx0"
            
            Set Form_Width    item 6 to 50
            Set Header_Label  item 6 to "Cmoves Open Sp0"
            
            Set Form_Width    item 7 to 50
            Set Header_Label  item 7 to "Cmoves Open Yx0"
            
            Set Form_Width    item 8 to 50
            Set Header_Label  item 8 to "Cmoves Open Yp0"
            
            Set Form_Width    item 9 to 50
            Set Header_Label  item 9 to "Axia Pros Sysx"
            
            Set Form_Width    item 10 to 50
            Set Header_Label  item 10 to "Axia Sysxet"
            
            Set Form_Width    item 11 to 50
            Set Header_Label  item 11 to "Axia Ypol Sysx"
            
            Set Form_Width    item 12 to 120
            Set Header_Label  item 12 to "Client id"
            
        End_Object    // Cmoves_

        Object Copen_ is a dbGridSub
            Set Main_File to Copen.File_Number
            Set Server to (Copen_DD(self))
            Set Size to 70 466
            Set Location to 108 9
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Copen.Copen_recr
                Entry_Item Copen.Copen_x0
                Entry_Item Copen.Copen_p0
                Entry_Item Cmovesa.Cmoves_recr
                Entry_Item Cmovesa.Cmoves_hmnia
                Entry_Item Ctypkin.Ctypkin_recr
                Entry_Item Cmovesa.Cmoves_axia
            End_Row

            Set Form_Width    item 0 to 70
            Set Header_Label  item 0 to "Copen Recr"
            
            Set Form_Width    item 1 to 63
            Set Header_Label  item 1 to "Copen x0"
            
            Set Form_Width    item 2 to 65
            Set Header_Label  item 2 to "Copen p0"
            
            Set Form_Width    item 3 to 55
            Set Header_Label  item 3 to "Cmovesa recr"
            
            Set Form_Width    item 4 to 58
            Set Header_Label  item 4 to "Cmoves hmnia"
            
            Set Form_Width    item 5 to 62
            Set Header_Label  item 5 to "Ctypkin recr"
            
            Set Form_Width    item 6 to 58
            Set Header_Label  item 6 to "Cmoves axia"
            
        End_Object    // Copen_

        Object Cmovesa_Recnum is a dbFormSub
            Entry_Item Cmovesa.Recnum
            Set Server to (Copen_DD(self))
            Set Label to "Recnum:"
            Set Size to 13 54
            Set Location to 188 53
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Recnum

        Object Cmovesa_Cmoves_Hmnia is a dbFormSub
            Entry_Item Cmovesa.Cmoves_hmnia
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves Hmnia:"
            Set Size to 13 66
            Set Location to 188 190
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_Hmnia

        Object Cmovesa_Cmoves_Par is a dbFormSub
            Entry_Item Cmovesa.Cmoves_par
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves Par:"
            Set Size to 13 366
            Set Location to 231 52
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_Par

        Object Cmovesa_Cmoves_Axia is a dbFormSub
            Entry_Item Cmovesa.Cmoves_axia
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves Axia:"
            Set Size to 13 138
            Set Location to 185 319
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_Axia

        Object Cmovesa_Cmoves_Recr is a dbFormSub
            Entry_Item Cmovesa.Cmoves_recr
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves Recr:"
            Set Size to 13 78
            Set Location to 214 52
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_Recr

        Object Cmovesa_Client_Id is a dbFormSub
            Entry_Item Cmovesa.Client_id
            Set Server to (Copen_DD(self))
            Set Label to "Client Id:"
            Set Size to 13 65
            Set Location to 208 190
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Client_Id

        Object Cmovesa_Cmoves_Rec0 is a dbFormSub
            Entry_Item Cmovesa.Cmoves_rec0
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves Rec0:"
            Set Size to 13 90
            Set Location to 205 317
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_Rec0

        Object Cmovesa_Cmoves_X0 is a dbFormSub
            Entry_Item Cmovesa.Cmoves_x0
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves X0:"
            Set Size to 13 138
            Set Location to 249 51
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_X0

        Object Cmovesa_Cmoves_P0 is a dbFormSub
            Entry_Item Cmovesa.Cmoves_p0
            Set Server to (Copen_DD(self))
            Set Label to "Cmoves P0:"
            Set Size to 13 138
            Set Location to 249 240
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Cmovesa_Cmoves_P0


        //AB-StoreStart
            
        Move '01' to gs_Module_Code
        
        
        
        //AB-StoreEnd

    CD_End_Object    // dele_me

//AB/     End_Object    // prj
