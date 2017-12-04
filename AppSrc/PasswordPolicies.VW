//AB/ Project PasswordPolicies
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "PasswordPolicies"
//AB/         Set ProjectFileName to "PasswordPolicies.VW"

// Project Object Structure
//   PasswordPolicies is a dbViewSub
//     oCrypt is a dbOLEChilkatCrypt2
//     chkLengthOverEight is a CheckBoxSub
//     chk3Consecutive is a CheckBoxSub
//     chkAtLeast1Upper is a CheckBoxSub
//     chkAtLeast1Lower is a CheckBoxSub
//     chkAtLeast1Number is a CheckBoxSub
//     chkAtLeast1Special is a CheckBoxSub
//     chkNoGreek is a CheckBoxSub
//     chkSeiriakous is a CheckBoxSub
//     frmChangePasswordEveryDays is a FormSub
//     frmAttempts is a FormSub
//     frmTestPassword is a FormSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     txtDays is a TextBoxSub
//     txtAttempts is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TextBoxSub11 is a TextBoxSub
//     TextBoxSub12 is a TextBoxSub
//     TextBoxSub13 is a TextBoxSub
//     TextBoxSub14 is a TextBoxSub
//     TextBoxSub15 is a TextBoxSub
//     ButtonSub5 is a ButtonSub
//     ButtonSub6 is a ButtonSub
//     chkBlanks is a CheckBoxSub

// Register all objects
Register_Object ButtonSub5
Register_Object ButtonSub6
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
Register_Object frmTestPassword
Register_Object oCrypt
Register_Object PasswordPolicies
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object txtAttempts
Register_Object txtDays


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Use FlexOle
    Use ChilkatCrypt
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Chkbox.Sub
    Use Form.Sub
    Use Txtbox.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_PasswordPolicies FOR PasswordPolicies

    Object PasswordPolicies is a dbViewSub

        //AB-StoreTopStart
        Object oCrypt is a dbOLEChilkatCrypt2
        End_Object
        
        Property String psMyStr     Public ""
        Property String psInitial   Public "sbno125olkM]RtY"
        
        Function HasOneCap string asPassw Integer aiGreek Returns Integer
            Integer rVal
            Integer iLength x
            String  sChar
            Move (Length(asPassw))  to iLength
            Move 0                  to rVal
            For x From 1 to iLength
                Move (Mid(asPassw,1,x)) to sChar
                If (aiGreek=0) Begin
                    If ( ;
                         ( (Ascii(sChar)>=65 ) And (Ascii(sChar)<= 90)) Or  ;
                         ( (Ascii(ToAnsi(sChar))>=193) And (Ascii(ToAnsi(sChar))<=219))  ;
                       ) Begin
                        Move 1      to rVal
                        Move 9999   to x
                    End
                End
                Else Begin
                    If ( (Ascii(sChar)>=65) And (Ascii(sChar)<=90) ) Begin
                        Move 1      to rVal
                        Move 9999   to x
                    End
                End
            Loop
            Function_Return rVal
        End_Function
        
        Function HasOneSmall string asPassw Integer aiGreek Returns Integer
            Integer rVal
            Integer iLength x
            String  sChar
            Move (Length(asPassw))  to iLength
            Move 0                  to rVal
            For x From 1 to iLength
                Move (Mid(asPassw,1,x)) to sChar
                If (aiGreek=0) Begin
                    If ( ;
                         ( (Ascii(sChar)>= 97) And (Ascii(sChar)<=122)) Or ;
                         ( (Ascii(ToAnsi(sChar))>=220) And (Ascii(ToAnsi(sChar))<=254))    ;
                       ) Begin
                        Move 1      to rVal
                        Move 9999   to x
                    End
                End
                Else Begin
                    If ( (Ascii(sChar)>=97) And (Ascii(sChar)<=122)) Begin
                        Move 1      to rVal
                        Move 9999   to x
                    End
                End
            Loop
            Function_Return rVal
        End_Function
        
        Function HasOneNumber string asPassw Returns Integer
            Integer rVal
            Integer iLength x
            String  sChar
            Move (Length(asPassw))  to iLength
            Move 0                  to rVal
            For x From 1 to iLength
                Move (Mid(asPassw,1,x)) to sChar
                If ( (Ascii(sChar)>=48) And (Ascii(sChar)<=57)) Begin
                    Move 1      to rVal
                    Move 9999   to x
                End
            Loop
            Function_Return rVal
        End_Function
        
        Function HasOneSpecial string asPassw Returns Integer
            Integer rVal
            Integer iLength x
            String  sChar
            Move (Length(asPassw))  to iLength
            Move 0                  to rVal
            For x From 1 to iLength
                Move (Mid(asPassw,1,x)) to sChar
                If ( ;
                     ( (Ascii(sChar)>=33) And (Ascii(sChar)<=47)) Or ;
                     ( (Ascii(sChar)>=58) And (Ascii(sChar)<=64)) Or ;
                     ( (Ascii(sChar)>=91) And (Ascii(sChar)<=96))    ;
                   ) Begin
                    Move 1      to rVal
                    Move 9999   to x
                End
        
            Loop
            Function_Return rVal
        End_Function
        
        Function HasOneGreek string asPassw Returns Integer
            Integer rVal
            Integer iLength x
            String  sChar
            Move (Length(asPassw))  to iLength
            Move 0                  to rVal
            For x From 1 to iLength
                Move (Mid(asPassw,1,x)) to sChar
                If ( ;
                     ((Ascii(ToAnsi(sChar))>=193) And (Ascii(ToAnsi(sChar))<=219)) Or ;
                     ((Ascii(ToAnsi(sChar))>=220) And (Ascii(ToAnsi(sChar))<=254))    ;
                   ) Begin
                    Move 1      to rVal
                    Move 9999   to x
                    Set psMyStr to sChar
                End
            Loop
            Function_Return rVal
        End_Function
        
        Function HasDuplicates String asPassw Returns Integer
            Integer iLength x
            String  s1 s2
            Move (Length(asPassw)) to iLength
            If (iLength > 2) Begin
                For x From 1 to iLength
                    Move (Mid(asPassw, 1, x  )) to s1
                    If ((x+1)<=iLength) ;
                        Move (Mid(asPassw, 1, x+1)) to s2
                    Else Function_Return 0
                    If (s1=s2) Begin
                        Set psMyStr to (s1+s2)
                        Function_Return 1
                    End
                Loop
            End
            Function_Return 0
        End_Function
        
        Function HasInRow string asPassw Integer aiGreek Returns Integer
            Integer rVal iNum
            Integer iLength x
            String  sChar  sChar2  sChar3  sSet1  sSet2
            String  ssChar ssChar2 ssChar3 ssSet1 ssSet2
            String  s1 s2 s3 s4 s5
        
            Move (Length(asPassw))  to iLength
            Move 0                  to rVal
        
            Set psMyStr to ""
        
            For x From 1 to iLength
                Move 0 to iNum
                // Keep 3 consecutive characters
                Move (Mid(asPassw,1,x))                         to sChar
                If ((x+1)<=iLength) Move (Mid(asPassw,1,x+1))   to sChar2
                Else                Move 1                      to iNum
                If ((x+2)<=iLength) Move (Mid(asPassw,1,x+2))   to sChar3
                Else                Move 1                      to iNum
        
                If (iNum=0) Begin
                    // check if same type of character (Numbers)
                    If ( ((Ascii(sChar )>=48) And (Ascii(sChar )<=57)) And ;
                         ((Ascii(sChar2)>=48) And (Ascii(sChar2)<=57)) And ;
                         ((Ascii(sChar3)>=48) And (Ascii(sChar3)<=57))     ;
                       ) Begin
                        If (    ((Integer(sChar3)-Integer(sChar2))=1) And ;
                                ((Integer(sChar2)-Integer(sChar ))=1)     ;
                           ) Begin
                           Move 1       to rVal
                           Move 9999    to x
                           Set psMyStr to (sChar+sChar2+sChar3)
        
                        End
                        Else If (    ((Integer(sChar2)-Integer(sChar3))=1) And ;
                                     ((Integer(sChar )-Integer(sChar2))=1)     ;
                                ) Begin
                           Move 1       to rVal
                           Move 9999    to x
                           Set psMyStr to (sChar+sChar2+sChar3)
                        End
                    End
                    // check if same type of character (Capital Letters)
                    Else Begin
                        Move "ABCDEFGHIJKLMNOPQRSTUVWXYZ"   to s1
                        Move "QWERTYUIOPASDFGHJKLZXCVBNM"   to s2
                        //Move "€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—"     to s3
                        //Move "˜™š›œžŸ ¡¢£¤¥¦§¨©«¬­®¯à"     to s4
                        Move (UpperCase(sChar ))        to ssChar
                        Move (UpperCase(sChar2))        to ssChar2
                        Move (UpperCase(sChar3))        to ssChar3
                        Move (sChar +sChar2+sChar3)     to sSet1
                        Move (sChar3+sChar2+sChar )     to sSet2
                        Move (ssChar +ssChar2+ssChar3)  to ssSet1
                        Move (ssChar3+ssChar2+ssChar )  to ssSet2
        
                        If ( ((Ascii(ssChar )>=65) And (Ascii(ssChar )<=90)) And ;
                             ((Ascii(ssChar2)>=65) And (Ascii(ssChar2)<=90)) And ;
                             ((Ascii(ssChar3)>=65) And (Ascii(ssChar2)<=90))     ;
                           ) Begin
                            If ( (Pos(ssSet1,s1)>0) Or (Pos(ssSet2,s1)>0) Or ;
                                 (Pos(ssSet1,s2)>0) Or (Pos(ssSet2,s2)>0)  ) Begin
                                Move 1      to rVal
                                Move 9999   to x
                                //     If ( (Pos(ssSet1,s1)>0) Or (Pos(ssSet1,s2)>0) ) Set psMyStr to sSet1
                                //Else If ( (Pos(ssSet2,s1)>0) Or (Pos(ssSet2,s2)>0) ) Set psMyStr to sSet1
                                Set psMyStr to sSet1
                            End
                        End
                    End
                End
            Loop
            Function_Return rVal
        End_Function
        
        
        Function HasPasswordProblems string asPassw Integer i8Char    Integer i2Same  Integer iOneCap ;
                                                    Integer iOneSmall Integer iOneNum Integer iOneSpe ;
                                                    Integer iGreek    Integer iSeira  Integer iBlanks Returns Integer
            Integer iHasProblems
            Move 0 to iHasProblems
        
                 If ((i8Char   =1) And (Length(asPassw)<8))                     Move 1 to iHasProblems
            Else If ((i2Same   =1) And (HasDuplicates (Self,asPassw       )=1)) Move 2 to iHasProblems
            Else If ((iGreek   =1) And (HasOneGreek   (Self,asPassw       )=1)) Move 7 to iHasProblems
            Else If ((iBlanks  =1) And (Pos(" ",asPassw)>0))                    Move 9 to iHasProblems
            Else If ((iOneCap  =1) And (HasOneCap     (Self,asPassw,iGreek)=0)) Move 3 to iHasProblems
            Else If ((iOneSmall=1) And (HasOneSmall   (Self,asPassw,iGreek)=0)) Move 4 to iHasProblems
            Else If ((iOneNum  =1) And (HasOneNumber  (Self,asPassw       )=0)) Move 5 to iHasProblems
            Else If ((iOneSpe  =1) And (HasOneSpecial (Self,asPassw       )=0)) Move 6 to iHasProblems
            Else If ((iSeira   =1) And (HasInRow      (Self,asPassw,iGreek)=1)) Move 8 to iHasProblems
        
            Function_Return iHasProblems
        End_Function
        
        
        Function fsEncryptOrDecryptMyString Integer aiEncryptOrDecrypt String asText Returns String
            String password sReturnText
            Move "" to sReturnText
        
            //------------------------------------------------------------------------
            // „«¦ £˜©œ « ª §˜¨˜£œ«¨¦¬ª š ˜ «¦ encryption / decryption
            //------------------------------------------------------------------------
            SET ChilkatCrypt2CryptAlgorithm Of oCrypt to "aes"
            SET ChilkatCrypt2CipherMode     Of oCrypt to "cbc"
            SET ChilkatCrypt2KeyLength      Of oCrypt to  128
            Move "YannisSecretPhrase"                 to password
            //  Generate a binary secret key from a password string
            //  of any length.  For 128-bit encryption, GenEncodedSecretKey
            //  generates the MD5 hash of the password and returns it
            //  in the encoded form requested.  The 2nd param can be
            //  "hex", "base64", "url", "quoted-printable", etc.
            String hexKey
            Get ChilkatCrypt2GenEncodedSecretKey    Of oCrypt password "hex" to hexKey
            Send ChilkatCrypt2SetEncodedKey         Of oCrypt hexKey   "hex"
            SET ChilkatCrypt2EncodingMode           Of oCrypt                to "base64"
            //------------------------------------------------------------------------
            // „«¦ £˜©œ « ª §˜¨˜£œ«¨¦¬ª š ˜ «¦ encryption / decryption
            //------------------------------------------------------------------------
        
            If (aiEncryptOrDecrypt=1) Begin
                // Encrypt a string and return the binary encrypted data
                //  in a base-64 encoded string.
                Get ChilkatCrypt2EncryptStringENC Of oCrypt asText to sReturnText
            End
            Else If (aiEncryptOrDecrypt=2) Begin
                //  Decrypt and show the original string:
                Get ChilkatCrypt2DecryptStringENC Of oCrypt asText to sReturnText
            End
            Function_Return sReturnText
        End_Function
        
        
        
        //Function LimitConsecutive String MyStr Integer MaxOccur Returns Integer
        //    Integer rVal i intOccur
        //    String  strResult strBuffer strChar
        
        //    For i From 1 To (Length(MyStr))
        
        //        Move (Mid(MyStr, 1, i)) to strChar
        
        //        Showln "0. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult "   strChar=" strChar
        
        //        If (i=1) Begin
        //            Move (Trim(strChar)) to strResult
        //            Move 1 to intOccur
        //            Showln "1. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        //        End
        //        Else Begin
        //            If (strChar=(Left(strResult,1))) Begin
        //                If (intOccur >= MaxOccur) Begin
        //                    Move (Trim(strBuffer)+Trim(strChar)) to strBuffer
        //            Showln "2. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        //                End
        //                Else Begin
        //                    Move (Trim(strResult)+Trim(strChar)) to strResult
        //                    Add 1 to intOccur
        //            Showln "3. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        //                End
        //            End
        //            Else Begin
        
        //    Showln "@@@  i=" i "  strResult=" strResult "   strChar=" strChar  "  strBuffer=" strBuffer
        
        //                Move (Trim(strResult)+Trim(strChar)) to strResult
        //                If (Length(strBuffer)>0) Begin
        //                    If (Length(strBuffer)>MaxOccur) Begin
        //                        Move (Trim(strResult)+Left(strBuffer,MaxOccur)) to strResult
        //                        Move MaxOccur to intOccur
        //                        Move (Right(strBuffer,Length(strBuffer)-MaxOccur)) to strBuffer
        //            Showln "4. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        //                    End
        //                    Else Begin
        //                        Move (Trim(strResult)+Trim(strBuffer)) to strResult
        //                        Move (Length(strBuffer)) to intOccur
        //                        Move "" to strBuffer
        //            Showln "5. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        //                    End
        //                End
        //                Else Move 1 to intOccur
        //            End
        //         End
        //    Loop
        //    If (Length(strBuffer)>0) Begin
        //        Move 1 to rVal
        //        Move (Trim(strResult)+Trim(strBuffer)) to MyStr
        //        Set psMyStr to MyStr
        
        //        Showln "6. MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        
        //    End
        //    Else Begin
        //        Move 0 to rVal
        //        Move strResult to MyStr
        //        Set psMyStr to MyStr
        
        //        Showln "7. MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
        
        //    End
        //    Function_return rVal
        //End_Function
        
        
        //AB-StoreTopEnd

        Set Label to "¦¢ « ¡ã €©­˜¢œå˜ª š ˜ «¦¬ª ‰à› ¡¦çª  •¨ž©«é¤"
        Set Size to 238 439
        Set Location to 1 3
        Set Color to 14927528

        //AB-DDOStart


        //AB-DDOEnd

        Object chkLengthOverEight is a CheckBoxSub
            Set Label to "Œ˜ â®œ  £ã¡¦ª ˜§¦ 8 ¡˜  §á¤à ®˜¨˜¡«ã¨œª"
            Set Size to 10 239
            Set Location to 16 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkLengthOverEight

        Object chk3Consecutive is a CheckBoxSub
            Set Label to "Œ˜ £ž¤ œ§˜¤˜¢˜£™á¤œ«˜  â¤˜ª ®˜¨˜¡«ã¨˜ª 2 ©¬¤œ®æ£œ¤œª ­¦¨âª"
            Set Size to 10 239
            Set Location to 29 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chk3Consecutive

        Object chkAtLeast1Upper is a CheckBoxSub
            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª ¡œ­˜¢˜å¦ª ®˜¨˜¡«ã¨˜ª"
            Set Size to 10 239
            Set Location to 43 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkAtLeast1Upper

        Object chkAtLeast1Lower is a CheckBoxSub
            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª §œæª ®˜¨˜¡«ã¨˜ª"
            Set Size to 10 239
            Set Location to 56 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkAtLeast1Lower

        Object chkAtLeast1Number is a CheckBoxSub
            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª ˜¨ Ÿ£æª"
            Set Size to 10 239
            Set Location to 70 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkAtLeast1Number

        Object chkAtLeast1Special is a CheckBoxSub
            Set Label to "Œ˜ ¬§á¨®œ  «¦¬¢á® ©«¦¤ â¤˜ª œ › ¡æª ®˜¨˜¡«ã¨˜ª"
            Set Size to 10 239
            Set Location to 83 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkAtLeast1Special

        Object chkNoGreek is a CheckBoxSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Œ˜ £ž¤ ®¨ž© £¦§¦ ¦ç¤«˜  „¢¢ž¤ ¡¦å ®˜¨˜¡«ã¨œª"
            Set Size to 10 239
            Set Location to 92 27
            Set Color to 14927528
            Set Checked_State to TRUE

            //AB-StoreStart
            
            Set Visible_State to False
            Set Enabled_State to False
            
            
            //AB-StoreEnd

        End_Object    // chkNoGreek

        Object chkSeiriakous is a CheckBoxSub
            Set Label to "Œ˜ £ž¤ œ§ «â§¦¤«˜  §á¤à ˜§¦ 2 ©œ ¨ ˜¡¦çª ®˜¨˜¡«ã¨œª"
            Set Size to 12 227
            Set Location to 96 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkSeiriakous

        Object frmChangePasswordEveryDays is a FormSub
            Set Size to 13 17
            Set Location to 130 19
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "30"
        End_Object    // frmChangePasswordEveryDays

        Object frmAttempts is a FormSub
            Set Size to 13 17
            Set Location to 143 19
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "3"
        End_Object    // frmAttempts

        Object frmTestPassword is a FormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 13 167
            Set Location to 175 134
            Set Label_Col_Offset to 2
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Value Item 0 to (psInitial(Self))
            
            //AB-StoreEnd

        End_Object    // frmTestPassword

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "(˜˜, LL, 44...)"
            Set Color to 14927528
            Set Location to 28 313
            Set Size to 10 63
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "(ABC..XYZ, €‚..•–—)"
            Set Color to 14927528
            Set Location to 42 313
            Set Size to 10 86
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "(abc..xyz, ˜™š..®¯à)"
            Set Color to 14927528
            Set Location to 55 313
            Set Size to 10 78
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "(1234567890)"
            Set Color to 14927528
            Set Location to 68 313
            Set Size to 10 73
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "(!@#$%^&/*)(_\=+-><|)"
            Set Color to 14927528
            Set Location to 81 313
            Set Size to 10 75
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub8

        Object txtDays is a TextBoxSub
            Set Label to "Œ˜ ˜¢¢áœ  ¦ ‰à› ¡æª ¡áŸœ ®® £â¨œª (0=ƒœ¤ œ¢âš®œ«˜ )"
            Set Color to 14927528
            Set Location to 132 39
            Set Size to 10 184
            Set TypeFace to "MS Sans Serif"
        End_Object    // txtDays

        Object txtAttempts is a TextBoxSub
            Set Label to "‹âš ©«œª „§ «¨œ§«âª ¨¦©§áŸœ œª „ ©æ›¦¬"
            Set Color to 14927528
            Set Location to 145 39
            Set Size to 10 151
            Set TypeFace to "MS Sans Serif"
        End_Object    // txtAttempts

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "______________"
            Set Color to 14927528
            Set Location to 25 267
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "______________"
            Set Color to 14927528
            Set Location to 79 267
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub10

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "______________"
            Set Color to 14927528
            Set Location to 65 267
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub11

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "______________"
            Set Color to 14927528
            Set Location to 52 267
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub12

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "______________"
            Set Color to 14927528
            Set Location to 39 267
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub13

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "______________"
            Set Color to 14927528
            Set Location to 95 267
            Set Size to 10 41
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub14

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "(123...876...efg....MLK)"
            Set Color to 14927528
            Set Location to 97 313
            Set Size to 10 78
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub15

        Object ButtonSub5 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ë¢œš®¦ª ƒ¦¡ £˜©« ¡¦ç ‰à› ¡¦ç"
            Set Size to 14 167
            Set Location to 188 134
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                String  sPassw sMess
                Integer i1 i2 i3 i4 i5 i6 i7 i8 i9 iResult
            
                Set psMyStr         to ""
            
                Get Value Of frmTestPassword Item 0     to sPassw
                Get Checked_State Of chkLengthOverEight to i1
                Get Checked_State Of chk3Consecutive    to i2
                Get Checked_State Of chkAtLeast1Upper   to i3
                Get Checked_State Of chkAtLeast1Lower   to i4
                Get Checked_State Of chkAtLeast1Number  to i5
                Get Checked_State Of chkAtLeast1Special to i6
                Get Checked_State Of chkNoGreek         to i7
                Get Checked_State Of chkSeiriakous      to i8
                Get Checked_State Of chkBlanks          to i9
                Move (HasPasswordProblems(Self,sPassw,i1,i2,i3,i4,i5,i6,i7,i8,i9)) to iResult
            
                Get psMyStr         to sMess
                Move (Trim(sMess))  to sMess
            
                     If (iResult=7) Send Stop_Box "ƒœ¤ œ§ «¨â§¦¤«˜  „¢¢ž¤ ¡¦å ®˜¨˜¡«ã¨œª"                   ("‘­á¢£˜ 1007  -> "+sMess+" <-")
                Else If (iResult=1) Send Stop_Box "Ž ¡à› ¡æª §¨â§œ  ¤˜ œå¤˜  á¤à «à¤ 8 ®˜¨˜¡«ã¨à¤ "         "‘­á¢£˜ 1001"
                Else If (iResult=2) Send Stop_Box "ƒœ¤ œ§ «¨â§¦¤«˜  2 å› ¦  ®˜¨˜¡«ã¨œª ›å§¢˜ ›å§¢˜"         ("‘­á¢£˜ 1002  -> "+sMess+" <-")
                Else If (iResult=3) Send Stop_Box "Ž ¡à› ¡æª §¨â§œ  ¤˜ â®œ  «¦¬¢á® ©«¦¤ 1 ¡œ­˜¢˜å¦ š¨á££˜"  "‘­á¢£˜ 1003"
                Else If (iResult=4) Send Stop_Box "Ž ¡à› ¡æª §¨â§œ  ¤˜ â®œ  «¦¬¢á® ©«¦¤ 1 §œæ š¨á££˜"      "‘­á¢£˜ 1004"
                Else If (iResult=5) Send Stop_Box "Ž ¡à› ¡æª §¨â§œ  ¤˜ â®œ  «¦¬¢á® ©«¦¤ 1 ˜¨ Ÿ£æ"           "‘­á¢£˜ 1005"
                Else If (iResult=6) Send Stop_Box "Ž ¡à› ¡æª §¨â§œ  ¤˜ â®œ  «¦¬¢á® ©«¦¤ 1 œ › ¡æ ®˜¨˜¡«ã¨˜" "‘­á¢£˜ 1006"
                Else If (iResult=8) Send Stop_Box "ƒœ¤ œ§ «¨â§¦¤«˜  §á¤à ˜§¦ 2 ©¬¤œ®æ£œ¤¦  ®˜¨˜¡«ã¨œª"      ("‘­á¢£˜ 1008  -> "+sMess+" <-")
                Else If (iResult=9) Send Stop_Box "ƒœ¤ œ§ «¨â§¦¤«˜  ¡œ¤á ˜¤á£œ©˜ ©«¦¬ª ®˜¨˜¡«ã¨œª"          "‘­á¢£˜ 1009"
            End_Procedure // OnClick
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub5

        Object ButtonSub6 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Reset to Intial"
            Set Size to 14 55
            Set Location to 188 315
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                Set Value Of frmTestPassword Item 0 to (psInitial(Self))
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub6

        Object chkBlanks is a CheckBoxSub
            Set Label to "Œ˜ £ž¤ œ§ «¨â§¦¤«˜  ¡œ¤á"
            Set Size to 10 111
            Set Location to 109 27
            Set Color to 14927528
            Set Checked_State to TRUE
        End_Object    // chkBlanks


        //AB-StoreStart
        
        Procedure Activate_View Returns Integer
            Integer rVal success
            Forward Get Msg_Activate_View to rVal
        
            //------------------------------------------------------------------------
            // ƒž£ ¦ç¨šž©œ «¦ Chilkat Crypt object
            //------------------------------------------------------------------------
            // ’¦ OCX §¦¬ ®¨ž© £¦§¦ é œå¤˜  v 4.4.7
            // ¡˜  «¦ ©§˜©£â¤¦ unlock code œå¤˜  œ§å©žª š ' ˜¬«ã «ž¤ â¡›¦©ž
            Send Activate Of oCrypt
            Get ChilkatCrypt2UnlockComponent Of oCrypt "Crypt12345678_4CC88148VHXA" to success
        
            // ’˜ £ž¤ç£˜«˜ œå¤˜  š ˜ £˜ª, §¨œ§œ  ¤˜ ­¬š¦¬¤ æ«˜¤ ›¦¬¢â¯œ 
            //If (success <> 1) Begin
            //    Send Stop_Box "Crypt component unlock failed" "Registration Error"
            //End
            //Else Send Info_Box "Crypt component unlock successfully" "Registration OK"
        
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // PasswordPolicies

//AB/     End_Object    // prj
