//AB/ Project tAxioKarapanoy
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "tAxioKarapanoy"
//AB/     Set ProjectFileName to "Taxiokar.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Taxiokar is a dbViewSubS
//     SYSRECC_DD is a sysrecc_dataDictionary
//     Witemkat_DD is a Witemkat_DataDictionary
//     Units_DD is a Units_DataDictionary
//     Fpa_DD is a Fpa_DataDictionary
//     Item_DD is a Item_DataDictionary
//     Codetype_DD is a CodeType_dataDictionary
//     Codemast_DD is a Codemast_DataDictionary
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
//       RadioSub4 is a RadioSub
//       Radio2 is a RadioSub
//       Radio5 is a RadioSub
//       Radio6 is a RadioSub
//       Radio7 is a RadioSub
//       Radio8 is a RadioSub
//       Radio9 is a RadioSub
//     nopayresp is a CheckBoxSub
//     FormSub1 is a FormSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub

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
Register_Object Codemast_DD
Register_Object Codetype_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object FormSub1
Register_Object Fpa_DD
Register_Object frmFileName
Register_Object Item_DD
Register_Object Mhxanik_DD
Register_Object nopayresp
Register_Object oOpenFile
Register_Object Payresp_DD
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object Radio5
Register_Object Radio6
Register_Object Radio7
Register_Object Radio8
Register_Object Radio9
Register_Object RadioGroupSub1
Register_Object RadioSub4
Register_Object Salesmen_DD
Register_Object SYSRECC_DD
Register_Object Syscurxr_DD
Register_Object Taxiokar
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object Towns_DD
Register_Object Tperga_DD
Register_Object Units_DD
Register_Object Witemkat_DD


//AB/ AppBuild VIEW


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
Use codetype.dd
Use codemast.dd
USE SYSRECC.DD
Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD
Use bpmkwcm.dg
use sl023.sl
Use doartkarap.pkg
Use doartkarapp.pkg
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Form.Sub
Use Button.Sub
Use Txtbox.Sub
Use Rgroup.Sub
Use Radio.Sub
Use Chkbox.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Taxiokar FOR Taxiokar

Object Taxiokar is a dbViewSubS

    //AB-StoreTopStart
                                                                                                                                                                                
    Property Integer piLathos   Public   0
    Property String  psModule   Public '01'
    Property Integer piWhat     Public   0
    Property Integer piProm     Public   0
    property string  pswapokat  public ''
    Property integer pitxtid    public   0
    
    Open SysCurXR
    Open Year
    open wax
    open wtypkin
    open witemx
    //////////////////////////////////////////////////////
    // DataDictionary Structure needed for making Barticle
    //////////////////////////////////////////////////////
    Object SYSRECC_DD is a sysrecc_dataDictionary
    End_Object    // sysrecc_DD
    
    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD
    
    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD
    
    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD
    
    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Fpa_DD(self))
    End_Object    // Item_DD
    
    Object Codetype_DD is a CodeType_dataDictionary
    End_Object    // Codetype_DD
    
    Object Codemast_DD is a Codemast_DataDictionary
        Set DDO_Server to (Codetype_DD(self))
        Set Constrain_File to Codetype.File_Number
    End_Object    // Codemast_DD
    
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

    Set Label to "ƒ£ ¦¬¨ε „¨­ι¤ - ‚β­¬¨ª"
    Set Size to 250 451
    Set Location to 9 7

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

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Set Label to "„§¥¨©ε"
        Set Size to 14 218
        Set Location to 200 83
        Set Form_TypeFace Item 0 to "MS Sans Serif"

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
            Direct_Output Channel 9 'C:\Titan_Kinhseis_Error.txt'
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
                     If (piWhat(Self)=1) set piprom to 0
                else if (piWhat(Self)=2) set piprom to 1
                     If (piWhat(Self)=7) set psmodule to '01'
                else if (piWhat(Self)=8) set psmodule to '02'
                     If (piWhat(Self)=0) Send Make_Payresp_Record   sFile
                Else If (piWhat(Self)=1) Send Read_Pelates          sFile
                Else If (piWhat(Self)=2) Send Read_Pelates          sFile
                Else If (piWhat(Self)=3) Send Read_item             sFile
                Else If (piWhat(Self)=4) Send Read_item_Apogr       sFile
                Else If (piWhat(Self)=5) Send Read_Kinhseis_pelaton sFile
                Else If (piWhat(Self)=6) Send Read_Kinhseis_promi   sFile
                Else If (piWhat(Self)=7) Send Read_Pmoves_pelaton   sFile
                Else If (piWhat(Self)=8) Send Read_Pmoves_promi     sFile
                Else If (piWhat(Self)=9) Send enhm_afm_pelaton      sFile
                Else If (piWhat(Self)=10) Send enhm_afm_promi      sFile
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
        
        
        
        Procedure Make_Payresp_Record String asFile
            String  sLine sPrespcode  sPrespName sID
            Integer iInt1 icheckpayresp
            Get Checked_State Of nopayresp    to iCheckpayresp
            if (icheckpayresp) begin
                Add 1                       to iInt1
                Set Label Of ButtonSub1     to (String(iInt1))
                Move 00000                  to Payresp.Presp_Rec0
                move '€¤ΰ©«¦ª'             to payresp.presp_name
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                (Trim(String(payresp.presp_Rec0))))));
                                                to payresp.presp_Recr
        
                Get fsgCode_With_Zeroes Payresp.Presp_Rec0      ;
                                        Sysfile.Client_Digits   ;
                                        SysCurXr.Company_Code   ;
                                        SysCurXr.Branch_Code    ;
                                                to Payresp.Presp_ID
        
                Move Payresp.Presp_ID           to sID
                Move Payresp.Presp_id           to Payresp.Presp_Codem
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
            end
            Set Label Of ButtonSub1 to ''
            Close_output Channel 1
        End_Procedure
        
        
        
        
        Procedure Read_Pelates String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine sClientID
            Integer iLathos iNum iInt1 iInt2 ifound
            /////////////////////////
        
            // ‹«™Ά«βª §›εΰ¤
            Local String  sKodPel sPelName sAfm sPresp
            Local String  sStoixeia  sArmodios sArmodiosAdd sArmodiosLoipa
            String  sDOY sPrespID scitydescr sareadescr sjob stk stel sfax scodegl
            Integer iXondr iStatus iLastClient icheckpayresp rval
            Number  nOrioAnoixto nAnoixto nOrioYpol nYpol
            Date    dCreation
        
            Move 0 to iInt1
            Move 0 to iInt2
        
            /////////////////////////
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
        
                Move (Mid(sLine,04, 03))    to sKodPel
                Move (Mid(sLine,06, 01))    to safm
                Move (Mid(sLine,80, 21))    to sPelName
            //    Move (Mid(sLine,20,101))    to sAFM
                Move (Mid(sLine,60,121))    to sStoixeia
                Move (Mid(sLine,40,181))    to scitydescr
                Move (Mid(sLine,40,221))    to sAreadescr
                Move (Mid(sLine,50,261))    to sjob
                Move (Mid(sLine,80,311))    to sArmodios
                Move (Mid(sLine,20,391))    to stk
                Move (Mid(sLine,50,411))    to stel
                Move (Mid(sLine,30,461))    to sfax
                Move (Mid(sLine,30,491))    to scodegl
                if (piprom(self)=0) Move (Mid(sLine,01,521))    to iXondr
                if (ixondr=2) move 0        to ixondr
                if (piprom(self)=0) Move (Mid(sLine,20,522))    to sdoy
                else                Move (Mid(sLine,20,521))    to sdoy
                Move (Trim(sKodPel))        to sKodPel
                Move (Trim(sPelName))       to sPelName
              //  Move (Trim(skodpel))        to sAFM
                Move (Trim(sStoixeia))      to sStoixeia
                Move (Trim(sArmodios))      to sArmodios
                Move (Trim(scitydescr))     to scitydescr
                Move (Trim(sAreadescr))     to sAreadescr
                Move (Trim(sDOY))           to sDOY
                Move (Trim(sjob))           to sjob
                Move (Trim(stk))            to stk
                Move (Trim(stel))           to stel
                Move (Trim(sfax))           to sfax
                Move (Trim(scodegl))        to scodegl
                Get Checked_State Of nopayresp    to iCheckpayresp
                if (icheckpayresp) begin
                    clear payresp
                    move '0' to payresp.presp_id
                    find gt payresp BY INDEX.7
                    if (found) move payresp.presp_id   to sprespid
                    else begin
                        send stop_box 'ƒ¤ £§¦¨ι ¤ «¦§¦«ι ©«¦¤ “§η¬¤¦' 'Ά¨¦­¦¨ε'
                        procedure_return
                    end
                end
        
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
                If (Found) begin
                    if ((clients.client_afm=safm)and(piprom(self)=0)) Goto Read_Pel_Next
                    else begin
                        add 1 to rval
                        if (rval=1)  send change_sysrecc
                        reread sysrecc
                        move (sysrecc.client_rec0+1) to sysrecc.client_rec0
                        saverecord sysrecc
                        unlock
                        move sysrecc.client_rec0 to skodpel
                        Get fsgCode_With_Zeroes sKodPel         ;
                                        5                       ;
                                        SysCurXr.Company_Code   ;
                                        SysCurXr.Branch_Code    ;
                                                to sClientID
                    end
                end
        
                Clear Clients
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                 (Trim(sKodPel))))) to Clients.Client_Recr
                Find Eq Clients by index.2
                If (Found)  Goto Read_Pel_Next
        
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
        //        Move (1-iStatus)                to Clients.Client_Locked
        
        //        Get Make_Payresp sArmodios sArmodiosAdd sArmodiosLoipa sAFM sDOY sPresp ;
        //                                        to sPrespID
        
                Move sClientID                  to Clients.Client_ID
                Move sPelName                   to Clients.Client_Name
                Move sAFM                       to Clients.Client_AFM
                Move sStoixeia                  to Clients.Client_Address
                Move sPrespID                   to Clients.Presp_ID
                Move sArmodios                  to Clients.Client_Respons
                If (sjob<>'') begin
                    clear codemast
                    move sjob                       to codemast.Description
                    move 'JOB'                      to codemast.type
                    find ge codemast by index.3
                    if ((found=1) and (sjob=codemast.description) and (codemast.type='JOB'));
                        move codemast.code to sjob
                    else begin
                        reread sysfile
                        move (sysfile.aajob + 1)    to sysfile.aajob
                        saverecord sysfile
                        unlock
                        clear codemast
                        move sjob                   to codemast.description
                        move 'JOB'                  to codemast.type
                        move sysfile.aajob          to codemast.code
                        saverecord codemast
                        move codemast.code          to sjob
                    end
                end
                if (sdoy<>'') begin
                    clear codemast
                    move sdoy                       to codemast.Description
                    move 'DOY'                      to codemast.type
                    find ge codemast by index.3
                    if ((found=1) AND (sdoy=codemast.description) and (codemast.type='DOY'));
                        move codemast.code to sDOY
                    else begin
                        reread sysfile
                        move (sysfile.aadoy + 1)    to sysfile.aadoy
                        saverecord sysfile
                        unlock
                        clear codemast
                        move sdoy                   to codemast.description
                        move 'DOY'                  to codemast.type
                        move sysfile.aaDOY          to codemast.code
                        saverecord codemast
                        move codemast.code          to sdoy
                    end
                end
                if (sdoy<>'') Move sDOY         to Clients.client_doy
                if (sjob<>'') Move sjob         to Clients.client_job
                Move stk                        to Clients.Client_Zipcode
                Move stel                       to Clients.Client_Phone
                Move sfax                       to Clients.client_fax
                Move scodegl                    to Clients.Client_Glcode
                move ixondr                     to Clients.is_xondr
                Move codemast.description       to Clients.Client_DOYBTM
                //betolink
                Move SysCurXR.Beto_Site         to Clients.Client_Sitew
                Move Clients.Client_Rec0        to Clients.Client_Sn
                Move Clients.Client_id          to Clients.Client_Repm
                Move Clients.Company_Code       to Clients.CLIENT_COMPANY
                Move Clients.Client_id          to Clients.Client_RepMatch
                if (piprom(self)=1) Move '1'    to Clients.IS_PROMHTHEYTHS
                else                Move '1'    to Clients.is_Client
        
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
        
            Set Label Of ButtonSub1 to ''
        
        End_Procedure // Read_Pelates
        
        procedure change_sysrecc
            integer inum
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
        end_procedure
        
        Procedure Read_item String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine sClientID
            Integer iLathos iNum iInt1 iInt2 ifound
            /////////////////////////
        
            // ‹«™Ά«βª §›εΰ¤
            Local String  sitem sdescr sAfm sPresp
            Local String  sStoixeia  sArmodios sArmodiosAdd sArmodiosLoipa
            String  sDOY sPrespID scitydescr sareadescr sjob stk stel sfax scodegl
            Integer iXondr iStatus iLastClient icheckpayresp
            Number  nOrioAnoixto nAnoixto nOrioYpol nYpol
            Date    dCreation
        
            Move 0 to iInt1
            Move 0 to iInt2
        
            /////////////////////////
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
        
                Move (Mid(sLine,20, 01))    to sitem
                Move (Mid(sLine,80, 21))    to sdescr
                Move (Trim(sitem))          to sitem
                Move (Trim(sdescr))         to sdescr
                left sitem to sStoixeia 2
              //  if ((sStoixeia<>'74') and (sStoixeia<>'20') and (sStoixeia<>'21') and (sStoixeia<>'24'));
              //  if ((sStoixeia='74') or (sStoixeia='20') or (sStoixeia='21') or (sStoixeia='24'));
              //     goto Read_item_Next
                Add 1 to iInt1
                Set Label Of ButtonSub1 to (String(iInt1))
                Clear item
                Move sitem                  to Item.item_code
                Find Eq Item By Index.5
                If (Found) begin
                    Writeln Channel 9 '„ε›     - Record #' (String(iInt1)) '    Item Found=' sitem
                    Goto Read_item_Next
                end
                send clear to fpa_dd
                send clear to units_dd
                send clear to witemkat_dd
                send clear to item_dd
                move 18.00 to fpa.fpa_pososto
                send find to fpa_dd eq 1
                if (not(found)) goto Read_item_Next
                        if (sStoixeia='20') move '01' to units.units_code
                else    if (sStoixeia='21') move '01' to units.units_code
                else    if (sStoixeia='24') move '01' to units.units_code
                else    if (sStoixeia='74') move '01' to units.units_code
                else                        move '07' to units.units_code
                send find to units_dd eq 1
                if (not(found)) goto Read_item_Next
                        if (sStoixeia='20') move '01' to witemkat.witemkat_code
                else    if (sStoixeia='21') move '03' to witemkat.witemkat_code
                else    if (sStoixeia='24') move '04' to witemkat.witemkat_code
                else    if (sStoixeia='74') move '06' to witemkat.witemkat_code
                else                        move '10' to witemkat.witemkat_code
                send find to witemkat_dd eq 1
              //  if (not(found)) goto Read_item_Next
                        if (sStoixeia='20') set field_changed_value of item_dd field item.wapokat_code to '01'
                else    if (sStoixeia='21') set field_changed_value of item_dd field item.wapokat_code to '03'
                else    if (sStoixeia='24') set field_changed_value of item_dd field item.wapokat_code to '04'
                else    if (sStoixeia='74') set field_changed_value of item_dd field item.wapokat_code to '06'
                else                        set field_changed_value of item_dd field item.wapokat_code to '10'
                set field_changed_value of item_dd field item.item_code  to sitem
                set field_changed_value of item_dd field item.item_descr to sdescr
        
                Send request_save to item_dd
        
                Read_item_Next:
        
                Readln Channel 1 sLine
            Loop
            Set Label Of ButtonSub1 to ''
        
        End_Procedure // Read_item
        
        Procedure Read_item_apogr String asFile
            String  sLine sClientID Sstoixeia Switemxrecr Swaxrecr sWtypkinRecr
            Integer iLathos iNum iInt1 iInt2 ifound idecs
            Local String  sitem sdescr sAfm srecr sqty speri
            Local number nqty naxia
            Local date ddate
            Move 0 to iInt1
            Move 0 to iInt2
        
            /////////////////////////
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
        
                Move (Mid(sLine,20, 01))        to sitem
                Move (Mid(sLine,17, 21))        to sqty
                Move (Trim(sitem))              to sitem
                Move (Trim(sqty))               to sqty
                Move (Replace(',',sQty,'.'))    to sQty
                move sqty to nqty
        
                left sitem to sStoixeia 2
                Add 1 to iInt1
                Set Label Of ButtonSub1 to (String(iInt1))
                move syscurxr.company_code  to witemx.company_code
                move syscurxr.branch_code   to witemx.branch_code
                move syscurxr.year_year     to witemx.year_year
                move sitem                  to witemx.witemx_code
                find eq witemx by index.5
                if (not(found)) begin
                   Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Witemx Record not found'
                   goto Read_item_Next_apogr
                end
                move witemx.witemx_recr    to switemxrecr
                set pswapokat to  witemx.item_apokat_cod
                clear wax
                move syscurxr.company_code  to wax.company_code
                move syscurxr.branch_code   to wax.branch_code
                move syscurxr.year_year     to wax.year_year
                move witemx.item_apokat_cod to wax.wapokat_code
                get value of formsub1       to wax.wapomast_code
                move syscurxr.year_year     to wax.wax_code
                find eq wax by index.1
                if (not(found)) begin
                   Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Wax Record not found'
                   goto Read_item_Next_apogr
                end
                Move Wax.wax_recr to swaxrecr
                sysdate4 ddate
                clear wtypkin
                move '300' to wtypkin.wtypkin_code
                find eq wtypkin by index.1
                if (not(found)) begin
                   Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Wtypkin 300 Record not found'
                   goto Read_item_Next_apogr
                end
                Set psModule         Of bpMkWcm  to  '03'
                move wtypkin.wtypkin_recr to swtypkinrecr
                Set psWTypkinRecr    Of bpMkWcm  to  sWtypkinRecr
                Set psWitemxRecr     Of bpMkWcm  to  sWitemxRecr
                Set psWaxRecr        Of bpMkWcm  to  sWaxRecr
                set psclientid       of bpmkwcm  to  ''
                set psPmovesRecr     of bpmkwcm  to  ''
                set pscncode         of bpmkwcm  to  ''
                set pnposodisc       of bpmkwcm  to  0
                set pnposofpa        of bpmkwcm  to  0
                Set pnPosothta       Of bpMkWcm  to  nqty
                Set pnTimhMonados    Of bpMkWcm  to  0
                Set pdHmnia          Of bpMkWcm  to  ddate
                Set psNomisma        Of bpMkWcm  to  syscurxr.c_code0
                Set psParticleRecr   Of bpMkWcm  to  ''
                move '„¥ €§¦¨­γª' to speri
                Set psPerigrafh      Of bpMkWcm  to  sPeri
                Set piFromKinApoth   Of bpMkWcm  to  False
                Set psWcmovesRecr    Of bpMkWcm  to  ''
                Set piTxtID          Of bpMkWcm to  (piTxtID(Self))
                Set piActivate       Of bpMkWcm to  1
                Send DoProcess       to bpMkWcm
                Get piLathos Of bpMkWcm to ILathos
                If (ilathos <> 0) bEGIN
                   Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) 'Error writing Wcmoves Record '
                   goto Read_item_Next_apogr
                end
                Get fsCurrent_WCmoves_Recr Of bpMkWcm to srecr
                If (Trim(sRecr)='') Begin
                   Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) 'Not return Wcmoves recr '
                   goto Read_item_Next_apogr
                End
        
                Read_item_Next_apogr:
                Readln Channel 1 sLine
            Loop
            Set Label Of ButtonSub1 to ''
        End_Procedure // Read_item_apogr
        
        Procedure Read_Kinhseis_pelaton String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine   sClientID sRecr   sError sbank sepitagh sxart shh smm see
            Integer iLathos iBtypkin  iInt1   iBaxioKat iCmvRec
            Integer iError_Object_ID  iRecnum iErr rVal
            string saxia shhl smml seel
        
            /////////////////////////
        
            // ‹«™Ά«βª §›εΰ¤
            Local String  sKinhsh sArPar sEidAxio sUnused sHmnia sKodPel sKodErg sCN
            Integer iKodMon ile iKodKin1 iKodKin2 iCtypkin
            Number  nAxia nhh nmm nee  nhhl nmml neel ndate
            Date    dHmParast dHmlhxh
            /////////////////////////
        
            Move 0 to iInt1
        
            Append_Output Channel 9 'C:\Titan_Kinhseis_Error.txt'
        
            Set piLathos to 0
        
            Move '04' to gs_Module_Code
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
                Move (Mid(sLine,20,01)) to sKodPel
                Move (Mid(sLine,03,21)) to sKinhsh
                Move (Mid(sLine,02,24)) to shh
                Move (Mid(sLine,02,27)) to smm
                Move (Mid(sLine,02,30)) to see
                Move (Mid(sLine,55,32)) to sArPar
                Move (Mid(sLine,15,91)) to sAxia
                Move (Mid(sLine,02,106)) to shhl
                Move (Mid(sLine,02,109)) to smml
                Move (Mid(sLine,02,112)) to seel
                Move (Mid(sLine,04,114)) to sbank
                Move (Mid(sLine,16,118)) to sepitagh
                Move (Mid(sLine,01,152)) to sxart
                Move (Replace(',',saxia,'.')) to naxia
                Move (trim(skodpel)) to sKodPel
                Move (trim(skinhsh)) to sKinhsh
                Move (trim(shh))     to shh
                Move (trim(smm))     to smm
                Move (trim(see))     to see
                Move (trim(sarpar))  to sArPar
                Move (trim(shhl))    to shhl
                Move (trim(smml))    to smml
                Move (trim(seel))    to seel
                Move (trim(sbank))   to sbank
                Move (trim(sepitagh)) to sepitagh
                     if ((sxart='0') or (sxart='')) move '1' to sxart
                else if (sxart='1') move '2' to sxart
                move '' to shmnia
                move (append(shmnia,shh + "/" + smm + "/" + see)) to shmnia
                move shmnia to dhmparast
                move '' to shmnia
                move (append(shmnia,shhl + "/" + smml + "/" + seel)) to shmnia
                move shmnia to dhmlhxh
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
        
                     If (skinhsh='130') begin
                        if (naxia >=0) Move 103 to iBtypkin
                        else Begin
                            move 107 to ibtypkin
                            move (naxia*(-1)) to naxia
                        End
                     end
                Else If (skinhsh='132')   Move 100 to iBtypkin
                Else If (skinhsh='133')   Move 101 to iBtypkin
                Move iBtypkin               to btypkin.Btypkin_Code
                Send Find to Btypkin_DD Eq 1
                If (Not(Found)) Begin
                    Set piLathos to 7000
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Btypkin not found iBtypkin=' (String(iBtypkin))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_pelath
                End
                move 0 to rval
                Move sKODPEL               to Clients.Client_AFM
        
                Find gt Clients By Index.8 // Client_ID
                while ((Found) and (clients.client_afm=skodpel))
                      if  (clients.is_client='1') begin
                          move 1 to rval
                          goto next_step
                      end
                find gt clients by index.8
                loop
                next_step:
                if (rval=0) begin
                    Set piLathos to 7001
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Client not found ID= ' (Trim(skodpel))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_pelath
                End
        
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Hmnia    to dHmParast
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Code1    to Clients.Client_ID
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Epon1    to Clients.Client_Name
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Aitiol   to (Trim(sArPar))
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_M_Code   to '04'
        
                Send Request_Save to Barticl_DD
                Send Clear to Baxiokat_DD
                Send Clear to Baxio_DD
                Send Clear to Bmove_DD
        
                     If (ibtypkin=100)   Move 1 to iBaxioKat
                Else If (ibtypkin=101)   Move 2 to iBaxioKat
                Else If (ibtypkin=103)   Move 99 to iBaxioKat
        
                Move iBaxioKat  to BaxioKat.Baxiokat_Code
                Send Find       to Baxiokat_DD Eq 1
                If (Not(Found)) Begin
                    Set piLathos to 7002
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Baxiokat not found ID= ' (String(iBaxioKat))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_pelath
                End
        
                if (dhmlhxh='') Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_HmniaL    to dHmparast
                else            Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_HmniaL    to dHmlhxh
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_C_Code2   to 'EUR'
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_V2        to  naxia
        
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_Ekdoths   to Clients.Client_ID
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_EkdothsE  to Clients.Client_Name
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_banka     to sbank
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_no        to sepitagh
                Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_status    to sxart
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
        
               Read_Next_Kinhsh_pelath:
               move iError_Object_ID to Error_Object_ID
        
               Readln Channel 1 sLine
            Loop
        
            Set Label Of ButtonSub1 to ''
        
                 If (piLathos(Self)=70000) Send Stop_Box 'Btypkin Not found'  ('# '+(String(iInt1)))
            Else If (piLathos(Self)=70001) Send Stop_Box 'Client Not found'   ('# '+(String(iInt1)))
            Else If (piLathos(Self)=70002) Send Stop_Box 'Baxiokat Not found' ('# '+(String(iInt1)))
        
        
            Close_Output Channel 9
        
        
        End_Procedure // Read_Kinhseis_pelaton
        
        
        
        Procedure Read_Kinhseis_promi String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine   sClientID sRecr   sError sbank sepitagh sxart shh smm see
            Integer iLathos iBtypkin  iInt1   iBaxioKat iCmvRec
            Integer iError_Object_ID  iRecnum iErr rVal
            string saxia shhl smml seel
        
            /////////////////////////
        
            // ‹«™Ά«βª §›εΰ¤
            Local String  sKinhsh sArPar sEidAxio sUnused sHmnia sKodPel sKodErg sCN
            Integer iKodMon ile iKodKin1 iKodKin2 iCtypkin
            Number  nAxia nhh nmm nee  nhhl nmml neel ndate
            Date    dHmParast dHmlhxh
            /////////////////////////
        
            Move 0 to iInt1
        
            Append_Output Channel 9 'C:\Titan_Kinhseis_Error.txt'
        
            Set piLathos to 0
        
            Move '04' to gs_Module_Code
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
                Move (Mid(sLine,20,01)) to sKodPel
                Move (Mid(sLine,03,21)) to sKinhsh
                Move (Mid(sLine,02,24)) to shh
                Move (Mid(sLine,02,27)) to smm
                Move (Mid(sLine,02,30)) to see
                Move (Mid(sLine,55,32)) to sArPar
                Move (Mid(sLine,15,91)) to sAxia
                Move (Mid(sLine,02,106)) to shhl
                Move (Mid(sLine,02,109)) to smml
                Move (Mid(sLine,02,112)) to seel
                Move (Mid(sLine,04,114)) to sbank
                Move (Mid(sLine,16,118)) to sepitagh
                Move (Mid(sLine,01,152)) to sxart
                Move (Replace(',',saxia,'.')) to naxia
        
        
                Move (trim(skodpel)) to sKodPel
                Move (trim(skinhsh)) to sKinhsh
                Move (trim(shh))     to shh
                Move (trim(smm))     to smm
                Move (trim(see))     to see
                Move (trim(sarpar))  to sArPar
                Move (trim(shhl))    to shhl
                Move (trim(smml))    to smml
                Move (trim(seel))    to seel
                Move (trim(sbank))   to sbank
                Move (trim(sepitagh)) to sepitagh
                     if ((sxart='0') or (sxart='')) move '1' to sxart
                else if (sxart='1') move '2' to sxart
                move '' to shmnia
                move (append(shmnia,shh + "/" + smm + "/" + see)) to shmnia
                move shmnia to dhmparast
                move '' to shmnia
                move (append(shmnia,shhl + "/" + smml + "/" + seel)) to shmnia
                move shmnia to dhmlhxh
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
                If (naxia=0) Begin
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    ‰ε¤© €¥ ¦¨α­¦¬ £ ¥ε = 0 ¨©«« ΅ζ =' (String(sarpar))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_promi
                End
        
        
        
                If (skinhsh='220') begin
                    if (naxia >=0) Move 302 to iBtypkin
                    else Begin
                        move 305 to ibtypkin
                        move (naxia*(-1)) to naxia
                    End
                end
                Else If (skinhsh='222')   Move 301 to iBtypkin
                Else If (skinhsh='224')   Move 300 to iBtypkin
                Move iBtypkin               to btypkin.Btypkin_Code
                Send Find to Btypkin_DD Eq 1
                If (Not(Found)) Begin
                    Set piLathos to 7000
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Btypkin not found iBtypkin=' (String(iBtypkin))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_promi
                End
                move 0 to rval
                Move sKODPEL               to Clients.Client_AFM
        
                Find gt Clients By Index.8 // Client_ID
                while ((Found) and (clients.client_afm=skodpel))
                   if (clients.is_promhtheyths='1') begin
                       move 1 to rval
                       goto next1
                   end
                find gt clients by index.8
                loop
                next1:
                if (rval=0) begin
                    Set piLathos to 7001
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Promhtheyths not found ID= ' (Trim(skodpel))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_promi
                End
        
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Hmnia    to dHmParast
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Code1    to Clients.Client_ID
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Epon1    to Clients.Client_Name
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Aitiol   to (Trim(sArPar))
                Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_M_Code   to '04'
        
                Send Request_Save to Barticl_DD
                Send Clear to Baxiokat_DD
                Send Clear to Baxio_DD
                Send Clear to Bmove_DD
        
                     If (ibtypkin=302)   Move 302 to iBaxioKat
                Else If (ibtypkin=305)   Move 302 to iBaxioKat
                Else If (ibtypkin=300)   Move 1   to iBaxioKat
                Else If (ibtypkin=301)   Move 300 to iBaxioKat
        
                Move iBaxioKat  to BaxioKat.Baxiokat_Code
                Send Find       to Baxiokat_DD Eq 1
                If (Not(Found)) Begin
                    Set piLathos to 7002
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Baxiokat not found ID= ' (String(iBaxioKat))
                    Abort_Transaction
                    Goto Read_Next_Kinhsh_promi
                End
                if (ibtypkin=300) begin
                   move dhmlhxh to baxio.baxio_hmnial
                   move 1       to baxio.baxio_status
                   move sepitagh to baxio.baxio_no
                   send find to baxio_dd ge 7
                   if ((found)and(baxio.baxio_hmnial=dhmlhxh)and(baxio.baxio_status=1)and(baxio.baxio_no=sepitagh)) begin
                   end
                   else begin
                        Set piLathos to 7002
                        Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    Baxio not found ID= ' (String(sepitagh))
                        Abort_Transaction
                        Goto Read_Next_Kinhsh_promi
                   end
        
                end
                else begin
                    if (dhmlhxh='') Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_HmniaL    to dHmparast
                    else            Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_HmniaL    to dHmlhxh
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_C_Code2   to 'EUR'
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_V2        to  naxia
        
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_Ekdoths   to Clients.Client_ID
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_EkdothsE  to Clients.Client_Name
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_banka     to sbank
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_no        to sepitagh
                    Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_status    to sxart
        
                end
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
        
             END_TRANSACTION
        
             Unlock
        
               Move (Err) to iErr
               If (iErr) Begin
                    Get Error_Text iErr to sError
                    Writeln Channel 9 '‰ ¤γ© ª - Record #' (String(iInt1)) '    ¨¦™Ά£ §¦ « ª ΅Άα© ª= ' (String(iErr)) '     ' (Trim(sError))
                    Unlock
                    goto Read_Next_Kinhsh_promi
               End
        
               Read_Next_Kinhsh_promi:
               move iError_Object_ID to Error_Object_ID
        
               Readln Channel 1 sLine
            Loop
        
            Set Label Of ButtonSub1 to ''
        
                 If (piLathos(Self)=70000) Send Stop_Box 'Btypkin Not found'  ('# '+(String(iInt1)))
            Else If (piLathos(Self)=70001) Send Stop_Box 'Client Not found'   ('# '+(String(iInt1)))
            Else If (piLathos(Self)=70002) Send Stop_Box 'Baxiokat Not found' ('# '+(String(iInt1)))
        
        
            Close_Output Channel 9
        
        
        End_Procedure // Read_Kinhseis_promi
        
        
        
        Procedure Read_pmoves_pelaton String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            Integer ibpoid
            string swax
            move (Doartkarap(current_object)) to ibpoid
            Set psmodule Of iBPOID to (psmodule(self))
            get value of formsub1       to swax
            if (swax='') begin
               send info_box 'ƒ¤ ©¬£§Ά¨ι©« §¦γ΅' 'Ά¨¦­¦¨ε'
               procedure_return
            end
            set pswax    Of iBPOID to swax
            set psfile   Of iBPOID to asfile
            send beg_uparticlekarap to ibpoid
        End_Procedure // Read_pmoves_pelaton
        
        Procedure Read_pmoves_promi String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            Integer ibpoid
            string swax
            move (Doartkarapp(current_object)) to ibpoid
            Set psmodule Of iBPOID to (psmodule(self))
            get value of formsub1       to swax
            if (swax='') begin
               send info_box 'ƒ¤ ©¬£§Ά¨ι©« §¦γ΅' 'Ά¨¦­¦¨ε'
               procedure_return
            end
            set pswax    Of iBPOID to swax
            set psfile   Of iBPOID to asfile
            send beg_uparticlekarapp to ibpoid
        End_Procedure // Read_pmoves_pelaton
        
        Procedure enhm_afm_pelaton String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine sClientID
            Integer iLathos iNum iInt1 iInt2 ifound
            /////////////////////////
        
            // ‹«™Ά«βª §›εΰ¤
            Local String  sKodPel sPelName sAfm sPresp  srecr
            Local String  sStoixeia  sArmodios sArmodiosAdd sArmodiosLoipa
            String  sDOY sPrespID scitydescr sareadescr sjob stk stel sfax scodegl
        
            Move 0 to iInt1
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
                Move (Mid(sLine,06, 01))    to sKodPel
                Move (Mid(sLine,20,101))    to sAFM
                Move (Trim(sKodPel))        to sKodPel
                Move (Trim(sAFM))           to safm
                Add 1 to iInt1
                Set Label Of ButtonSub1 to (String(iInt1))
                clear clients
                Move sKODPEL               to Clients.Client_AFM
                Find gt Clients By Index.8 // Client_afm
                while ((Found) and (clients.client_afm=skodpel))
                   if (clients.is_client='1') begin
                       move clients.client_recr to  srecr
                       reread clients
                       move safm to clients.client_afm
                       saverecord clients
                       unlock
                       clear clients
                       move srecr to clients.client_recr
                       find eq clients by index.2
                   end
        
                find gt clients by index.8
                loop
        
                Readln Channel 1 sLine
            Loop
            Set Label Of ButtonSub1 to ''
        
        End_Procedure // enhm_afm_foreon
        
        Procedure enhm_afm_promi String asFile
            // €¤¥α¨««ª ‹«™Ά«βª
            String  sLine sClientID
            Integer iLathos iNum iInt1 iInt2 ifound
            /////////////////////////
        
            // ‹«™Ά«βª §›εΰ¤
            Local String  sKodPel sPelName sAfm sPresp  srecr
            Local String  sStoixeia  sArmodios sArmodiosAdd sArmodiosLoipa
            String  sDOY sPrespID scitydescr sareadescr sjob stk stel sfax scodegl
        
            Move 0 to iInt1
        
            Direct_Input Channel 1 asFile
            Readln Channel 1 sLine
            While (Not(Seqeof))
                Move (Mid(sLine,06, 01))    to sKodPel
                Move (Mid(sLine,20,101))    to sAFM
                Move (Trim(sKodPel))        to sKodPel
                Move (Trim(sAFM))           to safm
                Add 1 to iInt1
                Set Label Of ButtonSub1 to (String(iInt1))
                clear clients
                Move sKODPEL               to Clients.Client_AFM
                Find gt Clients By Index.8 // Client_afm
                while ((Found) and (clients.client_afm=skodpel))
                   if (clients.is_promhtheyths='1') begin
                       move clients.client_recr to  srecr
                       reread clients
                       move safm to clients.client_afm
                       saverecord clients
                       unlock
                       clear clients
                       move srecr to clients.client_recr
                       find eq clients by index.2
                   end
                find gt clients by index.8
                loop
        
                Readln Channel 1 sLine
            Loop
            Set Label Of ButtonSub1 to ''
        
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "„§ Ά¦γ ¨®ε¦¬"
        Set Location to 7 5
        Set Size to 10 55
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 172 161
        Set Location to 20 98
        Object Radio1 is a RadioSub
            Set Label to "“§η¬¤¦  Ά¨ΰ£ι¤"
            Set Size to 10 95
            Set Location to 10 5
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "Άα«ª"
            Set Size to 10 95
            Set Location to 24 5
        End_Object    // Radio2

        Object Radio3 is a RadioSub
            Set Label to "¨¦£¬«βª"
            Set Size to 10 71
            Set Location to 38 5
        End_Object    // Radio3

        Object Radio1 is a RadioSub
            Set Label to "„ε›"
            Set Size to 10 33
            Set Location to 52 5
        End_Object    // Radio1

        Object RadioSub4 is a RadioSub
            Set Label to "€§¦¨­γ „ ›ι¤ "
            Set Size to 10 79
            Set Location to 66 5
            Set Auto_Size_State to FALSE
        End_Object    // RadioSub4

        Object Radio2 is a RadioSub
            Set Label to "‰ ¤γ© ª Ά«ι¤ (€¥ ζ¨­)"
            Set Size to 10 121
            Set Location to 81 5
        End_Object    // Radio2

        Object Radio5 is a RadioSub
            Set Label to "‰ ¤γ© ª ¨¦£¬«ι¤ (€¥ ζ¨­)"
            Set Size to 10 134
            Set Location to 95 5
        End_Object    // Radio5

        Object Radio6 is a RadioSub
            Set Label to "¨©«« ΅α  Ά«ι¤"
            Set Size to 10 100
            Set Location to 110 5
        End_Object    // Radio6

        Object Radio7 is a RadioSub
            Set Label to "¨©«« ΅α  ¨¦£¬«ι¤"
            Set Size to 10 112
            Set Location to 124 5
        End_Object    // Radio7

        Object Radio8 is a RadioSub
            Set Label to "„¤£β¨ΰ© Ά«ι¤ £ €.”.‹"
            Set Size to 10 125
            Set Location to 138 5
        End_Object    // Radio8

        Object Radio9 is a RadioSub
            Set Label to "„¤£β¨ΰ© ¨¦£¬«ι¤ £ €.”.‹"
            Set Size to 12 134
            Set Location to 153 5
        End_Object    // Radio9


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

    Object nopayresp is a CheckBoxSub
        Set Label to "ƒ¤ ¬§α¨®¦¬¤ ©« ª ‚β­¬¨ª"
        Set Size to 10 111
        Set Location to 33 268
    End_Object    // nopayresp

    Object FormSub1 is a FormSub
        Set Size to 13 45
        Set Location to 86 263
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl023(Current_object))
        procedure prompt
            set psapokat of (sl023(self)) to (pswapokat(self))
            forward send prompt
            set pswapokat to ''
            set psapokat of (sl023(self)) to ''
        end_procedure
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "€§¦γ΅"
        Set Location to 87 314
        Set Size to 10 38
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "PELATES.PNI ©«¤ ζ¤"
        Set TextColor to clRed
        Set Location to 158 263
        Set Size to 10 103
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "PROMHT.PNI ©«¤ ζ¤"
        Set TextColor to clRed
        Set Location to 172 263
        Set Size to 12 95
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4


    //AB-StoreStart
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
    //AB-StoreEnd

End_Object    // Taxiokar


//AB-StoreStart
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//AB-StoreEnd

//AB/ End_Object    // prj
