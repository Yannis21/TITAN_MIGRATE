//AB/ Project vwBanks
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwBanks"
//AB/     Set ProjectFileName to "vwBanks.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwBanks is a dbViewSub
//     Banks_DD is a DataDictionary
//     txtNewCode is a TextBoxSub
//     Banks_Bank_Id is a dbFormSub
//     Banks_Bank_Name is a dbFormSub
//     txtOldode is a TextBoxSub
//     Banks_Bank_Older_Code is a dbFormSub
//     Banks_Bank_Older_Desc is a dbFormSub
//     TextBoxSub6 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     rBanks_Report is a CrystalReportSubSQL

// Register all objects
Register_Object Banks_Bank_Id
Register_Object Banks_Bank_Name
Register_Object Banks_Bank_Older_Code
Register_Object Banks_Bank_Older_Desc
Register_Object Banks_DD
Register_Object ButtonSub1
Register_Object rBanks_Report
Register_Object TextBoxSub6
Register_Object txtNewCode
Register_Object txtOldode
Register_Object vwBanks


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use slCodemast.sl
Use slbanks.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbForm.Sub
Use Button.Sub

Use BANKS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwBanks FOR vwBanks

Object vwBanks is a dbViewSub

    //AB-StoreTopStart
    
    
    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®†©û í®òßúùÈ§"
    Set Size to 133 455
    Set Location to 10 17

    //AB-DDOStart

    Object Banks_DD is a Banks_DataDictionary
    End_Object    // Banks_DD

    Set Main_DD to (Banks_DD(self))
    Set Server to (Banks_DD(self))

    //AB-DDOEnd

    Object txtNewCode is a TextBoxSub
        Set Label to "å‚¶™ â‡õ†°Ê™ í®·ßúùò™ (SAP)"
        Set Auto_Size_State to FALSE
        Set Location to 64 15
        Set Size to 18 62
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // txtNewCode

    Object Banks_Bank_Id is a dbFormSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Entry_Item Banks.Bank_id
        Set Size to 13 71
        Set Location to 86 15
        Set Label_Col_Offset to 8
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        //Procedure Prompt
        //    Set Modal_State Of slBanks to True
        //    Forward Send Prompt
        //    Set Modal_State Of slBanks to False
        //End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Banks_Bank_Id

    Object Banks_Bank_Name is a dbFormSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Entry_Item Banks.Bank_name
        Set Size to 13 291
        Set Location to 86 97
        Set Label_Col_Offset to 8
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        //Procedure Prompt
        //    Set Modal_State Of slBanks to True
        //    Forward Send Prompt
        //    Set Modal_State Of slBanks to False
        //End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Banks_Bank_Name

    Object txtOldode is a TextBoxSub
        Set Label to "â‡õ†°Ê™ í®·ßúùò™"
        Set Auto_Size_State to FALSE
        Set Location to 10 15
        Set Size to 18 40
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // txtOldode

    Object Banks_Bank_Older_Code is a dbFormSub

        //AB-StoreTopStart
                
        //AB-StoreTopEnd

        Entry_Item Banks.Bank_older_code
        Set Size to 13 71
        Set Location to 29 15
        Set Label_Col_Offset to 8
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        //Set Prompt_Object to (slCodemast(Self))
        
        //Procedure Prompt_CallBack Integer aiPromptID
        //    Set Fragmaqual of aiPromptID to "BANK"
        //End_Procedure
        
        //Procedure OnChange
        //    String sStr
        //    Get Value Item 0    to sStr
        //    Move (Trim(sStr))   to sStr
        //    Clear Codemast
        //    Move "BANK" to Codemast.Type
        //    Move sStr   to Codemast.Code
        //    Find Eq Codemast by Index.1
        //    Set Value Of Banks_Bank_Older_Desc Item 0 to (Trim(Codemast.Description))
        //End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Banks_Bank_Older_Code

    Object Banks_Bank_Older_Desc is a dbFormSub
        Entry_Item Banks.Bank_older_desc
        Set Size to 13 291
        Set Location to 29 97
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Banks_Bank_Older_Desc

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„ í®·ßúùò™ (SAP)"
        Set Auto_Size_State to FALSE
        Set Location to 64 99
        Set Size to 18 69
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Bitmap to "Printer0.bmp"
        Set Size to 33 39
        Set Location to 65 401
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set TooltipValue to "Ñ°´Áß‡©û Ñ¢‚öÆ¶¨"
        
        Procedure OnClick
            Send RunReport to (rBanks_Report(Self))
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
    
    Object rBanks_Report is a CrystalReportSubSQL
    
        Property Integer ReportReady Public False
    
        Procedure RunReport
            Send Cursor_Wait To (Cursor_Control(Self))
            Set Output_Destination  To PRINT_TO_WINDOW
            Send Run_report
            Send Cursor_Ready To (Cursor_Control(Self))
            If (ReportReady(Self)) ;
                Send Info_box "í¶ ú°´¨ß‡´†°Ê úÂ§ò† ‚´¶†£¶" "è¢û®¶≠¶®Âò"
        End_procedure
    
        Set Report_Name to "rBanks.rpt"
        Set Report_View_id To (Parent(Self))
    
        Set WindowStyle to (WS_VISIBLE ior WS_THICKFRAME ior ;
                            WS_SYSMENU ior WS_MAXIMIZEBOX ior ;
                            WS_MINIMIZEBOX ior WS_MAXIMIZE)
    
        Procedure OnStartPrinting
            String  FileName
            Integer FileType Destination
            If Destination EQ WQL_PRINT_TO_WINDOW ;
                Set ReportReady To False
            Else ;
                Set ReportReady To True
        End_procedure
    
        Procedure OnStopPrinting
            Set ZoomPreviewWindow to PE_ZOOM_FULL_SIZE
        End_procedure
    
    End_Object
    
    
    
    //AB-StoreEnd

End_Object    // vwBanks


//AB-StoreStart


//AB-StoreEnd

//AB/ End_Object    // prj
