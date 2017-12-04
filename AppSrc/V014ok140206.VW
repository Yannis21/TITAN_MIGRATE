//AB/ Project V014ok140206
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V014ok140206"
//AB/     Set ProjectFileName to "V014ok140206.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V014ok140206 is a dbViewSubS
//     CN_DD2 is a CN_DataDictionary
//     pseira_DD is a pseira_DataDictionary
//     Sysfile_DD is a DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Clients_DD is a DataDictionary
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
//     Partlfpa_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     FormSub1 is a FormSub
//     FormSub2 is a FormSub
//     dbGridSub1 is a dbGridSub
//     Pmoves_ is a dbGridSub
//     TextBoxSub4 is a TextBoxSub
//     FormSub3 is a FormSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     FormSub4 is a FormSub
//     FROM_DATE is a FormSub
//     TextBoxSub11 is a TextBoxSub
//     ButtonSub3 is a ButtonSub
//     TextBoxSub15 is a TextBoxSub
//     FormSub5 is a FormSub
//     TextBoxSub16 is a TextBoxSub
//     FormSub6 is a FormSub
//     FormSub7 is a FormSub
//     pseira_seira is a FormSub
//     pseira_no is a FormSub
//     ButtonSub2 is a ButtonSub
//     TextBoxSub17 is a TextBoxSub
//     TextBoxSub18 is a TextBoxSub
//     chkSysxet is a CheckBoxSub
//     chkanal is a CheckBoxSub
//     ButtonSub4 is a ButtonSub
//     ButtonSub5 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object ButtonSub5
Register_Object btnChangeXr
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object CN_DD2
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object chkanal
Register_Object chkSysxet
Register_Object dbGridSub1
Register_Object dbGrpYear
Register_Object FormSub1
Register_Object FormSub2
Register_Object FormSub3
Register_Object FormSub4
Register_Object FormSub5
Register_Object FormSub6
Register_Object FormSub7
Register_Object Fpa_DD
Register_Object FROM_DATE
Register_Object Item_DD
Register_Object Nomisma_DD
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Particle_DD
Register_Object Partlfpa_DD
Register_Object Payresp_DD
Register_Object Pmoves_
Register_Object Pmoves_DD
Register_Object Ptyppar_DD
Register_Object pseira_DD
Register_Object pseira_no
Register_Object pseira_seira
Register_Object Syscurxr_DD
Register_Object Sysfile_DD
Register_Object TextBoxSub11
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub4
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object Towns_DD
Register_Object Units_DD
Register_Object V014ok140206
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
use doarticle00.pkg
Use sl013.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use Txtbox.Sub
Use Cmbfrm.Sub
Use Button.Sub
Use Form.Sub
Use dbGrid.Sub
Use Chkbox.Sub

Use SYSFILE.DD
Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use NOMISMA.DD
Use PAYRESP.DD
Use AREAS.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use CLIENTS.DD
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
Use PARTLFPA.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V014ok140206 FOR V014ok140206

Object V014ok140206 is a dbViewSubS

    //AB-StoreTopStart
    Property String     psParticleRecr      Public ''
    Property String     psClientID          Public ''
    Property String     psparast            Public ''
    property string     psnomismacode       public ''
    Property String     psModule            Public ''
    property string     pspar               public ''
    property string     psclient            public ''
    property string     pscn                public ''
    property date       psdatefrom          public ''
    Property Integer    piMustNOTConstrain  Public  0
    Property integer    pierr               Public  0
    Property integer    piSfalma            Public  0
    property integer    pifindstatus        public  0
    property string     psptypparrecr       public 0
    Property String     psPrevParast        public  0
    property integer    pifrombtn           public 0
    property integer    pibtnerr            public 0
    Property String     psPrevRecr          Public ''
    
    Object CN_DD2 is a CN_DataDictionary
    End_Object
    
    Object pseira_DD is a pseira_DataDictionary
    End_Object
    
    Function fncn string name Returns string
          string descr
          Clear CN
          move name to cn.cn_recr
          find eq cn by index.2
          if (found=1) move cn.cn_descr to descr
          else         move ''          to descr
          function_return descr
    end_Function
    
    
    
    //AB-StoreTopEnd

    Set Label to "ãú´ò©Æû£ò´†©£Ê™ èò®ò©´ò´†°È§"
    Set Size to 295 527
    Set Location to 1 3

    //AB-DDOStart

    Object Sysfile_DD is a Sysfile_DataDictionary
    End_Object    // Sysfile_DD

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Nomisma_DD is a Nomisma_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Nomisma_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Areas_DD is a Areas_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Areas_DD

    Object Country_DD is a Country_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Payresp_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Cities_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Particle_DD is a Particle_DataDictionary

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
                                
        Begin_Constraints
            string spar smodule sclient scn
            Date sdate sdateto
            If (piMustNOTConstrain(Self)=1) Begin
                Set Ordering to 2 // Particle:Index.2:Partl_Recr
                Constrain Particle.Partl_Recr Eq (psParticleRecr(Self))
            End
            Else Begin
                get pspar         to spar
                get pscn          to scn
                get psclient      to sclient
                Get psDateFrom    to sdate
                move (psmodule(self)) to smodule
                //If (sDate  ='') Move '01/01/1980' to sDate
                If (psModule(Self)<>'') Begin
                    Set Ordering to 8 // Particle:Index.8
                    Constrain Particle.company_code       eq syscurxr.company_code
                    Constrain Particle.branch_code        eq syscurxr.branch_code
                    Constrain Particle.year_year          eq syscurxr.year_year
                    Constrain Particle.Partl_Module       eq (psModule(Self))
                    constrain particle.partl_timol        eq 0
                    constrain particle.ptyppar_code       eq spar
                    Constrain Particle.Partl_Hmnia Eq sdate
                    //Constrain Particle.Partl_Hmnia Between sdate And sdateto
                    if (sclient ne "") Begin
                       constrain particle.client_id eq sclient
                       if (scn ne "") constrain particle.cn_code eq scn
                    End
                    Constrain particle.partl_ekleise      eq '1'
                End
            End
        End_Constraints
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Wapokat_DD is a Wapokat_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary

        //AB-StoreStart
                                                                    
                                                                    
        //AB-StoreEnd

    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        //AB-StoreEnd

    End_Object    // Witemx_DD

    Object Pmoves_DD is a Pmoves_DataDictionary
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number

        //AB-StoreStart
        Procedure Request_Save
            Integer iRec
            Get Field_Current_Value Of Particle_DD Field Particle.Recnum to iRec
            If (Not(iRec)) Procedure_Return
            Forward Send Request_Save
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Pmoves_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Partlfpa_DD is a Partlfpa_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set DDO_Server to (Fpa_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Partlfpa_DD

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
        Set Location to -1 4
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
            Set Location to 5 487
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
            
                Reread SyscurXr
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
                send Request_Assign of SysCurXR_DD SysCurXR.File_Number
            
                //////If (Syscurxr_DD(Self)<>0) Send Find_By_Recnum to Syscurxr_DD Syscurxr.File_Number Syscurxr.Recnum
            
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

    Object FormSub1 is a FormSub
        Set Size to 13 53
        Set Location to 28 73
        Set Form_Border Item 0 to Border_Normal
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl012(Current_object))
        
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        Procedure Find_Perigrafh String asValue
            String lsValue
            Move (Fsptyppar(self,asvalue))  to lsvalue
            set value of (formsub2(current_object)) to lsvalue
        End_Procedure
        
        Procedure Prompt_Callback integer hPrompt
            Local String lsValue
            set Export_Column of hPrompt to 0
            Set Initial_Column of hPrompt to 0
        end_procedure
        
        Procedure Prompt
            String sVal
            Set Modal_State Of (sl012(Current_object)) to True
            Set psModule Of (sl012(Current_object)) to (psModule(Self))
            Forward Send Prompt
            Get Value Item 0 to sVal
            Send Find_Perigrafh sVal
        End_procedure
        
        procedure onkillfocus
            String sVal
            Get Value Item 0 to sVal
            Send Find_Perigrafh sVal
        end_procedure
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object FormSub2 is a FormSub
        Set Size to 13 104
        Set Location to 28 133
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                    
        //AB-StoreEnd

    End_Object    // FormSub2

    Object dbGridSub1 is a dbGridSub
        Set Main_File to Particle.File_Number
        Set Size to 90 519
        Set Location to 60 2
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
            Entry_Item (fncn(self,particle.cn_recr))
            Entry_Item Particle.Partl_selected
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
        
        Set Form_Width    item 7 to 84
        Set Header_Label  item 7 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 8 to 33
        Set Header_Label  item 8 to "ã´©Æ"
        Set Column_Checkbox_State  item 8 to True
        

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
        
        Procedure Prompt
        End_Procedure
        
        Set No_Create_State to True
        Set No_Delete_State to True
        
        //AB-StoreEnd

    End_Object    // dbGridSub1

    Object Pmoves_ is a dbGridSub
        Set Main_File to Pmoves.File_Number
        Set Server to (Pmoves_DD(self))
        Set Size to 82 519
        Set Location to 153 3
        Set Wrap_State to TRUE
        Set Border_Style to Border_Normal

        Begin_Row
            Entry_Item Witemx.Witemx_recr
            Entry_Item Witemx.Witemx_descr
            Entry_Item Wax.Wax_descr
            Entry_Item Pmoves.Pms_qty
            Entry_Item Units.Units_descr
            Entry_Item Pmoves.Pms_unitprice
            Entry_Item Pmoves.Pms_amaftdisc
            Entry_Item Pmoves.Pms_vatpct
            Entry_Item Pmoves.Pms_vatam
            Entry_Item Pmoves.Pms_payable
            Entry_Item Pmoves.Timol_ypol
            Entry_Item Pmoves.Qty_kinhshs
        End_Row

        Set Form_Width    item 0 to 34
        Set Header_Label  item 0 to "â‡õ."
        
        Set Form_Width    item 1 to 64
        Set Header_Label  item 1 to "ÑÂõ¶™"
        
        Set Form_Width    item 2 to 52
        Set Header_Label  item 2 to "Äß¶ü„°û     "
        
        Set Form_Width    item 3 to 30
        Set Header_Label  item 3 to "è¶©Ê´"
        
        Set Form_Width    item 4 to 29
        Set Header_Label  item 4 to "ã/ã"
        
        Set Form_Width    item 5 to 47
        Set Header_Label  item 5 to "í†£„ ã¶§."
        
        Set Form_Width    item 6 to 39
        Set Header_Label  item 6 to "âòüò®·"
        
        Set Form_Width    item 7 to 30
        Set Header_Label  item 7 to "%î.è.Ä."
        
        Set Form_Width    item 8 to 48
        Set Header_Label  item 8 to "è¶©Ê î.è.Ä."
        
        Set Form_Width    item 9 to 51
        Set Header_Label  item 9 to "ëÁ§¶¢¶"
        
        Set Form_Width    item 10 to 48
        Set Header_Label  item 10 to "É†òü.è¶©Ê´."
        
        Set Form_Width    item 11 to 42
        Set Header_Label  item 11 to "è¶©Ê´.â†§."
        

        //AB-StoreStart
        Set Ordering to 3
        Set Enabled_State       to True
        Set Child_Table_State   to True
        
        Set Column_Option       Item  0 to Noput True
        Set Column_Option       Item  1 to NoEnter True
        Set Column_option       Item  2 to noenter True
        Set Column_Option       Item  3 to NoEnter True
        Set Column_Option       Item  4 to NoEnter True
        Set Column_Option       Item  5 to NoEnter True
        Set Column_Option       Item  6 to NoEnter True
        Set Column_Option       Item  7 to NoEnter True
        Set Column_Option       Item  8 to NoEnter True
        Set Column_Option       Item  9 to NoEnter True
        Set Column_Option       Item 10 to NoEnter True
        
        //            Function Row_Save Returns Integer
        //                Integer iRec
        //                Integer iProblem
        //                Forward Get row_save to iProblem
        //                If (NOT(iProblem)) Begin
        //                    // Enhmerosh tou Particle Selected apo epilogh
        //                    // posothton kinhshs ton Pmoves.
        //                    // Den mpainei sthn klash o kodikas giati dhmiourgei
        //                    // Loop (Theorei h klash oti otan markaristei
        //                    // to Particle Selected, oti prepei na markarei ola ta Pmoves
        //                    Get field_Current_Value Of Particle_DD Field Particle.Recnum to iRec
        //                    If (iRec) Begin
        //                        Clear Particle
        //                        Move iRec to Particle.Recnum
        //                        Find Eq Particle.Recnum
        //                        If (Found) Begin
        //                            Reread
        //                            Move (Particle.Partl_Disctof>0) to Particle.Partl_Selected
        //                            If (Particle.Partl_Disctof=0) Begin
        //                                Move '' to Particle.Partl_Toposf
        //                                Move  0 to Particle.Partl_Selected
        //                            End
        //                            Saverecord Particle
        //                            Unlock
        //                        End
        //                    End
        //                End
        //                Function_Return iProblem
        //            End_Function
        
        //AB-StoreEnd

    End_Object    // Pmoves_

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "íÁß¶™ èò®ò©´."
        Set Location to 30 7
        Set Size to 10 50
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object FormSub3 is a FormSub
        Set Size to 13 63
        Set Location to 28 298
        Set Form_Border Item 0 to Border_Normal
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl100(Current_object))
        
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        Procedure Prompt_Callback integer hPrompt
            Local String lsValue
            set Export_Column of hPrompt    to 0
            Set Initial_Column of hPrompt   to 0
        end_procedure
        
        procedure Onchange
            string sValue  smodule
            get psmodule to smodule
            Get Value Item 0 to sValue
            Move (Trim(sValue)) to sValue
        
        //            reread
        //            unlock
        //            send Request_Assign of Sysfile_DD Sysfile.File_Number
        
            if  (pimustnotconstrain(self)=1)  begin
                set visible_state of textboxsub16 to true
                set visible_state of formsub6     to true
                set visible_state of formsub7     to true
                set visible_state of textboxsub17 to true
                set visible_state of pseira_seira to true
                set visible_state of textboxsub18 to true
                set visible_state of pseira_no    to true
                set enabled_state of buttonsub4   to true
            end
            else begin
                if (sysfile.titan=1) begin
                    set visible_state of textboxsub16 to false
                    set visible_state of formsub6     to false
                    set visible_state of formsub7     to false
                    set visible_state of textboxsub17 to false
                    set visible_state of pseira_seira to false
                    set visible_state of textboxsub18 to false
                    set visible_state of pseira_no    to false
                    set enabled_state of buttonsub4   to false
                end
                else begin
                    set visible_state of textboxsub16 to true
                    set visible_state of formsub6     to true
                    set visible_state of formsub7     to true
                    set visible_state of textboxsub17 to true
                    set visible_state of pseira_seira to true
                    set visible_state of textboxsub18 to true
                    set visible_state of pseira_no    to true
                    set enabled_state of buttonsub4   to true
                end
            end
            set psmodule     of (sl100(self)) to   (psmodule(self))
            Set Enabled_State Of FormSub4 to (sValue<>'')
            Set Enabled_State of (buttonsub5(self)) to (piMustNOTConstrain(Self)=0)
            set enabled_state of (buttonsub2(self)) to (svalue<>'')
            set enabled_state of (buttonsub4(self)) to (svalue<>'')
        end_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub3

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "ë¨§ò¢/§¶™"
        Set Location to 29 243
        Set Size to 10 38
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Î®ö¶"
        Set Location to 30 365
        Set Size to 10 24
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object FormSub4 is a FormSub
        Set Size to 13 62
        Set Location to 28 410
        Set Form_Border Item 0 to Border_Normal
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl041(Current_object))
        
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send key iKey
        End_Procedure
        
        procedure prompt
            string sclient
            get value of (formsub3(self)) to sclient
            set fragmaclient_id of (sl041(self)) to sclient
            forward send prompt
        end_procedure
        
        procedure onchange
            string sValue
            Get Value Item 0 to sValue
            Move (Trim(sValue)) to sValue
        end_procedure
        
        //AB-StoreEnd

    End_Object    // FormSub4

    Object FROM_DATE is a FormSub
        Set Size to 13 63
        Set Location to 42 410
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set prompt_object to (ocalendar(self))
        
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FROM_DATE

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "Ü£ú®¶£û§Âò í†£¶¢Êöû©û™"
        Set Location to 45 306
        Set Size to 10 86
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub11

    Object ButtonSub3 is a ButtonSub
        Set Label to "ÑÁ®ú©û Ñöö®ò≠È§"
        Set Size to 14 103
        Set Location to 44 134
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Date dFrom dTo
            string sval scn spar msgstr
            integer ierr
            Send Clear_The_User
            Get Value Of From_Date  Item 0  to dFrom
            Get Value of (formsub1(self))   to spar
            Get Value of (formsub3(self))   to sVal
            Get Value of (formsub4(self))   to scn
            set pspar                       to spar
            set pscn                        to scn
            set psclient                    to sval
            Set psDateFrom                  to dFrom
            move 0 to ierr
            if ((dfrom < syscurxr.year_xrhshfrom) or (dfrom > syscurxr.year_xrhshto)) begin
               move "" to msgstr
               move 1 to ierr
               move "Ü£/§Âú™ úß†¢¶ö„™ ú°´Ê™ ¶®Â‡§ Æ®„©û™" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
            Send Rebuild_Constraints        to Particle_DD
            Send Beginning_Of_Data          to dbGridSub1 True
            Send Rebuild_Constraints        to Pmoves_DD
            Send Beginning_Of_Data          to Pmoves_    True
            Set psPrevParast                to spar
            set pierr to 0
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object TextBoxSub15 is a TextBoxSub
        Set Label to "Ü£/§Âò ãú´ò©Æ."
        Set Location to 239 4
        Set Size to 10 54
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub15

    Object FormSub5 is a FormSub
        Set Size to 13 56
        Set Location to 239 73
        Set Color to clAqua
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set prompt_object to (ocalendar(self))
        
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // FormSub5

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "íÁß¶™ èò®ò©´."
        Set Location to 239 134
        Set Size to 10 50
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub16

    Object FormSub6 is a FormSub
        Set Size to 13 58
        Set Location to 238 196
        Set Color to clAqua
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl012(Current_object))
        
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        Procedure Find_Perigrafh String asValue
            String lsValue
            Clear Ptyppar
            move syscurxr.company_code  to ptyppar.company_code
            move syscurxr.branch_code   to ptyppar.branch_code
            move syscurxr.year_year     to ptyppar.year_year
            move asValue                to ptyppar.ptyppar_code
            find eq ptyppar by index.1 // Ptyppar:Index.1:Company_Code+Branch_Code+Year_Year+Ptyppar_Code
            if (found eq 1) set value of (formsub7(current_object)) to ptyppar.ptyppar_descr
            Else            set value of (formsub7(current_object)) to ''
            set psptypparrecr to ptyppar.ptyppar_recr
        End_Procedure
        
        Procedure Prompt_Callback integer hPrompt
            Local String lsValue
            set Export_Column of hPrompt to 0
            Set Initial_Column of hPrompt to 0
        end_procedure
        
        Procedure Prompt
            String sVal
            Set Modal_State Of (sl012(Current_object)) to True
            Set psModule Of (sl012(Current_object)) to (psModule(Self))
            Forward Send Prompt
            Get Value Item 0 to sVal
            Send Find_Perigrafh sVal
        End_procedure
        
        procedure onkillfocus
            String sVal
            Get Value Item 0 to sVal
            Send Find_Perigrafh sVal
        end_procedure
        
        //AB-StoreEnd

    End_Object    // FormSub6

    Object FormSub7 is a FormSub
        Set Size to 13 93
        Set Location to 238 257
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                    
        //AB-StoreEnd

    End_Object    // FormSub7

    Object pseira_seira is a FormSub
        Set Size to 13 32
        Set Location to 237 383
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        Procedure Prompt
            String sVal srecr scode sptyppar
            get psptypparrecr to srecr
            set prompt_button_mode to pb_prompton
            set modal_state of (sl013(self)) to true
            Set Prompt_Object of (pseira_seira(self)) to (sl013(Current_object))
            set fragmaptyppar_recr of (sl013(self)) to srecr
            Forward Send Prompt
            get value item 0 to scode
            get value of (formsub6(self)) to sptyppar
            move syscurxr.company_code to pseira.company_code
            move syscurxr.branch_code  to pseira.branch_code
            move syscurxr.year_year    to pseira.year_year
            move sptyppar to pseira.ptyppar_code
            move scode to pseira.pseira_seira
            find eq pseira by index.1
            if (not(found)) send info_box 'Ä§Áßò®°´û ëú†®· !! É†¶®üÈ©´ú ' 'è¢û®¶≠¶®Âò'
            else begin
                if (pseira.pseira_autonum=1)set enabled_state of (pseira_no(self)) to false
                else                        set enabled_state of (pseira_no(self)) to true
            end
        End_procedure
        
        procedure entering
            set prompt_button_mode to pb_prompton
            Set Prompt_Object of (pseira_seira(self)) to (sl013(Current_object))
            Forward Send entering
        end_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // pseira_seira

    Object pseira_no is a FormSub
        Set Size to 13 52
        Set Location to 237 435
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure Key Integer iKey
            // ESCAPE_KEY => iKey=259
            If (iKey=259) Send Request_Cancel to V014
            Else Forward Send Key iKey
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // pseira_no

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
                    
                    
        //AB-StoreTopEnd

        Set Label to "ãú´ò©Æû£ò´†©£Ê™"
        Set Bitmap to "auto.bmp"
        Set Size to 20 21
        Set Location to 256 443
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                    
        Set TooltipValue to "ãú´ò©Æû£ò´†©£Ê™ ßò®ò©´ò´†°È§ ©ú ·¢¢ò ö†ò ©¨ö°ú°®†£‚§¶¨™ î¶®úÂ™"
        
        Procedure OnClick
            String  Wrecr msgstr lsdatefrom lsdateto lsclient lscons lsvdate lsparast sR
            String  sParticleRecr sseira lsoparast lsmodule Swtypkin sLogin sCurrentUserID
            integer libpo04 libpo05 listatus retval libpo02 findstatus istat ino iNoSysxet ianal
            integer iflag  iError_Object_ID ifrombtn iyesno
            Number  nPosothtaKin
        
            get psmodule to lsmodule
            get pifrombtn to ifrombtn
        
            Get fsLoginUserID to sCurrentUserID
        
            if (ifrombtn=0) begin
                set ordering of (dbgridsub1(self)) to -1
            end
        
            set fragmaclient_id of (sl041(self))    to ''
            if (pierr(self)=1) procedure_return
            set pifindstatus                        to 0
            move 0                                  to iflag
            move 0                                  to istat
            move 0                                  to listatus
        
            Get Checked_State Of chkSysxet          to iNoSysxet
            Get Checked_State Of chkanal            to ianal
            Get psmodule                            to lsmodule
        
            get value of formsub5  Item 0           to lsvdate
            get value of formsub6  Item 0           to lsparast
            get value of formsub3  Item 0           to lsclient
            get value of formsub4  Item 0           to lscons
            get value of from_date Item 0           to lsdatefrom
            get value of formsub1  Item 0           to lsoparast
        
            if (lsvdate = "" or lsclient = "") begin
                move 1 to istat
                     If (lsvdate ='') move "Ü û£ú®¶£û§Âò ´¶¨ ßò®ò©´ò´†°¶Á ß¶¨ üò õû£†¶¨®öûüúÂ\nõú§ ‚Æú† ©¨£ß¢û®‡üúÂ" to msgstr
                Else If (lsclient='') move "Éú§ úß†¢‚•ò´ú ©¨§ò¢¢ò©Ê£ú§¶" to msgstr
                Send Info_Box MsgStr 'ë≠·¢£ò 8000'
                set pibtnerr to 1
                Procedure_Return
            end
            if ((lsparast = "") and (ifrombtn=0)) begin
                move "é ´Áß¶™ ßò®ò©´ò´†°¶Á ö†ò ´¶ §‚¶ ßò®ò©´ò´†°Ê\nß¶¨ ü‚¢ú´ú §ò ≠´†·•ú´ú, õú§ ‚Æú† ©¨£ß¢û®‡üúÂ" to msgstr
                Send Info_Box MsgStr 'ë≠·¢£ò 8000'
                set pibtnerr to 1
                Procedure_Return
            end
            If ((lsoparast<>psPrevParast(Self)) and (ifrombtn=0)) Begin
                move "ÑÆú† ò¢¢·•ú† ¶ ´Áß¶™ ßò®ò©´ò´†°¶Á ß¶¨ úßú¢‚öú† ò®Æ†°·\nö†ò ´¶§ ßú®†¶®†©£Ê ´‡§ úöö®ò≠È§ (èò®ò©´ò´†°·),\n°ò† õú§ ©¨£≠‡§úÂ £ú ´ò ßò®ò©´ò´†°· ß¶¨ ú£≠ò§Âù¶§´ò†" to msgstr
                Send Info_Box MsgStr 'ë≠·¢£ò 5500'
                set pibtnerr to 1
                Procedure_Return
            End
            get value of (pseira_seira(self)) to sseira
            get value of (pseira_no(self))    to ino
        
            if (ifrombtn=0) begin
               clear pseira
               move syscurxr.company_code to pseira.company_code
               move syscurxr.branch_code  to pseira.branch_code
               move lsparast              to pseira.ptyppar_code
               move sseira                to pseira.pseira_seira
               find eq pseira by index.1
               if (not(found)) begin
                  move 1 to istat
                  set pibtnerr to 1
                  send Stop_box 'Ä§Áßò®°´û ©ú†®·' 'ë≠·¢£ò 8001'
                  Procedure_Return
               end
               else begin
                  if ((pseira.pseira_autonum<>1) and ((ino='') or (ino=0))) begin
                     move 1 to istat
                     send Stop_box 'Ü ©ú†®· úÂ§ò† Æ‡®Â™ ò¨´Ê£ò´û ò®Âü£û©û\n°ò† õú§ ß¢û°´®¶¢¶ö„©ò´ú ò®†ü£Ê ßò®ò©´ò´†°¶Á' 'ë≠·¢£ò 8002'
                     set pibtnerr to 1
                     Procedure_Return
                  end
               end
            end
            if ((sseira = '' ) and (ifrombtn=0)) begin
                move 1 to istat
                send Stop_box 'Éú§ ©¨£ß¢û®È©ò´ú ©ú†®·' 'ë≠·¢£ò 8004'
                set pibtnerr to 1
                Procedure_Return
            end
            move syscurxr.company_code to ptyppar.company_code
            move syscurxr.branch_code  to ptyppar.branch_code
            move syscurxr.year_year    to ptyppar.year_year
            move lsparast              to ptyppar.ptyppar_code
            find eq ptyppar by index.1
        
            If ((Not(Found))and (ifrombtn=0)) Begin
                Send Info_Box 'Éú§ ô®‚üû°ú úöö®ò≠„ ´Áß¶¨ ßò®ò©´ò´†°¶Á (Ptyppar)' 'ë≠·¢£ò 6900'
                set pibtnerr to 1
                Procedure_Return
            End
            if (ifrombtn=0) begin
                move ptyppar.ctypkin_code to swtypkin
                clear cflagkin
                move swtypkin              to cflagkin.ctypkin_code
                find ge cflagkin by index.1
                while (found eq 1 and cflagkin.ctypkin_code = swtypkin)
                    if cflagkin.cflagkin_flag eq '80' move 1 to iflag
                    find gt cflagkin by index.1
                loop
            end
            if (istat =  0) begin
              if (ifrombtn=0) get yesno_box "è®¶©¶Æ„. Ä®ÆÂùú† û õ†òõ†°ò©Âò ú§û£‚®‡©û™ ò®ÆúÂ‡§. åò ©¨§úÆÂ©‡ ;" to retval
        
              If ((RetVal =MBR_yes) or (ifrombtn=1)) begin
        
                    Send ChangeAllFileModes DF_Filemode_ReadOnly
        
                    Set_Attribute DF_File_Mode Of SysrecC.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of SysrecP.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of syscurxr.File_Number  to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Ptyppar.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Payresp.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Clients.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Cn.File_Number        to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Nomisma.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Item.File_Number      to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Witemx.File_Number    to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Particle.File_Number  to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Particll.File_Number  to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Pmoves.File_Number    to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of pmovesl.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Pmssxet.File_Number   to DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Psxetika.File_Number  to DF_Filemode_Default
        
                    Indicate Err False
        
                    if (ifrombtn=0) Begin
                        begin_transaction
                            Move  Error_Object_ID  to iError_Object_ID
                            Send Find to Particle_DD First_Record 2
                            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr to sR
                            If (sR<>psParticleRecr(Self)) Begin
                                Error 8050 'è®Êô¢û£ò ´¶ß¶ü‚´û©û™ ©´¶ ßò®ò©´ò´†°Ê'
                            End
                            Move 0 to nPosothtaKin
                            Clear Pmoves
                            Move sR to Pmoves.Partl_Recr
                            Find Gt Pmoves by index.3
                            While ((Found=1) And (Pmoves.Partl_Recr=sR))
                                Move Pmoves.Timol_Ypol  to Pmoves.Qty_Kinhshs
                                Add  Pmoves.Timol_Ypol  to nPosothtaKin
                                Move 1                  to Pmoves.Pms_Selected
                                Saverecord Pmoves
                                Find Gt Pmoves by index.3
                            Loop
                            Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Disctof to nPosothtaKin
                            Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Toposf  to sCurrentUserID
                            Send request_Save to Particle_DD
        
                            move (oDoarticle00(current_object)) to liBpo05
                            if  (piMustNOTConstrain(Self)=1) set pione of libpo05 to 1
                            else                             set pione of libpo05 to 0
                            set psseira  of libpo05 to sseira
                            set pino     of libpo05 to ino
                            set psmodule of libpo05 to (psmodule(self))
                            set piflag     of libpo05 to iflag
                            Set piNoSysxet Of liBpo05 to iNoSysxet
                            Set pianal     Of liBpo05 to ianal
                            send beg_uparticle00 to libpo05 lsclient lscons  lsparast lsvdate lsoparast
                        end_transaction
                        UnLock
                    End
                    Else Begin
                        Move  Error_Object_ID  to iError_Object_ID
                        move (oDoarticle00(current_object)) to liBpo05
                        if  (piMustNOTConstrain(Self)=1) set pione of libpo05 to 1
                        else                             set pione of libpo05 to 0
                        set psseira  of libpo05 to sseira
                        set pino     of libpo05 to ino
                        set psmodule of libpo05 to (psmodule(self))
                        set piflag     of libpo05 to iflag
                        Set piNoSysxet Of liBpo05 to iNoSysxet
                        Set pianal     Of liBpo05 to ianal
                        send beg_uparticle00 to libpo05 lsclient lscons  lsparast lsvdate lsoparast
                    End
                    Move iError_Object_ID to Error_Object_ID
                    Send ChangeAllFileModes DF_Filemode_Default
        
                  if (not(err)) begin
                        Move (fsLoginUserID()) to sLogin
                        Clear Particle
                        Move 1 to Particle.Partl_Selected
                        Find Gt Particle by index.11
                        While ((Found=1) And (Particle.Partl_Selected=1))
                            if (Trim(particle.partl_toposf)=Trim(slogin)) begin
                                if (ifrombtn=0) Reread Particle
                                Move (Particle.Partl_Disctof>0) to Particle.Partl_Selected
                                if (particle.partl_disctof =0) move ''      to particle.partl_toposf
                                else                           move slogin  to particle.partl_toposf
                                Saverecord Particle
                                if (ifrombtn=0) Unlock
                                Clear Particle
                                Move 1 to Particle.Partl_Selected
                            end
                            Find Gt Particle by index.11
                        Loop
                        if (ifrombtn=0) begin
                            move "é £ú´ò©Æû£ò´†©£Ê™ ¶¢¶°¢û®Èüû°ú." to msgstr
                            Send Info_Box MsgStr
                            set value of (formsub5(self)) to ''
                            set value of (formsub6(self)) to ''
                            set value of (formsub7(self)) to ''
                            set value of (pseira_seira(self)) to ''
                            set value of (pseira_no(self)) to ''
                            Get Precr Of libpo05          to sParticleRecr
                            Set psFindParticleRecr   Of (Particle(Self)) to (Trim(sParticleRecr))
                            set psmodule             of (Particle(Self)) to (psmodule(self))
                            send activate_particle
                            send Request_Cancel
                            send show_cn            to (particle(self))
                        end
                   end
                   Else Begin
                        Send Reset_All_Files_Except_System
                        Send Rebuild_Constraints    to Particle_DD
                        Send Rebuild_Constraints    to PMoves_DD
                        Send Beginning_Of_Data      to dbGridSub1   True
                        Send Beginning_Of_Data      to Pmoves_      True
                        Indicate Err False
                        set pisfalma to 1
                   End
               end
               Else Begin
                    Send Info_Box 'Ü É†òõ†°ò©Âò ò°¨®Èüû°ú òß¶ ´¶§ Æ®„©´û' 'Ñ§û£‚®‡©û'
                    Procedure_Return
               End
            end
            set pifrombtn to 0
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "ëú†®·"
        Set Location to 239 352
        Set Size to 10 23
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"

        //AB-StoreStart
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
        //AB-StoreEnd

    End_Object    // TextBoxSub17

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "å¶"
        Set Location to 239 418
        Set Size to 10 10
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object chkSysxet is a CheckBoxSub
        Set Label to "Äß¢„ ò§´†ö®ò≠„ (ï‡®Â™ §ò ©¨©Æú´†©´¶Á§ ´ò ßò®ò©´ò´†°· £ú´ò•Á ´¶¨™)"
        Set Size to 10 263
        Set Location to 254 5
    End_Object    // chkSysxet

    Object chkanal is a CheckBoxSub
        Set Label to "Ä§ò¢¨´†°Ê™ £ú´ò©Æû£ò´†©£Ê™ ú†õÈ§"
        Set Size to 10 150
        Set Location to 265 5

        //AB-StoreStart
        set enabled_state to false
        
        
        //AB-StoreEnd

    End_Object    // chkanal

    Object ButtonSub4 is a ButtonSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Set Bitmap to "gaps.bmp"
        Set Size to 22 24
        Set Location to 33 481
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set TooltipValue to "ãò®°·®†©£ò Ê¢‡§ ´‡§ ßò®ò©´ò´†°È§"
        
        Procedure OnClick
            Date dFrom dTo
            string sval scn spar msgstr sCurrentUserID sOldUserID
            integer iselected iRec
            Number nPosothtaKin
        
            Get fsLoginUserID to sCurrentUserID
        
            Get Value Of From_Date  Item 0  to dFrom
            Get Value of (formsub1(self))   to spar
            Get Value of (formsub3(self))   to sVal
            Get Value of (formsub4(self))   to scn
            if (sval = "") begin
                move "Éú§ úß†¢‚•ò´ú ©¨§ò¢¢ò©Ê£ú§¶" to msgstr
                Send Info_Box MsgStr 'ë≠·¢£ò 8000'
                Procedure_Return
            end
        
            Clear Particle
            Move syscurxr.company_code  to Particle.Company_Code
            Move syscurxr.branch_code   to Particle.Branch_Code
            Move syscurxr.year_year     to Particle.year_year
            Move (psModule(Self))       to Particle.Partl_Module
            Move 0                      to particle.partl_timol
            Move spar                   to particle.ptyppar_code
            Move dFrom                  to Particle.Partl_Hmnia
            Move sVal                   to Particle.Client_ID
            Move scn                    to Particle.CN_Code
            Find Gt Particle By Index.8
            //While ((Found=1) And (Particle.Company_Code=syscurxr.company_code) And (syscurxr.branch_code=Particle.Branch_Code) And (syscurxr.year_year=Particle.year_year) And ;
            //        ((psModule(Self))=Particle.Partl_Module) And (particle.partl_timol=0) And (spar=particle.ptyppar_code) And (Particle.Partl_Hmnia<=dTo))
            While ((Found=1) And (Particle.Company_Code=syscurxr.company_code) And (syscurxr.branch_code=Particle.Branch_Code) And (syscurxr.year_year=Particle.year_year) And ;
                    ((psModule(Self))=Particle.Partl_Module) And (particle.partl_timol=0) And (spar=particle.ptyppar_code) And (Particle.Partl_Hmnia=dFrom) And ;
                    (sVal=Particle.Client_ID) And (scn=Particle.CN_Code))
        //        If ((sval<>'') And (Particle.Client_ID<>sVal)) Goto Next100
        //        If ((scn <>'') And (Particle.Cn_Code  <>scn )) Goto Next100
                If (Particle.Partl_Ekleise<>'1')               Goto Next100
        
                Reread Particle
                Move 0              to nPosothtaKin
                Move 1              to Particle.Partl_Selected
                Clear Pmoves
                Move Particle.Partl_Recr to Pmoves.Partl_Recr
                Find Gt Pmoves by index.3
                While ((Found=1) And (Pmoves.Partl_Recr=Particle.Partl_Recr))
                    Move Pmoves.Timol_Ypol  to Pmoves.Qty_Kinhshs
                    Add  Pmoves.Timol_Ypol  to nPosothtaKin
                    Move 1                  to Pmoves.Pms_Selected
                    Saverecord Pmoves
                    Find Gt Pmoves by index.3
                Loop
                Move sCurrentUserID to Particle.Partl_Toposf
                Move nPosothtaKin   to Particle.Partl_Disctof
                Saverecord Particle
                Unlock
        
                Next100:
                Find Gt Particle By Index.8
            Loop
        
            Send Rebuild_Constraints        to Particle_DD
            send Beginning_Of_Data          to dbGridSub1 True
            Set psPrevParast                to spar
        End_Procedure // OnClick
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4

    Object ButtonSub5 is a ButtonSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Set Label to "ButtonSub5"
        Set Bitmap to "magic.bmp"
        Set Size to 20 21
        Set Location to 257 393
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Procedure OnClick
           String sStr
           Date dFrom dTo dcurr
           string sval scn spar sergo sclient soergo soclient msgstr sCurrRecr
           integer retval ibtnerr iyesno iError_Object_ID
        
           set ordering of (dbgridsub1(self)) to index.8
           Get Value Of From_Date  Item 0  to dFrom
           Get Value Of formsub5   Item 0  to dcurr
           set pisfalma to 0
           if (pierr(self)=1) procedure_return
           if (dcurr<>dfrom)  begin
               get yesno_box "è®¶©¶Æ„. Ü£/§Âò £ú´ò©Æû£ò´†©£¶Á <> òßÊ û£/§Âú™ ßò®ò©´ò´†°È§. åò ©¨§úÆÂ©‡ ;" to iyesno
               If (iyesno =MBR_no) procedure_return
           end
           get yesno_box "è®¶©¶Æ„. Ä®ÆÂùú† û õ†òõ†°ò©Âò £òù†°¶Á £ú´ò©Æû£ò´†©£¶Á. åò ©¨§úÆÂ©‡ ;" to retval
           indicate err false
        
            If (RetVal =MBR_yes) begin
        
                set pibtnerr to 0
        
                step1:
                set value of (formsub3(self)) to ''
                set Value of (formsub4(self)) to ''
                Get Value Of From_Date  Item 0  to dFrom
                Get Value of (formsub1(self))   to spar
                Get Value of (formsub3(self))   to sVal
                Get Value of (formsub4(self))   to scn
                set pspar                       to spar
                set pscn                        to scn
                set psclient                    to sval
                Set psDateFrom                  to dFrom
        
                Send Rebuild_Constraints        to Particle_DD
                send find to particle_dd first_record 8
                if (not(found)) goto step2
                Get field_Current_Value Of Particle_DD Field Particle.Partl_Recr to sCurrRecr
                If (psPrevRecr(Self)=sCurrRecr) Begin
                    if (pisfalma(self)=0) begin
                        Clear Particle
                        Move (psPrevRecr(Self)) to Particle.Partl_Recr
                        Find Eq Particle By Index.2
                        If (Found) Begin
                            Reread Particle
                            Move 1 to Particle.Partl_Timol
                            Saverecord Particle
                            Unlock
                        End
                        Move '' to sStr
                        Append sStr 'Ü õ†òõ†°ò©Âò õ†ò°Êß´ú´ò† ¢Êö¶ ©≠·¢£ò´¶™ ©´¶ ©Á©´û£ò ©ò™.'
                        Append sStr '\nÉû£†¶¨®ö„üû°ò§ ß¶¢¢òß¢· ´†£¶¢Êö†ò. ãû§ ß®¶Æ‡®„©ú´ú ßò®ò°·´‡'
                        Append sStr '\n°ò† úß†°¶†§‡§„©´ú ÄãÑëóë £ú ´û§ PROTEM.'
        
                        Send Stop_Box sStr 'ë≠·¢£ò 666 - âò¢‚©´ú ´û§ PROTEM'
                        System
                    end
                    else begin
                        set pisfalma to 0
                        set psprevrecr to ''
                        procedure_return
                    end
                End
                Else Set psPrevRecr to sCurrRecr
        
                Get field_Current_Value Of Particle_DD Field Particle.client_id to sclient
                Get field_Current_Value Of Particle_DD Field Particle.cn_code   to sergo
                set value of (formsub3(self))  to sclient
                set value of (formsub4(self))  to sergo
                Set psPrevParast                to spar
        
                Indicate Err False
                Begin_transaction
                    Move  Error_Object_ID  to iError_Object_ID
                    If (Sysfile.Enhm_PmsSxet=1) send onclick to buttonsub4
                    set pifrombtn to 1
                    set piola of (odoarticle00(self)) to 1
                    send onclick to buttonsub2
                End_Transaction
                Unlock
                ///gts 28-12-05 Ä§ ö¨®Â©ú† £ú error òßÊ ´¶ ô„£ò 2 ´ò ò®ÆúÂò úÂ§ò†
                // ¢¶°ò®†©£‚§ò °ò† õú§ £ß¶®úÂ™ §ò °·§ú†™ ´Âß¶´ò
                Move iError_Object_ID to Error_Object_ID
                Send ChangeAllFileModes DF_Filemode_Default
                if (err) begin
                    Send Reset_All_Files_Except_System
                    Send Rebuild_Constraints    to Particle_DD
                    Send Rebuild_Constraints    to PMoves_DD
                    Send Beginning_Of_Data      to dbGridSub1   True
                    Send Beginning_Of_Data      to Pmoves_      True
                    set pisfalma to 1
                end
                // ´‚¢¶™ õ†Ê®ü‡©û™/////////////////////////////////////
                [err] goto step2
                if (pibtnerr(self)=1) goto step2
                else Begin
                    goto step1
                End
        
                step2:
                if (pibtnerr(self)=1) set pibtnerr to 0
                else send info_box 'É†òõ†°ò©Âò £òù†°¶Á £ú´ò©Æû£ò´†©£¶Á ´ú¢úÂ‡©ú !!' 'è¢û®¶≠¶®Âò'
           end
           else send info_box 'Ü õ†òõ†°ò©Âò £òù†°¶Á £ú´ò©Æû£ò´†©£¶Á ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û' 'è¢û®¶≠¶®Âò'
           Send Rebuild_Constraints        to Particle_DD
           send Beginning_Of_Data          to dbGridSub1 True
           Set psPrevRecr to ''
           set piola of (odoarticle00(self)) to 0
           set value of (formsub3(self)) to ''
           set value of (formsub4(self)) to ''
        
        End_Procedure // OnClick
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub5


    //AB-StoreStart
                    
    Set Verify_Data_Loss_Msg TO Get_No_Confirmation
    Set Verify_Exit_Msg      TO Get_No_confirmation
    
    On_Key KCancel Send Request_Cancel
    
    Procedure Activate_View Returns Integer
         Integer Rval ibpoid
         Date ddate sdate
         String sModule  sDescr spar sper
    
         If (Trim(psModule(Self))='') Begin
            Get psMenuModule Of Main_Menu   to sModule
            Set psModule                    to sModule
         End
         Else Move (psModule(Self))         to sModule
    
         Get gsfCode_Mast "MODULE" sModule  to sDescr
         Move (Trim(sDescr))                to sDescr
    
        // â‡õ†°ò™ ß¶¨ ò≠¶®ò ´¶ constrain ´‡§ ©´¶†Æú†‡§ ´¶¨ view ¶ß‡™ ßò®ò©´ò´†°·
        // û °†§„©ú†™ ß¶¨ èêÑèÑà §ò úÂ§ò† constrain ò§ò¢¶öò £ú ´¶ °Á°¢‡£ò òß¶
        // ´¶ ¶ß¶†¶ °ò¢úÂ´ò† ´¶ view. è.ï. ò§ °¢ûüúÂ òß¶ è‡¢„©ú†™/èú¢·´ú™ §ò £û§
        // ≠òÂ§¶§´ò† ©´ò ßò®ò©´ò´†°· ´ò ctypkin Äö¶®È§ °¢ß....
    
        set label of v014 to "ãú´ò©Æû£ò´†©£Ê™ èò®ò©´ò´†°È§ èÈ¢û©û™"
    
        sysdate4 ddate
        set value of (from_date(self)) to ddate
        set value of (formsub5(self))  to ddate
    
        Set Value Of FormSub1 Item 0 to '099'
        if (psparast(self) <> '')     Set Value Of FormSub1 Item 0 to (psparast(self))
    
        get value of formsub1 item 0     to spar
        Move (Fsptyppar(self,spar))      to sper
        set value of (formsub2(self)) to sper
        set pspar to spar
    
        if (psparast(self) <> '') Set Value Of FormSub3 Item 0 to (psClientID(Self))
        else Set Value Of FormSub3 Item 0 to ''
    
        set value of (formsub4(self))   to (Trim(pscn(Self)))
    
        Set psPrevParast to spar
    
        If (piMustNOTConstrain(Self)=1) Begin
            Get Field_Current_Value Of particle_DD Field particle.partl_hmnia to sdate
            set value of (from_date(self))  to sdate
            Set Enabled_State Of FormSub1   to False
            Set Enabled_State Of FormSub3   to False
            Set Enabled_State Of FormSub4   to False
            Set Enabled_State Of From_Date  to False
            Set Enabled_State Of ButtonSub3 to False
            Set Enabled_State Of ButtonSub4 to False
            Set Ordering Of Particle_DD to 2
            Send Rebuild_Constraints        to Particle_DD
            Send Beginning_Of_Data          to dbGridSub1 True
        end
        Else Begin
            Set Ordering Of Particle_DD to 8
            Set Enabled_State Of FormSub1   to True
            Set Enabled_State Of FormSub3   to True
            Set Enabled_State Of FormSub4   to True
            Set Enabled_State Of From_Date  to True
            Set Enabled_State Of ButtonSub3 to True
            Set Enabled_State Of ButtonSub4 to True
            Send onclick to (ButtonSub3(Self))
        End
    //    reread
    //    unlock
    //    send Request_Assign of Sysfile_DD Sysfile.File_Number
    
        send set_the_decimal_points
    
        Forward Get MSG_Activate_View to Rval
            Reread Sysfile
            Unlock
        if (sysfile.analytika_dap=1) set checked_state Of chkanal to true
        else                         set checked_state Of chkanal to false
    
        Set psPrevRecr to ''
        Send Clear_The_User
    
        procedure_return rval
    End_Procedure
    
    Procedure Set_The_Decimal_Points
        Integer iGridID iAmount
        String  sCode sOld
        Get Field_Current_Value Of Nomisma_DD Field Nomisma.Nomisma_Code to sCode
        Get psNomismaCode to sOld
        Move (Trim(sCode))  to sCode
        Move (Trim(sOld))   to sOld
    
        If ((sCode<>sOld) and (sold<>'')) Begin
            move sold to sCode
        end
        Else move syscurxr.c_code0 to scode
    
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma by Index.1
            Set Dynamic_Update_State Of Pmoves_ to False
            Set Visible_State Of Pmoves_ to False
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´¶ Grid Pmoves
            Set Points Of Pmoves_  Item  3 to 1                 // è¶©Ê´û´ò
            Set Points Of Pmoves_   Item  5 to Nomisma.Dekadika  // í†£„ £¶§·õ¶™
            Set Points Of Pmoves_   Item  6 to Nomisma.Dekadika    // è¶©¶©´Ê Ñ°ß´‡©û™
            Set Points Of Pmoves_   Item  7 to 2  // è¶©Ê Ñ°ß´‡©û™
            Set Points Of Pmoves_   Item  8 to Nomisma.Dekadika  // åú´ è¶©Ê (ß®¶ îßò)
            Set Points Of Pmoves_   Item  9 to Nomisma.Dekadika  // è¶©¶©´Ê îèÄ
            Set Points Of Pmoves_   Item 10 to 1  // è¶©Ê îèÄ
            Set Points Of Pmoves_   Item 11 to 1
            Set Numeric_Mask  Of Pmoves_ Item 5 to 14 Nomisma.Dekadika " ,*"
            Set Numeric_Mask  Of Pmoves_ Item 6 to 14 Nomisma.Dekadika " ,*"
            Set Numeric_Mask  Of Pmoves_ Item 7 to 14 Nomisma.Dekadika " ,*"
            Set Numeric_Mask  Of Pmoves_ Item 8 to 14 Nomisma.Dekadika " ,*"
            Set Numeric_Mask  Of Pmoves_ Item 9 to 14 Nomisma.Dekadika " ,*"
            //Set Numeric_Mask  Of Pmoves_ Item 11 to 14 Nomisma.Dekadika " ,*"
            Set Visible_State         Of Pmoves_ to True
            Set Dynamic_Update_State  Of Pmoves_ to True
            //Send Display
    
    End_procedure
    
    Procedure Clear_The_User
        String sUserID
        Get fsLoginUserID to sUserID
        Clear Pmoves
        Move 1 to Pmoves.Pms_Selected
        Find Gt Pmoves by Index.10
        While ((Found=1) And (Pmoves.Pms_Selected=1))
            Relate Pmoves
            If ((Particle.Partl_ToposF=sUserID) Or ;
                (Trim(Particle.Partl_ToposF)='')) Begin
    
                If (Sysfile.Enhm_PmsSxet=1) Begin
                    Lock
                    Sub Pmoves.Qty_Kinhshs From Particle.Partl_Disctof
                    Move (Particle.Partl_Disctof>0) to Particle.Partl_Selected
                    If (Particle.Partl_Disctof<=0) Begin
                        Move '' to Particle.Partl_Toposf
                        Move  0 to Particle.Partl_Selected
                        Move  0 to Particle.Partl_Disctof
                    End
                    Saverecord Particle
                    Move 0 to Pmoves.Qty_Kinhshs
                    Move 0 to Pmoves.pms_Selected
                    Saverecord Pmoves
                    Unlock
                    Clear Pmoves
                    Move 1 to Pmoves.Pms_Selected
                End
            End
            Find Gt Pmoves by Index.10
        Loop
    End_Procedure
    
    Procedure Deactivate Integer iMode
        Integer rVal
        Send Clear_The_User
        Set piMustNOTConstrain  Of v014         to 0
        Set Ordering            Of Particle_DD  to -1
        set psparast                            to ''
        set value of (formsub4(self))           to ''
        set pscn                                to ''
        set psmodule                            to ''
        Forward Get Msg_Deactivate iMode to rVal
        Procedure_Return rVal
    End_Procedure
    
    procedure request_cancel
        Set piMustNOTConstrain  Of v014         to 0
        Set Ordering            Of Particle_DD  to -1
        set psparast                            to ''
        set value of (formsub4(self))           to ''
        set pscn                                to ''
        set psmodule                            to ''
        Send Clear_The_User
        Forward send request_cancel
    end_procedure
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V014ok140206


//AB-StoreStart
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
//AB-StoreEnd

//AB/ End_Object    // prj
