//AB/ Project Unmark
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Unmark"
//AB/         Set ProjectFileName to "Unmark.VW"

// Project Object Structure
//   Unmark is a dbViewSubs
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Unmark


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                        
    Open Particle
    Open ParticlL
    Open Pmoves
    Open PmovesL
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Unmark FOR Unmark

    Object Unmark is a dbViewSubs
        Set Label to "é¢†°Ê çú£ò®°·®†©£ò Ñöö®ò≠È§ ãú´ò©Æû£ò´†©£¶Á èò®ò©´ò´†°È§ (Å„£ò 2)"
        Set Size to 102 362
        Set Location to 6 6

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñßú•ú®öò©Âò"
            Set Size to 14 137
            Set Location to 44 102
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                String  sLabel
                String sUserID
            
                Get Label           to sLabel
                Get fsLoginUserID   to sUserID
            
                Send ChangeAllFileModes DF_Filemode_ReadOnly
                Set_Attribute DF_File_Mode Of Particle.File_Number  to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Pmoves.File_Number    to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of ParticlL.File_Number  to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of PmovesL.File_Number   to DF_Filemode_Default
            
                Clear Pmoves
                Lock
                Move 1 to Pmoves.Pms_Selected
                Find GE Pmoves By Index.11
                While ((Found) And (Pmoves.Pms_Selected=1))
                    Set Label to (Trim(Pmoves.Pms_Recr))
                    //Relate Pmoves
                    Move 0 to Pmoves.Qty_Kinhshs
                    Move 0 to Pmoves.pms_Selected
                    Saverecord Pmoves
                    Clear Pmoves
                    Move 1 To Pmoves.Pms_Selected
                    Find GE Pmoves by Index.11
                Loop
                Clear Particle
                Move 1 To Particle.Partl_Selected
                Find ge Particle by Index.11
                While ((Found=1) and (Particle.Partl_Selected=1))
                    Set Label To (Trim(Particle.Partl_Recr))
                        Move '' To Particle.Partl_Toposf
                        Move  0 To Particle.Partl_Selected
                        Saverecord Particle
                        Clear Particle
                        Move 1 To Particle.Partl_Selected
                        Find GE Particle by Index.11
                Loop
                Unlock
            
                Send ChangeAllFileModes DF_Filemode_Default
            
                Set Label to sLabel
                Send Info_Box 'Ü Ñßú•ú®öò©Âò ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
            End_Procedure // OnClick
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    End_Object    // Unmark


    //AB-StoreStart
                        
                        
    //AB-StoreEnd

//AB/     End_Object    // prj
