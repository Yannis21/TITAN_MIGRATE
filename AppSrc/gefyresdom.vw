//AB/ Project gefyresdom:domikh
//AB/ Object prj is a View_Project
    //AB/ Set Size to 569 856
    //AB/ Set ProjectName to "gefyresdom:domikh"
    //AB/ Set ProjectFileName to "gefyresdom.vw"

// Project Object Structure
//   gefyresdom is a dbViewSubS
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
//     Sysrecc_DD is a Sysrecc_DataDictionary
//     Clients_DD is a Clients_DataDictionary
//     Cn_DD is a Cn_DataDictionary
//     Tperga_DD is a Tperga_DataDictionary
//     Bmove_DD is a Bmove_DataDictionary
//     Cmoves_DD is a Cmoves_DataDictionary
//     Btnordh_DD is a Btnordh_DataDictionary
//     Btnordd_DD is a Btnordd_DataDictionary
//     frmFileName is a FormSub
//     Frmdate is a FormSub
//     frmBranch is a FormSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     oOpenFile is a OpenDialog
//     TextBoxSub3 is a TextBoxSub

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
Register_Object Frmdate
Register_Object frmBranch
Register_Object frmFileName
Register_Object gefyresdom
Register_Object Mhxanik_DD
Register_Object oOpenFile
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object Syscurxr_DD
Register_Object Sysrecc_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Towns_DD
Register_Object Tperga_DD


//AB-StoreTopStart

Use sl041.sl

Use bpEnCmv3.dg // Business Process Finilizing Barticle

Use slNomism.sl
Use sl033.sl
Use r044.rv
Use v037.vw
Use sl100.sl
Use sl036.sl
Use r36.rv
Use baxio.dd
Use Tperga.dd
Use BtnOrdH.DD
Use BtnOrdD.DD
Use Mhxanik.DD
Use Constrct.dd
Use Salesmen.dd
Use sysrecc.dd

//Use bp2ndCop.dg
//Use bpACopen.dg


//AB-StoreTopEnd

//AB-IgnoreStart
Use dbView.Sub
Use Form.Sub
Use Button.Sub
Use Txtbox.Sub
Use File_dlg.Pkg
//AB-IgnoreEnd


ACTIVATE_VIEW Activate_gefyresdom FOR gefyresdom

Object gefyresdom is a dbViewSubS

    //AB-StoreTopStart
                    
    Property Integer piLathos   Public   0
    Property String  psModule   Public '01'
    Property Integer piWhat     Public   0
    
    //Open Sysrecc
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
        Set DDO_Server To (Country_DD(Self))
    End_Object    // Towns_DD
    
    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server To (Towns_DD(Self))
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
        Set Foreign_Field_Options DD_KEYFIELD           To DD_Clear_Field_Options DD_FindReq
        Set Foreign_Field_Options DD_INDEXFIELD         To DD_Clear_Field_Options DD_FindReq
        Set Field_Options Field Btypkin.Btypkin_Code    To DD_Clear_Field_Options DD_Required
    End_Object    // Btypkin_DD
    
    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD
    
    Object Barticl_DD is a Barticl_DataDictionary
        Set DDO_Server To (Btypkin_DD(Self))
    End_Object    // Barticl_DD
    
    Object Bsum_DD is a Bsum_DataDictionary
        Set DDO_Server To (Barticl_DD(Self))
        Set Constrain_File To Barticl.File_Number
    End_Object    // Bsum_DD
    
    Object Baxio_DD is a Baxio_DataDictionary
        Set DDO_Server To (Baxiokat_DD(Self))
        Set allow_foreign_new_save_state To True
    End_Object    // Baxio_DD
    
    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD
    
    Object Sysrecc_DD is a Sysrecc_DataDictionary
    End_Object    // Sysrecc
    
    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server To (Cities_DD(Self))
        Set DDO_Server To (Payresp_DD(Self))
        Set DDO_Server To (Areas_DD(Self))
    End_Object    // Clients_DD
    
    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server To (Clients_DD(Self))
        Set DDO_Server To (Constrct_DD(Self))
        Set DDO_Server To (Salesmen_DD(Self))
        Set DDO_Server To (Mhxanik_DD(Self))
    End_Object    // Cn_DD
    
    Object Tperga_DD is a Tperga_DataDictionary
        Set DDO_Server To (CN_DD(Self))
        Set DDO_Server To (Baxiokat_DD(Self))
        Set Constrain_File To CN.File_Number
    End_Object    // Btnordd_DD
    
    Object Bmove_DD is a Bmove_DataDictionary
        Set DDO_Server To (Barticl_DD(Self))
        Set DDO_Server To (Baxio_DD(Self))
        Set Constrain_File To Barticl.File_Number
    End_Object    // Bmove_DD
    
    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server To (Ctypkin_DD(Self))
        Set DDO_Server To (Clients_DD(Self))
        //Set Constrain_File to Clients.File_Number
        Set piFromBP To True
    
    
        Procedure Update
            String  sNomisma
            Date    dHmnia
            Move Cmoves.Cmoves_Hmnia                To  dHmnia
            If (dHmnia='') Sysdate4                     Cmoves.Cmoves_Hmnia
            Move Cmoves.Cmoves_Sc_Code2             To  sNomisma
            Move (Trim(sNomisma))                   To  sNomisma
            If (sNomisma='') Move SysCurXr.C_Code0  To  Cmoves.Cmoves_Sc_Code2
    
            Send Compute_all_Fields 1
    
            Forward Send Update
    
            If (Ctypkin.Open_Item='1') Begin
                If (Cmoves.Axia_Pros_Sysx=0) ;
                    Move (Abs(Cmoves.Cmoves_Axia))              To Cmoves.Axia_Pros_Sysx
                Move (Cmoves.Axia_Pros_Sysx-Cmoves.Axia_Sysxet) To Cmoves.Axia_Ypol_Sysx
                Move (Cmoves.Axia_Ypol_Sysx<>0)                 To Cmoves.Flag_Ypol
    
                If ((Cmoves.Cmoves_X0<>0) and ((Cmoves.Cmoves_P0=0))) Begin
                    Move 1                          To Cmoves.Flag_Copen
                    If (Cmoves.Cmoves_X0<0) Move 2  To Cmoves.Flag_Copen
                End
                Else If ((Cmoves.Cmoves_P0<>0) and ((Cmoves.Cmoves_X0=0))) Begin
                    Move 2                          To Cmoves.Flag_Copen
                    If (Cmoves.Cmoves_P0<0) Move 1  To Cmoves.Flag_Copen
                End
                Else Move 0 To Cmoves.Flag_Copen
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
    
            Move '01' To sModule
    
            Move 1 To iSign
    
            If ((Cmoves.Module_From=sModule) and (Cmoves.Barticl_Recr='') and (Cmoves.Partl_Recr=''))  Begin
    
                Move Ctypkin.Ctypkin_Recr   To sCtypkinRecr
                Move clients.client_recr    To sclientrecr
                Move Cmoves.Cmoves_sc_code2 To sNomisma
                Move (Trim(sNomisma))       To sNomisma
    
                If (Trim(sCtypkinRecr)='') Begin
                    Send stop_box '-εν ??ετε επιλ?ξει τύπο κ-νη?η?' ("error 1011 vwcmoves  "+'?ληρο?ορ-α')
                    Procedure_Return
                End
                Else If (Trim(sClientRecr)='') Begin
                        If (smodule='01') Send stop_box '-εν ??ετε επιλ?ξει ?ελ-τη'      ("error 1012 vwcmoves  "+'?ληρο?ορ-α')
                    Else If (smodule='02') Send stop_box '-εν ??ετε επιλ?ξει ?ρομηθευτ?'  ("error 1013 vwcmoves  "+'?ληρο?ορ-α')
                    Procedure_Return
                End
                Else If (Trim(sNomisma)='') Begin
                    Send stop_box '-εν ??ετε επιλ?ξει =ομι?μα' ("error 1014 vwcmoves  "+'?ληρο?ορ-α')
                    Procedure_Return
                End
    
    
                Move Cmoves.Cmoves_Hmnia    To dHmnia
                Move Cmoves.Cmoves_Axia     To nPoso
    
                Move 0 To iOneCflag
                Move 0 To iMustSaveCmoves
                Move 0 To iMustSaveClient
                Move 0 To iMustSaveClientYpoloipa
                Move 0 To iAnameneiSxetiko
                Move 0 To imustsaveofeilh
                Move 0 To iMaxDays
    
                Clear Cflagkin
                Move sCtypkinRecr           To Cflagkin.Ctypkin_Recr
                Find gt Cflagkin by Index.5 // Cflagkin:Index.5:Ctypkin_Recr+Flag_Numeric+Cflagkin_Recr
                While ((Found=1) and (sCtypkinRecr=Cflagkin.Ctypkin_Recr))
                    Move 1 To iOneCflag
                    Move Cflagkin.Cflagkin_Flag To sFlag
                    Move (Trim(sFlag)) To sFlag
    
                    Case Begin
                        Case (sFlag='1')
                            Move 1 To iMustSaveCmoves
                        Case Break
                        Case (sFlag='2') // Antistrofh Proshmou
                            Move (nPoso*iSign*(-1)) To nPoso
                        Case Break
                        Case (sFlag='3') // Epireazei xreoseis
                            Move (nPoso*iSign)  To nXre
                            Move 0              To nPis
                        Case Break
                        Case (sFlag='4') // Epireazei pistoseis
                            Move (nPoso*iSign)  To nPis
                            Move 0              To nXre
                        Case Break
                        Case (sFlag='5') // Epireazei Hmeromhnies
                            Move 1 To iMustSaveClient
                            If (nXre<>0) Begin
                                Move dHmnia To dLastXre
                                Move dHmnia To dLastXreParast
                                Move ''     To dLastPis
                                Move ''     To dLastPisParast
                            End
                            Else If (nPis<>0) Begin
                                Move dHmnia To dLastPis
                                Move dHmnia To dLastPisParast
                                Move ''     To dLastXre
                                Move ''     To dLastXreParast
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
                            Move iSign To iMyf
                        Case Break
                        Case (sFlag='13') // Symmetoxh se MYF (Axia)
                            Move (nPoso*iSign)  To nMyf
                        Case Break
                        Case (sFlag='14') // Axies se Xeno sma
                            // Blepe sxetika erothmata sthn arxh ths procedure
                        Case Break
                        Case (sFlag='15') // Aytomath dhmiourgia axiografou
                        Case Break
                        Case (sFlag='16') // Allagh XreoPistoshs me antistrofh proshmou
                            If (nXre<>0) Begin
                                Move (nXre*(-1))    To nPis
                                Move 0              To nXre
                            End
                            Else If (nPis<>0) Begin
                                Move (nPis*(-1))    To nXre
                                Move 0              To nPis
                            End
                        Case Break
                        Case (sFlag='17') // Afairei apo Myf (akyrotika)
                            // Thelei exhghsh ti shmainei 'afairei' ?
                            // apo posothta? apo axia? apo allou?
                        Case Break
                        Case (sFlag='23') // Athroisths 1
                            Move (nPoso*iSign) To nAthr1
                        Case Break
                        Case (sFlag='24') // Athroisths 2
                            Move (nPoso*iSign) To nAthr2
                        Case Break
                        Case (sFlag='25') // Athroisths 3
                            Move (nPoso*iSign) To nAthr3
                        Case Break
                        Case (sFlag='26') // Athroisths 4
                            Move (nPoso*iSign) To nAthr4
                        Case Break
                        Case (sFlag='27') // Athroisths 5
                            Move (nPoso*iSign) To nAthr5
                        Case Break
                        Case (sFlag='28') // Athroisths 6
                            Move (nPoso*iSign) To nAthr6
                        Case Break
                        Case (sFlag='29') // Athroisths 7
                            Move (nPoso*iSign) To nAthr7
                        Case Break
                        Case (sFlag='30') // Athroisths 8
                            Move (nPoso*iSign) To nAthr8
                        Case Break
                        Case (sFlag='50') // Anamenei sxetika
                            Move 1 To iAnameneiSxetiko
                            Move Ctypkin.Max_Days_Sx_Par To iMaxDays
                        Case Break
                        Case (sFlag='66') // ephreazei synolikh ofeilh
                            Move 1 To iMustSaveofeilh
                        Case Break
                        Case (sFlag='99') // Enhmeronei Ypoloipa
                            Move 1 To iMustSaveClientYpoloipa
                        Case Break
    
                    Case End
    
                    Find gt Cflagkin by Index.5 // Cflagkin:Index.5:Ctypkin_Recr+Flag_Numeric+Cflagkin_Recr
                Loop
    
                If ((iOneCflag) and (iMustSaveCmoves)) Begin
                    If (nXre<>0) Begin
                        Move nXre To Cmoves.Cmoves_Axia
                        If (aiSign=1) Begin
                            Add (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code0,dHmnia,nIsotimia))  To Cmoves.Cmoves_x0
                            Add (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code00,dHmnia,nIsotimia)) To Cmoves.Cmoves_x00
                            Add (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Coder,dHmnia,nIsotimia))  To Cmoves.Cmoves_x1
                            Add nXre To Cmoves.Cmoves_x2
                        End
                        Else Begin
                            Sub (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code0,dHmnia,nIsotimia))  From Cmoves.Cmoves_x0
                            Sub (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Code00,dHmnia,nIsotimia)) From Cmoves.Cmoves_x00
                            Sub (fngConvertPoso(sNomisma,nXre,SysCurXr.C_Coder,dHmnia,nIsotimia))  From Cmoves.Cmoves_x1
                            Sub nXre From Cmoves.Cmoves_x2
                        End
                    End
                    Else If (nPis<>0) Begin
                        Move nPis To Cmoves.Cmoves_Axia
                        If (aiSign=1) Begin
                            Add (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code0,dHmnia,nIsotimia))  To Cmoves.Cmoves_p0
                            Add (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code00,dHmnia,nIsotimia)) To Cmoves.Cmoves_p00
                            Add (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Coder,dHmnia,nIsotimia))  To Cmoves.Cmoves_p1
                            Add nPis To Cmoves.Cmoves_p2
                        End
                        Else Begin
                            Sub (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code0,dHmnia,nIsotimia))  From Cmoves.Cmoves_p0
                            Sub (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Code00,dHmnia,nIsotimia)) From Cmoves.Cmoves_p00
                            Sub (fngConvertPoso(sNomisma,nPis,SysCurXr.C_Coder,dHmnia,nIsotimia))  From Cmoves.Cmoves_p1
                            Sub nPis From Cmoves.Cmoves_p2
                        End
                    End
                    Move (Trim(sModule)) To Cmoves.Module_From
                    If (Trim(sClientRecr)<>'') Begin
                        If (iMustSaveClientYpoloipa =1)  Move '1' To Cmoves.Enhm_Ypol_Pel
                        If (iMustSaveClient         =1)  Move '1' To Cmoves.Enhm_Hmnies_Pel
                        If (iMustSaveofeilh         =1)  Move '1' To Cmoves.Enhm_ofeilh
                    End
                    Else Begin
                             If (smodule='01') Send stop_box '-εν ??ετε επιλ?ξει ?ελατη'       ("error 1015 vwcmoves  "+'?ληρο?ορ-α')
                        Else If (smodule='02') Send stop_box '-εν ??ετε επιλ?ξει ?ρομηθευτ?'  ("error 1016 vwcmoves  "+'?ληρο?ορ-α')
                        Procedure_Return
                    End
                End
            End
        End_Procedure
    End_Object    // Cmoves_DD
    
    Object Btnordh_DD is a Btnordh_DataDictionary
        Set DDO_Server To (Cn_DD(Self))
        Set Constrain_File To Cn.File_Number
        Send DefineAllExtendedFields
    End_Object    // Btnordh_DD
    
    Object Btnordd_DD is a Btnordd_DataDictionary
        Set DDO_Server To (Btnordh_DD(Self))
        Set Constrain_File To Btnordh.File_Number
    End_Object    // Btnordd_DD
    
    //////////////////////////////////////////////////////
    // DataDictionary Structure needed for making Barticle
    //////////////////////////////////////////////////////
    
    
    //AB-StoreTopEnd

    Set Label to "ƒ£ ¦¬¨ε „¨­ι¤ - ‚β­¬¨ª"
    Set Location to 9 7
    Set Size to 119 451

    //AB-DDOStart


    //AB-DDOEnd

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
            Get Show_Dialog Of oOpenFile To bOpen
            If bOpen Begin
                Get File_Name Of oOpenFile To sFileName
                If (Trim(sFileName)<>'') Set Value Item 0 To sFileName
            End
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // frmFileName

    Object Frmdate is a FormSub
        Set Size to 13 69
        Set Location to 49 71
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Frmdate

    Object frmBranch is a FormSub
        Set Size to 13 35
        Set Location to 49 205
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmBranch

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                
        //AB-StoreTopEnd

        Set Label to "„§¥¨©ε"
        Set Size to 14 218
        Set Location to 73 112
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        Procedure OnClick
            String  sFile sFile2 sLabel sBr
            Integer iFileExists iCheckAfm
            Date ddate
            Get label To slabel
            Set Enabled_State To False
        
            Get Value Of frmBranch Item 0 To sBr
            Get value Of frmdate   Item 0 To ddate
            Move (Trim(sBr)) To sBr
            If (ddate='') Begin
                Send info_box 'ƒ¤ ›ι©« †£/¤ε £«­¦¨αª “§¦Ά¦ε§ΰ¤'
                Set Enabled_State To True
                Procedure_Return
            End
            // Mhdenismos tou ASCII kathe fora pou trexei
            Direct_Output Channel 9 'C:\Paros_Kinhseis_Error.txt'
            Close_Output Channel 9
            //
        
            Get Value Of frmFileName Item 0 To sFile
            Move (Trim(Uppercase(sFile)))   To sFile
            If (sFile<>'') Begin
                Get Get_File_Exists sFile   To iFileExists
                If (not(iFileExists)) Begin
                    Send Stop_Box "ƒ¤ ™¨β΅ «¦ ¨®ε¦." "‘­αΆ£ 1001"
                    Set Enabled_State To True
                    Procedure_Return
                End
                     If (sBr<>'') Send Read_Kinhseis         sFile sBr
                     Else Begin
                        Send Info_Box 'ƒ¤ §Ά΅«¨¦Ά¦γ©« ¬§¦΅«α©«£' 'Ά¨¦­¦¨ε'
                        Set Enabled_State To True
                        Procedure_Return
                    End
        
        
                Send Info_Box "† ƒ › ΅©ε «Άεΰ©" "Ά¨¦­¦¨ε"
            End
            Else Send Stop_Box 'ƒ¤ §¨¦©› ¦¨ε©« §¦¬ ™¨ε©΅« «¦ ¨®ε¦' '‘­αΆ£ 1002'
        
        
            Set Label Of ButtonSub1 To sLabel
            Set Enabled_State To True
        End_Procedure // OnClick
        
        
        Procedure Read_Kinhseis String asFile String asBr
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine   sClientID sRecr   sError skeno
            Integer iLathos iBtypkin  iInt1   iBaxioKat iCmvRec
            Integer iError_Object_ID  iRecnum iErr rVal
            Local String  sKinhsh sArPar sEidAxio sUnused sHmnia sKodPel sKodErg sCN
            Integer iKodMon iXondr iKodKin1 iKodKin2 iCtypkin
            Local String  sepon spol saxia  sxreosh spistosh
            Number  nxreosh npistosh naxia
            Date    dHmParast dHmAxio
            Get value Of Frmdate Item 0 To dhmparast
            /////////////////////////
        
            Move 0 To iInt1
            Move '‹«­.“§¦Ά¦ε§ΰ¤ ' To sArPar
            Append sarpar dhmparast
            Append_Output Channel 9 'C:\Paros_Kinhseis_Error.txt'
        
            Set piLathos To 0
        
            Move '01' To gs_Module_Code
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (not(Seqeof))
                Add 1 To iInt1
                Set Label Of ButtonSub1 To (String(iInt1))
                Move (Mid(sLine,10,01)) To skodpel
                Move (Mid(sLine,18,11)) To naxia
                If (naxia<>0) Begin
                    Begin_Transaction
                       Move Error_Object_ID To iError_Object_ID
                       Send Clear To Ctypkin_DD
                       Send Clear To Clients_DD
                       Send Clear To Cmoves_DD
                       If (naxia>0)        Move 101 To ictypkin
                       Else If (naxia<0)   Move 102 To ictypkin
                       Else Goto Read_Next_Kinhsh
                       Move (Trim(skodpel))  To skodpel
                       Clear clients
                       Move '' To sClientID
                       Move skodpel To clients.client_codem
                       Find ge clients by Index.10
                       If ((Found) and (clients.client_codem=skodpel)) Begin
                           Move clients.client_id To sclientid
                       End
                       Send Clear To Cmoves_DD
                       Move sClientID                  To Clients.Client_Id
                       Send Find To Clients_DD eq 6 // Client_ID
                       If (not(Found)) Begin
                             Set piLathos To 7004
                             Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Client not found codem= ' (Trim(skodpel))
                             Abort_Transaction
                             Goto Read_Next_Kinhsh
                       End
        
                       Move iCtypkin               To Ctypkin.Ctypkin_Code
                       Send Find To Ctypkin_DD eq 1
                       If (not(Found)) Begin
                            Set piLathos To 7003
                            Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Ctypkin not found iCtypkin=' (String(iCtypkin))
                            Abort_Transaction
                            Goto Read_Next_Kinhsh
                        End
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_Hmnia      To dHmParast
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_M_Code     To '01'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Module_From       To '01'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_axia       To (Abs(naxia))
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_par        To (Trim(sArPar))
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Cmoves_sc_code2   To 'EUR'
        
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.enhm_ofeilh       To '1'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Enhm_Ypol_Pel     To '1'
                        Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Enhm_Hmnies_Pel   To '1'
        
                        Send Request_Save To Cmoves_DD
        
                        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Recnum To iCmvRec
        
                        If (iCmvRec) Begin
                        End
                        Else Begin
                            Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Cmoves repositioning not found'
                            Abort_Transaction
                            Goto Read_Next_Kinhsh
                        End
        
        
        
                 End_Transaction
        
                 Unlock
        
                   Move (Err) To iErr
                   If (iErr) Begin
                        Get Error_Text iErr To sError
                        Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    ¨¦™Ά£ §¦ « ª ΅Άα© ª= ' (String(iErr)) '     ' (Trim(sError))
                        Unlock
                        Close_Output Channel 9
                        Procedure_Return
                   End
               End
               Read_Next_Kinhsh:
               Move iError_Object_ID To Error_Object_ID
        
               Readln Channel 1 sLine
            Loop
        
            Set Label Of ButtonSub1 To ''
        
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
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "ƒι©« ¬§¦΅«©«£ ©«¦ ¦§¦ε¦ ΅α¤« Login   ¤  ©α« ΅ ¤γ© ª €§¦¨­γª Ά«ι¤"
        Set Location to 24 119
        Set Size to 20 246
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object oOpenFile is a OpenDialog
        //AB/ Set Location to 2 407
        Set Dialog_Caption to "Select a file"

        //AB-StoreStart
        Set Filter_String   To 'Text Files|*.txt|All Files|*.*'
        Set Initial_Folder  To 'C:\VDF6\Develop\Empor'
        Set Filter_Index    To 1
        
        //AB-StoreEnd

    End_Object    // oOpenFile

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "„§ Ά¦γ †£/¤εª"
        Set Location to 49 5
        Set Size to 12 64
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3


    //AB-StoreStart
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
    //AB-StoreEnd

End_Object    // gefyresdom


//AB-StoreStart
                                                        
                                                        
                                                        
//AB-StoreEnd

//AB/ End_Object    // prj
