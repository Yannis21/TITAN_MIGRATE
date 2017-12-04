//AB/ Project Gmoves (DoUpHm.pkg) v058
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Gmoves (DoUpHm.pkg) v058"
//AB/         Set ProjectFileName to "Gmoves.VW"

// Project Object Structure
//   Gmove_View is a dbViewSubS
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Gplan_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Syscurgl_DD is a DataDictionary
//     Garticl_DD is a DataDictionary
//     Gmove_DD is a DataDictionary
//     Gmoved_DD is a DataDictionary
//     dbgrpArticle is a dbGroupSub
//       Gtypkin_Gtypkin_Code is a dbFormSub
//       Gtypkin_Gtypkin_Descr is a dbFormSub
//       Garticl_Garticl_Hmnia is a dbFormSub
//       Garticl_Garticl_No is a dbFormSub
//       Garticl_Garticl_Aitiol is a dbFormSub
//       Garticl_Garticl_Aa is a dbFormSub
//       Garticl_Garticl_C_Code2 is a dbComboFormSub
//       Garticl_Garticl_Rate0 is a dbFormSub
//       Garticl_Garticl_Rate00 is a dbFormSub
//       Garticl_Garticl_Rater is a dbFormSub
//       Garticl_Garticl_Recr is a dbFormSub
//       btnEisagogh is a ButtonSub
//       otxtDate is a TextBoxSub
//       otxtGarticlNo is a TextBoxSub
//       otxtTypkinCode is a TextBoxSub
//       otxtDescr is a TextBoxSub
//       otxtGarticlAA is a TextBoxSub
//       otxtNomisma is a TextBoxSub
//       otxtRate is a TextBoxSub
//       otxtProtypoArthro is a TextBoxSub
//       frmProtypoArthroDescr is a FormSub
//       TextBoxSub1 is a TextBoxSub
//       frmProtypoArthro is a FormSub
//       txtDisplay is a ButtonSub
//     Gplan_ is a dbGridSub
//     Gmoved_ is a dbGridSub
//     dbgrpFooter is a dbGroupSub
//       Myf_Axia_dbForm is a dbFormSub
//       Myf_Code_dbForm is a dbFormSub
//       Garticl_Garticl_Syp2 is a dbFormSub
//       otxtYpol is a TextBoxSub
//     oPrint_bn is a ButtonSub
//     oGplan_bn is a ButtonSub
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       otxtCompany is a TextBoxSub
//       otxtBranch is a TextBoxSub
//       otxtYear is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object Branch_Branch_Name
Register_Object btnEisagogh
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Company_Company_Name
Register_Object Country_DD
Register_Object dbGrpYear
Register_Object dbgrpArticle
Register_Object dbgrpFooter
Register_Object frmProtypoArthro
Register_Object frmProtypoArthroDescr
Register_Object Garticl_DD
Register_Object Garticl_Garticl_Aa
Register_Object Garticl_Garticl_Aitiol
Register_Object Garticl_Garticl_C_Code2
Register_Object Garticl_Garticl_Hmnia
Register_Object Garticl_Garticl_No
Register_Object Garticl_Garticl_Rate0
Register_Object Garticl_Garticl_Rate00
Register_Object Garticl_Garticl_Rater
Register_Object Garticl_Garticl_Recr
Register_Object Garticl_Garticl_Syp2
Register_Object Gmove_DD
Register_Object Gmove_View
Register_Object Gmoved_
Register_Object Gmoved_DD
Register_Object Gplan_
Register_Object Gplan_DD
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object Gtypkin_Gtypkin_Code
Register_Object Gtypkin_Gtypkin_Descr
Register_Object Myf_Axia_dbForm
Register_Object Myf_Code_dbForm
Register_Object oGplan_bn
Register_Object oPrint_bn
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtDate
Register_Object otxtDescr
Register_Object otxtGarticlAA
Register_Object otxtGarticlNo
Register_Object otxtNomisma
Register_Object otxtProtypoArthro
Register_Object otxtRate
Register_Object otxtTypkinCode
Register_Object otxtYear
Register_Object otxtYpol
Register_Object Payresp_DD
Register_Object Syscurgl_DD
Register_Object TextBoxSub1
Register_Object Towns_DD
Register_Object txtDisplay
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    Use     Sysfile.DD
    Use     Gplan.vw
    Use     R058.rv
    Use     Sl163.sl
    Open    Gparticl
    Open    Gvath
    Open    Gvatd
    Open    Gflagkin
    Use     bpProtyp.dg
    Use     DoAkyr.dg
    
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use dbCmbfrm.Sub
    Use Button.Sub
    Use Txtbox.Sub
    Use Form.Sub
    Use dbGrid.Sub

    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
    Use GPLAN.DD
    Use GTHHMGIO.DD
    Use GTYPKIN.DD
    Use SysCurGL.dd
    Use GARTICL.DD
    Use GMOVE.DD
    Use GMOVED.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Gmove_View FOR Gmove_View

    Object Gmove_View is a dbViewSubS

        //AB-StoreTopStart
        Register_Object R058
        Register_Procedure PrintCurrArthro number aiSelectedArthro
        
        property string     psrecr                public ''
        Property Integer    piProtypoArthro       Public 0
        Property String     psPreviousCurr        Public ''
        
        Function Check_Valid_Article Returns Integer
             Integer liStatusE liRval
             If (Current_Record(Garticl_DD(Self))) Get field_current_value of (Garticl_dd(self)) Field Garticl.Garticl_StatusE   to liStatusE
             If (Sysfile.Check_Article = "1") Move (liStatusE < 0) to liRval
             Else Move 0 to lirVal
             Function_Return lirVal
        End_Function // Check_Valid_Article
        
        Function CheckConfirm_Valid_Article Returns Integer
             Integer liRval
             Get Check_Valid_Article to lirVal
             If (liRval) Send Stop_Box "í¶ ·®ü®¶ úÂ§ò† û£†´ú¢‚™." "è®¶©¶Æ„!"
             Function_Return lirVal
        End_Function // CheckConfirm_Valid_Article
        
        Function Check_Val_Lines Returns Integer
             Integer Rval liGarticlDD
             Number  lnGmove_Lines lnGarticl_AA lnRec
             Move Garticl_DD to liGarticlDD
             Get Field_Current_Value of liGarticlDD Field Garticl.Garticl_Mlines   to lnGmove_Lines
             Get Field_Current_Value of liGarticlDD Field Garticl.Garticl_AA       to lnGarticl_AA
             Get Current_Record of liGarticlDD to lnRec
             If (Not(;
                 (lnGmove_Lines = 0) and;
                 (lnGarticl_AA   = 0) and;
                 (lnRec <> 0);
                )) Move 1 to Rval
             Function_Return Rval
        End_Function // check_val_lines
        
        Procedure DoRunTheForm for Baseclass String asFile
            string sRunPath lsWspcName
            Move (WorkspaceName(ProgramWorkspace(Self))) to lsWspcName
            get_profile_string ("workspaces\"+lsWspcName) "programpath" to sRunPath
            append sRunPath "\" asFile
            send DoRunApplication sRunPath
        End_Procedure // DoRunTheForm
        
        //AB-StoreTopEnd

        Set Label to "v058:Ü£ú®„©†ú™ â†§„©ú†™"
        Set Size to 296 528
        Set Location to 1 0

        //AB-DDOStart

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

        Object Gplan_DD is a Gplan_DataDictionary

            //AB-StoreStart
            Set ordering to 4 //company_code     +
                              //branch_code      +
                              //year_year        +
                              //gplan_yn_last    +
                              //gplan_code       +
                              //recnum
            
            Procedure OnConstrain
                Forward Send OnConstrain
                Constrain Gplan.Gplan_Yn_Last Eq 1
            End_Procedure //onconstrain
            
            Set Foreign_Field_Options   Field Gplan.Gplan_Code to DD_AutoFind_GE
            Set Field_Exit_msg          Field Gplan.Gplan_Code to None
            
            //AB-StoreEnd

        End_Object    // Gplan_DD

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary

            //AB-StoreStart
            Set ordering to 1
            
            
            //AB-StoreEnd

        End_Object    // Gthhmgio_DD

        Object Gtypkin_DD is a Gtypkin_DataDictionary
            Set DDO_Server to (Gthhmgio_DD(self))

            //AB-StoreStart
                                                                                                                                                                                                            
            Set ordering to 1
            
            
            //AB-StoreEnd

        End_Object    // Gtypkin_DD

        Object Syscurgl_DD is a SysCurGL_DataDictionary
        End_Object    // Syscurgl_DD

        Object Garticl_DD is a Garticl_DataDictionary
            Set DDO_Server to (Gtypkin_DD(self))

            //AB-StoreStart
            Set ordering to 1
            
            Procedure Clear_Main_File
                Forward Send Clear_Main_File
                Set Value           Of (frmProtypoArthroDescr(dbgrpArticle(Gmove_View(Self)))) Item 0   to ''
                Set Value           Of (frmProtypoArthro     (dbgrpArticle(Gmove_View(Self)))) Item 0   to ''
                Set Enabled_State   Of (btnEisagogh          (dbgrpArticle(Gmove_View(Self))))          to true
            End_Procedure
            
            Procedure Delete_Main_File
                String  sGarticleRecr
                Integer iID ibpoid
                Move (txtDisplay(dbgrpArticle(Self))) to iID
                Forward Send Delete_Main_File
                If (Trim(Garticl.Apo_Gbridge)=1) Begin
                    Clear GbridgeH
                    Move Garticl.Garticl_Recr to GbridgeH.Garticl_Recr
                    Find GE GbridgeH By Index.6
                    While ((Found=1) And (GbridgeH.Garticl_Recr=Garticl.Garticl_Recr))
                        Set Label Of iID to (String(GbridgeH.Recnum))
            
            //            Move  0 to GbridgeH.GbridgeH_Flag
            //            Move '' to GbridgeH.Garticl_Recr
            //            Saverecord GbridgeH
            
                        Move (Doakyr(Self))         to ibpoid
                        Set piRecnum   of iBPOID    to GbridgeH.Recnum
                        Send DoProcess              to iBPOID
            
                        Clear GbridgeH
                        Move Garticl.Garticl_Recr to GbridgeH.Garticl_Recr
                        Find GE GbridgeH By Index.6
                    Loop
                    Set Label Of iID to ''
                End
            End_Procedure   // Delete_Main_File
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Garticl_DD

        Object Gmove_DD is a Gmove_DataDictionary
            Set DDO_Server to (Garticl_DD(self))
            Set DDO_Server to (Gplan_DD(self))
            Set Constrain_File to Garticl.File_Number

            //AB-StoreStart
            Set ordering to 3
            
            
            
            
            //AB-StoreEnd

        End_Object    // Gmove_DD

        Object Gmoved_DD is a Gmoved_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Gmove_DD(self))
            Set Constrain_File to Gmove.File_Number

            //AB-StoreStart
            Function Validate_Save  Returns Integer
                Integer iReturnVal iflag
                Forward Get Validate_Save To iReturnVal
                If (Not(iReturnVal)) Begin
                   clear gflagkin
                   move syscurgl.company_code  to gflagkin.company_code
                   move syscurgl.branch_code   to gflagkin.branch_code
                   move syscurgl.year_year     to gflagkin.year_year
                   move gtypkin.gtypkin_code   to gflagkin.gtypkin_code
                   find ge cflagkin by index.1
                   while ((found eq 1 and gflagkin.company_code = syscurgl.company_code) and;
                          (gflagkin.branch_code = syscurgl.branch_code) and;
                          (gflagkin.year_year = syscurgl.year_year)     and;
                          (gflagkin.gtypkin_code = gtypkin.gtypkin_code))
                                if (gflagkin.gflagkin_flag=10) move 1 to iflag
                          else  if (gflagkin.gflagkin_flag=11) move 1 to iflag
                          else  if (gflagkin.gflagkin_flag=6)  move 1 to iflag
                          else  if (gflagkin.gflagkin_flag=7)  move 1 to iflag
                          else  if (gflagkin.gflagkin_flag=8)  move 2 to iflag
                          else  if (gflagkin.gflagkin_flag=9)  move 2 to iflag
                          else  if (gflagkin.gflagkin_flag=12) move 2 to iflag
                          else  if (gflagkin.gflagkin_flag=13) move 2 to iflag
                          else                                 move 0 to iflag
                          if ((iflag=1) or (iflag=2)) goto todo
                          find gt gflagkin by index.1
                   loop
                todo:
                        if    (iflag=1) move 1  to gmoved.gmoved_para
                   else if    (iflag=2) move -1 to gmoved.gmoved_para
                   else                 move 0  to gmoved.gmoved_para
                end
                Function_Return iReturnVal
            End_Function   //validate_save
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Gmoved_DD

        Set Main_DD to (Garticl_DD(self))
        Set Server to (Garticl_DD(self))

        //AB-DDOEnd

        Object dbgrpArticle is a dbGroupSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                        
            Procedure Init_Garticl
                String sRecr
                Date   dDate
                Get Field_Current_Value of Garticl_DD Field Garticl.Garticl_Recr  to sRecr
                Get Field_Current_Value of Garticl_DD Field Garticl.Garticl_Hmnia to dDate
                Clear Garticl
                Move SyscurGL.Company_Code to Garticl.Company_Code
                Move SyscurGL.Branch_Code  to Garticl.Branch_Code
                Move SyscurGL.Year_Year    to Garticl.Year_Year
                Move dDate                 to Garticl.Garticl_Hmnia
                Find ge Garticl by Index.5
            End_Procedure // Init_Garticl
            
            
            //AB-StoreTopEnd

            Set Size to 73 514
            Set Location to 26 5
            Object Gtypkin_Gtypkin_Code is a dbFormSub
                Entry_Item Gtypkin.Gtypkin_code
                Set Size to 13 54
                Set Location to 8 45
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // Gtypkin_Gtypkin_Code

            Object Gtypkin_Gtypkin_Descr is a dbFormSub
                Entry_Item Gtypkin.Gtypkin_descr
                Set Size to 13 162
                Set Location to 8 103
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Gtypkin_Gtypkin_Descr

            Object Garticl_Garticl_Hmnia is a dbFormSub
                Entry_Item Garticl.Garticl_hmnia
                Set Size to 13 73
                Set Location to 8 297
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                
                Procedure Refresh Integer iMode
                    Integer iRec
                    Forward Send Refresh iMode
                
                    Move Garticl.Recnum to irec
                    If (iRec) Begin
                        Set Enabled_State   Of frmProtypoArthro                 to False
                        Set Enabled_State   Of btnEisagogh                      to False
                        Set Value           Of frmProtypoArthroDescr  Item 0    to ''
                        Set Value           Of frmProtypoArthro       Item 0    to ''
                    End
                    Else Begin
                        Set Enabled_State   Of frmProtypoArthro                 to True
                        Set Enabled_State   Of btnEisagogh                      to True
                        Set Value           Of frmProtypoArthroDescr  Item 0    to ''
                        Set Value           Of frmProtypoArthro       Item 0    to ''
                    End
                
                    Send CurrRefresh
                    //Set View_Exit_State to (Check_Valid_Article(Self))
                End_Procedure // Refresh
                
                Procedure Prompt_CallBack Integer hSellist
                    Integer liSrvr liRec
                    String  lsGtypkinRecr
                
                    Set Auto_Index_State of hSellist to False
                    Get Server to lisrvr
                    Get Current_Record of liSrvr to liRec
                    // Initialize the buffers
                    Set Load_buffer_MSG of hSellist to MSG_Init_Garticl
                    If (Not(liRec)) Begin
                        Get Field_Current_Value of GtypKin_DD Field Gtypkin.Gtypkin_Recr to lsGtypkinRecr
                        Set psFragmaGtypkinRecr of hSellist  To lsGtypkinRecr
                        If (lsGtypkinRecr <> '') Set Ordering of (Server(Parent(hSellist))) to 3
                        Else Set Ordering of (Server(Parent(hSellist))) to 5
                    End
                    Else Set Ordering of (Server(Parent(hSellist))) to 5
                
                End_Procedure // Prompt_CallBack
                
                Procedure Find_Ge
                    String sRecr
                    Get Field_Current_Value of Gtypkin_DD Field Gtypkin.Gtypkin_Recr to sRecr
                    If (sRecr<>'') Set Ordering of Garticl_DD to 3
                    Else Set Ordering of Garticl_DD to 5
                    Forward Send Find_Ge
                    Set Ordering of Garticl_DD to 1
                End_Procedure // Find_Ge
                
                Procedure Find_Next
                    String sRecr
                    Get Field_Current_Value of Gtypkin_DD Field Gtypkin.Gtypkin_Recr to srecr
                    If (sRecr<>'') Set Ordering of Garticl_DD to 3
                    Else Set Ordering of Garticl_DD to 5
                    Forward Send Find_Next
                    Set Ordering of Garticl_DD to 1
                End_Procedure // Find_Next
                
                Procedure Find_Previous
                    String sRecr
                    Get Field_Current_Value of Gtypkin_DD Field Gtypkin.Gtypkin_Recr to sRecr
                    If (sRecr<>'') Set Ordering of Garticl_DD to 3
                    Else Set Ordering of Garticl_DD to 5
                    Forward Send Find_Previous
                    Set Ordering of Garticl_DD to 1
                End_Procedure // Find_Previous
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_Hmnia

            Object Garticl_Garticl_No is a dbFormSub
                Entry_Item Garticl.Garticl_no
                Set Size to 13 57
                Set Location to 7 442
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                Procedure Find_Ge
                    String sRecr
                    Get Field_Current_Value of Gtypkin_DD Field Gtypkin.Gtypkin_Recr to sRecr
                    If (sRecr<>'') Set Ordering of Garticl_DD to 3
                    Forward Send Find_Ge
                    Set Ordering of Garticl_DD to 1
                End_Procedure
                
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_No

            Object Garticl_Garticl_Aitiol is a dbFormSub
                Entry_Item Garticl.Garticl_aitiol
                Set Size to 13 325
                Set Location to 24 45
                Set Label_Col_Offset to 2
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Garticl_Garticl_Aitiol

            Object Garticl_Garticl_Aa is a dbFormSub
                Entry_Item Garticl.Garticl_aa
                Set Size to 13 57
                Set Location to 24 442
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Garticl_Garticl_Aa

            Object Garticl_Garticl_C_Code2 is a dbComboFormSub
                Entry_Item Garticl.Garticl_c_code2
                Set Size to 13 88
                Set Location to 40 45
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                
                Procedure Combo_Item_Changed
                    Forward Send Combo_Item_Changed
                    Send CurrRefresh
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_C_Code2

            Object Garticl_Garticl_Rate0 is a dbFormSub
                Entry_Item Garticl.Garticl_rate0
                Set Size to 13 53
                Set Location to 40 177
                Set Label_Col_Offset to -55
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                set enabled_state to false
                set visible_state to false
                
                Set points item 0 to 2
                
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_Rate0

            Object Garticl_Garticl_Rate00 is a dbFormSub
                Entry_Item Garticl.Garticl_rate00
                Set Size to 13 53
                Set Location to 40 247
                Set Label_Col_Offset to -55
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                set enabled_state to false
                set visible_state to false
                Set Points Item 0 to 2
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_Rate00

            Object Garticl_Garticl_Rater is a dbFormSub
                Entry_Item Garticl.Garticl_rater
                Set Size to 13 53
                Set Location to 40 317
                Set Label_Col_Offset to -55
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                set enabled_state to false
                set visible_state to false
                Set Points Item 0 to 2
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_Rater

            Object Garticl_Garticl_Recr is a dbFormSub
                Entry_Item Garticl.Garticl_recr
                Set Size to 13 57
                Set Location to 40 442
                Set Label_Col_Offset to 19
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                Procedure Prompt_CallBack Integer hSellist
                    Integer liSrvr liRec
                    String  lsGtypkinRecr
                
                    Set Auto_Index_State of hSellist to False
                    Get Server to lisrvr
                    Get Current_Record of liSrvr to liRec
                    // Initialize the buffers
                    Set Load_buffer_MSG of hSellist to MSG_Init_Garticl
                    If (Not(liRec)) Begin
                        Get Field_Current_Value of GtypKin_DD Field Gtypkin.Gtypkin_Recr to lsGtypkinRecr
                        Set psFragmaGtypkinRecr of hSellist  To lsGtypkinRecr
                        If (lsGtypkinRecr <> '') Set Ordering of (Server(Parent(hSellist))) to 3
                        Else Set Ordering of (Server(Parent(hSellist))) to 5
                    End
                    Else Set Ordering of (Server(Parent(hSellist))) to 5
                
                End_Procedure // Prompt_CallBack
                
                Procedure Find_Ge
                    //Set Ordering of Garticl_DD to 2
                    Forward Send Find_Ge
                    Set Ordering of Garticl_DD to 1
                End_Procedure // Find_Ge
                
                Procedure Find_Next
                    //Set Ordering of Garticl_DD to 2
                    Forward Send Find_Next
                    Set Ordering of Garticl_DD to 1
                End_Procedure // Find_Next
                
                Procedure Find_Previous
                    //Set Ordering of Garticl_DD to 2
                    Forward Send Find_Previous
                    Set Ordering of Garticl_DD to 1
                End_Procedure // Find_Previous
                
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_Recr

            Object btnEisagogh is a ButtonSub
                Set Bitmap to "sxetika.bmp"
                Set Size to 21 25
                Set Location to 48 374
                Set Focus_Mode to Pointer_Only
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                    
                Set TooltipValue to "Ñ†©òö‡ö„ òß¶ úß†¢úö£‚§¶ ß®Ê´¨ß¶ ·®ü®¶"
                
                Procedure OnClick
                    Integer txtDisplayID iLathos iObjID iErr
                    String  sGparticlRecr sGtypkinRecr sNewRecr
                
                    Get Value Of frmProtypoArthro   to sGparticlRecr
                    Move (Trim(sGparticlRecr))      to sGparticlRecr
                
                    Clear Gparticl
                    Move sGparticlRecr to Gparticl.Garticl_Recr
                    Find Eq Gparticl by index.2
                    If (Found) Begin
                        Relate Gparticl
                        Move Gtypkin.Gtypkin_Recr to sGtypkinRecr
                    End
                    Move (Trim(sGtypkinRecr))   to sGtypkinRecr
                
                    If ((sGparticlRecr<>'') And (sGtypkinRecr <>'')) Begin
                        Get Object_ID       Of txtDisplay   to txtDisplayID
                        Set pitxtDisplayID  Of bpProtyp     to txtDisplayID
                        Set psGparticlRecr  Of bpProtyp     to sGparticlRecr
                        Set psGtypkinRecr   Of bpProtyp     to sGtypkinRecr
                        Begin_Transaction
                            Move Error_Object_ID            to iObjID
                            Reread
                            Set psNewRecr       Of bpProtyp to ''
                            Send DoProcess      to bpProtyp
                            Get piLathos        Of bpProtyp to iLathos
                            If (iLathos) Abort_Transaction
                            Get psNewRecr       Of bpProtyp to sNewRecr
                            Move (Trim(sNewRecr)) to sNewRecr
                        End_Transaction
                        Move iObjID to Error_Object_ID
                        Unlock
                        If (iLathos) Begin
                                 If (iLathos=7001) Send Stop_Box 'Éú§ ô®‚üû°ú úöö®ò≠„ ©´¶ ò®ÆúÂ¶ GTYPKIN'  'ë≠·¢£ò 7001'
                            Else If (iLathos=7002) Send Stop_Box 'Éú§ ô®‚üû°ú úöö®ò≠„ ©´¶ ò®ÆúÂ¶ GPARTICL' 'ë≠·¢£ò 7002'
                            Else If (iLathos=7003) Send Stop_Box 'Éú§ ô®‚üû°ú úöö®ò≠„ ©´¶ ò®ÆúÂ¶ GPMOVES'  'ë≠·¢£ò 7003'
                            Else If (iLathos=7004) Send Stop_Box 'Éú§ ô®‚üû°ú úöö®ò≠„ ©´¶ ò®ÆúÂ¶ GPLAN'    'ë≠·¢£ò 7004'
                        End
                        Else Begin
                            Move (Err) to iErr
                            If (Not(iErr)) Begin
                                Clear Garticl
                                Move sNewRecr to Garticl.Garticl_Recr
                                Find Eq Garticl By Index.2
                                If (Found) Send Find to Garticl_DD Eq 2
                                Send Info_Box 'Ü ú†©òö‡ö„ ´¶¨ ß®Ê´¨ß¶¨ ·®ü®¶¨ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                            End
                        End
                        Set label Of txtDisplayID to ''
                    End
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnEisagogh

            Object otxtDate is a TextBoxSub
                Set Label to "Ü£/§Âò:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 9 271
                Set Size to 10 24
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtDate

            Object otxtGarticlNo is a TextBoxSub
                Set Label to "Ä®†ü£Ê™ èò®/°¶Á:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 10 381
                Set Size to 10 59
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtGarticlNo

            Object otxtTypkinCode is a TextBoxSub
                Set Label to "âÂ§û©û:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 10 5
                Set Size to 10 37
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtTypkinCode

            Object otxtDescr is a TextBoxSub
                Set Label to "Ä†´†¶¢¶öÂò:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 25 5
                Set Size to 12 37
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtDescr

            Object otxtGarticlAA is a TextBoxSub
                Set Label to "Ä/Ä Ä®ü®¶¨:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 25 399
                Set Size to 12 41
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtGarticlAA

            Object otxtNomisma is a TextBoxSub
                Set Label to "åÊ£†©£ò:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 42 5
                Set Size to 10 37
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtNomisma

            Object otxtRate is a TextBoxSub
                Set Label to "à©¶´†£Âú™:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 41 143
                Set Size to 12 32
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE

                //AB-StoreStart
                set enabled_state to false
                set visible_state to false
                //AB-StoreEnd

            End_Object    // otxtRate

            Object otxtProtypoArthro is a TextBoxSub
                Set Label to "è®Ê´¨ß¶  Ä®ü®¶:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 56 5
                Set Size to 12 55
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                // Set Visible_State to FALSE
                
                //AB-StoreEnd

            End_Object    // otxtProtypoArthro

            Object frmProtypoArthroDescr is a FormSub

                //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreTopEnd

                Set Size to 13 228
                Set Location to 56 142
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_Datatype Item 0 to Mask_Window
                Set Prompt_Button_Mode to pb_PromptOn
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // frmProtypoArthroDescr

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "Ä®. Ä®ü®¶¨:"
                Set Location to 41 400
                Set Size to 10 40
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub1

            Object frmProtypoArthro is a FormSub

                //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreTopEnd

                Set Size to 13 67
                Set Location to 56 66
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                Set Prompt_Object to (Sl163(Current_object))
                
                Function Vres_an_Yparxei String asRecr Returns String
                    Move (Trim(asRecr)) to asRecr
                    Clear Gparticl
                    Move asRecr to Gparticl.Garticl_Recr
                    Find Eq Gparticl by index.2
                    Function_Return (Trim(Gparticl.Garticl_Par))
                End_Function
                
                Procedure Prompt
                    Integer iRec
                    String sStr sDescr
                    Get Field_Current_Value of (Garticl_dd(self)) Field Garticl.Recnum   to iRec
                    If (iRec = 0) Begin
                        Forward Send Prompt
                        Get Value Item 0                            to sStr
                        Move (Trim(sStr))                           to sStr
                        Move (Vres_An_Yparxei(Self,sStr))           to sDescr
                        Move (Trim(sDescr))                         to sDescr
                        Set Value Of frmProtypoArthroDescr Item 0   to sDescr
                        Set Enabled_State Of btnEisagogh            to (sDescr<>'')
                    End
                    Else Begin
                        Send Info_Box 'Å®Â©°ú©´ú ©ú ú§ú®öÊ/°ò´òÆ‡®û£‚§¶ ·®ü®¶.\nÉú§ £ß¶®úÂ §ò öÂ§ú† ú†©òö‡ö„ òß¶ ´ò ß®Ê´¨ßò' 'è¢û®¶≠¶®Âò'
                        Set Value Of frmProtypoArthroDescr  Item 0 to ''
                        Set Value Of frmProtypoArthro       Item 0 to ''
                    End
                End_Procedure // Prompt
                
                Procedure OnChange
                    String sStr sDescr
                    If (Focus(Desktop)=frmProtypoArthro(dbgrpArticle(Gmove_View(Self)))) Begin
                        Get Value Item 0                            to sStr
                        Move (Trim(sStr))                           to sStr
                        Move (Vres_An_Yparxei(Self,sStr))           to sDescr
                        Move (Trim(sDescr))                         to sDescr
                        Set Value Of frmProtypoArthroDescr Item 0   to sDescr
                        Set Enabled_State Of btnEisagogh            to (sDescr<>'')
                    End
                End_Procedure
                
                
                //AB-StoreEnd

            End_Object    // frmProtypoArthro

            Object txtDisplay is a ButtonSub
                Set Size to 14 110
                Set Location to 55 401
                Set Border_Style to Border_StaticEdge
                Set Focus_Mode to NonFocusable
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // txtDisplay


            //AB-StoreStart
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                        
            //AB-StoreEnd

        End_Object    // dbgrpArticle

        Object Gplan_ is a dbGridSub

            //AB-StoreTopStart
                                                        
            Function private.Gvath_Code Returns String
                     Clear Gvatd
                     Move Gplan.Gplan_Recr      to Gvatd.Gplan_Recr
                     Move SyscurGl.Year_Recr    to Gvatd.Year_Recr
                     Find Eq Gvatd by Index.4 //index.4:gvatd:year_recr+gplan_recr
                     If (Found=0) Function_Return ""
                     Clear Gvath
                     Move Gvatd.Gvath_Code to Gvath.Gvath_Code
                     Find Eq Gvath by Index.1 //index.1:gvath:gvath_code
                     //finderr ???
                     Function_Return Gvath.Gvath_Code
            End_Function //private.gvath_code
            
            //AB-StoreTopEnd

            Set Main_File to Gmove.File_Number
            Set Server to (Gmove_DD(self))
            Set Ordering to 3
            Set Size to 82 514
            Set Location to 110 5
            Set Wrap_State to TRUE
            Set Child_Table_State to FALSE

            Begin_Row
                Entry_Item Gplan.Gplan_code
                Entry_Item Gplan.Gplan_descr1
                Entry_Item Gmove.Gmove_aitiol
                Entry_Item Gmove.Gmove_x2
                Entry_Item Gmove.Gmove_p2
                Entry_Item (private.Gvath_Code(Self))
            End_Row

            Set Form_Width    item 0 to 90
            Set Header_Label  item 0 to "â‡õ†°Ê™ ä¶öò®†ò©£¶Á"
            
            Set Form_Width    item 1 to 101
            Set Header_Label  item 1 to "é§¶£ò©Âò"
            
            Set Form_Width    item 2 to 143
            Set Header_Label  item 2 to "Ä†´†¶¢¶öÂò 225"
            
            Set Form_Width    item 3 to 73
            Set Header_Label  item 3 to "ï®‚‡©û"
            
            Set Form_Width    item 4 to 73
            Set Header_Label  item 4 to "èÂ©´‡©û"
            
            Set Form_Width    item 5 to 28
            Set Header_Label  item 5 to "îèÄ"
            

            //AB-StoreStart
                                                        
            Set Points          Item  3 to 2
            Set Numeric_Mask    Item  3 to 14 2 " ,*"
            Set Points          Item  4 to 2
            Set Numeric_Mask    Item  4 to 14 2 " ,*"
            
            Property String psAitiolToCopy ""
            
            // Running at Prompt_Callback
            Procedure Init_Gplan
                String lsCode
                Get Field_Current_Value of Gplan_DD Field Gplan.Gplan_Code to lsCode
                If (lsCode = "") Get Value Item (Current_Item(Self)) to lsCode
                Clear Gplan
                Move gs_Selected_Company_Code to Gplan.Company_Code
                Move gs_Selected_Branch_Code  to Gplan.Branch_Code
                Move gi_Selected_Year         to Gplan.Year_Year
                Move "1" to Gplan.Gplan_Yn_Last
                Move lsCode to Gplan.Gplan_Code
                Find ge Gplan by Index.4
            End_Procedure // Init_Gplan
            
            Procedure SetXrePistFields Integer aiItem
                Integer liXreOffset liCol
                Number lnX2 lnP2
                Move 3 to liXreOffset
                Get Column aiItem to liCol
                If (liCol = liXreOffset) Begin
                    Get Field_Current_Value of Gmove_DD Field Gmove.Gmove_x2 to lnX2
                    If (lnX2 <> 0) Begin
                        Get Field_Current_Value of Gmove_DD Field Gmove.Gmove_p2 to lnP2
                        If (lnP2 <> 0) Set Field_Changed_Value of Gmove_DD Field Gmove.Gmove_p2 to 0
                    End
                    Set Item_Option Item (aiItem+1) to NoEnter (lnX2 <> 0)
                End
            End_Procedure // SetXrePistFields
            
            Function Default_Aitiol Integer aiFrom Returns String
                String  lsAitiolToCopy
                Integer liCol liAitiolOffset
                Move 2 to liAitiolOffset
                Get Column aiFrom to liCol
                if (liCol = liAitiolOffset) Begin
                    get field_current_Value of (Gmove_DD(Self)) field Gmove.Gmove_Aitiol to lsAitiolToCopy
                    Set psAitiolToCopy to lsAitiolToCopy
                End
                Function_Return lsAitiolToCopy
            End_Procedure // Default_Aitiol
            
            Procedure Set Default_Aitiol String asAitiol
                if (Not(Current_Record(self))) begin
                    Set field_Default_Value of (Gmove_DD(Self)) field Gmove.Gmove_Aitiol to asAitiol
                end
            End_Procedure // Set Default_Aitiol
            
            //***************** Predefined Procedures and Functions Section **************
            
            Procedure Exiting Integer aiToObj
                Integer Rval
            
                Forward get MSG_Exiting aiToObj to Rval
                If (Focus(Desktop) = (Self)) Begin
                    If (Check_Val_Lines(Self) = 0) Begin
                        Send request_Delete to (Garticl_dd(self))
                        Send request_Clear  to (Gmove_View(self))
                    End
                    else begin
                        if (CheckConfirm_Valid_Article(Self) <> 0) Procedure_Return 1
                        else begin
                             //Bad Appearance on execution and loosing main server
                             //The check_Arthro_For_Ypol must be the problem
                             //set visible_state of (Gplan_(Self)) to False
                             //send check_Arthro_For_Ypol to (Gmove_DD(Self))
                             //Send Beginning_of_Data to (Gplan_(Self))
                             //set visible_state of (Gplan_(Self)) to True
                        end
                    End
                End
                Procedure_return Rval // if non-zero do not enter
            End_Procedure // Exiting
            
            Procedure Entering
                Integer Rval
                Number lnChkAA
            
                Forward Get MSG_Entering to rVal
                If (Not(rVal)) Begin
                    get field_current_value of (Garticl_dd(self)) Field Garticl.Garticl_AA to lnChkAA
                    if (lnChkAA <> 0) move 1 to Rval
                    Else Delegate Get Save_Header to rval
                End
                If (Not(rVal)) Begin
                    // Because of the constrains in Gplan the First record of
                    // the grid don't have active buffer for Gplan Code
                    If ((Current_Record(Self)) and ;
                        (Not(Current_Record(Gplan_DD(Self))))) Send Beginning_Of_Data True
                End
                Function_Return Rval
            End_Function // Child_entering
            
            Procedure Request_Cancel
                Integer liResult
                //roytina ypologismo;y synnallagmatik;vn diaforvn kai ypologismoy ayt;vn BUSINESS PROSSESS
                //èêÑèÑà åÄ ãÄêââÄêÑíÄà Ü ÑÇÇêÄîÏ ãÑ íÜå ëìååÄääÄÇãÄíàâÜ ÉàÄîéêÄ ÑÄå ìèÄêïÑà
                If (Check_Val_Lines(Self) = 0) Begin
                    Send request_Delete to (Garticl_dd(self))
                    Send request_Clear  to (Gmove_View(self))
                End
                if (CheckConfirm_Valid_Article(Self) = 0) Begin
                    Send Switch_prior_area //forward send request_Cancel
                    Send Top_Of_Panel to Gmove_View
                End
            end_Procedure // Request_Cancel
            
            
            Procedure OnChange
            End_Procedure
            
            
            Procedure Item_Change Integer aiFrom Integer aiTo Returns Integer
                Integer liTo iColFrom iColTo iMyf
                String lsAitiolToCopy sVal
                Get Default_Aitiol aiFrom to lsAitiolToCopy
                Forward Get MSG_Item_Change aiFrom aiTo to liTo
                Get Column aiFrom to iColFrom
                Get Column aiTo   to iColTo
            
                Set Default_Aitiol to (psAitiolToCopy(Self))
                Procedure_Return liTo
            End_Procedure // Item_Change
            
            Procedure Prompt_CallBack Integer hPrompt
                Integer liGplanOffset
                Move 0 to liGplanOffset
                If (Current_Col(Self) = liGplanOffset) Begin
                    Set piFragmaLast of hPrompt to 1
                    // Initialize the buffers
                    Set Load_buffer_MSG of hPrompt to MSG_Init_Gplan
                End
            End_Procedure // Prompt_CallBack
            
            Procedure Request_Clear_All
            //    Delegate Send Request_Clear_All
            End_Procedure // Request_Clear_All
            
            Procedure Switch
                Send Switch_Back
                Send Top_Of_Panel to Gmove_View
            End_Procedure // Switch
            
            Procedure OnChange Integer aiItem
                Send SetXrePistFields aiItem
            End_Procedure // OnChange
            
            
            
            //Set header_justification_mode item 3  to JMODE_RIGHT
            //Set header_justification_mode item 4  to JMODE_RIGHT
            
            On_key kExit_application Send None Private
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Gplan_

        Object Gmoved_ is a dbGridSub
            Set Main_File to Gmoved.File_Number
            Set Server to (Gmoved_DD(self))
            Set Size to 61 275
            Set Location to 194 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Clients.Client_id
                Entry_Item Clients.Client_name
                Entry_Item Gmoved.Gmoved_axia
            End_Row

            Set Form_Width    item 0 to 70
            Set Header_Label  item 0 to "â‡õ.î¶®‚ò"
            
            Set Form_Width    item 1 to 120
            Set Header_Label  item 1 to "Ñß‡§¨£Âò î¶®‚ò"
            
            Set Form_Width    item 2 to 78
            Set Header_Label  item 2 to "Ä•Âò"
            

            //AB-StoreStart
            Set Column_Option Item 1 to NoEnter True
            Function Child_entering returns Integer
                Integer rval iErr imyf
                Forward Get Child_Entering to rVal
                If (NOT(rVal)) Begin
                    If (Current_Record(gmove_DD(Self))) begin
                        Get Field_Current_Value Of Gplan_DD Field Gplan.Gplan_YN_MyfP to iMyf
                        If (iMyf) Forward Get Child_Entering to rVal
                        Else Function_Return 1
                    End
                End
                function_return rVal
            End_Function
            //AB-StoreEnd

        End_Object    // Gmoved_

        Object dbgrpFooter is a dbGroupSub
            Set Size to 23 375
            Set Location to 257 141
            Object Myf_Axia_dbForm is a dbFormSub

                //AB-StoreTopStart
                Function private.Myf_Axia Returns String
                         If (;
                             (Gtypkin.Gtypkin_Flag07 = TRUE) or;
                             (Gtypkin.Gtypkin_Flag09 = TRUE);
                            ) Begin
                                  Set Label to "Ä•Âò ãìî è:"
                                  Set Visible_State to TRUE
                                  Function_Return Garticl.Garticl_Myfvalp
                              End
                
                         If (;
                             (Gtypkin.Gtypkin_Flag11 = TRUE) or;
                             (Gtypkin.Gtypkin_Flag13 = TRUE);
                            ) Begin
                                Set Label to "Ä•Âò ãìî Ä:"
                                Set Visible_State to TRUE
                                Function_Return Garticl.Garticl_Myfvala
                              End
                         Set Label to ""
                         Set Visible_State to FALSE
                         Function_Return ""
                End_Function //private.myf_axia
                //AB-StoreTopEnd

                Entry_Item (private.Myf_Axia(Self))
                Set Size to 13 63
                Set Location to 7 73
                Set Color to clBtnFace
                Set Label_Col_Offset to 45
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // Myf_Axia_dbForm

            Object Myf_Code_dbForm is a dbFormSub

                //AB-StoreTopStart
                Function private.Myf_Code Returns String
                         If (;
                             (Gtypkin.Gtypkin_Flag07 = TRUE) or;
                             (Gtypkin.Gtypkin_Flag09 = TRUE);
                            ) Begin
                                Set Visible_State to TRUE
                                Function_Return Garticl.Garticl_Myfcodp
                              End
                
                         If (;
                             (Gtypkin.Gtypkin_Flag11 = TRUE) or;
                             (Gtypkin.Gtypkin_Flag13 = TRUE);
                            ) Begin
                                 Set Visible_State to TRUE
                                 Function_Return Garticl.Garticl_Myfcoda
                            End
                
                         Set Visible_State to FALSE
                         Function_Return ""
                End_Function //private.myf_code
                //AB-StoreTopEnd

                Entry_Item (private.Myf_Code(Self))
                Set Size to 13 82
                Set Location to 7 139
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // Myf_Code_dbForm

            Object Garticl_Garticl_Syp2 is a dbFormSub
                Entry_Item Garticl.Garticl_syp2
                Set Size to 13 74
                Set Location to 7 289
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                Set Points          Item  0 to 2
                Set Numeric_Mask    Item  0 to 14 2 " ,*"
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Garticl_Garticl_Syp2

            Object otxtYpol is a TextBoxSub
                Set Label to "ìßÊ¢¶†ß¶ Ä®ü®¶¨:"
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 7 226
                Set Size to 13 60
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtYpol

        End_Object    // dbgrpFooter

        Object oPrint_bn is a ButtonSub
            Set Label to "Ñ°´Á&ß‡©û"
            Set Size to 15 65
            Set Location to 262 6
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                                                                        
            Set MDI_Container to (Gmove_View(Self))
            
            Procedure OnClick
                Integer liGthaa_058 liGarticlStatusE
                String  lsGtypekinForm lsPrinter lsGtypkinCode
                String  lsRecr
                Date    ldHmnia
                get field_current_value of Gtypkin_dd  Field Gtypkin.Gtypkin_Form    to lsGtypekinForm
                get field_current_value of Gtypkin_dd  Field Gtypkin.Gtypkin_Code    to lsGtypkinCode
                get field_current_value of Garticl_dd  Field Garticl.Garticl_Recr    to lsRecr
                get field_current_value of Garticl_dd  Field Garticl.Garticl_StatusE to liGarticlStatusE
                get field_current_value of Garticl_dd  Field Garticl.Garticl_Hmnia   to ldHmnia
                get field_current_value of Gthhmgio_dd Field Gthhmgio.Gthhmgio_Code  to liGthaa_058
                get field_current_value of Gtypkin_dd  Field Gtypkin.Gtypkin_Printer to lsPrinter
                If (lsGtypekinForm = "") send PrintCurrArthro to r058 lsRecr liGthaa_058 liGarticlStatusE lsPrinter lsGtypkinCode ldHmnia
                Else Begin
                    Move (Append(lsGtypekinForm,(" " + lsRecr))) to lsGtypekinForm
                    Send DoRunTheForm lsGtypekinForm
                End
                Forward Send OnClick
            End_Procedure // OnClick
            
            Set TooltipValue to "Ñ°´Áß‡©û ·®ü®¶¨ (CTRL+P)"
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oPrint_bn

        Object oGplan_bn is a ButtonSub
            Set Label to "&ä¶ö†©´†°Ê ëÆ‚õ†¶"
            Set Size to 15 65
            Set Location to 262 75
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                            
            Set MDI_Container to (Gmove_View(Self))
            
            Procedure OnClick
                Integer rVal liGarticlRec liGmoveRec liOldConfirm
            
                Get Field_Current_Value of Garticl_DD Field Garticl.Recnum to liGarticlRec
                Get Field_Current_Value of Gmove_DD   Field Gmove.Recnum   to liGmoveRec
                Set Modal_State of oGplan_View_Properties to (Modal_State(Gmove_View(Self)))
                Set Invoking_Object_Id of oGplan_View_Properties to (Gmove_View(Self))
                Send Activate_Gplan_View to Client_Area
                Get Verify_Data_Loss_Msg  To liOldConfirm
                Set Verify_Data_Loss_Msg  To Get_No_Confirmation
                Send Request_Clear to Gplan_
                Set Verify_Data_Loss_Msg  To liOldConfirm
                Send Find_By_Recnum to Garticl_DD Garticl.File_Number liGarticlRec
                If (liGmoveRec = 0) Send Beginning_Of_Data to Gplan_ True
                Else Send Find_By_Recnum to Gmove_DD Gmove.File_Number liGmoveRec
            
            End_Procedure // OnClick
            
            Set TooltipValue to "É†òÆúÂ®†©û ä¶ö†©´†°¶Á ëÆúõÂ¶¨ (CTRL+L)"
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oGplan_bn

        Object dbGrpYear is a dbGroupSub
            Set Server to (Syscurgl_DD(self))
            Set Size to 26 514
            Set Location to -1 5
            Set Auto_Clear_Deo_State to FALSE
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurgl.Company_name
                Set Size to 13 135
                Set Location to 9 49
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurgl.Branch_name
                Set Size to 13 110
                Set Location to 9 264
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub
                Entry_Item Syscurgl.Year_year
                Set Size to 13 61
                Set Location to 8 447
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

            Object otxtCompany is a TextBoxSub
                Set Label to "Ñ´ò†®Âò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 6
                Set Size to 10 32
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtCompany

            Object otxtBranch is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 219
                Set Size to 10 37
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtBranch

            Object otxtYear is a TextBoxSub
                Set Label to "ï®„©û:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 414
                Set Size to 10 26
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtYear

        End_Object    // dbGrpYear


        //AB-StoreStart
                                                                                                                                    
        Procedure Set View_Exit_State Integer aiValidArticle
            Set Block_Mouse_State of Gmove_View to (aiValidArticle=1)
            Set Sysmenu_Icon      of Gmove_View to (aiValidArticle=0)
            Set Enabled_State     of (oPrint_bn(dbgrpFooter(self))) to (aiValidArticle=0)
            If (aiValidArticle=1) On_Key kAction_Bar send none
            Else On_Key kAction_Bar       Send Default_key
        End_Procedure // SetTheViewInactive
        
        Function Confirm_Delete_Garticl Returns Integer
            integer rval
            Get Confirm "É†òö®ò≠„ ·®ü®¶¨;" to rval
            Function_Return rval
        End_Function // Confirm_Delete_Garticl
        
        // Only confirm on the saving of new records
        Function Confirm_Save_Garticl Returns Integer
            Integer NoSave Srvr Rec
        
            Get Server to Srvr
            Get Current_Record of Srvr to Rec
            If (Rec = 0) ;
               Get Confirm "âò´òÆÈ®û©û §‚¶¨ ·®ü®¶¨;" to NoSave
            Function_Return NoSave
        End_Function // Confirm_Save_Garticl
        
        //-------------------------------------------------------------------
        // Change: Table entry checking - attempt to save header record
        //         before entering a table (this is called by table. Return
        //         a non-zero if the save failed (i.e., don't enter table)
        //-------------------------------------------------------------------
        
        Function Save_Header Returns Integer
           Integer Rec Changed Srvr
        
           Get Server to Srvr                // The Header DDO.
           Get Current_Record of Srvr to Rec // The current order rec#.
           Get Should_Save to Changed        // Are there any current changes?
        
           // If there is no record and no changes we have an error.
           If (Rec=0 AND Changed=0) Begin // no rec
              Send Info_Box 'è®È´ò ß®‚ßú† §ò õû£†¶¨®ö„©ú†™ ‚§ò ·®ü®¶!' 'è¢û®¶≠¶®Âò'
              Function_Return 1
           End
        
           Send Request_Save_No_Clear
        
           Get Should_Save to Changed  // is a save still needed
           Get Current_record of Srvr to Rec // current record of the DD
        
           // if no record or changes still exist, return an error code of 1
           If (Rec=0 OR Changed) ;
              Function_return 1
        End_Function //save_header
        
        Procedure  CurrRefresh
            String  lsCurr
            Integer liDec
            Date    ldHmnia
            Integer liXreOffset liPistOffset
        
            Move 3 to liXreOffset
            Move 4 to liPistOffset
            Get Field_Current_Value of (Garticl_dd(Self)) Field Garticl.Garticl_C_Code2 to lsCurr
            If (psPreviousCurr(Self) <> lsCurr) Begin
                Set psPreviousCurr to lsCurr
                Clear Nomisma
                Move lsCurr to Nomisma.Nomisma_Code
                Find Eq Nomisma By Index.1 //Nomisma_c_code
                Move Nomisma.Dekadika to liDec
                Set Form_Mask of (Garticl_Garticl_Rate0(dbgrpArticle(Self))) Item 0 to ",*"
                Set Points of (Garticl_Garticl_Rate0(dbgrpArticle(Self))) Item 0 to liDec
                Set Form_Mask of (Myf_Axia_dbForm(dbgrpFooter(Self))) Item 0 to ",*"
                Set Points of (Myf_Axia_dbForm(dbgrpFooter(Self))) Item 0 to liDec
            End
        End_Procedure //currrefresh
        
        
        
        
        //***************** Predefined Procedures and Functions Section **************
        
        Procedure Request_Cancel
            If ((Check_Val_Lines(Self)) = 0) Begin
                Send Request_Delete to (Garticl_dd(self))
                Send request_Clear  to (Gmove_View(self))
            End
            If ((CheckConfirm_Valid_Article(Self)) = 0) ;
                Forward Send Request_Cancel
        End_Procedure //request_cancel
        
        Procedure Switch_Prior_View
            If (CheckConfirm_Valid_Article(Self)=0) Forward Send Switch_Prior_View
        End_Procedure // Switch_Prior_View (Ctrl+F6)
        
        Procedure Switch_Next_View
            If (CheckConfirm_Valid_Article(Self)=0) Forward Send Switch_Next_View
        End_Procedure // Switch_Next_View (Ctrl+F6)
        
        Set Verify_Save_MSG       To GET_No_Confirmation
        Set Verify_Delete_MSG     To GET_Confirm_Delete_Garticl
        
        On_key kExit_application Send None Private
        On_Key Key_Alt+Key_F4    Send None Private
        On_Key Key_Ctrl+Key_P    Send KeyAction to oPrint_bn
        On_Key Key_Ctrl+Key_L    Send KeyAction to oGplan_bn
        
        Procedure Activate_View Returns Integer
            String  sRecr
            Integer rVal
            If (psrecr(Self)<>'') Begin
                Get psrecr to sRecr
                Send Clear to garticl_DD
                Move sRecr to garticl.garticl_Recr
                Send Find to garticl_DD eq 2   // garticle:Index.2:Partl_Recr
            End
            forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Gmove_View


    //AB-StoreStart
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
