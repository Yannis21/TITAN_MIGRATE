//AB/ Project Pseira
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Pseira"
//AB/         Set ProjectFileName to "Pseira.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Pseira is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     dbContainer3dSub2 is a dbContainer3dSub
//       Ctypkin_Ctypkin_Descr is a dbFormSub
//       Wtypkin_Wtypkin_Descr is a dbFormSub
//       Ptyppar_Ptyppar_Code is a dbFormSub
//       Ptyppar_Ptyppar_Descr is a dbFormSub
//       Pseira_ is a dbGridSub
//       Ptyppar_Ptyppar_Is_What is a dbComboFormSub
//       Textbox5 is a Textbox
//       Textbox6 is a Textbox
//       Textbox7 is a Textbox
//       Textbox8 is a Textbox
//       Textbox9 is a Textbox
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_DD
Register_Object dbContainer3dSub2
Register_Object dbGroupSub1
Register_Object Pseira
Register_Object Pseira_
Register_Object Pseira_DD
Register_Object Ptyppar_DD
Register_Object Ptyppar_Ptyppar_Code
Register_Object Ptyppar_Ptyppar_Descr
Register_Object Ptyppar_Ptyppar_Is_What
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Textbox5
Register_Object Textbox6
Register_Object Textbox7
Register_Object Textbox8
Register_Object Textbox9
Register_Object Wtypkin_DD
Register_Object Wtypkin_Wtypkin_Descr
Register_Object Year_Year_Year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbCont3.Sub
    Use dbForm.Sub
    Use dbGrid.Sub
    Use dbCmbfrm.Sub
    Use dbGroup.Sub
    Use Txtbox.Sub

    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use PSEIRA.DD
    Use SYSCURXR.DD

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Pseira FOR ;
    ;
    Object Pseira is a dbViewSubS

        //AB-StoreTopStart
        Property String psModule Public ''

        //AB-StoreTopEnd

        Set Label to "ëú†®‚™ èò®ò©´ò´†°È§"
        Set Size to 263 486
        Set Location to 4 3

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))

            //AB-StoreStart
            Procedure OnConstrain
                Forward Send OnConstrain
                If (psModule(Self)<>'') Begin
                    Constrain Ptyppar.Ptyppar_Module eq (psModule(Self))
                End
            End_Procedure

            //AB-StoreEnd

        End_Object    // Ptyppar_DD

        Object Pseira_DD is a Pseira_DataDictionary
            Set DDO_Server to (Ptyppar_DD(self))
            Set Constrain_File to Ptyppar.File_Number
        End_Object    // Pseira_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Ptyppar_DD(self))
        Set Server to (Ptyppar_DD(self))

        //AB-DDOEnd

        Object dbContainer3dSub2 is a dbContainer3dSub
            Set Border_Style to Border_Normal
            Set Size to 208 472
            Set Location to 34 6
            Object Ctypkin_Ctypkin_Descr is a dbFormSub
                Entry_Item Ctypkin.Ctypkin_descr
                Set Size to 13 374
                Set Location to 6 90
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Ctypkin_Ctypkin_Descr

            Object Wtypkin_Wtypkin_Descr is a dbFormSub
                Entry_Item Wtypkin.Wtypkin_descr
                Set Size to 13 374
                Set Location to 23 90
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Wtypkin_Wtypkin_Descr

            Object Ptyppar_Ptyppar_Code is a dbFormSub
                Entry_Item Ptyppar.Ptyppar_code
                Set Size to 13 78
                Set Location to 46 90
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
                Set Size to 13 212
                Set Location to 45 251
                Set Color to clBtnFace
                Set Form_Border Item 0 to Border_Normal
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Ptyppar_Ptyppar_Descr

            Object Pseira_ is a dbGridSub
                Set Main_File to Pseira.File_Number
                Set Server to (Pseira_DD(self))
                Set Size to 113 435
                Set Location to 84 11
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

                Set Form_Width    item 0 to 40
                Set Header_Label  item 0 to "ëú†®·"

                Set Form_Width    item 1 to 104
                Set Header_Label  item 1 to "Ñ°´¨ß‡´„™"

                Set Form_Width    item 2 to 92
                Set Header_Label  item 2 to "Form"

                Set Form_Width    item 3 to 29
                Set Header_Label  item 3 to "Auto"
                Set Column_Checkbox_State  item 3 to True

                Set Form_Width    item 4 to 53
                Set Header_Label  item 4 to "íú¢. Ä®†ü£.+"

                Set Form_Width    item 5 to 52
                Set Header_Label  item 5 to "íú¢. Ä®†ü£.-"

                Set Form_Width    item 6 to 60
                Set Header_Label  item 6 to "íú¢. Ü£/§Âò"


                //AB-StoreStart

                Procedure Prompt_CallBack Integer hPromptID
                    String sID
                    Get Field_Current_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Recr to sID
                    Set FragmaPtyppar_Recr Of hPromptID to sID
                End_Procedure


                //AB-StoreEnd

            End_Object    // Pseira_

            Object Ptyppar_Ptyppar_Is_What is a dbComboFormSub
                Entry_Item Ptyppar.Ptyppar_is_what
                Set Size to 13 78
                Set Location to 62 90
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Entry_State Item 0 to FALSE

                //AB-StoreStart



                //AB-StoreEnd

            End_Object    // Ptyppar_Ptyppar_Is_What

            Object Textbox5 is a Textbox
                Set Label to "â†§„©ú†™ èò®ò©´. C"
                Set Location to 7 2
                Set Size to 10 71
            End_Object    // Textbox5

            Object Textbox6 is a Textbox
                Set Label to "â†§„©ú†™ èò®ò©´.W"
                Set Location to 25 2
                Set Size to 10 75
            End_Object    // Textbox6

            Object Textbox7 is a Textbox
                Set Label to "â‡õ†°Ê™ íÁß¶¨ èò®ò©´."
                Set Location to 47 2
                Set Size to 10 84
            End_Object    // Textbox7

            Object Textbox8 is a Textbox
                Set Label to "èò®ò©´ò´†°Ê ÑÂ§ò† ;"
                Set Location to 63 2
                Set Size to 10 79
            End_Object    // Textbox8

            Object Textbox9 is a Textbox
                Set Label to "èú®†ö®ò≠„ èò®ò©´."
                Set Location to 46 181
                Set Size to 10 67
            End_Object    // Textbox9

        End_Object    // dbContainer3dSub2

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 473
            Set Location to 2 4
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 91
                Set Location to 9 54
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 129
                Set Location to 9 211
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

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
                Set Location to 9 405
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false

                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object TextBoxSub1 is a TextBoxSub
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

            End_Object    // TextBoxSub1

            Object TextBoxSub2 is a TextBoxSub
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
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 11 356
                Set Size to 10 40
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGroupSub1


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String sStr sModule sDescr
            Integer rVal
            Send Clear to Ptyppar_DD
            Send Clear to Pseira_DD
            Move '' to sStr
            move (append(sstr, 'èò®ò©´ò´†°Ê  '                 +'        ' +;
                               (Trim(SyscurXr.Company_Name))   +' - '      +;
                               (Trim(SyscurXr.Branch_Name))    +' - '      +;
                               (Trim(SyscurXr.Year_Descr)))) to sStr
            Set Label Of Pseira to sStr
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
                    Send Rebuild_Constraints to PSeira_DD
                    Send Find To Pseira_DD First_Record 1
                    set label of pseira to "ëú†®‚™ ßò®ò©´ò´†°È§ è‡¢„©ú‡§    "
                  Case Break
                Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                    Send Rebuild_Constraints to Ptyppar_DD
                    Send Rebuild_Constraints to PSeira_DD
                    Send Find To Pseira_DD First_Record 1
                    set label of pseira to "ëú†®‚™ ßò®ò©´ò´†°È§ Äö¶®È§    "
                  Case Break
                Case (psModule(Self)='03') // Äß¶ü„°ú™
                    Send Rebuild_Constraints to Ptyppar_DD
                    Send Rebuild_Constraints to PSeira_DD
                    Send Find To Pseira_DD First_Record 1
                    set label of pseira to "ëú†®‚™ ßò®ò©´ò´†°È§ Äß¶üû°È§    "
                  Case Break
                Case (psModule(Self)='04') // Ä•†Êö®ò≠ò
                    Send Rebuild_Constraints to Ptyppar_DD
                    Send Rebuild_Constraints to PSeira_DD
                    Send Find To Pseira_DD First_Record 1
                    set label of pseira to "ëú†®‚™ ßò®ò©´ò´†°È§ Ä•†¶ö®·≠‡§    "
                  Case Break
            Case End
        End_Procedure










        //AB-StoreEnd

    CD_End_Object    // Pseira

//AB/     End_Object    // prj
