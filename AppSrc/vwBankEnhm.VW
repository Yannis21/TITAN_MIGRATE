//AB/ Project vwBankEnhm
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vwBankEnhm"
//AB/         Set ProjectFileName to "vwBankEnhm.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwBankEnhm is a dbViewSubs
//     oOpenFile is a OpenDialog
//     frmFileName is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub2 is a TextBoxSub
//     ButtonSub2 is a ButtonSub
//     TextBoxSub3 is a TextBoxSub
//     LineControlSub1 is a LineControlSub
//     ButtonSub3 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object frmFileName
Register_Object LineControlSub1
Register_Object oOpenFile
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object vwBankEnhm


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    Open Codemast
    Open Banks

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Txtbox.Sub
    Use Button.Sub
    Use Line.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vwBankEnhm FOR vwBankEnhm

    Object vwBankEnhm is a dbViewSubs

        //AB-StoreTopStart

        Set Verify_Exit_Msg         to Get_No_Confirmation
        Set Verify_Save_Msg         to Get_No_Confirmation
        Set Verify_Data_Loss_Msg    to Get_No_Confirmation


        //AB-StoreTopEnd

        Set Label to "É†òÆúÂ®†©û Ä®ÆúÂ¶¨ í®òßúùÈ§"
        Set Size to 201 399
        Set Location to 7 14

        //AB-DDOStart


        //AB-DDOEnd

        Object oOpenFile is a OpenDialog
            Set Location to 113 275

            //AB-StoreStart
            Set Filter_String   to 'Text Files|*.txt|All Files|*.*'
            Set Initial_Folder  to 'C:\'
            Set Filter_Index    to 1


            //AB-StoreEnd

        End_Object    // oOpenFile

        Object frmFileName is a FormSub
            Set Size to 13 321
            Set Location to 97 67
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure Prompt
                String  sFileName
                Integer bOpen
                Get Show_Dialog of oOpenFile To bOpen
                If bOpen Begin
                    Get File_Name of oOpenFile to sFileName
                    If (Trim(sFileName)<>'') Set Value Item 0 to sFileName
                End
            End_Procedure


            //AB-StoreEnd

        End_Object    // frmFileName

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ò®ÆúÂ¶¨"
            Set Location to 98 9
            Set Size to 10 55
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Ñ†©òö‡ö„"
            Set Size to 14 120
            Set Location to 117 137
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                Integer iFileRetreived iMetr iRecnum isFound iStat
                Integer iID iMet iFileExists
                String  sFile sCN sLabel
                String  sCode sName sOldCode sOldName

                Get Label to sLabel

                Get Value Of frmFileName Item 0 to sFile
                Move (Trim(sFile))              to sFile

                If (sFile='') Begin
                    Send Stop_Box 'Éú§ úß†¢‚•ò´ú ò®ÆúÂ¶' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End

                Get Get_File_Exists sFile       to iFileExists
                If (NOT(iFileExists)) Begin
                    Send Stop_Box "Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶" 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End


//                Direct_Input Channel 9 sFile
//                Move 0 to iMetr
//                Readln  Channel 9 sCode sName
//                While (NOT(Seqeof))

//                    Add 1 to iMet

//                    If (Trim(sCode)<>"") Begin
//                        Set Label to ("Ñ§û£‚®‡©û ´®·ßúùò™... "+Trim(sName))
//                        Move 0 to isFound

//                        Clear Banks
//                        Move (Trim(sCode)) to Banks.Bank_ID
//                        Find GE Banks By Index.2

//                        Move (Banks.Bank_ID=(Trim(sCode))) to isFound

//                        If (isFound) Reread Banks
//                        Move (Trim(sName)) to Banks.Bank_Name

//                        Clear Codemast
//                        Move (Trim(sName)) to Codemast.Description
//                        Find GE Codemast By Index.3
//                        If ((Found) And (Trim(sName)=Trim(Codemast.Description)) And (Trim(Codemast.Type)="BANK")) Move (Trim(Codemast.Code)) to Banks.Bank_Older_Code
//                        Else Move "" to Banks.Bank_Older_Code

//                        Saverecord Banks

//                        If (isFound) Unlock
//                    End
//                    Readln  Channel 9 sCode sName
//                Loop

                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Readln  Channel 9 sCode sName
                While (NOT(Seqeof))

                    Add 1 to iMet

                    If (Trim(sCode)<>"") Begin
                        Set Label to ("Ñ§û£‚®‡©û ´®·ßúùò™... "+Trim(sName))
                        Move 0 to isFound

                        Move "" to sOldCOde
                        Move "" to sOldName

                        Clear Codemast
                        Move sName to Codemast.Description
                        Find GE Codemast By Index.3
                        If ((Found) And (sName=Codemast.Description) And (Codemast.Type="BANK")) Begin
                            Move (Trim(Codemast.Code))          to sOldCode
                            Move (Trim(Codemast.Description))   to sOldName
                        End

                        If (Trim(sOldCode)<>"") Begin
                            Clear Banks
                            Move (Trim(sOldCode)) to Banks.Bank_Older_Code
                            Find GE Banks By Index.1
                            If ((Found) And (sOldCode=Banks.Bank_Older_Code)) Begin
                                Reread Banks
                                Move (Trim(sCode))      to Banks.Bank_ID
                                Move (Trim(sName))      to Banks.Bank_Name
                                Move (Trim(sOldName))   to Banks.Bank_Older_Desc
                                Saverecord Banks
                                Unlock
                            End
                            Else Begin
                                Clear Banks
                                Move (Trim(sOldCode))   to Banks.Bank_Older_Code
                                Move (Trim(sOldName))   to Banks.Bank_Older_Desc
                                Move (Trim(sCode))      to Banks.Bank_ID
                                Move (Trim(sName))      to Banks.Bank_Name
                                Saverecord Banks
                            End
                        End
                        Else Begin
                            Clear Banks
                            Move (Trim(sCode)) to Banks.Bank_ID
                            Find GE Banks By index.2
                            If ((Found) And (Banks.Bank_ID=sCode)) Begin
                               Reread Banks
                               Move (Trim(sName)) to Banks.Bank_Name
                               Saverecord banks
                               Unlock
                            End
                            Else Begin
                                Clear banks
                                Move (Trim(sCode)) to Banks.Bank_ID
                                Move (Trim(sName)) to Banks.Bank_Name
                                Saverecord banks
                            End
                            If (isFound) Reread Banks
                            Move (Trim(sName)) to Banks.Bank_Name
                            Saverecord Banks
                            If (isFound) Unlock
                        End
                    End
                    Readln  Channel 9 sCode sName
                Loop


                Set Label to sLabel
                Send Info_Box 'Ü ú†©òö‡ö„ õúõ¶£‚§‡§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'

            End_Procedure // OnClick





            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ä®Æ†°„ Ñ†©òö‡ö„ òß¶ (Æú†®Êö®ò≠¶) ASCII ò®ÆúÂ¶¨"
            Set Auto_Size_State to FALSE
            Set TextColor to clPurple
            Set Location to 82 9
            Set Size to 13 179
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object ButtonSub2 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Ñ†©òö‡ö„ òß¶ Ñ©‡´ú®†°¶Á™ èÂ§ò°ú™ (Codemast)"
            Set Size to 20 271
            Set Location to 9 62
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                Integer iFileRetreived iMetr iRecnum isFound iStat
                Integer iID iMet iFileExists iYes iCount1 iCount2 iCount3
                String  sFile sCN sLabel
                String  sCode sName

                Get Label to sLabel

                Move 0 to iCount1
                Move 0 to iCount2
                Move 0 to iCount3

                Get YesNo_Box "åò ú†©òÆü¶Á§ ¶† ´®·ßúùú™ òß¶ ´¶¨™ ú©‡´ú®†°¶Á™ ßÂ§ò°ú™ ?" to iYes
                If (iYes=MBR_NO) Procedure_Return

                Clear Codemast
                Move "BANK" to Codemast.type
                Find GE Codemast By Index.1
                While ((Found) And (Codemast.type="BANK"))
                    Move (Trim(Codemast.Code))          to sCode
                    Move (Trim(Codemast.Description))   to sName

                    Set Label to ("Ñ§û£‚®‡©û ´®·ßúùò™... "+Trim(sName))

                    Add 1 to iCount1

                    If (Trim(sCode)<>"") Begin
                        Move 0 to isFound

                        Clear Banks
                        Move (Trim(sCode)) to Banks.Bank_Older_Code
                        Find GE Banks By Index.1

                        Move (Banks.Bank_Older_Code=(Trim(sCode))) to isFound

                        If (NOT(isFound)) Begin
                            Clear Banks
                            Move (Trim(sCode)) to Banks.Bank_Older_Code
                            Move (Trim(sName)) to Banks.Bank_Older_Desc
                            Saverecord Banks
                            Add 1 to iCount3
                        End
                        Else Add 1 to iCount2
                    End
                    Find GT Codemast By Index.1
                Loop

                String s1
                Move "" to s1
                Append s1 "Å®‚üû°ò§ ©ú ©Á§¶¢¶ " (String(iCount1)) " úöö®ò≠È§\n" (String(iCount2)) " ¨ßò®°´‚™ °ò† " (String(iCount3)) " §‚ú™ úöö®ò≠‚™"

                Set Label to sLabel
                Send Info_Box s1 'è¢û®¶≠¶®Âò'

            End_Procedure // OnClick

            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "áò ú†©òÆü¶Á§ £Ê§¶ ¶† §‚ú™ úöö®ò≠‚™ ´‡§ ¶ß¶Â‡§ ¶ °‡õ†°Ê™ ©´¶¨™ ú©‡´ú®†°¶Á™ ßÂ§ò°ú™ õú§ üò ¨ß·®Æú† ©´¶ ò®ÆúÂ¶ ´®òßúùÈ§"
            Set Auto_Size_State to FALSE
            Set TextColor to 7039851
            Set Location to 31 89
            Set Size to 18 226
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object LineControlSub1 is a LineControlSub
            Set Line_Thickness to 5
            Set Size to 2 395
            Set Location to 62 0
        End_Object    // LineControlSub1

        Object ButtonSub3 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "ãûõú§†©£Ê™ ò®ÆúÂ¶¨ í®òßúùÈ§"
            Set Size to 14 120
            Set Location to 162 137
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                String sLabel
                Integer iyes
                Get label to sLabel
                Get YesNo_Box "§ò ß®¶Æ‡®„©‡ £ú ´¶§ £ûõú§†©£Ê ´¶¨ ò®ÆúÂ¶¨ ´®òßúùÈ§ ?" to iYes
                If (iYes=MBR_NO) Procedure_Return
                Clear Banks
                Find GE Banks.Recnum
                While (Found)
                    Set Label to (String(Banks.Recnum))
                    Delete Banks
                    Find GT Banks.Recnum
                Loop
                Set Label to sLabel
            End_Procedure // OnClick

            //AB-StoreEnd

        End_Object    // ButtonSub3


        //AB-StoreStart







        //AB-StoreEnd

    End_Object    // vwBankEnhm


    //AB-StoreStart



    //AB-StoreEnd

//AB/     End_Object    // prj
