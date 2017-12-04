//AB/ Project SelXrhs
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "SelXrhs"
//AB/         Set ProjectFileName to "SelXrhs.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   SelXrhs is a dbModalPanelSub
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Company_Company_Code is a dbFormSub
//     Company_Company_Name is a dbFormSub
//     Branch_Branch_Code is a dbFormSub
//     Branch_Branch_Name is a dbFormSub
//     Year_Year_Year is a dbFormSub
//     Year_Year_Descr is a dbFormSub
//     Year_Year_Entrydate is a dbFormSub
//     oOk_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     otxtCompany is a TextBoxSub
//     otxtBranch is a TextBoxSub
//     otxtYear is a TextBoxSub
//     otxtWorkingDay is a TextBoxSub
//     otxtWorkingDay is a TextBoxSub
//     chkxr is a CheckBoxSub

// Register all objects
Register_Object Branch_Branch_Code
Register_Object Branch_Branch_Name
Register_Object Branch_DD
Register_Object Company_Company_Code
Register_Object Company_Company_Name
Register_Object Company_DD
Register_Object chkxr
Register_Object oCancel_bn
Register_Object oOk_bn
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtWorkingDay
Register_Object otxtYear
Register_Object SelXrhs
Register_Object Year_DD
Register_Object Year_Year_Descr
Register_Object Year_Year_Entrydate
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    #IFDEF         gs_Selected_Company_Code
    #ELSE
           String  gs_Selected_Company_Code
    #ENDIF
    
    #IFDEF         gs_Selected_Branch_Code
    #ELSE
           String  gs_Selected_Branch_Code
    #ENDIF
    
    #IFDEF         gi_Selected_Year
    #ELSE
           Integer gi_Selected_Year
    #ENDIF
    
    #IFDEF         gs_Selected_Year_Recr
    #ELSE
           String  gs_Selected_Year_Recr
    #ENDIF
    
    #IFDEF         gs_selected_beto_site
    #ELSE
           String  gs_selected_beto_site
    
    
    Open SysCurXR
    Open Nomisma
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Button.Sub
    Use Txtbox.Sub
    Use Chkbox.Sub


    Use COMPANY.DD
    Use BRANCH.DD
    Use YEAR.DD
    
    //AB-IgnoreEnd

    Object SelXrhs is a dbModalPanelSub

        //AB-StoreTopStart
        Property String  psSelectedYearRecr  ''
        Property Integer piChangeState False
        
        //AB-StoreTopEnd

        Set Label to "„§ ¢¦šã „«˜ ¨å˜ª - “§¦¡˜«˜©«ã£˜«¦ª - •¨ã©žª"
        Set Size to 116 373
        Set Location to 6 6
        Set Color to 12232306

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary

            //AB-StoreStart
            Set Foreign_Field_Options DD_KEYFIELD                   to DD_Clear_Field_Options DD_FindReq
            Set Foreign_Field_Options DD_INDEXFIELD                 to DD_Clear_Field_Options DD_FindReq
            Set Foreign_Field_Options Field Company.Company_Name    to DD_DisplayOnly
            
            
            //AB-StoreEnd

        End_Object    // Company_DD

        Object Branch_DD is a Branch_DataDictionary
            Set DDO_Server to (Company_DD(self))

            //AB-StoreStart
            Set Foreign_Field_Options DD_KEYFIELD   to DD_Clear_Field_Options DD_FindReq
            Set Foreign_Field_Options DD_INDEXFIELD to DD_Clear_Field_Options DD_FindReq
            
            Set Foreign_Field_Options DD_KEYFIELD   to DD_AutoFind_GE
            Set Foreign_Field_Options DD_INDEXFIELD to DD_AutoFind_GE
            
            Set Foreign_Field_Options Field Branch.Branch_Name to DD_DisplayOnly
            
            //AB-StoreEnd

        End_Object    // Branch_DD

        Object Year_DD is a Year_DataDictionary
            Set DDO_Server to (Branch_DD(self))

            //AB-StoreStart
            Set Field_Options Field Year.Year_Descr to DD_DisplayOnly
            Set Field_Options Field Year.Year_Year to DD_AutoFind_GE
            
            Function Validate_Delete Returns Integer
                Function_Return 1
            End_Function
            
            
            //AB-StoreEnd

        End_Object    // Year_DD

        Set Main_DD to (Year_DD(self))
        Set Server to (Year_DD(self))

        //AB-DDOEnd

        Object Company_Company_Code is a dbFormSub
            Entry_Item Company.Company_code
            Set Size to 13 71
            Set Location to 9 112
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Auto_Clear_Deo_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Prompt_Object to (sl001(Self))
            
            
            //AB-StoreEnd

        End_Object    // Company_Company_Code

        Object Company_Company_Name is a dbFormSub
            Entry_Item Company.Company_name
            Set Size to 13 168
            Set Location to 9 188
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Code is a dbFormSub
            Entry_Item Branch.Branch_code
            Set Size to 13 71
            Set Location to 23 112
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Auto_Clear_Deo_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl002(Self))
            
            Procedure Prompt_CallBack Integer hPrompt
                string lsCompanyCode
                Get Field_Current_Value of Company_DD Field Company.Company_Code to lsCompanyCode
                Set psFragmaCompanyCode of hPrompt to lsCompanyCode
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Branch_Branch_Code

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Branch.Branch_name
            Set Size to 13 168
            Set Location to 23 188
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Year.Year_year
            Set Size to 13 71
            Set Location to 37 112
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Auto_Clear_Deo_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl003(Self))
            
            Procedure Prompt_CallBack Integer hPrompt
                String lsCompanyCode lsBranchCode
                integer icheck
                get checked_state of (chkxr(self)) to icheck
                Get Field_Current_Value of Company_DD Field Company.Company_Code to lsCompanyCode
                Get Field_Current_Value of Branch_DD  Field Branch.Branch_Code   to lsBranchCode
                Set psFragmaCompanyCode of hPrompt to lsCompanyCode
                Set psFragmaBranchCode  of hPrompt to lsBranchCode
                set pifragmaactive      of hPrompt to icheck
            End_Procedure
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object Year_Year_Descr is a dbFormSub
            Entry_Item Year.Year_descr
            Set Size to 13 168
            Set Location to 37 188
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            //AB-StoreEnd

        End_Object    // Year_Year_Descr

        Object Year_Year_Entrydate is a dbFormSub
            Entry_Item Year.Year_entrydate
            Set Size to 13 71
            Set Location to 52 112
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Auto_Clear_Deo_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Year_Year_Entrydate

        Object oOk_bn is a ButtonSub
            Set Label to "€§¦›¦®ã (F2)"
            Set Size to 17 54
            Set Location to 74 188
            Set Form_FontHeight Item 0 to 14
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                Delegate Send AcceptTheValues
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // oOk_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "„¥¦›¦ª "
            Set Size to 17 54
            Set Location to 74 302
            Set Form_FontHeight Item 0 to 14
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
               Send Exit_Application to oSelectYear
            //   Send Stop_Modal_UI to oSelectYear
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object otxtCompany is a TextBoxSub
            Set Label to "„«˜ ¨œå˜"
            Set Auto_Size_State to FALSE
            Set Color to 12232306
            Set FontSize to 14 8
            Set Location to 9 10
            Set Size to 10 35
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtCompany

        Object otxtBranch is a TextBoxSub
            Set Label to "“§¦¡˜«˜©«ã£˜«˜"
            Set Auto_Size_State to FALSE
            Set Color to 12232306
            Set FontSize to 14 8
            Set Location to 23 10
            Set Size to 10 63
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtBranch

        Object otxtYear is a TextBoxSub
            Set Label to "•¨ã©ž :          "
            Set Auto_Size_State to FALSE
            Set Color to 12232306
            Set FontSize to 14 8
            Set Location to 38 10
            Set Size to 10 40
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtYear

        Object otxtWorkingDay is a TextBoxSub
            Set Label to "†£/¤å˜ „¨š˜©å˜ª"
            Set Auto_Size_State to FALSE
            Set Color to 12232306
            Set FontSize to 14 8
            Set Location to 52 10
            Set Size to 10 63
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtWorkingDay

        Object otxtWorkingDay is a TextBoxSub
            Set Label to "Ž¢œª ¦  ®¨ã©œ ª"
            Set Auto_Size_State to FALSE
            Set Color to 12232306
            Set FontSize to 14 8
            Set Location to 79 9
            Set Size to 10 63
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtWorkingDay

        Object chkxr is a CheckBoxSub
            Set Size to 13 22
            Set Location to 79 113
            Set Color to 12232306
        End_Object    // chkxr


        //AB-StoreStart
        
        Function ifSelect_Xrhsh Returns String
            String  lsRecord_id iID
            Set psSelectedYearRecr to gs_Selected_Year_Recr
            Set Block_Mouse_State to True
            Send Popup
            Get psSelectedYearRecr to lsRecord_id
            Function_return lsRecord_Id
        End_Function
        
        Procedure Request_Cancel
            Set Block_Mouse_State to False
            Forward Send Request_Cancel
        End_Procedure
        
        Procedure Close_Panel
            Set Block_Mouse_State to False
            Forward Send Close_Panel
        End_Procedure
        
        Procedure Exit_Application
            Set Block_Mouse_State to False
            Forward Send Exit_Application
        End_Procedure
        
        
        Procedure Activate
        
            Set Visible_State       Of Company_Company_Code to True
            Send Page_Object                                to Company_Company_Code TRUE
            Set Prompt_Button_Mode  Of Company_Company_Code to PB_promptOn
        
            Set Visible_State       Of Branch_Branch_Code   to True
            Send Page_Object                                to Branch_Branch_Code TRUE
            Set Prompt_Button_Mode  Of Branch_Branch_Code   to PB_promptOn
        
            Set Visible_State       Of Year_Year_Year       to True
            Send Page_Object                                to Year_Year_Year TRUE
            Set Prompt_Button_Mode  Of Year_Year_Year       to PB_promptOn
        
            Set Visible_State       Of Year_Year_EntryDate  to True
            Send Page_Object                                to Year_Year_EntryDate TRUE
        
            Set Visible_State       Of oOK_Bn               to True
            Send Page_Object                                to oOK_Bn TRUE
        
            Set Visible_State       Of oCancel_Bn           to True
            Send Page_Object                                to oCancel_Bn TRUE
        
            Set Visible_State       Of ChkXr                to True
            Send Page_Object                                to ChkXr TRUE
        
            Forward Send Activate
        
        End_Procedure
        
        
        
        Procedure AcceptTheValues
            Integer iRetVal liYearDD liCompanyDD liBranchDD
            String ldcheck lsYearRecr lsSite sCname sBname sYname sNom1 sNom2 sNom3
            Date ldYearXrhsh_From ldYearXrhsh_To
            Move Year_DD to liYearDD
            Get Field_Current_Value of liYearDD Field Year.Year_EntryDate to ldcheck
            if (ldcheck = "") ;
                Get Message_Box "The Chosen Date is Not Correct." "Attention" MB_OK MB_ICONWARNING to iRetVal
            else begin
                Get Field_Current_Value of liYearDD Field Year.Year_XrhshFrom   to ldYearXrhsh_From
                Get Field_Current_Value of liYearDD Field Year.Year_XrhshTo     to ldYearXrhsh_To
                if ((ldcheck < ldYearXrhsh_From) or (ldcheck > ldYearXrhsh_To)) ;
                    Get Message_Box "The Date is Outside Range" "Attention" MB_OK MB_ICONWARNING to iRetVal
                else begin
                    Move Company_DD to liCompanyDD
                    Move Branch_DD  to liBranchDD
                    Move Year_DD    to liYearDD
                    send Request_Save to liYearDD
                    Get Field_Current_Value of liCompanyDD Field Company.Company_Code to gs_Selected_Company_Code
                    Get Field_Current_Value of liBranchDD  Field Branch.Branch_Code   to gs_Selected_Branch_Code
        
                    Get Field_Current_Value of liBranchDD  Field Branch.Beto_Site   to gs_Selected_Beto_Site
        
                    Get Field_Current_Value of liBranchDD  Field Branch.Branch_Site   to lsSite
                    Get Field_Current_Value of liYearDD    Field Year.Year_Year       to gi_Selected_Year
                    Get Field_Current_Value of liYearDD    Field Year.Year_Recr       to lsYearRecr
                    Get Field_Current_Value of liYearDD    Field Year.Year_C_Code0    to sNom1
                    Get Field_Current_Value of liYearDD    Field Year.Year_C_Code00   to sNom2
                    Get Field_Current_Value of liYearDD    Field Year.Year_C_CodeR    to sNom3
        
                    Get Field_Current_Value of liCompanyDD Field Company.Company_Name to sCname
                    Get Field_Current_Value of liBranchDD  Field Branch.Branch_name   to sBname
                    Get Field_Current_Value of liYearDD    Field Year.Year_Descr      to sYname
        
        
                    Local String    sCode
                    Local Integer   iBreak
                    Move 0 to iBreak
                    Clear Nomisma
                    Find Gt Nomisma.Recnum
                    While ((Found=1) And (iBreak=0))
                        If (Nomisma.Einai_Euro='1') Begin
                            Move 1 to iBreak
                            Move Nomisma.Nomisma_Code to sCode
                        End
                        If (Not(iBreak)) Find Gt Nomisma.Recnum
                    Loop
                    Move (Trim(sCode)) to sCode
        
        
                    Reread SysCurXR
                    Move gs_Selected_Company_Code   to SysCurXR.Company_Code
                    Move gs_Selected_beto_site      to SysCurXR.beto_site
                    Move gs_Selected_Branch_Code    to SysCurXR.Branch_Code
                    Move gi_Selected_Year           to SysCurXR.Year_Year
                    Move lsYearRecr                 to SysCurXR.Year_Recr
                    Move lsSite                     to SysCurXR.Branch_Site
        
                    Move sCname                     to SysCurXR.Company_Name
                    Move sBname                     to SysCurXR.Branch_Name
                    Move sYname                     to SysCurXR.Year_Descr
        
                    Move ldYearXrhsh_From           to SysCurXr.Year_XrhshFrom
                    Move ldYearXrhsh_To             to SysCurXr.Year_XrhshTo
        
                    Move  (Trim(sNom1))             to SysCurXR.C_Code0
                    Move  (Trim(sNom2))             to SysCurXR.C_Code00
                    Move  (Trim(sNom3))             to SysCurXR.C_CodeR
        
                    Move sCode                      to SysCurXR.Euro_Code
        
                    Saverecord SysCurXR
                    Unlock
                    Move lsYearRecr                 to gs_Selected_Year_Recr
                    Set psSelectedYearRecr          to lsYearRecr
        
        
                    Send Stop_Modal_ui
        
                    Set kEnter_Next_State of ghoWorkSpace to TRUE
                End
            end
        End_Procedure
        
        Set Locate_Mode to Center_On_Screen
        
        On_Key KCancel      Send KeyAction to (oCancel_Bn(Self))
        On_Key KClose_Panel Send KeyAction to (oCancel_Bn(Self))
        On_Key Ksave_record send KeyAction to (oOK_Bn(Self))
        
        On_Key Key_alt+Key_A send KeyAction to (oOK_Bn(Self))
        On_Key Key_alt+Key_Q send KeyAction to (oCancel_Bn(Self))
        
        
        
        
        //AB-StoreEnd

    End_Object    // SelXrhs


    //AB-StoreStart
        
    Procedure Epelexe_Xrhsh for BaseClass
        Integer liCompanyDD liBranchDD liYearDD liYear liModalId
        String lsCompany lsBranch lsWhatXrhsh
        Move oSelectYear to liModalId
        Get ifSelect_Xrhsh Of liModalId to lsWhatXrhsh
        if (Trim(lsWhatXrhsh)='') Send Exit_Application
    End_Procedure
    
    Procedure Allaxe_Xrhsh for BaseClass
        Integer rVal liModalId
        get message_box "‚ ˜ ¤˜ ˜¢¢á¥œ«œ ®¨ã©ž Ÿ˜ §¨â§œ  \n¤˜ ¡¢œå©à ¦¢˜ «˜ ˜¤¦ ®«á §˜¨áŸ¬¨˜ «žª œ­˜¨£¦šãª" '„§ ™œ™˜åà©ž €¢¢˜šãª •¨ã©žª' mb_yesno (mb_iconquestion ior mb_defbutton1) to rval
        If (rVal = MBR_Yes) If (Close_All_Views(Self,True)=0) Begin
            Move oSelectYear to liModalId
            Send Epelexe_Xrhsh
        End
    End_Procedure
    
    On_Key Key_Ctrl+Key_X Send Allaxe_Xrhsh
    On_Key Key_Alt+Key_X  Send Allaxe_Xrhsh
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
