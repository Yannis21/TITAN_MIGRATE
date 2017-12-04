//AB/ Project Users
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Users"
//AB/         Set ProjectFileName to "Users.vw"

// Project Object Structure
//   Users is a dbViewSubs
//     Departm_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Users_User_id is a dbFormSub
//     Users_Name is a dbFormSub
//     Usergrps_Grp_Name is a dbFormSub
//     Departm_Description is a dbFormSub
//     Users_Login_id is a dbFormSub
//     Users_Admin_Rights is a dbCheckBoxSub
//     Users_Anenergos is a dbCheckBoxSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub

// Register all objects
Register_Object Departm_DD
Register_Object Departm_Description
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Name
Register_Object Users
Register_Object Users_Admin_Rights
Register_Object Users_Anenergos
Register_Object Users_DD
Register_Object Users_Login_id
Register_Object Users_Name
Register_Object Users_User_id


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    //Use FlexOle
    //Use ChilkatCrypt
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbChkbox.Sub
    Use Txtbox.Sub

    Use DEPARTM.DD
    Use USERGRPS.DD
    Use USERS.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Users FOR Users

    Object Users is a dbViewSubs

        //AB-StoreTopStart
                        
        On_Key KSave_Record Send Request_Save Of Users_DD
        On_Key Key_F12      Send Request_Save Of Users_DD
        
        //Object oCrypt is a dbOLEChilkatCrypt2
        //End_Object
        
        //Property String psMyStr     Public ""
        //Property String psInitial   Public "sbno125olkM]RtY"
        
        //Function fsCrypto String lsWay String lsOld Returns String
        //    Local String lsNew lsTemp
        //    Local Integer liCount
        //       For liCount From 1 to (Length(lsOld))
        //           Mid lsOld to lsTemp 1 liCount
        //           If ((Uppercase(lsWay)) eq 'FORWARD') Begin
        //                    If ((Ascii(lsTemp) = 255)) Move (Character(32)) to lsTemp
        //                    Else Move (Character(Ascii(lsTemp)+1)) to lsTemp
        //           End
        //           Else Begin
        //               If ((Uppercase(lsWay)) eq 'BACKWARD') Begin
        //                   If ((Ascii(lsTemp) = 32)) Move (Character(255)) to lsTemp
        //                   Else Move (Character(Ascii(lsTemp)-1)) to lsTemp
        //               End
        //           End
        //           Append lsNew lsTemp
        //       Loop
        //    Function_Return (lsNew)
        //End_Function
        
        //Function fsCryptoNew String lsWay String lsOld Returns String
        //    Local String lsNew sToumpa sStringEncrypted sTemp sStringDecrypted
        //    Integer iCount iAsciiNum
        
        //    If ((Uppercase(lsWay)) eq 'ENCRYPT') Begin
        //        Move lsOld  to sStringDecrypted
        //        Move ""     to sStringEncrypted
        //        Move ""     to sToumpa
        
        //        // 1. Prota to fernoume anapoda / toumpa
        //        For iCount From 1 to (Length(sStringDecrypted))
        //            Move (Mid(sStringDecrypted,1,iCount))   to sTemp
        //            Move (Insert(sTemp,sToumpa,1))          to sToumpa
        //        Loop
        
        //        // 2. Ftiaxnoume to neo string prosthetontas ton xarakthra pou prokyptei
        //        //    apo ton Ascii kodiko tou xarakthra + thn thesi tou mesa sto string
        //        For iCount From 1 to (Length(sToumpa))
        //            Move (Mid(sToumpa,1,iCount))            to sTemp
        //            Move (Ascii(sTemp) + iCount)            to iAsciiNum
        //            Move (Character(iAsciiNum))             to sTemp
        //            Move (Append(sStringEncrypted,sTemp))   to sStringEncrypted
        //        Loop
        //        Move sStringEncrypted to lsNew
        //    End
        //    Else If ((Uppercase(lsWay)) eq 'DECRYPT') Begin
        //        Move lsOld to sStringEncrypted
        //        Move "" to sStringDecrypted
        //        Move "" to sToumpa
        
        //        // 1. Ftiaxnoume to palio string afairontas ton xarakthra pou prokyptei
        //        //    apo ton Ascii kodiko tou xarakthra + thn thesi tou mesa sto string
        //        For iCount From 1 to (Length(sStringEncrypted))
        //            Move (Mid(sStringEncrypted,1,iCount))       to sTemp
        //            Move (Ascii(sTemp) - iCount)                to iAsciiNum
        //            Move (Character(iAsciiNum))                 to sTemp
        //            Move (Append(sStringDecrypted,sTemp))       to sStringDecrypted
        //        Loop
        
        //        // 2. Meta, to fernoume anapoda / toumpa
        //        For iCount From 1 to (Length(sStringDecrypted))
        //            Move (Mid(sStringDecrypted,1,iCount))   to sTemp
        //            Move (Insert(sTemp,sToumpa,1))          to sToumpa
        //        Loop
        //        Move sToumpa to lsNew
        //    End
        //    Else Send Info_Box ("The parameter lsWay must be ENCRYPT or DECRYPT\nThe returned string will be incorrect since you passed "+Trim(lsWay)) "Error 1001"
        //    Function_Return lsNew
        //End_Function
        
        //Function fsEncrypt String sStringDecrypted Returns String
        //    String  sToumpa sStringEncrypted sTemp
        //    Integer iCount iAsciiNum
        
        //    Move "" to sStringEncrypted
        //    Move "" to sToumpa
        
        //    // 1. Prota to fernoume anapoda / toumpa
        //    For iCount From 1 to (Length(sStringDecrypted))
        //        Move (Mid(sStringDecrypted,1,iCount))   to sTemp
        //        Move (Insert(sTemp,sToumpa,1))          to sToumpa
        //    Loop
        
        //    // 2. Ftiaxnoume to neo string prosthetontas ton xarakthra pou prokyptei
        //    //    apo ton Ascii kodiko tou xarakthra + thn thesi tou mesa sto string
        //    For iCount From 1 to (Length(sToumpa))
        //        Move (Mid(sToumpa,1,iCount))            to sTemp
        //        Move (Ascii(sTemp) + iCount)            to iAsciiNum
        //        Move (Character(iAsciiNum))             to sTemp
        //        Move (Append(sStringEncrypted,sTemp))   to sStringEncrypted
        //    Loop
        
        //    Function_Return (sStringEncrypted)
        //End_Function
        
        //Function fsDecrypt String sStringEncrypted Returns String
        //    String  sToumpa sStringDecrypted sTemp
        //    Integer iCount iAsciiNum
        
        //    Move "" to sStringDecrypted
        //    Move "" to sToumpa
        
        //    // 1. Ftiaxnoume to palio string afairontas ton xarakthra pou prokyptei
        //    //    apo ton Ascii kodiko tou xarakthra + thn thesi tou mesa sto string
        //    For iCount From 1 to (Length(sStringEncrypted))
        //        Move (Mid(sStringEncrypted,1,iCount))       to sTemp
        //        Move (Ascii(sTemp) - iCount)                to iAsciiNum
        //        Move (Character(iAsciiNum))                 to sTemp
        //        Move (Append(sStringDecrypted,sTemp))       to sStringDecrypted
        //    Loop
        
        //    // 2. Meta, to fernoume anapoda / toumpa
        //    For iCount From 1 to (Length(sStringDecrypted))
        //        Move (Mid(sStringDecrypted,1,iCount))   to sTemp
        //        Move (Insert(sTemp,sToumpa,1))          to sToumpa
        //    Loop
        
        //    Function_Return (sToumpa)
        //End_Function
        
        //Function fsEncryptOrDecryptMyString Integer aiEncryptOrDecrypt String asText Returns String
        //    String password sReturnText
        //    Move "" to sReturnText
        
        //    //------------------------------------------------------------------------
        //    // Ñ´¶†£ò©ú ´†™ ßò®ò£ú´®¶¨™ ö†ò ´¶ encryption / decryption
        //    //------------------------------------------------------------------------
        //    SET ChilkatCrypt2CryptAlgorithm Of oCrypt to "ARC4" //"aes"
        //    SET ChilkatCrypt2CipherMode     Of oCrypt to "cbc"
        //    SET ChilkatCrypt2KeyLength      Of oCrypt to  16
        //    Move "YannisSecretPhrase"                 to password
        //    //  Generate a binary secret key from a password string
        //    //  of any length.  For 128-bit encryption, GenEncodedSecretKey
        //    //  generates the MD5 hash of the password and returns it
        //    //  in the encoded form requested.  The 2nd param can be
        //    //  "hex", "base64", "url", "quoted-printable", etc.
        //    String hexKey
        //    Get ChilkatCrypt2GenEncodedSecretKey    Of oCrypt password "hex" to hexKey
        //    Send ChilkatCrypt2SetEncodedKey         Of oCrypt hexKey   "hex"
        //    SET ChilkatCrypt2EncodingMode           Of oCrypt                to "base32"
        //    //------------------------------------------------------------------------
        //    // Ñ´¶†£ò©ú ´†™ ßò®ò£ú´®¶¨™ ö†ò ´¶ encryption / decryption
        //    //------------------------------------------------------------------------
        
        //    If (aiEncryptOrDecrypt=1) Begin
        //        // Encrypt a string and return the binary encrypted data
        //        //  in a base-64 encoded string.
        //        Get ChilkatCrypt2EncryptStringENC Of oCrypt asText to sReturnText
        //    End
        //    Else If (aiEncryptOrDecrypt=2) Begin
        //        //  Decrypt and show the original string:
        //        Get ChilkatCrypt2DecryptStringENC Of oCrypt asText to sReturnText
        //    End
        //    Function_Return sReturnText
        //End_Function
        
        
        
        //AB-StoreTopEnd

        Set Label to "ï®„©´ú™"
        Set Size to 140 379
        Set Location to 5 16
        Set Color to 13677440

        //AB-DDOStart

        Object Departm_DD is a Departm_DataDictionary
        End_Object    // Departm_DD

        Object Usergrps_DD is a Usergrps_DataDictionary

            //AB-StoreStart
                                                                                                                                                                                                    
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Usergrps_DD

        Object Users_DD is a Users_DataDictionary

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Departm_DD(self))

            //AB-StoreStart
            
            Procedure Creating
                Date dHmnia
                Sysdate dHmnia
                Move (dHmnia-1) to Users.Next_Change
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // Users_DD

        Set Main_DD to (Users_DD(self))
        Set Server to (Users_DD(self))

        //AB-DDOEnd

        Object Users_User_id is a dbFormSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Entry_Item Users.User_id
            Set Size to 13 54
            Set Location to 8 64
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                        
            On_Key KSave_Record Send Request_Save Of Users_DD
            On_Key Key_F12      Send Request_Save Of Users_DD
            
            
            
            //AB-StoreEnd

        End_Object    // Users_User_id

        Object Users_Name is a dbFormSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Entry_Item Users.Name
            Set Size to 13 293
            Set Location to 23 64
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                        
            On_Key KSave_Record Send Request_Save Of Users_DD
            On_Key Key_F12      Send Request_Save Of Users_DD
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Users_Name

        Object Usergrps_Grp_Name is a dbFormSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Entry_Item Usergrps.Grp_name
            Set Size to 13 293
            Set Location to 38 64
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                        
            On_Key KSave_Record Send Request_Save Of Users_DD
            On_Key Key_F12      Send Request_Save Of Users_DD
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Usergrps_Grp_Name

        Object Departm_Description is a dbFormSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Entry_Item Departm.Description
            Set Size to 13 293
            Set Location to 53 64
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                        
            On_Key KSave_Record Send Request_Save Of Users_DD
            On_Key Key_F12      Send Request_Save Of Users_DD
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Departm_Description

        Object Users_Login_id is a dbFormSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Entry_Item Users.Login_id
            Set Size to 13 126
            Set Location to 75 144
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                        
            On_Key KSave_Record Send Request_Save Of Users_DD
            On_Key Key_F12      Send Request_Save Of Users_DD
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Users_Login_id

        Object Users_Admin_Rights is a dbCheckBoxSub

            //AB-StoreTopStart
                                                                                                            
            //AB-StoreTopEnd

            Entry_Item Users.Admin_rights
            Set Label to "É†°ò†È£ò´ò Administrator"
            Set Size to 10 100
            Set Location to 92 144
            Set Color to 13677440

            //AB-StoreStart
                                                                                                            
            On_Key KSave_Record Send Request_Save Of Users_DD
            On_Key Key_F12      Send Request_Save Of Users_DD
            
            //AB-StoreEnd

        End_Object    // Users_Admin_Rights

        Object Users_Anenergos is a dbCheckBoxSub
            Entry_Item Users.Anenergos
            Set Label to "ÄåÑåÑêÇéë"
            Set Size to 10 63
            Set Location to 108 144
            Set Color to 13677440
            Set TextColor to clPurple
        End_Object    // Users_Anenergos

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ä/Ä ï®„©´û"
            Set Color to 13677440
            Set Location to 10 4
            Set Size to 10 44
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "é§¶£ò´úßÈ§¨£¶"
            Set Color to 13677440
            Set Location to 23 4
            Set Size to 10 58
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "é£·õò ï®û©´È§"
            Set Color to 13677440
            Set Location to 40 4
            Set Size to 10 55
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "í£„£ò"
            Set Color to 13677440
            Set Location to 56 4
            Set Size to 10 26
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ï®„©´û™ (UserID)"
            Set Color to 13677440
            Set TextColor to clPurple
            Set Location to 77 64
            Set Size to 10 62
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5


        //AB-StoreStart
                        
        //Procedure Activate_View Returns Integer
        //    String  lsTheAppPath
        //    Integer bState rVal success
        
        //    Forward Get Msg_Activate_View to rVal
        
        ////    Send Activate Of oCrypt
        ////    Get ChilkatCrypt2UnlockComponent Of oCrypt "Crypt12345678_4CC88148VHXA" to success
        
        //    Move (GetTheAppPath(Self))                              To lsTheAppPath
        
        //    Get_Profile_String lsTheAppPath "Passw_LengthOverEight" To bState
        //    //Set Checked_State Of (chkLengthOverEight(Self))         To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_3Consecutive"    To bState
        //    //Set Checked_State Of (chk3Consecutive(Self))            To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Upper"   To bState
        //    //Set Checked_State Of (chkAtLeast1Upper(Self))           To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Lower"   To bState
        //    //Set Checked_State Of (chkAtLeast1Lower(Self))           To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Number"  To bState
        //    //Set Checked_State Of (chkAtLeast1Number(Self))          To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_AtLeast1Special" To bState
        //    //Set Checked_State Of (chkAtLeast1Special(Self))         To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_Seiriakous"      To bState
        //    //Set Checked_State Of (chkSeiriakous(Self))              To (If((bState),1,0))
        //    Get_Profile_String lsTheAppPath "Passw_Blanks"          To bState
        //    //Set Checked_State Of (chkBlanks(Self))                  To (If((bState),1,0))
        
        //    Get_Profile_String lsTheAppPath "Passw_DaysChange"      To bState
        //    //Set Value Of frmChangePasswordEveryDays Item 0          to bState
        
        //    Get_Profile_String lsTheAppPath "Passw_MaxTries"        To bState
        //    //Set Value Of frmAttempts Item 0                         to bState
        
        //    Procedure_Return rVal
        //End_Procedure
        
        //Public Class StringEncryption
        //Public Shared Function SimpleEncrypt(ByVal toEncrypt As String) As String
        //Dim tempChar As String = Nothing
        //Dim i As Integer = 0
        //
        //For i = 1 To toEncrypt.Length
        //  If System.Convert.ToInt32(toEncrypt.Chars(i - 1)) < 128 Then
        //      tempChar = System.Convert.ToString(System.Convert.ToInt32(toEncrypt.Chars(i - 1)) + 100)
        //  ElseIf System.Convert.ToInt32(toEncrypt.Chars(i - 1)) > 128 Then
        //      tempChar = System.Convert.ToString(System.Convert.ToInt32(toEncrypt.Chars(i - 1)) - 100)
        //  End If
        //  toEncrypt = toEncrypt.Remove(i - 1, 1).Insert(i - 1, (CChar(ChrW(tempChar))).ToString())
        //Next i
        //Return toEncrypt
        //
        //End Function
        //End Class
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Users


    //AB-StoreStart
            
            
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
