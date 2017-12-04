//AB/ Project a1test
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "a1test"
//AB/         Set ProjectFileName to "a1test.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   a1test is a dbView
//     Ctypkin_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Button1 is a Button
//     Button2 is a Button
//     Cmoves_ is a dbGrid
//     Particle_Client_Id is a dbFormSub
//     Particle_Partl_No is a dbFormSub

// Register all objects
Register_Object a1test
Register_Object Button1
Register_Object Button2
Register_Object Clients_DD
Register_Object Cmoves_
Register_Object Cmoves_DD
Register_Object Ctypkin_DD
Register_Object Nomisma_DD
Register_Object Particle_Client_Id
Register_Object Particle_DD
Register_Object Particle_Partl_No
Register_Object Ptyppar_DD
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub

    Use CTYPKIN.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use NOMISMA.DD
    Use PARTICLE.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_a1test FOR ;
    ;
    Object a1test is a dbView

        //AB-StoreTopStart
        //Use bpEnCmv2.dg
        
        //AB-StoreTopEnd

        Set Label to "Put The Label of The View Here"
        Set Size to 271 495
        Set Location to 6 7

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Clients_DD is a Clients_DataDictionary
        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
        End_Object    // Cmoves_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD

        Object Nomisma_DD is a Nomisma_DataDictionary
        End_Object    // Nomisma_DD

        Object Particle_DD is a Particle_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Ptyppar_DD(self))
            Set DDO_Server to (Nomisma_DD(self))
        End_Object    // Particle_DD

        Set Main_DD to (Cmoves_DD(self))
        Set Server to (Cmoves_DD(self))

        //AB-DDOEnd

        Object Button1 is a Button
            Set Label to "Update"
            Set Location to 82 11

            //AB-StoreStart
            //Procedure OnClick
            //    If ((Particle.Partl_Recr<>'')   And (Ctypkin.Ctypkin_Code<>'') And ;
            //        (clients.client_recr<>'')   and (particle.partl_payam<> 0) and ; 
            //        (Particle.Partl_Hmnia<>'')) Begin
            //            Set psParticleRecr  Of bpEnCmv2 to Particle.Partl_Recr
            //            Set psCTypkinRecr   Of bpEnCmv2 to Ctypkin.Ctypkin_Code
            //            set psclientrecr    of bpencmv2 to clients.client_recr 
            //            Set pnPoso          Of bpEnCmv2 to Particle.Partl_PayAm
            //            Set pdHmnia         Of bpEnCmv2 to Particle.Partl_Hmnia
            //            Set psNomismaCode   Of bpEnCmv2 to Nomisma.Nomisma_Code
            //            Set piSign          Of bpEnCmv2 to 1
            //            Send DoProcess to bpEnCmv2
            //    End
            //    Send beginning_Of_Data to Cmoves_ True
            //End_Procedure // OnClick
            
            
            
            //AB-StoreEnd

        End_Object    // Button1

        Object Button2 is a Button
            Set Label to "Backout"
            Set Location to 82 77

            //AB-StoreStart
            //Procedure OnClick
            //    If ((Particle.Partl_Recr<>'')   And (Particle.Ctypkin_Code<>'') And ;
            //        (Particle.Client_Recr<>'')  And (Particle.Partl_PayAm <> 0) And ;
            //        (Particle.Partl_Hmnia<>'')) Begin
            //
            //            Set psParticleRecr  Of bpEnCmv2 to Particle.Partl_Recr
            //            Set psCTypkinRecr   Of bpEnCmv2 to Particle.Ctypkin_Code
            //            Set psClientRecr    Of bpEnCmv2 to Particle.Client_Recr
            //            Set pnPoso          Of bpEnCmv2 to Particle.Partl_PayAm
            //            Set pdHmnia         Of bpEnCmv2 to Particle.Partl_Hmnia
            //            Set psNomismaCode   Of bpEnCmv2 to Particle.Nomisma_Code
            //            Set piSign          Of bpEnCmv2 to (-1)
            //            Send DoProcess to bpEnCmv2
            //    End
            //    Send beginning_Of_Data to Cmoves_ True
            //End_Procedure // OnClick
            
            
            
            //AB-StoreEnd

        End_Object    // Button2

        Object Cmoves_ is a dbGrid
            Set Main_File to Cmoves.File_Number
            Set Size to 120 478
            Set Location to 105 11
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Cmoves.Client_id
                Entry_Item Cmoves.Ctypkin_code
                Entry_Item Cmoves.Cmoves_hmnia
                Entry_Item Cmoves.Partl_recr
                Entry_Item Cmoves.Cmoves_axia
                Entry_Item Cmoves.Cmoves_x0
            End_Row

            Set Form_Width    item 0 to 84
            Set Header_Label  item 0 to "Client Id"
            
            Set Form_Width    item 1 to 48
            Set Header_Label  item 1 to "Ctypkin Code"
            
            Set Form_Width    item 2 to 60
            Set Header_Label  item 2 to "Cmoves Hmnia"
            
            Set Form_Width    item 3 to 72
            Set Header_Label  item 3 to "Partl Recr"
            
            Set Form_Width    item 4 to 132
            Set Header_Label  item 4 to "Cmoves Axia"
            
            Set Form_Width    item 5 to 132
            Set Header_Label  item 5 to "Cmoves X0"
            

            //AB-StoreStart
            //-------------------------------------------------------------------
            
            Set child_table_state        to TRUE     // Saves when exit object
            
            // Called when entering the table. Check with the header if it
            // has a valid saved record. If not, disallow entry.
            //
            Function Child_entering returns Integer
              Integer rval
              // Check with header to see if it is saved.
              Delegate Get Save_Header to rval
              function_return rval // if non-zero do not enter
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Cmoves_

        Object Particle_Client_Id is a dbFormSub
            Entry_Item Particle.Client_id
            Set Server to (Particle_DD(self))
            Set Label to "Client Id:"
            Set Size to 13 126
            Set Location to 18 19
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Particle_Client_Id

        Object Particle_Partl_No is a dbFormSub
            Entry_Item Particle.Partl_no
            Set Server to (Particle_DD(self))
            Set Label to "Partl No:"
            Set Size to 13 66
            Set Location to 34 19
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Particle_Partl_No


        //AB-StoreStart
                        
                        
                        
        //AB-StoreEnd

    CD_End_Object    // a1test


    //AB-StoreStart
            
    //AB-StoreEnd

//AB/     End_Object    // prj
