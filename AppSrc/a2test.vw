//AB/ Project a2test
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "a2test"
//AB/         Set ProjectFileName to "a2test.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   a2test is a dbView
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Particle_Partl_Hmnia is a dbForm
//     Particle_Partl_Payam is a dbForm
//     Nomisma_Nomisma_Descr is a dbForm
//     Clients_Client_Name is a dbForm
//     Ptyppar_Ptyppar_Code is a dbForm
//     Ctypkin_Ctypkin_Descr is a dbForm

// Register all objects
Register_Object a2test
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_DD
Register_Object Nomisma_DD
Register_Object Nomisma_Nomisma_Descr
Register_Object Particle_DD
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_Payam
Register_Object Ptyppar_DD
Register_Object Ptyppar_Ptyppar_Code
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use CLIENTS.DD
    Use NOMISMA.DD
    Use PARTICLE.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_a2test FOR ;
    ;
    Object a2test is a dbView
        Set Label to "Put The Label of The View Here"
        Set Size to 258 457
        Set Location to 6 6

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD

        Object Clients_DD is a Clients_DataDictionary
        End_Object    // Clients_DD

        Object Nomisma_DD is a Nomisma_DataDictionary
        End_Object    // Nomisma_DD

        Object Particle_DD is a Particle_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Ptyppar_DD(self))
            Set DDO_Server to (Nomisma_DD(self))
        End_Object    // Particle_DD

        Set Main_DD to (Particle_DD(self))
        Set Server to (Particle_DD(self))

        //AB-DDOEnd

        Object Particle_Partl_Hmnia is a dbForm
            Entry_Item Particle.Partl_hmnia
            Set Label to "Partl Hmnia:"
            Set Size to 13 66
            Set Location to 38 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Particle_Partl_Hmnia

        Object Particle_Partl_Payam is a dbForm
            Entry_Item Particle.Partl_payam
            Set Label to "Partl Payam:"
            Set Size to 13 138
            Set Location to 60 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Particle_Partl_Payam

        Object Nomisma_Nomisma_Descr is a dbForm
            Entry_Item Nomisma.Nomisma_descr
            Set Label to "Nomisma Descr:"
            Set Size to 13 546
            Set Location to 80 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Nomisma_Nomisma_Descr

        Object Clients_Client_Name is a dbForm
            entry_item clients.client_name 
            Set Label to "Client Name:"
            Set Size to 13 306
            Set Location to 101 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_Name

        Object Ptyppar_Ptyppar_Code is a dbForm
            Entry_Item Ptyppar.Ptyppar_code
            Set Label to "Ptyppar Code:"
            Set Size to 13 84
            Set Location to 121 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ptyppar_Ptyppar_Code

        Object Ctypkin_Ctypkin_Descr is a dbForm
            Entry_Item Ctypkin.Ctypkin_descr
            Set Label to "Ctypkin Descr:"
            Set Size to 13 366
            Set Location to 141 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ctypkin_Ctypkin_Descr


        //AB-StoreStart
        
        
        //AB-StoreEnd

    CD_End_Object    // a2test

//AB/     End_Object    // prj
