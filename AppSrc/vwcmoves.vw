//AB/ Project Cmoves
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Cmoves"
//AB/     Set ProjectFileName to "vwCmoves.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwCmoves is a dbViewSubs
//     Cn_DD2 is a CN_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cflagkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Container2 is a dbContainer3d
//       Clients_Client_id is a dbFormSub
//       Clients_Client_name is a dbFormSub
//       Clients_Client_afm is a dbFormSub
//       Textbox29 is a TextBoxSub
//       Textbox30 is a TextBoxSub
//       Textbox31 is a TextBoxSub
//       Clients_Client_Address is a dbFormSub
//       TextBoxSub9 is a TextBoxSub
//       Clients_Client_City is a dbFormSub
//       TextBoxSub10 is a TextBoxSub
//       TextBoxSub47 is a TextBoxSub
//       Clients_Client_Add_No is a dbFormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         dbGroupSub2 is a dbGroupSub
//           Ctypkin_Ctypkin_Code is a dbFormSub
//           Ctypkin_Ctypkin_Descr is a dbFormSub
//           Cn_Cn_Code is a dbFormSub
//           Cn_Cn_Descr is a dbFormSub
//           Cmoves_Cmoves_Hmnia is a dbFormSub
//           Cmoves_Cmoves_Par is a dbFormSub
//           Axia is a dbFormSub
//           Nomisma is a dbFormSub
//           Cmoves_Cmoves_Recr is a dbFormSub
//           X0 is a dbFormSub
//           P0 is a dbFormSub
//           Textbox35 is a TextBoxSub
//           Textbox36 is a TextBoxSub
//           Textbox37 is a TextBoxSub
//           Textbox38 is a TextBoxSub
//           Textbox39 is a TextBoxSub
//           Textbox40 is a TextBoxSub
//           Textbox41 is a TextBoxSub
//           Textbox42 is a TextBoxSub
//           txtnom1 is a TextBoxSub
//           X00 is a dbFormSub
//           X1 is a dbFormSub
//           P00 is a dbFormSub
//           P1 is a dbFormSub
//           txtnom2 is a TextBoxSub
//           txtnom3 is a TextBoxSub
//           TextBoxSub5 is a TextBoxSub
//           Textbox45 is a TextBoxSub
//           Textbox46 is a TextBoxSub
//           btnPartl is a ButtonSub
//           frmIsClosed is a FormSub
//     dbGroupSub5 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub14 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       TextBoxSub16 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object Axia
Register_Object Branch_Branch_Name
Register_Object btnPartl
Register_Object Cflagkin_DD
Register_Object Cities_DD
Register_Object Clients_Client_Add_No
Register_Object Clients_Client_Address
Register_Object Clients_Client_afm
Register_Object Clients_Client_City
Register_Object Clients_Client_id
Register_Object Clients_Client_name
Register_Object Clients_DD
Register_Object Cmoves_Cmoves_Hmnia
Register_Object Cmoves_Cmoves_Par
Register_Object Cmoves_Cmoves_Recr
Register_Object Cmoves_DD
Register_Object Cn_Cn_Code
Register_Object Cn_Cn_Descr
Register_Object Cn_DD
Register_Object Cn_DD2
Register_Object Company_Company_Name
Register_Object Constrct_DD
Register_Object Container2
Register_Object Country_DD
Register_Object Ctypkin_Ctypkin_Code
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_DD
Register_Object dbGroupSub2
Register_Object dbGroupSub5
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object frmIsClosed
Register_Object Nomisma
Register_Object P0
Register_Object P00
Register_Object P1
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub47
Register_Object TextBoxSub5
Register_Object TextBoxSub9
Register_Object Textbox29
Register_Object Textbox30
Register_Object Textbox31
Register_Object Textbox35
Register_Object Textbox36
Register_Object Textbox37
Register_Object Textbox38
Register_Object Textbox39
Register_Object Textbox40
Register_Object Textbox41
Register_Object Textbox42
Register_Object Textbox45
Register_Object Textbox46
Register_Object Towns_DD
Register_Object txtnom1
Register_Object txtnom2
Register_Object txtnom3
Register_Object vwCmoves
Register_Object X0
Register_Object X00
Register_Object X1
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use sl041.sl
Use Particle.Vw
Use v036.vw

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbTabdlgS.Sub

Use dbGroup.Sub
Use Button.Sub
Use Form.Sub

Use CTYPKIN.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use PAYRESP.DD
Use AREAS.DD
Use CLIENTS.DD
Use CMOVES.DD
Use CFLAGKIN.DD
Use SYSCURXR.DD
Use SALESMEN.DD
Use CONSTRCT.DD
Use CN.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwCmoves FOR vwCmoves

Object vwCmoves is a dbViewSubs

    //AB-StoreTopStart
                        
    Property String     psModule            Public ''
    Property String     psClientID          Public ''
    Property String     psFindMovesRecr     Public ''
    Property Integer    piFromParticl       Public  0
    Property String     psFindClientRecr    Public  0
    
    Object Cn_DD2 Is A CN_DataDictionary
    End_Object
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ î¶®‚ò"
    Set Size to 288 519
    Set Location to 2 5

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        Begin_Constraints
            If (psModule(Self)<>'') Constrain Ctypkin.Ctypkin_Module eq (psModule(Self))
        End_Constraints
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Country_DD is a Country_DataDictionary

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreStart
                                                                        
                                                                        
        Set piCheckPlaf to 0
        Set Read_Only_State To True
        
        
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Areas_DD is a Areas_DataDictionary

        //AB-StoreStart
                                                                        
                                                                        
        Set Read_Only_State To True
        
        //AB-StoreEnd

    End_Object    // Areas_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Payresp_DD(self))
        Set DDO_Server to (Areas_DD(self))

        //AB-StoreStart
                                                                        
        Set piCheckPlaf to 0
        Set Read_Only_State To True
        
        Begin_Constraints
                 If (psModule(Self)='01') Constrain Clients.is_Client        Eq '1'
            Else If (psModule(Self)='02') Constrain Clients.is_Promhtheyths  Eq '1'
        End_Constraints
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
                                            
        Begin_Constraints
        
            Constrain Cmoves.Company_Code   Eq SyscurXr.Company_Code
            Constrain Cmoves.Branch_Code    Eq SyscurXr.Branch_Code
            Constrain Cmoves.Year_Year      Eq SyscurXr.Year_Year
        
            If (psModule(Self)<>'')     Constrain Cmoves.Module_From    Eq (psModule(Self))
        
        End_Constraints
        
        Procedure Update
            String  sNomisma
            Date    dHmnia
            Move Cmoves.Cmoves_Hmnia                to  dHmnia
            If (dHmnia='') Sysdate4                     Cmoves.Cmoves_Hmnia
            Move Cmoves.Cmoves_Sc_Code2             to  sNomisma
            Move (Trim(sNomisma))                   to  sNomisma
            If (sNomisma='') Move SysCurXr.C_Code0  to  Cmoves.Cmoves_Sc_Code2
        
            // js 27/06/2002
            If (Cmoves.Module_From='') Begin
                Move (psModule(Self)) to Cmoves.Module_From
                Move (psModule(Self)) to Cmoves.Cmoves_M_Code
            End
            Send Compute_all_Fields 1
            Forward Send Update
        
            If (Ctypkin.Open_Item='1') Begin
                If (Cmoves.Axia_Pros_Sysx=0) ;
                    Move (Abs(Cmoves.Cmoves_Axia))              to Cmoves.Axia_Pros_Sysx
                Move (Cmoves.Axia_Pros_Sysx-Cmoves.Axia_Sysxet) to Cmoves.Axia_Ypol_Sysx
                Move (Cmoves.Axia_Ypol_Sysx<>0)                 to Cmoves.Flag_Ypol
                // js 23/01/2002
                // Enhmerosh Pediou Flag_Open to opoio antiprosopeyei
                // an einai xreosh=1, pistosh=2, arnhtikh xreosh=2 arnhtikh Pistosh=1
                // gia na emfanizei ta antistrofa sto copen
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
        
            Get psModule to sModule
        
            Move 1 to iSign
        
            If ((Cmoves.Module_From=sModule) And (Cmoves.Barticl_Recr='') And (Cmoves.Partl_Recr=''))  Begin
        
                Move Ctypkin.Ctypkin_Recr   to sCtypkinRecr
                move clients.client_recr    to sclientrecr
                Move Cmoves.Cmoves_sc_code2 to sNomisma
                Move (Trim(sNomisma))       to sNomisma
        
                If (Trim(sCtypkinRecr)='') Begin
                    send stop_box 'Éú§ ‚Æú´ú úß†¢‚•ú† ´Áß¶ °Â§û©û™' ("error 1011 vwcmoves  "+'è¢û®¶≠¶®Âò')
                    Procedure_Return
                End
                Else If (Trim(sClientRecr)='') Begin
                         if (smodule='01') send stop_box 'Éú§ ‚Æú´ú úß†¢‚•ú† èú¢·´û'      ("error 1012 vwcmoves  "+'è¢û®¶≠¶®Âò')
                    else if (smodule='02') send stop_box 'Éú§ ‚Æú´ú úß†¢‚•ú† è®¶£ûüú¨´„'  ("error 1013 vwcmoves  "+'è¢û®¶≠¶®Âò')
                    Procedure_Return
                End
                Else If (Trim(sNomisma)='') Begin
                    send stop_box 'Éú§ ‚Æú´ú úß†¢‚•ú† å¶£†©£ò' ("error 1014 vwcmoves  "+'è¢û®¶≠¶®Âò')
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
                             if (smodule='01') send stop_box 'Éú§ ‚Æú´ú úß†¢‚•ú† èú¢ò´û'       ("error 1015 vwcmoves  "+'è¢û®¶≠¶®Âò')
                        else if (smodule='02') send stop_box 'Éú§ ‚Æú´ú úß†¢‚•ú† è®¶£ûüú¨´„'  ("error 1016 vwcmoves  "+'è¢û®¶≠¶®Âò')
                        Procedure_Return
                    End
                End
            End
        End_procedure
        
        
        //AB-StoreEnd

    End_Object    // Cmoves_DD

    Object Cflagkin_DD is a Cflagkin_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Cflagkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Object Salesmen_DD is a Salesmen_DataDictionary

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Salesmen_DD

    Object Constrct_DD is a Constrct_DataDictionary

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        
        //AB-StoreEnd

    End_Object    // Constrct_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
                                                                        
        Set Read_Only_State To True
        
        
        //AB-StoreEnd

    End_Object    // Cn_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object Container2 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 84 498
        Set Location to 28 5
        Object Clients_Client_id is a dbFormSub
            Entry_Item Clients.Client_id
            Set Size to 13 72
            Set Location to 6 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                        
            On_Key KSave_Record     Send Request_Save
            On_Key KDelete_Record   Send Request_Delete
            
            Set Item_Option Item 0 to NoPut True
            
            Procedure Request_Save
                If (Should_Save(Cmoves_DD(vwCmoves(Self))))  Send Request_Save to Cmoves_DD
            End_procedure
            
            Procedure Request_Delete
                Integer iMsg bReady
                If (Current_Record(Cmoves_DD(Self))) Begin
                    Move (YesNo_Box("åò É†òö®·Ø‡ ´û§ °Â§û©û ? ", "Ñß†ôúôòÂ‡©û É†òö®ò≠„™ âàåÜëÜ", MB_DEFBUTTON2) ) to bReady
                    If (bReady=MBR_YES) Send Request_Delete to Cmoves_DD
                End
            End_Procedure
            
            Procedure Request_Clear
                Send Clear to Clients_DD
                Send Clear to Cmoves_DD
                Send Rebuild_Constraints to Clients_DD
                Send Rebuild_Constraints to Cmoves_DD
                Send Rebuild_Constraints to CN_DD
                Send Show_CN to vwCmoves
            End_Procedure
            
            Procedure Request_Clear_All
                Send Clear to Clients_DD
                Send Clear to Cmoves_DD
                Send Rebuild_Constraints to Clients_DD
                Send Rebuild_Constraints to Cmoves_DD
                Send Rebuild_Constraints to CN_DD
                Send Show_CN to vwCmoves
            End_Procedure
            
            Procedure Prompt
                String sClientID
                Send Clear to CN_DD
                Send Clear to CN_DD2
                Set Value Of (CN_CN_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to ''
                Set psModule Of (sl100(Self)) to (psModule(Self))
                Forward Send Prompt
                get field_current_value of clients_dd field clients.client_id to sclientid
                Set psClientID to (Trim(sClientID))
                Send Rebuild_Constraints to Clients_DD
                Send Rebuild_Constraints to Cmoves_DD
                Send rebuild_Constraints to Cn_DD
                Send Show_CN to vwCmoves
            End_procedure
            
            Procedure Find_Next
                String sClientID
                Send Clear to CN_DD
                Send Clear to CN_DD2
                Set Value Of (CN_CN_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to ''
                Forward Send Find_Next
                get field_current_value of clients_dd field clients.client_id to sclientid
                Set psClientID to (Trim(sClientID))
                Send Rebuild_Constraints to Clients_DD
                Send rebuild_Constraints to Cn_DD
                Send Rebuild_Constraints to Cmoves_DD
                Send Show_CN to vwCmoves
            End_procedure
            
            Procedure Find_Previous
                String sClientID
                Send Clear to CN_DD
                Send Clear to CN_DD2
                Set Value Of (CN_CN_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to ''
                Forward Send Find_Previous
                get field_current_value of clients_dd field clients.client_id to sclientid
                Set psClientID to (Trim(sClientID))
                Send Rebuild_Constraints to Clients_DD
                Send rebuild_Constraints to Cn_DD
                Send Rebuild_Constraints to Cmoves_DD
                Send Show_CN to vwCmoves
            End_procedure
            
            Procedure Find_Ge
                String sClientID
                Send Clear to CN_DD
                Send Clear to CN_DD2
                Set Value Of (CN_CN_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to ''
                Forward Send Find_GE
                get field_current_value of clients_dd field clients.client_id to sclientid
                Set psClientID to (Trim(sClientID))
                Send Rebuild_Constraints to Clients_DD
                Send rebuild_Constraints to Cn_DD
                Send Rebuild_Constraints to Cmoves_DD
                Send Show_CN to vwCmoves
            End_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_Client_id

        Object Clients_Client_name is a dbFormSub
            Entry_Item Clients.Client_name
            Set Size to 13 306
            Set Location to 20 66
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
                                                                                                        
            //AB-StoreEnd

        End_Object    // Clients_Client_name

        Object Clients_Client_afm is a dbFormSub
            Entry_Item Clients.Client_afm
            Set Size to 13 71
            Set Location to 66 66
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
                                                                                                        
            //AB-StoreEnd

        End_Object    // Clients_Client_afm

        Object Textbox29 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ î¶®‚ò"
            Set Location to 9 5
            Set Size to 10 56
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox29

        Object Textbox30 is a TextBoxSub
            Set Label to "Ñß‡§¨£Âò"
            Set Location to 23 5
            Set Size to 10 46
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox30

        Object Textbox31 is a TextBoxSub
            Set Label to "Ä.î.ã."
            Set Location to 68 5
            Set Size to 10 26
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox31

        Object Clients_Client_Address is a dbFormSub
            Entry_Item Clients.Client_address
            Set Size to 13 306
            Set Location to 35 66
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
            //AB-StoreEnd

        End_Object    // Clients_Client_Address

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "É†úÁü¨§©û"
            Set Location to 37 5
            Set Size to 10 43
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub9

        Object Clients_Client_City is a dbFormSub
            Entry_Item Cities.City_descr
            Set Size to 13 306
            Set Location to 50 66
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
            //AB-StoreEnd

        End_Object    // Clients_Client_City

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "èÊ¢û"
            Set Location to 52 5
            Set Size to 10 36
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub10

        Object TextBoxSub47 is a TextBoxSub
            Set Label to "Ä®†ü£Ê™"
            Set Location to 37 377
            Set Size to 10 32
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub47

        Object Clients_Client_Add_No is a dbFormSub
            Entry_Item Clients.Client_add_no
            Set Size to 13 49
            Set Location to 36 413
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Clients_Client_Add_No


        //AB-StoreStart
                                                                        
                                                                        
        //AB-StoreEnd

    End_Object    // Container2

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 156 498
        Set Location to 116 5
        Set Border_Style to Border_Normal
        Object dbTabPageSubS1 is a dbTabPageSubS
            Set Label to "dbTabPageSubS1"
            Object dbGroupSub2 is a dbGroupSub
                Set Size to 132 487
                Set Location to 2 3
                Object Ctypkin_Ctypkin_Code is a dbFormSub
                    Entry_Item Ctypkin.Ctypkin_code
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 10 66
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    Procedure Prompt
                        Set psModule Of (sl007(Self)) to (psModule(Self))
                        Set Modal_State Of (sl007(Self)) to True
                        Forward Send prompt
                        Set psModule Of (sl007(Self)) to ''
                    End_procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Ctypkin_Ctypkin_Code

                Object Ctypkin_Ctypkin_Descr is a dbFormSub
                    Entry_Item Ctypkin.Ctypkin_descr
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 186
                    Set Location to 10 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // Ctypkin_Ctypkin_Descr

                Object Cn_Cn_Code is a dbFormSub
                    Entry_Item Cmoves.Cn_code
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 26 67
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                    Procedure Request_Clear
                        Send Clear to Cn_DD
                        Send Clear to Cn_DD2
                    End_Procedure
                    
                    Procedure Request_Clear_All
                        Send Clear to Cn_DD
                        Send Clear to Cn_DD2
                    End_Procedure
                    
                    Procedure Prompt_CallBack Integer hPromptID
                        String sID
                        get field_current_value of clients_dd field clients.client_id to sid
                        Set FragmaClient_ID Of hPromptID to sID
                    End_Procedure
                    
                    Procedure Prompt
                        Send Show_CN  to vwCmoves
                        string sclient
                        get value of (clients_client_id(container2(self))) to sclient
                        set fragmaclient_id of (sl041(self)) to sclient
                        forward send prompt
                        set fragmaclient_id of (sl041(self)) to ''
                    End_Procedure
                    
                    Procedure OnChange
                        Send Show_CN  to vwCmoves
                    End_procedure
                    
                    
                    
                    Procedure Find_Next
                    End_Procedure
                    Procedure Find_Previous
                    End_Procedure
                    Procedure Find_GE
                    End_Procedure
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cn_Cn_Code

                Object Cn_Cn_Descr is a dbFormSub
                    Entry_Item Cn.Cn_descr
                    Set Server to (Cn_DD(self))
                    Set Size to 13 186
                    Set Location to 26 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                                        
                    Set Server to (Cn_DD2(Self))
                    
                    
                    //AB-StoreEnd

                End_Object    // Cn_Cn_Descr

                Object Cmoves_Cmoves_Hmnia is a dbFormSub
                    Entry_Item Cmoves.Cmoves_hmnia
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 40 66
                    Set Color to 16576738
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    Procedure Prompt
                        String sClientID
                        get field_current_value of clients_dd field clients.client_id to sclientid
                        Set psClientID  Of (sl006(self)) to (Trim(sClientID))
                        Set psModule    Of (sl006(self)) to (psModule(Self))
                        Forward Send Prompt
                        Send Set_The_Decimal_Points to vwCmoves
                        Send Show_CN to vwCmoves
                    End_procedure
                    
                    Procedure Refresh Integer iMode
                        Forward Send Refresh iMode
                        Send Set_The_Decimal_Points to vwCmoves
                        Send Show_CN to vwCmoves
                        Send Enable_The_Fields to vwCmoves
                        Set Enabled_State Of btnPartl to ;
                            (((Cmoves.Cmoves_M_Code='01') Or ;
                              (Cmoves.Cmoves_M_Code='02') Or ;
                              (Cmoves.Cmoves_M_Code='04') ) And (piFromParticl(self)=0))
                    End_procedure
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Hmnia

                Object Cmoves_Cmoves_Par is a dbFormSub
                    Entry_Item Cmoves.Cmoves_par
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 186
                    Set Location to 41 258
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                End_Object    // Cmoves_Cmoves_Par

                Object Axia is a dbFormSub
                    Entry_Item Cmoves.Cmoves_axia
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 55 66
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                End_Object    // Axia

                Object Nomisma is a dbFormSub
                    Entry_Item Cmoves.Cmoves_sc_code2
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 66
                    Set Location to 55 258
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Prompt_Button_Mode to pb_PromptOn
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    //Set Prompt_Object to (slNomism(Self))
                    
                    Procedure Prompt
                        Forward Send Prompt
                        Send Set_The_Decimal_Points to vwCmoves
                    End_procedure
                    
                    Procedure OnChange
                    //    If (Focus(Desktop)=Nomisma(Self)) Send Set_The_Decimal_Points to vwCmoves
                        Send Set_The_Decimal_Points to vwCmoves
                    End_procedure
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Nomisma

                Object Cmoves_Cmoves_Recr is a dbFormSub
                    Entry_Item Cmoves.Cmoves_recr
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 66
                    Set Location to 115 413
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    Set Item_Option Item 0 to Noput True
                    Set Visible_State To False
                    Set Enabled_State To False
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Recr

                Object X0 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_x0
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 83 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // X0

                Object P0 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_p0
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 83 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // P0

                Object Textbox35 is a TextBoxSub
                    Set Label to "â‡õ†°Ê™ âÂ§û©û™"
                    Set Location to 10 7
                    Set Size to 10 56
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox35

                Object Textbox36 is a TextBoxSub
                    Set Label to "â‡õ†°Ê™ Î®ö¶¨"
                    Set Location to 26 7
                    Set Size to 10 52
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox36

                Object Textbox37 is a TextBoxSub
                    Set Label to "Ü£ú®/§Âò"
                    Set TextColor to clNavy
                    Set Location to 41 7
                    Set Size to 10 31
                    Set FontWeight to 600
                    Set Justification_Mode to jMode_Left
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox37

                Object Textbox38 is a TextBoxSub
                    Set Label to " Ä•Âò"
                    Set Location to 55 7
                    Set Size to 10 27
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox38

                Object Textbox39 is a TextBoxSub
                    Set Label to "recr"
                    Set Location to 102 413
                    Set Size to 10 18
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                    Set Visible_State to False
                    Set Enabled_State to False
                    
                    //AB-StoreEnd

                End_Object    // Textbox39

                Object Textbox40 is a TextBoxSub
                    Set Label to "èú®†ö®ò≠„ "
                    Set Location to 10 211
                    Set Size to 10 41
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox40

                Object Textbox41 is a TextBoxSub
                    Set Label to "èú®†ö®ò≠„"
                    Set Location to 27 211
                    Set Size to 10 41
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox41

                Object Textbox42 is a TextBoxSub
                    Set Label to "èò®ò©´ò´†°Ê"
                    Set Location to 43 211
                    Set Size to 10 47
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox42

                Object txtnom1 is a TextBoxSub
                    Set Label to "ï®‚‡©û"
                    Set Location to 82 5
                    Set Size to 10 29
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                    Set Label to SysCurXr.C_Code0
                    //AB-StoreEnd

                End_Object    // txtnom1

                Object X00 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_x00
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 99 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // X00

                Object X1 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_x1
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 115 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // X1

                Object P00 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_p00
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 99 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // P00

                Object P1 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_p1
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 115 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // P1

                Object txtnom2 is a TextBoxSub
                    Set Label to "ï® 2¶ åÊ£†©£ò"
                    Set Location to 98 5
                    Set Size to 10 57
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    Set Label to SysCurXr.C_Code00
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // txtnom2

                Object txtnom3 is a TextBoxSub
                    Set Label to "ï® 3¶ åÊ£†©£ò"
                    Set Location to 115 6
                    Set Size to 10 49
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                    Set Label to SysCurXr.C_CodeR
                    //AB-StoreEnd

                End_Object    // txtnom3

                Object TextBoxSub5 is a TextBoxSub
                    Set Label to "åÊ£†©£ò"
                    Set Location to 57 211
                    Set Size to 10 37
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub5

                Object Textbox45 is a TextBoxSub
                    Set Label to "ï®‚‡©û"
                    Set Location to 71 66
                    Set Size to 10 29
                    Set FontWeight to 600
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    //AB-StoreEnd

                End_Object    // Textbox45

                Object Textbox46 is a TextBoxSub
                    Set Label to "èÂ©´‡©û"
                    Set Location to 72 259
                    Set Size to 10 38
                    Set FontWeight to 600
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    //AB-StoreEnd

                End_Object    // Textbox46

                Object btnPartl is a ButtonSub

                    //AB-StoreTopStart
                                        
                    //AB-StoreTopEnd

                    Set Label to "ButtonSub1"
                    Set Bitmap to "Filesys3.bmp"
                    Set Size to 22 25
                    Set Location to 16 455
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                        
                    Set TooltipValue to "Ñ£≠·§†©û ßò®ò©´ò´†°¶Á òß¶ è‡¢„©ú†™/Äö¶®‚™"
                    
                    Procedure OnClick
                        String  sPartlRecr sModule sBarticlRecr
                        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Partl_Recr    to sPartlRecr
                        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Barticl_Recr  to sBarticlRecr
                        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Cmoves_M_Code to sModule
                        Move (Trim(sPartlRecr))     to sPartlRecr
                        Move (Trim(sBarticlRecr))   to sBarticlRecr
                        If (sPartlRecr<>'') Begin
                            If ( (sModule='01') Or (sModule='02') ) Begin
                                Set psModule Of (Particle(Self))            to sModule
                                Set psFindParticleRecr Of (Particle(Self))  to sPartlRecr
                                Send Activate_Particle
                                Send Request_Cancel to vwcmoves
                            End
                        End
                        Else Begin
                            If (sBarticlRecr<>'') Begin
                            //Set psModule Of (v036(Self)) to sModule
                            //Set psFindParticleRecr Of (Particle(Self))  to sPartlRecr
                                Send Activate_v036
                                Send Request_Cancel to vwcmoves
                            End
                        End
                    End_Procedure // OnClick
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // btnPartl

                Object frmIsClosed is a FormSub
                    Set Size to 29 34
                    Set Location to 83 445
                    Set Label_Col_Offset to 2
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                        
                    Set Shadow_State to True
                    
                    
                    //AB-StoreEnd

                End_Object    // frmIsClosed


                //AB-StoreStart
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                //AB-StoreEnd

            End_Object    // dbGroupSub2


            //AB-StoreStart
            set label to "é†°¶§¶£†°·"
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // dbTabPageSubS1

    End_Object    // dbTabDialogSubS1

    Object dbGroupSub5 is a dbGroupSub
        Set Size to 26 499
        Set Location to -2 4
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 59
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
                                                                                                        
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 133
            Set Location to 9 234
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                        
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 427
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                        
                                                                                                        
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                        
            //AB-StoreEnd

        End_Object    // TextBoxSub14

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 176
            Set Size to 10 47
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub15

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 378
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub16

    End_Object    // dbGroupSub5


    //AB-StoreStart
                        
    Set label to "â†§„©ú†™"
    
    Procedure Enable_The_Fields
        Integer isTheor
        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Prn_Theor to isTheor
        Set Enabled_State   Of (Ctypkin_Ctypkin_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (CN_CN_Code          (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (Cmoves_Cmoves_Hmnia (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (Cmoves_Cmoves_Par   (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (Axia                (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (Nomisma             (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
    
        If ((isTheor=1)               Or (Cmoves.Partl_Recr  <>'') Or ;
            (Cmoves.Barticl_Recr<>'') Or (piFromParticl(Self)=1)) Begin
            Set Read_Only_State Of (Cmoves_DD(vwCmoves(Self))) to True
            Set Color Of (frmIsClosed(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to clRed
        End
        Else Begin
            Set Color Of (frmIsClosed(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to clLime
            Set Read_Only_State Of (Cmoves_DD(vwCmoves(Self))) to False
        End
    End_Procedure
    
    Procedure Show_CN
        String  sCode sCompany sBranch sCustprom sCN_Recr
        String sClient_ID sClient_Recr sCN sCNd sCN_Code
        Integer iYear ret_val
        Get Value Of (CN_CN_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to sCode
        Move (Trim(sCode)) to sCode
        If (sCode='') Begin
            Move Cmoves.CN_Code to sCode
            Move (Trim(sCode)) to sCode
        End
        Clear Cn
        Move sCode to CN.CN_Code
        Find Eq CN By Index.5
        If (Found)  Begin
            Send Find_By_recnum To CN_DD2 CN.File_Number CN.Recnum
            Move CN.CN_Recr     to sCN_Recr
            Set Value Of (CN_CN_Descr(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to CN.CN_Descr
        End
        Else Begin
            Send Clear to CN_DD
            Send Clear to CN_DD2
            Set Value Of (CN_CN_Descr(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) Item 0 to ''
        End
    End_procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal iCopenID iCurRec
        String sModule sDescr sIsClient sIsPromhtheyths
    
        Get psMenuModule  Of Main_Menu      to sModule
        Set psModule                        to sModule
    
        Get gsfCode_Mast "MODULE" sModule   to sDescr
        Move (Trim(sDescr)) to sDescr
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                set label of vwcmoves to "â†§„©ú†™ èú¢ò´È§        "
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                set label of vwcmoves to "â†§„©ú†™ è®¶£ûüú¨´È§    "
              Case Break
        Case End
    
    
        If (piFromParticl(Self)=1) Begin
            Set Read_Only_State Of Cmoves_DD to True
            If (psFindMovesRecr(Self)<>'') Begin
                Clear Clients
                Move (psFindClientRecr(Self)) to Clients.Client_Recr
                Find Eq Clients By Index.2
                If (Found) Begin
                    Send Find to Clients_DD Eq 2
                    Clear Cmoves
                    Move (psFindMovesRecr(Self)) to Cmoves.Cmoves_Recr
                    Find eq Cmoves By Index.2   // Cmoves:Index.2:Cmoves_Recr
                    If (Found=1) Send Find to Cmoves_DD eq 2 // Cmoves:Index.2:Cmoves_Recr
                End
            End
        End
        Send Rebuild_Constraints        to Clients_DD
        Send Rebuild_Constraints        to Cmoves_DD
        Send Rebuild_Constraints        to Ctypkin_DD
    
        Set Changed_State Of Cmoves_DD to False
    
        Forward Get Msg_Activate_View to rVal
    
        Set Changed_State Of Cmoves_DD to False
    
        Procedure_Return rVal
    End_Procedure
    
    
    Procedure Request_Cancel
        Forward Send Request_Cancel
        Set Read_Only_State Of Cmoves_DD to False
        Set piFromParticl       to False
        Set psFindMovesRecr     to False
        Set psFindClientRecr    to False
    End_procedure
    
    Procedure Close_Panel
        Forward Send Close_Panel
        Set Read_Only_State Of Cmoves_DD to False
        Set piFromParticl       to False
        Set psFindMovesRecr     to False
        Set psFindClientRecr    to False
    End_procedure
    
    Procedure Set_The_Decimal_Points
        Integer iContID
        String  sCode sNomisma sPartlRecr
        date    dHmnia
    
        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Partl_Recr to sPartlRecr
        Move (Trim(sPartlRecr)) to sPartlRecr
    
        Set Enabled_State Of ;
            (btnPartl(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) ;
                    to (sPartlRecr<>'')
    
        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Cmoves_Hmnia to dHmnia
        If (dHmnia='') Begin
            Sysdate4 dHmnia
            Set Field_Current_Value Of Cmoves_DD Field Cmoves.Cmoves_Hmnia to dHmnia
        End
    
        Get Field_Current_Value Of Cmoves_DD Field Cmoves.Cmoves_Sc_Code2 to sNomisma
        Move (Trim(sNomisma)) to sNomisma
        If (sNomisma='') Set Field_Current_value Of Cmoves_DD Field Cmoves.Cmoves_Sc_Code2 to SysCurXr.C_Code0
    
        Move (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(vwCmoves(Self))))) to iContID
    
        Get Value Of (Nomisma(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (Axia(iContID)) Item  0 to Nomisma.Dekadika
        Set Numeric_Mask    Of (Axia(iContID)) Item  0 to 12 Nomisma.Dekadika " ,*"
    
        Get Label Of (TxtNom1(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (X0(iContID)) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (X0(iContID)) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Points          Of (P0(iContID)) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (P0(iContID)) Item  0 to 12  Nomisma.Dekadika " ,*"
    
        Get Label Of (TxtNom2(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (X00(iContID)) Item  0 to    Nomisma.Dekadika
        Set Numeric_Mask    Of (X00(iContID)) Item  0 to 12 Nomisma.Dekadika " ,*"
        Set Points          Of (P00(iContID)) Item  0 to    Nomisma.Dekadika
        Set Numeric_Mask    Of (P00(iContID)) Item  0 to 12 Nomisma.Dekadika " ,*"
    
    
        Get Label Of (TxtNom3(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (X1(iContID)) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (X1(iContID)) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Points          Of (P1(iContID)) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (P1(iContID)) Item  0 to 12  Nomisma.Dekadika " ,*"
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // vwCmoves


//AB-StoreStart
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
