//AB/ Project vwParameters2
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vwParameters2"
//AB/         Set ProjectFileName to "vwParameters2.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwParameters2 is a dbViewSub
//     chkLengthOverEight is a CheckBoxSub
//     chk3Consecutive is a CheckBoxSub
//     chkAtLeast1Upper is a CheckBoxSub
//     chkAtLeast1Lower is a CheckBoxSub
//     chkAtLeast1Number is a CheckBoxSub
//     chkAtLeast1Special is a CheckBoxSub
//     chkNoGreek is a CheckBoxSub
//     chkSeiriakous is a CheckBoxSub
//     chkBlanks is a CheckBoxSub
//     txtDays is a TextBoxSub
//     txtAttempts is a TextBoxSub
//     frmAttempts is a FormSub
//     frmChangePasswordEveryDays is a FormSub
//     TextBoxSub23 is a TextBoxSub
//     TextBoxSub24 is a TextBoxSub
//     TextBoxSub25 is a TextBoxSub
//     TextBoxSub26 is a TextBoxSub
//     TextBoxSub27 is a TextBoxSub
//     TextBoxSub28 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
//     TextBoxSub31 is a TextBoxSub
//     TextBoxSub32 is a TextBoxSub
//     TextBoxSub33 is a TextBoxSub
//     TextBoxSub34 is a TextBoxSub

// Register all objects
Register_Object chk3Consecutive
Register_Object chkAtLeast1Lower
Register_Object chkAtLeast1Number
Register_Object chkAtLeast1Special
Register_Object chkAtLeast1Upper
Register_Object chkBlanks
Register_Object chkLengthOverEight
Register_Object chkNoGreek
Register_Object chkSeiriakous
Register_Object frmAttempts
Register_Object frmChangePasswordEveryDays
Register_Object TextBoxSub23
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub28
Register_Object TextBoxSub29
Register_Object TextBoxSub30
Register_Object TextBoxSub31
Register_Object TextBoxSub32
Register_Object TextBoxSub33
Register_Object TextBoxSub34
Register_Object txtAttempts
Register_Object txtDays
Register_Object vwParameters2


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    Open Sysrec

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Chkbox.Sub
    Use Txtbox.Sub
    Use Form.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vwParameters2 FOR vwParameters2

    Object vwParameters2 is a dbViewSub

        //AB-StoreTopStart

        //Property Integer piMustRestart  Public 0
        //Property String  psMyStr        Public ""
        //Property String  psInitial      Public "sbno125olkM]RtY"

        //Object oCrypt is a dbOLEChilkatCrypt2
        //End_Object

        //Function HasOneCap string asPassw Integer aiGreek Returns Integer
        //    Integer rVal
        //    Integer iLength x
        //    String  sChar
        //    Move (Length(asPassw))  to iLength
        //    Move 0                  to rVal
        //    For x From 1 to iLength
        //        Move (Mid(asPassw,1,x)) to sChar
        //        If (aiGreek=0) Begin
        //            If ( ;
        //                 ( (Ascii(sChar)>=65 ) And (Ascii(sChar)<= 90)) Or  ;
        //                 ( (Ascii(ToAnsi(sChar))>=193) And (Ascii(ToAnsi(sChar))<=219))  ;
        //               ) Begin
        //                Move 1      to rVal
        //                Move 9999   to x
        //            End
        //        End
        //        Else Begin
        //            If ( (Ascii(sChar)>=65) And (Ascii(sChar)<=90) ) Begin
        //                Move 1      to rVal
        //                Move 9999   to x
        //            End
        //        End
        //    Loop
        //    Function_Return rVal
        //End_Function

        //Function HasOneSmall string asPassw Integer aiGreek Returns Integer
        //    Integer rVal
        //    Integer iLength x
        //    String  sChar
        //    Move (Length(asPassw))  to iLength
        //    Move 0                  to rVal
        //    For x From 1 to iLength
        //        Move (Mid(asPassw,1,x)) to sChar
        //        If (aiGreek=0) Begin
        //            If ( ;
        //                 ( (Ascii(sChar)>= 97) And (Ascii(sChar)<=122)) Or ;
        //                 ( (Ascii(ToAnsi(sChar))>=220) And (Ascii(ToAnsi(sChar))<=254))    ;
        //               ) Begin
        //                Move 1      to rVal
        //                Move 9999   to x
        //            End
        //        End
        //        Else Begin
        //            If ( (Ascii(sChar)>=97) And (Ascii(sChar)<=122)) Begin
        //                Move 1      to rVal
        //                Move 9999   to x
        //            End
        //        End
        //    Loop
        //    Function_Return rVal
        //End_Function

        //Function HasOneNumber string asPassw Returns Integer
        //    Integer rVal
        //    Integer iLength x
        //    String  sChar
        //    Move (Length(asPassw))  to iLength
        //    Move 0                  to rVal
        //    For x From 1 to iLength
        //        Move (Mid(asPassw,1,x)) to sChar
        //        If ( (Ascii(sChar)>=48) And (Ascii(sChar)<=57)) Begin
        //            Move 1      to rVal
        //            Move 9999   to x
        //        End
        //    Loop
        //    Function_Return rVal
        //End_Function

        //Function HasOneSpecial string asPassw Returns Integer
        //    Integer rVal
        //    Integer iLength x
        //    String  sChar
        //    Move (Length(asPassw))  to iLength
        //    Move 0                  to rVal
        //    For x From 1 to iLength
        //        Move (Mid(asPassw,1,x)) to sChar
        //        If ( ;
        //             ( (Ascii(sChar)>=33) And (Ascii(sChar)<=47)) Or ;
        //             ( (Ascii(sChar)>=58) And (Ascii(sChar)<=64)) Or ;
        //             ( (Ascii(sChar)>=91) And (Ascii(sChar)<=96))    ;
        //           ) Begin
        //            Move 1      to rVal
        //            Move 9999   to x
        //        End

        //    Loop
        //    Function_Return rVal
        //End_Function

        //Function HasOneGreek string asPassw Returns Integer
        //    Integer rVal
        //    Integer iLength x
        //    String  sChar
        //    Move (Length(asPassw))  to iLength
        //    Move 0                  to rVal
        //    For x From 1 to iLength
        //        Move (Mid(asPassw,1,x)) to sChar
        //        If ( ;
        //             ((Ascii(ToAnsi(sChar))>=193) And (Ascii(ToAnsi(sChar))<=219)) Or ;
        //             ((Ascii(ToAnsi(sChar))>=220) And (Ascii(ToAnsi(sChar))<=254))    ;
        //           ) Begin
        //            Move 1      to rVal
        //            Move 9999   to x
        //            Set psMyStr to sChar
        //        End
        //    Loop
        //    Function_Return rVal
        //End_Function

        //Function HasDuplicates String asPassw Returns Integer
        //    Integer iLength x
        //    String  s1 s2
        //    Move (Length(asPassw)) to iLength
        //    If (iLength > 2) Begin
        //        For x From 1 to iLength
        //            Move (Mid(asPassw, 1, x  )) to s1
        //            If ((x+1)<=iLength) ;
        //                Move (Mid(asPassw, 1, x+1)) to s2
        //            Else Function_Return 0
        //            If (s1=s2) Begin
        //                Set psMyStr to (s1+s2)
        //                Function_Return 1
        //            End
        //        Loop
        //    End
        //    Function_Return 0
        //End_Function

        //Function HasInRow string asPassw Integer aiGreek Returns Integer
        //    Integer rVal iNum
        //    Integer iLength x
        //    String  sChar  sChar2  sChar3  sSet1  sSet2
        //    String  ssChar ssChar2 ssChar3 ssSet1 ssSet2
        //    String  s1 s2 s3 s4 s5

        //    Move (Length(asPassw))  to iLength
        //    Move 0                  to rVal

        //    Set psMyStr to ""

        //    For x From 1 to iLength
        //        Move 0 to iNum
        //        // Keep 3 consecutive characters
        //        Move (Mid(asPassw,1,x))                         to sChar
        //        If ((x+1)<=iLength) Move (Mid(asPassw,1,x+1))   to sChar2
        //        Else                Move 1                      to iNum
        //        If ((x+2)<=iLength) Move (Mid(asPassw,1,x+2))   to sChar3
        //        Else                Move 1                      to iNum

        //        If (iNum=0) Begin
        //            // check if same type of character (Numbers)
        //            If ( ((Ascii(sChar )>=48) And (Ascii(sChar )<=57)) And ;
        //                 ((Ascii(sChar2)>=48) And (Ascii(sChar2)<=57)) And ;
        //                 ((Ascii(sChar3)>=48) And (Ascii(sChar3)<=57))     ;
        //               ) Begin
        //                If (    ((Integer(sChar3)-Integer(sChar2))=1) And ;
        //                        ((Integer(sChar2)-Integer(sChar ))=1)     ;
        //                   ) Begin
        //                   Move 1       to rVal
        //                   Move 9999    to x
        //                   Set psMyStr to (sChar+sChar2+sChar3)

        //                End
        //                Else If (    ((Integer(sChar2)-Integer(sChar3))=1) And ;
        //                             ((Integer(sChar )-Integer(sChar2))=1)     ;
        //                        ) Begin
        //                   Move 1       to rVal
        //                   Move 9999    to x
        //                   Set psMyStr to (sChar+sChar2+sChar3)
        //                End
        //            End
        //            // check if same type of character (Capital Letters)
        //            Else Begin
        //                Move "ABCDEFGHIJKLMNOPQRSTUVWXYZ"   to s1
        //                Move "QWERTYUIOPASDFGHJKLZXCVBNM"   to s2
        //                //Move "€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—"     to s3
        //                //Move "˜™š›œžŸ ¡¢£¤¥¦§¨©«¬­®¯à"     to s4
        //                Move (UpperCase(sChar ))        to ssChar
        //                Move (UpperCase(sChar2))        to ssChar2
        //                Move (UpperCase(sChar3))        to ssChar3
        //                Move (sChar +sChar2+sChar3)     to sSet1
        //                Move (sChar3+sChar2+sChar )     to sSet2
        //                Move (ssChar +ssChar2+ssChar3)  to ssSet1
        //                Move (ssChar3+ssChar2+ssChar )  to ssSet2

        //                If ( ((Ascii(ssChar )>=65) And (Ascii(ssChar )<=90)) And ;
        //                     ((Ascii(ssChar2)>=65) And (Ascii(ssChar2)<=90)) And ;
        //                     ((Ascii(ssChar3)>=65) And (Ascii(ssChar2)<=90))     ;
        //                   ) Begin
        //                    If ( (Pos(ssSet1,s1)>0) Or (Pos(ssSet2,s1)>0) Or ;
        //                         (Pos(ssSet1,s2)>0) Or (Pos(ssSet2,s2)>0)  ) Begin
        //                        Move 1      to rVal
        //                        Move 9999   to x
        //                        //     If ( (Pos(ssSet1,s1)>0) Or (Pos(ssSet1,s2)>0) ) Set psMyStr to sSet1
        //                        //Else If ( (Pos(ssSet2,s1)>0) Or (Pos(ssSet2,s2)>0) ) Set psMyStr to sSet1
        //                        Set psMyStr to sSet1
        //                    End
        //                End
        //            End
        //        End
        //    Loop
        //    Function_Return rVal
        //End_Function


        //Function HasPasswordProblems string asPassw Integer i8Char    Integer i2Same  Integer iOneCap ;
        //                                            Integer iOneSmall Integer iOneNum Integer iOneSpe ;
        //                                            Integer iGreek    Integer iSeira  Integer iBlanks Returns Integer
        //    Integer iHasProblems
        //    Move 0 to iHasProblems

        //         If ((i8Char   =1) And (Length(asPassw)<8))                     Move 1 to iHasProblems
        //    Else If ((i2Same   =1) And (HasDuplicates (Self,asPassw       )=1)) Move 2 to iHasProblems
        //    Else If ((iGreek   =1) And (HasOneGreek   (Self,asPassw       )=1)) Move 7 to iHasProblems
        //    Else If ((iBlanks  =1) And (Pos(" ",asPassw)>0))                    Move 9 to iHasProblems
        //    Else If ((iOneCap  =1) And (HasOneCap     (Self,asPassw,iGreek)=0)) Move 3 to iHasProblems
        //    Else If ((iOneSmall=1) And (HasOneSmall   (Self,asPassw,iGreek)=0)) Move 4 to iHasProblems
        //    Else If ((iOneNum  =1) And (HasOneNumber  (Self,asPassw       )=0)) Move 5 to iHasProblems
        //    Else If ((iOneSpe  =1) And (HasOneSpecial (Self,asPassw       )=0)) Move 6 to iHasProblems
        //    Else If ((iSeira   =1) And (HasInRow      (Self,asPassw,iGreek)=1)) Move 8 to iHasProblems

        //    Function_Return iHasProblems
        //End_Function

        //AB-StoreTopEnd

        Set Label to "¦¢ « ¡ã €©­˜¢œå˜ª š ˜ «¦¬ª ‰à› ¡¦çª •¨ž©«é¤"
        Set Size to 172 413
        Set Location to 5 5

        //AB-DDOStart


        //AB-DDOEnd

        Object chkLengthOverEight is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ â®œ  £ã¡¦ª ˜§¦ 8 ¡˜  §á¤à ®˜¨˜¡«ã¨œª"
            Set Size to 10 239
            Set Location to 10 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                       To isChecked
                Move (GetTheAppPath(Self))                              To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_LengthOverEight" To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkLengthOverEight

        Object chk3Consecutive is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ £ž¤ œ§˜¤˜¢˜£™á¤œ«˜  â¤˜ª ®˜¨˜¡«ã¨˜ª 2 ©¬¤œ®æ£œ¤œª ­¦¨âª"
            Set Size to 10 239
            Set Location to 24 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_3Consecutive"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chk3Consecutive

        Object chkAtLeast1Upper is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª ¡œ­˜¢˜å¦ª ®˜¨˜¡«ã¨˜ª"
            Set Size to 10 201
            Set Location to 38 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_AtLeast1Upper"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkAtLeast1Upper

        Object chkAtLeast1Lower is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª §œæª ®˜¨˜¡«ã¨˜ª"
            Set Size to 10 239
            Set Location to 50 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_AtLeast1Lower"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkAtLeast1Lower

        Object chkAtLeast1Number is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª ˜¨ Ÿ£æª"
            Set Size to 10 148
            Set Location to 65 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_AtLeast1Number"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkAtLeast1Number

        Object chkAtLeast1Special is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª œ › ¡æª ®˜¨˜¡«ã¨˜ª"
            Set Size to 10 187
            Set Location to 78 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_AtLeast1Special"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkAtLeast1Special

        Object chkNoGreek is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ £ž¤ ®¨ž© £¦§¦ ¦ç¤«˜  „¢¢ž¤ ¡¦å ®˜¨˜¡«ã¨œª"
            Set Size to 10 239
            Set Location to 87 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Set Visible_State to False
            Set Enabled_State to False

            // Hard Coded No Greek characters
            Set Checked_State to True




            //AB-StoreEnd

        End_Object    // chkNoGreek

        Object chkSeiriakous is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ £ž¤ œ§ «â§¦¤«˜  §á¤à ˜§¦ 2 ©¬¤œ®æ£œ¤¦¬ª ©œ ©œ ¨á ®˜¨˜¡«ã¨œª"
            Set Size to 10 247
            Set Location to 91 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_Seiriakous"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkSeiriakous

        Object chkBlanks is a CheckBoxSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Œ˜ £ž¤ œ§ «¨â§¦¤«˜  ¡œ¤á"
            Set Size to 10 111
            Set Location to 104 15
            Set Checked_State to TRUE

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Checked_State                                   To isChecked
                Move (GetTheAppPath(Self))                          To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_Blanks"          To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // chkBlanks

        Object txtDays is a TextBoxSub
            Set Label to "Œ˜ ˜¢¢áœ  ¦ ‰à› ¡æª ¡áŸœ ®® £â¨œª (0=ƒœ¤ œ¢âš®œ«˜ )"
            Set Location to 122 27
            Set Size to 10 184
            Set TypeFace to "MS Sans Serif"
        End_Object    // txtDays

        Object txtAttempts is a TextBoxSub
            Set Label to "‹âš ©«œª „§ «¨œ§«âª ¨¦©§áŸœ œª „ ©æ›¦¬"
            Set Location to 135 27
            Set Size to 10 151
            Set TypeFace to "MS Sans Serif"
        End_Object    // txtAttempts

        Object frmAttempts is a FormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Size to 13 17
            Set Location to 134 7
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "3"

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Value Item 0 to isChecked
                Move (GetTheAppPath(Self))                            To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_MaxTries"      To isChecked
            End_Procedure



            //AB-StoreEnd

        End_Object    // frmAttempts

        Object frmChangePasswordEveryDays is a FormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Size to 13 17
            Set Location to 121 7
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "30"

            //AB-StoreStart

            Procedure OnChange
                Integer isChecked
                String lsTheAppPath
                Get Value Item 0 to isChecked
                Move (GetTheAppPath(Self))                              To lsTheAppPath
                Set_Profile_String lsTheAppPath "Passw_DaysChange"      To isChecked
            End_Procedure




            //AB-StoreEnd

        End_Object    // frmChangePasswordEveryDays

        Object TextBoxSub23 is a TextBoxSub
            Set Label to "________________________"
            Set Location to 89 264
            Set Size to 10 32
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub23

        Object TextBoxSub24 is a TextBoxSub
            Set Label to "_________________________"
            Set Location to 75 201
            Set Size to 10 94
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub24

        Object TextBoxSub25 is a TextBoxSub
            Set Label to "_________________________________"
            Set Location to 62 165
            Set Size to 10 129
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub25

        Object TextBoxSub26 is a TextBoxSub
            Set Label to "____________________________"
            Set Location to 49 198
            Set Size to 10 97
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub26

        Object TextBoxSub27 is a TextBoxSub
            Set Label to "_______________________________________________"
            Set Location to 36 212
            Set Size to 10 82
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub27

        Object TextBoxSub28 is a TextBoxSub
            Set Label to "______________"
            Set Location to 22 255
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub28

        Object TextBoxSub29 is a TextBoxSub
            Set Label to "(˜˜, LL, 44...)"
            Set Location to 23 301
            Set Size to 10 63
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub29

        Object TextBoxSub30 is a TextBoxSub
            Set Label to "(AB...YZ)"
            Set Location to 37 301
            Set Size to 10 41
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub30

        Object TextBoxSub31 is a TextBoxSub
            Set Label to "(ab...yz)"
            Set Location to 50 301
            Set Size to 10 28
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub31

        Object TextBoxSub32 is a TextBoxSub
            Set Label to "(1234567890)"
            Set Location to 63 301
            Set Size to 10 73
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub32

        Object TextBoxSub33 is a TextBoxSub
            Set Label to "(!@#$%^&/*)(_\=+-><|)"
            Set Location to 76 301
            Set Size to 10 75
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub33

        Object TextBoxSub34 is a TextBoxSub
            Set Label to "(123...876...efg....MLK)"
            Set Location to 91 301
            Set Size to 10 78
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub34


        //AB-StoreStart

        Procedure Activate_View Returns Integer
            Integer rVal bState i1 i2 i3 i4 i5 i6 i7 i8 i9 iDays iMax

            String  lsTheAppPath
            Forward Get Msg_Activate_View                           To rVal

            Reread Sysrec
            Unlock

            Move Sysrec.LIBCAST_CODE    to i1
            Move Sysrec.AWARD_CODE      to i2
            Move Sysrec.GIVAWRD_CODE    to i3
            Move Sysrec.MOVIE_LNK_CODE  to i4
            Move Sysrec.CAST_LNK_CODE   to i5
            Move Sysrec.AWARDTP_CODE    to i6
            Move Sysrec.FESTIVAL_CODE   to i7 // No Greek characters Hard Coded to 1
            Move Sysrec.STWHAT_CODE     to i8
            Move Sysrec.SNWHAT_CODE     to i9
            Move Sysrec.LIBVIS_CODE     to iDays
            Move Sysrec.TIKANEI_CODE    to iMax

            Set Checked_State Of (chkLengthOverEight(Self))         To i1
            Set Checked_State Of (chk3Consecutive(Self))            To i2
            Set Checked_State Of (chkAtLeast1Upper(Self))           To i3
            Set Checked_State Of (chkAtLeast1Lower(Self))           To i4
            Set Checked_State Of (chkAtLeast1Number(Self))          To i5
            Set Checked_State Of (chkAtLeast1Special(Self))         To i6
            Set Checked_State Of (ChkNoGreek(Self))                 To i7
            Set Checked_State Of (chkSeiriakous(Self))              To i8
            Set Checked_State Of (chkBlanks(Self))                  To i9
            Set Value Of frmChangePasswordEveryDays Item 0          to iDays
            Set Value Of frmAttempts                Item 0          to iMax

        //    Move (GetTheAppPath(Self))                              To lsTheAppPath
        //    Get_Profile_String lsTheAppPath "Passw_LengthOverEight" To bState
        //    Set Checked_State Of (chkLengthOverEight(Self))         To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_3Consecutive"    To bState
        //    Set Checked_State Of (chk3Consecutive(Self))            To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Upper"   To bState
        //    Set Checked_State Of (chkAtLeast1Upper(Self))           To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Lower"   To bState
        //    Set Checked_State Of (chkAtLeast1Lower(Self))           To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Number"  To bState
        //    Set Checked_State Of (chkAtLeast1Number(Self))          To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Special" To bState
        //    Set Checked_State Of (chkAtLeast1Special(Self))         To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_Seiriakous"      To bState
        //    Set Checked_State Of (chkSeiriakous(Self))              To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_Blanks"          To bState
        //    Set Checked_State Of (chkBlanks(Self))                  To (If((bState),1,0))

        //    Get_Profile_String lsTheAppPath "Passw_DaysChange"      To bState
        //    Set Value Of frmChangePasswordEveryDays Item 0          to bState

        //    Get_Profile_String lsTheAppPath "Passw_MaxTries"        To bState
        //    Set Value Of frmAttempts Item 0                         to bState

            Procedure_Return rVal
        End_Procedure


        Procedure Request_Cancel
            Integer rVal bState
            String  lsTheAppPath
            Integer i1 i2 i3 i4 i5 i6 i7 i8 i9 iDays iMax

            Get Checked_State Of (chkLengthOverEight(Self))         To i1
            Get Checked_State Of (chk3Consecutive(Self))            To i2
            Get Checked_State Of (chkAtLeast1Upper(Self))           To i3
            Get Checked_State Of (chkAtLeast1Lower(Self))           To i4
            Get Checked_State Of (chkAtLeast1Number(Self))          To i5
            Get Checked_State Of (chkAtLeast1Special(Self))         To i6
            Get Checked_State Of (chkNoGreek(Self))                 To i7
            Get Checked_State Of (chkSeiriakous(Self))              To i8
            Get Checked_State Of (chkBlanks(Self))                  To i9
            Get Value Of frmChangePasswordEveryDays Item 0          to iDays
            Get Value Of frmAttempts                Item 0          to iMax

            Reread Sysrec
            Move i1     to Sysrec.LIBCAST_CODE
            Move i2     to Sysrec.AWARD_CODE
            Move i3     to Sysrec.GIVAWRD_CODE
            Move i4     to Sysrec.MOVIE_LNK_CODE
            Move i5     to Sysrec.CAST_LNK_CODE
            Move i6     to Sysrec.AWARDTP_CODE
            Move i7     to Sysrec.FESTIVAL_CODE
            Move i8     to Sysrec.STWHAT_CODE
            Move i9     to Sysrec.SNWHAT_CODE
            Move iDays  to Sysrec.LIBVIS_CODE
            Move iMax   to Sysrec.TIKANEI_CODE
            Saverecord Sysrec
            Unlock

            Forward Send Request_Cancel
        End_Procedure


        Procedure Close_Panel
            Integer rVal bState
            String  lsTheAppPath
            Integer i1 i2 i3 i4 i5 i6 i7 i8 i9 iDays iMax
            Get Checked_State Of (chkLengthOverEight(Self))         To i1
            Get Checked_State Of (chk3Consecutive(Self))            To i2
            Get Checked_State Of (chkAtLeast1Upper(Self))           To i3
            Get Checked_State Of (chkAtLeast1Lower(Self))           To i4
            Get Checked_State Of (chkAtLeast1Number(Self))          To i5
            Get Checked_State Of (chkAtLeast1Special(Self))         To i6
            Get Checked_State Of (chkNoGreek(Self))                 To i7
            Get Checked_State Of (chkSeiriakous(Self))              To i8
            Get Checked_State Of (chkBlanks(Self))                  To i9
            Get Value Of frmChangePasswordEveryDays Item 0          to iDays
            Get Value Of frmAttempts                Item 0          to iMax

            Reread Sysrec
            Move i1     to Sysrec.LIBCAST_CODE
            Move i2     to Sysrec.AWARD_CODE
            Move i3     to Sysrec.GIVAWRD_CODE
            Move i4     to Sysrec.MOVIE_LNK_CODE
            Move i5     to Sysrec.CAST_LNK_CODE
            Move i6     to Sysrec.AWARDTP_CODE
            Move i7     to Sysrec.FESTIVAL_CODE
            Move i8     to Sysrec.STWHAT_CODE
            Move i9     to Sysrec.SNWHAT_CODE
            Move iDays  to Sysrec.LIBVIS_CODE
            Move iMax   to Sysrec.TIKANEI_CODE
            Saverecord Sysrec
            Unlock

            Forward Send Close_Panel
        End_Procedure



        //AB-StoreEnd

    End_Object    // vwParameters2


    //AB-StoreStart







    //AB-StoreEnd

//AB/     End_Object    // prj
