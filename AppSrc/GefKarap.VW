//AB/ Project GefKarap
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GefKarap"
//AB/         Set ProjectFileName to "GefKarap.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   GefKarap is a dbViewSubS
//     Ctypkin_DD is a Ctypkin_DataDictionary
//     Country_DD is a Country_DataDictionary
//     Towns_DD is a Towns_DataDictionary
//     Cities_DD is a Cities_DataDictionary
//     Payresp_DD is a Payresp_DataDictionary
//     Constrct_DD is a Constrct_DataDictionary
//     Salesmen_DD is a Salesmen_DataDictionary
//     Mhxanik_DD is a Mhxanik_DataDictionary
//     Areas_DD is a Areas_DataDictionary
//     Btypkin_DD is a Btypkin_DataDictionary
//     Baxiokat_DD is a Baxiokat_DataDictionary
//     Barticl_DD is a Barticl_DataDictionary
//     Bsum_DD is a Bsum_DataDictionary
//     Baxio_DD is a Baxio_DataDictionary
//     Syscurxr_DD is a Syscurxr_DataDictionary
//     Clients_DD is a Clients_DataDictionary
//     Cn_DD is a Cn_DataDictionary
//     Tperga_DD is a Tperga_DataDictionary
//     Bmove_DD is a Bmove_DataDictionary
//     Cmoves_DD is a Cmoves_DataDictionary
//     Btnordh_DD is a Btnordh_DataDictionary
//     Btnordd_DD is a Btnordd_DataDictionary
//     oOpenFile is a OpenDialog
//     frmFileName is a FormSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//       Radio3 is a RadioSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub

// Register all objects
Register_Object Areas_DD
Register_Object Barticl_DD
Register_Object Baxio_DD
Register_Object Baxiokat_DD
Register_Object Bmove_DD
Register_Object Bsum_DD
Register_Object Btnordd_DD
Register_Object Btnordh_DD
Register_Object Btypkin_DD
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cmoves_DD
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object frmFileName
Register_Object GefKarap
Register_Object Mhxanik_DD
Register_Object oOpenFile
Register_Object Payresp_DD
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object RadioGroupSub1
Register_Object Salesmen_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object Towns_DD
Register_Object Tperga_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    Use sl041.sl

    Use bpEnCmv3.dg // Business Process Finilizing Barticle

    Use slNomism.sl
    Use Globals.Inc
    Use sl033.sl
    Use r044.rv
    Use v037.vw
    Use sl100.sl
    Use sl036.sl
    use r36.rv
    Use baxio.dd
    Use Tperga.dd
    Use BtnOrdH.DD
    Use BtnOrdD.DD
    Use Mhxanik.DD
    Use Constrct.dd
    Use Salesmen.dd

    //Use bp2ndCop.dg
    //Use bpACopen.dg


    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Button.Sub
    Use Txtbox.Sub
    Use Rgroup.Sub
    Use Radio.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_GefKarap FOR ;
    ;
    Object GefKarap is a dbViewSubS

        //AB-StoreTopStart

        Property Integer piLathos   Public   0
        Property String  psModule   Public '01'
        Property Integer piWhat     Public   0

        Open Sysrecc
        Open SysCurXR
        Open Year


        //////////////////////////////////////////////////////
        // DataDictionary Structure needed for making Barticle
        //////////////////////////////////////////////////////

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Object Payresp_DD is a Payresp_DataDictionary
        End_Object    // Payresp_DD

        Object Constrct_DD is a Constrct_DataDictionary
        End_Object    // Constrct_DD

        Object Salesmen_DD is a Salesmen_DataDictionary
        End_Object    // Salesmen_DD

        Object Mhxanik_DD is a Mhxanik_DataDictionary
        End_Object    // Mhxanik_DD

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Object Btypkin_DD is a Btypkin_DataDictionary
            Set Foreign_Field_Options DD_KEYFIELD           to DD_Clear_Field_Options DD_FindReq
            Set Foreign_Field_Options DD_INDEXFIELD         to DD_Clear_Field_Options DD_FindReq
            Set Field_Options Field Btypkin.Btypkin_Code    to DD_Clear_Field_Options DD_Required
        End_Object    // Btypkin_DD

        Object Baxiokat_DD is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Barticl_DD is a Barticl_DataDictionary
            Set DDO_Server to (Btypkin_DD(self))
        End_Object    // Barticl_DD

        Object Bsum_DD is a Bsum_DataDictionary
            Set DDO_Server to (Barticl_DD(self))
            Set Constrain_File to Barticl.File_Number
        End_Object    // Bsum_DD

        Object Baxio_DD is a Baxio_DataDictionary
            Set DDO_Server to (Baxiokat_DD(self))
            Set allow_foreign_new_save_state to true
        End_Object    // Baxio_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
            Set DDO_Server to (Payresp_DD(self))
            Set DDO_Server to (Areas_DD(self))
        End_Object    // Clients_DD

        Object Cn_DD is a Cn_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Constrct_DD(self))
            Set DDO_Server to (Salesmen_DD(self))
            Set DDO_Server to (Mhxanik_DD(self))
        End_Object    // Cn_DD

        Object Tperga_DD is a Tperga_DataDictionary
            Set DDO_Server to (CN_DD(self))
            Set DDO_Server to (Baxiokat_DD(self))
            Set Constrain_File to CN.File_Number
        End_Object    // Btnordd_DD

        Object Bmove_DD is a Bmove_DataDictionary
            Set DDO_Server to (Barticl_DD(self))
            Set DDO_Server to (Baxio_DD(self))
            Set Constrain_File to Barticl.File_Number
        End_Object    // Bmove_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
            //Set Constrain_File to Clients.File_Number
            Set piFromBP to True


            Procedure Update
                String  sNomisma
                Date    dHmnia
                Move Cmoves.Cmoves_Hmnia                to  dHmnia
                If (dHmnia='') Sysdate4                     Cmoves.Cmoves_Hmnia
                Move Cmoves.Cmoves_Sc_Code2             to  sNomisma
                Move (Trim(sNomisma))                   to  sNomisma
                If (sNomisma='') Move SysCurXr.C_Code0  to  Cmoves.Cmoves_Sc_Code2

                Send Compute_all_Fields 1

                Forward Send Update

                If (Ctypkin.Open_Item='1') Begin
                    If (Cmoves.Axia_Pros_Sysx=0) ;
                        Move (Abs(Cmoves.Cmoves_Axia))              to Cmoves.Axia_Pros_Sysx
                    Move (Cmoves.Axia_Pros_Sysx-Cmoves.Axia_Sysxet) to Cmoves.Axia_Ypol_Sysx
                    Move (Cmoves.Axia_Ypol_Sysx<>0)                 to Cmoves.Flag_Ypol

                    If ((Cmoves.Cmoves_X0<>0) And ((Cmoves.Cmoves_P0=0))) Begin
                        Move 1                          to Cmoves.Flag_Copen
                        If (Cmoves.Cmoves_X0<0) Move 2  to Cmoves.Flag_Copen
                    End
                    Else If ((Cmoves.Cmoves_P0<>0) And ((Cmoves.Cmoves_X0=0))) Begin
                        Move 2                          to Cmoves.Flag_Copen
                        If (Cmoves.Cmoves_P0<0) Move 1  to Cmoves.Flag_Copen
                    End
                    Else Move 0 to Cmoves.Flag_Copen
                End
            End_Procedure

            Procedure Backout
                Forward Send Backout
                Send Compute_all_Fields (-1)
            End_Procedure

            Procedure Compute_all_Fields Number aiSign
                Integer iErr isClosed iInt iWithDeletion iClient iSign
                Integer iOneWflag iiPartlNO iExitFlag iMustSaveWCmoves iMustSaveClientYpoloipa
                Integer iMustSaveCmoves iMustSaveClient iMyf iInt2 iOneCflag
                Integer iMaxDays iAnameneiSxetiko iExeiSxetika iPartlTimol imustsaveofeilh

                String  ssPtypparDescr ssSeiraDescr sWCmovesRecr sRecr2 ssPtypparDescrShort
                String  sRecr sParticle_CmovesRecr sCtypkinRecr sCn_Code
                String  sClientRecr sCmovesRecr sNomisma sFlag sWtypkinRecr
                String  sWitemxRecr sWaxRecr sClientID sPerigrafh sParticle_WCmovesRecr

                Number  nVatam nGenAm nExtra nPayam nDiscAm nIsotimia
                Number  nTotAmBd nTotDiscPms nTotDiscPC nTotAmAd
                Number  nAthr1 nAthr2 nAthr3 nAthr4 nAthr5 nAthr6
                Number  nPoso nXre nPis nMyf nPosothta nAthr7 nAthr8

                Date    dHmnia dLastPis dLastXre dLastXreParast dLastPisParast
                String sModule

                Move '01' to sModule

                Move 1 to iSign

                If ((Cmoves.Module_From=sModule) And (Cmoves.Barticl_Recr='') And (Cmoves.Partl_Recr=''))  Begin

                    Move Ctypkin.Ctypkin_Recr   to sCtypkinRecr
                    move clients.client_recr    to sclientrecr
                    Move Cmoves.Cmoves_sc_code2 to sNomisma
                    Move (Trim(sNomisma))       to sNomisma

                    If (Trim(sCtypkinRecr)='') Begin
                        send stop_box '-εν ??ετε επιλ?ξει τύπο κ-νη?η?' ("error 1011 vwcmoves  "+'?ληρο?ορ-α')
                        Procedure_Return
                    End
                    Else If (Trim(sClientRecr)='') Begin
                            if (smodule='01') send stop_box '-εν ??ετε επιλ?ξει ?ελ-τη'      ("error 1012 vwcmoves  "+'?ληρο?ορ-α')
                        else if (smodule='02') send stop_box '-εν ??ετε επιλ?ξει ?ρομηθευτ?'  ("error 1013 vwcmoves  "+'?ληρο?ορ-α')
                        Procedure_Return
                    End
                    Else If (Trim(sNomisma)='') Begin
                        send stop_box '-εν ??ετε επιλ?ξει =ομι?μα' ("error 1014 vwcmoves  "+'?ληρο?ορ-α')
                        Procedure_Return
                    End


                    Move Cmoves.Cmoves_Hmnia    to dHmnia
                    Move Cmoves.Cmoves_Axia     to nPoso

                    Move 0 to iOneCflag
                    Move 0 to iMustSaveCmoves
                    Move 0 to iMustSaveClient
                    Move 0 to iMustSaveClientYpoloipa
                    Move 0 to iAnameneiSxetiko
                    Move 0 to imustsaveofeilh
                    Move 0 to iMaxDays

                    Clear Cflagkin
                    Move sCtypkinRecr           to Cflagkin.Ctypkin_Recr
                    Find Gt Cflagkin By Index.5 // Cflagkin:Index.5:Ctypkin_Recr+Flag_Numeric+Cflagkin_Recr
                    While ((Found=1) And (sCtypkinRecr=Cflagkin.Ctypkin_Recr))
                        Move 1 to iOneCflag
                        Move Cflagkin.Cflagkin_Flag to sFlag
                        Move (Trim(sFlag)) to sFlag

                        Case Begin
                            Case (sFlag='1')
                                Move 1 to iMustSaveCmoves
                            Case Break
                            Case (sFlag='2') // Antistrofh Proshmou
                                Move (nPoso*iSign*(-1)) to nPoso
                            Case Break
                            Case (sFlag='3') // Epireazei xreoseis
                                Move (nPoso*iSign)  to nXre
                                Move 0              to nPis
                            Case Break
                            Case (sFlag='4') // Epireazei pistoseis
                                Move (nPoso*iSign)  to nPis
                                Move 0              to nXre
                            Case Break
                            Case (sFlag='5') // Epireazei Hmeromhnies
                                Move 1 to iMustSaveClient
                                If (nXre<>0) Begin
                                    Move dHmnia to dLastXre
                                    Move dHmnia to dLastXreParast
                                    Move ''     to dLastPis
                                    Move ''     to dLastPisParast
                                End
                                Else If (nPis<>0) Begin
                                    Move dHmnia to dLastPis
                                    Move dHmnia to dLastPisParast
                                    Move ''     to dLastXre
                                    Move ''     to dLastXreParast
                                End
                            Case Break
                            Case (sFlag='6') // Epireazei Hmeromhnia teleytaias paraggelias
                            Case Break
                            Case (sFlag='7') // Epireazei ekkremh axiografa
                            Case Break
                            Case (sFlag='8') // Epireazei Diamartyrhmena
                            Case Break
                            Case (sFlag='9') // Epireazei Tziro
                            Case Break
                            Case (sFlag='10') // Epireazei Apografh xreoshs
                            Case Break
                            Case (sFlag='11') // Epireazei Apografh Pistosh
                            Case Break
                            Case (sFlag='12') // Symmetoxh se MYF (Plythos)
                                Move iSign to iMyf
                            Case Break
                            Case (sFlag='13') // Symmetoxh se MYF (Axia)
                                Move (nPoso*iSign)  to nMyf
                            Case Break
                            Case (sFlag='14') // Axies se Xeno sma
                                // Blepe sxetika erothmata sthn arxh ths procedure
                            Case Break
                            Case (sFlag='15') // Aytomath dhmiourgia axiografou
                            Case Break
                            Case (sFlag='16') // Allagh XreoPistoshs me antistrofh proshmou
                                If (nXre<>0) Begin
                                    Move (nXre*(-1))    to nPis
                                    Move 0              to nXre
                                End
                                Else If (nPis<>0) Begin
                                    Move (nPis*(-1))    to nXre
                                    Move 0              to nPis
                                End
                            Case Break
                            Case (sFlag='17') // Afairei apo Myf (akyrotika)
                                // Thelei exhghsh ti shmainei 'afairei' ?
                                // apo posothta? apo axia? apo allou?
                            Case Break
                            Case (sFlag='23') // Athroisths 1
                                Move (nPoso*iSign) to nAthr1
                            Case Break
                            Case (sFlag='24') // Athroisths 2
                                Move (nPoso*iSign) to nAthr2
                            Case Break
                            Case (sFlag='25') // Athroisths 3
                                Move (nPoso*iSign) to nAthr3
                            Case Break
                            Case (sFlag='26') // Athroisths 4
                                Move (nPoso*iSign) to nAthr4
                            Case Break
                            Case (sFlag='27') // Athroisths 5
                                Move (nPoso*iSign) to nAthr5
                            Case Break
                            Case (sFlag='28') // Athroisths 6
                                Move (nPoso*iSign) to nAthr6
                            Case Break
                            Case (sFlag='29') // Athroisths 7
                                Move (nPoso*iSign) to nAthr7
                            Case Break
                            Case (sFlag='30') // Athroisths 8
                                Move (nPoso*iSign) to nAthr8
                            Case Break
                            Case (sFlag='50') // Anamenei sxetika
                                Move 1 to iAnameneiSxetiko
                                Move Ctypkin.Max_Days_Sx_Par to iMaxDays
                            Case Break
                            Case (sFlag='66') // ephreazei synolikh ofeilh
                                Move 1 to iMustSaveofeilh
                            Case Break
                            Case (sFlag='99') // Enhmeronei Ypoloipa
                                Move 1 to iMustSaveClientYpoloipa
                            Case Break

                        Case End

                        Find Gt Cflagkin By Index.5 // Cflagkin:Index.5:Ctypkin_Recr+Flag_Numeric+Cflagkin_Recr
                    Loop

                    If ((iOneCflag) And (iMustSaveCmoves)) Begin
                        If (nXre<>0) Begin
                            Move nXre to Cmoves.Cmoves_Axia
                            If (aiSign=1) Begin
                                Add (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code0,dHmnia,nIsotimia))  to Cmoves.Cmoves_x0
                                Add (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code00,dHmnia,nIsotimia)) to Cmoves.Cmoves_x00
                                Add (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Coder,dHmnia,nIsotimia))  to Cmoves.Cmoves_x1
                                Add nXre to Cmoves.Cmoves_x2
                            End
                            Else Begin
                                Sub (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code0,dHmnia,nIsotimia))  From Cmoves.Cmoves_x0
                                Sub (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code00,dHmnia,nIsotimia)) From Cmoves.Cmoves_x00
                                Sub (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Coder,dHmnia,nIsotimia))  From Cmoves.Cmoves_x1
                                Sub nXre From Cmoves.Cmoves_x2
                            End
                        End
                        Else If (nPis<>0) Begin
                            Move nPis to Cmoves.Cmoves_Axia
                            If (aiSign=1) Begin
                                Add (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code0,dHmnia,nIsotimia))  to Cmoves.Cmoves_p0
                                Add (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code00,dHmnia,nIsotimia)) to Cmoves.Cmoves_p00
                                Add (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Coder,dHmnia,nIsotimia))  to Cmoves.Cmoves_p1
                                Add nPis to Cmoves.Cmoves_p2
                            End
                            Else Begin
                                Sub (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code0,dHmnia,nIsotimia))  From Cmoves.Cmoves_p0
                                Sub (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code00,dHmnia,nIsotimia)) From Cmoves.Cmoves_p00
                                Sub (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Coder,dHmnia,nIsotimia))  From Cmoves.Cmoves_p1
                                Sub nPis From Cmoves.Cmoves_p2
                            End
                        End
                        Move (Trim(sModule)) to Cmoves.Module_From
                        If (Trim(sClientRecr)<>'') Begin
                            If (iMustSaveClientYpoloipa =1)  Move '1' to Cmoves.Enhm_Ypol_Pel
                            If (iMustSaveClient         =1)  Move '1' to Cmoves.Enhm_Hmnies_Pel
                            If (iMustSaveofeilh         =1)  Move '1' to Cmoves.Enhm_ofeilh
                        End
                        Else Begin
                                 if (smodule='01') send stop_box '-εν ??ετε επιλ?ξει ?ελατη'       ("error 1015 vwcmoves  "+'?ληρο?ορ-α')
                            else if (smodule='02') send stop_box '-εν ??ετε επιλ?ξει ?ρομηθευτ?'  ("error 1016 vwcmoves  "+'?ληρο?ορ-α')
                            Procedure_Return
                        End
                    End
                End
            End_procedure
        End_Object    // Cmoves_DD

        Object Btnordh_DD is a Btnordh_DataDictionary
            Set DDO_Server to (Cn_DD(self))
            Set Constrain_File to Cn.File_Number
            Send DefineAllExtendedFields
        End_Object    // Btnordh_DD

        Object Btnordd_DD is a Btnordd_DataDictionary
            Set DDO_Server to (Btnordh_DD(self))
            Set Constrain_File to Btnordh.File_Number
        End_Object    // Btnordd_DD

        //////////////////////////////////////////////////////
        // DataDictionary Structure needed for making Barticle
        //////////////////////////////////////////////////////


        //AB-StoreTopEnd

        Set Label to "ƒ£ ¦¬¨ε „¨­ι¤ - ‚β­¬¨ª ‰€€€‘"
        Set Size to 167 451
        Set Location to 4 6

        //AB-DDOStart


        //AB-DDOEnd

        Object oOpenFile is a OpenDialog
            Set Location to 2 407

            //AB-StoreStart
            Set Filter_String   to 'Text Files|*.txt|All Files|*.*'
            Set Initial_Folder  to 'C:\VDF6\Develop\Empor'
            Set Filter_Index    to 1

            //AB-StoreEnd

        End_Object    // oOpenFile

        Object frmFileName is a FormSub
            Set Size to 13 321
            Set Location to 6 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn

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

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "„§¥¨©ε"
            Set Size to 14 218
            Set Location to 131 114

            //AB-StoreStart

            Procedure OnClick
                String  sFile sFile2 sLabel
                Integer iFileExists iCheckAfm
                Get label to slabel
                Set Enabled_State to False

                Move Sysfile.Check_Afm to iCheckAfm

                If (iCheckAFM) Begin
                    Reread Sysfile
                    Move 0 to Sysfile.Check_Afm
                    Saverecord Sysfile
                    Unlock
                End

                // Mhdenismos tou ASCII kathe fora pou trexei
                Direct_Output Channel 9 'C:\Karapanos_Kinhseis_Error.txt'
                Close_Output Channel 9
                //

                Get Value Of frmFileName item 0 to sFile
                Move (Trim(UpperCase(sFile)))   to sFile
                If (sFile<>'') Begin
                    Get Get_File_Exists sFile   To iFileExists
                    If (NOT(iFileExists)) Begin
                        Send Stop_Box "ƒ¤ ™¨β΅ «¦ ¨®ε¦." "‘­αΆ£ 1001"
                        Set Enabled_State to True
                        Procedure_Return
                    End

                         If (piWhat(Self)=0) Send Make_Payresp_Record   sFile
                    Else If (piWhat(Self)=1) Send Read_Pelates          sFile
                    Else If (piWhat(Self)=2) Send Read_Erga             sFile
                    Else If (piWhat(Self)=3) Send Read_Deop             sFile
                    Else If (piWhat(Self)=4) Send Read_Kinhseis         sFile

            //        Move (fsReturnFileFromPath(sFile)) to sFile2

            //             If (sFile2='PELATES.TXT' ) Send Read_Pelates   sFile
            //        Else If (sFile2='PELATES1.TXT') Send Read_Pelates   sFile
            //        Else If (sFile2='KINHSEIS.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINHSEIS1.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINHSEIS2.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINHSEIS3.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINHSEIS4.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINH40.TXT')    Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINHSEIS5.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='KINHSEIS6.TXT') Send Read_Kinhseis  sFile
            //        Else If (sFile2='PELWRK.TXT'  ) Send Read_Erga      sFile
            //        Else If (sFile2='PELWRK1.TXT' ) Send Read_Erga      sFile
            //        Else If (sFile2='PELDEOP.TXT' ) Send Read_Deop      sFile
            //        Else If (sFile2='PELDEOP1.TXT') Send Read_Deop      sFile
            //        Else If (sFile2='PELDEOP2.TXT') Send Read_Deop      sFile
            //        Else If (sFile2='PELDEOP3.TXT') Send Read_Deop      sFile
            //        Else If (sFile2='PELDEOP4.TXT') Send Read_Deop      sFile
            //        Else If (sFile2='VISA.TXT'    ) Send Make_Payresp_Record   sFile

                    Send Info_Box "† ƒ › ΅©ε «Άεΰ©" "Ά¨¦­¦¨ε"
                End
                Else Send Stop_Box 'ƒ¤ §¨¦©› ¦¨ε©« §¦¬ ™¨ε©΅« «¦ ¨®ε¦' '‘­αΆ£ 1002'

                If (iCheckAFM) Begin
                    Reread Sysfile
                    Move 1 to Sysfile.Check_Afm
                    Saverecord Sysfile
                    Unlock
                End

                Set Label Of ButtonSub1 to sLabel
                Set Enabled_State to True
            End_Procedure // OnClick


            Function Make_Payresp   String asArmodios       ;
                                    String asArmodiosAdd    ;
                                    String asArmodiosLoipa  ;
                                    String asAFM            ;
                                    String asDOY            ;
                                    String asPrespCode      ;
                                    Returns String
                Integer isFound iLen
                String  sID

                Move 0  to isFound
                Move '' to sID

                Move (Trim(asArmodios     ))    to asArmodios
                Move (Trim(asArmodiosAdd  ))    to asArmodiosAdd
                Move (Trim(asArmodiosLoipa))    to asArmodiosLoipa
                Move (Trim(asAFM          ))    to asAFM
                Move (Trim(asDOY          ))    to asDOY
                Move (Trim(asPrespCode    ))    to asPrespCode

                Move (Length(asArmodiosAdd))    to iLen

                // 1. Elegxos an yparxei bash kodikou
                //    Teleytaio pedio arxeio Pelates.txt
                //    21/12/2002
                Clear Payresp
                Move asPrespCode to Payresp.Presp_Codem
                Find Ge Payresp By Index.8 // Presp_Codem+Presp_ID
                If ((Found=1) And (Payresp.Presp_Codem=asPrespCode)) ;
                    Function_Return Payresp.Presp_ID

                // 2. An den vrethei elegxos bash eponymias
                Clear Payresp
                Move asArmodios to Payresp.Presp_Name
                Find Gt Payresp by Index.3 // Presp_Name+Presp_Recr
                While ((Found) And (Payresp.Presp_Name=asArmodios) And (isFound=0))
                    If ((Left(Payresp.Presp_Address,iLen))=asArmodiosAdd) Begin
                        Move 1                  to isFound
                        Move Payresp.Presp_ID   to sID
                    End
                    Find Gt Payresp by Index.3 // Presp_Name+Presp_Recr
                Loop

                If (isFound) Function_Return sID

                // Make the new record
                Clear Payresp
                Move (Sysrecc.Payresp_Rec0+1)   to Payresp.Presp_Rec0
                Move (Sysrecc.Payresp_Rec0+1)   to Sysrecc.Payresp_Rec0
                Saverecord Sysrecc
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                 (Trim(String(payresp.presp_Rec0))))));
                                                to payresp.presp_Recr

                Get fsgCode_With_Zeroes Payresp.Presp_Rec0      ;
                                        Sysfile.Client_Digits   ;
                                        SysCurXr.Company_Code   ;
                                        SysCurXr.Branch_Code    ;
                                                to Payresp.Presp_ID

                Move Payresp.Presp_ID           to sID

                Clear Year
                Move Syscurxr.Branch_Code       to Year.Branch_Code
                Move Syscurxr.Company_Code      to Year.Company_Code
                Move Syscurxr.Year_Year         to Year.Year_Year
                Find Eq Year By Index.1
                If (Found=1) Begin
                    Move Year.Payresp_Plafon    to Payresp.Plafon
                    Move Year.Payresp_Ofeilh    to Payresp.Orio_Syn_Ofeilh
                End

                Move SysCurXr.Company_Code      to Payresp.Company_Code
                Move SysCurXr.Branch_Code       to Payresp.Branch_Code
                Move SysCurXr.Year_Year         to Payresp.Year_Year
                Move Syscurxr.Beto_Site         to Payresp.Presp_Sitew
                Move Payresp.Presp_Rec0         to Payresp.Presp_Sn
                Move Payresp.Presp_Id           to Payresp.Presp_Repm
                Move '1'                        to Payresp.Presp_Active

                Move asArmodios                 to Payresp.Presp_Name
                Move asArmodiosAdd              to Payresp.Presp_Address
                Move asArmodiosLoipa            to Payresp.Presp_Phone
                Move asAFM                      to Payresp.Presp_AFM
                //Move asDOY                      to Payresp.Presp_DOY
                Move asPrespCode                to Payresp.Presp_Codem

                Saverecord Payresp
                Function_Return sID
            End_Function // Make_Payresp

            Procedure Make_Payresp_Record String asFile
                String  sLine sPrespcode  sPrespName sID
                Integer iInt1
                Direct_Input Channel 1 asFile

                Readln Channel 1 sLine

                While (Not(Seqeof))
                    Move (Mid(sLine,06, 01  ))  to sPrespCode
                    Move (Mid(sLine,25, 12  ))  to sPrespName

                    Move (Trim(sPrespCode))     to sPrespCode
                    Move (Trim(sPrespName))     to sPrespName

                    Add 1                       to iInt1
                    Set Label Of ButtonSub1     to (String(iInt1))

                    If (sPrespName='') Goto Read_Presp_Next

                    Clear Payresp
                    Move sPrespCode to Payresp.Presp_Codem
                    Find Ge Payresp By Index.8 // Presp_Codem+Presp_ID
                    If ((Found=1) And (Payresp.Presp_Codem=sPrespCode)) Goto Read_Presp_Next

                    // Make the new record
                    Clear Payresp
                    Move sPrespCode to Payresp.Presp_Codem
                    Move sPrespName to Payresp.Presp_Name

                    Move (Sysrecc.Payresp_Rec0+1)   to Payresp.Presp_Rec0
                    Move (Sysrecc.Payresp_Rec0+1)   to Sysrecc.Payresp_Rec0
                    Saverecord Sysrecc
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                    (Trim(String(payresp.presp_Rec0))))));
                                                    to payresp.presp_Recr

                    Get fsgCode_With_Zeroes Payresp.Presp_Rec0      ;
                                            Sysfile.Client_Digits   ;
                                            SysCurXr.Company_Code   ;
                                            SysCurXr.Branch_Code    ;
                                                    to Payresp.Presp_ID

                    Move Payresp.Presp_ID           to sID

                    Clear Year
                    Move Syscurxr.Branch_Code       to Year.Branch_Code
                    Move Syscurxr.Company_Code      to Year.Company_Code
                    Move Syscurxr.Year_Year         to Year.Year_Year
                    Find Eq Year By Index.1
                    If (Found=1) Begin
                        Move Year.Payresp_Plafon    to Payresp.Plafon
                        Move Year.Payresp_Ofeilh    to Payresp.Orio_Syn_Ofeilh
                    End

                    Move SysCurXr.Company_Code      to Payresp.Company_Code
                    Move SysCurXr.Branch_Code       to Payresp.Branch_Code
                    Move SysCurXr.Year_Year         to Payresp.Year_Year
                    Move Syscurxr.Beto_Site         to Payresp.Presp_Sitew
                    Move Payresp.Presp_Rec0         to Payresp.Presp_Sn
                    Move Payresp.Presp_Id           to Payresp.Presp_Repm
                    Move '1'                        to Payresp.Presp_Active

                    Saverecord Payresp

                    Read_Presp_Next:
                    Readln Channel 1 sLine
                Loop
                Set Label Of ButtonSub1 to ''
                Close_output Channel 1
            End_Procedure


            Procedure Read_Deop String asFile

                Set_Argument_Size 1024
                // €¤¥α¨««ª ‹«™Ά«βª
                String  sLine sToAnsi sClientID
                Integer iLathos iInt1
                //String  sVorderbt sVitem sDeopDate sVclientid svcncode svitem sarxhdate

                /////////////////////////

                // ‹«™Ά«βª §›εΰ¤
                Local String  sDeop sKodPel sKodErgo sEidos
                Local String  sOroiPlhromhs sSxolia sSynPlyn sCNCode sSN
                Number  nM3 nTimhM3 iElleiph  iPagioAntlias
                Integer iHmeresApoTim iZonh itropoi
                Date    dHmniaEkdoshs dEnarxh dLhxh

                Move 0 to iInt1

                Append_Output Channel 9 'C:\Karapanos_Kinhseis_Error.txt'

                Direct_Input Channel 1 asFile
                Readln Channel 1 sLine
                While (Not(Seqeof))

                    Move (Mid(sLine,10, 01  ))  to sDeop
                    Move (Mid(sLine,05, 11  ))  to sKodPel
                    Move (Mid(sLine,05, 16  ))  to sKodErgo
                    Move (Mid(sLine,08, 21  ))  to sEidos
                    Move (Mid(sLine,08, 29  ))  to nM3
                    Move (Mid(sLine,10, 37  ))  to nTimhM3
                    Move (Mid(sLine,02, 47  ))  to iHmeresApoTim
                    Move (Mid(sLine,03, 49  ))  to sOroiPlhromhs
                    Move (Mid(sLine,08, 52  ))  to dHmniaEkdoshs
                    Move (Mid(sLine,08, 60  ))  to dEnarxh
                    //Move (Mid(sLine,08, 68  ))  to dLhxh

                    // Tolis 14/04/2003
                    Move '31/12/2002'           to dLhxh
                    //

                    Move (Mid(sLine,02, 76  ))  to iZonh
                    Move (Mid(sLine,06, 78  ))  to iElleiph
                    Move (Mid(sLine,06, 84  ))  to iPagioAntlias
                    Move (Mid(sLine,04, 90  ))  to sSynPlyn
                    Move (Mid(sLine,63, 94  ))  to sSxolia

                    Move (Trim(sKodPel      ))  to sKodPel
                    Move (Trim(sKodErgo     ))  to sKodErgo
                    Move (Trim(sDeop        ))  to sDeop
                    Move (Trim(sEidos       ))  to sEidos
                    Move (Trim(sOroiPlhromhs))  to sOroiPlhromhs
                    Move (Trim(sSxolia      ))  to sSxolia

                    Add 1 to iInt1
                    Set Label Of ButtonSub1 to (String(iInt1))
                    if (dlhxh<'01/01/2000') goto read_deop_next


                    Send Clear to CN_DD
                    Move (Trim(sKodPel+sKodErgo)) to CN.CN_CodeMatch  // 1151700001
                    Send Find to CN_DD GE 8 // CN_CodeMatch+CN_Code
                    If (NOT((Found) And (CN.CN_CodeMatch=Trim(sKodPel+sKodErgo)))) Begin
                        Writeln Channel 9 'ƒ„     - Record #' (String(iInt1)) '    CN.CN_CODEMATCH=' (Trim(sKodPel+sKodErgo))
                        Goto Read_Deop_Next
                    End

                    Get fsgCode_With_Zeroes Cn.Cn_SN                ;
                                            Sysfile.Client_Digits   ;
                                            SysCurXr.Company_Code   ;
                                            SysCurXr.Branch_Code    ;
                                                        to sSN
                    Get fsgStripCodeFromID sSN to sSN
                    Move (Trim(sKodPel)+(Trim(sSN)))    to sCNCode


                    Begin_Transaction
                        Lock

                        Clear btnordh
                        Move (Trim(sCNCode)) to btnordh.AA_Deop
                        Find Ge Btnordh by index.1

                        If ((Found=1) And (Left(btnordh.AA_Deop,10)=(Trim(sCNCode)))) Begin
                            Send Find_By_Recnum to Btnordh_DD Btnordh.File_Number Btnordh.Recnum
                        End
                        Else Begin
                            Send Clear to btnordh_DD
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.AA_Deop     to sDeop
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.Sxolia      to sSxolia
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.Deop_Date   to dEnarxh
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.Eleiph      to iElleiph
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.Date_Create to dHmniaEkdoshs
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.Deop_Lhxh   to dLhxh
                            Send Request_Save to Btnordh_DD
                        End

                        Send Clear to btnordd_DD
                        Set Field_Changed_Value Of btnordd_DD Field btnordd.Vitem       to sEidos
                        Set Field_Changed_Value Of btnordd_DD Field btnordd.VQty        to nM3
                        Set Field_Changed_Value Of btnordd_DD Field btnordd.VUnitPrice  to nTimhM3
                        Set field_changed_value of btnordd_dd field btnordd.vpagiaxrm3  to iPagioAntlias
                         If (Trim(sSynPlyn)='€') ;
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.VELXR   to '2'
                        Else If (Trim(sSynPlyn)='€„“') ;
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.VELXR   to '0'
                        Else If (Trim(sSynPlyn)='†') ;
                            Set Field_Changed_Value Of Btnordh_DD Field Btnordh.VELXR   to '1'

                        Send Request_Save to Btnordd_DD

                        Send Request_Save to Btnordh_DD

                             If (Trim(sOroiPlhromhs)='001') Move 99 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='002') Move  1 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='003') Move  1 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='004') Move  1 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='005') Move  1 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='006') Move  2 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='007') Move  2 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='008') Move  2 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='009') Move  2 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='010') Move 99 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='011') Move  1 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='012') Move  1 to iTropoi
                        Else If (Trim(sOroiPlhromhs)='045') Move  1 to iTropoi

                        Clear Tperga
                        Move 100        to Tperga.Pct_Epi_Synolou
                        Move iTropoi    to Tperga.Baxiokat_Code
                        Move CN.Cn_Code to Tperga.Cn_Code
                        Find Eq Tperga by index.1

                        If (Not(Found)) Begin
                            Send Clear to TPErga_DD
                            Move itropoi to Baxiokat.Baxiokat_Code
                            Send Request_Find to Baxiokat_DD Eq Baxiokat.File_Number 1
                            Set Field_Changed_Value Of TPErga_DD Field Tperga.Pct_Epi_Synolou   to 100
                            Set Field_Changed_Value Of TPErga_DD Field Tperga.Paralabh_Meres    to  10
                            Set Field_Changed_Value Of TPErga_DD Field Tperga.Xarhtos_Meres     to  10
                            Set Field_Changed_Value Of TPErga_DD Field Tperga.Plhroteo_Meres    to  30
                            Send Request_Save to Tperga_DD
                        End
                    End_Transaction

                    Read_Deop_Next:
                    Unlock

                    Readln Channel 1 sLine
                Loop
                Set Label Of ButtonSub1 to ''
                Close_Output Channel 9
            End_Procedure // Read_Deop


            Procedure Read_Pelates String asFile
                // €¤¥α¨««ª ‹«™Ά«βª
                String  sLine sClientID
                Integer iLathos iNum iInt1 iInt2
                /////////////////////////

                // ‹«™Ά«βª §›εΰ¤
                Local String  sKodPel sPelName sAfm sPresp
                Local String  sStoixeia  sArmodios sArmodiosAdd sArmodiosLoipa
                String  sDOY sPrespID
                Integer iXondr iStatus iLastClient
                Number  nOrioAnoixto nAnoixto nOrioYpol nYpol
                Date    dCreation

                Move 0 to iInt1
                Move 0 to iInt2

                /////////////////////////

                Direct_Input Channel 1 asFile
                Readln Channel 1 sLine
                While (Not(Seqeof))

                    Move (Mid(sLine,05, 01))    to sKodPel
                    Move (Mid(sLine,25, 06))    to sPelName
                    Move (Mid(sLine,09, 31))    to sAFM
                    Move (Mid(sLine,01, 40))    to iXondr
                    Move (Mid(sLine,60, 41))    to sStoixeia
                    Move (Mid(sLine,25,101))    to sArmodios
                    Move (Mid(sLine,25,126))    to sArmodiosAdd
                    Move (Mid(sLine,25,151))    to sArmodiosLoipa
                    Move (Mid(sLine,08,176))    to dCreation
                    Move (Mid(sLine,26,184))    to sDOY
                    Move (Mid(sLine,01,210))    to iStatus
                    Move (Mid(sLine,10,211))    to nOrioAnoixto
                    Move (Mid(sLine,10,221))    to nAnoixto
                    Move (Mid(sLine,10,231))    to nOrioYpol
                    Move (Mid(sLine,10,241))    to nYpol
                    Move (Mid(sLine,06,251))    to sPresp

                    Move (Trim(sKodPel))        to sKodPel
                    Move (Trim(sPelName))       to sPelName
                    Move (Trim(sAFM))           to sAFM
                    Move (Trim(sStoixeia))      to sStoixeia
                    Move (Trim(sArmodios))      to sArmodios
                    Move (Trim(sArmodiosAdd))   to sArmodiosAdd
                    Move (Trim(sArmodiosLoipa)) to sArmodiosLoipa
                    Move (Trim(sDOY))           to sDOY
                    Move (Trim(sPresp))         to sPresp


                    Add 1 to iInt1
                    Set Label Of ButtonSub1 to (String(iInt1))


                    Clear Clients
                    Get fsgCode_With_Zeroes sKodPel                 ;
                                            5                       ;
                                            SysCurXr.Company_Code   ;
                                            SysCurXr.Branch_Code    ;
                                                    to sClientID

                    Move sClientID                  to Clients.Client_Id
                    Find Eq Clients By Index.6 // Client_ID
                    If (Found) Goto Read_Pel_Next

                    Clear Clients
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                     (Trim(sKodPel))))) to Clients.Client_Recr
                    Find Eq Clients by index.2
                    If (Found) Goto Read_Pel_Next


                    If (sPelName='') Begin
                        Writeln Channel 9 'Άα«ª     - Record #' (String(iInt1)) '    Client without name  iID=' sKodPel
                        Goto Read_Pel_Next
                    End

                    Clear Clients
                    Move sKodPel                    to Clients.Client_Rec0
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                     (Trim(String(Clients.Client_Rec0))))));
                                                    to Clients.Client_Recr

                    Move SysCurXR.Company_Code      to Clients.Company_Code
                    Move SysCurXR.Branch_Code       to Clients.Branch_Code
                    Move SysCurXR.Year_Year         to Clients.Year_Year

                    Move '1'                        to Clients.Client_Active

                    // To iStatus exei times 0=Closed 1=Open ara antistrefoume.
                    Move (1-iStatus)                to Clients.Client_Locked

                    Get Make_Payresp sArmodios sArmodiosAdd sArmodiosLoipa sAFM sDOY sPresp ;
                                                    to sPrespID

                    Move sClientID                  to Clients.Client_ID
                    Move sPelName                   to Clients.Client_Name
                    Move sAFM                       to Clients.Client_AFM
                    Move sStoixeia                  to Clients.Client_Address
                    Move sPrespID                   to Clients.Presp_ID
                    Move dCreation                  to Clients.Client_Hmnia
                    Move sDOY                       to Clients.Client_DOYBTM
                    //betolink
                    Move SysCurXR.Beto_Site         to Clients.Client_Sitew
                    Move Clients.Client_Rec0        to Clients.Client_Sn
                    Move Clients.Client_id          to Clients.Client_Repm
                    Move Clients.Company_Code       to Clients.CLIENT_COMPANY
                    Move Clients.Client_id          to Clients.Client_RepMatch

                    Move '1'                        to Clients.is_Client

                    // Na Dieykrinistei ti paei pou ??????????????????????????????
                    //Move nOrioAnoixto               to Clients.Plafon
                    //Move nAnoixto                   to Clients.Orio_Syn_Ofeilh
                    //Move nOrioYpol                  to Clients.Orio_Syn_Ofeilh
                    //Move nOrio                      to Clients.Orio_Syn_Ofeilh
                    // Na Dieykrinistei ti paei pou ??????????????????????????????

                    Move (Clients.Xreosh-Clients.Pistosh)   ;
                                                    to Clients.Ypoloipo
                    Move (Clients.Plafon-Clients.Ypoloipo)  ;
                                                    to Clients.Overhead
                    Saverecord Clients

                    Read_Pel_Next:

                    Readln Channel 1 sLine
                Loop


                Clear Clients
                Move '99.ZZ' to Clients.Client_Id
                Find LE Clients by index.6 // Client_ID
                If (Found) Begin
                    Get fsgStripCodeFromID Clients.Client_Id to iNum
                    Reread
                    Move iNum to Sysrecc.Client_Rec0
                    Saverecord Sysrecc
                    Unlock
                End

                Set Label Of ButtonSub1 to ''

            End_Procedure // Read_Pelates


            Procedure Read_Erga String asFile
                // €¤¥α¨««ª ‹«™Ά«βª
                String  sLine sMatch sClientID
                Integer iLathos iInt1
                /////////////////////////

                // ‹«™Ά«βª §›εΰ¤
                Local String  sKodPel sKodErgo sAdd1 sAdd2 sAdd3
                Local String  sZonh sExpress sBarel sPlate  sMonada sTomeas
                Local String  sZonhDescr sDeop1 sDeop2 sDescr
                Number       nAxiaTim
                Date    dLastDap dStart dEnd

                /////////////////////////

                Move 0 to iInt1

                Append_Output Channel 9 'C:\Karapanos_Kinhseis_Error.txt'

                Direct_Input Channel 1 asFile
                Readln Channel 1 sLine
                While (Not(Seqeof))

                    Move (Mid(sLine,05, 01)) to sKodPel
                    Move (Mid(sLine,05, 06)) to sKodErgo
                    Move (Mid(sLine,30, 11)) to sAdd1
                    Move (Mid(sLine,30, 41)) to sAdd2
                    Move (Mid(sLine,30, 71)) to sAdd3
                    Move (Mid(sLine,08,101)) to dLastDap
                    Move (Mid(sLine,02,109)) to sZonh
                    Move (Mid(sLine,08,111)) to sExpress
                    Move (Mid(sLine,05,119)) to sBarel
                    Move (Mid(sLine,10,124)) to sPlate
                    Move (Mid(sLine,02,134)) to sMonada
                    Move (Mid(sLine,02,136)) to sTomeas
                    Move (Mid(sLine,12,138)) to nAxiaTim
                    Move (Mid(sLine,25,150)) to sZonhDescr
                    Move (Mid(sLine,30,175)) to sDeop1
                    Move (Mid(sLine,30,205)) to sDeop2
                    Move (Mid(sLine,08,235)) to dStart
                    Move (Mid(sLine,08,243)) to dEnd

                    Move (Trim(sKodPel     )) to sKodPel
                    Move (Trim(sKodErgo    )) to sKodErgo
                    Move (Trim(sAdd1       )) to sAdd1
                    Move (Trim(sAdd2       )) to sAdd2
                    Move (Trim(sAdd3       )) to sAdd3
                    Move (Trim(sDeop1      )) to sDeop1
                    Move (Trim(sDeop2      )) to sDeop2
                    Move (Trim(sZonh       )) to sZonh
                    Move (Trim(sMonada     )) to sMonada
                    Move (Trim(sTomeas     )) to sTomeas

                    Add 1 to iInt1
                    Set Label Of ButtonSub1 to (String(iInt1))

                    Clear CN
                    Move (Trim(sKodPel+sKodErgo)) to CN.CN_CodeMatch
                    Find GE CN By Index.8 // CN_CodeMatch+CN_Code
                    If ((Found) And (CN.CN_CodeMatch=Trim(sKodPel+sKodErgo))) ;
                        Goto Read_Erg_Next


                    Clear CN

                    Lock

                    Move (Sysrecc.CN_Rec0+1)   to CN.CN_Rec0
                    Move (Sysrecc.CN_Rec0+1)   to Sysrecc.CN_Rec0
                    Saverecord Sysrecc

                    Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                    (Trim(String(Sysrecc.CN_Rec0)))))) to CN.CN_Recr

                    Get fsgCode_With_Zeroes Sysrecc.CN_Rec0         ;
                                            5                       ;
                                            SysCurXr.Company_Code   ;
                                            SysCurXr.Branch_Code    ;
                                                    to CN.CN_Code

                    Move SysCurXR.Company_Code      to CN.Company_Code
                    Move SysCurXR.Branch_Code       to CN.Branch_Code
                    Move SysCurXR.Year_Year         to CN.Year_Year
                    Move SysCurXR.Beto_Site         to CN.Cn_SiteW
                    Move 'A'                        to CN.CN_Active

                    // Vres thn eggrafh tou client
                    Clear Clients
                    Get fsgCode_With_Zeroes sKodPel                 ;
                                            5                       ;
                                            SysCurXr.Company_Code   ;
                                            SysCurXr.Branch_Code    ;
                                                    to sClientID
                    Move sClientID                  to Clients.Client_Id
                    Find Eq Clients By Index.6 // Client_ID

                    If (Not(Found)) Begin
                        Writeln Channel 9 '„¨     - Record #' (String(iInt1)) '    Client  not found iID=' (Trim(sClientID))
                        Goto Read_Erg_Next
                    End

                    Move '' to sDescr
                    Append sDescr (Trim(Clients.Client_Name)) ' (' ;
                           (Trim(sAdd1)) ' ' (Trim(sAdd2)) ' ' (Trim(sAdd3))  ')'

                    Move (Trim(sDescr))             to Cn.Cn_Descr

                    Move sClientID                  to Cn.Client_id
                    Move Clients.Presp_ID           to Cn.Cn_Presp_ID
                    Move Clients.Client_Recr        to Cn.Client_Recr
                    Move Cn.Cn_Rec0                 to CN.Cn_SN
                    Move Cn.Client_id               to Cn.Cn_clientid

                    Move Cn.cn_code                 to CN.CN_RepMatch
                    Move (Trim(sKodPel+sKodErgo))   to CN.CN_CodeMatch

                    Move Cn.Cn_Code                 to Cn.Constraction_ID

                    Saverecord CN

                    Read_Erg_Next:
                    Unlock
                    Readln Channel 1 sLine
                Loop

                Set Label Of ButtonSub1 to ''

                Close_Output Channel 9

            End_Procedure // Read_Erga


            Procedure Read_Kinhseis String asFile
                // €¤¥α¨««ª ‹«™Ά«βª
                String  sLine   sClientID sRecr   sError
                Integer iLathos iBtypkin  iInt1   iBaxioKat iCmvRec
                Integer iError_Object_ID  iRecnum iErr rVal
                /////////////////////////

                // ‹«™Ά«βª §›εΰ¤
                Local String  sKinhsh sArPar sEidAxio sUnused sHmnia sKodPel sKodErg sCN
                Integer iKodMon iXondr iKodKin1 iKodKin2 iCtypkin
                Number  nAxia
                Date    dHmParast dHmAxio
                /////////////////////////

                Move 0 to iInt1

                Append_Output Channel 9 'C:\Karapanos_Kinhseis_Error.txt'

                Set piLathos to 0

                Move '04' to gs_Module_Code

                Direct_Input Channel 1 asFile
                Readln Channel 1 sLine
                While (Not(Seqeof))
                    Move (Mid(sLine,30,01)) to sKinhsh
                    Move (Mid(sLine,10,31)) to sArPar
                    Move (Mid(sLine,05,41)) to sKodPel
                    Move (Mid(sLine,05,46)) to sKodErg
                    Move (Mid(sLine,02,51)) to iKodMon
                    Move (Mid(sLine,01,53)) to iXondr
                    Move (Mid(sLine,08,54)) to dHmParast
                    Move (Mid(sLine,10,62)) to sEidAxio
                    Move (Mid(sLine,08,72)) to dHmAxio
                    Move (Mid(sLine,12,80)) to nAxia
                    Move (Mid(sLine,02,92)) to iKodKin1
                    Move (Mid(sLine,02,94)) to iKodKin2

                    Add 1 to iInt1
                    Set Label Of ButtonSub1 to (String(iInt1))


                    BEGIN_TRANSACTION
                    move Error_Object_ID to iError_Object_ID


                    Send Clear to Ctypkin_DD
                    Send Clear to Areas_DD
                    Send Clear to Btypkin_DD
                    Send Clear to Baxiokat_DD
                    Send Clear to Barticl_DD
                    Send Clear to Bsum_DD
                    Send Clear to Baxio_DD
                    Send Clear to Clients_DD
                    Send Clear to Cn_DD
                    Send Clear to Tperga_DD
                    Send Clear to Bmove_DD
                    Send Clear to Cmoves_DD
                    Send Clear to Btnordh_DD
                    Send Clear to Btnordd_DD



                   // Mono Kinhseis me kodiko1=09 Plhromh Pelatou)
                   If (iKodKin1=9) Begin
                            If (iKodKin2=90)   Move 103 to iBtypkin
                       Else If (iKodKin2=91)   Move 101 to iBtypkin
                       Else If (iKodKin2=92)   Move 100 to iBtypkin
                       Else If (iKodKin2=93)   Move 100 to iBtypkin
                       Else If (iKodKin2=94)   Move 100 to iBtypkin

                       Move iBtypkin               to btypkin.Btypkin_Code
                       Send Find to Btypkin_DD Eq 1
                       If (Not(Found)) Begin
                           Set piLathos to 7000
                           Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Btypkin not found iBtypkin=' (String(iBtypkin))
                           Abort_Transaction
                           Goto Read_Next_Kinhsh
                       End

                       Get fsgCode_With_Zeroes sKodPel                 ;
                                               5                       ;
                                               SysCurXr.Company_Code   ;
                                               SysCurXr.Branch_Code    ;
                                                       to sClientID

                       Move sClientID                  to Clients.Client_Id
                       Find Eq Clients By Index.6 // Client_ID
                       If (NOT(Found)) Begin
                           Set piLathos to 7001
                           Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Client not found ID= ' (Trim(sClientID))
                           Abort_Transaction
                           Goto Read_Next_Kinhsh
                       End

                       Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Hmnia    to dHmParast
                       Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Code1    to Clients.Client_ID
                       Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Epon1    to Clients.Client_Name
                       Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Aitiol   to (Trim(sArPar))
                       Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_M_Code   to '04'

                       Move (Trim(sKodPel+sKodErg)) to CN.CN_CodeMatch
                       Find GE CN By Index.8 // CN_CodeMatch+CN_Code
                       If ((Found) And (CN.CN_CodeMatch=Trim(sKodPel+sKodErg))) ;
                           Set Field_Changed_Value Of Barticl_DD Field Barticl.CN_Code to Cn.CN_Code

                       Send Request_Save to Barticl_DD

                       Send Clear to Baxiokat_DD
                       Send Clear to Baxio_DD
                       Send Clear to Bmove_DD

                            If (iKodKin2=90)   Move 99 to iBaxioKat
                       Else If (iKodKin2=91)   Move  2 to iBaxioKat
                       Else If (iKodKin2=92)   Move  1 to iBaxioKat
                       Else If (iKodKin2=93)   Move  1 to iBaxioKat
                       Else If (iKodKin2=94)   Move  1 to iBaxioKat

                       Move iBaxioKat  to BaxioKat.Baxiokat_Code
                       Send Find       to Baxiokat_DD Eq 1
                       If (Not(Found)) Begin
                           Set piLathos to 7002
                           Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Baxiokat not found ID= ' (String(iBaxioKat))
                           Abort_Transaction
                           Goto Read_Next_Kinhsh
                       End

                       Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_HmniaL    to dHmAxio
                       Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_C_Code2   to 'EUR'
                       Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_V2        to nAxia
                       Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_Ekdoths   to Clients.Client_ID
                       Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_EkdothsE  to Clients.Client_Name

                       Send Request_Save to Bmove_DD

                       Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Recr to sRecr
                       Get Field_Current_Value Of Barticl_DD Field Barticl.Recnum       to iRecnum

                       If ((iRecnum) And (sRecr<>'')) Begin
                           Set psModule        Of (bpEnCmv3(Self))     to '04'
                           Set psBarticleRecr  Of (bpEnCmv3(Self))     to sRecr
                           Set piBarticleRecn  Of (bpEnCmv3(Self))     to iRecnum
                           Send DoProcess                              to (bpEnCmv3(Self))
                           If (Wait(bpEnCmv3(Self))) Send Deactivate   to (Wait(bpEnCmv3(Self)))
                       End
                   End
                   Else Begin
                        If (iKodKin1=2) Begin
                            // Aytomath Timologhsh
                            If (iKodkin2=1) Begin
                                // Loipes xreoseis lianikhs
                                Move 119 to iCtypkin
                            End
                            Else If (iKodkin2=2) Begin
                                // Loipes xreoseis xondrikhs
                                Move 116 to iCtypkin
                            End
                            Else Begin
                                Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Kinhsh not found iKodKin2=' (String(iKodKin2))
                                Abort_Transaction
                                Goto Read_Next_Kinhsh
                            End
                        End
                        Else If (iKodKin1=4) Begin
                            // Ap' eytheias -timologhsh
                            If (iKodkin2=1) Begin
                                // Loipes xreoseis lianikhs
                                Move 119 to iCtypkin
                            End
                            Else If (iKodkin2=2) Begin
                                // Loipes xreoseis xondrikhs
                                Move 116 to iCtypkin
                            End
                            Else Begin
                                Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Kinhsh not found iKodKin2=' (String(iKodKin2))
                                Abort_Transaction
                                Goto Read_Next_Kinhsh
                            End
                        End
                        Else If (iKodKin1=5) Begin
                            // Pistotiko timologio
                            If (iKodkin2=3) Begin
                                // Epistrofh lianikhs polhshs pistotiko
                                Move 121 to iCtypkin
                            End
                            Else If (iKodkin2=4) Begin
                                // Pistotiko timologio xondrikhs
                                Move 121 to iCtypkin
                            End
                            Else Begin
                                Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Kinhsh not found iKodKin2=' (String(iKodKin2))
                                Abort_Transaction
                                Goto Read_Next_Kinhsh
                            End
                        End
                        Else If (iKodKin1=8) Begin
                            // Flat kinhseis pou mexri tora pernagane
                            // san timologia (ara symmetexan sthn MYF gia paradeigma eno
                            // den tha eprepe) eno htan xeres xreoseis h pistoseislogo
                            // kleisimatos kartellas p.x.
                            If (iKodkin2=1) Begin
                                // Genikh Xreostikh
                                Move 103 to iCtypkin
                            End
                            Else If (iKodkin2=2) Begin
                                // Genikh Pistotikh
                                Move 104 to iCtypkin
                            End
                            Else Begin
                                Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Kinhsh not found iKodKin2=' (String(iKodKin2))
                                Abort_Transaction
                                Goto Read_Next_Kinhsh
                            End
                        End
                        Else Begin
                            Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Kinhsh not found iKodKin1=' (String(iKodKin1))
                            Abort_Transaction
                            Goto Read_Next_Kinhsh
                        End


                        Move '' to sCN
                        Clear CN
                        Move (Trim(sKodPel+sKodErg)) to CN.CN_CodeMatch
                        Find GE CN By Index.8 // CN_CodeMatch+CN_Code
                        If ((Found) And (CN.CN_CodeMatch=Trim(sKodPel+sKodErg))) ;
                            Move (Trim(CN.CN_Code)) to sCN


                        Send Clear to Cmoves_DD

                        Get fsgCode_With_Zeroes sKodPel                 ;
                                                5                       ;
                                                SysCurXr.Company_Code   ;
                                                SysCurXr.Branch_Code    ;
                                                        to sClientID

                        Move sClientID                  to Clients.Client_Id
                        Send Find to Clients_DD Eq 6 // Client_ID
                        If (NOT(Found)) Begin
                            Set piLathos to 7004
                            Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Client not found ID= ' (Trim(sClientID))
                            Abort_Transaction
                            Goto Read_Next_Kinhsh
                        End

                        Move iCtypkin               to Ctypkin.Ctypkin_Code
                        Send Find to Ctypkin_DD Eq 1
                        If (Not(Found)) Begin
                            Set piLathos to 7003
                            Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Ctypkin not found iCtypkin=' (String(iCtypkin))
                            Abort_Transaction
                            Goto Read_Next_Kinhsh
                        End

                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_Hmnia      to dHmParast
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_M_Code     to '01'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Module_From       to '01'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_axia       to nAxia
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_par        to (Trim(sArPar))
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_sc_code2   to 'EUR'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cn_code           to sCN

            //                    Set Field_Changed_Value Of Cmoves_DD Field Cmoves.enhm_ofeilh       to '1'
            //                    Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Enhm_Ypol_Pel     to '1'
            //                    Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Enhm_Hmnies_Pel   to '1'

                        Send Request_Save to Cmoves_DD

                        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Recnum to iCmvRec

                        If (iCmvRec) Begin
            //                        Get Compute_all_Fields iCmvRec 1 to rVal
            //                        If (rVal) Begin
            //                                 If (rVal=1) Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Ctypkin not found in Compute_all_Fields'
            //                            Else If (rVal=2) Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Client  not found in Compute_all_Fields'
            //                            Else If (rVal=3) Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Nomisma not found in Compute_all_Fields'
            //                            Else If (rVal=4) Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Client  not found in Compute_all_Fields'
            //                            Else If (rVal=5) Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Cmoves  not found in Compute_all_Fields'
            //                            Abort_Transaction
            //                            Goto Read_Next_Kinhsh
            //                        End
                        End
                        Else Begin
                            Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Cmoves repositioning not found'
                            Abort_Transaction
                            Goto Read_Next_Kinhsh
                        End


                   End // If iKodkin1=9

                 END_TRANSACTION

                 Unlock

                   Move (Err) to iErr
                   If (iErr) Begin
                        Get Error_Text iErr to sError
                        Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    ¨¦™Ά£ §¦ « ª ΅Άα© ª= ' (String(iErr)) '     ' (Trim(sError))
                        Unlock
                        Close_Output Channel 9
                        Procedure_Return
                   End

                   Read_Next_Kinhsh:
                   move iError_Object_ID to Error_Object_ID

                   Readln Channel 1 sLine
                Loop

                Set Label Of ButtonSub1 to ''

                     If (piLathos(Self)=70000) Send Stop_Box 'Btypkin Not found'  ('# '+(String(iInt1)))
                Else If (piLathos(Self)=70001) Send Stop_Box 'Client Not found'   ('# '+(String(iInt1)))
                Else If (piLathos(Self)=70002) Send Stop_Box 'Baxiokat Not found' ('# '+(String(iInt1)))


                Close_Output Channel 9


            End_Procedure // Read_Kinhseis

            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "„§ Ά¦γ ¨®ε¦¬"
            Set Location to 7 5
            Set Size to 10 55
        End_Object    // TextBoxSub1

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 89 107
            Set Location to 28 170
            Object Radio1 is a RadioSub
                Set Label to "“§η¬¤¦  Ά¨ΰ£ι¤"
                Set Size to 10 95
                Set Location to 10 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "Άα«ª"
                Set Size to 10 95
                Set Location to 25 5
            End_Object    // Radio2

            Object Radio3 is a RadioSub
                Set Label to "„¨"
                Set Size to 10 95
                Set Location to 40 5
            End_Object    // Radio3

            Object Radio1 is a RadioSub
                Set Label to "ƒ„"
                Set Size to 10 95
                Set Location to 57 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "‰ ¤γ© ª"
                Set Size to 10 95
                Set Location to 73 5
            End_Object    // Radio2


            //AB-StoreStart

            Procedure Notify_Select_State integer iToItem integer iFromItem
                Set piWhat to iToItem
            End_Procedure

            // If you set Current_radio you must set this after the
            // radio objects have been created AND after Notify_select_State has been
            // created. i.e. Set in bottom-code at end!!
            //Set Current_Radio to 0


            //AB-StoreEnd

        End_Object    // RadioGroupSub1


        //AB-StoreStart




        //AB-StoreEnd

    CD_End_Object    // GefKarap

//AB/     End_Object    // prj
