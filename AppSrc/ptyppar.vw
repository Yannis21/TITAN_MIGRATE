//AB/ Project Ptyppar
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Ptyppar"
//AB/     Set ProjectFileName to "Ptyppar.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Ptyppar is a dbViewSubs
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     dbContainer3dSub2 is a dbContainer3dSub
//       Ptyppar_Ptyppar_Code is a dbFormSub
//       Ptyppar_Ptyppar_Descr is a dbFormSub
//       Ctypkin_Ctypkin_Code is a dbFormSub
//       Ctypkin_Ctypkin_Descr is a dbFormSub
//       Wtypkin_Wtypkin_Code is a dbFormSub
//       Wtypkin_Wtypkin_Descr is a dbFormSub
//       Ptyppar_Ptyppar_Is_What is a dbComboForm
//       Ptyppar_Ptyppar_Abrev is a dbFormSub
//       Ptyppar_Label is a dbFormSub
//       Ptyppar_Label1 is a dbFormSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//       TextBoxSub8 is a TextBoxSub
//       Ptyppar_Ftiaxnei_Tpay is a dbCheckBoxSub
//       Ptyppar_Einai_Paroxh_Yp is a dbCheckBoxSub
//       Ptyppar_Check_Posa_Plaf is a dbCheckBoxSub
//       Ptyppar_Ti_Typonei_Pms is a dbComboFormSub
//       FormSub1 is a FormSub
//       Ptyppar_Gtypkin_Code is a dbFormSub
//       TextBoxSub12 is a TextBoxSub
//       Ptyppar_Sysxet_Ptyppar is a dbFormSub
//       ButtonSub1 is a ButtonSub
//       ButtonSub2 is a ButtonSub
//       Textbox1 is a Textbox
//       Ptyppar_Singular is a dbFormSub
//       Ptyppar_Sub is a dbCheckBox
//       Ptyppar_Constrain is a dbCheckBoxSub
//       Textbox2 is a Textbox
//       Textbox4 is a Textbox
//       TextBoxSub13 is a TextBoxSub
//       TextBoxSub14 is a TextBoxSub
//       Textbox5 is a Textbox
//       Ptyppar_Year_Recr is a dbComboForm
//       TextBoxSub15 is a TextBoxSub
//       Ptyppar_Sap is a dbFormSub
//       Textbox6 is a Textbox
//       Ptyppar_Is_Xondr is a dbCheckBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//       TextBoxSub11 is a TextBoxSub
//     Pseira_ is a dbGridSub
//     btnEktyposh is a ButtonSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object btnEktyposh
Register_Object Company_Company_Name
Register_Object Ctypkin_Ctypkin_Code
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_DD
Register_Object dbContainer3dSub2
Register_Object dbGroupSub1
Register_Object FormSub1
Register_Object Pseira_
Register_Object Pseira_DD
Register_Object Ptyppar
Register_Object Ptyppar_Check_Posa_Plaf
Register_Object Ptyppar_Constrain
Register_Object Ptyppar_DD
Register_Object Ptyppar_Einai_Paroxh_Yp
Register_Object Ptyppar_Ftiaxnei_Tpay
Register_Object Ptyppar_Gtypkin_Code
Register_Object Ptyppar_Is_Xondr
Register_Object Ptyppar_Label
Register_Object Ptyppar_Label1
Register_Object Ptyppar_Ptyppar_Abrev
Register_Object Ptyppar_Ptyppar_Code
Register_Object Ptyppar_Ptyppar_Descr
Register_Object Ptyppar_Ptyppar_Is_What
Register_Object Ptyppar_Sap
Register_Object Ptyppar_Singular
Register_Object Ptyppar_Sub
Register_Object Ptyppar_Sysxet_Ptyppar
Register_Object Ptyppar_Ti_Typonei_Pms
Register_Object Ptyppar_Year_Recr
Register_Object Syscurxr_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox4
Register_Object Textbox5
Register_Object Textbox6
Register_Object Wtypkin_DD
Register_Object Wtypkin_Wtypkin_Code
Register_Object Wtypkin_Wtypkin_Descr
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use gtypkin.sl
use r12.rv
use cflagkin.vw
use wflagkin.vw
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbCont3.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbChkbox.Sub
Use dbCmbfrm.Sub
Use Form.Sub
Use Button.Sub
Use dbGroup.Sub
Use dbGrid.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use PSEIRA.DD
Use SYSCURXR.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Ptyppar FOR ;
;
Object Ptyppar is a dbViewSubs

    //AB-StoreTopStart
    Property String psModule        Public ''
    Property String psSysx          Public ''
    //AB-StoreTopEnd

    Set Label to "íÁß¶† ßò®ò©´ò´†°È§ - ëú†®‚™"
    Set Size to 294 501
    Set Location to 1 5

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
                                                                                        
        Procedure Request_Save
            Integer iErr iRec
            String  sCode sRecr
            Indicate Err False
            Forward Send Request_Save
            Move (Err)                              to iErr
            If (Not(iErr)) Begin
                Move Ptyppar.Recnum                 to iRec
                Move Ptyppar.Sysxet_Ptyppar         to sCode
                Move (Trim(sCode))                  to sCode
                If (sCode<>'') Begin
                    Clear Ptyppar
                    Move SyscurXr.Company_Code      to Ptyppar.Company_Code
                    Move SyscurXr.Branch_Code       to Ptyppar.Branch_Code
                    Move SyscurXr.Year_Year         to Ptyppar.Year_Year
                    Move sCode                      to Ptyppar.Ptyppar_Code
                    Find Eq Ptyppar By Index.1
                    If (Found) Begin
                        Move Ptyppar.Ptyppar_Recr   to sRecr
                        Move (Trim(sRecr))          to sRecr
                        Clear Ptyppar
                        Move iRec                   to Ptyppar.Recnum
                        Find Eq Ptyppar.Recnum
                        If (Found) Begin
                            Reread Ptyppar
                            Move sRecr              to Ptyppar.Sysx_Ptyp_Recr
                            Saverecord ptyppar
                            Unlock
                        End
                    End
                End
            End
        End_Procedure
        
        Begin_Constraints
            Constrain Ptyppar.Company_Code  eq SysCurXR.Company_Code
            Constrain Ptyppar.Branch_Code   eq SysCurXR.Branch_Code
            If (psModule(Self)<>'') Begin
                Constrain Ptyppar.Ptyppar_Module eq (psModule(Self))
            End
        End_Constraints
        
        Procedure Update
            Forward Send Update
            Move (psModule(Self))       to Ptyppar.Ptyppar_Module
        End_procedure
        
        Function Validate_Save  Returns Integer
                Local Integer iReturnVal
                Forward Get Validate_Save  To iReturnVal
                If (Not(iReturnVal)) Begin
                    // Insert Code Here
                   clear gtypkin
                   if (ptyppar.gtypkin_code <>0) begin
                      move syscurxr.company_code to gtypkin.company_code
                      move syscurxr.branch_code  to gtypkin.branch_code
                      move syscurxr.year_year    to gtypkin.year_year
                      move ptyppar.gtypkin_code  to gtypkin.gtypkin_code
                      find eq gtypkin by index.1
                      if (not(found)) begin
                         send stop_box 'É‚§ úÆú† ¶®†©´úÂ û °Â§û©û ©´û§ Ç.ä' 'ë≠·¢£ò PTYPPAR.VW'
                         move 1 to ireturnval
                      end
                   end
                End
                Function_Return iReturnVal
        End_Function   // Validate_Save
        
        
        
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Pseira_DD is a Pseira_DataDictionary
        Set DDO_Server to (Ptyppar_DD(self))
        Set Constrain_File to Ptyppar.File_Number
    End_Object    // Pseira_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Set Main_DD to (Ptyppar_DD(self))
    Set Server to (Ptyppar_DD(self))

    //AB-DDOEnd

    Object dbContainer3dSub2 is a dbContainer3dSub
        Set Border_Style to Border_Normal
        Set Size to 170 464
        Set Location to 33 4
        Object Ptyppar_Ptyppar_Code is a dbFormSub
            Entry_Item Ptyppar.Ptyppar_code
            Set Size to 13 62
            Set Location to 6 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure Prompt
                Set psModule Of (sl012(Self)) to (psModule(Self))
                Forward Send Prompt
            End_procedure
            
            
            //AB-StoreEnd

        End_Object    // Ptyppar_Ptyppar_Code

        Object Ptyppar_Ptyppar_Descr is a dbFormSub
            Entry_Item Ptyppar.Ptyppar_descr
            Set Size to 13 290
            Set Location to 6 153
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure Prompt
                Set psModule Of (sl012(Self)) to (psModule(Self))
                Forward Send Prompt
            End_procedure
            
            
            //AB-StoreEnd

        End_Object    // Ptyppar_Ptyppar_Descr

        Object Ctypkin_Ctypkin_Code is a dbFormSub
            Entry_Item Ctypkin.Ctypkin_code
            Set Size to 13 62
            Set Location to 20 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            procedure prompt
                Set psModule Of (sl007(Self)) to (psModule(Self))
                Forward Send Prompt
            end_procedure
            //AB-StoreEnd

        End_Object    // Ctypkin_Ctypkin_Code

        Object Ctypkin_Ctypkin_Descr is a dbFormSub
            Entry_Item Ctypkin.Ctypkin_descr
            Set Size to 13 290
            Set Location to 20 153
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Ctypkin_Ctypkin_Descr

        Object Wtypkin_Wtypkin_Code is a dbFormSub
            Entry_Item Wtypkin.Wtypkin_code
            Set Size to 13 62
            Set Location to 35 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Wtypkin_Wtypkin_Code

        Object Wtypkin_Wtypkin_Descr is a dbFormSub
            Entry_Item Wtypkin.Wtypkin_descr
            Set Size to 13 290
            Set Location to 35 153
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Wtypkin_Wtypkin_Descr

        Object Ptyppar_Ptyppar_Is_What is a dbComboForm
            Entry_Item Ptyppar.Ptyppar_is_what
            Set Size to 13 62
            Set Location to 49 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ptyppar_Ptyppar_Is_What

        Object Ptyppar_Ptyppar_Abrev is a dbFormSub
            Entry_Item Ptyppar.Ptyppar_abrev
            Set Size to 13 66
            Set Location to 49 231
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ptyppar_Ptyppar_Abrev

        Object Ptyppar_Label is a dbFormSub
            Entry_Item Ptyppar.Label
            Set Size to 13 158
            Set Location to 63 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ptyppar_Label

        Object Ptyppar_Label1 is a dbFormSub
            Entry_Item Ptyppar.Label1
            Set Size to 13 140
            Set Location to 63 304
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ptyppar_Label1

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ èò®ò©´ò´."
            Set Location to 6 3
            Set Size to 9 67
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "èò®ò©´ò´†°Ê ÑÂ§ò† ;"
            Set Location to 49 3
            Set Size to 10 71
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "ëÁ§´¶£û èú®†ö®ò≠„"
            Set Location to 49 153
            Set Size to 12 71
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "âÂ§û©û ë¨§ò¢¢."
            Set Location to 20 3
            Set Size to 10 56
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "âÂ§û©û Äß¶ü„°û™"
            Set Location to 35 3
            Set Size to 10 68
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub8

        Object Ptyppar_Ftiaxnei_Tpay is a dbCheckBoxSub
            Entry_Item Ptyppar.Ftiaxnei_tpay
            Set Label to "Éû£†¶¨®öúÂ ´®Êß¶¨™ ß¢û®‡£„™"
            Set Size to 10 119
            Set Location to 79 75
        End_Object    // Ptyppar_Ftiaxnei_Tpay

        Object Ptyppar_Einai_Paroxh_Yp is a dbCheckBoxSub
            Entry_Item Ptyppar.Einai_paroxh_yp
            Set Label to "Ä≠¶®· èò®¶Æ„ ìßû®ú©†È§"
            Set Size to 10 106
            Set Location to 88 75
        End_Object    // Ptyppar_Einai_Paroxh_Yp

        Object Ptyppar_Check_Posa_Plaf is a dbCheckBoxSub
            Entry_Item Ptyppar.Check_posa_plaf
            Set Label to "ë¨££ú´‚Æú† ©´¶§ ‚¢úöÆ¶ ß¶©È§ ß¢ò≠Ê§"
            Set Size to 10 147
            Set Location to 98 75
        End_Object    // Ptyppar_Check_Posa_Plaf

        Object Ptyppar_Ti_Typonei_Pms is a dbComboFormSub
            Entry_Item Ptyppar.Ti_typonei_pms
            Set Size to 13 131
            Set Location to 109 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ptyppar_Ti_Typonei_Pms

        Object FormSub1 is a FormSub
            Set Size to 13 119
            Set Location to 94 325
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // FormSub1

        Object Ptyppar_Gtypkin_Code is a dbFormSub
            Entry_Item Ptyppar.Gtypkin_code
            Set Label to "âÂ§û©û Ç.ä"
            Set Size to 13 53
            Set Location to 94 265
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (gtypkin(current_object))
            
            
            //AB-StoreEnd

        End_Object    // Ptyppar_Gtypkin_Code

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "ë¨©Æú´†ùÊ£ú§¶ èò®ò©´ò´†°Ê"
            Set Location to 125 3
            Set Size to 17 78
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub12

        Object Ptyppar_Sysxet_Ptyppar is a dbFormSub
            Entry_Item Ptyppar.Sysxet_ptyppar
            Set Size to 13 59
            Set Location to 127 75
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                        
            //AB-StoreEnd

        End_Object    // Ptyppar_Sysxet_Ptyppar

        Object ButtonSub1 is a ButtonSub
            Set Label to "ButtonSub6"
            Set Bitmap to "tvwbo16.bmp"
            Set Size to 10 11
            Set Location to 21 447
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ °†§„©ú‡§ ©¨§ò¢¢/£ú§¶¨"
            Procedure OnClick
               send activate_cflagkin
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object ButtonSub2 is a ButtonSub
            Set Label to "ButtonSub6"
            Set Bitmap to "tvwbo16.bmp"
            Set Size to 10 11
            Set Location to 36 447
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ °†§„©ú‡§ òß¶ü„°û™"
            Procedure OnClick
               send activate_wflagkin
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object Textbox1 is a Textbox
            Set Label to "í† ú§û£ú®È§ú† òß¶ü„°û "
            Set Location to 108 3
            Set Size to 16 70
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object Ptyppar_Singular is a dbFormSub
            Entry_Item Ptyppar.Singular
            Set Size to 13 119
            Set Location to 115 325
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ptyppar_Singular

        Object Ptyppar_Sub is a dbCheckBox
            Entry_Item Ptyppar.Sub
            Set Size to 13 11
            Set Location to 130 325
        End_Object    // Ptyppar_Sub

        Object Ptyppar_Constrain is a dbCheckBoxSub
            Entry_Item Ptyppar.Constrain
            Set Size to 13 17
            Set Location to 143 324
        End_Object    // Ptyppar_Constrain

        Object Textbox2 is a Textbox
            Set Label to "â‡õ.©Á§õú©û™ ö‚≠¨®ò™ (Ä)"
            Set Location to 117 230
            Set Size to 10 93
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox2

        Object Textbox4 is a Textbox
            Set Label to "î†¢´®·®ú† ßò®ò©´.≠¶®‚‡§"
            Set Location to 144 228
            Set Size to 10 92
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox4

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "Label Ñ°´Áß‡©û™ 1"
            Set Location to 65 3
            Set Size to 10 66
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub13

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "Label Ñ°´Áß‡©û™ 2"
            Set Location to 65 236
            Set Size to 12 65
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub14

        Object Textbox5 is a Textbox
            Set Label to "ÑÂ§ò† Ä°¨®‡´†°Ê ë´¶†ÆúÂ¶"
            Set Location to 130 230
            Set Size to 10 89
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox5

        Object Ptyppar_Year_Recr is a dbComboForm
            Entry_Item Ptyppar.Year_recr
            Set Size to 10 130
            Set Location to 143 75
            Set Color to clBtnFace
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ptyppar_Year_Recr

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "ã.ì.î."
            Set Location to 144 41
            Set Size to 10 26
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub15

        Object Ptyppar_Sap is a dbFormSub
            Entry_Item Ptyppar.Sap
            Set Label to "â‡õ.SAP"
            Set Size to 13 45
            Set Location to 132 397
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ptyppar_Sap

        Object Textbox6 is a Textbox
            Set Label to "ÑÂ§ò† ï¶§õ®†°„™"
            Set Location to 156 228
            Set Size to 12 60
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox6

        Object Ptyppar_Is_Xondr is a dbCheckBoxSub
            Entry_Item Ptyppar.Is_xondr
            Set Size to 13 15
            Set Location to 156 324
        End_Object    // Ptyppar_Is_Xondr


        //AB-StoreStart
                        
        //AB-StoreEnd

    End_Object    // dbContainer3dSub2

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 465
        Set Location to 2 4
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 91
            Set Location to 9 54
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 125
            Set Location to 9 211
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 394
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 161
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub10

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 345
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub11

    End_Object    // dbGroupSub1

    Object Pseira_ is a dbGridSub
        Set Main_File to Pseira.File_Number
        Set Server to (Pseira_DD(self))
        Set Size to 71 463
        Set Location to 204 5
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Pseira.Pseira_seira
            Entry_Item Pseira.Pseira_printer
            Entry_Item Pseira.Pseira_form
            Entry_Item Pseira.Pseira_autonum
            Entry_Item Pseira.Autonum_plus
            Entry_Item Pseira.Autonum_minus
            Entry_Item Pseira.Auto_plus_last
        End_Row

        Set Form_Width    item 0 to 48
        Set Header_Label  item 0 to "ëú†®·"
        
        Set Form_Width    item 1 to 111
        Set Header_Label  item 1 to "Ñ°´¨ß‡´„™"
        
        Set Form_Width    item 2 to 92
        Set Header_Label  item 2 to "Form"
        
        Set Form_Width    item 3 to 28
        Set Header_Label  item 3 to "Auto"
        Set Column_Checkbox_State  item 3 to True
        
        Set Form_Width    item 4 to 58
        Set Header_Label  item 4 to "íú¢. Ä®†ü£.+"
        
        Set Form_Width    item 5 to 58
        Set Header_Label  item 5 to "íú¢. Ä®†ü£.-"
        
        Set Form_Width    item 6 to 61
        Set Header_Label  item 6 to "íú¢. Ü£/§Âò"
        

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                
        Procedure Prompt_CallBack Integer hPromptID
            String sID
            Get Field_Current_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Recr to sID
            Set FragmaPtyppar_Recr Of hPromptID to sID
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Pseira_

    Object btnEktyposh is a ButtonSub
        Set Label to "Ñ°´Á&ß‡©û"
        Set Bitmap to "Print17.bmp"
        Set Size to 21 23
        Set Location to 253 471
        Set Focus_Mode to Pointer_Only
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "Ñ°´Áß‡©û ßò®ò©´ò´†°È§"
        
        Procedure OnClick
           Send runparReport to (parWQLReport(r12(Self)))
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // btnEktyposh


    //AB-StoreStart
                                            
    Procedure Activate_View Returns Integer
        String sStr sModule sDescr
        Integer rVal
        Move '' to sStr
        move (append(sstr, 'èò®ò©´ò´†°Ê   '                +'        ' +;
                           (Trim(SyscurXr.Company_Name))   +' - '      +;
                           (Trim(SyscurXr.Branch_Name))    +' - '      +;
                           (Trim(SyscurXr.Year_Descr)))) to sStr
        Set Label Of Ptyppar to sStr
        Forward Get Msg_Activate_View to rVal
        Get psMenuModule  Of Main_Menu  to sModule
        Set psModule                    to sModule
        Get gsfCode_Mast "MODULE" sModule to sDescr
        Move (Trim(sDescr)) to sDescr
        // â‡õ†°ò™ ß¶¨ ò≠¶®ò ´¶ constrain ´‡§ ©´¶†Æú†‡§ ´¶¨ view ¶ß‡™ ßò®ò©´ò´†°·
        // û °†§„©ú†™ ß¶¨ èêÑèÑà §ò úÂ§ò† constrain ò§ò¢¶öò £ú ´¶ °Á°¢‡£ò òß¶
        // ´¶ ¶ß¶†¶ °ò¢úÂ´ò† ´¶ view. è.ï. ò§ °¢ûüúÂ òß¶ è‡¢„©ú†™/èú¢·´ú™ §ò £û§
        // ≠òÂ§¶§´ò† ©´ò ßò®ò©´ò´†°· ´ò ctypkin Äö¶®È§ °¢ß....
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                Send Rebuild_Constraints to Ptyppar_DD
                set label of ptyppar to "èò®ò©´ò´†°· è‡¢„©ú‡§    "
    
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                Send Rebuild_Constraints to Ptyppar_DD
                set label of ptyppar to "èò®ò©´ò´†°· Äö¶®È§    "
    
              Case Break
            Case (psModule(Self)='03') // Äß¶ü„°ú™
                Send Rebuild_Constraints to Ptyppar_DD
                set label of ptyppar to "èò®ò©´ò´†°· Äß¶üû°È§    "
              Case Break
            Case (psModule(Self)='04') // Ä•†Êö®ò≠ò
                Send Rebuild_Constraints to Ptyppar_DD
                set label of ptyppar to "èò®ò©´ò´†°· Ä•†¶ö®·≠‡§    "
              Case Break
        Case End
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // Ptyppar


//AB-StoreStart
                        
                        
                        
//AB-StoreEnd

//AB/ End_Object    // prj
