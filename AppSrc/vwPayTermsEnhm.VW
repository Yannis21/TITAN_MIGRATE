//AB/ Project vwPayTermsEnhm
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vwPayTermsEnhm"
//AB/         Set ProjectFileName to "vwPayTermsEnhm.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwPayTermsEnhm is a dbViewSubs
//     oOpenFile is a OpenDialog
//     frmFileName is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object frmFileName
Register_Object oOpenFile
Register_Object TextBoxSub1
Register_Object vwPayTermsEnhm


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    Open Codemast
    Open PayTerms

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Txtbox.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vwPayTermsEnhm FOR vwPayTermsEnhm

    Object vwPayTermsEnhm is a dbViewSubs

        //AB-StoreTopStart

        Set Verify_Exit_Msg         to Get_No_Confirmation
        Set Verify_Save_Msg         to Get_No_Confirmation
        Set Verify_Data_Loss_Msg    to Get_No_Confirmation


        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„ Ó®‡§ è¢û®‡£„™"
        Set Size to 62 399
        Set Location to 9 7

        //AB-DDOStart


        //AB-DDOEnd

        Object oOpenFile is a OpenDialog
            Set Location to 22 271

            //AB-StoreStart
            Set Filter_String   to 'Text Files|*.txt|All Files|*.*'
            Set Initial_Folder  to 'C:\'
            Set Filter_Index    to 1


            //AB-StoreEnd

        End_Object    // oOpenFile

        Object frmFileName is a FormSub
            Set Size to 13 321
            Set Location to 6 63
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
            Set Location to 7 5
            Set Size to 10 55
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Ñ†©òö‡ö„"
            Set Size to 14 120
            Set Location to 26 137
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                Integer iFileRetreived iMetr iRecnum isFound iStat
                Integer iID iMet iFileExists
                String  sFile sCN sLabel
                String  sCode sName

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


                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Readln  Channel 9 sCode sName
                While (NOT(Seqeof))

                    Add 1 to iMet

                    If (Trim(sCode)<>"") Begin
                        Set Label to ("Ñ§û£‚®‡©û Ó®‡§ è¢û®‡£„™... "+Trim(sName))
                        Move 0 to isFound

                        Clear PayTerms
                        Move (Trim(sCode)) to PayTerms.PayTerms_Code
                        Find Eq PayTerms By Index.1

                        Move (Found) to isFound
                        If (isFound) Reread PayTerms
                        Move (Trim(sName)) to PayTerms.PayTerms_Descr

                        Saverecord PayTerms

                        If (isFound) Unlock
                    End
                    Readln  Channel 9 sCode sName
                Loop

                Set Label to sLabel
                Send Info_Box 'Ü ú†©òö‡ö„ õúõ¶£‚§‡§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'

            End_Procedure // OnClick



            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart







        //AB-StoreEnd

    End_Object    // vwPayTermsEnhm


    //AB-StoreStart



    //AB-StoreEnd

//AB/     End_Object    // prj
