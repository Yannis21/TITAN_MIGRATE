//AB/ Project V182ss:allages diakinhshs
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V182ss:allages diakinhshs"
//AB/     Set ProjectFileName to "V182ss.VW"

// Project Object Structure
//   V182ss is a dbViewSubS
//     witemx_DD2 is a witemx_DataDictionary
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Wcmoves_DD is a DataDictionary
//     Itemd_DD is a DataDictionary
//     Witemxtr_DD is a DataDictionary
//     Witemxtd_DD is a DataDictionary
//     Witemxen_DD is a DataDictionary
//     Witemxed_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     Container1 is a dbContainer3d
//       witemxtr_recr is a dbForm
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       Witemxtr_Hmnia is a dbFormSub
//       Witemxen_Wtypkin_Code is a dbFormSub
//       Witemxtd_Wtypkin_Code is a dbFormSub
//       FormSub9 is a FormSub
//       btnkleisimo is a ButtonSub
//       frmIsClosed is a FormSub
//       btnwitemxen is a ButtonSub
//       Witemxtr_Descr is a dbFormSub
//       TextBoxSub11 is a TextBoxSub
//       TextBoxSub12 is a TextBoxSub
//       FormSub3 is a FormSub
//       FormSub5 is a FormSub
//       Witemxtr_From_No is a dbCheckBoxSub
//       Witemxtr_To_No is a dbCheckBoxSub
//       btnekt is a ButtonSub
//       TextBoxSub18 is a TextBoxSub
//       FormSub10 is a FormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         Witemxtd_ is a dbGridSub
//         Witemxtr_Qty is a dbFormSub
//         TextBoxSub13 is a TextBoxSub
//         btnMetasx is a ButtonSub
//         ButtonSub1 is a ButtonSub
//         btnanprod is a ButtonSub
//         fCheck is a CheckBoxSub
//         ButtonSub2 is a ButtonSub
//         ButtonSub3 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object btnanprod
Register_Object btnChangeXr
Register_Object btnekt
Register_Object btnkleisimo
Register_Object btnMetasx
Register_Object btnwitemxen
Register_Object Container1
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object dbGrpYear
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object FormSub10
Register_Object FormSub3
Register_Object FormSub5
Register_Object FormSub9
Register_Object Fpa_DD
Register_Object fCheck
Register_Object frmIsClosed
Register_Object Item_DD
Register_Object Itemd_DD
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Syscurxr_DD
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub18
Register_Object TextBoxSub2
Register_Object TextBoxSub5
Register_Object Units_DD
Register_Object V182ss
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Witemxed_DD
Register_Object Witemxen_DD
Register_Object Witemxen_Wtypkin_Code
Register_Object Witemxtd_
Register_Object Witemxtd_DD
Register_Object Witemxtd_Wtypkin_Code
Register_Object Witemxtr_DD
Register_Object Witemxtr_Descr
Register_Object Witemxtr_From_No
Register_Object Witemxtr_Hmnia
Register_Object Witemxtr_Qty
Register_Object Witemxtr_To_No
Register_Object Wtypkin_DD
Register_Object witemx_DD2
Register_Object witemxtr_recr


//AB/ AppBuild VIEW


//AB-StoreTopStart
OPEN iteml
Use Kinapoth.vw
Use bpMkWcm.dg
use sl014_1.sl
use particle.dd
open wflagkin
use r182_0.rv
use rdiakin.rv
use sl012.sl
//use v185.vw
open sysfile
use rtehn.rv
use vanprod.vw
open anprod
use ranprod.rv
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use Txtbox.Sub
Use Cmbfrm.Sub
Use Button.Sub
Use dbForm.Sub
Use Form.Sub
Use dbChkbox.Sub
Use dbTabDlgS.Sub
Use dbGrid.Sub
Use Chkbox.Sub

Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use WTYPKIN.DD
Use SYSCURXR.DD
Use WCMOVES.DD
Use ITEMD.DD
Use WITEMXTR.DD
Use WITEMXTD.DD
Use WITEMXEN.DD
Use WITEMXED.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V182ss FOR V182ss

Object V182ss is a dbViewSubS

    //AB-StoreTopStart
                                
    property string     psmodule       public '09'
    property integer    pilathos       public 0
    property integer    piSfalma       public 0
    property integer    piekleise      public 0
    property integer    piTxtID        public 0
    property string     pswitemx       public ''
    property string     psfindrecr     public ''
    property string     pswcmovesrecr  public ''
    property string     pswitemxrecr   public ''
    property integer    pipcfpa        public 0
    property integer    pifrom         public 0
    property integer    pito           public 0
    
    
    Function fiDelete_WCmoves_Record String asRecr Integer aiDelete Returns Integer
        Integer rVal iErr
        string switemx smodule srecr
        Indicate Err False
    
        if (not(aidelete)) function_return 0
        Move 0 to rVal
    
        Clear WCmoves
        Move asRecr to WCmoves.particle_Recr
        Find Gt WCmoves By Index.5 //WCmoves:Index.5:partlicle_Recr + witemx_recr + wcmoves_recr
        While ((Found=1) and (Wcmoves.Particle_Recr = asRecr))
            Send Find_By_Recnum to Wcmoves_DD Wcmoves.File_Number Wcmoves.Recnum
            If (Found) Begin
                if (wcmoves.module_from='09');
                    Send Request_Delete to WCmoves_DD
                Move (Err) to iErr
                If (iErr) Begin
                    Move 60002 to rVal
                    Set piLathos to rVal
                End
            End
            Find Gt WCmoves By Index.5
        Loop
    
    
        Function_Return rVal
    
    End_Function
    
    Object witemx_DD2 is a witemx_DataDictionary
    End_Object    // btnordd_DD2
    
    Function fsmtf integer imetaf returns String
        string speri
        if (imetaf=10) move 'Ä§ú¨' to speri
        else if (imetaf=20) move 'à.ï' to speri
        else if (imetaf=30) move 'É.ï' to speri
        Function_Return speri
    End_Function
    
    //AB-StoreTopEnd

    Set Label to "É†Ê®ü‡©û Éú¢´Â‡§ Ñ©‡´ú®†°„™ É†ò°Â§û©û™ Ñ†õÈ§"
    Set Size to 294 515
    Set Location to 1 8

    //AB-DDOStart

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

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Wcmoves_DD is a Wcmoves_DataDictionary
        Set DDO_Server to (Wtypkin_DD(self))
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
    End_Object    // Wcmoves_DD

    Object Itemd_DD is a Itemd_DataDictionary
        Set DDO_Server to (Item_DD(self))
        Set Constrain_File to Item.File_Number

        //AB-StoreStart
        begin_constraints
               Constrain ITEMD.company eq SysCurXR.Company_Code
               Constrain itemd.branch  eq SysCurXR.Branch_Code
        End_constraints
        //AB-StoreEnd

    End_Object    // Itemd_DD

    Object Witemxtr_DD is a Witemxtr_DataDictionary

        //AB-StoreTopStart
                                                            
        Property Integer piReadOnly Public False
        
        //AB-StoreTopEnd


        //AB-StoreStart
                                                            
        Procedure Save_Main_File
            If (NOT(piReadOnly(Self))) Forward Send Save_Main_File
            Else Send Info_Box "Ü õ†ò°Â§û©û ‚Æú† ß®òö£ò´¶ß¶†ûüúÂ.\nÉú§ úß†´®‚ß¶§´ò† ò¢¢òö‚™" "è¢û®¶≠¶®Âò"
        End_Procedure
        
        Procedure Delete_Main_File
            If (NOT(piReadOnly(Self))) Forward Send Delete_Main_File
            Else Send Info_Box "Ü õ†ò°Â§û©û ‚Æú† ß®òö£ò´¶ß¶†ûüúÂ.\nÉú§ úß†´®‚ßú´ò† û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Witemxtr_DD

    Object Witemxtd_DD is a Witemxtd_DataDictionary

        //AB-StoreTopStart
        Property Integer piReadOnly Public False
        //AB-StoreTopEnd

        Set DDO_Server to (Witemxtr_DD(self))
        Set Constrain_File to Witemxtr.File_Number

        //AB-StoreStart
        Procedure Save_Main_File
            If (NOT(piReadOnly(Self))) Forward Send Save_Main_File
        End_Procedure
        
        Procedure Delete_Main_File
            If (NOT(piReadOnly(Self))) Forward Send Delete_Main_File
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Witemxtd_DD

    Object Witemxen_DD is a Witemxen_DataDictionary
        Set DDO_Server to (Witemx_DD(self))
    End_Object    // Witemxen_DD

    Object Witemxed_DD is a Witemxed_DataDictionary
        Set DDO_Server to (Witemxen_DD(self))
        Set Constrain_File to Witemxen.File_Number
    End_Object    // Witemxed_DD

    Set Main_DD to (Witemxtr_DD(self))
    Set Server to (Witemxtr_DD(self))

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

        Set Size to 26 511
        Set Location to -2 0
        Object otxtCompany is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 5
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtCompany

        Object cboCompany is a ComboFormSub

            //AB-StoreTopStart
                                                                                        
            //AB-StoreTopEnd

            Set Size to 13 127
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
                        Send Rebuild_Constraints to Witemxtr_DD
                        Send Beginning_Of_Data to (Witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(v182s(Self))))) True
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
            Set Location to 11 178
            Set Size to 10 30
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtBranch

        Object cboBranch is a ComboFormSub
            Set Size to 13 147
            Set Location to 8 215
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
                        Send Rebuild_Constraints to Witemxtr_DD
                        Send Beginning_Of_Data to (Witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(v182s(Self))))) True
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
            Set Location to 11 369
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
            Set Location to 9 399
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
                        Send Rebuild_Constraints to Witemxtr_DD
                        Send Beginning_Of_Data to (Witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(v182s(Self))))) True
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
            Set Size to 20 25
            Set Location to 5 475
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
                Send Rebuild_Constraints to Witemxtr_DD
                Send Beginning_Of_Data to (Witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(v182s(Self))))) True
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

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 89 510
        Set Location to 25 -1
        Object witemxtr_recr is a dbForm

            //AB-StoreTopStart
                                                                                                                                                    
            //AB-StoreTopEnd

            Entry_Item Witemxtr.Axia
            Set Size to 13 67
            Set Location to 7 107
            Set TextColor to clBlue
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                                                                                                                    
            Set enabled_state to false
            Set points item 0 to 0
            
            //AB-StoreEnd

        End_Object    // witemxtr_recr

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ä/ò ßò®ò©´ò´†°¶Á õ†ò°Â§û©û™"
            Set TextColor to clBlue
            Set Location to 8 3
            Set Size to 10 103
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "Ü£ú®¶£û§Âò"
            Set TextColor to clBlue
            Set Location to 21 3
            Set Size to 10 42
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object Witemxtr_Hmnia is a dbFormSub
            Entry_Item Witemxtr.Hmnia
            Set Size to 13 67
            Set Location to 21 107
            Set TextColor to clBlue
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_FontWeight Item 0 to 800
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                    
                                                                                                                                                    
            Procedure Refresh Integer iMode
                String sRecr sclosed
                Forward Send Refresh iMode
                Set Enabled_State   Of BtnKleisimo          to True
                Get field_current_value of witemxtr_dd field witemxtr.ekleise to sclosed
                Get field_current_value of witemxtr_dd field witemxtr.recr    to srecr
            
            
                If (sclosed='1') Begin
                    Set Color Of (frmIsClosed(container1(self))) to clred
                End
                else Begin
                    set Color Of (frmIsClosed(container1(self))) to clLime
                End
                set enabled_state of (btnmetasx(dbTabPageSubS1(dbTabDialogSubS1(self)))) to (srecr<>'')
                Set piReadOnly Of Witemxtr_DD to (sclosed='1')
                Set piReadOnly Of Witemxtd_DD to (sclosed='1')
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemxtr_Hmnia

        Object Witemxen_Wtypkin_Code is a dbFormSub
            Entry_Item Witemxtr.Wtypkin_from
            Set Size to 13 67
            Set Location to 34 107
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            procedure onchange
                string stypkin sdescr
                get value item 0     to stypkin
                move (fswtypkin(self,stypkin)) to sdescr
                set value of (formsub3(self)) to sdescr
            end_procedure
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemxen_Wtypkin_Code

        Object Witemxtd_Wtypkin_Code is a dbFormSub
            Entry_Item Witemxtr.Wtypkin_to
            Set Size to 13 67
            Set Location to 48 107
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            procedure onchange
                string stypkin sdescr
                get value item 0     to stypkin
                move (fswtypkin(self,stypkin)) to sdescr
                set value of (formsub5(self))  to sdescr
            end_procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemxtd_Wtypkin_Code

        Object FormSub9 is a FormSub
            Set Size to 13 67
            Set Location to 64 107
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl012(Current_object))
            Procedure Prompt
                Set psModule Of (sl012(Self)) to '01'
                Forward Send Prompt
            End_procedure
            
            procedure onchange
                string sptyppar sdescr
                get value item 0 to sptyppar
                move (fsptyppar(self,sptyppar)) to sdescr
                set value of (formsub10(container1(self))) to sdescr
            end_procedure
            
            
            //AB-StoreEnd

        End_Object    // FormSub9

        Object btnkleisimo is a ButtonSub
            Set Label to "ButtonSub2"
            Set Bitmap to "open1.bmp"
            Set Size to 20 24
            Set Location to 67 440
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Visible_State to FALSE

            //AB-StoreStart
                                                                                        
            Set TooltipValue to "Ä§¶†ö£ò / â¢úÂ©†£¶ Ñ§´¶¢„™ É†ò°Â§û©û™ Ñ†õÈ§"
            
            Function Kleise_Entolh Returns Integer
               String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
               String sentolh msgstr switemx snomisma  snwaxrecr switemxcode smodule sno
               Number nqty nunit nmesh
               Integer idelete istatus lilathos iabort isClosed ifrom ito iflag
               string sdescr Stexnikh
               move 0 to iflag
               Date ddate
               Set piLathos to 0
               get pifrom to ifrom
               get pito   to ito
               move '09' to smodule
               Get field_current_value of witemxtr_dd field witemxtr.recr to scurrecr
               Get field_current_value of witemxtr_dd field witemxtr.wtypkin_from to stypkin
               Get field_current_value of witemxtr_dd field witemxtr.code to sno
               Get field_current_value of witemxtr_dd field witemxtr.descr to sdescr
             if (ifrom=0) begin
               move syscurxr.c_code0 to snomisma
               Clear wtypkin
               Move  stypkin              to wtypkin.wtypkin_code
               Find eq wtypkin by index.1
               If (Found = 1) begin
                  Move wtypkin.wtypkin_recr to swtypkinrecr
                  Send find to witemxtd_dd first_record 1
                  While (found = 1)
                     Set piLathos to 0
                     Get field_current_value of witemxtd_dd field witemxtd.witemx_code to switemxcode
                     clear witemx
                     Move syscurxr.company_code to witemx.company_code
                     Move syscurxr.branch_code  to witemx.branch_code
                     Move syscurxr.year_year    to witemx.year_year
                     move switemxcode           to witemx.witemx_code
                     find eq witemx by index.5
                     move witemx.witemx_recr    to switemxrecr
                     Get field_current_value of witemxtd_dd field witemxtd.wax_from to swaxrecr
                     Get field_current_value of witemxtr_dd field witemxtr.hmnia to ddate
                     Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                     Get field_current_value of witemxtd_dd field witemxtd.texnikh to stexnikh
            
                     move '' to speri
                     move (append(speri,sdescr)) to speri
                   //  move (append(speri,' ãòù†°„ õ†ò°†§.ú†õÈ§')) to speri
                     //***************************************************
                     Set psModule         Of bpMkWcm  to  sModule
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
                     Set psNomisma        Of bpMkWcm  to  sNomisma
                     Set psParticleRecr   Of bpMkWcm  to  scurrecr
                     Set psPerigrafh      Of bpMkWcm  to  sPeri
                     Set piFromKinApoth   Of bpMkWcm  to  False
                     Set psWcmovesRecr    Of bpMkWcm  to  ''
                     Set piTxtID          Of bpMkWcm to  (piTxtID(Self))
                     Set psno             Of bpMkWcm to  sno
                     Set pstexnikhdiakin  Of bpMkWcm to  stexnikh
                     Set pstexnikh        Of bpMkWcm to  ''
                     Send DoProcess       to bpMkWcm
                     Get piLathos Of bpMkWcm to liLathos
                     Set piLathos to liLathos
                     If (lilathos <> 0)  Abort_Transaction
                     Get fsCurrent_WCmoves_Recr Of bpMkWcm to srecr
            
                     If (Trim(sRecr)='') Begin
                        Set piLathos to 60008
                        Abort_Transaction
                     End
            
                   Set field_changed_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                   Send request_save to witemxtd_dd
                   get pswitemx to switemx
                   Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(srecr)))
            
                   Send find to witemxtd_dd next_record 1
                  Loop
            
               End
               Else Function_Return 55556
             end
             if (ito=0) begin
               Get field_current_value of witemxtr_dd field witemxtr.wtypkin_to to stypkin
               Get field_current_value of witemxtr_dd field witemxtr.code to sno
            
               move 0 to iflag
               move syscurxr.c_code0 to snomisma
               Clear wtypkin
               Move  stypkin              to wtypkin.wtypkin_code
               Find eq wtypkin by index.1
               If (Found = 1) begin
                  Move wtypkin.wtypkin_recr to swtypkinrecr
                  Send find to witemxtd_dd first_record 1
                  While (found = 1)
                     Set piLathos to 0
                     Get field_current_value of witemxtd_dd field witemxtd.witemx_code to switemxcode
                     clear witemx
                     Move syscurxr.company_code to witemx.company_code
                     Move syscurxr.branch_code  to witemx.branch_code
                     Move syscurxr.year_year    to witemx.year_year
                     move switemxcode           to witemx.witemx_code
                     find eq witemx by index.5
                     move witemx.witemx_recr    to switemxrecr
                     Get field_current_value of witemxtd_dd field witemxtd.wax_to to swaxrecr
                     Get field_current_value of witemxtr_dd field witemxtr.hmnia to ddate
                     Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                     Get field_current_value of witemxtd_dd field witemxtd.texnikh to stexnikh
                     Set psModule         Of bpMkWcm  to  sModule
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
                     Set psNomisma        Of bpMkWcm  to  sNomisma
                     Set psParticleRecr   Of bpMkWcm  to  scurrecr
                     if (ifrom=1) begin
                         move '' to speri
                         move (append(speri,sdescr)) to speri
                     //    move (append(speri,' ãòù†°„ õ†ò°†§.ú†õÈ§')) to speri
                     end
                     Set psPerigrafh      Of bpMkWcm  to  sPeri
                     Set psno             Of bpMkWcm to  sno
                     Set pstexnikhdiakin  Of bpMkWcm to  stexnikh
                     Set pstexnikh        Of bpMkWcm to  ''
                     Set piFromKinApoth   Of bpMkWcm  to  False
                     Set psWcmovesRecr    Of bpMkWcm  to  ''
                     Set piTxtID          Of bpMkWcm to  (piTxtID(Self))
                     Send DoProcess       to bpMkWcm
                     Get piLathos Of bpMkWcm to liLathos
                     Set piLathos to liLathos
                     If (lilathos <> 0)  Abort_Transaction
                     Get fsCurrent_WCmoves_Recr Of bpMkWcm to srecr
            
                     If (Trim(sRecr)='') Begin
                        Set piLathos to 60008
                        Abort_Transaction
                     End
                       Set field_changed_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                       Send request_save to witemxtd_dd
                       get pswitemx to switemx
                       Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ £ú âÂ§û©û ÑÂõ¶¨™ '+(String(srecr)))
                      Send find to witemxtd_dd next_record 1
                  Loop
            
               End
               Else Function_Return 55556
             end
               set pifrom to 0
               set pito   to 0
               Function_Return 0
            
            End_Function
            
            Function Anoixe_Entolh Returns Integer
                String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
                String sentolh msgstr switemx smodule  ssite
                date ddate dhmnia
                Number nqty
                Integer idelete istatus lilathos iabort isClosed irecnum
            
                Set piLathos to 0
                Move '' to srecr
                Move '' to speri
                Move '' to msgstr
                Get field_current_value of witemxtr_dd field witemxtr.recr to srecr
                Get field_current_value of witemxtr_dd field witemxtr.sap_hmnia to ddate
                Get field_current_value of witemxtr_dd field witemxtr.hmnia to dhmnia
                move syscurxr.branch_site to ssite
                if (ddate<>'') begin
                    error 7521 'H ú§´¶¢„ ‚Æú† ú§û£ú®È©ú† SAP °ò† õú§ •ú°¢ú†õÈ§ú†'
                end
                Move 1 to idelete
                Set piLathos to 0
                Move (fiDelete_WCmoves_Record(Self,srecr,idelete)) to idelete
                Get pilathos  to lilathos
                If (lilathos <> 0) Function_Return liLathos
                Send UpdateWait to (piTxtID(Self))  ('É†òö®ò≠„ òßÊ Ä®ÆúÂ¶ â†§„©ú‡§ âÂ§û©û ÑÂõ¶¨™ '+(String(srecr)))
                clear anprod
                move dhmnia to anprod.anprod_date
                move ssite to anprod.anprod_site
                find gt anprod by index.3
                While ((found) and (anprod.anprod_date=dhmnia) and (anprod.anprod_site=ssite))
                    if (anprod.entolh_recr=srecr) begin
                        move '' to anprod.entolh_recr
                        saverecord anprod
                    end
                    find gt anprod by index.3
                Loop
                Function_Return 0
            End_Function
            
            Procedure OnClick
                Integer isClosed iMsg iRec iErr ifrom ito imetaf
                string sitem srecr  stexnikh
                date ddate
                Indicate Err False
                send request_save to witemxtr_dd
                Get Field_Current_value Of Witemxtr_DD Field Witemxtr.from_no to ifrom
                Get Field_Current_value Of Witemxtr_DD Field Witemxtr.to_no   to ito
                Set piTxtID                         to (Wait(Self))
                Set Button_State    of (Wait(Self)) to False
                Set BarVisibleState of (Wait(Self)) to '' False
                Send Popup                          to (Wait(Self))
                Send Beginning_Of_Data To (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) true
                If (Current_Record(Witemxtd_DD(Self))) Begin
                    Begin_Transaction
                        Get Field_Current_value Of Witemxtr_DD Field Witemxtr.Recnum  to iRec
                        Get Field_Current_value Of Witemxtr_DD Field Witemxtr.Ekleise to isClosed
                        If (isClosed) Begin
                            if ((ifrom=0) or (ito=0)) begin
                               set pifrom to ifrom
                               set pito   to ito
                            end
                            Get Anoixe_Entolh to iMsg
                            send clear to wcmoves_dd
                            If (Not(iMsg)) Begin
                                Send Find_By_Recnum to Witemxtr_DD Witemxtr.File_Number iRec
                                If (Found) Begin
                                    Set piReadOnly Of Witemxtr_DD to False
                                    Set piReadOnly Of Witemxtd_DD to False
                                    Set Field_Changed_value Of Witemxtr_DD Field Witemxtr.Ekleise to ''
                                    Send Request_Save to Witemxtr_DD
                                    Move (Err) to iErr
                                    If (iErr) Begin
                                        Set piSfalma to 9001
                                        Abort_Transaction
                                    End
                                End
                            End
                            Else Begin
                                Set piSfalma to iMsg
                                If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                Abort_Transaction
                            End
                        End
                        Else Begin
                            Set piReadOnly Of Witemxtr_DD to False
                            send request_save to witemxtr_dd
                            if ((ifrom=0) or (ito=0)) begin
                               set pifrom to ifrom
                               set pito   to ito
                        end
                        Get Kleise_Entolh to iMsg
                            If (Not(iMsg)) Begin
            
                                Send Find_By_Recnum to Witemxtr_DD Witemxtr.File_Number iRec
                                If (Found) Begin
                                    Set Field_Changed_value Of Witemxtr_DD Field Witemxtr.Ekleise to '1'
                                    Send Request_Save to Witemxtr_DD
                                    get field_current_value of witemxtr_dd field witemxtr.hmnia       to ddate
                                    set pddate of (rtehn(self)) to ddate
                                    Send StartReport to Rtehn
                                    send rebuild_constraints to witemxtd_dd
                                    send find to witemxtd_dd first_record 1
                                    while (found)
                                        get field_current_value of witemxtd_dd field witemxtd.witemx_code to sitem
                                        get field_current_value of witemxtd_dd field witemxtd.texnikh to stexnikh
                                        get field_current_value of witemxtd_dd field witemxtd.fpa_from    to imetaf
                                        get field_current_value of witemxtr_dd field witemxtr.hmnia       to ddate
                                        get field_current_value of witemxtr_dd field witemxtr.recr        to srecr
                                        clear anprod
                                        move ddate to anprod.anprod_date
                                        move sitem to anprod.anprod_form
                                        move syscurxr.branch_site to anprod.anprod_site
                                        move imetaf to anprod.anprod_cartp
                                        find ge anprod by index.2
                                        while ((found) and (anprod.anprod_date=ddate) and;
                                              (anprod.anprod_form=sitem) and;
                                              (anprod.anprod_site = syscurxr.branch_site)and;
                                              (anprod.anprod_cartp=imetaf))
                                              if (anprod.anprod_itemtn=stexnikh) begin
                                                move srecr to anprod.entolh_recr
                                                saverecord anprod
                                              end
                                              find gt anprod by index.2
                                        Loop
                                        send find to witemxtd_dd next_record 1
                                    Loop
                                      Send Find_By_Recnum to Witemxtr_DD Witemxtr.File_Number iRec
            
                                    Move (Err) to iErr
                                    If (iErr) Begin
                                        Set piSfalma to 9002
                                        If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                        set pifrom to 0
                                        set pito   to 0
                                        Abort_Transaction
                                    End
                                End
                            End
                            Else Begin
                                Set piSfalma to iMsg
                                If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                set pifrom to 0
                                set pito   to 0
                                Abort_Transaction
                            End
                 End
                 End_Transaction
            
                         If (piSfalma(Self)=9001)  Send Info_Box "Éú§ £ßÊ®ú©ò §ò ò§¶Â•‡ ´û§ ú§´¶¢„ õ†ò°Â§û©û™"  "ë≠·¢£ò 9001"
                    Else If (piSfalma(Self)=9002)  Send Info_Box "Éú§ £ßÊ®ú©ò §ò °¢úÂ©‡ ´û§ ú§´¶¢„ õ†ò°Â§û©û™"  "ë≠·¢£ò 9002"
                    Else If (piSfalma(Self)=9003)  Send Info_Box "Éú§ ¨ß·®Æú† ©¨©Æú´†©£‚§¶ ßò®ò©´ò´†°Ê "        "ë≠·¢£ò 9003"
                    Else If (piSfalma(Self)=9004)  Send Info_Box "í¶ ßò®ò©´ò´†°Ê ©¨©Æ‚´†©û™ õú§ ô®Â©°ú´ò† ©ú ú°°®ú£Ê´û´ò" "ë≠·¢£ò 9004"
                    Else If (piSfalma(Self)=55556) Send Info_Box "Éú§ ¨ß·®Æú† °Â§û©û ´È§ ú†õÈ§"             "ë≠·¢£ò 55556"
                    Else If (piSfalma(Self)=55557) Send Info_Box "Éú§ ¨ß·®Æú† °Â§û©û ´‡§ ú†õÈ§"                 "ë≠·¢£ò 55557"
                    Else If (piSfalma(Self)=55558) Send Info_Box "Éú§ úß†©´®‚≠ú† Wcmoves Recr ö†ò ´¶ ©Á§üú´¶ úÂõ¶™"   "ë≠·¢£ò 55558"
                    Else If (piSfalma(Self)=55559) Send Info_Box "Éú§ úß†©´®‚≠ú† Wcmoves Recr ö†ò ´ò úÂõû"    "ë≠·¢£ò 55559"
                    Else If (piSfalma(Self)=60006) Send Info_Box "Éú§ ô®‚üû°ú ´Áß¶™ °Â§û©û™"                          "ë≠·¢£ò 60006"
                    Else If (piSfalma(Self)=60106) Send Info_Box "Éú§ ô®‚üû°ú ´¶ úÂõ¶™"                               "ë≠·¢£ò 60106"
                    Else If (piSfalma(Self)=60206) Send Info_Box "Éú§ ô®‚üû°ú òß¶üû°ú¨´†°Ê™ ÆÈ®¶™ Æ®„©ú‡™"            "ë≠·¢£ò 60206"
                    Else If (piSfalma(Self)=60002) Send Info_Box "Éú§ õ†òö®·≠ú´ò† ´¶ Wcmoves"                         "ë≠·¢£ò 60002"
                    Else If (piSfalma(Self)=60003) Send Info_Box "Éú§ ô®‚üû°ú Wcmoves ö†ò §ò ´¶ õ†òö®·Ø‡"             "ë≠·¢£ò 60003"
                    Else If (piSfalma(Self)=60008) Send Stop_Box "Saved WCmoves but dont have Recr"
                End
                set pisfalma to 0
                If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnkleisimo

        Object frmIsClosed is a FormSub
            Set Size to 25 42
            Set Location to 2 458
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                    
            Set Shadow_State to True
            
            
            
            //AB-StoreEnd

        End_Object    // frmIsClosed

        Object btnwitemxen is a ButtonSub
            Set Label to "ButtonSub1"
            Set Bitmap to "Filesys3.bmp"
            Set Size to 20 25
            Set Location to 66 475
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Visible_State to FALSE

            //AB-StoreStart
            Set TooltipValue to "Ñ£≠·§†©û âÂ§û©û™ Äß¶ü„°û™"
            Procedure OnClick
                String  srecr swcmovesrecr sekleise switemxrecr wrecr
                Integer iRec rVal
                Get field_current_value of witemxtr_dd field witemxtr.ekleise to sekleise
                if (Not(sekleise));
                    send Info_Box "Ü Ñ§´¶¢„ £òù†°„™ õ†ò°Â§û©û™ ú†õÈ§ úÂ§ò† ò§¶†Æ´„.Éú§ ¨ß·®Æú† °Â§û©û ©´û§ òß¶ü„°û" "è¢û®¶≠¶®Âò"
                else begin
                    clear witemx
                    get field_current_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                    get field_current_value of witemxtd_dd field witemxtd.witemx_code  to switemxrecr
                    move syscurxr.company_code to witemx.company_code
                    move syscurxr.branch_code  to witemx.branch_code
                    move syscurxr.year_year    to witemx.year_year
                    move switemxrecr           to witemx.witemx_code
                    find eq witemx by index.5
                    move witemx.witemx_recr    to switemxrecr
                    set pswitemxrecr    to switemxrecr
                    set pswcmovesrecr   to srecr
                    set pifromparticl    of (kinapoth(self)) to 3
                    set psFindmovesrecr  of (kinapoth(Self)) to srecr
                    set psFinditemrecr   of (kinapoth(Self)) to switemxrecr
                    send Activate_kinapoth
                    send Request_Cancel to v182s
                end
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnwitemxen

        Object Witemxtr_Descr is a dbFormSub
            Entry_Item Witemxtr.Descr
            Set Size to 13 236
            Set Location to 7 175
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // Witemxtr_Descr

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "ÄßÊ òß¶ü„°û °Â§û©û ú†õÈ§"
            Set Location to 34 3
            Set Size to 10 89
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub11

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "ëú òß¶ü„°û °Â§û©û ú†õÈ§"
            Set Location to 48 3
            Set Size to 10 88
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub12

        Object FormSub3 is a FormSub
            Set Size to 13 141
            Set Location to 34 175
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub3

        Object FormSub5 is a FormSub
            Set Size to 13 141
            Set Location to 48 175
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub5

        Object Witemxtr_From_No is a dbCheckBoxSub
            Entry_Item Witemxtr.From_no
            Set Label to "åò £û§ öÂ§ú†"
            Set Size to 10 60
            Set Location to 37 322
            Set Checked_State to TRUE

            //AB-StoreStart
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Witemxtr_From_No

        Object Witemxtr_To_No is a dbCheckBoxSub
            Entry_Item Witemxtr.To_no
            Set Label to "åò £û§ öÂ§ú†"
            Set Size to 10 57
            Set Location to 51 322

            //AB-StoreStart
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Witemxtr_To_No

        Object btnekt is a ButtonSub
            Set Label to "ButtonSub1"
            Set Bitmap to "printer.bmp"
            Set Size to 21 24
            Set Location to 37 475
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Visible_State to FALSE

            //AB-StoreStart
            Set TooltipValue to "Ñ°´Áß‡©û ßò®ò©´ò´†°¶Á õ†ò°Â§û©û™ "
            Procedure OnClick
              string wrecr
              Get Field_Current_Value Of witemxtr_DD Field witemxtr.recr To wrecr
              Set psRecr  of (r182_0(self)) to Wrecr
              Send runprom1Report to (prom1WQLReport(r182_0(Self)))
            End_Procedure // OnClick
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnekt

        Object TextBoxSub18 is a TextBoxSub
            Set Label to "èò®ò©´ò´†°Ê"
            Set Location to 63 3
            Set Size to 12 51
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub18

        Object FormSub10 is a FormSub
            Set Size to 13 141
            Set Location to 64 175
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // FormSub10


        //AB-StoreStart
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
        //AB-StoreEnd

    End_Object    // Container1

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 162 507
        Set Location to 116 3
        Set Border_Style to Border_Normal
        Object dbTabPageSubS1 is a dbTabPageSubS
            Set Label to "dbTabPageSubS1"
            Object Witemxtd_ is a dbGridSub

                //AB-StoreTopStart
                
                //AB-StoreTopEnd

                Set Main_File to Witemxtd.File_Number
                Set Server to (Witemxtd_DD(self))
                Set Size to 119 499
                Set Location to 1 0
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Witemxtd.Recnum
                    Entry_Item Witemxtd.Witemx_code
                    Entry_Item (Fsitem(self,witemxtd.witemx_code))
                    Entry_Item Witemxtd.Fpa_from
                    Entry_Item (fsmtf(self,witemxtd.fpa_from))
                    Entry_Item Witemxtd.Texnikh
                    Entry_Item Witemxtd.Qty_from
                    Entry_Item Witemxtd.Wax_from
                    Entry_Item (fswax(self,witemxtd.wax_from))
                    Entry_Item Witemxtd.Wax_to
                    Entry_Item (fswax(self,witemxtd.wax_to))
                End_Row

                Set Form_Width    item 0 to 0
                Set Header_Label  item 0 to ""
                
                Set Form_Width    item 1 to 50
                Set Header_Label  item 1 to "â‡õ.ÑÂõ¶¨™"
                
                Set Form_Width    item 2 to 75
                Set Header_Label  item 2 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
                
                Set Form_Width    item 3 to 26
                Set Header_Label  item 3 to "í.ã"
                
                Set Form_Width    item 4 to 39
                Set Header_Label  item 4 to "âò´.ã´≠"
                
                Set Form_Width    item 5 to 50
                Set Header_Label  item 5 to "è®¶õ†òö®."
                
                Set Form_Width    item 6 to 35
                Set Header_Label  item 6 to "è¶©¶´."
                
                Set Form_Width    item 7 to 50
                Set Header_Label  item 7 to "ÄßÊ òß¶ü."
                
                Set Form_Width    item 8 to 60
                Set Header_Label  item 8 to "èú®†ö®ò≠„"
                
                Set Form_Width    item 9 to 50
                Set Header_Label  item 9 to "ëú òß¶ü."
                
                Set Form_Width    item 10 to 60
                Set Header_Label  item 10 to "èú®†ö®ò≠„"
                

                //AB-StoreStart
                
                set column_shadow_state item 0 to true
                Set Points Item  3 to 0
                Set Numeric_Mask    Item 3 to 14 0 ' ,*'
                Set Points Item  6 to 2
                
                set currentrowcolor to 11468799
                set currentcellcolor to 11468799
                //set column_shadow_state item 3 to true
                set column_shadow_state item 4 to true
                //set column_shadow_state item 6 to true
                set column_shadow_state item 8 to true
                set column_shadow_state item 10 to true
                set child_table_state to true
                
                Function Child_entering returns Integer
                    Integer rval
                    Forward Get Child_Entering to rVal
                    If (NOT(rVal)) Begin
                        If (NOT(piReadOnly(Witemxtr_DD(Self)))) If (Should_Save(Witemxtr_DD(Self))) Send Request_Save to Witemxtr_DD
                    End
                    function_return rVal
                End_Function
                
                Function Row_Save Returns Integer
                    Integer isClosed
                    Forward Get row_save to isClosed
                    If (NOT(isClosed)) Begin
                        Get piReadOnly Of Witemxtd_DD to isClosed
                        If (isClosed) Send Info_Box "Ü õ†ò°Â§û©û ‚Æú† ß®òö£ò´¶ß¶†ûüúÂ.\nÉú§ úß†´®‚ß¶§´ò† ò¢¢òö‚™" "è¢û®¶≠¶®Âò"
                    End
                    Function_Return isClosed
                End_Function
                
                
                Procedure Row_Delete
                    Integer isClosed
                    Get piReadOnly Of Witemxtd_DD to isClosed
                    If (isClosed) Send Info_Box "Ü õ†ò°Â§û©û ‚Æú† ß®òö£ò´¶ß¶†ûüúÂ.\nÉú§ úß†´®‚ßú´ò† û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
                    Else Forward Send Row_Delete
                End_Procedure
                
                
                
                procedure item_change integer fromi integer toi returns integer
                    Integer iColumn iFieldNumber iFileNumber isClosed
                    Integer iFromPCT iDecimals iYear iColfrom iColTo
                    String sNameFrom sNameTo sRecr rval## ritem## rprom##  name##  wname## sitem## lsitem##
                    local integer rval icol iBase_item
                    forward get msg_item_change fromi toi to rval
                    Get piReadOnly Of Witemxtd_DD to isClosed
                    if (isclosed<>1) begin
                        if (focus(Desktop) = (witemxtd_(self))) begin
                            Get Column fromi to iCol
                            if (icol=1) begin
                               Get Base_Item to iBase_item
                               Get Value Item (iBase_item+1) to rval##
                               Move (Fsitem(self,Rval##))    to rval##
                               Set value item (iBase_item+2) to Rval##
                            End
                        end
                    end
                    procedure_return rval
                end_procedure
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtd_

            Object Witemxtr_Qty is a dbFormSub
                Entry_Item Witemxtr.Qty
                Set Size to 13 44
                Set Location to 128 210
                Set Color to clNavy
                Set TextColor to clYellow
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Set Points Item  0 to 1
                //AB-StoreEnd

            End_Object    // Witemxtr_Qty

            Object TextBoxSub13 is a TextBoxSub
                Set Label to "ëÁ§¶¢ò :"
                Set Color to clNavy
                Set TextColor to clYellow
                Set Location to 128 163
                Set Size to 12 38
                Set FontWeight to 800
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub13

            Object btnMetasx is a ButtonSub

                //AB-StoreTopStart
                                                                                                                                                                                                
                //AB-StoreTopEnd

                Set Label to "ãú´ò©Æû£ò´†©£Ê™ ëú èò®òööú¢Âú™ è®¶£ûüú¨´È§"
                Set Bitmap to "AGGEL.BMP"
                Set Size to 20 22
                Set Location to 126 1
                Set Focus_Mode to Pointer_Only
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Visible_State to FALSE

                //AB-StoreStart
                                                                                                                                                                                                
                Set TooltipValue to "è®¶ú´¶†£ò©Âò ò¨´Ê£ò´‡§ úöö®ò≠È§ Äß¶ü„°û™ £ú °†§„©ú†™ û£‚®ò™"
                Procedure OnClick
                  integer libpo05 listatus retval irecnum  ibpoid ierr
                  string msgstr wrecr edate mdate ename mname scodem srecr sdescr  spar
                  date ddate
                
                  move 0 to ierr
                  Get YesNo_Box 'Ä®ÆÂùú† û õ†òõ†°ò©Âò ú§û£‚®‡©û™ ò®ÆúÂ‡§ £ú °†§„©ú†™ û£‚®ò™ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
                  If (RetVal =MBR_yes) begin
                     Get Field_Current_Value Of witemxtr_dd Field witemxtr.hmnia to ddate
                     Get Field_Current_Value Of witemxtr_dd Field witemxtr.recr  to srecr
                     if (srecr<>'') send request_save to witemxtr_dd
                     if (ddate = '' or srecr = '') begin
                        move '' to msgstr
                        Move "Éú§ ‚Æ‡ ú§ú®ö„ úöö®ò≠„ !!" to MsgStr
                        move 1 to ierr
                        Send Info_Box MsgStr
                     end
                     get value of (formsub10(container1(self))) to sdescr
                     get value of (formsub9(container1(self))) to spar
                     if (sdescr = '' or spar = '') begin
                        move '' to msgstr
                        Move "Éú§ ‚Æ‡ ú§ú®ö„ úöö®ò≠„ èò®ò©´ò´†°¶Á" to MsgStr
                        move 1 to ierr
                        Send Info_Box MsgStr
                     end
                  end
                  if (ierr=0) begin
                     begin_transaction
                       Set pddate      of (rdiakin(self))  to ddate
                       Set psrecr      Of (rdiakin(self))  to srecr
                       set pspar       Of (rdiakin(self))  to spar
                       Send StartReport to Rdiakin
                     end_transaction
                     if (not(err)) begin
                         Move "Ñ§û£‚®‡©û Ä®ÆúÂ‡§ £ú °†§„©ú†™ û£‚®ò™ ¶¢¶°¢û®Èüû°ú !!"  to MsgStr
                         Send Info_Box MsgStr
                     end
                     else begin
                         Move "Ü õ†òõ†°ò©Âò õú§ ¶¢¶°¢û®Èüû°ú ©‡©´· !!" to MsgStr
                         Send Info_Box MsgStr
                     end
                     send clear to witemxtr_dd
                     move srecr to witemxtr.recr
                     send find to witemxtr_dd eq 2
                     send beginning_of_data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) true
                  end
                  indicate err false
                
                End_Procedure // OnClick
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnMetasx

            Object ButtonSub1 is a ButtonSub
                Set Label to "ButtonSub1"
                Set Bitmap to "tvasp32.bmp"
                Set Size to 20 22
                Set Location to 126 33
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Visible_State to FALSE

                //AB-StoreStart
                Set TooltipValue to "ãú´ò≠¶®· ©´¶ Ä®ÆúÂ¶ °ò´ò§ò¢È©ú‡§"
                Procedure OnClick
                    string sitem  stexnikh
                    date ddate
                    integer imetaf iekleise
                    Get field_current_value of witemxtr_dd field witemxtr.ekleise to iekleise
                    get field_current_value of witemxtd_dd field witemxtd.witemx_code to sitem
                    get field_current_value of witemxtd_dd field witemxtd.fpa_from    to imetaf
                    get field_current_value of witemxtr_dd field witemxtr.hmnia       to ddate
                    get field_current_value of witemxtd_dd field witemxtd.texnikh     to stexnikh
                
                    set psitem    of (vanprod(self)) to sitem
                    set pstexnikh of (vanprod(self)) to stexnikh
                    set pddate    of (vanprod(Self)) to ddate
                    set pimetaf   of (vanprod(Self)) to imetaf
                    set piekleise of (vanprod(Self)) to iekleise
                    Set pihmera   of (vanprod(Self)) to 0
                    send Activate_vanprod
                End_Procedure // OnClick
                
                
                
                
                //AB-StoreEnd

            End_Object    // ButtonSub1

            Object btnanprod is a ButtonSub
                Set Label to "ButtonSub1"
                Set Bitmap to "print17.bmp"
                Set Size to 21 24
                Set Location to 124 277
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Visible_State to FALSE

                //AB-StoreStart
                Set TooltipValue to "Ñ°´Áß‡©û Ä§ò¢È©ú‡§ Ñ†õÈ§ "
                Procedure OnClick
                  string wrecr
                  date ddate
                  integer icheck
                  get checked_state of fcheck item 0 to icheck
                  Get Field_Current_Value Of witemxtr_DD Field witemxtr.hmnia To ddate
                  Get Field_Current_Value Of witemxtr_DD Field witemxtr.recr To wrecr
                  Set pddate  of (ranprod(self)) to ddate
                  set psrecr  of (ranprod(self)) to wrecr
                  set picheck of (ranprod(self)) to icheck
                  Send runprom1Report to (prom1WQLReport(ranprod(Self)))
                End_Procedure // OnClick
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnanprod

            Object fCheck is a CheckBoxSub
                Set Label to "Ä§ò¢È©ú†™ Æ‡®Â™ ú§´¶¢„ É†ò°†§„©ú‡™"
                Set Size to 10 145
                Set Location to 130 307
                Set Visible_State to FALSE
            End_Object    // fCheck

            Object ButtonSub2 is a ButtonSub
                Set Label to "ButtonSub1"
                Set Bitmap to "cardfile.bmp"
                Set Size to 20 22
                Set Location to 126 125
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Visible_State to FALSE

                //AB-StoreStart
                Set TooltipValue to "âò´ò§ò¢È©ú†™ Æ‡®Â™ Ñ§´¶¢„"
                Procedure OnClick
                    string sitem  stexnikh
                    date ddate
                    integer imetaf iekleise
                    Get field_current_value of witemxtr_dd field witemxtr.ekleise to iekleise
                    get field_current_value of witemxtd_dd field witemxtd.witemx_code to sitem
                    get field_current_value of witemxtd_dd field witemxtd.fpa_from    to imetaf
                    get field_current_value of witemxtr_dd field witemxtr.hmnia       to ddate
                    get field_current_value of witemxtd_dd field witemxtd.texnikh     to stexnikh
                
                    set psitem    of (vanprod(self)) to ''
                    set pstexnikh of (vanprod(self)) to ''
                    set pddate    of (vanprod(Self)) to ddate
                    set pimetaf   of (vanprod(Self)) to ''
                    set piekleise of (vanprod(Self)) to ''
                    Set pihmera   of (vanprod(Self)) to 0
                    send Activate_vanprod
                End_Procedure // OnClick
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // ButtonSub2

            Object ButtonSub3 is a ButtonSub
                Set Label to "ButtonSub3"
                Set Bitmap to "AMOVIE0.BMP"
                Set Size to 22 25
                Set Location to 124 471
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Visible_State to FALSE

                //AB-StoreStart
                Set TooltipValue to "âò´ò§ò¢È©ú†™ Ü£‚®ò™"
                Procedure OnClick
                    string sitem  stexnikh
                    date ddate
                    integer imetaf iekleise
                    Get field_current_value of witemxtr_dd field witemxtr.ekleise to iekleise
                    get field_current_value of witemxtd_dd field witemxtd.witemx_code to sitem
                    get field_current_value of witemxtd_dd field witemxtd.fpa_from    to imetaf
                    get field_current_value of witemxtr_dd field witemxtr.hmnia       to ddate
                    get field_current_value of witemxtd_dd field witemxtd.texnikh     to stexnikh
                    set psitem    of (vanprod(self)) to ''
                    set pstexnikh of (vanprod(self)) to ''
                    set pddate    of (vanprod(Self)) to ddate
                    set pimetaf   of (vanprod(Self)) to ''
                    set piekleise of (vanprod(Self)) to ''
                    Set pihmera   of (vanprod(Self)) to 1
                    send Activate_vanprod
                End_Procedure // OnClick
                
                
                
                //AB-StoreEnd

            End_Object    // ButtonSub3


            //AB-StoreStart
            Set label to 'ÑÂõû ß®¶™ É†ò°Â§û©û'
            
            //AB-StoreEnd

        End_Object    // dbTabPageSubS1

    End_Object    // dbTabDialogSubS1


    //AB-StoreStart
                                
    set verify_data_loss_msg    to get_no_confirmation
    set verify_exit_msg         to get_no_confirmation
    
    Procedure Activate_View Returns Integer
        string srecr
        integer rval
        Forward Get MSG_Activate_View to Rval
        set pscompany of (wax(self)) to syscurxr.company_code
        set psbranch  of (wax(self)) to syscurxr.branch_code
        set piyear    of (wax(self)) to syscurxr.year_year
        set pswapokat of (wax(self)) to ''
        get psfindrecr to srecr
        if (srecr <> '') begin
           SEND CLEAR to witemxtr_dd
           move srecr to witemxtr.recr
           send find to witemxtr_dd eq 2
        end
        procedure_return rval
        send activate to  (witemxtr_hmnia(container1(self)))
    End_Procedure
    
    procedure request_cancel
        set psfindrecr to ''
        forward send request_cancel
    end_procedure
    
    procedure close_panel
        set psfindrecr to ''
        forward send close_panel
    end_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V182ss


//AB-StoreStart
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//AB-StoreEnd

//AB/ End_Object    // prj
