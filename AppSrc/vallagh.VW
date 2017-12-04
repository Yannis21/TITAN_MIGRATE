//AB/ Project vallagh:allagh particle
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vallagh:allagh particle"
//AB/     Set ProjectFileName to "vallagh.VW"
//AB/     Set GenerateFileName to "v192.vw"

// Project Object Structure
//   vallagh is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
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
//     fforeas is a FormSub
//     Fergo is a FormSub
//     sepelath is a FormSub
//     seergo is a FormSub
//     FormSub4 is a FormSub
//     ButtonSub3 is a ButtonSub
//     The_Table is a dbGrid
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     Fforeasname is a FormSub
//     Fcnname is a FormSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TextBoxSub11 is a TextBoxSub
//     TextBoxSub12 is a TextBoxSub
//     sepelathname is a FormSub
//     seergoname is a FormSub
//     Btnok is a ButtonSub
//     LineControlSub1 is a LineControlSub
//     Pmoves_ is a dbGridSub
//     ButtonSub4 is a ButtonSub
//     ButtonSub5 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Btnok
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object ButtonSub5
Register_Object btnChangeXr
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object dbGrpYear
Register_Object Fcnname
Register_Object Fergo
Register_Object Fforeasname
Register_Object FormSub3
Register_Object FormSub4
Register_Object Fpa_DD
Register_Object FROM_DATE
Register_Object fforeas
Register_Object Item_DD
Register_Object LineControlSub1
Register_Object Nomisma_DD
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Pmoves_
Register_Object Pmoves_DD
Register_Object Ptyppar_DD
Register_Object Syscurxr_DD
Register_Object seergo
Register_Object seergoname
Register_Object sepelath
Register_Object sepelathname
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object The_Table
Register_Object TO_DATE
Register_Object Towns_DD
Register_Object Units_DD
Register_Object vallagh
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
open ptypparl
open cmoves
open wcmoves
use  sl100.sl
use  sl041.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use Txtbox.Sub
Use Cmbfrm.Sub
Use Button.Sub
Use Form.Sub
Use Line.Sub
Use dbGrid.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
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

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vallagh FOR vallagh

Object vallagh is a dbViewSubS

    //AB-StoreTopStart
                                                            
    Property String  psModule   Public ''
    property string  psdatefrom public ''
    property string  psdateto   public ''
    property string  pspar      public ''
    property string  pvsn       public ''
    property integer piprt      public 0
    property integer pierr      public 0
    property integer piepil     public 0
    
    Function fsCNAddress String asItem Returns String
        Clear CN
        move asItem to CN.CN_Code
        Find Eq CN by Index.5
        Function_Return CN.CN_Address
    End_Function
    
    //AB-StoreTopEnd

    Set Label to "Ä¢¢òö„ ë´¶†ÆúÂ‡§ èò®ò©´ò´†°È§ "
    Set Size to 292 526
    Set Location to 1 1

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

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
        property integer piok public 0
        begin_constraints
            string datefrom dateto spar sclient scn
            Set Ordering    to 9
            Get Value Of From_Date      Item 0 to dateFrom
            Get Value Of To_Date        Item 0 to dateto
            Get Value Of (formsub3(self))  to spar
            Get Value Of Fforeas        Item 0 to sclient
            Get Value Of Fergo          Item 0 to scn
        
            constrain particle.company_code         eq syscurxr.company_code
            constrain particle.branch_code          eq syscurxr.branch_code
            constrain particle.year_year            eq syscurxr.year_year
            constrain particle.partl_module         eq '01' //Polhseis
            constrain particle.client_id            eq sclient
            constrain particle.ptyppar_code         eq spar
            Constrain particle.partl_hmnia          between datefrom and dateto
            constrain particle.partl_timol          eq 1
            if (scn<>'') constrain particle.cn_code eq scn
            if (piok(self)=1) constrain particle.epilogh_ekkrem eq 1
        end_constraints
        
        
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
        
        //Procedure Reset_The_Constraints_After_Changing_Syscurxr
        //    Send Rebuild_Constraints to Wax_DD
        //    Send Rebuild_Constraints to Witemx_DD
        //    Send Rebuild_Constraints to Witemxen_DD
        //    Send Rebuild_Constraints to Witemxtr_DD
        //    Send Rebuild_Constraints to Witemxt_DD
        //    Send Rebuild_Constraints to Ptyppar_DD
        //    Send Rebuild_Constraints to Itemd_DD
        //    Send Rebuild_Constraints to Bmove_DD
        //    Send Rebuild_Constraints to Baxio_DD
        //End_Procedure
        
        
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
            set value of (formsub4(current_object)) Item 0 to lsvalue
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
        
        //AB-StoreEnd

    End_Object    // FormSub3

    Object fforeas is a FormSub
        Set Size to 13 59
        Set Location to 39 59
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (SL100(Current_object))
        
        procedure onchange
            string sclient
            get value item 0 to sclient
            Move (fsclient(Self,sclient)) to sclient
            set value of (fforeasname(self)) to sclient
        end_procedure
        
        //AB-StoreEnd

    End_Object    // fforeas

    Object Fergo is a FormSub
        Set Size to 13 59
        Set Location to 55 59
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (SL041(Current_object))
        Procedure Prompt
            string sclient
            get value of (fforeas(self)) to sclient
            Set FragmaClient_ID Of (sl041(self)) to sClient
            Forward Send Prompt
            Set FragmaClient_ID Of (sl041(self)) to ''
        end_Procedure
        
        procedure onchange
            string scode sdescr
            get value item 0 to scode
            move (fscndescr(self,scode)) to sdescr
            set value of fcnname to sdescr
        end_procedure
        
        
        //AB-StoreEnd

    End_Object    // Fergo

    Object sepelath is a FormSub
        Set Size to 13 59
        Set Location to 73 59
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (SL100(Current_object))
        
        procedure onchange
            string sclient
            get value item 0 to sclient
            Move (fsclient(Self,sclient)) to sclient
            set value of (sepelathname(self)) to sclient
        end_procedure
        
        
        //AB-StoreEnd

    End_Object    // sepelath

    Object seergo is a FormSub
        Set Size to 13 59
        Set Location to 89 59
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (SL041(Current_object))
        Procedure Prompt
            string sclient
            get value of (sepelath(self)) to sclient
            Set FragmaClient_ID Of (sl041(self)) to sClient
            Forward Send Prompt
            Set FragmaClient_ID Of (sl041(self)) to ''
        end_Procedure
        
        procedure onchange
            string scode sdescr
            get value item 0 to scode
            move (fscndescr(self,scode)) to sdescr
            set value of (seergoname(self)) to sdescr
        end_procedure
        
        
        //AB-StoreEnd

    End_Object    // seergo

    Object FormSub4 is a FormSub
        Set Size to 13 96
        Set Location to 23 313
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // FormSub4

    Object ButtonSub3 is a ButtonSub
        Set Label to "ÑÁ®ú©û Ñöö®ò≠È§"
        Set Size to 14 103
        Set Location to 39 260
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                
        Procedure OnClick
            Date dFrom dTo
            string spar msgstr sclient ssesn sseclient
            integer ierr
            Get Value Of From_Date  Item 0 to dFrom
            Get Value Of To_Date    Item 0 to dTo
            Get Value Of (formsub3(self))  to spar
            Get Value Of Fforeas  Item 0 to sclient
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
            if (spar='') begin
               move "" to msgstr
               move 1 to ierr
               move "èò®ò©´ò´†°Ê Äßò®òÂ´û´¶ !!" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
            if (sclient='') begin
               move "" to msgstr
               move 1 to ierr
               move "èú¢·´û™ Äßò®òÂ´û´¶™ !!" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
        
            if (ierr=0) begin
               set pierr to 0
               Set psDateFrom  to dFrom
               Set psDateTo    to dTo
               set pspar  to spar
               set piok of particle_dd to 0
               Send Rebuild_Constraints to particle_DD
               Send Beginning_Of_Data to the_table   True
               Send Beginning_Of_Data to pmoves_   True
            end
            else set pierr to 1
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object The_Table is a dbGrid
        Set Main_File to Particle.File_Number
        Set Ordering to 9
        Set Size to 161 381
        Set Location to 108 0
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Particle.Epilogh_ekkrem
            Entry_Item Particle.Pseira_seira
            Entry_Item Particle.Partl_no
            Entry_Item Particle.Partl_hmnia
            Entry_Item Particle.Partl_time
            Entry_Item Particle.Cn_code
            Entry_Item (fsCNAddress(self,particle.cn_code))
            Entry_Item Particle.Partl_payam
        End_Row

        Set Form_Width    item 0 to 25
        Set Header_Label  item 0 to "Ok"
        Set Column_Checkbox_State  item 0 to True
        
        Set Form_Width    item 1 to 28
        Set Header_Label  item 1 to "ëú†®·"
        
        Set Form_Width    item 2 to 45
        Set Header_Label  item 2 to "Ä®†ü£Ê™"
        
        Set Form_Width    item 3 to 44
        Set Header_Label  item 3 to "Ü£/§Âò"
        
        Set Form_Width    item 4 to 35
        Set Header_Label  item 4 to "ó®ò"
        
        Set Form_Width    item 5 to 50
        Set Header_Label  item 5 to "Ñ®ö¶"
        
        Set Form_Width    item 6 to 100
        Set Header_Label  item 6 to "É§/©û Ñ®ö¶¨"
        
        Set Form_Width    item 7 to 50
        Set Header_Label  item 7 to "è¢û®‡´‚¶"
        

        //AB-StoreStart
        Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        Set Column_Option Item 3 to NoEnter True
        Set Column_Option Item 4 to NoEnter True
        Set Column_Option Item 5 to NoEnter True
        Set Column_Option Item 6 to NoEnter True
        Set Column_Option Item 7 to NoEnter True
        
        
        Procedure End_Construct_Object
            Integer iDecs
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
            Set Points          Item 7 to iDecs
            Set Numeric_Mask    Item 7 to 14 idecs ' ,*'
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "ÄßÊ Ü£/§Âò :"
        Set Location to 25 7
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "ó™"
        Set Location to 24 125
        Set Size to 10 11
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "èò®ò©´."
        Set Location to 24 218
        Set Size to 12 31
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object Fforeasname is a FormSub
        Set Size to 13 113
        Set Location to 41 144
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Fforeasname

    Object Fcnname is a FormSub
        Set Size to 13 113
        Set Location to 56 144
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Fcnname

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "èú¢·´û™"
        Set Location to 40 7
        Set Size to 12 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "Ñ®ö¶"
        Set Location to 54 7
        Set Size to 12 24
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "ëú èú¢·´û"
        Set Location to 71 7
        Set Size to 12 39
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub11

    Object TextBoxSub12 is a TextBoxSub
        Set Label to "ëú Ñ®ö¶"
        Set Location to 86 6
        Set Size to 12 28
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub12

    Object sepelathname is a FormSub
        Set Size to 13 113
        Set Location to 73 144
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // sepelathname

    Object seergoname is a FormSub
        Set Size to 13 113
        Set Location to 89 144
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // seergoname

    Object Btnok is a ButtonSub
        Set Label to "ButtonSub4"
        Set Bitmap to "convert3.bmp"
        Set Size to 22 25
        Set Location to 79 261
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to 'Ñ§ò®•û É†òõ†°ò©Âò™ Ä¢¢òö„™ ©´¶†ÆúÂ‡§ ßò®ò©´ò´†°È§'
        
        Procedure OnClick
            string sclient sclientrecr scn scnrecr ssls spresp scnt scmovesrecr
            string sslsrecr spresprecr scntrecr smhx smhxrecr spartlrecr sname
            integer iError_Object_ID retval
            Get Value Of sepelath  Item 0 to sclient
            Get Value Of seergo    Item 0 to scn
            if ((scn='') or (sclient='')) begin
                send info_box 'è®¶©¶Æ„ å‚¶™ èú¢·´û™ °ò† Ñ®ö¶ Äßò®òÂ´û´ò' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
            clear clients
            move sclient to clients.client_id
            find eq clients by index.6
            if (not(found)) begin
                send info_box 'å‚¶™ èú¢·´û™ Ä§Áßò®°´¶™ ©´¶ ò®ÆúÂ¶ èú¢ò´È§' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
        
            get yesno_box "è®¶©¶Æ„. Ä®ÆÂùú† û õ†òõ†°ò©Âò Ä¢¢òö„™ ©´¶†ÆúÂ‡§ èò®ò©´ò´†°È§. åò ©¨§úÆÂ©‡ ;" to retval
        
            If (RetVal =MBR_yes) begin
                move clients.client_recr to sclientrecr
                move clients.presp_id    to spresp
                move clients.client_name to sname
                clear cn
                move scn to cn.cn_code
                find eq cn by index.5
                if (not(found)) begin
                    send info_box 'Ñ®ö¶ Ä§Áßò®°´¶ ©´¶ ò®ÆúÂ¶ Ñ®ö‡§' 'è¢û®¶≠¶®Âò'
                    procedure_return
                end
                move cn.cn_recr to scnrecr
                move cn.cn_cnt_id to scnt
                move cn.cn_sls_id to ssls
                move cn.mhxanik_id to smhx
                move cn.cn_sls_recr to sslsrecr
                move cn.cn_cnt_recr to scntrecr
                begin_transaction
                   Move  Error_Object_ID  to iError_Object_ID
                   step222:
                    set piok of particle_dd to 1
                    Send Rebuild_Constraints to particle_DD
                    send find to particle_dd first_record 9
                    if (not(found)) goto step223
                    get field_current_value of particle_dd field particle.partl_recr to spartlrecr
                    clear particle
                    move spartlrecr to particle.partl_recr
                    find eq particle by index.2
                    if (not(found)) error '2222' 'Éú§ £ß¶®È §ò úßò§ò´¶ß¶üú´ûüÈ ©´¶ ßò®ò©´ò´†°Ê'
                    move sclient to particle.client_id
                    move scnrecr to particle.cn_recr
                    move scn     to particle.cn_code
                    move sclientrecr to particle.client_recr
                    move ssls               to particle.sls_id
                    move spresp             to particle.presp_id
                    move scnt               to particle.cnt_id
                    move 0                  to particle.partl_timol
                    move particle.timol_qty to particle.timol_ypol
                    move 0                  to particle.timol_qty
                    move 0                  to particle.epilogh_ekkrem
                    saverecord particle
                    Set Label of (buttonsub5(self)) to (String(Particle.recnum))
                    clear pmoves
                    move spartlrecr to pmoves.partl_recr
                    find gt pmoves by index.3
                    while ((found) and (spartlrecr=pmoves.partl_recr))
                        move sclient to pmoves.client_id
                        move scn     to pmoves.cn_code
                        move ssls    to pmoves.sls_id
                        move spresp  to pmoves.presp_id
                        move scnt    to pmoves.cnt_id
                        move smhx    to pmoves.mhxanik_id
                        move sname   to pmoves.client_name
                        move pmoves.timol_qty to pmoves.timol_ypol
                        move 0       to pmoves.timol_qty
                        saverecord pmoves
                        Set Label of (buttonsub5(self)) to (String(Pmoves.recnum))
                        clear wcmoves
                        move pmoves.wcmoves_recr to wcmoves.wcmove_recr
                        find eq wcmoves by index.2
                        if (not(found)) error 2333 'Éú§ £ß¶®È §ò ´¶ß¶üú´ûüÈ ©´û§ °Â§û©û Äß¶ü„°û™ !'
                        move sclient        to wcmoves.client_id
                        move scn            to wcmoves.cn_code
                        move sclientrecr    to wcmoves.client_recr
                        move ssls           to wcmoves.sls_id
                        move spresp         to wcmoves.presp_id
                        move scnt           to wcmoves.cnt_id
                        move scnrecr        to wcmoves.cn_recr
                        move smhx           to wcmoves.mhxanik_id
                        saverecord Wcmoves
                        Set Label of (buttonsub5(self)) to (String(wcmoves.recnum))
                        find gt pmoves by index.3
                    Loop
                    clear cmoves
                    move spartlrecr to cmoves.partl_recr
                    find gt cmoves by index.6
                    while ((found) and (spartlrecr=cmoves.partl_recr))
                        move sclient        to cmoves.client_id
                        move scn            to cmoves.cn_code
                        move sclientrecr    to cmoves.client_recr
                        move ssls           to cmoves.sls_id
                        move spresp         to cmoves.presp_id
                        move scnt           to cmoves.cnt_id
                        move scnrecr        to cmoves.cn_recr
                        move smhx           to cmoves.mhxanik_id
                        move sname          to cmoves.client_name
                        saverecord Cmoves
                        Set Label of (buttonsub5(self)) to (String(cmoves.recnum))
                        find gt cmoves by index.6
                    Loop
        
                    Goto step222
                    // girizoume tis timologhmenes posothtes sto 0
        
        
                step223:
                End_transaction
                Move  iError_Object_ID  to Error_Object_ID
                send onclick to buttonsub4
                send info_box 'Ü Ñßú•ú®öò©Âò ¶¢¶°¢û®Èüû°ú !' 'è¢û®¶≠¶®Âò'
                set label of (buttonsub5(self)) to ''
            End
            else send info_box 'É†òõ†°ò©Âò ò°¨®Èüû°ú òßÊ ´¶§ ï®„©´û' 'è¢û®¶≠¶®Âò'
            set Value Of sepelath  Item 0 to ''
            set Value Of seergo    Item 0 to ''
            set Value Of fforeas   Item 0 to ''
            set Value Of fergo     Item 0 to ''
            indicate err false
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Btnok

    Object LineControlSub1 is a LineControlSub
        Set Line_Style to lnSINGLE
        Set Line_Thickness to 2
        Set Size to 3 520
        Set Location to 70 1
    End_Object    // LineControlSub1

    Object Pmoves_ is a dbGridSub
        Set Main_File to Pmoves.File_Number
        Set Server to (Pmoves_DD(self))
        Set Size to 159 137
        Set Location to 108 382
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Pmoves.Item_code
            Entry_Item (fsitem(self,pmoves.item_code))
            Entry_Item Pmoves.Pms_qty
        End_Row

        Set Form_Width    item 0 to 47
        Set Header_Label  item 0 to "ÑÂõ¶™"
        
        Set Form_Width    item 1 to 50
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 33
        Set Header_Label  item 2 to "è¶©Ê´."
        

        //AB-StoreStart
        set read_only_state to true
        
        Procedure End_Construct_Object
            Integer iDecs
            Forward Send End_Construct_Object
            Set Points          Item 2 to 1
            Set Numeric_Mask    Item 2 to 14 1 ' ,*'
        End_Procedure
        //AB-StoreEnd

    End_Object    // Pmoves_

    Object ButtonSub4 is a ButtonSub
        Set Label to "é®†©´†°¶ß¶Âû©û  Ñß†¢¶ö„™"
        Set Size to 14 104
        Set Location to 54 260
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Date dFrom dTo
            string spar msgstr sclient ssesn sseclient
            integer ierr
            Get Value Of From_Date  Item 0 to dFrom
            Get Value Of To_Date    Item 0 to dTo
            Get Value Of (formsub3(self))  to spar
            Get Value Of Fforeas  Item 0 to sclient
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
            if (spar='') begin
               move "" to msgstr
               move 1 to ierr
               move "èò®ò©´ò´†°Ê Äßò®òÂ´û´¶ !!" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
            if (sclient='') begin
               move "" to msgstr
               move 1 to ierr
               move "èú¢·´û™ Äßò®òÂ´û´¶™ !!" to msgstr
               send info_box msgstr 'è¢û®¶≠¶®Âò'
            end
            if (ierr=0) begin
               set pierr to 0
               Set psDateFrom  to dFrom
               Set psDateTo    to dTo
               set pspar  to spar
               set piok of particle_dd to 1
               Send Rebuild_Constraints to particle_DD
               Send Beginning_Of_Data to the_table   True
               Send Beginning_Of_Data to pmoves_   True
            end
            else set pierr to 1
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4

    Object ButtonSub5 is a ButtonSub
        Set Size to 14 190
        Set Location to 82 291
        Set Border_Style to Border_Normal
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure OnClick
        
        End_Procedure // OnClick
        //AB-StoreEnd

    End_Object    // ButtonSub5


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
        sysdate4 ddate
        set value of (from_date(self))  Item 0  to ddate
        set value of (to_date(self))    Item 0  to ddate
        Set psdatefrom                          to ddate
        set psdateto                            to ddate
        set value of (formsub3(self))   Item 0  to '099'
        Forward Get MSG_Activate_View to Rval
        procedure_return rval
    End_Procedure
    
    Procedure Request_Cancel
        Set Ordering Of particle_DD to -1
        Forward Send Request_Cancel
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // vallagh


//AB-StoreStart
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
//AB-StoreEnd

//AB/ End_Object    // prj
