//AB/ Project EnhWcmv
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhWcmv"
//AB/         Set ProjectFileName to "EnhWcmv.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhWcmv is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhWcmv


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnhWcmv FOR ;
    ;
    Object EnhWcmv is a dbViewSubS

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "¤Ł¨ŕŠ ¨Ž ŚŹ WCmoves   ¤Ś index.5 Particle_recr+Witemx_recr+Wcmove_Recr"
        Set Size to 89 425
        Set Location to 15 13

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
                        
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 39 120

            //AB-StoreStart
                        
            Set Label to '¤Ł¨ŕŠ'
            
            Procedure OnClick
                String  sLabel
                Integer iMet iMet2
                Get Label to sLabel
            
                Open Wcmoves
                Open Pmoves
            
                Move 0 to iMet
                Move 0 to iMet2
            
                Direct_Output Channel 9 'c:\ErrPms.txt'
            
                Clear Wcmoves
                Lock
                Find Gt Wcmoves.recnum
                While (Found)
                    Set Label to (String(Wcmoves.recnum))
                    If (Trim(Wcmoves.Partl_Recr)<>'') Begin
                        Move 1 to iMet2
                        Clear Pmoves
                        // To Wcmoves.Partl_Recr einai to Pmoves Recr
                        Move Wcmoves.Partl_Recr to Pmoves.Pms_Recr
                        Find Eq Pmoves By Index.2 // Pmoves:Index.2:Pms_Recr
                        If (Found) Begin
                            Move Pmoves.Partl_recr  to Wcmoves.Particle_Recr
                            // To Wcmoves.Particle_Recr einai to Particle Recr
                            Saverecord Wcmoves
                        End
                        Else Begin
                            Add 1 to iMet
                            Writeln Channel 9 '¤ ¨âĄ ŠŤŚ ¨Ž Ś Pmoves  §Ś ŤŚ Wcmoves Recr=' Wcmoves.Wcmove_Recr '    ŤŚ Wcmoves.Pms_Recr=' Wcmoves.Partl_Recr
                        End
                    End
                    Find Gt Wcmoves.recnum
                Loop
                Unlock
                Close_Output Channel 9
                If (iMet) Begin
                    Send Info_Box '¨ŚŹŠ áŠŤĄ¤ ˘á ĄŤ Ť¤ §Ľ¨Šĺ' ('¨âĄ¤ '+(String(iMet))+' Š­á˘ŁŤ')
                End
                Else Begin
                    If (iMet2)  Send Info_Box ' ¤Łâ¨ŕŠ Ť˘ĺŕŠ § ŤŹŽéŞ'           '˘¨Ś­Ś¨ĺ'
                    Else        Send Info_Box '¤ ¨âĄ¤ ¨­âŞ §¨ŚŞ §Ľ¨Šĺ'  '˘¨Ś­Ś¨ĺ'
                End
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                        
        //AB-StoreEnd

    CD_End_Object    // EnhWcmv

//AB/     End_Object    // prj
