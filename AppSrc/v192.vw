//AB/ Project v192:eisagogh apo Betolink
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v192:eisagogh apo Betolink"
//AB/         Set ProjectFileName to "v192.vw"
//AB/         Set GenerateFileName to "v192.vw"

// Project Object Structure
//   v192 is a dbViewSubs
//     Syscurxr_DD is a DataDictionary
//     Btnemp_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     FROM_DATE is a FormSub
//     TO_DATE is a FormSub
//     FormSub3 is a FormSub
//     ButtonSub3 is a ButtonSub
//     FormSub4 is a FormSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     btnEktyposh is a ButtonSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//     btnPartl is a ButtonSub
//     RadioGroupSub2 is a RadioGroupSub
//       Radio3 is a RadioSub
//       Radio4 is a RadioSub
//     Aaparast is a CheckBoxSub
//     ButtonSub4 is a ButtonSub
//     btnPartl is a ButtonSub
//     The_Table is a dbGrid

// Register all objects
Register_Object Aaparast
Register_Object Btnemp_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object btnChangeXr
Register_Object btnEktyposh
Register_Object btnPartl
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object dbGrpYear
Register_Object FormSub3
Register_Object FormSub4
Register_Object FROM_DATE
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object Radio4
Register_Object RadioGroupSub1
Register_Object RadioGroupSub2
Register_Object Syscurxr_DD
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object The_Table
Register_Object TO_DATE
Register_Object v192


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Use Dofind.dg
    Use Dofindpr.dg
    use Doarticle0.pkg
    Use bpEnCmvs.dg
    use v192a.vw
    use v193.vw
    use deltia.rv
    use deltia1.rv
    use releip.rv
    use bttemp.dd
    open ptypparl
    use v041.vw
    use vwclients.vw
    Open "bttemp" as bttemp
    Open Gmove
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use Txtbox.Sub
    Use Cmbfrm.Sub
    Use Button.Sub
    Use Form.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use Chkbox.Sub

    Use SYSCURXR.DD
    Use BTNEMP.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v192 FOR v192

    Object v192 is a dbViewSubs

        //AB-StoreTopStart
                                                                    
        Property String  psModule   Public ''
        property string  psdatefrom public ''
        property string  psdateto   public ''
        property string  pspar      public ''
        property string  pvsn       public ''
        property integer piprt      public 0
        property integer pierr      public 0
        property integer piepil     public 0
        
        //AB-StoreTopEnd

        Set Label to "É†òÆúÂ®û©û Ñ°°®ú£È§ èò®ò©´ò´†°È§"
        Set Size to 292 526
        Set Location to 1 1

        //AB-DDOStart

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Btnemp_DD is a Btnemp_DataDictionary

            //AB-StoreStart
                                                                                                                    
            begin_constraints
                string datefrom dateto spar
                Set Ordering    to 10
                get psdatefrom  to datefrom
                get psdateto    to dateto
                get pspar       to spar
                constrain btnemp.vcompany   eq syscurxr.company_code
                constrain btnemp.vsiteemf   eq syscurxr.branch_site
                constrain btnemp.ap eq '1' //Polhseis
                Constrain btnemp.vdate between datefrom and dateto
                constrain btnemp.pms_recr eq '0'
                if (spar<>'') constrain btnemp.vvoucher eq spar
            end_constraints
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Btnemp_DD

        Set Main_DD to (Btnemp_DD(self))
        Set Server to (Btnemp_DD(self))

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
            Set Location to -4 3
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
                            zerofile bttemp
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
                            zerofile bttemp
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
                    send Request_Assign of SysCurXR_DD SysCurXR.File_Number
                
                    //If (Syscurxr_DD(Self)<>0) Send Find_By_Recnum to Syscurxr_DD Syscurxr.File_Number Syscurxr.Recnum
                
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

        Object FROM_DATE is a FormSub
            Set Size to 13 61
            Set Location to 23 58
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
            Set Location to 23 144
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // TO_DATE

        Object FormSub3 is a FormSub
            Set Size to 13 57
            Set Location to 23 255
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl012(Current_object))
            
            Procedure Find_nPerigrafh String asValue
                String lsValue
                Move (Fsptyppar(self,asvalue))  to lsvalue
                set value of (formsub4(self)) Item 0 to lsvalue
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
                Send Find_nPerigrafh sVal
            End_procedure
            
            
            procedure onchange
                String sVal
                Get Value Item 0 to sVal
                Send Find_nPerigrafh sVal
            end_procedure
            
            procedure onkillfocus
                zerofile bttemp
            end_procedure
            
            
            
            //AB-StoreEnd

        End_Object    // FormSub3

        Object ButtonSub3 is a ButtonSub
            Set Label to "ÑÁ®ú©û Ñöö®ò≠È§"
            Set Size to 14 98
            Set Location to 39 212
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                    
            Procedure OnClick
                Date dFrom dTo
                string spar msgstr
                integer ierr
                Get Value Of From_Date  Item 0 to dFrom
                Get Value Of To_Date    Item 0 to dTo
                Get Value Of (formsub3(self))  to spar
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
                   Set psDateFrom  to dFrom
                   Set psDateTo    to dTo
                   set pspar  to spar
                   Send Rebuild_Constraints to btnemp_DD
                   Send Beginning_Of_Data to the_table   True
                end
                else set pierr to 1
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub3

        Object FormSub4 is a FormSub
            Set Size to 13 96
            Set Location to 23 313
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub4

        Object ButtonSub1 is a ButtonSub
            Set Label to "Ñ§û£‚®‡©û "
            Set Bitmap to "notes8.bmp"
            Set Size to 21 23
            Set Location to 26 412
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                    
            Set TooltipValue to "Ñ§û£‚®‡©û ßò®ò©´ò´†°È§ £ú ´†£‚™ òßÊ É.Ñ.é.è"
            
            Procedure OnClick
              Integer ibpoid Retval
              String datefrom dateto msgstr smodule spar
            
              Get Value Of From_Date    Item 0  to dateFrom
              Get Value Of To_Date      Item 0  to dateTo
              Get Value Of formsub3     Item 0  to spar
            
              If (datefrom='') move '01/01/1980'    to datefrom
              If (dateto='')   move '31/12/2100'    to dateto
            
              Get psmodule                          to smodule
            
              indicate err false
            
              if (pierr(self)=1) procedure_return
            
              if (spar='') begin
                 send info_box 'èò®ò©´ò´†°Ê òßò®òÂ´û´¶ !' 'è¢û®¶≠¶®Âò'
                 procedure_return
              end
            
              get yesno_box "åò ß®¶Æ‡®Â©‡ ©´û§ ú§û£‚®‡©û ßò®ò©´ò´†°È§ £ú ´†£‚™ òßÊ É.Ñ.é.è ??" to retval
            
              If (RetVal =MBR_yes) begin
            
                Send Beginning_Of_Data to The_Table True
                If (NOT(Current_Record(Btnemp_DD(Self)))) Procedure_Return
            
                zerofile bttemp
            
                if (not(err)) begin
            
                    Move (Dofind(Self))       to ibpoid
                    Set dateapo    of iBPOID  to datefrom
                    Set dateeos    Of iBPOID  to dateto
                    set psmodule   Of iBPOID  to smodule
                    Set pspar      Of iBPOID  to spar
                    Send DoProcess            to iBPOID
            
                    clear ptypparl
                    move syscurxr.company_code      to ptypparl.company_code
                    move syscurxr.branch_code       to ptypparl.branch_code
                    move spar                       to ptypparl.ptyppar_code
                    find eq ptypparl by index.1
                    if (ptypparl.ti_typonei_pms='1') begin
                        Set pddatefrom      of (releip(self))  to datefrom
                        Set pddateto        Of (releip(self))  to dateto
                        set psmodule        Of (releip(self))  to smodule
                        Set pspar           Of (releip(self))  to spar
                        Send StartReport to Releip
                    end
                    send beginning_of_data to the_table true
                end
                else send info_box 'ë≠·¢£ò °ò´· ´¶ £ûõú§†©£Ê ò®ÆúÂ¶¨ Bttemp. É†òõ†ò°ò©Âò ò°¨®È§ú´ò† !' 'è¢û®¶≠¶®Âò'
              end
              else send info_box 'Ü õ†òõ†°ò©Âò ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û'
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object ButtonSub2 is a ButtonSub
            Set Label to "Ñ§û£‚®‡©û "
            Set Bitmap to "auto.bmp"
            Set Size to 21 23
            Set Location to 27 488
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "Ñ†©òö‡ö„ èò®ò©´ò´†°È§ òßÊ èò®òö‡ö„ ©´¶ Ñ£ß¶®†°Ê"
            Procedure OnClick
                integer ibpoid iError_Object_ID retval
                string  lsparast msgstr lsdate lsmodule datefrom dateto wvsn spar
                get value of (formsub3(current_object)) item 0 to lsparast
                get psmodule to lsmodule
                get psdatefrom to datefrom
                get psdateto   to dateto
                if (pierr(self)=1) procedure_return
                if (datefrom = '') begin
                    move "01/01/1980" to datefrom
                end
                if (dateto = '') begin
                    move "01/01/2100" to dateto
                end
                if (lsparast ne '' ) begin
                    get yesno_box "Ä®ÆÂùú† û õ†òõ†°ò©Âò ú§û£‚®‡©û™ ßò®ò©´ò´†°È§. åò ©¨§úÆÂ©‡ ;" to retval
                    If (RetVal =MBR_yes) begin
                        Move  Error_Object_ID  to iError_Object_ID
                        move (oDoarticle0(current_object)) to ibpoid
                        Set psmodule Of iBPOID to lsmodule
                        send beg_uparticle0 to ibpoid  lsparast datefrom dateto
                        move iError_Object_ID to Error_Object_ID
                        if (not(err)) Send Info_Box "Ñßú•ú®öò©Âò ßò®ò©´ò´†°È§ ¶¢¶°¢û®Èüû°ú " "è¢û®¶≠¶®Âò"
                        indicate err false
                        Send keyaction to buttonsub3
                        zerofile bttemp
                        if (err) send info_box 'ë≠·¢£ò °ò´· ´¶ £ûõú§†©£Ê ò®ÆúÂ¶¨ Bttemp. ÑÆ¶¨§ £úÂ§ú† úöö®ò≠‚™ ©´¶ Temp ò®ÆúÂ¶ !' 'è¢û®¶≠¶®Âò'
                    end
                    else send info_box 'Ü õ†òõ†°ò©Âò ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û'
                end
                else Send Info_box "É‚§ ©¨£ß¢û®È©ò´ú ßò®ò©´ò´†°Ê" "è¢û®¶≠¶®Âò"
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "ÄßÊ Ü£/§Âò :"
            Set Location to 25 7
            Set Size to 10 39
            Set FontWeight to 800
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "ó™"
            Set Location to 24 125
            Set Size to 10 11
            Set FontWeight to 800
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "èò®ò©´."
            Set Location to 24 218
            Set Size to 12 31
            Set FontWeight to 800
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub8

        Object btnEktyposh is a ButtonSub
            Set Label to "Ñ°´Á&ß‡©û"
            Set Bitmap to "Print17.bmp"
            Set Size to 21 23
            Set Location to 27 437
            Set Focus_Mode to Pointer_Only
            Set Form_FontHeight Item 0 to 12
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "Ñ°´Áß‡©û ßò®ò©´ò´†°È§"
            
            Procedure OnClick
              date datefrom dateto
              string spar
              integer iprt iaapar
              get piprt to iprt
              Get Value Of (formsub3(Self))  to spar
              if (pierr(self)=1) procedure_return
              if (spar='') begin
                send info_box 'Éú§ úß†¢‚•ò´ú ßò®ò©´ò´†°Ê' 'è¢û®¶≠¶®Âò'
                procedure_return
              end
              integer retval
              get yesno_box "á‚¢ú´ú §ò ú°´¨ß‡ü¶Á§ £Ê§¶ ßò®ò©´ò´†°· Æ‡®Â™ É.Ñ.é.è ??" to retval
            
                Send Beginning_Of_Data to The_Table True
                If (NOT(Current_Record(Btnemp_DD(Self)))) Procedure_Return
            
              If (RetVal =MBR_yes) set pideop  Of (deltia_BasicReport(deltia(Self))) to 1
              else                 set pideop  Of (deltia_BasicReport(deltia(Self))) to 0
              If (RetVal =MBR_yes) set pideop  Of (deltia1_BasicReport(deltia1(Self))) to 1
              else                 set pideop  Of (deltia1_BasicReport(deltia1(Self))) to 0
            
            
              Get Value Of (from_date(Self)) to datefrom
              Get Value Of (to_date(Self))   to dateto
              Get Value Of (formsub3(Self))  to spar
              Get Checked_State Of aaparast  to iaapar
            
              Set psdatefrom  Of (deltia_BasicReport(deltia(Self))) to datefrom
              Set psdateto    Of (deltia_BasicReport(deltia(Self))) to dateto
              Set pspar       Of (deltia_BasicReport(deltia(Self))) to spar
              set piprt       Of (deltia_BasicReport(deltia(Self))) to iprt
            
              Set psdatefrom  Of (deltia1_BasicReport(deltia1(Self))) to datefrom
              Set psdateto    Of (deltia1_BasicReport(deltia1(Self))) to dateto
              Set pspar       Of (deltia1_BasicReport(deltia1(Self))) to spar
              set piprt       Of (deltia1_BasicReport(deltia1(Self))) to iprt
              if (iaapar=1)   Send StartReport to deltia1
              else            Send StartReport to deltia
            
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnEktyposh

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 18 96
            Set Location to 36 313
            Object Radio1 is a RadioSub
                Set Label to "Ñ°´¨ß‡´„"
                Set Size to 10 46
                Set Location to 6 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "éüÊ§û"
                Set Size to 9 39
                Set Location to 6 56
            End_Object    // Radio2


            //AB-StoreStart
                                                
            Procedure Notify_Select_State integer iToItem integer iFromItem
                //for augmentation
                Forward Send Notify_Select_State  itoitem  ifromitem
                If itoItem Eq 0 Set piprt to 1
                Else            Set piprt to 0
            
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object btnPartl is a ButtonSub

            //AB-StoreTopStart
                                                
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "Filesys3.bmp"
            Set Size to 22 25
            Set Location to 27 461
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                
            Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ É.Ñ.é.è"
            
            Procedure OnClick
                Integer iRec
            
                if (pierr(self)=1) procedure_return
                String  sCLIENTcode scncode  sdeop
            
                Get Current_Record Of Btnemp_DD to iRec
                If (NOT(iRec)) Procedure_Return
            
                Get Field_Current_Value Of btnemp_DD Field btnemp.vclientcode to sclientcode
                Get Field_Current_Value Of btnemp_DD Field btnemp.vconscode   to scncode
                Get Field_Current_Value Of btnemp_DD Field btnemp.offer_id    to sdeop
                if (sdeop<>'') begin
                   set psdeop   of (v193(self)) to sdeop
                   send activate_v193
                end
                else begin
                    if (scncode<>'') begin
                        set pscncode   of (v193(self)) to scncode
                        send activate_v193
                    end
                end
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // btnPartl

        Object RadioGroupSub2 is a RadioGroupSub
            Set Label to "Ñ£≠·§†©û °ò´·"
            Set Size to 25 107
            Set Location to 38 5
            Object Radio3 is a RadioSub
                Set Label to "Ü£/§Âò"
                Set Size to 10 39
                Set Location to 10 5
            End_Object    // Radio3

            Object Radio4 is a RadioSub
                Set Label to "â‡õ.î¶®‚ò"
                Set Size to 10 56
                Set Location to 10 46
            End_Object    // Radio4


            //AB-StoreStart
            Procedure Notify_Select_State integer iNewItem integer iOldItem
                Integer licount
                If iNewItem Eq 0        set piepil   to 0
                Else If iNewItem Eq 1   Set piepil   to 1
                Send rebuild_constraints to btnemp_dd
                if (piepil(self)=1) set ordering of the_table to 14
                else                set ordering of the_table to 10
                Send Beginning_Of_Data to the_table   True
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub2

        Object Aaparast is a CheckBoxSub
            Set Label to "Ä§· É.Äß¶©´¶¢„™"
            Set Size to 10 72
            Set Location to 51 441
        End_Object    // Aaparast

        Object ButtonSub4 is a ButtonSub
            Set Label to "ButtonSub6"
            Set Bitmap to "analfpa.bmp"
            Set Size to 22 25
            Set Location to 41 115
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ °ò´òÆÈ®û©û™ èú¢ò´È§"
            
            Procedure OnClick
               string sid
               get field_current_value of btnemp_dd field btnemp.vclientcode to sid
               set psclient of (vwclients(self)) to sid
               send activate_vwclients
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // ButtonSub4

        Object btnPartl is a ButtonSub
            Set Label to "ButtonSub1"
            Set Bitmap to "Filesys3.bmp"
            Set Size to 22 25
            Set Location to 41 149
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ ‚®ö‡§"
            
            Procedure OnClick
               string sid
               get field_current_value of btnemp_dd field btnemp.vconscode to sid
               set pscncode of (v041(self)) to sid
               send activate_v041
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // btnPartl

        Object The_Table is a dbGrid
            Set Main_File to Btnemp.File_Number
            Set Ordering to 10
            Set Size to 210 521
            Set Location to 64 1
            Set Color to 14280447
            Set CurrentRowColor to 11783679
            Set CurrentCellColor to 11783679
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Btnemp.Vsite
                Entry_Item Btnemp.Vdate
                Entry_Item Btnemp.Vvoucher
                Entry_Item (fsCNDescr(Self,Btnemp.VconsCode))
                Entry_Item (fsclient(self,btnemp.vclientcode))
                Entry_Item Btnemp.Vprodcode
                Entry_Item Btnemp.Vseries
                Entry_Item Btnemp.Vsn
                Entry_Item Btnemp.Vqty
                Entry_Item Btnemp.Offer_id
                Entry_Item Btnemp.Vorderprice
                Entry_Item Btnemp.Vzone
                Entry_Item Btnemp.Vcarcode
                Entry_Item Btnemp.Vpumbid
            End_Row

            Set Form_Width    item 0 to 35
            Set Header_Label  item 0 to "Ñ®ö¶©´."
            
            Set Form_Width    item 1 to 44
            Set Header_Label  item 1 to "Ü£-§Âò"
            
            Set Form_Width    item 2 to 24
            Set Header_Label  item 2 to "èò®."
            
            Set Form_Width    item 3 to 77
            Set Header_Label  item 3 to "Î®ö¶"
            
            Set Form_Width    item 4 to 77
            Set Header_Label  item 4 to "î¶®‚ò™"
            
            Set Form_Width    item 5 to 40
            Set Header_Label  item 5 to "ÑÂõ¶™"
            
            Set Form_Width    item 6 to 18
            Set Header_Label  item 6 to "ëê"
            
            Set Form_Width    item 7 to 30
            Set Header_Label  item 7 to "É.Ä."
            
            Set Form_Width    item 8 to 29
            Set Header_Label  item 8 to "è¶©Ê´."
            
            Set Form_Width    item 9 to 55
            Set Header_Label  item 9 to "ëÁ£ôò©û"
            
            Set Form_Width    item 10 to 29
            Set Header_Label  item 10 to "í†£„"
            
            Set Form_Width    item 11 to 17
            Set Header_Label  item 11 to "Z"
            
            Set Form_Width    item 12 to 20
            Set Header_Label  item 12 to "éÆ."
            
            Set Form_Width    item 13 to 22
            Set Header_Label  item 13 to "Ä§´"
            

            //AB-StoreStart
            set read_only_state to true
            
            Procedure End_Construct_Object
                Integer iDecs
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
                Set Points          Item 8 to iDecs
                Set Numeric_Mask    Item 8 to 14 idecs ' ,*'
                Set Points          Item 10 to 1
                Set Numeric_Mask    Item 10 to 14 iDecs ' ,*'
            End_Procedure
            
            procedure mouse_click integer window integer char_pos
                string  spar scn sclient sseries
                integer ino
                forward send mouse_click window char_pos
                if (Current_Record(Self)) Begin
                    Get Field_Current_Value Of btnemp_dd  Field btnemp.vseries     to sseries
                    Get Field_Current_Value Of btnemp_dd  Field btnemp.vsn         to ino
                    Get Field_Current_Value Of btnemp_dd  Field btnemp.vvoucher    to spar
                    Get Field_Current_Value Of btnemp_dd  Field btnemp.vconscode   to scn
                    Get Field_Current_Value Of btnemp_dd  Field btnemp.vclientcode to sclient
                    Set pspar       Of (v192a(Self)) to spar
                    Set pscn        Of (v192a(Self)) to scn
                    Set psclient    Of (v192a(Self)) to sclient
                    set pino        Of (v192a(Self)) to ino
                    set psseries    Of (v192a(Self)) to sseries
                    Send Activate_v192a
                end
            end_procedure
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table


        //AB-StoreStart
                                                                    
        On_Key Key_Ctrl+Key_X Send Allagh //Allaxe_Xrhsh
        On_Key Key_Alt+Key_X  Send Allagh //Allaxe_Xrhsh
        
        Procedure Allagh
            Send Deactivate to Self
            Send Allaxe_Xrhsh
        End_Procedure
        
        Procedure Activate_View Returns Integer
             Integer Rval ibpoid
             Date ddate
             String sModule  sDescr asvalue
        
             Get psMenuModule  Of Main_Menu     to sModule
             Set psModule                       to sModule
             Get gsfCode_Mast "MODULE" sModule  to sDescr
             Move (Trim(sDescr))                to sDescr
             if (smodule='01') begin
                set enabled_state of buttonsub1 to true
                set enabled_state of btnpartl   to true
             end
             else begin
                set enabled_state of buttonsub1 to false
                set enabled_state of btnpartl   to false
             end
            // â‡õ†°ò™ ß¶¨ ò≠¶®ò ´¶ constrain ´‡§ ©´¶†Æú†‡§ ´¶¨ view ¶ß‡™ ßò®ò©´ò´†°·
            // û °†§„©ú†™ ß¶¨ èêÑèÑà §ò úÂ§ò† constrain ò§ò¢¶öò £ú ´¶ °Á°¢‡£ò òß¶
            // ´¶ ¶ß¶†¶ °ò¢úÂ´ò† ´¶ view. è.ï. ò§ °¢ûüúÂ òß¶ è‡¢„©ú†™/èú¢·´ú™ §ò £û§
            // ≠òÂ§¶§´ò† ©´ò ßò®ò©´ò´†°· ´ò ctypkin Äö¶®È§ °¢ß....
        
            Case Begin
                Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                    set label of v192 to "É†òÆúÂ®û©û Ñ°°®ú£È§ èò®ò©´ò´†°È§ èÈ¢û©û™"
                  Case Break
        
                Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                    set label of v192 to "É†òÆúÂ®û©û Ñ°°®ú£È§ èò®ò©´ò´†°È§ Äö¶®È§"
                  Case Break
            Case End
        
            sysdate4 ddate
            set value of (from_date(self))  Item 0  to ddate
            set value of (to_date(self))    Item 0  to ddate
            Set psdatefrom                          to ddate
            set psdateto                            to ddate
            Send OnClick to ButtonSub3
            Forward Get MSG_Activate_View to Rval
            procedure_return rval
        End_Procedure
        
        Procedure Request_Cancel
            Set Ordering Of Btnemp_DD to -1
            Forward Send Request_Cancel
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // v192


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
