//AB/ Project v58U:UpdateAA
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v58U:UpdateAA"
//AB/     Set ProjectFileName to "V58U.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V58U is a dbViewSubS
//     Syscurgl_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gthaa_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     Gthhmgio_Gthhmgio_Code is a dbFormSub
//     Gthhmgio_Gthhmgio_Descr is a dbFormSub
//     Gthaa_Gthaa_Hmnia is a FormSub
//     Gthaa_Gthaa_Laa is a FormSub
//     Year_Year_Xrhshfrom is a dbFormSub
//     Year_Year_Xrhshto is a dbFormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       TP_Xorigise_Aa_dbTabPageSubS is a dbTabPageSubS
//         Eos_Hmnia_FormSub is a FormSub
//         oXorigise_Aa_ButtonSub is a ButtonSub
//       TP_Zero_Aa_dbTabPageSubS is a dbTabPageSubS
//         oZero_aa_ButtonSub is a ButtonSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object dbGrpYear
Register_Object dbTabDialogSubS1
Register_Object Eos_Hmnia_FormSub
Register_Object Gthaa_DD
Register_Object Gthaa_Gthaa_Hmnia
Register_Object Gthaa_Gthaa_Laa
Register_Object Gthhmgio_DD
Register_Object Gthhmgio_Gthhmgio_Code
Register_Object Gthhmgio_Gthhmgio_Descr
Register_Object oXorigise_Aa_ButtonSub
Register_Object oZero_aa_ButtonSub
Register_Object Syscurgl_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TP_Xorigise_Aa_dbTabPageSubS
Register_Object TP_Zero_Aa_dbTabPageSubS
Register_Object V58U
Register_Object Year_Year_Xrhshfrom
Register_Object Year_Year_Xrhshto
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart

Use DoGlMntn.bp
Use dd_debug.dg


//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use Form.Sub
Use dbTabDlgS.Sub
Use Button.Sub

Use SYSCURGL.DD
Use GTHHMGIO.DD
Use GTHAA.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_V58U FOR ;
;
Object V58U is a dbViewSubS
    Set Label to "v058u:Ž¨ ©« ¡¦§¦åž©ž „šš¨˜­é¤"
    Set Size to 294 515
    Set Location to 1 3

    //AB-DDOStart

    Object Syscurgl_DD is a Syscurgl_DataDictionary
    End_Object    // Syscurgl_DD

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary

        //AB-StoreStart
        
        Set Read_Only_State to TRUE
        
        //AB-StoreEnd

    End_Object    // Gthhmgio_DD

    Object Gthaa_DD is a Gthaa_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))
        Set Constrain_File to Gthhmgio.File_Number

        //AB-StoreStart
        
        Set Read_Only_State to TRUE
        
        Set Field_Options Field Gthaa.Gthaa_Lhmnia to DD_DisplayOnly
        Set Field_Options Field Gthaa.Gthaa_Laa    to DD_DisplayOnly
        
        //Procedure OnConstrain
        //    Forward Send OnConstrain
        //    Constrain Gthaa.Gthhmgio_Code Eq Gthhmgio.Gthhmgio_Code
        //End_Procedure //onconstrain
        
        
        //AB-StoreEnd

    End_Object    // Gthaa_DD

    Set Main_DD to (Gthhmgio_DD(self))
    Set Server to (Gthhmgio_DD(self))

    //AB-DDOEnd

    Object dbGrpYear is a dbGroupSub
        Set Size to 26 506
        Set Location to -1 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurgl.Company_name
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 126
            Set Location to 9 51
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
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 110
            Set Location to 9 256
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
            Set Server to (Syscurgl_DD(self))
            Set Size to 13 61
            Set Location to 8 440
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

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "„«˜ ¨å˜:"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 30
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "“§¦¡/£˜ :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 211
            Set Size to 10 35
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "•¨ã©ž :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 402
            Set Size to 10 28
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3

    End_Object    // dbGrpYear

    Object Gthhmgio_Gthhmgio_Code is a dbFormSub
        Entry_Item Gthhmgio.Gthhmgio_code
        Set Label to "‰à› ¡æª †£œ¨¦¢¦šå¦¬:"
        Set Size to 13 55
        Set Location to 29 115
        Set Label_Col_Offset to 100
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnChange
                  Integer liGthHmgio_Code
                  String  lsYear_Recr
        
                  Move SyscurGL.Year_Recr to lsYear_Recr
                  Get Value Item 0        to liGthhmgio_Code
        
                  Clear Gthaa
                  Move lsYear_Recr     to Gthaa.Year_Recr
                  Move liGthhmgio_Code to Gthaa.Gthhmgio_Code
                  Find Eq Gthaa by Index.3 //index.3:gthaa:year_recr+gthhmgio_code
                  If (Found=1) Begin
                    Set Value of Gthaa_Gthaa_Hmnia Item 0 to Gthaa.Gthaa_Lhmnia
                    Set Value of Gthaa_Gthaa_Laa   Item 0 to Gthaa.Gthaa_Laa
                    //Send Find_By_Recnum to (Gthaa_dd(Self)) Gthaa.File_Number Gthaa.Recnum
                  End
                  Else Begin
                    Set Value of Gthaa_Gthaa_Hmnia Item 0 to ""
                    Set Value of Gthaa_Gthaa_Laa   Item 0 to ""
                  End
        End_Procedure //onchange
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Gthhmgio_Gthhmgio_Code

    Object Gthhmgio_Gthhmgio_Descr is a dbFormSub
        Entry_Item Gthhmgio.Gthhmgio_descr
        Set Size to 13 223
        Set Location to 30 201
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Gthhmgio_Gthhmgio_Descr

    Object Gthaa_Gthaa_Hmnia is a FormSub
        Set Label to "’œ¢.†£/¤å˜ •¦¨ãšž©žª €/€:"
        Set Size to 13 55
        Set Location to 47 115
        Set Color to clBtnFace
        Set Label_Col_Offset to 100
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Gthaa_Gthaa_Hmnia

    Object Gthaa_Gthaa_Laa is a FormSub
        Set Label to "’œ¢œ¬«˜å¦ª  €/€:"
        Set Size to 13 55
        Set Location to 63 115
        Set Color to clBtnFace
        Set Label_Col_Offset to 100
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Gthaa_Gthaa_Laa

    Object Year_Year_Xrhshfrom is a dbFormSub
        Entry_Item Syscurgl.Year_xrhshfrom
        Set Server to (Syscurgl_DD(self))
        Set Label to "•¨ã©ž €§æ:"
        Set Size to 13 66
        Set Location to 82 115
        Set Label_Col_Offset to 100
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Year_Year_Xrhshfrom

    Object Year_Year_Xrhshto is a dbFormSub
        Entry_Item Syscurgl.Year_xrhshto
        Set Server to (Syscurgl_DD(self))
        Set Label to "•¨ã©ž „àª:"
        Set Size to 13 66
        Set Location to 96 115
        Set Label_Col_Offset to 100
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Year_Year_Xrhshto

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 143 506
        Set Location to 114 3
        Object TP_Xorigise_Aa_dbTabPageSubS is a dbTabPageSubS
            Set Label to "Xorigise_Aa_dbTabPageSubS"
            Object Eos_Hmnia_FormSub is a FormSub
                Set Label to "ƒé©«œ «ž¤ ž£/¤å˜ £â®¨  «ž¤ ¦§¦å˜ Ÿâ¢œ«œ ¤˜ ®¦¨žšžŸœå €/€:"
                Set Size to 13 55
                Set Location to 26 244
                Set Label_Col_Offset to 210
                Set Form_Datatype Item 0 to Mask_Date_Window
                Set Form_Mask Item 0 to "d/M/yyyy"
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Eos_Hmnia_FormSub

            Object oXorigise_Aa_ButtonSub is a ButtonSub
                Set Label to "„¡«â¢œ©ž Ž¨ ©« ¡¦§¦åž©žª"
                Set Size to 15 99
                Set Location to 97 289
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Procedure OnClick
                    Date    ldDateEosAA
                    String  lsChkStr
                    Integer liGthHmgio_Code liTrexe_Result
                    Integer libpo
                
                    Get Field_Current_Value of Gthaa_DD    Field Gthaa.GthAA_Lhmnia     to lsChkStr
                    Get Field_Current_Value of GthHmgio_dd Field GthHmgio.GthHmgio_Code to liGthHmgio_Code
                    Move (oDo_GL_Maintainance(Self)) to liBpo
                    Get Value of (Eos_Hmnia_FormSub(TP_Xorigise_Aa_dbTabPageSubS(dbTabDialogSubS1(Self)))) to ldDateEosAA
                
                    Get Xorigise_Aa of liBpo liGthhmgio_Code ldDateEosAA (Self) to liTrexe_Result
                //       If (liTrexe_Result <> 0);
                //       Send Operation_Not_Allowed to liBpo liTrexe_Result
                    Send Find_Ge to Gthhmgio_Gthhmgio_Code
                End_Procedure //onclick
                
                
                //AB-StoreEnd

            End_Object    // oXorigise_Aa_ButtonSub


            //AB-StoreStart
            Set Label to "•¦¨ãšž©ž €/€"
            //AB-StoreEnd

        End_Object    // TP_Xorigise_Aa_dbTabPageSubS

        Object TP_Zero_Aa_dbTabPageSubS is a dbTabPageSubS
            Set Label to "Zero_Aa_dbTabPageSubS"
            Object oZero_aa_ButtonSub is a ButtonSub
                Set Label to "‹ž›œ¤ ©£æª €€"
                Set Size to 15 99
                Set Location to 97 289
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Procedure OnClick
                    Integer liGthHmgio_Code liTrexe_Result
                    Integer libpo
                
                    Move (oDo_GL_Maintainance(Self)) to liBpo
                    Get Field_Current_Value of (GthHmgio_dd(Self)) Field GthHmgio.GthHmgio_Code to liGthHmgio_Code
                
                    Get Zero_Aa of liBpo liGthhmgio_Code (Self) to liTrexe_Result
                //  If (liTrexe_Result <> 0) Error liTrexe_Result "***"
                    Send Find_Ge to Gthhmgio_Gthhmgio_Code
                End_Procedure //onclick
                
                
                //AB-StoreEnd

            End_Object    // oZero_aa_ButtonSub


            //AB-StoreStart
            Set Label to "‹ž›œ¤ ©£æª €/€"
            //AB-StoreEnd

        End_Object    // TP_Zero_Aa_dbTabPageSubS

    End_Object    // dbTabDialogSubS1


    //AB-StoreStart
            
    Set Verify_Exit_Msg To Get_No_Confirmation
    //AB-StoreEnd

CD_End_Object    // V58U


//AB-StoreStart








//AB-StoreEnd

//AB/ End_Object    // prj
