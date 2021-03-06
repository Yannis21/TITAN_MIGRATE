//AB/ Project vwChilkatCrypt
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwChilkatCrypt"
//AB/     Set ProjectFileName to "vwChilkatCrypt.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwChilkatCrypt is a dbViewSub
//     oCrypt is a dbOLEChilkatCrypt2
//     frmInitial is a FormSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     ButtonSub3 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     frmEncr is a FormSub
//     frmDecr is a FormSub
//     chk3Consecutive is a CheckBoxSub
//     chkAtLeast1Upper is a CheckBoxSub
//     chkAtLeast1Lower is a CheckBoxSub
//     chkAtLeast1Number is a CheckBoxSub
//     chkAtLeast1Special is a CheckBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     chkLengthOverEight is a CheckBoxSub
//     frmChangePasswordEveryDays is a FormSub
//     txtDays is a TextBoxSub
//     chkSameChar is a ButtonSub
//     TextBoxSub10 is a TextBoxSub
//     frmEpanal is a FormSub
//     frmAttempts is a FormSub
//     txtAttempts is a TextBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object chk3Consecutive
Register_Object chkAtLeast1Lower
Register_Object chkAtLeast1Number
Register_Object chkAtLeast1Special
Register_Object chkAtLeast1Upper
Register_Object chkLengthOverEight
Register_Object chkSameChar
Register_Object frmAttempts
Register_Object frmChangePasswordEveryDays
Register_Object frmDecr
Register_Object frmEncr
Register_Object frmEpanal
Register_Object frmInitial
Register_Object oCrypt
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object txtAttempts
Register_Object txtDays
Register_Object vwChilkatCrypt


//AB/ AppBuild VIEW


//AB-StoreTopStart
        
Use FlexOle
Use ChilkatCrypt


//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Form.Sub
Use Button.Sub
Use Txtbox.Sub
Use Chkbox.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwChilkatCrypt FOR vwChilkatCrypt

Object vwChilkatCrypt is a dbViewSub

    //AB-StoreTopStart
    Object oCrypt is a dbOLEChilkatCrypt2
    End_Object
    
    Property String psMyStr     Public ""
    
    Function fsEncryptOrDecryptMyString Integer aiEncryptOrDecrypt String asText Returns String
        String password sReturnText
        Move "" to sReturnText
    
        //------------------------------------------------------------------------
        // �������� ��� ����������� ��� �� encryption / decryption
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
        // �������� ��� ����������� ��� �� encryption / decryption
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
    
    
    
    Function LimitConsecutive String MyStr Integer MaxOccur Returns Integer
        Integer rVal i intOccur
        String  strResult strBuffer strChar
    
        For i From 1 To (Length(MyStr))
    
            Move (Mid(MyStr, 1, i)) to strChar
    
            Showln "0. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult "   strChar=" strChar
    
            If (i=1) Begin
                Move (Trim(strChar)) to strResult
                Move 1 to intOccur
                Showln "1. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
            End
            Else Begin
                If (strChar=(Left(strResult,1))) Begin
                    If (intOccur >= MaxOccur) Begin
                        Move (Trim(strBuffer)+Trim(strChar)) to strBuffer
                Showln "2. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
                    End
                    Else Begin
                        Move (Trim(strResult)+Trim(strChar)) to strResult
                        Add 1 to intOccur
                Showln "3. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
                    End
                End
                Else Begin
    
        Showln "@@@  i=" i "  strResult=" strResult "   strChar=" strChar  "  strBuffer=" strBuffer
    
                    Move (Trim(strResult)+Trim(strChar)) to strResult
                    If (Length(strBuffer)>0) Begin
                        If (Length(strBuffer)>MaxOccur) Begin
                            Move (Trim(strResult)+Left(strBuffer,MaxOccur)) to strResult
                            Move MaxOccur to intOccur
                            Move (Right(strBuffer,Length(strBuffer)-MaxOccur)) to strBuffer
                Showln "4. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
                        End
                        Else Begin
                            Move (Trim(strResult)+Trim(strBuffer)) to strResult
                            Move (Length(strBuffer)) to intOccur
                            Move "" to strBuffer
                Showln "5. i=" i "  MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
                        End
                    End
                    Else Move 1 to intOccur
                End
             End
        Loop
        If (Length(strBuffer)>0) Begin
            Move 1 to rVal
            Move (Trim(strResult)+Trim(strBuffer)) to MyStr
            Set psMyStr to MyStr
    
            Showln "6. MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
    
        End
        Else Begin
            Move 0 to rVal
            Move strResult to MyStr
            Set psMyStr to MyStr
    
            Showln "7. MyStr=" MyStr,"  intoccur=" intOccur "   MaxOccur=" MaxOccur "  strChar=" strChar "  strBuffer=" strBuffer "  strResult=" strResult
    
        End
        Function_return rVal
    End_Function
    
    
    //AB-StoreTopEnd

    Set Label to "Encrypt / Decrypt / Password Management"
    Set Size to 294 491
    Set Location to 1 6

    //AB-DDOStart


    //AB-DDOEnd

    Object frmInitial is a FormSub
        Set Size to 13 331
        Set Location to 22 8
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmInitial

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set Label to "Encrypt 1 to 2"
        Set Size to 14 64
        Set Location to 36 365
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Procedure OnClick
            String sStr
            Get Value Of frmInitial Item 0 to sStr
            Set Value Of frmEncr Item 0 to (fsEncryptOrDecryptMyString(Self,1,sStr))
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set Label to "Decrypt 2 to 3"
        Set Size to 14 64
        Set Location to 70 365
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Procedure OnClick
            String sStr
            Get Value Of frmEncr Item 0 to sStr
            Set Value Of frmDecr Item 0 to (fsEncryptOrDecryptMyString(Self,2,sStr))
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object ButtonSub3 is a ButtonSub

        //AB-StoreTopStart
                                                        
        //AB-StoreTopEnd

        Set Label to "Clear Fields"
        Set Size to 14 64
        Set Location to 115 365
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                        
        Procedure OnClick
            Set Value Of frmInitial Item 0 to ""
            Set Value Of frmEncr    Item 0 to ""
            Set Value Of frmDecr    Item 0 to ""
            Send Activate to frmInitial
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "1"
        Set Location to 23 345
        Set Size to 10 5
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "2"
        Set Location to 55 345
        Set Size to 10 6
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "3"
        Set Location to 86 345
        Set Size to 10 6
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object frmEncr is a FormSub
        Set Size to 13 331
        Set Location to 54 8
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmEncr

    Object frmDecr is a FormSub
        Set Size to 13 331
        Set Location to 84 8
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmDecr

    Object chk3Consecutive is a CheckBoxSub
        Set Label to "�� ��� ���������ᤜ��� ⤘� ������㨘� ��� ��� 2 �����  (�����棜���)"
        Set Size to 10 283
        Set Location to 185 69
    End_Object    // chk3Consecutive

    Object chkAtLeast1Upper is a CheckBoxSub
        Set Label to "�� ��ᨮ�� ����ᮠ���� ⤘� ������妪 ������㨘�"
        Set Size to 10 229
        Set Location to 196 69
    End_Object    // chkAtLeast1Upper

    Object chkAtLeast1Lower is a CheckBoxSub
        Set Label to "�� ��ᨮ�� ����ᮠ���� ⤘� ���� ������㨘�"
        Set Size to 10 209
        Set Location to 207 69
    End_Object    // chkAtLeast1Lower

    Object chkAtLeast1Number is a CheckBoxSub
        Set Label to "�� ��ᨮ�� ����ᮠ���� ⤘� ������"
        Set Size to 10 182
        Set Location to 217 69
    End_Object    // chkAtLeast1Number

    Object chkAtLeast1Special is a CheckBoxSub
        Set Label to "�� ��ᨮ�� ����ᮠ���� ⤘� ������ ������㨘�"
        Set Size to 10 200
        Set Location to 228 69
    End_Object    // chkAtLeast1Special

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "(���, LLL, 444...)"
        Set Location to 185 381
        Set Size to 10 93
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "(ABC..XYZ, ���..���)"
        Set Location to 196 381
        Set Size to 10 86
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "(abc..xyz, ���..���)"
        Set Location to 206 381
        Set Size to 10 78
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "(1234567890)"
        Set Location to 216 381
        Set Size to 10 73
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "(!@#$%^&/*)(_\=+-><|)"
        Set Location to 226 381
        Set Size to 10 75
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object chkLengthOverEight is a CheckBoxSub
        Set Label to "�� ⮜� �㡦� ��� 8 ��� ��� ������㨜�"
        Set Size to 10 191
        Set Location to 174 69
    End_Object    // chkLengthOverEight

    Object frmChangePasswordEveryDays is a FormSub
        Set Size to 13 17
        Set Location to 240 61
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "30"
    End_Object    // frmChangePasswordEveryDays

    Object txtDays is a TextBoxSub
        Set Label to "�� ���᝜� � ������ �ៜ �� �⨜� (0=�� ��� ���᝜�)"
        Set Location to 241 81
        Set Size to 10 191
        Set TypeFace to "MS Sans Serif"
    End_Object    // txtDays

    Object chkSameChar is a ButtonSub

        //AB-StoreTopStart
                        
                        
                        
        //AB-StoreTopEnd

        Set Label to "������� �����棜�� ��������"
        Set Size to 14 146
        Set Location to 115 159
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Procedure OnClick
            String  sStr
            Integer iRepeat iResult
            Get Value Of frmInitial Item 0 to sStr
            Get Value Of frmEpanal  Item 0 to iRepeat
            Move (LimitConsecutive(Self,sStr,iRepeat)) to iResult
            If (iResult=1) Begin
                Send Stop_Box ("���������ᤦ���� �� ������㨜� "+Trim(psMyStr(Self)))) "���������"
            End
            Else Begin
                Send Info_Box "� ������ ��� ����⮜� �����������棜���� ������㨜�" "���������"
            End
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // chkSameChar

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "�⚠���� ������㯜��"
        Set Location to 116 49
        Set Size to 10 83
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object frmEpanal is a FormSub
        Set Size to 13 23
        Set Location to 115 133
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "2"
    End_Object    // frmEpanal

    Object frmAttempts is a FormSub
        Set Size to 13 17
        Set Location to 254 61
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "3"
    End_Object    // frmAttempts

    Object txtAttempts is a TextBoxSub
        Set Label to "�� ���᝜� � ������ �ៜ �� �⨜� (0=�� ��� ���᝜�)"
        Set Location to 255 81
        Set Size to 10 191
        Set TypeFace to "MS Sans Serif"
    End_Object    // txtAttempts


    //AB-StoreStart
        
        
    Procedure Activate_View Returns Integer
        Integer rVal success
        Forward Get Msg_Activate_View to rVal
    
        //------------------------------------------------------------------------
        // �����稚��� �� Chilkat Crypt object
        //------------------------------------------------------------------------
        // �� OCX ��� ����������� �夘� v 4.4.7
        // ��� �� �����⤦ unlock code �夘� ��婞� ��' ���� ��� ⡛���
        Send Activate Of oCrypt
        Get ChilkatCrypt2UnlockComponent Of oCrypt "Crypt12345678_4CC88148VHXA" to success
    
        // �� ���磘�� �夘� ��� ���, ������ �� ������ 櫘� ����⯜�
        If (success <> 1) Begin
            Send Stop_Box "Crypt component unlock failed" "Registration Error"
        End
        Else Send Info_Box "Crypt component unlock successfully" "Registration OK"
    
        Procedure_Return rVal
    End_Procedure
    
    //AB-StoreEnd

End_Object    // vwChilkatCrypt


//AB-StoreStart
        
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
