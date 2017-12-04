//AB/ Project vwPayTerms
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vwPayTerms"
//AB/         Set ProjectFileName to "vwPayTerms.VW"

// Project Object Structure
//   vwPayTerms is a dbViewSub
//     PayTerms_DD is a DataDictionary
//     PayTerms_PayTerms_Code is a dbFormSub
//     PayTerms_PayTerms_Descr is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     Payterms_Old_Description is a dbFormSub
//     TextBoxSub3 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     rPayterms_Report is a CrystalReportSubSQL

// Register all objects
Register_Object ButtonSub1
Register_Object PayTerms_DD
Register_Object PayTerms_PayTerms_Code
Register_Object PayTerms_PayTerms_Descr
Register_Object Payterms_Old_Description
Register_Object rPayterms_Report
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object vwPayTerms


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Txtbox.Sub
    Use Button.Sub

    Use PAYTERMS.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vwPayTerms FOR vwPayTerms

    Object vwPayTerms is a dbViewSub
        Set Label to "É†òÆúÂ®†©û Ó®‡§ è¢û®‡£„™"
        Set Size to 97 401
        Set Location to 22 13

        //AB-DDOStart

        Object PayTerms_DD is a Payterms_DataDictionary
        End_Object    // PayTerms_DD

        Set Main_DD to (PayTerms_DD(self))
        Set Server to (PayTerms_DD(self))

        //AB-DDOEnd

        Object PayTerms_PayTerms_Code is a dbFormSub
            Entry_Item Payterms.Payterms_code
            Set Size to 13 69
            Set Location to 14 81
            Set Label_Col_Offset to 8
            Set Label_Justification_Mode to jMode_Right
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // PayTerms_PayTerms_Code

        Object PayTerms_PayTerms_Descr is a dbFormSub
            Entry_Item Payterms.Payterms_descr
            Set Size to 13 237
            Set Location to 32 81
            Set Label_Col_Offset to 8
            Set Label_Justification_Mode to jMode_Right
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // PayTerms_PayTerms_Descr

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "â‡õ†°Ê™"
            Set Auto_Size_State to FALSE
            Set Location to 14 44
            Set Size to 10 30
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„"
            Set Auto_Size_State to FALSE
            Set Location to 34 34
            Set Size to 10 40
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object Payterms_Old_Description is a dbFormSub
            Entry_Item Payterms.Old_description
            Set Size to 13 237
            Set Location to 53 81
            Set Color to 16317943
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Payterms_Old_Description

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "èò¢ò†· èú®†ö®ò≠„"
            Set Auto_Size_State to FALSE
            Set Location to 55 8
            Set Size to 10 67
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "Printer0.bmp"
            Set Size to 33 33
            Set Location to 32 341
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set TooltipValue to "Ñ°´Áß‡©û Ñ¢‚öÆ¶¨"
            
            Procedure OnClick
                Send RunReport to (rPayterms_Report(Self))
            End_Procedure // OnClick
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
        
        Object rPayterms_Report is a CrystalReportSubSQL
        
            Property Integer ReportReady Public False
        
            Procedure RunReport
                Send Cursor_Wait To (Cursor_Control(Self))
                Set Output_Destination  To PRINT_TO_WINDOW
                Send Run_report
                Send Cursor_Ready To (Cursor_Control(Self))
                If (ReportReady(Self)) ;
                    Send Info_box "í¶ ú°´¨ß‡´†°Ê úÂ§ò† ‚´¶†£¶" "è¢û®¶≠¶®Âò"
            End_procedure
        
            Set Report_Name to "rPayTerms.rpt"
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
        
        End_Object    // vwPayTerms
        
        //AB-StoreEnd

    End_Object    // vwPayTerms

//AB/     End_Object    // prj
