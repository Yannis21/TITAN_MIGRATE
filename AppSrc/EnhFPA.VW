//AB/ Project EnhFPA
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhFPA"
//AB/         Set ProjectFileName to "EnhFPA.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhFPA is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhFPA


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnhFPA FOR ;
    ;
    Object EnhFPA is a dbViewSubS

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "Ñßò§òõû£†¶¨®öÂò PartlFpa °ò† ëÁ§¶¢ò îèÄ ©´¶ ßò®ò©´ò´†°Ê"
        Set Size to 89 479
        Set Location to 7 9

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 463
            Set Location to 39 6

            //AB-StoreStart

            Set Label to 'Ñ§û£ú®‡©û'

            Procedure Calc_Particle String asRecr Number anFpaOnTotal

            End_procedure

            Procedure OnClick
                String  sLabel sLast
                Number  nFpaOnTotal
                Integer iMet iMet2 iFs
                Get Label to sLabel
                Move '' to sLast

                Open Particle
                Open Partlfpa
                Open Pmoves
                Open Sysfile

                File_Size Particle to iFS
                Move 0 to iMet


                // 1. Diavazoume ola ta particle
                Clear Particle
                Find Gt Particle.Recnum
                While (Found)
                    Add 1 to iMet
                    Set Label to ('Particle  ' + String(iMet)+'/'+String(iFs))
                    Move 0 to nFpaOnTotal
                    // Prospername ta particle me thetiko arithmo
                    // (Ektypomena + DA apo Betolink)
                    If (Particle.Partl_No<0) Begin

                        // 2. Diagrafoume Ola ta partlfpa aytou tou particle
                        Clear PartlFpa
                        Move Particle.Partl_Recr to PartlFpa.Partl_Recr
                        Find Gt PartlFpa By Index.1
                        While ((Found) And (PartlFpa.Partl_Recr=Particle.Partl_Recr))
                            Set Label to ('Particle  ' + String(iMet)+'/'+String(iFs) + '    É†òö®ò≠„ PartlFpa ')
                            Delete PartlFpa
                            Find Gt PartlFpa By Index.1
                        Loop

                        // 3. Xanaftiaxnoume ta partlfpa aytou tou particle
                        Clear Pmoves
                        Move Particle.Partl_Recr to Pmoves.Partl_Recr
                        Find Gt Pmoves By Index.3
                        While ((Found=1) And (Pmoves.Partl_Recr=Particle.Partl_Recr))
                            Set Label to ('Particle  ' + String(iMet)+'/'+String(iFs)+'   Ypologismos Pmoves '+Pmoves.Pms_Recr)
                            
                            Clear PartlFpa
                            Move Pmoves.Partl_Recr          to PartlFpa.Partl_Recr
                            Move Fpa.Fpa_Pososto            to PartlFpa.Fpa_Pososto
                            Find eq PartlFpa By Index.1 // PartlFpa:Index.1:Partl_Recr+Fpa_Pososto
                            If (Found) Reread PartlFpa
                            Add Pmoves.Pms_Vatam            to PartlFpa.PartlFpa_Poso
                            Add Pmoves.Pms_Amaftdisc        to PartlFpa.Poso_Pro_Fpa
                            Saverecord PartlFpa
                            Unlock
                            
                            
                            Find Gt Pmoves By Index.3
                        Loop


        Add Pmoves.Pms_Ambd                                 to Particle.Partl_TotAmBD
        Add Pmoves.Pms_DiscAm                               to Particle.Partl_AMDISCPMS
        Add Pmoves.Pms_Amaftdisc                            to Particle.Partl_TotAmAd
        Add 1                                               to Particle.Partl_NoOfLines




                        // 4. Epanaypologizoume sto telos ton pmoves aytou tou particle
                        //    ta posa fpa tou kathe partlfpa record (ana % FPA)
                        //    gia ola ta kathara posa pou mazepse apo ta pmoves
                        Move 0 to nFpaOnTotal

                        Clear PartlFpa
                        Move Particle.Partl_Recr to PartlFpa.Partl_Recr
                        Find Gt PartlFpa By Index.1
                        While ((Found) And (PartlFpa.Partl_Recr=Particle.Partl_Recr))
                            Set Label to ('Particle  ' + String(iMet)+'/'+String(iFs)+'   Ypologismos PartlFpa  '+String(PartlFpa.Fpa_Pososto))
                            Reread PartlFpa
                            Move (Round_Number(((PartlFpa.Poso_Pro_Fpa*PartlFpa.Fpa_Pososto)/100),2)) ;
                                                                            to PartlFpa.POSO_FPA
                            Move (PartlFpa.Poso_Pro_Fpa+PartlFpa.POSO_FPA)  to PartlFpa.POSO_ME_FPA
                            Saverecord PartlFpa
                            Unlock
                            Add PartlFpa.POSO_FPA to nFpaOnTotal
                            Find Gt PartlFpa By Index.1
                        Loop


                        // 5. Enhmeronoume to particle sto neo pedio sygkentrotikou FPA
                        //    kai epanaypologizoume to teliko poso
                        Reread Particle
                        Move nFpaOnTotal to Particle.Fpa_On_Total
                        reread sysfile
                        unlock

                        
                        
                    ////////////////////////////////////////////////////////////////////////
                    // SOS js 11/04/2011 Gia Titana Patras pou timologei 
                    // ena pelath sygkentrotika 1 fora ton mhna kai prepei to fpa na ypologizetai sto synolo
                    ////////////////////////////////////////////////////////////////////////
                    If (particle.partl_euro=1) Begin
                            Move (Particle.Fpa_On_Total-Particle.Disc_Vat_Poso+Particle.Partl_ExtraVat) ;
                                to Particle.Total_Vat_Poso
                    End
                    Else Begin
                        If (Sysfile.Fpa_On_Total=0) Begin
                            Move (Particle.Partl_Vatam-Particle.Disc_Vat_Poso+Particle.Partl_ExtraVat) ;
                                to Particle.Total_Vat_Poso
                        End
                        Else Begin
                            If (Particle.Fpa_On_Total<>0) ;
                                Move (Particle.Fpa_On_Total-Particle.Disc_Vat_Poso+Particle.Partl_ExtraVat) ;
                                    to Particle.Total_Vat_Poso
                            Else ;
                                Move (Particle.Partl_Vatam-Particle.Disc_Vat_Poso+Particle.Partl_ExtraVat) ;
                                    to Particle.Total_Vat_Poso
                        End
                    End
                        
                        
                        Move (Particle.Partl_GenAm+Particle.Total_Vat_Poso) to Particle.Partl_PayAm
                        Saverecord Particle
                        Unlock
                    End
                    Find Gt Particle.Recnum
                Loop

                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick

            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart

        //AB-StoreEnd

    CD_End_Object    // EnhFPA

//AB/     End_Object    // prj
