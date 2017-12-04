//AB/ Project EnhPumps
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhPumps"
//AB/     Set ProjectFileName to "EnhPumps.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhPumps is a dbViewSubS
//     frmApo is a cSyDateForm
//     frmEos is a cSyDateForm
//     chkPms is a CheckBoxSub
//     chkPumps is a CheckBoxSub
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object chkPms
Register_Object chkPumps
Register_Object EnhPumps
Register_Object frmApo
Register_Object frmEos


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open Pmoves
Open Pumps


//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use cSyDateForm.Pkg
Use Chkbox.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhPumps FOR ;
;
Object EnhPumps is a dbViewSubS

    //AB-StoreTopStart

    //AB-StoreTopEnd

    Set Label to "„¤£â¨à© €¤«¢ é¤ (˜¨˜©«˜« ¡á ¡˜  ˜© ¡æ ˜¨®œå¦) £œ „¢¢¤ ¡¦çª ®˜¨˜¡«ã¨œª"
    Set Size to 100 479
    Set Location to 7 9

    //AB-DDOStart


    //AB-DDOEnd

    Object frmApo is a cSyDateForm
        Set Label to "€§¦ †£œ¨/¤å˜"
        Set Size to 13 66
        Set Location to 9 142
        Set Label_Col_Offset to 7
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
    End_Object    // frmApo

    Object frmEos is a cSyDateForm
        Set Label to "„àª †£œ¨/¤å˜"
        Set Size to 13 66
        Set Location to 9 267
        Set Label_Col_Offset to 7
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
    End_Object    // frmEos

    Object chkPms is a CheckBoxSub
        Set Label to "‰ ¤ã©œ ª"
        Set Size to 10 41
        Set Location to 33 217
        Set Checked_State to TRUE
    End_Object    // chkPms

    Object chkPumps is a CheckBoxSub
        Set Label to "€¤«¢åœª"
        Set Size to 10 42
        Set Location to 46 216
        Set Checked_State to TRUE
    End_Object    // chkPumps

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Size to 14 191
        Set Location to 66 142

        //AB-StoreStart

        Set Label to '„¤£œ¨à©'

        Procedure OnClick
            String  sLabel sGreek sEnglish sLetter sMess sPump
            Integer iMet iMet2 iInt iPos iFound iFS iPms iPump chk1 chk2
            Date    dApo dEos
            Get Label to sLabel
            Get Checked_State Of ChkPms     to chk1
            Get Checked_State Of ChkPumps   to chk2

            File_Size Pmoves to iFS
            Get Value Of frmApo Item 0 to dApo
            Get Value Of frmEos Item 0 to dEos
            If (dEos='') Move '31/12/2100' to dEos

            Move 'ABCDEFGHIJKLMNOPRSTUVWXYZ' to sEnglish
            Move '€–ƒ„”‚†ˆ‰Š‹Œ‘’‡—‘•“…' to sGreek

            Move 0 to iMet
            Move 0 to iMet2
            Move 0 to iPms
            Move 0 to iPump
            Move '' to sMess

            If (chk1) Begin
                Clear Pmoves
                Move dApo to Pmoves.Partl_Hmnia
                Find Gt Pmoves By Index.9
                While ((Found=1) And (Pmoves.Partl_Hmnia<=dEos))
                    Reread Pmoves
                    Add 1 to iMet2
                    Move 0 to iFound
                    Set Label to ('Pmoves '+String(iMet2)+'/'+String(iFS))
                    For iInt From 1 to (Length(Pmoves.Pump_ID))
                        Move (Mid(Pmoves.Pump_ID,1,iInt)) to sLetter
                        If (sEnglish Contains sLetter) Begin
                            Move 1 to iFound
                            Move (Pos(sLetter,sEnglish)) to iPos
                            Move (Replaces(sLetter,Pmoves.Pump_ID,(Mid(sGreek,1,iPos)))) to Pmoves.Pump_ID
                        End
                    Loop
                    If (iFound) Begin
                        Add 1 to iPms
                        Saverecord Pmoves
                    End

                    Unlock

                    Find Gt Pmoves By Index.9
                Loop
            End

            If (chk2) Begin
                File_Size Pumps to iFS
                Move 0 to iMet
                Move 0 to iMet2

                Clear Pumps
                Find Gt Pumps.recnum
                While (Found)
                    Reread Pumps
                    Add 1 to iMet2
                    Move 0 to iFound
                    Set Label to ('Pumps '+String(iMet2)+'/'+String(iFS))
                    Move Pumps.Pump_ID to sPump
                    For iInt From 1 to (Length(Pumps.Pump_ID))
                        Move (Mid(Pumps.Pump_ID,1,iInt)) to sLetter
                        If (sEnglish Contains sLetter) Begin
                            Move 1 to iFound
                            Move (Pos(sLetter,sEnglish)) to iPos
                            Move (Replaces(sLetter,Pumps.Pump_ID,(Mid(sGreek,1,iPos)))) to Pumps.Pump_ID
                            //Showln 'Recnum=' Pumps.Recnum '   Arxiko ID=' sPump '  Gramma skarto=' sLetter '  Thesh=' iInt '  Antikatastash me=' (Mid(sGreek,1,iPos)) '   Etairia=' Pumps.Pump_Company '     ' Pumps.Pump_ID
                        End
                    Loop
                    If (iFound) Begin
                        Add 1 to iPump
                        Saverecord Pumps
                    End
                    Unlock
                    Find Gt Pumps.recnum
                Loop
            End

            If ((iPump>0) Or (iPms>0)) Begin
                Append sMess '¨âŸ¡˜¤ ' (String(iPms)) ' ¡ ¤ã©œ ª §˜¨˜©«˜« ¡é¤ £œ ¢áŸ¦ª ˜¤«¢å˜\n'
                Append sMess '¡˜  ' (String(iPump)) ' ¢˜¤Ÿ˜©£â¤œª œšš¨˜­âª ˜¤«¢ é¤'
                Send Info_Box sMess
            End
            Else Begin
                Send Info_Box '† › ˜› ¡˜©å˜ «œ¢œåà©œ ®à¨åª ¤˜ ™¨œŸ¦ç¤ §¨¦™¢ã£˜«˜' '¢¨¦­¦¨å˜'
            End

            Set Label to sLabel
        End_Procedure // OnClick








        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart

    //AB-StoreEnd

CD_End_Object    // EnhPumps


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
