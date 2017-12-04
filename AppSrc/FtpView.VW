//AB/ Project FtpView
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "FtpView"
//AB/     Set ProjectFileName to "FtpView.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   FtpView is a dbViewSubs
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Tmpsel_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     frmAddress is a FormSub
//     frmUserName is a FormSub
//     frmPassword is a FormSub
//     frmDirectory is a FormSub
//     btn_Connect is a ButtonSub
//       TimerObj is a DFTimer
//     oStatusForm is a EditSub
//     btnSelectFolder is a ButtonSub
//     FormSub1 is a FormSub
//     BtnFillList is a ButtonSub
//     dbGridSub1 is a dbGridSub
//     txtSel is a TextBoxSub
//     txtCount is a TextBoxSub
//     btn_Select is a ButtonSub
//     btnDel is a ButtonSub
//     frmMessage is a FormSub
//     HmApo is a cSyDateForm
//     HmEos is a cSyDateForm
//     ButtonSub1 is a ButtonSub
//       TimerObj2 is a DFTimer
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     frmConn is a FormSub
//     oDirectoryPicker is a OLEDPDlg
//     oRecursiveFileFinder is a OLExfind
//     Tmpsel_DD2 is a Tmpsel_DataDictionary
//     oInternetErrorArray is a Array

// Register all objects
Register_Object BtnFillList
Register_Object ButtonSub1
Register_Object btn_Connect
Register_Object btn_Select
Register_Object btnChangeXr
Register_Object btnDel
Register_Object btnSelectFolder
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object dbGridSub1
Register_Object dbGrpYear
Register_Object FormSub1
Register_Object Fpa_DD
Register_Object FtpView
Register_Object frmAddress
Register_Object frmConn
Register_Object frmDirectory
Register_Object frmMessage
Register_Object frmPassword
Register_Object frmUserName
Register_Object HmApo
Register_Object HmEos
Register_Object Item_DD
Register_Object oDirectoryPicker
Register_Object oInternetErrorArray
Register_Object oRecursiveFileFinder
Register_Object oStatusForm
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TimerObj
Register_Object TimerObj2
Register_Object Tmpsel_DD
Register_Object Tmpsel_DD2
Register_Object txtCount
Register_Object txtSel
Register_Object Units_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open tmpSel
Open HmerProg
Open Btnemp
Open Sysrecc
Open Antech
Open AnProd
Open Iteml
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use Txtbox.Sub
Use Cmbfrm.Sub
Use Button.Sub
Use Form.Sub
Use Edit.Sub
Use dbGrid.Sub
Use cSyDateForm.Pkg

Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use tmpSel.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_FtpView FOR FtpView

Object FtpView is a dbViewSubs

    //AB-StoreTopStart
    Property Integer    piCount                 Public  0
    Property String     psBranchPhone           Public ''
    Property String     psSysfileFilesSendPath  Public ''
    Property String     psBranchSendPathFiles   Public ''
    Property String     psBranchSendPathConf    Public ''
    Property Integer    piFtpSecondsRetry       Public  0
    Property Integer    piFtpTimesExit          Public  0
    Property Integer    piReceivedOK            Public  0
    Property Integer    piTimesCount            Public  0
    Property Integer    piFileRetreived         Public  0
    Property Integer    piFromProgrammatismo    Public  0
    Property Integer    piErrorOccured          Public  0
    Property String     psBranchRecr            Public ''
    property Integer    bConnectionStatus       public False
    
    External_Function32 WNetGetUser "WNetGetUserA" MPR.DLL ;
        Pointer lpName Pointer lpUser_Name Pointer lpLength Returns DWord
    
    Function Network_User_Name Returns String
        Local String sName sLength
        Local Pointer lpName_Addr lpLength_Addr
        Local Integer iRetval
        Movestr (Repeat (Character (0), 255)) To sName
        GetAddress Of sName To lpName_Addr
        Movestr (DwordToBytes (255)) To sLength
        GetAddress Of sLength To lpLength_Addr
        Moveint (WNetGetUser (0, lpName_Addr, lpLength_Addr)) To iRetval
        If iRetval Eq 0 Function_Return (CString (sName))
        Else Function_Return "User Unknown"
    End_Function // Network_User_Name
    
    Function fsVresEggrafh String asFileName returns Integer
        Integer rVal
        Move (UpperCase(asFileName)) to asFileName
        Move (Trim(asFileName)) to asFileName
        Function_Return rVal
    End_Procedure
    
    Function fsVresExt String asFileName Returns String
        String rVal
        Integer iPos iLen
        Move (UpperCase(asFileName)) to asFileName
        Move (Trim(asFileName)) to asFileName
        Move 0 to iPos
        For iLen from 1 to (length(asFileName))
            If (Mid(asFileName,1,iLen)='.') Move iLen to iPos
        Loop
        If (Not(iPos)) Function_Return ''
        Move (Right(asFileName,(Length(asFileName)-iPos))) to rVal
        Move (Trim(rVal)) to rVal
        Function_Return rVal
    End_Function
    
    Set Verify_Exit_Msg         to Get_No_Confirmation
    Set Verify_Save_Msg         to Get_No_Confirmation
    Set Verify_Data_Loss_Msg    to Get_No_Confirmation
    
    Register_Object     oInternetErrorArray
    Register_Procedure  ShowInternetErrorMessage integer iInetError
    Register_Object     oRecursiveFileFinder
    Register_Object     oDirectoryPicker
    Register_Object     Tmpsel_DD2
    //Register_Object     MyRas
    
    Function fiCloseDialup Returns Integer
        Integer rVal iStat
        If (psBranchPhone(self)<>'') Begin
            If (bConnectionStatus(Self)) begin
               Move (dvInternetHangup())    to iStat
               If iStat Eq 0 Begin
                    Set bConnectionStatus   to False
                    Move 1 to rVal
               End
               Else Begin
                    Move 0 to rVal
                    Send Info_Box "Éú§ £ß¶®È §ò °¢úÂ©‡ ´û§ ö®ò££„" "è¢û®¶≠¶®Âò"
               End
            End
            Else Move 1 to rVal
        End
        Else Move 1 to rVal
        Function_Return rVal
    End_Function
    
    Function fiGetFile String asRemoteFile String asLocalFile Integer aiCancelIfExist Integer aiType Returns Integer
        // aiCancelIfExist  =0 Overwrites local file if already exists
        // aiCancelIfExist  =1 Cancel transfer if local file already exists
        // aiType           =0 ASCII transfer method (Control and formatting
        //                     information is converted to local equivalents.
        //                  =1 BINARY transfer method. The file is
        //                     transferred exactly as it exists with no changes.
        Integer iRetVal
        send AddInfo to (oStatusForm(Self)) ;
            ("ä„Øû"*asRemoteFile*"©ú"*asLocalFile-"...")
        move ( dvFtpGetFile (asRemoteFile,asLocalFile,0,1)) to iRetVal
        if iRetVal begin
            Function_Return iRetVal
        end
        send AddInfo to (oStatusForm(Self)) ("í¶ ò®ÆúÂ¶"*asRemoteFile*"ú¢„≠üú†")
        Function_Return 0
    End_Function
    
    Function fiSendFile String asLocalFile String asRemoteFile Integer aiMode Returns Integer
        // aiType           =0 ASCII transfer method (Control and formatting
        //                     information is converted to local equivalents.
        //                  =1 BINARY transfer method. The file is
        //                     transferred exactly as it exists with no changes.
        Integer iRetVal
        send AddInfo to (oStatusForm(Self)) ;
            ("Äß¶©´¶¢„ ò®ÆúÂ¶¨ "*asLocalFile*"©ú"*asRemoteFile-"...")
        move (dvFtpPutFile(asLocalFile,asRemoteFile,1)) to iRetVal
        if iRetVal begin
            Function_Return iRetVal
        end
        send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶"*asLocalFile*"ú©´·¢ú†")
        Function_Return 0
    End_Function
    
    
    //AB-StoreTopEnd

    Set Label to "ãú´ò≠¶®· Ä®ÆúÂ‡§ £‚©‡ FTP"
    Set Size to 287 523
    Set Location to 2 3

    //AB-DDOStart

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

    Object Tmpsel_DD is a Tmpsel_DataDictionary
    End_Object    // Tmpsel_DD

    Set Main_DD to (Tmpsel_DD(self))
    Set Server to (Tmpsel_DD(self))

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
        Set Location to -3 3
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
                        If (iYes=MBR_YES) Send OnClick to (pibtnChangeXrID(Self))
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
                        If (iYes=MBR_YES) Send OnClick to (pibtnChangeXrID(Self))
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
                        If (iYes=MBR_YES) Send OnClick to (pibtnChangeXrID(Self))
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

    Object frmAddress is a FormSub
        Set Label to "É†úÁü¨§©û FTP"
        Set Size to 13 98
        Set Location to 191 3
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        //AB-StoreEnd

    End_Object    // frmAddress

    Object frmUserName is a FormSub
        Set Size to 13 195
        Set Location to 206 3
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmUserName

    Object frmPassword is a FormSub
        Set Size to 13 195
        Set Location to 220 3
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Password_State Item 0 to TRUE

        //AB-StoreStart
                                
        Set Password_State to True
        
        //AB-StoreEnd

    End_Object    // frmPassword

    Object frmDirectory is a FormSub
        Set Size to 13 195
        Set Location to 234 3
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmDirectory

    Object btn_Connect is a ButtonSub
        Set Label to "ãú´ò≠¶®· úß†¢úö£‚§‡§ ò®ÆúÂ‡§"
        Set Size to 16 195
        Set Location to 255 3
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Object TimerObj Is A DFTimer
        
            Property Integer piForesCount   Public  0
            Property String  psRemFile   Public ''
            Property String  psLocFile    Public ''
        
            Set Auto_Start_State    to False
            Set Auto_Stop_State     to False
        
            Procedure OnTimer
                Integer iCount rVal
                Get piForesCount to iCount
                send AddInfo to (oStatusForm (Self)) ("èú®†£‚§‡ ¢„Øû ò®ÆúÂ¶¨ "*(Trim(psRemFile(Self)))-"...")
                Increment iCount
                Get fiGetFile Of FtpView (psRemFile(Self)) (psLocFile(Self)) 0 1 to rVal
                If (Not(rVal)) Begin
                    Set piFileRetreived to 1
                    Send Stop_Timer
                End
                Set piForesCount to iCount
                If (iCount>(piFtpTimesExit(Self))) Send Stop_Timer
            End_Procedure
        
        End_Object
        
        Procedure Start_Timer String asRemoteFile String asLocalFile
            Set piFileRetreived                         to 0
            Set piForesCount        of (TimerObj(Self)) to 0
            Set psRemFile           of (TimerObj(Self)) to (Trim(asRemoteFile))
            Set psLocFile           of (TimerObj(Self)) to (Trim(asLocalFile))
            Set Timeout             of (TimerObj(Self)) to (piFtpSecondsRetry(Self)*1000)
            Set Timer_Active_State  of (TimerObj(Self)) to True // Starts timer
        End_Procedure
        
        
        Procedure Stop_Timer
            Integer iFileRetreived iMetr iRecnum iStat
            String  sFile
            Set Timer_Active_State of (TimerObj(Self)) to False // Stops Timer
            // Check property set by timer if zrok.txt is received
        
            Get fiCloseDialup   to iStat
        
            Get piFileRetreived to iFileRetreived
        
            If (Not(iFileRetreived)) Begin
                Send Info_Box 'Éú§ ú¢„≠üú† ´¶ ò®ÆúÂ¶ úß†ôúôòÂ‡©û™' 'è¢û®¶≠¶®Âò'
                Procedure_Return
            End
            Get psLocFile Of TimerObj   to sFile
            Move (Trim(sFile))          to sFile
            send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶ ú¢„≠üú† - "*sFile-" - ...")
            // Read zrok.txt and flag Hmerprog for all recnums
            // in zrok.txt that records were correctly sent
            Direct_Input Channel 9 sFile
            Move 0 to iMetr
            Readln Channel 9 iRecnum
            If (Seqeof) Begin
                Send Info_Box 'í¶ ò®ÆúÂ¶ zrok.txt õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                Procedure_Return
            End
        
            While (NOT(Seqeof))
                Add 1 to iMetr
                send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û è®¶ö®ò££ò´†©£¶Á " + String(iMetr)+ " ...")
                Clear HmerProg
                Move iRecnum to HmerProg.Recnum
                Find Eq HmerProg.Recnum
                If (Found) Begin
                    Reread HmerProg
                    Move 1 to HmerProg.Sent
                    Saverecord Hmerprog
                    Unlock
                End
                Readln Channel 9 iRecnum
            Loop
            Send Info_Box 'Ü òß¶©´¶¢„ °ò† û ¢„Øû ¶¢¶°¢û®Èüû°ò§' 'è¢û®¶≠¶®Âò'
            Send Delete_Data    to oStatusForm
            Set Value of frmMessage Item 0 to ''
            Send Paint          to oStatusForm
            Send OnClick to btn_Select
        End_Procedure
        
        Function fiFTPVerify Returns Integer
            String  sFtp sUser sPassword sDir
            Get Value Of frmAddress     to sFtp
            Get Value Of frmUserName    to sUser
            Get Value Of frmPassword    to sPassword
            Get Value Of frmDirectory   to sDir
            Move (Trim(sFtp))           to sFtp
            Move (Trim(sUser))          to sUser
            Move (Trim(sPassword))      to sPassword
            Move (Trim(sDir))           to sDir
            Clear TmpSel
            Move '1' to TmpSel.Is_Selected
            Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
            If ((Found=1) And (TmpSel.Is_Selected='1')) Begin
                If ((sFtp<>'')      And (sUser<>'') And ;
                    (sPassword<>'') And (sDir<>'')) Function_Return 1
                Else Begin
                    Function_Return 0
                End
            End
            Else Function_Return -1
        End_Function
        
        Procedure OnClick
            Integer isOK rVal iMetr iRecnum iFileRetreived isAvailable iStat
            String  sFtp sUser sPassword sDir sConnectString sConnectCommand
            String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
            String  sSysfileFilesSendPath sFullFileName sFileName sStr
            Integer isConnected iSelectCount iInt iSelRec iErr iClientId iObj
        
            Set Value of frmMessage Item 0 to ''
            Send Delete_Data    to oStatusForm
            Send Paint          to oStatusForm
        
            Clear Branch
            Move Syscurxr.Company_Code      to Branch.Company_Code
            Move Syscurxr.Branch_Code       to Branch.Branch_Code
            Find Eq Branch By Index.1
        
            Move Branch.SEND_PATH_FILES     to sBranchSendPathFiles
            Move Branch.SEND_PATH_CONF      to sBranchSendPathConf
            Move Sysfile.FILES_SEND_PATH    to sSysfileFilesSendPath
        
            Get Value Of frmAddress     to sFtp
            Get Value Of frmUserName    to sUser
            Get Value Of frmPassword    to sPassword
            Get Value Of frmDirectory   to sDir
        
            Move (Trim(sFtp))           to sFtp
            Move (Trim(sUser))          to sUser
            Move (Trim(sPassword))      to sPassword
            Move (Trim(sDir))           to sDir
        
            Move sSysfileFilesSendPath  to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zsok.txt'
            Move (Trim(sLocalFile)) to sLocalFile
            EraseFile sLocalFile
        
            Move sSysfileFilesSendPath  to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zsendd.txt'
            EraseFile sLocalFile
        
            Move sSysfileFilesSendPath  to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zbtnemp.txt'
            EraseFile sLocalFile
        
            EraseFile 'C:\Welcome.txt'
            Send Delete_Data    to oStatusForm
            Set Value of frmMessage Item 0 to ''
        
            Get fiFTPVerify to isOK
        
            If (isOK=1) Begin
        
        //////////////////////////////////////////////////////////////////
                If (psBranchPhone(self)<>'') Begin
        
                   set bConnectionStatus to FALSE
        
                   //first get the connect state of the local system
                   move (dvInternetGetConnectedState()) to iStat
        
                   if iStat eq 4 begin
                      send Info_Box "í¶ modem úÂ§ò† òßò©Æ¶¢û£‚§¶." "è¢û®¶≠¶®Âò"
                      procedure_return
                   end
        
                   If iStat eq 0 begin
                      // there is no Internet connection and the modem is not busy, so let's dial...
                      // phonebook entry this would be something like this
                      // move (dvInternetAutodial()) to iStat
                      move (dvInternetDial((psBranchPhone(self)))) to iStat
        
                      If iStat eq 0 set bConnectionStatus to True
                      Else Begin
                         Send Info_Box "Ü ©Á§õú©û õú§ £ß¶®úÂ §ò ¶¢¶°¢û®‡üúÂ" "è¢û®¶≠¶®Âò"
                         Procedure_Return
                      End
                   End
        
                End
        
                Move '' to sConnectCommand
                Move '' to sConnectString
        
                send AddInfo to (oStatusForm (Self)) ("ëÁ§õú©û "*sFtp-"...")
        
                // Connect to ftp site
                if (trim(sFtp)<>'') begin
                    if ( sUser<>"") begin
                       //Get dvInternetConnect sFtp sUser sPassword 0 to rVal
                       Move (dvInternetConnect(sFtp,sUser,sPassword,0)) to rVal
                    end
                    else move (dvInternetConnect(sFtp,"","",0)) to rVal //anonymous login
                    //Else Get dvInternetConnect sFtp "" "" 0 to rVal
                end
                if rVal begin
                    send ShowInternetErrorMessage rVal
                    Get fiCloseDialup to iStat
                    procedure_return
                end
        
                Move 'Welcome.txt'      to sRemoteFile
                Move 'C:\Welcome.txt'   to sLocalFile
                Get fiGetFile Of FtpView sRemoteFile sLocalFile 0 1 to rVal
                If (rVal) Begin
                    Send ShowInternetErrorMessage rVal
                    Get fiCloseDialup to iStat
                    //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect Of MyRas
                    Procedure_Return
                End
        
                Direct_Input    Channel 9 sLocalFile
                Readln          Channel 9 sStr
                Close_Input     Channel 9
                Set Value of frmMessage Item 0 to (Trim(sStr))
        
                Move 0 to iInt
                Move 0 to iSelectCount
                Clear TmpSel
                Move '1' to TmpSel.Is_Selected
                Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                While ((Found=1) And (TmpSel.Is_Selected='1'))
                    Add 1 to iSelectCount
                    Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                Loop
        
                If (iSelectCount>0) Begin
                    Clear TmpSel
                    Move '1' to TmpSel.Is_Selected
                    Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                    While ((Found=1) And (TmpSel.Is_Selected='1'))
                        Move (Trim(TmpSel.Full_Path_Name))                  to sFullFileName
                        Move (Trim(fsReturnFileFromPath(sFullFileName)))    to sFileName
                        Move sFullFileName  to sLocalFile
                        Move sFileName      to sRemoteFile
        //                Insert '/' in sRemoteFile   at 1
                        Insert sDir in sRemoteFile  at 1
                        Get fiSendFile Of FtpView sLocalFile sRemoteFile 1 to rVal
                        If (rVal) Begin
                            Send ShowInternetErrorMessage rVal
                            Get fiCloseDialup to iStat
                            //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                            //Send RasXComDisConnect Of MyRas
                            Procedure_Return
                        End
                        Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                    Loop
        
                    // Prepare zsok.txt filename
                    Move sSysfileFilesSendPath                  to sLocalFile
                    Move (Trim(sLocalFile))                     to sLocalFile
                    Append sLocalFile 'zsok.txt'
                    Move (Trim(sLocalFile))                     to sLocalFile
        
                    Move (Trim(sBranchSendPathConf)+'zsok.txt') to sRemoteFile
        
                    // Create zsok.txt file
                    Direct_Output   Channel 9 sLocalFile
                    Write           Channel 9 '1234'
                    Writeln         Channel 9
                    Close_Output    Channel 9
        
                    // Send zsok.txt file
                    Get fiSendFile Of FtpView sLocalFile sRemoteFile 1 to rVal
                    If (rVal) Begin
                        Send ShowInternetErrorMessage rVal
                        Get fiCloseDialup to iStat
                        //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                        //Send RasXComDisConnect Of MyRas
                        Procedure_Return
                    End
        
                    // Prepare zrok.txt filename
                    Move (Trim(sSysfileFilesSendPath))  to sLocalFile
                    Append sLocalFile 'zrok.txt'
                    Move (Trim(sBranchSendPathConf)+'zrok.txt') to sRemoteFile
        
                    // Delete previous local zrok.txt
                    EraseFile sLocalFile
        
                    // Call timer event to bring zrok.txt file
                    // Program flow control continues in Stop_Timer
                    Send Start_Timer sRemoteFile sLocalFile
        
                End
                Else Begin
                    Send Info_Box 'Éú§ ô®‚üû°ú ò®ÆúÂ¶ ß®¶™ òß¶©´¶¢„'
                    Get fiCloseDialup to iStat
                    //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect Of MyRas
                    Procedure_Return
                End
            End
            Else Begin
                If (isOK=(-1)) Begin
                    Send Info_Box "Éú§ ô®‚üû°ú °·ß¶†ò úß†¢úö£‚§û úöö®ò≠„"
                End
                Else If (sFtp='') Begin
                    Send Info_Box "FTP Address field is empty"
                    Send Activate to frmAddress
                End
                Else If (sUser='') Begin
                    Send Info_Box "User field is empty"
                    Send Activate to frmUserName
                End
                Else If (sPassword='') Begin
                    Send Info_Box "Password field is empty"
                    Send Activate to frmPassword
                End
                Else If (sDir='') Begin
                    Send Info_Box "Directory field is empty"
                    Send Activate to frmDirectory
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btn_Connect

    Object oStatusForm is a editSub
        Set Size to 28 254
        Set Location to 191 210
        Set Color to clBtnFace
        Set Enabled_State to FALSE
        Set Read_Only_State to TRUE

        //AB-StoreStart
                                
        Procedure AddInfo string sInfo
            Send beginning_of_data
            append sInfo (character(13)+character(10))
            send insert sInfo
            send paint
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // oStatusForm

    Object btnSelectFolder is a ButtonSub

        //AB-StoreTopStart
                                
                                
        //AB-StoreTopEnd

        Set Label to "Ñß†¢¶ö„ ≠ò°‚¢¢¶¨"
        Set Size to 14 137
        Set Location to 2 165
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Visible_State to False
        
        Procedure OnClick
            Integer iInt
            String sStr sStr2
            //Send Activate to oDirectoryPicker
            SET DPDlgPath Of oDirectoryPicker to (Trim(Sysfile.Files_Send_Path))
            //SET DPDlgPath Of oDirectoryPicker to (ToAnsi(fsGetLastDir()))
            Move (DPDlgShow(oDirectoryPicker(Self)))  to sStr
            GET DPDlgPath Of (oDirectoryPicker(Self)) to sStr2  // Full Path
            Move (Trim(sStr2)) to sStr2
            Set piCount                     to 0
            If (sStr2<>'')  Begin
                Set Value Of FormSub1 Item 0 to (Uppercase(TOOEM(sStr2)))
        
                Clear TmpSel
                Find Gt Tmpsel.recnum
                While (Found=1)
                    Delete TmpSel
                    Find Gt Tmpsel.recnum
                Loop
        
                Get fiPutLastDir (TOOEM(sStr2)) to iInt
                Send OnClick                  to btnFillList
            End
            Else Set Value Of FormSub1 Item 0 to ''
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // btnSelectFolder

    Object FormSub1 is a FormSub
        Set Size to 13 157
        Set Location to 2 306
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_FontHeight Item 0 to 14
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "Arial"
        Set Implicit_Shadow_State to TRUE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                
        Set Visible_State to False
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object BtnFillList is a ButtonSub
        Set Label to "Fill List With all Multimedia Files"
        Set Size to 14 263
        Set Location to 2 4
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Visible_State to False
        
        Procedure OnClick
            Integer isRecursive iInt
            String sExt sFrom
        
            Send Cursor_Wait to (Cursor_Control(Self))
        
            Move (Uppercase(Value(FormSub1(Self),0)))   to sFrom
            Move (Trim(sFrom))                          to sFrom
        
            If ((Uppercase(Left(sFrom,2))='A:') Or ((sFrom<>'') And (Length(sFrom)>3))) Begin
                Move '*.*' to sExt
                Set xfindSearchString          Of oRecursiveFileFinder   to (Trim(sExt))
                Set xfindSearchFrom            Of oRecursiveFileFinder   to sFrom
                Set xfindSearchSubDirs         Of oRecursiveFileFinder   to (isRecursive)
                Send xfindStartSearching       to oRecursiveFileFinder
            End
            Send Beginning_Of_Data to dbGridSub1
            Send Cursor_Ready to (Cursor_Control(Self))
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // BtnFillList

    Object dbGridSub1 is a dbGridSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Set Main_File to Tmpsel.File_Number
        Set Ordering to 1
        Set Size to 161 458
        Set Location to 28 5
        Set Wrap_State to TRUE
        Set No_Create_State to TRUE
        Set No_Delete_State to TRUE
        Set Validate_Mode to Validate_Default

        Begin_Row
            Entry_Item Tmpsel.Is_selected
            Entry_Item Tmpsel.Pathname
            Entry_Item Tmpsel.Filename
            Entry_Item Tmpsel.Extension
            Entry_Item Tmpsel.Full_path_name
        End_Row

        Set Form_Width    item 0 to 14
        Set Header_Label  item 0 to "Ñ"
        Set Column_Checkbox_State  item 0 to True
        
        Set Form_Width    item 1 to 129
        Set Header_Label  item 1 to "î·°ú¢¢¶™"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "Ä®ÆúÂ¶"
        
        Set Form_Width    item 3 to 32
        Set Header_Label  item 3 to "ïò®"
        
        Set Form_Width    item 4 to 211
        Set Header_Label  item 4 to "è¢„®ú™ Ê§¶£ò"
        

        //AB-StoreStart
                                
        set currentrowcolor  to 11468799
        set currentcellcolor to 11468799
        
        Procedure Find_Poses
            Local Number cCount iFs iCount
            File_Size tmpSel to iFs
            Get Select_Count Of dbGridSub1 to cCount
            If (iFs) Begin
                If (cCount) Set Label Of btn_Select to ("Deselect all "+(String(cCount))+" File(s)")
                Else        Set Label Of btn_Select to ("Select all "  +(String(iFs))   +" File(s)")
            End
            Else Set Label Of btn_Select to ("Select all "  +(String(iFs))   +" File(s)")
            Set piCount to cCount
            Set Label of txtCount to (piCount(Self))
        End_Procedure
        
        Procedure Select_Toggling Integer i1 Integer i2
            Local integer cCount bState iBase iFs
            Local integer iCol
            Forward Send Select_Toggling i1 i2
            If (Should_Save(TmpSel_DD(Self))) Send Request_Save to TmpSel_DD
            Send Find_Poses
        End_Procedure
        
        //Procedure Entry_Display Integer i1 Integer i2
        //    Integer iBase iInt iRec
        //    String sStr
        //    Forward Send Entry_Display i1 i2
        //    //Send Find_Poses
        //End_Procedure
        
        //AB-StoreEnd

    End_Object    // dbGridSub1

    Object txtSel is a TextBoxSub
        Set Label to "Ñß†¢úö£‚§ò"
        Set Location to 172 4
        Set Size to 10 39
        Set Justification_Mode to jMode_Right
        Set TypeFace to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Visible_State to False
        
        //AB-StoreEnd

    End_Object    // txtSel

    Object txtCount is a TextBoxSub
        Set Label to "label"
        Set Location to 172 48
        Set Size to 10 18
        Set Justification_Mode to jMode_Right
        Set TypeFace to "MS Sans Serif"

        //AB-StoreStart
        Set Label to ''
        
        Set Visible_State to False
        
        //AB-StoreEnd

    End_Object    // txtCount

    Object btn_Select is a ButtonSub
        Set Label to "Ñß†¢¶ö„ Ê¢‡§"
        Set Size to 14 195
        Set Location to 172 136
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Visible_State to False
        
        Set Focus_Mode to Pointer_Only
        
        Procedure Select_All
            Integer cCount
            Number iFs
            File_Size tmpSel to iFs
            Set Dynamic_Update_State to False
            Send Clear  to Tmpsel_DD2
            Send Find   to tmpSel_DD2 gt 1
            While (Found=1)
                If (tmpSel.Is_Selected<>'1') Begin
                    Set Field_Changed_Value Of TmpSel_DD2 Field Tmpsel.Is_selected to '1'
                    Send Request_Save to Tmpsel_DD2
                End
                Send Find to tmpSel_DD2 gt 1
            Loop
            Set Dynamic_Update_State to True
            Set Label Of btn_Select to ("Deselect all "+(String(iFS))+" File(s)")
            Set piCount to (Select_Count(dbGridSub1(Self)))
            Set Label of txtCount to (piCount(Self))
        End_procedure
        
        Procedure DeSelect_All
            Integer iFs
            File_Size tmpSel to iFs
            Set Dynamic_Update_State to False
            Send Clear  to Tmpsel_DD2
            Send Find   to tmpSel_DD2 gt 1
            While (Found=1)
                If (tmpSel.Is_Selected<>'') Begin
                    Set Field_Changed_Value Of TmpSel_DD2 Field Tmpsel.Is_selected to ''
                    Send Request_Save to Tmpsel_DD2
                End
                Send Find to tmpSel_DD2 gt 1
            Loop
            Set Dynamic_Update_State to True
            Set Label Of btn_Select to ("Select all "+(String(iFs))+" File(s)")
            Set piCount to 0
            Set Label of txtCount to (piCount(Self))
        End_procedure
        
        Procedure OnClick
            Integer iSelectCount iItemCount
            Get Select_Count    Of dbGridSub1 to iSelectCount
            If (iSelectCount)   Send Deselect_All
            Else                Send Select_All
            Send Beginning_Of_Data to dbGridSub1 True
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // btn_Select

    Object btnDel is a ButtonSub
        Set Label to "É†òö®ò≠„ ò®ÆúÂ‡§"
        Set Size to 14 76
        Set Location to 172 386
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Visible_State to False
        
        Procedure OnClick
            Zerofile tmpsel
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // btnDel

    Object frmMessage is a FormSub
        Set Size to 13 252
        Set Location to 256 210
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmMessage

    Object HmApo is a cSyDateForm
        Set Size to 13 66
        Set Location to 229 210
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // HmApo

    Object HmEos is a cSyDateForm
        Set Size to 13 66
        Set Location to 229 294
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // HmEos

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„ èò®ò©´ò´†°È§"
        Set Size to 14 95
        Set Location to 229 364
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure Read_AnTech
            String s1 s2 s3 s4 s5 s6 s7 sMess
            Integer iMet isNotFound
            Read    Channel 9 s1
            If (s1='[*@##ANPROD') Begin
                Send Read_Anprod
                Procedure_Return
            End
            Read    Channel 9 s2 s3 s4 s5 s6 s7
            Readln  Channel 9
            While (NOT(Seqeof))
                Add 1 to iMet
                send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û Antech " + String(iMet)+ "  ...")
        
                // jsjs Elegxos sto arxeio item etsi oste na mhn mpainei sto Antech
                // eggrafh me kapoio Item pou den exei anoixei sto emporiko
                // 09/08/2007
                Move '' to sMess
                Move 0 to isNotFound
                Clear Iteml
                Move (Trim(s2)) to Iteml.Item_Code
                Find Eq Iteml By Index.5
                If (Not(Found)) Begin
        //                   Append sMess "í¶ úÂõ¶™ " (Trim(s2)) " ÉÑå úÆú† ò§¶†Æ´úÂ ©´¶ Betolink Enterprise" "\nÜ úöö®ò≠„ ©´¶ ò®úÆúÂ¶ ANTECH ÉÑå ‚ö†§ú"
                    clear iteml
                    move '16000000' to iteml.item_code
                    find eq iteml by index.5
                    if (found) begin
                        send clear to item_dd
                        send clear to witemkat_dd
                        send clear to fpa_dd
                        send clear to units_dd
                        move iteml.units_recr to units.units_recr
                        send find to units_dd eq 2
                        move iteml.witemkat_recr to witemkat.witemkat_recr
                        send find to witemkat_dd eq 2
                        move iteml.fpa_pososto to fpa.fpa_pososto
                        send find to fpa_dd eq 1
                        set field_changed_value of item_dd field item.item_code     to s2
                        set field_changed_value of item_dd field item.units_code    to iteml.units_code
                        set field_changed_value of item_dd field item.witemkat_code to iteml.witemkat_code
                        set field_changed_value of item_dd field item.item_descr    to s2
                        set field_changed_value of item_dd field item.wapokat_code  to iteml.wapokat_code
                        set field_changed_value of item_dd field item.item_analysh  to iteml.item_analysh
                        set field_changed_value of item_dd field item.item_orio     to iteml.item_orio
                        set field_changed_value of item_dd field item.link2         to iteml.link2
                        set field_changed_value of item_dd field item.group         to iteml.group
                        set field_changed_value of item_dd field item.sap           to s2
                        send request_save to item_dd
                    End
                    ELSE send info_box 'Éú§ ô®Â©°‡ ò®Æ†°Ê ÑÂõ¶™' 'è¢û®¶≠¶®Âò'
                    Move 0 to isNotFound
        //                    Send Stop_Box sMess "Error 12000"
                End
                If (isNotFound=0) Begin
                // 09/08/2007
        
                    Clear Antech
                    Move (Trim(s1)) to Antech.Antech_Branch
                    Move (Trim(s4)) to Antech.Antech_ChNum
                    Move (Trim(s2)) to Antech.Antech_Item
                    Move (Trim(s3)) to Antech.Antech_ItemD
                    Find Eq Antech By Index.1
                    If (Not(Found)) Begin
                        If (Trim(s5)='') Move 0 to Antech.Antech_Qty
                        Else Move (Trim(s5)) to Antech.Antech_Qty
                        Move (Trim(s6)) to Antech.Antech_SapAA
                        Move (Trim(s7)) to Antech.Antech_SapCC
                        Saverecord Antech
                    End
        
                // 09/08/2007
                End
                // 09/08/2007
        
                Read    Channel 9 s1
                If (s1='[*@##ANPROD') Begin
                    Readln  Channel 9
                    Send Read_Anprod
                    Procedure_Return
                End
                Read    Channel 9 s2 s3 s4 s5 s6 s7
                Readln  Channel 9
            Loop
        End_Procedure
        
        Procedure Read_AnProd
            Integer iMet
            String s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
            Read    Channel 9 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
            Readln  Channel 9
            While (NOT(Seqeof))
                Add 1 to iMet
                send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û AnProd " + String(iMet)+ "  ...")
                Clear AnProd
                Move (Trim( s1)) to AnProd.AnProd_Date
                Move (Trim( s2)) to AnProd.AnProd_Form
                Move (Trim( s3)) to AnProd.AnProd_Item
                Move (Trim( s4)) to AnProd.AnProd_Site
                Move (Trim( s8)) to AnProd.AnProd_CarTP
                Move (Trim( s9)) to AnProd.AnProd_ItemTN
                Move (Trim(s10)) to AnProd.AnProd_Mix
                Find Eq AnProd By Index.1
                If (Found) Begin
                    If (Trim(AnProd.Entolh_Recr)='') Begin
                        If (Trim(s5)='') Move 0 to AnProd.AnProd_Qty
                        Else Move (Trim(s5)) to AnProd.AnProd_Qty
                        Move (Trim(s6)) to AnProd.Entolh_Recr
                        Move (Trim(s7)) to AnProd.Wapomast
                        Saverecord AnProd
                    End
                End
                Else Begin
                  //  Move (Sysrecc.custprom_Rec0+1)      To anprod.Rec0
                  //  Reread Sysrecc
                  //  Move (Sysrecc.custprom_Rec0+1)    To Sysrecc.custprom_Rec0
                  //  Saverecord Sysrecc
                  //  Unlock
                    Move (Trim(s5)) to AnProd.AnProd_Qty
                    Move (Trim(s6)) to AnProd.Entolh_Recr
                    Move (Trim(s7)) to AnProd.Wapomast
                    Saverecord AnProd
                End
                Read    Channel 9 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
                Readln  Channel 9
            Loop
        End_Procedure
        
        Object TimerObj2 Is A DFTimer
        
            Property Integer piForesCount   Public  0
            Property String  psRemFile2     Public ''
            Property String  psLocFile2     Public ''
        
            Set Auto_Start_State    to False
            Set Auto_Stop_State     to False
        
            Procedure OnTimer
                Integer iCount rVal
                Get piForesCount to iCount
                send AddInfo to (oStatusForm (Self)) ("èú®†£‚§‡ ¢„Øû  "*(Trim(psRemFile2(Self)))-"...")
                Increment iCount
                Get fiGetFile Of FtpView (psRemFile2(Self)) (psLocFile2(Self)) 0 1 to rVal
                If (Not(rVal)) Begin
                    Set piFileRetreived to 1
                    Send Stop_Timer2
                End
                Set piForesCount to iCount
                If (iCount>(piFtpTimesExit(Self))) Send Stop_Timer2
            End_Procedure
        
        End_Object
        
        Procedure Start_Timer2 String asRemoteFile String asLocalFile
            Set piFileRetreived                          to 0
            Set piForesCount        of (TimerObj2(Self)) to 0
            Set psRemFile2          of (TimerObj2(Self)) to (Trim(asRemoteFile))
            Set psLocFile2          of (TimerObj2(Self)) to (Trim(asLocalFile))
            EraseFile asLocalFile
            Set Timeout             of (TimerObj2(Self)) to (piFtpSecondsRetry(Self)*1000)
            Set Timer_Active_State  of (TimerObj2(Self)) to True // Starts timer
        End_Procedure
        
        Procedure Stop_Timer2
            Integer iFileRetreived iMetr iRecnum isFound iStat
            Integer iID iMet iFileExists
            String  sFile sCN
            // File zbtnemp fields (Comma delimited)
            String sVcompany sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime
            String sVqty sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode
            String sVclientCode sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAp
            String sItemYpot sQtyReturn sVzone  Svconstructorc smixer
        
            Set Timer_Active_State of (TimerObj2(Self)) to False // Stops Timer
        
            Get fiCloseDialup to iStat
        
            // Check property set by timer2 if zbtnemp.txt is received
            Get piFileRetreived to iFileRetreived
            If (Not(iFileRetreived)) Begin
                Send Info_Box 'Éú§ ú¢„≠üú† ´¶ ò®ÆúÂ¶ ßò®ò©´ò´†°È§' 'è¢û®¶≠¶®Âò'
                //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                //Send RasXComDisConnect  Of MyRas
                Procedure_Return
            End
            Get psLocFile2 Of TimerObj2 to sFile
            Move (Trim(sFile))          to sFile
        
            Get Get_File_Exists sFile   To iFileExists
            If (NOT(iFileExists)) Begin
                Send Stop_Box "Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ zbnemp.txt"
                //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                Procedure_Return
            End
        
            send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶ ú¢„≠üú† "*sFile-" ...")
        
            Send ChangeAllFileModes DF_Filemode_ReadOnly
            Set_Attribute DF_File_Mode Of Btnemp.File_Number    to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Sysrecc.File_Number   to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Item.File_Number      to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Witemx.File_Number    to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Anprod.File_Number    to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Antech.File_Number    to DF_Filemode_Default
        
            Indicate Err False
            BEGIN_TRANSACTION
                Move Error_Object_ID to iID
        
                // Read zbtnemp.txt and make btnemp records
                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Read    Channel 9 sVcompany
                If (sVCompany='[*@##TECHN') Begin
                    Readln  Channel 9
                    Send Read_Antech
                    Goto Exodos_Ftp1
                End
                Else If (sVCompany='[*@##ANPROD') Begin
                    Readln  Channel 9
                    Send Read_Anprod
                    Goto Exodos_Ftp1
                End
                Read    Channel 9 sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime sVqty
                Read    Channel 9 sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode sVclientCode
                Read    Channel 9 sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAP sItemYpot sQtyReturn sVzone Svconstructorc smixer
                Readln  Channel 9
                If (Seqeof) Begin
                    Send Info_Box 'í¶ ò®ÆúÂ¶ zbtnemp.txt õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                    Abort_Transaction
                    Goto EnhProg
                End
        
                While (NOT(Seqeof))
                    Add 1 to iMet
                    send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û ßò®ò©´ò´†°¶Á " + String(iMet)+ "  ...")
        
                    Clear btnemp
                    Move (Trim(sVcompany))         to Btnemp.Vcompany
                    Move (Trim(sVsite   ))         to Btnemp.Vsite
                    Move (Trim(sVdate   ))         to Btnemp.Vdate
                    Move (Trim(sVvoucher))         to Btnemp.Vvoucher
                    Move (Trim(sVseries ))         to Btnemp.Vseries
                    Move (Trim(sVsn     ))         to Btnemp.Vsn
                    Move (Trim(sVrow    ))         to Btnemp.Vrow
                    Find Eq btnemp by index.1
        
                    If (Found) Begin
                        // Record is found.
                        // Check Pms_Recr. If '0' then move fields
                        // else don't touch.
                        If (Trim(Btnemp.Pms_Recr)='0') Begin
                            Reread Btnemp
                            Move (Trim(sVtime      ))   to Btnemp.Vtime
                            Move (Trim(sVqty       ))   to Btnemp.Vqty
                            Move (Trim(sVprodCode  ))   to Btnemp.VprodCode
                            Move (Trim(sVorderPrice))   to Btnemp.VorderPrice
                            Move (Trim(sVpumpID    ))   to Btnemp.VpumbID
                            Move (Trim(sVcarCode   ))   to Btnemp.Vcarcode
                            Move (Trim(sVconsCode  ))   to Btnemp.VconsCode
                            Move (Trim(sVclientCode))   to Btnemp.VclientCode
        
                            Move (Trim(sVlatCode   ))   to Btnemp.VlatCode
                            Move (Trim(sVsiteEmf   ))   to Btnemp.Vsiteemf
                            Move (Trim(sVqty2      ))   to Btnemp.Vqty2
                            Move (Trim(sTim        ))   to Btnemp.Tim
                            Move (Trim(sOffer_ID   ))   to Btnemp.Offer_ID
                            Move (Trim(sWapomast   ))   to Btnemp.Wapomast
                            Move (Trim(sAp         ))   to Btnemp.AP
                            Move (Trim(sItemYpot   ))   to Btnemp.Item_Ypot
                            Move (Trim(sQtyReturn  ))   to Btnemp.Qty_Return
                            Move (Trim(sVzone      ))   to Btnemp.Vzone
                            Move (Trim(Svconstructorc ))   to Btnemp.Vconstructorc
                            Move (Trim(Smixer      ))   to Btnemp.Vsalecode
                            Saverecord Btnemp
                            Unlock
                        End
                    End
                    Else Begin
                        Move '' to sCN
                        Move (Sysrecc.Btnemp_Rec0+1)    To Btnemp.Btnemp_Rec0
                        Reread Sysrecc
                        Move (Sysrecc.Btnemp_Rec0+1)    To Sysrecc.Btnemp_Rec0
                        Saverecord Sysrecc
                        Unlock
                        Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                        (Trim(String(btnemp.btnemp_Rec0)))))) ;
                                                        to btnemp.btnemp_Recr
                        Move (Trim(sVtime      ))       to Btnemp.Vtime
                        Move (Trim(sVqty       ))       to Btnemp.Vqty
                        Move (Trim(sVprodCode  ))       to Btnemp.VprodCode
                        Move (Trim(sVorderPrice))       to Btnemp.VorderPrice
                        Move (Trim(sVpumpID    ))       to Btnemp.VpumbID
                        Move (Trim(sVcarCode   ))       to Btnemp.Vcarcode
                        Move (Trim(sVconsCode  ))       to Btnemp.VconsCode
                        Move (Trim(sVclientCode))       to Btnemp.VclientCode
                        Move (Trim(sVlatCode   ))       to Btnemp.VlatCode
                        Move (Trim(sVsiteEmf   ))       to Btnemp.Vsiteemf
                        Move (Trim(sVqty2      ))       to Btnemp.Vqty2
                        Move (Trim(sTim        ))       to Btnemp.Tim
                        Move (Trim(sOffer_ID   ))       to Btnemp.Offer_ID
                        Move (Trim(sWapomast   ))       to Btnemp.Wapomast
                        Move (Trim(sAp         ))       to Btnemp.AP
                        Move (Trim(sItemYpot   ))       to Btnemp.Item_Ypot
                        Move (Trim(sQtyReturn  ))       to Btnemp.Qty_Return
                        Move (Trim(sVzone      ))       to Btnemp.Vzone
                        Move (Trim(Svconstructorc ))    to Btnemp.Vconstructorc
                        Move (Trim(Smixer      ))       to Btnemp.Vsalecode
                        Saverecord Btnemp
                    End
                    Read    Channel 9 sVcompany
                    If (sVCompany='[*@##TECHN') Begin
                        Readln  Channel 9
                        Send Read_AnTech
                        Goto Exodos_Ftp1
                    End
                    Else If (sVCompany='[*@##ANPROD') Begin
                        Readln  Channel 9
                        Send Read_Anprod
                        Goto Exodos_Ftp1
                    End
                    Read    Channel 9 sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime sVqty
                    Read    Channel 9 sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode sVclientCode
                    Read    Channel 9 sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAP sItemYpot sQtyReturn sVzone Svconstructorc smixer
                    Readln  Channel 9
                Loop
                Exodos_Ftp1:
            END_TRANSACTION
            EnhProg:
            Move iID to Error_Object_ID
            UnLock
            Send ChangeAllFileModes DF_Filemode_Default
            If (Err) Begin
                Send Stop_Box 'èò®¶¨©†·©´û°ò§ ©≠·¢£ò´ò °ò´· ´û§ õ†òõ†°ò©Âò\núöö®ò≠„™ ´‡§ ßò®ò©´ò´†°È§ ©´¶ ò®ÆúÂ¶ BTNEMP\nÜ õ†òõ†°ò©Âò ò°¨®Èüû°ú ú§´ú¢È™.' ('ë≠·¢£ò '+String(Err))
            End
            Else Begin
                Send Info_Box 'Ü ¢„Øû ßò®ò©´ò´†°È§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                Send Delete_Data    to oStatusForm
                Set Value of frmMessage Item 0 to ''
                Send Paint          to oStatusForm
            End
        End_Procedure
        
        Function fiFTPVerify Returns Integer
            String  sFtp sUser sPassword sDir
            Get Value Of frmAddress     to sFtp
            Get Value Of frmUserName    to sUser
            Get Value Of frmPassword    to sPassword
            Get Value Of frmDirectory   to sDir
            Move (Trim(sFtp))           to sFtp
            Move (Trim(sUser))          to sUser
            Move (Trim(sPassword))      to sPassword
            Move (Trim(sDir))           to sDir
            Clear TmpSel
            Move '1' to TmpSel.Is_Selected
            Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
            If ((Found=1) And (TmpSel.Is_Selected='1')) Begin
                If ((sFtp<>'')      And (sUser<>'') And ;
                    (sPassword<>'') And (sDir<>'')) Function_Return 1
                Else Begin
                    Function_Return 0
                End
            End
            Else Function_Return -1
        End_Function
        
        Procedure OnClick
            Integer rVal isOK iErr iStat
            Date    dApo dEos
            String  sPhone sName sPassw sDomain
            String  sFtp sUser sPassword sDir sConnectString sConnectCommand
            String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
            String  sSysfileFilesSendPath sFullFileName sFileName
        
            Get Value Of HmApo item 0 to dApo
            Get Value Of HmEos item 0 to dEos
            If (dApo='')    Sysdate dApo
            If (dEos='')    Move '31/12/2100' to dEos
            If (dApo>dEos) Begin
                Send Stop_Box 'äò§üò©£‚§ú™ û£ú®¶£û§Âú™' 'Ä°Á®‡©û õ†òõ†°ò©Âò™'
                Send Activate to HmApo
                Procedure_Return
            End
        
            Get psBranchSendPathFiles       to sBranchSendPathFiles
            Get psBranchSendPathConf        to sBranchSendPathConf
            Get psSysfileFilesSendPath      to sSysfileFilesSendPath
        
            Move (Trim(sBranchSendPathFiles ))  to sBranchSendPathFiles
            Move (Trim(sBranchSendPathConf  ))  to sBranchSendPathConf
            Move (Trim(sSysfileFilesSendPath))  to sSysfileFilesSendPath
        
            Get Value Of frmAddress     to sFtp
            Get Value Of frmUserName    to sUser
            Get Value Of frmPassword    to sPassword
            Get Value Of frmDirectory   to sDir
        
            Move (Trim(sFtp))           to sFtp
            Move (Trim(sUser))          to sUser
            Move (Trim(sPassword))      to sPassword
            Move (Trim(sDir))           to sDir
        
            Get fiFTPVerify to isOK
        
            If (isOK=1) Begin
        
                Move '' to sConnectCommand
                Move '' to sConnectString
        
                send AddInfo to (oStatusForm (Self)) ("ëÁ§õú©û "*sFtp-"...")
        
        
                If (psBranchPhone(self)<>'') Begin
        
                   set bConnectionStatus to FALSE
        
                   //first get the connect state of the local system
                   move (dvInternetGetConnectedState()) to iStat
        
        //           if iStat eq 1 begin
        //              send Info_Box "You have already a connection to the Internet by modem." "dvdialer"
        //              procedure_return
        //           end
        //           if iStat eq 2 begin
        //              send Info_Box "You are connected to the Internet by a LAN." "dvdialer"
        //              procedure_return
        //           end
        //           if iStat eq 3 begin
        //              send Info_Box "You are connected to the Internet by a through a proxy server." "dvdialer"
        //              procedure_return
        //           end
        
                   if iStat eq 4 begin
                      send Info_Box "í¶ modem úÂ§ò† òßò©Æ¶¢û£‚§¶." "è¢û®¶≠¶®Âò"
                      procedure_return
                   end
        
                   If iStat eq 0 begin
                      // there is no Internet connection and the modem is not busy, so let's dial...
                      // phonebook entry this would be something like this
                      // move (dvInternetAutodial()) to iStat
                      move (dvInternetDial((psBranchPhone(self)))) to iStat
        
                      If iStat eq 0 set bConnectionStatus to True
                      Else Begin
                         Send Info_Box "Ü ©Á§õú©û õú§ £ß¶®úÂ §ò ¶¢¶°¢û®‡üúÂ" "è¢û®¶≠¶®Âò"
                         Procedure_Return
                      End
                   End
                End
        
        
        ///////////////////
        //        If (psBranchPhone(self)<>'') Send OpenDialUp Of MyRas
        
        //        Get piErrorOccured to iErr
        //        If (iErr) Begin
        //            If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
        //            Procedure_Return
        //        End
        ///////////////////
        
                // Connect to ftp site
                if (trim(sFtp)<>'') begin
                    if ( sUser<>"") begin
                       Move (dvInternetConnect(sFtp,sUser,sPassword,0)) to rVal
                    end
                    else move (dvInternetConnect(sFtp,"","",0)) to rVal //anonymous login
                end
                if rVal begin
                    Send ShowInternetErrorMessage rVal
                    Get fiCloseDialup to iStat
                    //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect Of MyRas
                    procedure_return
                end
        
                // Prepare zsendd.txt filename
                Move (Trim(sSysfileFilesSendPath)+'zsendd.txt') to sLocalFile
                Move (Trim(sDir)                 +'zsendd.txt') to sRemoteFile
        
                // Create zsendd.txt file
                Direct_Output   Channel 9 sLocalFile
                Write           Channel 9 dApo
                Writeln         Channel 9
                Write           Channel 9 dEos
                Writeln         Channel 9
                Close_Output    Channel 9
        
                // Send zsendd.txt file
                Get fiSendFile Of FtpView sLocalFile sRemoteFile 1 to rVal
                If (rVal) Begin
                    Send ShowInternetErrorMessage rVal
                    Get fiCloseDialup to iStat
                    //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect Of MyRas
                    Procedure_Return
                End
        
                // Prepare Receive for zbtnemp.txt filename
                Move (Trim(sSysfileFilesSendPath)+'zbtnemp.txt') to sLocalFile
                Move (Trim(sDir)                 +'zbtnemp.txt') to sRemoteFile
        
                Send Start_Timer2 sRemoteFile sLocalFile
        
            End
            Else Begin
                If (isOK=(-1)) Begin
                    Send Info_Box "Éú§ ô®‚üû°ú °·ß¶†ò úß†¢úö£‚§û úöö®ò≠„"
                End
                Else If (sFtp='') Begin
                    Send Info_Box "FTP Address field is empty"
                    Send Activate to frmAddress
                End
                Else If (sUser='') Begin
                    Send Info_Box "User field is empty"
                    Send Activate to frmUserName
                End
                Else If (sPassword='') Begin
                    Send Info_Box "Password field is empty"
                    Send Activate to frmPassword
                End
                Else If (sDir='') Begin
                    Send Info_Box "Directory field is empty"
                    Send Activate to frmDirectory
                End
            End
        
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "ëÁ§õú©û ©´¶§ ¨ß¶¢¶ö†©´„"
        Set Location to 246 210
        Set Size to 10 94
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "É.Äè Ü£/§Âò òß¶"
        Set Location to 219 210
        Set Size to 10 61
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "É.Äè Ü£/§Âò ú‡™"
        Set Location to 219 294
        Set Size to 10 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object frmConn is a FormSub
        Set Size to 13 98
        Set Location to 191 100
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Procedure OnChange
            String sStr
            Get Value Item 0 to sStr
            Set psBranchPhone to (Trim(sStr))
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // frmConn


    //AB-StoreStart
                
    Object oDirectoryPicker is a OLEDPDlg
        Set Size            to 0 0
        Set Location        to 0 0
        Set Visible_State   to False
        Procedure Activate
            Forward Send Activate
            Set Location    to 1 1
            Set Size        to 190 190
            SET DPDlgRoot   to 0
            //  0=Desktop
            //  1=Control Panel
            //  2=Desktop Directory
            //  3=My Computer
            //  4=Font Directory
            //  5=Network Neighborhood
            //  6=Printers
            //  7=Programs
            //  8=Recent
            //  9=Recycle Bin
            // 10=Send To
            // 11=Start Menu
            // 12=Start Up
            // 13=Templates
            // 14=Custom Root
        End_procedure
    End_Object
    
    Object oRecursiveFileFinder is a OLExfind
        Set Size            to 0 0
        Set Location        to 0 0
        Set Visible_State   to False
        Procedure OnxfindFoundFile
            Integer iCount
            String sStr sPath sFile
            Get xfindFileName                       to sStr
            Move (Trim(UpperCase(sStr)))            to sStr
            Get fsReturnFileFromPath        sStr    to sFile
            Move (Trim(UpperCase(sFile)))           to sFile
            Get fsReturnDirectoriesFromPath sStr    to sPath
            Move (Trim(UpperCase(sPath)))           to sPath
            Clear TmpSel
            Move sStr to TmpSel.Full_Path_Name
            Find eq TmpSel By Index.1
            If (Not(Found)) Begin
                Move (UpperCase(fsVresExt(Trim(sFile)))) to TmpSel.EXTENSION
                Move (Trim(sFile))                              to TmpSel.FILENAME
                Move (Trim(sPath))                              to TmpSel.PATHNAME
                Saverecord TmpSel
            End
            Set piCount to (piCount(Self)+1)
            Set Label of txtCount to (piCount(Self))
    //        Set Label Of txtCount to (Select_Count(dbGridSub1(Self)))
        End_procedure
    End_Object
    
    //Object MyRas is a OLERasXCom
    
    //    Procedure OpenDialUp
    //        Integer isConnected iState
    //        Get RasXComEntryConnected to isConnected
    //        If (Not(isConnected)) Begin
    //            Send RasXComConnect
    ////            Get RasXComEntryConnected to isConnected
    ////            If (Not(isConnected)) Begin
    ////                Set piErrorOccured to True
    ////                Send Stop_Box 'Éú§ £ß¶®È §ò ò§¶Â•‡ ´û§ ö®ò££„' 'è¢û®¶≠¶®Âò'
    ////                Procedure_Return
    ////            End
    //        End
    //    End_Procedure
    
    //    Procedure CloseDialUp
    //        Send RasXComDisconnect
    //    End_Procedure
    
    //    Procedure RasXComDone OLE_MethodsEnum lLastMethod Integer lErrorCode String lErrorString
    //        Integer iState
    //        Get RasXComState to iState
    //        If (iState = 8192) Begin
    //            // Connected
    //            // Disable  Button Connect
    //            // Enable   Button Disconnect
    //        End
    //        Else If (iState = 8193) Begin
    //            // Not connected
    //            // Disable  Button Disconnect
    //            // Enable   Button Connect
    //        End
    //    End_Procedure
    
    //    Procedure RasXComStateChanged Integer lNewState Integer lOldState
    //    End_Procedure
    
    //End_Object
    
    //Object MyRasNotify is a OLEIRasXComNotify
    
    //    Procedure IRasXComNotifyDone LPDispatch lPackageObject OLE_MethodsEnum lLastMethod Integer lErrorCode String lErrorString
    //        Integer iState
    //        Forward Send IRasXComNotifyDone lPackageObject lLastMethod lErrorCode lErrorString
    //        Get RasXComState Of MyRas to iState
    //        If (iState = 8192) Begin
    //            // Connected
    //            // Disable  Button Connect
    //            // Enable   Button Disconnect
    //        End
    //        Else If (iState = 8193) Begin
    //            // Not connected
    //            // Disable  Button Disconnect
    //            // Enable   Button Connect
    //        End
    //    End_Procedure
    
    //// Fired when the control's internal state changes.
    //    Procedure IRasXComNotifyStateChanged LPDispatch lPackageObject Integer lNewState Integer lOldState
    //        Forward Send IRasXComNotifyStateChanged lPackageObject lNewState lOldState
    //    End_Procedure
    
    //End_Object
    
    Object Tmpsel_DD2 is a Tmpsel_DataDictionary
    End_Object
    
    Procedure ShowInternetErrorMessage integer iInetError
        local string sMsg
        move (dvGetServerMsg()) to sMsg
        if (trim(sMsg)) eq "" get array_value of (oInternetErrorArray(Self)) ;
            item (iInetError - 12000) to sMsg
        send AddInfo to (oStatusForm(Self)) ("Error:"*sMsg) true
    End_Procedure
    
    Object oInternetErrorArray is an Array
        Procedure InitializeErrorArray
            set array_value item 1   to "out of handles"
            set array_value item 2   to "timeout"
            set array_value item 3   to "extended error"
            set array_value item 4   to "internal error"
            set array_value item 5   to "invalid url"
            set array_value item 6   to "unrecognized scheme"
            set array_value item 7   to "name not resolved"
            set array_value item 8   to "protocol not found"
            set array_value item 9   to "invalid option"
            set array_value item 10  to "bad option length"
            set array_value item 11  to "option not settable"
            set array_value item 12  to "shutdown"
            set array_value item 13  to "incorrect user name"
            set array_value item 14  to "incorrect password"
            set array_value item 15  to "login failure"
            set array_value item 16  to "invalid operation"
            set array_value item 17  to "operation cancelled"
            set array_value item 18  to "incorrect handle type"
            set array_value item 19  to "incorrect handle state"
            set array_value item 20  to "not proxy request"
            set array_value item 21  to "registry value not found"
            set array_value item 22  to "bad registry parameter"
            set array_value item 23  to "no direct access"
            set array_value item 24  to "no context"
            set array_value item 25  to "no callback"
            set array_value item 26  to "request pending"
            set array_value item 27  to "incorrect format"
            set array_value item 28  to "item not found"
            set array_value item 29  to "cannot connect"
            set array_value item 30  to "connection aborted"
            set array_value item 31  to "connection reset"
            set array_value item 32  to "force retry"
            set array_value item 33  to "invalid proxy request"
            set array_value item 34  to "need ui"
            set array_value item 36  to "handle exists"
            set array_value item 37  to "sec cert date invalid"
            set array_value item 38  to "sec cert cn invalid"
            set array_value item 39  to "http to https on redir"
            set array_value item 40  to "https to http on_redir"
            set array_value item 41  to "mixed security"
            set array_value item 42  to "chg post is non secure"
            set array_value item 43  to "post is non_secure"
            set array_value item 44  to "client auth cert needed"
            set array_value item 45  to "invalid ca"
            set array_value item 46  to "client auth not setup"
            set array_value item 47  to "async thread failed"
            set array_value item 48  to "redirect scheme change"
            set array_value item 49  to "dialog pending"
            set array_value item 50  to "retry dialog"
            set array_value item 110 to "ftp transfer in progress"
            set array_value item 111 to "ftp dropped"
            set array_value item 112 to "ftp no passive mode"
            set array_value item 157 to "security channel error"
            set array_value item 158 to "unable to cache file"
            set array_value item 159 to "tcpip not installed"
            set array_value item 163 to "disconnected"
            set array_value item 164 to "server unreachable"
            set array_value item 165 to "proxy server unreachable"
        End_Procedure
    End_Object
    
    Procedure Activating0000
        Integer iRetVal iFromProgrammatismo
        String  sPhone sName sPassw sDomain sBranchRecr
        String  sFtp sUser sPassword sDir sConnectString sConnectCommand
        String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
        String  sSysfileFilesSendPath sFullFileName sFileName
    
        send InitializeErrorArray           to (oInternetErrorArray(Self))
    
        move (dvInternetAttemptConnect())   to iRetVal //attempt a connect to the internet
        move (dvInternetOpen())             to iRetVal //initialize internet functions
    
        Forward send activating
    
        Get piFromProgrammatismo    to iFromProgrammatismo
        Get psBranchRecr            to sBranchRecr
    
        If ((iFromProgrammatismo) And (sBranchRecr<>'')) Begin
            Set piFromProgrammatismo    to  0
            Set psBranchRecr            to ''
            Clear Branch
            Move sBranchRecr to Branch.Branch_Recr
            Find Eq Branch By Index.2
        End
        Else Begin
            Clear Branch
            Move Syscurxr.Company_Code      to Branch.Company_Code
            Move Syscurxr.Branch_Code       to Branch.Branch_Code
            Find Eq Branch By Index.1
        End
    
        Set psBranchPhone               to (Trim(Branch.Send_Phone))
        Set psBranchSendPathFiles       to (Trim(Branch.Send_Path_Files))
        Set psBranchSendPathConf        to (Trim(Branch.Send_Path_Conf))
    
        Set psSysfileFilesSendPath      to (Trim(Sysfile.Files_Send_Path))
        Set piFtpSecondsRetry           to Branch.Ftp_Sec_Retry
        Set piFtpTimesExit              to Branch.Ftp_Sec_Exit
    
        Move (Trim(Branch.SEND_PATH_FILES))  to sBranchSendPathFiles
        Move (Trim(Branch.SEND_PATH_CONF))   to sBranchSendPathConf
        Move (Trim(Sysfile.FILES_SEND_PATH)) to sSysfileFilesSendPath
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zsok.txt'
        Move (Trim(sLocalFile))     to sLocalFile
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zsok.txt'
        Move (Trim(sLocalFile)) to sLocalFile
        EraseFile sLocalFile
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zsendd.txt'
        Move (Trim(sLocalFile))     to sLocalFile
        EraseFile sLocalFile
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zbtnemp.txt'
        Move (Trim(sLocalFile))     to sLocalFile
        EraseFile sLocalFile
    
        EraseFile 'C:\Welcome.txt'
    
        Move (Trim(sSysfileFilesSendPath))  to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zrok.txt'
        Move (Trim(sBranchSendPathConf)+'zrok.txt') to sRemoteFile
        Move (Trim(sLocalFile))     to sLocalFile
        EraseFile sLocalFile
    End_Procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal iInt iVariant iFromProgrammatismo iRetVal
        Date    dHmnia
        String  sPhone sName sPassw sDomain sBranchRecr sConn
        String  sFtp sUser sPassword sDir sConnectString sConnectCommand
        String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
        String  sSysfileFilesSendPath sFullFileName sFileName
        Olevariant  vVariant
    
        Sysdate dHmnia
        Set Value Of HmApo Item 0 to dHmnia
        Set Value Of HmEos Item 0 to dHmnia
    
        Get piFromProgrammatismo    to iFromProgrammatismo
        Get psBranchRecr            to sBranchRecr
    
        If ((iFromProgrammatismo) And (sBranchRecr<>'')) Begin
            Set piFromProgrammatismo    to  0
            Set psBranchRecr            to ''
            Clear Branch
            Move sBranchRecr to Branch.Branch_Recr
            Find Eq Branch By Index.2
        End
        Else Begin
            Clear Branch
            Move Syscurxr.Company_Code      to Branch.Company_Code
            Move Syscurxr.Branch_Code       to Branch.Branch_Code
            Find Eq Branch By Index.1
        End
    
        Set psBranchPhone                   to (Trim(Branch.Send_Phone))
        Set psBranchSendPathFiles           to (Trim(Branch.Send_Path_Files))
        Set psBranchSendPathConf            to (Trim(Branch.Send_Path_Conf))
        Set psSysfileFilesSendPath          to (Trim(Sysfile.Files_Send_Path))
        Set piFtpSecondsRetry               to Branch.Ftp_Sec_Retry
        Set piFtpTimesExit                  to Branch.Ftp_Sec_Exit
    
        Move (Trim(Branch.Send_Phone))      to sPhone
        Move (Trim(Branch.Ras_Name))        to sName
        Move (Trim(Branch.Ras_Passw))       to sPassw
        Move (Trim(Branch.Ras_Domain))      to sDomain
    
        Move (Trim(Branch.SEND_PATH_FILES))  to sBranchSendPathFiles
        Move (Trim(Branch.SEND_PATH_CONF))   to sBranchSendPathConf
        Move (Trim(Sysfile.FILES_SEND_PATH)) to sSysfileFilesSendPath
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zsok.txt'
        Move (Trim(sLocalFile))     to sLocalFile
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zsok.txt'
        Move (Trim(sLocalFile)) to sLocalFile
        EraseFile sLocalFile
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zsendd.txt'
        Move (Trim(sLocalFile))     to sLocalFile
        EraseFile sLocalFile
    
        Move (Trim(sSysfileFilesSendPath))   to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zbtnemp.txt'
        Move (Trim(sLocalFile))     to sLocalFile
        EraseFile sLocalFile
    
        EraseFile 'C:\Welcome.txt'
    
        Move (Trim(sSysfileFilesSendPath))  to sLocalFile
        Move (Trim(sLocalFile))     to sLocalFile
        Append sLocalFile 'zrok.txt'
        Move (Trim(sBranchSendPathConf)+'zrok.txt') to sRemoteFile
        Move (Trim(sLocalFile))     to sLocalFile
        EraseFile sLocalFile
    
    
        ZeroFile TMPSEL
        Set Value Of frmConn        Item 0  to (Trim(sPhone))
        Set Value Of frmAddress     Item 0  to (Trim(sDomain))
        Set Value Of frmUserName    Item 0  to (Trim(sName))
        Set Value Of frmPassword    Item 0  to (Trim(sPassw))
        Set Label Of txtCount               to (Select_Count(dbGridSub1(Self)))
        Set Value Of FormSub1       Item 0  to (Trim(Sysfile.Files_Send_Path))
        Set Value Of frmDirectory   Item 0  to (Trim(psBranchSendPathFiles(Self)))
    
    
        Forward Get Msg_Activate_View to rVal
    
    
        send InitializeErrorArray           to (oInternetErrorArray(Self))
    
        move (dvInternetAttemptConnect())   to iRetVal //attempt a connect to the internet
        move (dvInternetOpen())             to iRetVal //initialize internet functions
    
        Send Activate to oDirectoryPicker
    
    //    If (sPhone) Begin
    //        Send CreateDispatch             Of MyRas
    //        Set RasXComLicenseKey           Of MyRas        to 'KL0A-GXLN86QQPKJB'
    //    //    Get RasXComNotificationObject   Of MyRas        to vVariant
    //    //    GetOleVariantValue              Of vVariant     to iVariant
    //    //    Send AttachDispatch             Of MyRasNotify     iVariant
    
    //        //-------- Connection Parameters --------//
    //        SET RasXComPhoneNumber          Of MyRas        to (Trim(sPhone))
    //        SET RasXComLogonName            Of MyRas        to (Trim(sName))
    //        SET RasXComLogonPassword        Of MyRas        to (Trim(sPassw))
    //        SET RasXComDomain               Of MyRas        to (Trim(sDomain))
    
    //        /////////////Send RasXComConnect             Of MyRas
    //        //-------- Connection Parameters --------//
    //    End
    
        SET DPDlgPath Of oDirectoryPicker to (Trim(Sysfile.Files_Send_Path))
    
        Send OnClick        to btnFillList
        Send OnClick        to Btn_Select
        Send Delete_Data    to oStatusForm
        Send Paint          to oStatusForm
        Set Value of frmMessage Item 0 to ''
    
        Procedure_Return rVal
    End_Procedure
    
    Procedure Close_Panel
        Integer iInt
        Get fiCloseDialup to iInt
    //    If (psBranchPhone(self)<>'') Begin
    //        Send RasXComDisConnect  Of MyRas
    //        Send ReleaseDispatch    Of MyRas
    //    End
        Forward Send Close_Panel
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // FtpView


//AB-StoreStart





//AB-StoreEnd

//AB/ End_Object    // prj
