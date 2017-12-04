//AB/ Project Item:eidh
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Item:eidh"
//AB/         Set ProjectFileName to "Item.VW"
//AB/         Set GenerateFileName to "Item.vw"

// Project Object Structure
//   Item is a dbViewSubs
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     Witemcld_DD is a DataDictionary
//     Itemtehn_DD is a DataDictionary
//     Itemd_DD is a DataDictionary
//     Itemtehl_DD is a DataDictionary
//     Witemxt_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     Container1 is a dbContainer3d
//       Item_Item_code is a dbForm
//       Item_Item_descr is a dbForm
//       Witemkat_Witemkat_descr is a dbForm
//       Item_Wapokat_Code is a dbFormSub
//       FormSub1 is a FormSub
//       Units_Units_descr is a dbForm
//       Item_Fpa_Pososto is a dbFormSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       Item_Item_Analysh is a dbComboForm
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       Textbox1 is a Textbox
//       Item_Item_Qual is a dbComboFormSub
//       Textbox2 is a Textbox
//       TextBoxSub16 is a TextBoxSub
//       Item_Codeglpol is a dbFormSub
//       Item_Codeglago is a dbFormSub
//       Item_Link1 is a dbFormSub
//       Item_Link2 is a dbFormSub
//       TextBoxSub20 is a TextBoxSub
//       TextBoxSub21 is a TextBoxSub
//       TextBoxSub25 is a TextBoxSub
//       TextBoxSub26 is a TextBoxSub
//       TextBoxSub27 is a TextBoxSub
//       Item_Group is a dbCheckBoxSub
//       Item_Sap is a dbFormSub
//       Item_Item_Orio is a dbCheckBoxSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         Itemtehn_ is a dbGridSub
//         the_table is a dbGridSub
//         TextBoxSub28 is a TextBoxSub
//       dbTabPageSubS2 is a dbTabPageSubS
//         Witemx_ is a dbGridSub
//       dbTabPageSubS3 is a dbTabPageSubS
//         Witemxt_ is a dbGridSub
//         TextBoxSub22 is a TextBoxSub
//       dbTabPageSubS4 is a dbTabPageSubS
//         Witemcl_ is a dbGridSub
//       dbTabPageSubS5 is a dbTabPageSubS
//         TextBoxSub23 is a TextBoxSub
//         Witemcl_Client_Code is a dbFormSub
//         FormSub2 is a FormSub
//         Witemcld_ is a dbGridSub
//         TextBoxSub24 is a TextBoxSub

// Register all objects
Register_Object btnChangeXr
Register_Object Container1
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object dbGrpYear
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object dbTabPageSubS2
Register_Object dbTabPageSubS3
Register_Object dbTabPageSubS4
Register_Object dbTabPageSubS5
Register_Object FormSub1
Register_Object FormSub2
Register_Object Fpa_DD
Register_Object Item
Register_Object Item_Codeglago
Register_Object Item_Codeglpol
Register_Object Item_DD
Register_Object Item_Fpa_Pososto
Register_Object Item_Group
Register_Object Item_Item_Analysh
Register_Object Item_Item_code
Register_Object Item_Item_descr
Register_Object Item_Item_Orio
Register_Object Item_Item_Qual
Register_Object Item_Link1
Register_Object Item_Link2
Register_Object Item_Sap
Register_Object Item_Wapokat_Code
Register_Object Itemd_DD
Register_Object Itemtehl_DD
Register_Object Itemtehn_
Register_Object Itemtehn_DD
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Syscurxr_DD
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub2
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub28
Register_Object TextBoxSub3
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Textbox1
Register_Object Textbox2
Register_Object the_table
Register_Object Units_DD
Register_Object Units_Units_descr
Register_Object Witemcl_
Register_Object Witemcl_Client_Code
Register_Object Witemcl_DD
Register_Object Witemcld_
Register_Object Witemcld_DD
Register_Object Witemkat_DD
Register_Object Witemkat_Witemkat_descr
Register_Object Witemx_
Register_Object Witemx_DD
Register_Object Witemxt_
Register_Object Witemxt_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open wapokat
    Open Iteml
    Use sl22Search.sl
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use Txtbox.Sub
    Use Cmbfrm.Sub
    Use Button.Sub
    Use dbForm.Sub
    Use Form.Sub
    Use dbCmbfrm.Sub
    Use dbChkbox.Sub
    Use dbTabdlgS.Sub
    Use dbTabPageSubS.Sub
    Use dbGrid.Sub

    Use WITEMKAT.DD
    Use UNITS.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMX.DD
    Use SYSCURXR.DD
    Use WITEMCL.DD
    Use WITEMCLD.DD
    Use ITEMTEHN.DD
    Use ITEMD.DD
    Use ITEMTEHL.DD
    Use WITEMXT.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Item FOR Item

    Object Item is a dbViewSubs

        //AB-StoreTopStart
            
        Function Save_header returns integer
           Local integer Rec Changed Srvr
           Get Server to Srvr
           Get Current_Record of Srvr to Rec
           Get Should_Save to Changed
        
           If (Rec=0 AND Changed=0) Begin // no rec
              Error 300 'è®‚ßú† å· è®¶ûöûüúÂ Ñöö®ò≠„ ÑÂõ¶¨™ !!'
              Function_Return 1
           End
           Get Should_Save to Changed
           Get Current_record of Srvr to Rec
           If (Rec=0 OR Changed) ;
              Function_return 1
        end_function
        
        
        //AB-StoreTopEnd

        Set Label to "Ä®ÆúÂ¶ ú†õÈ§"
        Set Size to 295 464
        Set Location to 5 8
        Set Color to 8109949

        //AB-DDOStart

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary

            //AB-StoreTopStart
                                            
            //AB-StoreTopEnd

            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Fpa_DD(self))

            //AB-StoreStart
                                            
            set allow_foreign_new_save_state to  true
            
            Function Validate_Save  Returns Integer
                Local Integer iReturnVal iCount
                local string msgstr sCode sDescr
                Move 0 to iCount
                Move "" to sCode
                Move "" to sDescr
                Forward Get Validate_Save  To iReturnVal
                If (Not(iReturnVal)) Begin
                    // Insert Code Here
                    If ((item.link2='') or (item.sap='')) BEGIN
                        send info_box 'è®¶©¶Æ„ õú§ ‚Æú´ú ©¨£ß¢û®È©ú† ´ò ßúõÂò ö†ò SAP' 'è¢û®¶≠¶®Âò'
                        move 1 to iReturnVal
                    End
            
                    If (Item.Sap<>"") Begin
                        Clear Iteml
                        Move Item.Sap to Iteml.Sap
                        Find GE Iteml.recnum
                        While ((Found) And (iCount=0))
                            if (Iteml.Sap=Item.Sap) Begin
                                Move (Trim(Iteml.Item_Code )) to sCode
                                Move (Trim(Iteml.Item_Descr)) to sDescr
                                Move 1 to iCount
                            End
                            Find GT Iteml.recnum
                        Loop
                        If (iCount>0) begin
                            Integer iYes
                            Get YesNo_Box ;
                                ("é °‡õ†°Ê™ SAP ¨ß·®Æú† „õû\n©´¶ úÂõ¶™ "+sCode+" "+sDescr+"\nåò ©¨§úÆÂ©‡ £ú ´û§ °ò´òÆÈ®û©û?") "èêéëéïÜ" to iYes
                            if (iYes=MBR_NO) Move 1 to iReturnVal
                        End
                        Clear Iteml
                    End
                End
                Function_Return iReturnVal
            End_Function   // Validate_Save
            
            
            
            
            //AB-StoreEnd

        End_Object    // Item_DD

        Object Witemx_DD is a Witemx_DataDictionary
            Set DDO_Server to (Item_DD(self))
            Set Constrain_File to Item.File_Number
        End_Object    // Witemx_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Witemcl_DD is a Witemcl_DataDictionary

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set DDO_Server to (Item_DD(self))
            Set Constrain_File to Item.File_Number

            //AB-StoreStart
                    
            begin_constraints
               constrain witemcl.is_client ne '1'
            end_constraints
            
            
            //AB-StoreEnd

        End_Object    // Witemcl_DD

        Object Witemcld_DD is a Witemcld_DataDictionary
            Set DDO_Server to (Witemcl_DD(self))
            Set Constrain_File to Witemcl.File_Number
        End_Object    // Witemcld_DD

        Object Itemtehn_DD is a Itemtehn_DataDictionary
            Set DDO_Server to (Item_DD(self))
            Set Constrain_File to Item.File_Number

            //AB-StoreStart
                                                                                                                
            //AB-StoreEnd

        End_Object    // Itemtehn_DD

        Object Itemd_DD is a Itemd_DataDictionary
            Set DDO_Server to (Item_DD(self))
            Set DDO_Server to (Itemtehn_DD(self))
            Set Constrain_File to Itemtehn.File_Number

            //AB-StoreStart
                                                                                                                
            //AB-StoreEnd

        End_Object    // Itemd_DD

        Object Itemtehl_DD is a Itemtehl_DataDictionary
            Set DDO_Server to (Item_DD(self))
            Set Constrain_File to Item.File_Number
        End_Object    // Itemtehl_DD

        Object Witemxt_DD is a Witemxt_DataDictionary

            //AB-StoreTopStart
                                                            
            //AB-StoreTopEnd

            Set DDO_Server to (Witemx_DD(self))
            Set Constrain_File to Witemx.File_Number

            //AB-StoreStart
                                                            
                                                            
            //AB-StoreEnd

        End_Object    // Witemxt_DD

        Set Main_DD to (Item_DD(self))
        Set Server to (Item_DD(self))

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

            Set Size to 26 448
            Set Location to 2 7
            Set Color to 8109949
            Object otxtCompany is a TextBoxSub
                Set Label to "Ñ´ò†®úÂò"
                Set Auto_Size_State to FALSE
                Set Color to 8109949
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

                Set Size to 13 103
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
                Set Color to 8109949
                Set FontSize to 4 0
                Set Location to 12 163
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtBranch

            Object cboBranch is a ComboFormSub
                Set Size to 13 117
                Set Location to 9 203
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
                Set Color to 8109949
                Set FontSize to 4 0
                Set Location to 10 329
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
                Set Location to 9 357
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
                Set Size to 20 27
                Set Location to 5 414
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

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 128 448
            Set Location to 31 7
            Object Item_Item_code is a dbForm

                //AB-StoreTopStart
                
                //AB-StoreTopEnd

                Entry_Item Item.Item_code
                Set Size to 13 87
                Set Location to 4 76
                Set Color to 13828095
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                
                Set prompt_Object to (sl22Search(Self))
                
                Procedure End_Construct_Object
                    Forward Send End_Construct_Object
                    Set prompt_Object Item 0 to (sl22Search(Self))
                End_Procedure
                
                
                Procedure Prompt
                    Forward Send prompt
                End_Procedure
                
                
                Procedure refresh integer iMode
                    local integer iRec
                    string lskind
                    Forward Send Refresh iMode
                    Get Current_record of (item_dd(Current_object)) to iRec
                    get field_current_value of (item_dd(current_object)) field item.item_analysh to lskind
                    set visible_state of (the_table(dbTabPageSubS1(dbTabDialogSubS1(current_object)))) to false
                    if (lskind eq "2") set visible_state of (the_table(dbTabPageSubS1(dbTabDialogSubS1(current_object)))) to true
                end_procedure
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Item_Item_code

            Object Item_Item_descr is a dbForm

                //AB-StoreTopStart
                            
                //AB-StoreTopEnd

                Entry_Item Item.Item_descr
                Set Size to 13 273
                Set Location to 4 165
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                            
                            
                            
                            
                            
                //AB-StoreEnd

            End_Object    // Item_Item_descr

            Object Witemkat_Witemkat_descr is a dbForm
                Entry_Item Witemkat.Witemkat_descr
                Set Size to 13 362
                Set Location to 20 76
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Witemkat_Witemkat_descr

            Object Item_Wapokat_Code is a dbFormSub
                Entry_Item Item.Wapokat_code
                Set Size to 13 87
                Set Location to 34 76
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                procedure onchange
                    string sapokat
                    get value item 0 to sapokat
                    clear wapokat
                    move sapokat to wapokat.wapokat_code
                    find eq wapokat by index.1
                    if (found) set value of (formsub1(self)) to wapokat.wapokat_descr
                    else       set value of (formsub1(self)) to ''
                end_procedure
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Item_Wapokat_Code

            Object FormSub1 is a FormSub
                Set Size to 13 273
                Set Location to 34 165
                Set Label_Col_Offset to 2
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub1

            Object Units_Units_descr is a dbForm
                Entry_Item Units.Units_descr
                Set Size to 13 87
                Set Location to 49 76
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Units_Units_descr

            Object Item_Fpa_Pososto is a dbFormSub
                Entry_Item Fpa.Fpa_pososto
                Set Size to 13 42
                Set Location to 65 76
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                
                Set Numeric_Mask Item 0 to 4 2
                
                //AB-StoreEnd

            End_Object    // Item_Fpa_Pososto

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "ã¶§·õò ã‚´®û©û™"
                Set Location to 50 2
                Set Size to 10 66
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ ÑÂõ¶¨™"
                Set Location to 6 2
                Set Size to 10 60
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub3

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "è¶©¶©´Ê î.è.Ä."
                Set Location to 65 2
                Set Size to 10 74
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub5

            Object Item_Item_Analysh is a dbComboForm
                Entry_Item Item.Item_analysh
                Set Size to 13 87
                Set Location to 80 76
                Set Form_Border Item 0 to Border_Normal
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Entry_State to FALSE
                Set Undefined_Save_Mode to cb_err_update_none
                Set Undefined_Display_Mode to cb_err_update_none

                //AB-StoreStart
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // Item_Item_Analysh

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "Ä§·¢¨©û ÑÂõ¶¨™"
                Set Location to 81 2
                Set Size to 10 57
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub6

            Object TextBoxSub15 is a TextBoxSub
                Set Label to "âò´ûö¶®Âò ÑÂõ¶¨™"
                Set Location to 20 2
                Set Size to 10 61
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub15

            Object Textbox1 is a Textbox
                Set Label to "è¶†Ê´û´ò"
                Set Location to 97 2
                Set Size to 10 49
                Set TypeFace to "MS Sans Serif"
            End_Object    // Textbox1

            Object Item_Item_Qual is a dbComboFormSub
                Entry_Item Item.Item_qual
                Set Size to 13 87
                Set Location to 95 76
                Set Label_Col_Offset to 2
            End_Object    // Item_Item_Qual

            Object Textbox2 is a Textbox
                Set Label to "âò´ûö¶®Âò  Äß¶ü„°û™"
                Set Location to 34 2
                Set Size to 10 73
                Set TypeFace to "MS Sans Serif"
            End_Object    // Textbox2

            Object TextBoxSub16 is a TextBoxSub
                Set Label to "Ä§ú§ú®öÊ"
                Set Location to 111 2
                Set Size to 10 40
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub16

            Object Item_Codeglpol is a dbFormSub
                Entry_Item Item.Codeglpol
                Set Size to 13 76
                Set Location to 48 363
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Item_Codeglpol

            Object Item_Codeglago is a dbFormSub
                Entry_Item Item.Codeglago
                Set Size to 13 76
                Set Location to 62 363
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Item_Codeglago

            Object Item_Link1 is a dbFormSub
                Entry_Item Item.Link1
                Set Size to 13 76
                Set Location to 75 363
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Item_Link1

            Object Item_Link2 is a dbFormSub
                Entry_Item Item.Link2
                Set Size to 13 76
                Set Location to 87 363
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Item_Link2

            Object TextBoxSub20 is a TextBoxSub
                Set Label to "í£„£ò ¢¶ö/©£¶Á Ç.ä. ß‡¢„©ú‡§"
                Set Location to 50 252
                Set Size to 10 110
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub20

            Object TextBoxSub21 is a TextBoxSub
                Set Label to "í£„£ò ¢¶ö/©£¶Á Ç.ä. òö¶®È§"
                Set Location to 63 252
                Set Size to 10 107
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub21

            Object TextBoxSub25 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ ëÁ§õú©û™ 1"
                Set Location to 76 252
                Set Size to 10 73
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub25

            Object TextBoxSub26 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ ëÁ§õú©û™ 2"
                Set Location to 88 252
                Set Size to 10 72
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub26

            Object TextBoxSub27 is a TextBoxSub
                Set Label to "ë¨ö°ú§´®‡´†°· ©´¶§ £ú´ò©Æû£ò´†©£Ê"
                Set Location to 113 253
                Set Size to 10 129
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub27

            Object Item_Group is a dbCheckBoxSub
                Entry_Item Item.Group
                Set Size to 11 15
                Set Location to 113 387
            End_Object    // Item_Group

            Object Item_Sap is a dbFormSub
                Entry_Item Item.Sap
                Set Label to "â‡õ.SAP"
                Set Size to 13 76
                Set Location to 100 363
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Item_Sap

            Object Item_Item_Orio is a dbCheckBoxSub
                Entry_Item Item.Item_orio
                Set Size to 13 21
                Set Location to 111 76
            End_Object    // Item_Item_Orio


            //AB-StoreStart
                                                                                                                
            //AB-StoreEnd

        End_Object    // Container1

        Object dbTabDialogSubS1 is a dbTabDialogSubS
            Set Size to 116 450
            Set Location to 161 6
            Set Border_Style to Border_Normal
            Object dbTabPageSubS1 is a dbTabPageSubS
                Set Label to "dbTabPageSubS1"
                Object Itemtehn_ is a dbGridSub

                    //AB-StoreTopStart
                                                                                            
                    //AB-StoreTopEnd

                    Set Main_File to Itemtehn.File_Number
                    Set Server to (Itemtehn_DD(self))
                    Set Ordering to 3
                    Set Size to 80 140
                    Set Location to 15 3
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Itemtehn.Hmnia
                        Entry_Item Itemtehn.Code
                    End_Row

                    Set Form_Width    item 0 to 60
                    Set Header_Label  item 0 to "Ü£ú®/§Âò"
                    
                    Set Form_Width    item 1 to 72
                    Set Header_Label  item 1 to "â‡õ†°Ê™"
                    

                    //AB-StoreStart
                                                                                            
                    set currentrowcolor     to 11468799
                    set currentcellcolor    to 11468799
                    //Set Column_Option Item 1 to NoEnter True
                    
                    Function Child_entering returns Integer
                        Integer rval
                        Forward Get Child_Entering to rVal
                        If (NOT(rVal)) Begin
                            If (Should_Save(item_dD(Self))) Send Request_Save to item_DD
                            If (Current_Record(item_DD(Self))) Forward Get Child_Entering to rVal
                            Else Function_Return 1
                        End
                        function_return rVal
                    End_Function
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Itemtehn_

                Object the_table is a dbGridSub

                    //AB-StoreTopStart
                                                                                            
                    //AB-StoreTopEnd

                    Set Main_File to Itemd.File_Number
                    Set Server to (Itemd_DD(self))
                    Set Ordering to 4
                    Set Size to 92 291
                    Set Location to 5 149
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Itemd.Recnum
                        Entry_Item Itemd.Itemd_code
                        Entry_Item (Fsitem(self,itemd.itemd_code))
                        Entry_Item Itemd.Itemd_qty
                    End_Row

                    Set Form_Width    item 0 to 0
                    Set Header_Label  item 0 to "Recnum"
                    
                    Set Form_Width    item 1 to 90
                    Set Header_Label  item 1 to "â‡õ†°Ê™ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 2 to 134
                    Set Header_Label  item 2 to "èú®†ö®ò≠„"
                    
                    Set Form_Width    item 3 to 60
                    Set Header_Label  item 3 to "è¶©Ê´û´ò"
                    

                    //AB-StoreStart
                                                                                            
                    Set Column_Option Item 0 to NoEnter True
                    
                    Procedure End_Construct_Object
                        Integer iDecimals
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos  SysCurXr.C_Code0  to    iDecimals
                        Set Points Item 3 to 3
                        Set Numeric_Mask Item 3 to 14 3
                    end_Procedure
                    
                    procedure item_change integer fromi integer toi returns integer
                        local integer rval icol iBase_item iGridID iCurrItem
                        Local String Sval
                        Move (the_table(dbTabPageSubS1(dbTabDialogSubS1(self)))) to iGridID
                        forward get msg_item_change fromi toi to rval
                        if (focus(Desktop) = iGridID) begin
                            Get Column fromi to iCol
                            if (icol=1) begin
                                Get Base_Item to iBase_item
                                Get Value Item (iBase_item+1) to Sval
                                Move (Fsitem(self,Sval))   to Sval
                                Set value item (iBase_item+2) to sval
                            End
                        end
                        procedure_return rval
                    end_procedure
                    
                    Function Child_entering returns Integer
                        Integer rval
                        Forward Get Child_Entering to rVal
                        If (NOT(rVal)) Begin
                            If (Should_Save(itemtehn_dD(Self))) Send Request_Save to itemtehn_DD
                            If (Current_Record(itemtehn_DD(Self))) Forward Get Child_Entering to rVal
                            Else Begin
                                Function_Return 1
                            End
                        End
                        function_return rVal
                    End_Function
                    
                    
                    //AB-StoreEnd

                End_Object    // the_table

                Object TextBoxSub28 is a TextBoxSub
                    Set Label to "íúÆ§†°‚™ è®¶õ†òö®ò≠‚™"
                    Set Color to clAqua
                    Set Location to 2 4
                    Set Size to 10 119
                    Set FontWeight to 800
                    Set Justification_Mode to jMode_Center
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub28


                //AB-StoreStart
                set label to "Ä§·¢¨©û ëÁ§üú´‡§ Ñ†õÈ§"
                //AB-StoreEnd

            End_Object    // dbTabPageSubS1

            Object dbTabPageSubS2 is a dbTabPageSubS
                Set Label to "dbTabPageSubS2"
                Object Witemx_ is a dbGridSub
                    Set Main_File to Witemx.File_Number
                    Set Server to (Witemx_DD(self))
                    Set Ordering to 7
                    Set Size to 91 378
                    Set Location to 2 0
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Witemx.Year_year
                        Entry_Item Witemx.Witemx_code
                        Entry_Item Witemx.Witemx_descr
                        Entry_Item Witemx.Witemx_yeardesc
                        Entry_Item Witemx.Item_apokat_cod
                    End_Row

                    Set Form_Width    item 0 to 45
                    Set Header_Label  item 0 to "ï®„©û :          "
                    
                    Set Form_Width    item 1 to 74
                    Set Header_Label  item 1 to "â‡õ†°Ê™ Ñ†õ¶¨™"
                    
                    Set Form_Width    item 2 to 131
                    Set Header_Label  item 2 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 3 to 68
                    Set Header_Label  item 3 to "Î´¶™ Ä§ò≠¶®·™"
                    
                    Set Form_Width    item 4 to 53
                    Set Header_Label  item 4 to "âò´ûö. Äß¶ü."
                    

                    //AB-StoreStart
                                                                                                                                                                                                                
                    Set Column_Option Item 4 to NoEnter true
                    Function Child_entering returns Integer
                        Integer rval
                        Forward Get Child_Entering to rVal
                        If (NOT(rVal)) Begin
                            If (Should_Save(witemx_DD(Self))) Send Request_Save to witemx_DD
                        End
                        function_return rVal
                    End_Function
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemx_


                //AB-StoreStart
                set label to "ÑÂõû ï®„©ú‡™"
                //AB-StoreEnd

            End_Object    // dbTabPageSubS2

            Object dbTabPageSubS3 is a dbTabPageSubS
                Set Label to "dbTabPageSubS3"
                Object Witemxt_ is a dbGridSub

                    //AB-StoreTopStart
                                                                                                            
                    //AB-StoreTopEnd

                    Set Main_File to Witemxt.File_Number
                    Set Server to (Witemxt_DD(self))
                    Set Ordering to 4
                    Set Size to 83 439
                    Set Location to 15 1
                    Set Wrap_State to TRUE
                    Set Border_Style to Border_Normal

                    Begin_Row
                        Entry_Item Witemxt.Value_date
                        Entry_Item Witemxt.Qty
                        Entry_Item Witemxt.Axia0
                        Entry_Item Witemxt.Pcdisc
                        Entry_Item Witemxt.Orio
                        Entry_Item Witemxt.Pagioorio
                        Entry_Item Witemxt.Pcdiscantlia
                    End_Row

                    Set Form_Width    item 0 to 62
                    Set Header_Label  item 0 to "Ü£/§Âò à©ÆÁ¶™"
                    
                    Set Form_Width    item 1 to 59
                    Set Header_Label  item 1 to "è¶©Ê´û´ò ‡™"
                    
                    Set Form_Width    item 2 to 74
                    Set Header_Label  item 2 to "âòüò®„ ´†£„ ã¶§."
                    
                    Set Form_Width    item 3 to 59
                    Set Header_Label  item 3 to "è¶©¶©´Ê Î°ß´."
                    
                    Set Form_Width    item 4 to 55
                    Set Header_Label  item 4 to "Ó®†¶ â¨ô†°È§"
                    
                    Set Form_Width    item 5 to 60
                    Set Header_Label  item 5 to "è·ö†¶ é®Â¶¨"
                    
                    Set Form_Width    item 6 to 61
                    Set Header_Label  item 6 to "è¶©¶©´Ê Î°ß´."
                    

                    //AB-StoreStart
                                                                                                            
                    Procedure End_Construct_Object
                        Integer iDecimals
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
                        Set Points Item 2 to iDecimals
                        Set Points Item 5 to iDecimals
                        Set Numeric_Mask Item 2 to 14 iDecimals ' ,*'
                        Set Numeric_Mask Item 5 to 14 iDecimals ' ,*'
                    
                    End_Procedure
                    
                    
                    Function Child_entering returns Integer
                        Integer rval
                        Forward Get Child_Entering to rVal
                        If (NOT(rVal)) Begin
                            If (Should_Save(witemxt_DD(Self))) Send Request_Save to witemxt_DD
                        End
                        function_return rVal
                    End_Function
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemxt_

                Object TextBoxSub22 is a TextBoxSub
                    Set Label to "ë´òüú®‚™ ö†ò ï®„©û Ä§´¢Âò™"
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Location to 4 253
                    Set Size to 10 148
                    Set FontWeight to 800
                    Set Justification_Mode to jMode_Center
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub22


                //AB-StoreStart
                set label to "í†£¶°ò´·¢¶ö¶™"
                
                //AB-StoreEnd

            End_Object    // dbTabPageSubS3

            Object dbTabPageSubS4 is a dbTabPageSubS
                Set Label to "dbTabPageSubS4"
                Object Witemcl_ is a dbGridSub
                    Set Main_File to Witemcl.File_Number
                    Set Server to (Witemcl_DD(self))
                    Set Size to 92 436
                    Set Location to 2 3
                    Set Color to 14280447
                    Set CurrentRowColor to 11783679
                    Set CurrentCellColor to 11783679
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Witemcl.Recnum
                        Entry_Item Witemcl.Client_code
                        Entry_Item (Fsclient(self,witemcl.client_code))
                        Entry_Item Witemcl.Client_itemcode
                        Entry_Item Witemcl.Client_date
                        Entry_Item Witemcl.Client_price
                    End_Row

                    Set Form_Width    item 0 to 0
                    Set Header_Label  item 0 to "Recnum"
                    
                    Set Form_Width    item 1 to 75
                    Set Header_Label  item 1 to "â‡õ.è®¶£ûüú¨´„"
                    
                    Set Form_Width    item 2 to 106
                    Set Header_Label  item 2 to "Ñß‡§¨£Âò"
                    
                    Set Form_Width    item 3 to 89
                    Set Header_Label  item 3 to "â‡õ.ÑÂõ¶¨™ è®¶£ûü."
                    
                    Set Form_Width    item 4 to 79
                    Set Header_Label  item 4 to "í'Ü£/§Âò Ñ†©òö‡ö„™ "
                    
                    Set Form_Width    item 5 to 79
                    Set Header_Label  item 5 to "í'í†£„ Ñ†©òö‡ö„™"
                    

                    //AB-StoreStart
                    Set Read_only_state to true
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemcl_


                //AB-StoreStart
                set label to 'ÑÂõû - è®¶£ûüú¨´‚™'
                //AB-StoreEnd

            End_Object    // dbTabPageSubS4

            Object dbTabPageSubS5 is a dbTabPageSubS
                Set Label to "í†£¶°ò´·¢¶ö¶™ Ñ†õÈ§-è®¶£ûüú¨´È§"
                Object TextBoxSub23 is a TextBoxSub
                    Set Label to "è®¶£ûüú¨´„™ :"
                    Set Location to 2 1
                    Set Size to 10 51
                    Set FontWeight to 800
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub23

                Object Witemcl_Client_Code is a dbFormSub
                    Entry_Item Witemcl.Client_code
                    Set Server to (Witemcl_DD(self))
                    Set Size to 13 61
                    Set Location to 1 63
                    Set TextColor to clNavy
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Prompt_Button_Mode to pb_PromptOff
                    Set Form_FontWeight Item 0 to 800
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                    set enabled_state to false
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemcl_Client_Code

                Object FormSub2 is a FormSub
                    Set Size to 13 122
                    Set Location to 1 128
                    Set TextColor to clNavy
                    Set Label_Col_Offset to 2
                    Set Form_FontWeight Item 0 to 800
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                    set enabled_state to false
                    //AB-StoreEnd

                End_Object    // FormSub2

                Object Witemcld_ is a dbGridSub
                    Set Main_File to Witemcld.File_Number
                    Set Server to (Witemcld_DD(self))
                    Set Ordering to 2
                    Set Size to 81 437
                    Set Location to 16 1
                    Set Color to 14280447
                    Set CurrentRowColor to 11783679
                    Set CurrentCellColor to 11783679
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Witemcld.Value_date
                        Entry_Item Witemcld.Qty
                        Entry_Item Witemcld.Axia00
                        Entry_Item Witemcld.Pcdisc
                        Entry_Item Witemcld.Orio
                        Entry_Item Witemcld.Pagioorio
                        Entry_Item Witemcld.Pcdiscantlia
                    End_Row

                    Set Form_Width    item 0 to 62
                    Set Header_Label  item 0 to "Ü£/§Âò à©ÆÁ¶™"
                    
                    Set Form_Width    item 1 to 59
                    Set Header_Label  item 1 to "è¶©Ê´û´ò ‡™"
                    
                    Set Form_Width    item 2 to 74
                    Set Header_Label  item 2 to "âòüò®„ ´†£„ £¶§."
                    
                    Set Form_Width    item 3 to 59
                    Set Header_Label  item 3 to "è¶©¶©´Ê Î°ß´."
                    
                    Set Form_Width    item 4 to 55
                    Set Header_Label  item 4 to "Ó®†¶ â¨ô†°È§"
                    
                    Set Form_Width    item 5 to 60
                    Set Header_Label  item 5 to "è·ö†¶ é®Â¶¨"
                    
                    Set Form_Width    item 6 to 61
                    Set Header_Label  item 6 to "è¶©¶©´Ê Î°ß´."
                    

                    //AB-StoreStart
                    Set Read_only_state to true
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemcld_

                Object TextBoxSub24 is a TextBoxSub
                    Set Label to "ë´òüú®‚™ ö†ò ï®„©û Ä§´¢Âò™"
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Location to 2 253
                    Set Size to 10 148
                    Set FontWeight to 800
                    Set Justification_Mode to jMode_Center
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub24

            End_Object    // dbTabPageSubS5


            //AB-StoreStart
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
            //AB-StoreEnd

        End_Object    // dbTabDialogSubS1


        //AB-StoreStart
            
        Procedure Activate_View returns Integer
            Integer rVal
        //    Send Rebuild_Constraints    to Witemcl_DD
        //    Send Beginning_Of_Data      to (Witemcl_ (dbTabPageSubS4(dbTabDialogSubS1(Self)))) True
            Forward Get Msg_Activate_View to rVal
            Send Activate               to (item_item_code(container1(Self)))
        
            //Send Rebuild_Constraints    to Witemcl_DD
            //Send Beginning_Of_Data      to (Witemcl_ (dbTabPageSubS4(dbTabDialogSubS1(Self)))) True
        
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Item


    //AB-StoreStart
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
