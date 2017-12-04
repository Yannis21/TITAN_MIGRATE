//AB/ Project V14Aola:Mazikh ektyposh parastatikon
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V14Aola:Mazikh ektyposh parastatikon"
//AB/     Set ProjectFileName to "V14Aola.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V14Aola is a dbViewSubs
//     Fpa_DD2 is a Fpa_DataDictionary
//     Ctypkin_DD2 is a Ctypkin_DataDictionary
//     Country_DD2 is a Country_DataDictionary
//     Towns_DD2 is a Towns_DataDictionary
//     Cities_DD2 is a Cities_DataDictionary
//     Payresp_DD2 is a Payresp_DataDictionary
//     Areas_DD2 is a Areas_DataDictionary
//     Clients_DD2 is a Clients_DataDictionary
//     Cmoves_DD2 is a Cmoves_Datadictionary
//     Wtypkin_DD2 is a Wtypkin_DataDictionary
//     Wapokat_DD2 is a Wapokat_DataDictionary
//     Wapomast_DD2 is a Wapomast_DataDictionary
//     Wax_DD2 is a Wax_DataDictionary
//     Units_DD2 is a Units_DataDictionary
//     Witemkat_DD2 is a Witemkat_DataDictionary
//     Item_DD2 is a Item_DataDictionary
//     Witemx_DD2 is a Witemx_DataDictionary
//     Witemcl_DD2 is a Witemcl_DataDictionary
//     Wcmoves_DD2 is a Wcmoves_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Pmoves_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Pmssxet_DD is a DataDictionary
//     Psxetika_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     ptyppar_code is a FormSub
//     FROM_DATE is a FormSub
//     TO_DATE is a FormSub
//     FormSub1 is a FormSub
//     cn_code is a FormSub
//     FormSub2 is a FormSub
//     the_table is a dbGridSub
//     TextBoxSub14 is a TextBoxSub
//     TextBoxSub15 is a TextBoxSub
//     TextBoxSub16 is a TextBoxSub
//     ButtonSub2 is a ButtonSub
//     btnEktyposh is a ButtonSub
//     ptyppar_descr is a FormSub
//     ButtonSub3 is a ButtonSub
//     TextBoxSub17 is a TextBoxSub
//     TextBoxSub18 is a TextBoxSub
//     cn_descr is a FormSub
//     btnPrintProsf is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Areas_DD2
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object btnChangeXr
Register_Object btnEktyposh
Register_Object btnPrintProsf
Register_Object Cities_DD
Register_Object Cities_DD2
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object Cmoves_DD2
Register_Object Country_DD
Register_Object Country_DD2
Register_Object Ctypkin_DD
Register_Object Ctypkin_DD2
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object cn_code
Register_Object cn_descr
Register_Object dbGrpYear
Register_Object FormSub1
Register_Object FormSub2
Register_Object Fpa_DD
Register_Object Fpa_DD2
Register_Object FROM_DATE
Register_Object Item_DD
Register_Object Item_DD2
Register_Object Nomisma_DD
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Payresp_DD2
Register_Object Pmoves_DD
Register_Object Pmssxet_DD
Register_Object Pseira_DD
Register_Object Psxetika_DD
Register_Object Ptyppar_DD
Register_Object ptyppar_code
Register_Object ptyppar_descr
Register_Object Syscurxr_DD
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TO_DATE
Register_Object Towns_DD
Register_Object Towns_DD2
Register_Object the_table
Register_Object Units_DD
Register_Object Units_DD2
Register_Object V14Aola
Register_Object Wapokat_DD
Register_Object Wapokat_DD2
Register_Object Wapomast_DD
Register_Object Wapomast_DD2
Register_Object Wax_DD
Register_Object Wax_DD2
Register_Object Wcmoves_DD2
Register_Object Witemcl_DD2
Register_Object Witemkat_DD
Register_Object Witemkat_DD2
Register_Object Witemx_DD
Register_Object Witemx_DD2
Register_Object Wtypkin_DD
Register_Object Wtypkin_DD2


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl012.sl
use sl100.sl
use bpencmvs.dg
use sl041.sl
Use rmhtrtitan.rv
Use rmhtrtitana.rv
Use rmhtrtitanola.rv
Open Cflagkin
Use r14.rv
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use Txtbox.Sub
Use Cmbfrm.Sub
Use Button.Sub
Use Form.Sub
Use dbGrid.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use PSEIRA.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD
Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use PMOVES.DD
Use SYSCURXR.DD
Use PMSSXET.DD
Use PSXETIKA.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V14Aola FOR V14Aola

Object V14Aola is a dbViewSubs

    //AB-StoreTopStart
    Property String  psModule        Public ''
    Property String  pspar           Public ''
    property string  psdatefrom      public ''
    property string  psdateto        public ''
    property integer piekt           public 0
    property string  psclient        public ''
    property integer piTxtID         public 0
    property string  pstxt           public ''
    property string  pscn            public ''
    property integer pierr           public 0

    Object Fpa_DD2 is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Ctypkin_DD2 is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Country_DD2 is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD2 is a Towns_DataDictionary
        Set DDO_Server to (Country_DD2(self))
    End_Object    // Towns_DD

    Object Cities_DD2 is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD2(self))
    End_Object    // Cities_DD

    Object Payresp_DD2 is a Payresp_DataDictionary
        Set piCheckPlaf to 0
    End_Object    // Payresp_DD

    Object Areas_DD2 is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Clients_DD2 is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD2(self))
        Set DDO_Server to (Payresp_DD2(self))
        Set DDO_Server to (Areas_DD2(self))
        Set piCheckPlaf to 0
    End_Object    // Clients_DD

    Object Cmoves_DD2 is a Cmoves_Datadictionary
        Set DDO_Server to (Ctypkin_DD2(self))
        Set DDO_Server to (Clients_DD2(self))
        Set piFromBP to 1
    End_Object

    Object Wtypkin_DD2 is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Wapokat_DD2 is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD2 is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD2(self))
    End_Object    // Wapomast_DD

    Object Wax_DD2 is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD2(self))
    End_Object    // Wax_DD

    Object Units_DD2 is a Units_DataDictionary
    End_Object    // Units_DD

    Object Witemkat_DD2 is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Item_DD2 is a Item_DataDictionary
        Set DDO_Server to (Units_DD2(self))
        Set DDO_Server to (Witemkat_DD2(self))
        Set DDO_Server to (Fpa_DD2(self))
    End_Object    // Item_DD

    Object Witemx_DD2 is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD2(self))
    End_Object    // Witemx_DD

    Object Witemcl_DD2 is a Witemcl_DataDictionary
        Set DDO_Server to (Item_DD2(self))
    End_Object    // Witemcl_DD

    Object Wcmoves_DD2 is a Wcmoves_DataDictionary
        Set DDO_Server to (Wax_DD2(self))
        Set DDO_Server to (Wtypkin_DD2(self))
        Set DDO_Server to (Witemx_DD2(self))
    End_Object    // Wcmoves_DD


    //AB-StoreTopEnd

    Set Label to "ãòù†°„ Ñ°´Áß‡©û èò®ò©´ò´†°È§ ë¨ö°ú§´®‡´†°¶Á ãú´ò©Æû£ò´†©£¶Á"
    Set Size to 294 515
    Set Location to 2 9

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
        set read_only_state to true

        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Pseira_DD is a Pseira_DataDictionary
        Set DDO_Server to (Ptyppar_DD(self))
    End_Object    // Pseira_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
        Begin_Constraints
            string spar smodule sclient scn
            Date sdate sdateto
            get psclient      to sclient
            Get psDateFrom    to sdate
            Get psDateTo      to sDateto
            get pspar         to spar
            get pscn          to scn
            If (sDate  ='') sysdate sDate
            If (sDateTo='') sysdate sDateTo
            Set Ordering to 14 // Particle:Index.14
            Constrain Particle.company_code       eq syscurxr.company_code
            Constrain Particle.branch_code        eq syscurxr.branch_code
            Constrain Particle.year_year          eq syscurxr.year_year
            Constrain Particle.Partl_Hmnia Between sdate And sdateto
            if (sclient<>'') constrain particle.client_id       eq sclient
            Constrain Particle.Partl_Module       eq '01'
            constrain particle.partl_timol        eq 0
            if (spar<>'') constrain particle.ptyppar_code       eq spar
            if (scn <>'') constrain particle.cn_code   eq scn
            Constrain particle.partl_ekleise      eq ''
            Constrain particle.partl_ektyposh     ne '1'
            Constrain Particle.Partl_euro         eq 1
        End_Constraints





















        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))
    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))
    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))
    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))
    End_Object    // Witemx_DD

    Object Pmoves_DD is a Pmoves_DataDictionary
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Pmoves_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart



        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Object Pmssxet_DD is a PmsSxet_DataDictionary
        Set DDO_Server to (Pmoves_DD(self))
        Set Constrain_File to Pmoves.File_Number
    End_Object    // Pmssxet_DD

    Object Psxetika_DD is a Psxetika_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Psxetika_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object dbGrpYear is a dbGroupSub

        //AB-StoreTopStart
        Open Company
        Open Branch
        Open Year
        Open SysCurXr
        Open Nomisma

        Use Wax.DD
        Use Witemx.DD
        Use Witemxen.DD
        Use Witemxtr.DD
        Use Witemxt.DD
        Use Ptyppar.DD
        Use Itemd.DD
        Use Bmove.DD
        Use Baxio.DD

        Property String     psCurrentCompany    Public ''
        Property String     psCurrentBranch     Public ''
        Property Integer    piCurrentYear       Public  0

        Property String     psChoosenCompany    Public ''
        Property String     psChoosenBranch     Public ''
        Property Integer    piChoosenYear       Public  0

        Property Integer    pidbGrpYearID       Public  0
        Property Integer    picboCompanyID      Public  0
        Property Integer    picboBranchID       Public  0
        Property Integer    picboYearID         Public  0
        Property Integer    pibtnChangeXrID     Public  0

        //AB-StoreTopEnd

        Set Size to 26 514
        Set Location to 1 1
        Object otxtCompany is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 5
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtCompany

        Object cboCompany is a ComboFormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Size to 13 141
            Set Location to 9 46
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Procedure Exiting Integer WhereTo Returns Integer
                Integer rVal iID iYes
                Forward Get Msg_Exiting WhereTo to rVal
                If rVal Procedure_Return rVal
                If ((WhereTo<>picboCompanyID (Self)) And ;
                    (WhereTo<>picboBranchID  (Self)) And ;
                    (WhereTo<>picboYearID    (Self)) And ;
                    (WhereTo<>pibtnChangeXrID(Self))) Begin
                    If ((psChoosenCompany(Self)<>SyscurXr.Company_Code) Or ;
                        (psChoosenBranch (Self)<>SyscurXr.Branch_Code ) Or ;
                        (piChoosenYear   (Self)<>SyscurXr.year_Year   )) Begin
                        Get YesNo_Box 'è®¶©¶Æ„ ! Ä¢¢·•ò´ú ©´¶†ÆúÂò Ñ´ò†®Âò™/ìß¶°ò´./ï®„©û™\nò¢¢· ÉÑå ßò´„©ò´ú ´¶ °¶¨£ßÂ ö†ò ú§ú®ö¶ß¶Âû©û ò¢¢òö„™ Æ®„©û™\ná‚¢ú´ú §ò ú§ú®ö¶ß¶†„©‡ ´È®ò ´û§ ò¢¢òö„ ò¨´„ ?' to iYes
                        If (iYes=MBR_YES) Send KeyAction to (pibtnChangeXrID(Self))
                        Else Send Reset_Combos
                    End
                End
                Procedure_return rVal
            End_Procedure

            Procedure Key Integer iKey
            End_Procedure

            Procedure Combo_Fill_List
                Clear Company
                Find Gt Company.Recnum
                While (Found)
                    Send Combo_Add_Item (Trim(Company.Company_Code)+' - '+ Trim(Company.Company_Name))
                    Find Gt Company.Recnum
                Loop

                // Find Current Company to display in Combo
                Clear Company
                Move (psChoosenCompany(Self))   to Company.Company_Code
                Find Eq Company By Index.1
                If (Found)  Set Value Of cboCompany Item 0 to (Trim(Company.Company_Code)+' - '+ Trim(Company.Company_Name))
                Else        Set Value Of cboCompany Item 0 to ''
            End_procedure

            Procedure Combo_Item_Changed
                String  sVal
                Integer iPos
                Forward Send Combo_Item_Changed
                Get Value Of cboCompany Item 0  to sVal
                If (Trim(sVal)='') Begin
                    Clear Company
                    Move (psChoosenCompany(Self))   to Company.Company_Code
                    Find Eq Company By Index.1
                    If (Found)  Set Value Of cboCompany Item 0 to (Trim(Company.Company_Code)+' - '+ Trim(Company.Company_Name))
                    Else        Set Value Of cboCompany Item 0 to ''
                End
                Else Begin
                    Move (Pos('-',sVal)-1) to iPos
                    Set psChoosenCompany            to (Trim(Left(sVal,iPos)))
                End
                Send Fill_Branch
            End_procedure

            Procedure End_Construct_Object
                Integer iID
                Forward Send End_Construct_Object
                Get Object_ID Of Self   to iID
                Set picboCompanyID      to iID
            End_Procedure

            //AB-StoreEnd

        End_Object    // cboCompany

        Object otxtBranch is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 195
            Set Size to 10 30
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtBranch

        Object cboBranch is a ComboFormSub
            Set Size to 13 147
            Set Location to 9 235
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Procedure Exiting Integer WhereTo Returns Integer
                Integer rVal iID iYes
                Forward Get Msg_Exiting WhereTo to rVal
                If rVal Procedure_Return rVal
                If ((WhereTo<>picboCompanyID (Self)) And ;
                    (WhereTo<>picboBranchID  (Self)) And ;
                    (WhereTo<>picboYearID    (Self)) And ;
                    (WhereTo<>pibtnChangeXrID(Self))) Begin
                    If ((psChoosenCompany(Self)<>SyscurXr.Company_Code) Or ;
                        (psChoosenBranch (Self)<>SyscurXr.Branch_Code ) Or ;
                        (piChoosenYear   (Self)<>SyscurXr.year_Year   )) Begin
                        Get YesNo_Box 'è®¶©¶Æ„ ! Ä¢¢·•ò´ú ©´¶†ÆúÂò Ñ´ò†®Âò™/ìß¶°ò´./ï®„©û™\nò¢¢· ÉÑå ßò´„©ò´ú ´¶ °¶¨£ßÂ ö†ò ú§ú®ö¶ß¶Âû©û ò¢¢òö„™ Æ®„©û™\ná‚¢ú´ú §ò ú§ú®ö¶ß¶†„©‡ ´È®ò ´û§ ò¢¢òö„ ò¨´„ ?' to iYes
                        If (iYes=MBR_YES) Send KeyAction to (pibtnChangeXrID(Self))
                        Else Send Reset_Combos
                    End
                End
                Procedure_return rVal
            End_Procedure

            Procedure Key Integer iKey
            End_Procedure

            Procedure Combo_Fill_List
            End_procedure

            Procedure Combo_Item_Changed
                String  sVal
                Integer iPos
                Forward Send Combo_Item_Changed
                Get Value Of cboBranch Item 0  to sVal
                If (Trim(sVal)='') Begin
                    Clear Branch
                    Move (psChoosenCompany(Self))   to Branch.Company_Code
                    Move (psChoosenBranch (Self))   to Branch.Branch_Code
                    Find Eq Branch By Index.1
                    If (Found)  Set Value Of cboBranch Item 0 to (Trim(Branch.Branch_Code)+' - '+ Trim(Branch.Branch_Name))
                    Else        Set Value Of cboBranch Item 0 to ''
                End
                Else Begin
                    Move (Pos('-',sVal)-1) to iPos
                    Set psChoosenBranch    to (Trim(Left(sVal,iPos)))
                End
                Send Fill_Year
            End_procedure

            Procedure End_Construct_Object
                Integer iID
                Forward Send End_Construct_Object
                Get Object_ID Of Self   to iID
                Set picboBranchID       to iID
            End_Procedure

            //AB-StoreEnd

        End_Object    // cboBranch

        Object otxtYear is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 11 392
            Set Size to 10 23
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart

            Set TextColor to clYellow

            //AB-StoreEnd

        End_Object    // otxtYear

        Object cboYear is a ComboFormSub
            Set Size to 13 54
            Set Location to 9 423
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Procedure Exiting Integer WhereTo Returns Integer
                Integer rVal iID iYes
                Forward Get Msg_Exiting WhereTo to rVal
                If rVal Procedure_Return rVal
                If ((WhereTo<>picboCompanyID (Self)) And ;
                    (WhereTo<>picboBranchID  (Self)) And ;
                    (WhereTo<>picboYearID    (Self)) And ;
                    (WhereTo<>pibtnChangeXrID(Self))) Begin
                    If ((psChoosenCompany(Self)<>SyscurXr.Company_Code) Or ;
                        (psChoosenBranch (Self)<>SyscurXr.Branch_Code ) Or ;
                        (piChoosenYear   (Self)<>SyscurXr.year_Year   )) Begin
                        Get YesNo_Box 'è®¶©¶Æ„ ! Ä¢¢·•ò´ú ©´¶†ÆúÂò Ñ´ò†®Âò™/ìß¶°ò´./ï®„©û™\nò¢¢· ÉÑå ßò´„©ò´ú ´¶ °¶¨£ßÂ ö†ò ú§ú®ö¶ß¶Âû©û ò¢¢òö„™ Æ®„©û™\ná‚¢ú´ú §ò ú§ú®ö¶ß¶†„©‡ ´È®ò ´û§ ò¢¢òö„ ò¨´„ ?' to iYes
                        If (iYes=MBR_YES) Send KeyAction to (pibtnChangeXrID(Self))
                        Else Send Reset_Combos
                    End
                End
                Procedure_return rVal
            End_Procedure

            Procedure Key Integer iKey
            End_Procedure

            Procedure Combo_Fill_List
            End_procedure

            Procedure Combo_Item_Changed
                Integer iVal
                Forward Send Combo_Item_Changed
                Get Value Of cboYear Item 0 to iVal
                Set piChoosenYear           to iVal
            End_procedure

            Procedure End_Construct_Object
                Integer iID
                Forward Send End_Construct_Object
                Get Object_ID Of Self   to iID
                Set picboYearID         to iID
            End_Procedure




            //AB-StoreEnd

        End_Object    // cboYear

        Object btnChangeXr is a ButtonSub
            Set Bitmap to "Convert2.bmp"
            Set Size to 20 23
            Set Location to 5 486
            Set Border_Style to Border_Normal
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Set TooltipValue to 'Ñß†ôúôòÂ‡©û ò¢¢òö„™ ©´¶†ÆúÂ‡§ Æ®„©û™'

            Procedure OnClick
                String  sOld sNew
                Integer iYes
                Append sOld 'Ä¢¢òö„ òß¶ -> ' (Trim(SyscurXr.Company_Name)) ' - ' (Trim(SyscurXr.Branch_Name)) ' - ' (String(SyscurXr.Year_Year)) '\n'
                Append sNew '        ©ú -> ' (Trim(Value(cboCompany(Self),0))) ' - ' (Trim(Value(cboBranch(Self),0))) ' - ' (Trim(String(Value(cboYear(Self),0)))) ' ?'
                Get YesNo_Box (sOld+sNew) to iYes
                If (iYes=MBR_NO) Begin
                    Send Reset_Combos
                    Procedure_Return
                End


                Send Reset_All_Files_Except_System

                // Verify that choosen company+branch+year
                // is a valid record and existing record
                Clear Year
                Move (psChoosenCompany(Self)) to Year.Company_Code
                Move (psChoosenBranch (Self)) to Year.Branch_Code
                Move (piChoosenYear   (Self)) to Year.Year_Year
                Find Eq Year By Index.1
                If (Not(Found)) Begin
                    Send Stop_Box 'Ä§Áßò®°´û úß†¢¶ö„ Ñ´ò†®Âò™/ìß¶°ò´ò©´„£ò´¶™/ï®„©û™' 'ë≠·¢£ò 8000'
                    Send Reset_Combos
                    Procedure_Return
                End
                // First Close All the Views and Check if
                // function returns 0 = all views closed OK
                //                  1 = Not ok

                If (Close_All_Views(Self,False)=1) Begin
                    Send Reset_Combos
                    Procedure_Return
                End
                // Change Current Xrhsh
                Send Change_Current_Xrhsh
            End_Procedure // OnClick

            Procedure Change_Current_Xrhsh
                Integer iRetVal00 iBreak00 iID
                String  ldcheck00 lsYearRecr00 lsSite00 sCname00 sBname00
                String  sYname00 sNom100 sNom200 sNom300 sCode00
                Date    ldYearXrhsh_From00 ldYearXrhsh_To00

                // Exoume Current Year record apo ton elegxo sthn onclick
                // tou button allaghs xrhshs mesa sto combo group.
                // energopoioume kai tous mpampades.
                Relate Year
                //
                Move Company.Company_Code   to gs_Selected_Company_Code
                Move Company.Company_Name   to sCname00

                Move Branch.Branch_Code     to gs_Selected_Branch_Code
                Move Branch.Beto_Site       to gs_Selected_Beto_Site
                Move Branch.Branch_Site     to lsSite00
                Move Branch.Branch_name     to sBname00

                Move Year.Year_Year         to gi_Selected_Year
                Move Year.Year_Recr         to lsYearRecr00
                Move Year.Year_C_Code0      to sNom100
                Move Year.Year_C_Code00     to sNom200
                Move Year.Year_C_CodeR      to sNom300
                Move Year.Year_Descr        to sYname00

                Move Year.Year_Xrhshfrom    to ldYearXrhsh_From00
                Move Year.Year_XrhshTo      to ldYearXrhsh_To00

                Move 0 to iBreak00
                Clear Nomisma
                Find Gt Nomisma.Recnum
                While ((Found=1) And (iBreak00=0))
                    If (Nomisma.Einai_Euro='1') Begin
                        Move 1 to iBreak00
                        Move Nomisma.Nomisma_Code to sCode00
                    End
                    If (Not(iBreak00)) Find Gt Nomisma.Recnum
                Loop
                Move (Trim(sCode00)) to sCode00

                Reread SysCurXR
                Move gs_Selected_Company_Code   to SysCurXR.Company_Code
                Move sCname00                   to SysCurXR.Company_Name
                Move gs_Selected_beto_site      to SysCurXR.beto_site
                Move gs_Selected_Branch_Code    to SysCurXR.Branch_Code
                Move lsSite00                   to SysCurXR.Branch_Site
                Move sBname00                   to SysCurXR.Branch_Name
                Move gi_Selected_Year           to SysCurXR.Year_Year
                Move lsYearRecr00               to SysCurXR.Year_Recr
                Move sYname00                   to SysCurXR.Year_Descr
                Move ldYearXrhsh_From00         to SysCurXr.Year_XrhshFrom
                Move ldYearXrhsh_To00           to SysCurXr.Year_XrhshTo
                Move  (Trim(sNom100))           to SysCurXR.C_Code0
                Move  (Trim(sNom200))           to SysCurXR.C_Code00
                Move  (Trim(sNom300))           to SysCurXR.C_CodeR
                Move sCode00                    to SysCurXR.Euro_Code

                Saverecord SysCurXR
                Unlock

                If (Syscurxr_DD(Self)<>0) Send Find_By_Recnum to Syscurxr_DD Syscurxr.File_Number Syscurxr.Recnum

                Move lsYearRecr00               to gs_Selected_Year_Recr
                Send Reset_Combos

                //Send Reset_The_Constraints_After_Changing_Syscurxr

                // Ta pidbViewID kai psdbViewName einai nea property
                // apo thn klash dbViewSubS kai kratane to ID tou view
                // kai to onoma tou.
                Send Activate_View Of (pidbViewID(Self))
                Send Reset_Combos
            End_Procedure

            Procedure End_Construct_Object
                Integer iID
                Forward Send End_Construct_Object
                Get Object_ID Of Self   to iID
                Set pibtnChangeXrID     to iID
            End_Procedure

            //AB-StoreEnd

        End_Object    // btnChangeXr


        //AB-StoreStart


        Procedure Reset_Combos
            Set psCurrentCompany    to SysCurXr.Company_Code
            Set psCurrentBranch     to SysCurXr.Branch_Code
            Set piCurrentYear       to SysCurXr.Year_Year
            Set psChoosenCompany    to SysCurXr.Company_Code
            Set psChoosenBranch     to SysCurXr.Branch_Code
            Set piChoosenYear       to SysCurXr.Year_Year
            Send Combo_Item_Changed to cboCompany
        End_Procedure

        Procedure Activating
            Forward Send Activating
            Send Reset_Combos
        End_Procedure

        Procedure Fill_Branch
            Send Combo_Delete_Data to cboBranch
            Clear Branch
            Move (psChoosenCompany(Self)) to Branch.Company_Code
            Find Gt Branch By Index.1
            While ((Found=1) And (Branch.Company_Code=(psChoosenCompany(Self))))
                Send Combo_Add_Item to cboBranch (Trim(Branch.Branch_Code)+' - '+ Trim(Branch.Branch_Name))
                Find Gt Branch By Index.1
            Loop

            // Find Current Branch to display in Combo
            Clear Branch
            Move (psChoosenCompany(Self))   to Branch.Company_Code
            Move (psChoosenBranch (Self))   to Branch.Branch_Code
            Find Eq Branch By Index.1
            If (Found)  Set Value Of cboBranch Item 0 to (Trim(Branch.Branch_Code)+' - '+ Trim(Branch.Branch_Name))
            Else        Set Value Of cboBranch Item 0 to ''
            Send Fill_Year
        End_Procedure

        Procedure Fill_Year
            Send Combo_Delete_Data to cboYear
            Clear Year
            Move (psChoosenCompany(Self))   to Year.Company_Code
            Move (psChoosenBranch (Self))   to Year.Branch_Code
            Find Gt Year By Index.1
            While ((Found=1) And (Year.Company_Code=(psChoosenCompany(Self))) And (Year.Branch_Code=(psChoosenBranch(Self))))
                Send Combo_Add_Item to cboYear (Trim(String(Year.Year_Year)))
                Find Gt Year By Index.1
            Loop

            // Find Current Year to display in Combo
            Clear Year
            Move (psChoosenCompany(Self))   to Year.Company_Code
            Move (psChoosenBranch (Self))   to Year.Branch_Code
            Move (piChoosenYear   (Self))   to Year.Year_Year
            Find Eq Year By Index.1
            If (Found=1)    Set Value Of cboYear Item 0 to (Trim(String(Year.Year_Year)))
            Else            Set Value Of cboYear Item 0 to ''
        End_Procedure

        Procedure End_Construct_Object
            Integer iID
            Forward Send End_Construct_Object
            Get Object_ID Of Self   to iID
            Set pidbGrpYearID       to iID
        End_Procedure


        //AB-StoreEnd

    End_Object    // dbGrpYear

    Object ptyppar_code is a FormSub
        Set Size to 13 69
        Set Location to 36 83
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl012(Current_object))

        Procedure Find_nPerigrafh String asValue
            String lsValue
            Move (Fsptyppar(self,asvalue))  to lsvalue
            set value of (ptyppar_descr(self)) to lsvalue
        End_Procedure


        Procedure Prompt
            String sVal
            Set Modal_State Of (sl012(Current_object)) to True
            Set psModule Of (sl012(Current_object)) to '01'
            Forward Send Prompt
            Get Value Item 0 to sVal
            Send Find_nPerigrafh sVal
        End_procedure


        procedure onchange
            String sVal
            Get Value Item 0 to sVal
            Send Find_nPerigrafh sVal
        end_procedure



        //AB-StoreEnd

    End_Object    // ptyppar_code

    Object FROM_DATE is a FormSub
        Set Size to 13 69
        Set Location to 52 83
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set prompt_object to (ocalendar(self))


        //AB-StoreEnd

    End_Object    // FROM_DATE

    Object TO_DATE is a FormSub
        Set Size to 13 62
        Set Location to 51 183
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set prompt_object to (ocalendar(self))








        //AB-StoreEnd

    End_Object    // TO_DATE

    Object FormSub1 is a FormSub
        Set Size to 13 69
        Set Location to 68 83
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl100(Current_object))

        procedure Onchange
            string sValue sdescr
            Get Value Item 0 to sValue
            Move (Trim(sValue)) to sValue
            set psmodule     of (sl100(self)) to   (psmodule(self))
            Move (fsclient(Self,svalue)) to sdescr
            set value of (formsub2(self)) to sdescr
        end_procedure




        //AB-StoreEnd

    End_Object    // FormSub1

    Object cn_code is a FormSub
        Set Size to 13 69
        Set Location to 83 83
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl041(Current_object))
        Procedure Prompt_Callback integer hPrompt
            set Export_Column of hPrompt to 0
            Set Initial_Column of hPrompt to 0
        end_procedure

        procedure prompt
            string scode
            get value of (formsub1(self)) to scode
            if (scode<>'') set fragmaclient_id of (sl041(self)) to scode
            forward send prompt
            set fragmaclient_id of (sl041(self)) to ''
        end_procedure



        procedure onchange
           string scode sdescr
           get value item 0 to scode
           move (fscndescr(self,scode)) to sdescr
           set value of (cn_descr(self)) to sdescr

        end_procedure


        //AB-StoreEnd

    End_Object    // cn_code

    Object FormSub2 is a FormSub
        Set Size to 13 241
        Set Location to 68 183
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // FormSub2

    Object the_table is a dbGridSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Main_File to Particle.File_Number
        Set Ordering to 14
        Set Size to 153 504
        Set Location to 98 0
        Set Wrap_State to TRUE
        Set Border_Style to Border_Normal

        Begin_Row
            Entry_Item Particle.Partl_hmnia
            Entry_Item Ptyppar.Ptyppar_descr
            Entry_Item Particle.Pseira_seira
            Entry_Item Particle.Partl_no
            Entry_Item Particle.Client_id
            Entry_Item Clients.Client_name
            Entry_Item Particle.Cn_code
            Entry_Item (fscndescr(self,particle.cn_code))
        End_Row

        Set Form_Width    item 0 to 48
        Set Header_Label  item 0 to "Ü£ú®/§Âò"

        Set Form_Width    item 1 to 82
        Set Header_Label  item 1 to "èò®ò©´ò´†°Ê"

        Set Form_Width    item 2 to 30
        Set Header_Label  item 2 to "ëú†®·"

        Set Form_Width    item 3 to 33
        Set Header_Label  item 3 to "Ä®†ü."

        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "èú¢·´û™"

        Set Form_Width    item 5 to 84
        Set Header_Label  item 5 to "Ñß‡§¨£Âò"

        Set Form_Width    item 6 to 58
        Set Header_Label  item 6 to "Î®ö¶"

        Set Form_Width    item 7 to 102
        Set Header_Label  item 7 to "èú®†ö®ò≠„"


        //AB-StoreStart

        Set Child_Table_State   to True
        Set Column_Option Item 0 to NoPut   True
        Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        Set Column_Option Item 3 to NoEnter True
        Set Column_Option Item 4 to NoEnter True
        Set Column_Option Item 5 to NoEnter True
        Set Column_Option Item 6 to NoEnter True
        Set Column_Option Item 7 to NoEnter True
        set currentrowcolor     to 11468799
        set currentcellcolor    to 11468799
        Set read_only_state to true

        //AB-StoreEnd

    End_Object    // the_table

    Object TextBoxSub14 is a TextBoxSub
        Set Label to "â‡õ†°Ê™ èò®ò©´ò´."
        Set Location to 38 11
        Set Size to 9 67
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub14

    Object TextBoxSub15 is a TextBoxSub
        Set Label to "ÄßÊ Ü£/§Âò"
        Set Location to 53 11
        Set Size to 10 47
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub15

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "ÑÈ™"
        Set Location to 54 159
        Set Size to 10 15
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub16

    Object ButtonSub2 is a ButtonSub
        Set Label to "ÑÁ®ú©û Ñöö®ò≠È§"
        Set Size to 14 79
        Set Location to 68 428
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Date dFrom dTo
            string spar sclient scn msgstr
            integer ierr
            Get Value Of From_Date  Item 0      to dFrom
            Get Value Of To_Date    Item 0      to dTo
            Get value of (ptyppar_code(self))   to spar
            get value of (formsub1(self))       to sclient
            move 0 to ierr
            if ((dfrom < syscurxr.year_xrhshfrom) or (dfrom > syscurxr.year_xrhshto)) begin
               move "" to msgstr
               move 1 to ierr
               move "Ü£/§Âú™ úß†¢¶ö„™ ú°´Ê™ ¶®Â‡§ Æ®„©û™" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
            if ((dto < syscurxr.year_xrhshfrom) or (dto > syscurxr.year_xrhshto)) begin
               move "" to msgstr
               move 1 to ierr
               move "Ü£/§Âú™ úß†¢¶ö„™ ú°´Ê™ ¶®Â‡§ Æ®„©û™" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
            if (ierr=0) begin
               set pierr to 0
               Set psDateFrom        to dFrom
               Set psDateTo          to dTo
               get value of (cn_code(self))        to scn
               set pspar  to spar
               set psclient to sclient
               set pscn     to scn
               Send Rebuild_Constraints to particle_DD
               Send Beginning_Of_Data to the_table   True
            end
            else set pierr to 1
        End_Procedure // OnClick


        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object btnEktyposh is a ButtonSub
        Set Label to "Ñ°´Á&ß‡©û"
        Set Bitmap to "Print17.bmp"
        Set Size to 21 23
        Set Location to 36 451
        Set Focus_Mode to Pointer_Only
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "Ñ°´Áß‡©û ßò®ò©´ò´†°È§ ß®¶™ ‚¢úöÆ¶ "

        Procedure OnClick
            date datefrom dateto dLast
            string spar srecr
            String  Wrecr sCmovesRecr sCmovesPar sPtypparCode sSysx sPseiraRecr sPtypparRecr
            String  sWcmovesRecr sWcmovesPar sMessage sSeira sPtypparWhat sSysxRecr sParticleRecr sSxetiko
            Integer iNextNo iRecnum iMsg iCurNo iErr iLathos iYes isOK isClosed iekt  iola
            Date    dHmnia dHmnia2
            if (pierr(self)=1) procedure_return
            send onclick to (buttonsub2(self))

            Clear Branch
            Move Syscurxr.Company_Code  to Branch.Company_Code
            Move Syscurxr.Branch_Code   to Branch.Branch_Code
            Find Eq Branch By Index.1
            Move Branch.Last_Hmnia_Ekt  to dLast

            If (Particle.Recnum) Begin
               Send Rebuild_Constraints to particle_DD
               send find to particle_dd first_record 14
               while (found=1)
                    Indicate Err False
                    Get Field_Current_Value Of Particle_DD Field Particle.Partl_Hmnia   to dHmnia
                    If (dHmnia<dLast) Begin
                        Send Stop_Box 'ÑÆú† ´¨ß‡üúÂ ßò®ò©´ò´†°Ê £ú £ú´òöú§‚©´ú®û û£/§Âò' 'ë≠·¢£ò 777779'
                        Procedure_Return
                    End
                    Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr        to sParticleRecr
                    Get Field_Current_Value Of Particle_DD Field Particle.Partl_Euro        to iola
                    Get Field_Current_Value Of Particle_DD Field Particle.Pseira_Seira      to sSeira
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Ptyppar_Code       to sPtypparCode
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Ptyppar_is_what    to sPtypparWhat
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Ptyppar_Recr       to sPtypparRecr
                    If (sPtypparWhat='2') Begin
                    // A§ ú†§ò† ßò®ò©´ò´†°Ê ßÈ¢û©û™
                        Move Particle.Partl_No              to iCurNo
                        Clear Pseira
                        Move SyscurXr.Company_Code  to Pseira.Company_Code
                        Move SyscurXr.Branch_Code   to Pseira.Branch_Code
                        //Move SyscurXr.Year_Year     to Pseira.Year_Year
                        Move sPtypparCode           to Pseira.Ptyppar_Code
                        Move sSeira                 to Pseira.Pseira_Seira

                        Find Eq Pseira By Index.1 // Pseira:Index.1:Company_Code+Branch_Code+Year_Year+Ptyppar_Code+Pseira_Seira
                        if (not(found)) begin
                            send stop_box 'Ä§Áßò®°´û ©ú†®·' 'ë≠·¢£ò 4423'
                            procedure_return
                        end
                        If ((Found) And (Pseira.Pseira_Autonum<>1)) Begin
                            Send Stop_Box 'Ü ©ú†®· ´¶¨ ßò®ò©´/°¶Á úÂ§ò† Æú†®Êö®ò≠û\n°ò† ‡™ ú° ´¶Á´¶¨ ÉÑå £ß¶®úÂ §ò ´¨ß‡üúÂ' 'ë≠·¢£ò 77776'
                            Procedure_Return
                        End
                    End
                    Move Particle.Recnum to iRecnum
                    Move 0 to isOk
                         If (Trim(Clients.Client_ID)     = '') Move -1 to isOK
                    Else If (Trim(Clients.Client_Name)   = '') Move -2 to isOK
                    Else If (Trim(Clients.Client_Job)    = '') Move -3 to isOK
                    Else If (Trim(Clients.Client_Address)= '') Move -4 to isOK
                    Else If (Trim(Cities.City_Descr)     = '') Move -5 to isOK
                    Else If (Trim(Clients.Client_Afm)    = '') Move -6 to isOK
                    Else If (Trim(Clients.Client_DOY)    = '') Move -7 to isOK
                    Else If (Trim(Particle.Ora_Apostolhs)= '') Move -8 to isOK

                    If (isOK<>0) Begin
                            If (isOK=-1) Send Stop_Box 'Éú§ ¨ß·®Æú† °‡õ†°Ê™ èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-2) Send Stop_Box 'Éú§ ¨ß·®Æú† úß‡§¨£Âò èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-3) Send Stop_Box 'Éú§ ¨ß·®Æú† úß·ööú¢£ò èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-4) Send Stop_Box 'Éú§ ¨ß·®Æú† õ†úÁü¨§©û èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-5) Send Stop_Box 'Éú§ ¨ß·®Æú† ßÊ¢û èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-6) Send Stop_Box 'Éú§ ¨ß·®Æú† Äîã èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-7) Send Stop_Box 'Éú§ ¨ß·®Æú† Ééì èú¢·´û' 'ë≠·¢£ò'
                        If (isOK<>-8) Procedure_Return
                        Get YesNo_Box 'Éú§ úÂ§ò† ©¨£ß¢û®‡£‚§û û È®ò\nåò ©¨§úÆÂ©‡ £ú ´û§ ú°´Áß‡©û;' "Ñ®È´û©û" 0 to iYes
                        If (iYes=MBR_NO) Procedure_Return
                    End
                    Move 0 to isOK
                    If (Ptyppar.Ti_Typonei_Pms     <>'2') Begin
                             If (Trim(Particle.Skopos_Diakin);
                                                         = '') Move -9 to isOK
                        Else If (Trim(Particle.Topos_Apostolhs);
                                                         = '') Move -10 to isOK
                        Else If (Trim(Particle.Tropos_Diakin);
                                                         = '') Move -11 to isOK
                        If (isOK<>0) Begin
                                 If (isOK=-9)  Send Stop_Box 'Éú§ ¨ß·®Æú† ©°¶ßÊ™ õ†ò°Â§û©û™' 'ë≠·¢£ò'
                            Else If (isOK=-10) Send Stop_Box 'Éú§ ¨ß·®Æú† ´Êß¶™ òß¶©´¶¢„™' 'ë≠·¢£ò'
                            Else If (isOK=-11) Send Stop_Box 'Éú§ ¨ß·®Æú† ´®Êß¶™ õ†ò°Â§û©û™' 'ë≠·¢£ò'
                            Procedure_Return
                        End
                    End
                    if (sysfile.Online_logist=1) begin
                        Set psrecr      of (rParticle(self)) to sParticleRecr
                        set pimazikh    of (rParticle(self)) to 1
                        Send runprom1Report to (prom1WQLReport(rParticle(Self)))
                    End
                    else begin
                        if (iola=1) begin
                           Set psRecr Of (Timologio_BasicReport(rmhtrtitanola(Self))) to sParticleRecr
                           Set piAsciiOrPrinter Of rmhtrtitanola to 2
                           Send StartReport to rmhtrtitanola
                                // Elegxos an akyrothike h an kati strabose
                        end
                        else begin
                            if (sysrecc.clorder_rec0=1) begin
                               Set psRecr Of (Timologio_BasicReport(rmhtrtitana(Self))) to sParticleRecr
                               Set piAsciiOrPrinter Of rmhtrtitana to 2
                               Send StartReport to rmhtrtitana
                                    // Elegxos an akyrothike h an kati strabose
                            end
                            else begin
                               Set psRecr Of (Timologio_BasicReport(rmhtrtitan(Self))) to sParticleRecr
                               Set piAsciiOrPrinter Of rmhtrtitan to 2
                               Send StartReport to rmhtrtitan
                            end
                        End
                    End
                    send find to particle_dd next_record 14
               loop
               Send Beginning_Of_Data to the_table   True
            End
            else send info_box "Éú§ ¨ß·®Æú† ú§ú®öÊ ßò®ò©´ò´†°Ê ö†ò ú°´Áß‡©û" 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick



        //AB-StoreEnd

    End_Object    // btnEktyposh

    Object ptyppar_descr is a FormSub
        Set Size to 13 241
        Set Location to 36 183
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // ptyppar_descr

    Object ButtonSub3 is a ButtonSub
        Set Label to "ButtonSub3"
        Set Bitmap to "print15.bmp"
        Set Size to 21 23
        Set Location to 253 5
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart

        Set TooltipValue to "é®†©´†°„ ú°´Áß‡©û ßò®ò©´ò´†°È§ "

        Procedure OnClick

          date datefrom dateto
          string spar srecr
          String  Wrecr sCmovesRecr sCmovesPar sPtypparCode sSysx sPseiraRecr sPtypparRecr
          String  sWcmovesRecr sWcmovesPar sMessage sSeira sPtypparWhat sSysxRecr sParticleRecr sSxetiko
          Integer iNextNo iRecnum iMsg iCurNo iErr iLathos iYes isOK isClosed iekt iola
          Date    dHmnia dHmnia2 dLast
          indicate err false
          Reread Sysfile
          Unlock

          if (pierr(self)=1) procedure_return
          get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ¶®†©´†°„ ú°´Áß‡©û úß†¢úö£‚§‡§ ßò®ò©´ò´†°È§ ??" to imsg
          If (imsg =MBR_yes) begin
             send onclick to (buttonsub2(self))

             Clear Branch
             Move Syscurxr.Company_Code  to Branch.Company_Code
             Move Syscurxr.Branch_Code   to Branch.Branch_Code
             Find Eq Branch By Index.1
             Move Branch.Last_Hmnia_Ekt  to dLast

             If (Particle.Recnum) Begin
               Send Rebuild_Constraints to particle_DD
               send find to particle_dd first_record 14
               while (found=1)
                    Indicate Err False
                    Get Field_Current_Value Of Particle_DD Field Particle.Partl_Hmnia   to dHmnia
                    If (dHmnia<dLast) Begin
                        Send Stop_Box 'ÑÆú† ´¨ß‡üúÂ ßò®ò©´ò´†°Ê £ú £ú´òöú§‚©´ú®û û£/§Âò' 'ë≠·¢£ò 7777'
                        Procedure_Return
                    End
                    Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr        to sParticleRecr
                    Get Field_Current_Value Of Particle_DD Field Particle.Partl_Euro        to iola
                    Get Field_Current_Value Of Particle_DD Field Particle.Pseira_Seira      to sSeira
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Ptyppar_Code       to sPtypparCode
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Ptyppar_is_what    to sPtypparWhat
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Ptyppar_Recr       to sPtypparRecr
                    Get Field_Current_Value Of Ptyppar_DD  Field Ptyppar.Sysxet_Ptyppar     to sSysx

                    Move (Trim(sSysx)) to sSysx

                    // An einai sysxetismeno parastatiko
                    If (sSysx<>'') Begin
                        Clear Pseira
                        Move SyscurXr.Company_Code  to Pseira.Company_Code
                        Move SyscurXr.Branch_Code   to Pseira.Branch_Code
                        Move sSysx                  to Pseira.Ptyppar_Code
                        Move sSeira                 to Pseira.Pseira_Seira
                        Find Eq Pseira By Index.1 // Pseira:Index.1:Company_Code+Branch_Code+Year_Year+Ptyppar_Code+Pseira_Seira
                        If ((Found) And (Pseira.Pseira_Autonum<>1)) Begin
                            Send Stop_Box 'Ü ©ú†®· ´¶¨ ßò®ò©´/°¶Á úÂ§ò† Æú†®Êö®ò≠û\n°ò† ‡™ ú° ´¶Á´¶¨ ÉÑå £ß¶®úÂ §ò ´¨ß‡üúÂ' 'ë≠·¢£ò 77710'
                            Procedure_Return
                        End
                        Else Begin
                            If (Not(Found)) Begin
                                Send Stop_Box 'Ü ©ú†®· ´¶¨ ßò®ò©´/°¶Á úÂ§ò† ò§Áßò®°´û' 'ë≠·¢£ò 77711'
                                Procedure_Return
                            End
                        End
                    End
                    Else Begin
                        // An Den einai sysxetismeno parastatiko
                        Clear Pseira
                        Move SyscurXr.Company_Code  to Pseira.Company_Code
                        Move SyscurXr.Branch_Code   to Pseira.Branch_Code
                        Move sPtypparCode           to Pseira.Ptyppar_Code
                        Move sSeira                 to Pseira.Pseira_Seira
                        Find Eq Pseira By Index.1 // Pseira:Index.1:Company_Code+Branch_Code+Year_Year+Ptyppar_Code+Pseira_Seira
                        If ((Found) And (Pseira.Pseira_Autonum<>1)) Begin
                            Send Stop_Box 'Ü ©ú†®· ´¶¨ ßò®ò©´/°¶Á úÂ§ò† Æú†®Êö®ò≠û\n°ò† ‡™ ú° ´¶Á´¶¨ ÉÑå £ß¶®úÂ §ò ´¨ß‡üúÂ' 'ë≠·¢£ò 77712'
                            Procedure_Return
                        End
                        Else Begin
                            If (Not(Found)) Begin
                                Send Stop_Box 'Ü ©ú†®· ´¶¨ ßò®ò©´/°¶Á úÂ§ò† ò§Áßò®°´û' 'ë≠·¢£ò 77713'
                                Procedure_Return
                            End
                        End
                    End
        ////////////////////////// NEW Code End ///////////////////////////

        ////////////////////////// Old Code Start //////////////////////////
        //            If (sPtypparWhat='2') Begin
        //            // A§ ú†§ò† ßò®ò©´ò´†°Ê ßÈ¢û©û™
        //                Move Particle.Partl_No              to iCurNo
        //                Clear Pseira
        //                Move SyscurXr.Company_Code  to Pseira.Company_Code
        //                Move SyscurXr.Branch_Code   to Pseira.Branch_Code
        //                Move sPtypparCode           to Pseira.Ptyppar_Code
        //                Move sSeira                 to Pseira.Pseira_Seira

        //                Find Eq Pseira By Index.1 // Pseira:Index.1:Company_Code+Branch_Code+Year_Year+Ptyppar_Code+Pseira_Seira
        //                if (not(found)) begin
        //                    send stop_box 'Ä§Áßò®°´û ©ú†®·' 'ë≠·¢£ò 4423'
        //                    procedure_return
        //                end
        //                If ((Found) And (Pseira.Pseira_Autonum<>1)) Begin
        //                    Send Stop_Box 'Ü ©ú†®· ´¶¨ ßò®ò©´/°¶Á úÂ§ò† Æú†®Êö®ò≠û\n°ò† ‡™ ú° ´¶Á´¶¨ ÉÑå £ß¶®úÂ §ò ´¨ß‡üúÂ' 'ë≠·¢£ò 77776'
        //                    Procedure_Return
        //                End
        //            End
        ////////////////////////// Old Code End ///////////////////////////

                    Move Particle.Partl_No              to iCurNo

                    Move Particle.Recnum to iRecnum
                    Move 0 to isOk
                         If (Trim(Clients.Client_ID)     = '') Move -1 to isOK
                    Else If (Trim(Clients.Client_Name)   = '') Move -2 to isOK
                    Else If (Trim(Clients.Client_Job)    = '') Move -3 to isOK
                    Else If (Trim(Clients.Client_Address)= '') Move -4 to isOK
                    Else If (Trim(Cities.City_Descr)     = '') Move -5 to isOK
                    Else If (Trim(Clients.Client_Afm)    = '') Move -6 to isOK
                    Else If (Trim(Clients.Client_DOY)    = '') Move -7 to isOK
                    Else If (Trim(Particle.Ora_Apostolhs)= '') Move -8 to isOK

                    If (isOK<>0) Begin
                             If (isOK=-1) Send Stop_Box 'Éú§ ¨ß·®Æú† °‡õ†°Ê™ èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-2) Send Stop_Box 'Éú§ ¨ß·®Æú† úß‡§¨£Âò èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-3) Send Stop_Box 'Éú§ ¨ß·®Æú† úß·ööú¢£ò èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-4) Send Stop_Box 'Éú§ ¨ß·®Æú† õ†úÁü¨§©û èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-5) Send Stop_Box 'Éú§ ¨ß·®Æú† ßÊ¢û èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-6) Send Stop_Box 'Éú§ ¨ß·®Æú† Äîã èú¢·´û' 'ë≠·¢£ò'
                        Else If (isOK=-7) Send Stop_Box 'Éú§ ¨ß·®Æú† Ééì èú¢·´û' 'ë≠·¢£ò'
                        If (isOK<>-8) Procedure_Return
                        Get YesNo_Box 'Éú§ úÂ§ò† ©¨£ß¢û®‡£‚§û û È®ò\nåò ©¨§úÆÂ©‡ £ú ´û§ ú°´Áß‡©û;' "Ñ®È´û©û" 0 to iYes
                        If (iYes=MBR_NO) Procedure_Return
                    End
                    Move 0 to isOK
                    If (Ptyppar.Ti_Typonei_Pms     <>'2') Begin
                             If (Trim(Particle.Skopos_Diakin);
                                                         = '') Move -9 to isOK
                        Else If (Trim(Particle.Topos_Apostolhs);
                                                         = '') Move -10 to isOK
                        Else If (Trim(Particle.Tropos_Diakin);
                                                         = '') Move -11 to isOK
                        If (isOK<>0) Begin
                                 If (isOK=-9)  Send Stop_Box 'Éú§ ¨ß·®Æú† ©°¶ßÊ™ õ†ò°Â§û©û™' 'ë≠·¢£ò'
                            Else If (isOK=-10) Send Stop_Box 'Éú§ ¨ß·®Æú† ´Êß¶™ òß¶©´¶¢„™' 'ë≠·¢£ò'
                            Else If (isOK=-11) Send Stop_Box 'Éú§ ¨ß·®Æú† ´®Êß¶™ õ†ò°Â§û©û™' 'ë≠·¢£ò'
                            Procedure_Return
                        End
                    End


                // JS 09/05/2011
                Set piDoNotCalculate Of Particle_DD to 1
                // JS 09/05/2011

                begin_transaction

                 // kodikas kleidomatos parastatikoy
                   Set piTxtID         Of (bpEnCmvs(Self)) to (piTxtID(Self))
                   Set psTxt           Of (bpEnCmvs(Self)) to (psTxt(Self))
                   Set pifromtim       Of (bpEnCmvs(Self)) to 1
                   Set psParticleRecr  Of (bpEnCmvs(Self)) to sParticleRecr
                   Set piParticleID    Of (bpEnCmvs(Self)) to (v14aola(Self))
                   Set psModule        Of (bpEnCmvs(Self)) to '01'
                   Send DoProcess                          to (bpEnCmvs(Self))
                   Get piLathos        Of (bpEnCmvs(Self)) to iErr
                   If (iErr) error 8000 "ä·ü¶™ °ò´· ´û§ õ†òõ†°ò©Âò °¢ú†©Â£ò´¶™ ßò®ò©´ò´†°¶Á !!"


        ///////////////////////////////////////
        ///////////// 29/01/2003 //////////////
        ///////////////////////////////////////

                   Move (Pseira.Autonum_Plus+1) to iNextNo
                   Move (Pseira.Autonum_Plus+1) to Pseira.Autonum_Plus
                   Move Particle.Partl_Hmnia    to Pseira.Auto_Plus_Last
                   Saverecord Pseira

                   //Reread Branch
                   If (Particle.Partl_Hmnia>Branch.Last_Hmnia_Ekt) Begin
                      Move Particle.Partl_Hmnia to Branch.Last_Hmnia_Ekt
                      Saverecord Branch
                   End
                   //Unlock

                   Move iNextNo to Particle.Partl_No
                   Saverecord Particle
                   Move (Err) to iErr
                   If (iErr) error 9001 'ë≠·¢£ò °ò´· ´û§ ò¢¢òö„ ò®†ü£¶Á'
                   Set Button_State    of (Wait(Self)) to False
                   Set BarVisibleState of (Wait(Self)) to '' False
                   Send Popup          to (Wait(Self))

                         // 20/09/2002 Enhmerosh Psxetika me thetiko arithmo
                   Clear Psxetika
                   Move sParticleRecr to Psxetika.Partl_Recr
                   Find Gt Psxetika by index.4
                   While ((Found=1) And (Psxetika.Partl_Recr=sParticleRecr))
                          Move Psxetika.Psx_Partl_Recr            to sSxetiko
                          Clear Psxetika
                              Move sSxetiko                           to Psxetika.Partl_Recr
                              Move sParticleRecr                      to Psxetika.Psx_Partl_Recr
                              Find Eq Psxetika by index.4
                              If (Found) Begin
                                 Move Psxetika.Sx_Partl_No           to sCmovesPar
                                 Move (Replace(String(iCurNo),;
                                       sCmovesPar,String(iNextNo))) to sCmovesPar
                                 Move sCmovesPar                     to Psxetika.Sx_Partl_No
                                 Saverecord Psxetika
                               End
                               Clear Psxetika
                               Move sParticleRecr  to Psxetika.Partl_Recr
                               Move sSxetiko       to Psxetika.Psx_Partl_Recr
                               Find Eq Psxetika by index.4
                               Find Gt Psxetika by index.4
                   Loop

                    // 20/09/2002 Enhmerosh Psxetika me thetiko arithmo
                    Integer iPmsRecn
        //            Clear PmsSxet
        //            Move sParticleRecr to PmsSxet.Arx_Partl_Recr
        //            Find Gt PmsSxet By Index.2 // Arx_Partl_Recr+Recnum
        //            While ((Found=1) And (PmsSxet.Arx_Partl_Recr=sParticleRecr))
        //                    Move PmsSxet.Recnum                                         to iPmsRecn
        //                    Move PmsSxet.Sx_Arithmos                                    to sCmovesPar
        //                    Move (Replace(String(iCurNo),sCmovesPar,String(iNextNo)))   to sCmovesPar
        //                    Move sCmovesPar                                             to PmsSxet.Sx_Arithmos
        //                    Saverecord PmsSxet
        //                    Clear PmsSxet
        //                    Move sParticleRecr  to PmsSxet.Arx_Partl_Recr
        //                    Move iPmsRecn       to PmsSxet.Recnum
        //                    Find Eq PmsSxet by index.2
        //                    Find Gt PmsSxet By Index.2 // Arx_Partl_Recr+Recnum
        //            Loop

                    // Epanatopothethsh
                    Clear Particle
                    Move sParticleRecr to Particle.Partl_Recr
                    Find Eq Particle by index.2
                    move (Trim(particle.cmoves_recr)) to sCmovesRecr


        ////////////////////////// 03/11/2004 //////////////////////////////////////
        ///////// Prosthikh elegxou gia periptosh Interbeton KO pou kleidose
        ///////// kai ektypose parastatiko XORIS Cmove eno ekane kanonika
        ///////// thn eggrafh sto Wcmove
                    // 1. Psaxnoume na vroume an to ctypkin tou parastatikou kanei eggrafh sto cmove
                    Clear Cflagkin
                    Move Particle.Ctypkin_Code  to Cflagkin.Ctypkin_Code
                    Move '1'                    to Cflagkin.Cflagkin_Flag
                    Find Eq Cflagkin By Index.1
                    If ((Found) And (sCmovesRecr='')) error 6666 'Éú§ ‚ö†§ú úöö®ò≠„ ©´¶§ ≠¶®‚ò'
        ////////////////////////// 03/11/2004 //////////////////////////////////////

                                // 18/09/2001 Allagh gia na enhmeronei kai tyxon
                                // Cmoves kai Wcmoves me ton thetiko arithmo **START**
                   if (sCmovesRecr<>'') Begin
                      Send Clear          to Cmoves_DD2
                      Move sCmovesRecr    to Cmoves.Cmoves_Recr
                      Send Find to Cmoves_DD2 Eq 2
                      If (Found) Begin
                         Get Field_Current_Value Of Cmoves_DD2 Field Cmoves.Cmoves_Par   to sCmovesPar
                         Move (Replace(String(iCurNo),sCmovesPar,String(iNextNo)))       to sCmovesPar
                         Set Field_Changed_Value Of Cmoves_DD2 Field Cmoves.Cmoves_Par   to sCmovesPar
                         Send Request_Save to Cmoves_DD2
                         Send UpdateWait to (Wait(Self))  ('Ñ§û£‚®‡©û Cmoves  '-Cmoves.Cmoves_Recr)
                      End
                      Else error 9003 'Éú§ ô®‚üû°ú û °Â§û©û ©´¶ Cmoves'
                      Send Find to Pmoves_DD First_Record 3
                      While (Found)
                         Get Field_Current_Value Of Pmoves_DD Field Pmoves.WCmoves_Recr to sWcmovesRecr
                         If (Trim(sWcmovesRecr)<>'') Begin
                            Send Clear to Wcmoves_DD2
                            Move (Trim(sWcmovesRecr)) to Wcmoves.Wcmove_Recr
                            Send Find to Wcmoves_DD2 Eq 2
                            If (Found) Begin
                                Get Field_Current_Value Of WCmoves_DD2 Field WCmoves.WCmove_Par to sWCmovesPar
                                Move (Replace(String(iCurNo),sWCmovesPar,String(iNextNo)))      to sWCmovesPar
                                Set Field_Changed_Value Of WCmoves_DD2 Field WCmoves.WCmove_Par to sWCmovesPar
                                Send Request_Save to WCmoves_DD2
                                Send UpdateWait to (Wait(Self))  ('Ñ§û£‚®‡©û WCmoves '-WCmoves.WCmove_Recr)
                            End
                            Else error 9005 'Éú§ ô®‚üû°ú û °Â§û©û ©´¶ WCmoves'
                         End
                         Set Field_Changed_Value Of Pmoves_DD Field Pmoves.Partl_No to iNextNo
                         Send Request_Save to Pmoves_DD
                         Send Find to Pmoves_DD Next_Record 3
                     Loop
                   End
                   Send Deactivate to (Wait(Self))



        // jsjs 23/09/2003
                    Send Reset_All_Files_Except_System



                   // 18/09/2001 Allagh gia na enhmeronei kai tyxon
                   // Cmoves kai Wcmoves me ton thetiko arithmo **END**
                   Send Find_By_Recnum to Particle_DD Particle.File_Number iRecnum

                   Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Ektyposh to '1'
                   Send Request_Save to Particle_DD

        // jsjs 23/09/2003
        //           Move '1' to Particle.Partl_Ektyposh
        //           Saverecord Particle

          //      End_Transaction
          //      Unlock
                    If (Sysfile.Use_Sql_Reports='1') Begin
                        // Proth klhsh gia exagogh ascii

                            Set psRecr Of (Timologio_BasicReport(rmhtrtitanola(Self))) to sParticleRecr
                            Set piAsciiOrPrinter Of rmhtrtitanola to 1
                            Send StartReport to rmhtrtitanola
                        // Elegxos an akyrothike h an kati strabose
                            If (piIsReportCancelled(rmhtrtitanola(Self))=1) ;
                                Error 12555 'Ä°Á®‡©û/ë≠·¢£ò °ò´· ´û§ ú°´Áß‡©û'

                        Get fiEtoimaseTaAscii to isOK

                                If (isOK=12556) Error 12556 'Éú§ ô®‚üû°ú ´¶ C:\DNS_TMP\##Parast.txt'
                        Else If (isOK=12557) Error 12557 'í¶ ò®ÆúÂ¶ C:\DNS_TMP\##Parast.txt úÂ§ò† ·õú†¶'
                        Else If (isOK=12558) Error 12558 'Éú§ ô®‚üû°ú ´¶ C:\DNS_TMP\##Parast0.txt'
                        Else If (isOK=12559) Error 12559 'í¶ ò®ÆúÂ¶ C:\DNS_TMP\##Parast0.txt úÂ§ò† ·õú†¶'
                        Else If (isOK=12560) Error 12560 'Éú§ ô®‚üû°ú ´¶ C:\DNS_TMP\##Parast1.txt'
                        Else If (isOK=12561) Error 12561 'í¶ ò®ÆúÂ¶ C:\DNS_TMP\##Parast1.txt úÂ§ò† ·õú†¶'

                        String sLine

                       Get fiPareYpografh to sLine
                       Move (Trim(sLine)) to sLine
                       If (Length(sLine)=77) Begin
                           If (Particle.recnum) Begin
                               Move sLine to Particle.ss_arithmos
                               Saverecord Particle
                               Move (Err) to iErr
                               If (iErr) Error 12564 'ë≠·¢£ò °ò´· ´û§ úöö®ò≠„ \n´û™ ¨ß¶ö®ò≠„™ ©´¶ ßò®ò©´ò´†°Ê'
                           End
                           Else Error 12565 'ÑÆò©ò ´û§ ´®‚Æ¶¨©ò úöö®ò≠„ ´¶¨ ßò®ò©´ò´†°¶Á'
                       End
                       Else Begin
                                If (sLine=     '') Error 12566 'ë≠·¢£ò ß®¶ú®ÆÊ£ú§¶ òß¶ ´û§ £ûÆò§„'
                           Else If (sLine='12562') Error 12562 'Éú§ ô®‚üû°ú ´¶ C:\DNS_TMP\##Signature.txt'
                           Else If (sLine='12563') Error 12563 'í¶ ò®ÆúÂ¶ C:\DNS_TMP\##Signature.txt úÂ§ò† ·õú†¶'
                           Else                    Error 12567 'ãû °ò´òÆ‡®û£‚§¶ ©≠·¢£ò'
                       End
                   End



                End_transaction

                Unlock
          //      Move iObj to Error_Object_ID

                if (sysfile.online_logist<>1) begin
                       Set psRecr Of (Timologio_BasicReport(rmhtrtitanola(Self))) to sParticleRecr
                       Set piAsciiOrPrinter Of rmhtrtitanola to 2
                       Send StartReport to rmhtrtitanola
                                // Elegxos an akyrothike h an kati strabose
                End
                else begin
                    Set psrecr      of (rParticle(self)) to sParticleRecr
                    set pimazikh    of (rParticle(self)) to 1
                    set pino       of (rParticle(self)) to 2
                    Send runprom1Report to (prom1WQLReport(rParticle(Self)))
                End

                // JS 09/05/2011
                Set piDoNotCalculate Of Particle_DD to 0
                // JS 09/05/2011

                IF (NOT(ERR)) BEGIN
                    Send Rebuild_Constraints to particle_DD
                    send find to particle_dd first_record 14
                END
                ELSE send find to particle_dd NEXT_record 14

                If (Wait(Self)) Send Deactivate to (Wait(Self))

               loop
               Send Beginning_Of_Data to the_table   True
               If (Wait(Self)) Send Deactivate to (Wait(Self))
            End
            else send info_box "Éú§ ¨ß·®Æú† ú§ú®öÊ ßò®ò©´ò´†°Ê ö†ò ú°´Áß‡©û" 'è¢û®¶≠¶®Âò'
          end
          else send info_box 'Ü õ†òõ†°ò©Âò ú°´Áß‡©û™ ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û ' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick

























        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "èú¢·´û™"
        Set Location to 68 11
        Set Size to 10 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub17

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "Ñ®ö¶"
        Set Location to 82 10
        Set Size to 10 21
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object cn_descr is a FormSub
        Set Size to 13 241
        Set Location to 83 183
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // cn_descr

    Object btnPrintProsf is a ButtonSub
        Set Bitmap to "Printer.bmp"
        Set Size to 22 25
        Set Location to 252 472
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "Ñ¢úöÆ¶™ ö†ò ú°°®ú£„ Éú¢´Âò "

        Procedure OnClick
             date dENARXH dLHXH
             get value of from_date  to dENARXH
             get value of to_date  to dLHXH
             set pdapo of (r14(self)) to dENARXH
             set pdeos of (r14(self)) to dLHXH
             Send activate_r14
        End_Procedure // OnClick



































        //AB-StoreEnd

    End_Object    // btnPrintProsf


    //AB-StoreStart




























    //AB-StoreEnd

End_Object    // V14Aola


//AB-StoreStart












//AB-StoreEnd

//AB/ End_Object    // prj
