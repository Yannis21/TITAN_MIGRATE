//AB/ Project V21b:elegxos egrafon Gbridgeh-d
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V21b:elegxos egrafon Gbridgeh-d"
//AB/         Set ProjectFileName to "V21b_elegxos_egrafon_Gbridgeh_d.vw"
//AB/         Set GenerateFileName to "V21b_elegxos_egrafon_Gbridgeh_d.vw"

// Project Object Structure
//   V21b is a dbView
//     Gbridgeh_DD is a DataDictionary
//     Gbridged_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Gbridgeh_Particle_recnum is a dbForm
//       Gbridgeh_Gtypkin_recr is a dbForm
//       Gbridgeh_Garticl_hmnia is a dbForm
//       Gbridgeh_Garticl_no is a dbForm
//       Gbridgeh_Garticl_aitiol is a dbForm
//       Gbridgeh_Gbridgeh_recr is a dbForm
//     The_Table is a dbGrid

// Register all objects
Register_Object Container1
Register_Object Gbridged_DD
Register_Object Gbridgeh_DD
Register_Object Gbridgeh_Garticl_aitiol
Register_Object Gbridgeh_Garticl_hmnia
Register_Object Gbridgeh_Garticl_no
Register_Object Gbridgeh_Gbridgeh_recr
Register_Object Gbridgeh_Gtypkin_recr
Register_Object Gbridgeh_Particle_recnum
Register_Object The_Table
Register_Object V21b


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use GBRIDGEH.DD
    Use GbridgeD.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V21b FOR V21b

    Object V21b is a dbView
        Set Label to "V21b:elegxos egrafon Gbridgeh-d"
        Set Size to 284 508
        Set Location to 1 7

        //AB-DDOStart

        Object Gbridgeh_DD is a Gbridgeh_DataDictionary
        End_Object    // Gbridgeh_DD

        Object Gbridged_DD is a GbridgeD_DataDictionary
            Set DDO_Server to (Gbridgeh_DD(self))
            Set Constrain_File to Gbridgeh.File_Number
        End_Object    // Gbridged_DD

        Set Main_DD to (Gbridgeh_DD(self))
        Set Server to (Gbridgeh_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Size to 100 448
            Set Location to 5 5
            Object Gbridgeh_Particle_recnum is a dbForm
                Entry_Item Gbridgeh.Particle_recnum
                Set Label to "Particle Recnum:"
                Set Size to 13 90
                Set Location to 5 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Gbridgeh_Particle_recnum

            Object Gbridgeh_Gtypkin_recr is a dbForm
                Entry_Item Gbridgeh.Gtypkin_recr
                Set Label to "Gtypkin Recr:"
                Set Size to 13 78
                Set Location to 20 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Gbridgeh_Gtypkin_recr

            Object Gbridgeh_Garticl_hmnia is a dbForm
                Entry_Item Gbridgeh.Garticl_hmnia
                Set Label to "Garticl Hmnia:"
                Set Size to 13 66
                Set Location to 34 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Gbridgeh_Garticl_hmnia

            Object Gbridgeh_Garticl_no is a dbForm
                Entry_Item Gbridgeh.Garticl_no
                Set Label to "Garticl No:"
                Set Size to 13 90
                Set Location to 50 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Gbridgeh_Garticl_no

            Object Gbridgeh_Garticl_aitiol is a dbForm
                Entry_Item Gbridgeh.Garticl_aitiol
                Set Label to "Garticl Aitiol:"
                Set Size to 13 366
                Set Location to 65 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Gbridgeh_Garticl_aitiol

            Object Gbridgeh_Gbridgeh_recr is a dbForm
                Entry_Item Gbridgeh.Gbridgeh_recr
                Set Label to "Gbridgeh Recr:"
                Set Size to 13 78
                Set Location to 80 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Gbridgeh_Gbridgeh_recr

        End_Object    // Container1

        Object The_Table is a dbGrid
            Set Main_File to Gbridged.File_Number
            Set Server to (Gbridged_DD(self))
            Set Size to 160 487
            Set Location to 105 7
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Gbridged.Gbridgeh_recr
                Entry_Item Gbridged.Gmove_x2
                Entry_Item Gbridged.Gmove_p2
                Entry_Item Gbridged.Gmove_aitiol
                Entry_Item Gbridged.Ext_gplan_code
            End_Row

            Set Form_Width    item 0 to 72
            Set Header_Label  item 0 to "Gbridgeh Recr"
            
            Set Form_Width    item 1 to 77
            Set Header_Label  item 1 to "Gmove X2"
            
            Set Form_Width    item 2 to 77
            Set Header_Label  item 2 to "Gmove P2"
            
            Set Form_Width    item 3 to 170
            Set Header_Label  item 3 to "Gmove Aitiol"
            
            Set Form_Width    item 4 to 120
            Set Header_Label  item 4 to "Ext Gplan Code"
            
        End_Object    // The_Table

    End_Object    // V21b

//AB/     End_Object    // prj
