//AB/ Project V185old
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V185old"
//AB/         Set ProjectFileName to "v1850ld.VW"

// Project Object Structure
//   V185old is a dbView
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
//     Witemxen_DD is a DataDictionary
//     Witemxed_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//     Container1 is a dbContainer3d
//       witemxen_witemxn_recr is a dbForm
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       Textbox1 is a Textbox
//       Textbox2 is a Textbox
//       TextBoxSub16 is a TextBoxSub
//       TextBoxSub18 is a TextBoxSub
//       TextBoxSub19 is a TextBoxSub
//       Witemxen_Witemxen_Hmnia is a dbFormSub
//       Witemx_Witemx_Code is a dbFormSub
//       Witemxen_Status is a dbComboFormSub
//       Witemxen_Wtypkin_Code is a dbFormSub
//       Witemxen_Wtypkind_Code is a dbFormSub
//       Witemxen_Wax_Recr is a dbFormSub
//       Witemxen_Waxd_Recr is a dbFormSub
//       Witemxen_Qty is a dbFormSub
//       FormSub1 is a FormSub
//       FormSub2 is a FormSub
//       FormSub3 is a FormSub
//       FormSub4 is a FormSub
//       Witemx_Witemx_Descr is a dbFormSub
//       ButtonSub1 is a ButtonSub
//       btnkleisimo is a ButtonSub
//       frmIsClosed is a FormSub
//       btnwitemxen is a ButtonSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         Witemxed_ is a dbGridSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub1
Register_Object btnkleisimo
Register_Object btnwitemxen
Register_Object Company_Company_Name
Register_Object Container1
Register_Object dbGroupSub1
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object FormSub1
Register_Object FormSub2
Register_Object FormSub3
Register_Object FormSub4
Register_Object Fpa_DD
Register_Object frmIsClosed
Register_Object Item_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub16
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object Units_DD
Register_Object V185old
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Witemx_Witemx_Code
Register_Object Witemx_Witemx_Descr
Register_Object Witemxed_
Register_Object Witemxed_DD
Register_Object Witemxen_DD
Register_Object Witemxen_Qty
Register_Object Witemxen_Status
Register_Object Witemxen_Wax_Recr
Register_Object Witemxen_Waxd_Recr
Register_Object Witemxen_Witemxen_Hmnia
Register_Object Witemxen_Wtypkin_Code
Register_Object Witemxen_Wtypkind_Code
Register_Object Wtypkin_DD
Register_Object witemxen_witemxn_recr
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use wtypkin.dd
    use wax.dd
    use iteml.dd
    Use Dofill.dg
    Use Kinapoth.vw
    Use Stadia.pkg
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbCmbfrm.Sub
    Use Form.Sub
    Use Button.Sub
    Use dbTabDlgS.Sub
    Use dbGrid.Sub

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
    Use WITEMXEN.DD
    Use WITEMXED.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V185old FOR V185old

    Object V185old is a dbView

        //AB-StoreTopStart
        Register_Object Papari
        property string     psmodule       public '08'
        property integer    pilathos       public 0
        property integer    piSfalma       public 0
        property integer    piekleise      public 0
        property integer    piTxtID        public 0
        property string     pswitemx       public ''
        property string     psfindrecr     public ''
        property string     pswcmovesrecr  public ''
        property string     pswitemxrecr   public ''
        Function fnwitemx string code Returns string
            string name
            clear item
            move code to iteml.item_code
            find eq iteml by index.5
            move iteml.item_descr to name
            function_return name
        end_Function
        
        Function fnwax string code Returns string
            string name
            clear wax
            move code to wax.wax_recr
            find eq wax by index.2
            move wax.wax_descr to name
            function_return name
        end_Function
        
        
        //AB-StoreTopEnd

        Set Label to "âò´òÆÈ®û©û Ñ§´¶¢È§ èò®òö‡ö„™"
        Set Size to 294 469
        Set Location to 2 5

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

        Object Witemxen_DD is a Witemxen_DataDictionary

            //AB-StoreTopStart
            Property Integer piReadOnly Public False
            
            //AB-StoreTopEnd

            Set DDO_Server to (Witemx_DD(self))

            //AB-StoreStart
                                                                                                                                                    
            Procedure Save_Main_File
                If (NOT(piReadOnly(Self))) Forward Send Save_Main_File
                Else Send Info_Box "Ü ú§´¶¢„ úÂ§ò† °¢ú†©£‚§û.\nÉú§ úß†´®‚ß¶§´ò† ò¢¢òö‚™" "è¢û®¶≠¶®Âò"
            End_Procedure
            
            Procedure Delete_Main_File
                If (NOT(piReadOnly(Self))) Forward Send Delete_Main_File
                Else Send Info_Box "Ü ú§´¶¢„ úÂ§ò† °¢ú†©£‚§û.\nÉú§ úß†´®‚ßú´ò† û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
            End_Procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemxen_DD

        Object Witemxed_DD is a Witemxed_DataDictionary

            //AB-StoreTopStart
            Property Integer piReadOnly Public False
            
            //AB-StoreTopEnd

            Set DDO_Server to (Witemxen_DD(self))
            Set Constrain_File to Witemxen.File_Number

            //AB-StoreStart
                                                                                                                                                    
            Procedure Save_Main_File
                If (NOT(piReadOnly(Self))) Forward Send Save_Main_File
            End_Procedure
            Procedure Delete_Main_File
                If (NOT(piReadOnly(Self))) Forward Send Delete_Main_File
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // Witemxed_DD

        Set Main_DD to (Witemxen_DD(self))
        Set Server to (Witemxen_DD(self))

        //AB-DDOEnd

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 449
            Set Location to -2 5
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 83
                Set Location to 9 74
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 103
                Set Location to 9 215
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub

                //AB-StoreTopStart
                                                                                                                                                                                                            
                //AB-StoreTopEnd

                Entry_Item Syscurxr.Year_descr
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 61
                Set Location to 9 375
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object TextBoxSub8 is a TextBoxSub
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

            End_Object    // TextBoxSub8

            Object TextBoxSub9 is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 165
                Set Size to 10 39
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub9

            Object TextBoxSub10 is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 325
                Set Size to 10 31
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub10

        End_Object    // dbGroupSub1

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 130 448
            Set Location to 26 5
            Object witemxen_witemxn_recr is a dbForm
                Entry_Item Witemxen.Witemxen_recr
                Set Size to 13 87
                Set Location to 6 97
                Set TextColor to clBlue
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // witemxen_witemxn_recr

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "Ä/ò Ñ§´¶¢„™ èò®òö‡ö„™"
                Set TextColor to clBlue
                Set Location to 7 3
                Set Size to 10 84
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ ÑÂõ¶¨™"
                Set Location to 22 3
                Set Size to 10 60
            End_Object    // TextBoxSub3

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "Ü£ú®¶£û§Âò"
                Set TextColor to clBlue
                Set Location to 4 309
                Set Size to 10 42
                Set FontWeight to 800
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "âÂ§û©û ÑÂõ¶¨™"
                Set Location to 52 3
                Set Size to 10 48
            End_Object    // TextBoxSub6

            Object Textbox1 is a Textbox
                Set Label to "âÂ§û©û è®È´‡§ ì¢È§"
                Set Location to 68 3
                Set Size to 10 75
            End_Object    // Textbox1

            Object Textbox2 is a Textbox
                Set Label to "âò´ûö¶®Âò Ñ§´¶¢„™"
                Set Location to 36 3
                Set Size to 10 68
            End_Object    // Textbox2

            Object TextBoxSub16 is a TextBoxSub
                Set Label to "Äß¶ü„°û ÑÂõ¶¨™"
                Set Location to 84 3
                Set Size to 10 54
            End_Object    // TextBoxSub16

            Object TextBoxSub18 is a TextBoxSub
                Set Label to "è¶©Ê´û´ò"
                Set Location to 111 3
                Set Size to 12 42
            End_Object    // TextBoxSub18

            Object TextBoxSub19 is a TextBoxSub
                Set Label to "Äß¶ü„°û è®È´‡§ ì¢È§"
                Set Location to 98 3
                Set Size to 10 79
            End_Object    // TextBoxSub19

            Object Witemxen_Witemxen_Hmnia is a dbFormSub
                Entry_Item Witemxen.Witemxen_hmnia
                Set Size to 13 75
                Set Location to 2 363
                Set TextColor to clBlue
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_FontWeight Item 0 to 800

                //AB-StoreStart
                                        
                                        
                Procedure Refresh Integer iMode
                    String sRecr sekleise
                    Forward Send Refresh iMode
                    Set Enabled_State   Of BtnKleisimo          to True
                    Get field_current_value of witemxen_dd field witemxen.ekleise to sekleise
                    If (sekleise='1') Begin
                        Set Color Of (frmIsClosed(container1(self))) to clred
                    End
                    else Begin
                        set Color Of (frmIsClosed(container1(self))) to clLime
                    End
                    Set piReadOnly Of WitemxEN_DD to (sekleise='1')
                    Set piReadOnly Of WitemxED_DD to (sekleise='1')
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxen_Witemxen_Hmnia

            Object Witemx_Witemx_Code is a dbFormSub
                Entry_Item Witemx.Witemx_code
                Set Size to 13 87
                Set Location to 20 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Witemx_Witemx_Code

            Object Witemxen_Status is a dbComboFormSub
                Entry_Item Witemxen.Status
                Set Size to 13 87
                Set Location to 36 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Witemxen_Status

            Object Witemxen_Wtypkin_Code is a dbFormSub
                Entry_Item Witemxen.Wtypkin_code
                Set Size to 13 87
                Set Location to 50 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    move syscurxr.company_code to wtypkin.company_code
                    move syscurxr.branch_code  to wtypkin.branch_code
                    move syscurxr.year_year    to wtypkin.year_year
                    get value item 0           to wtypkin.wtypkin_code
                    find eq wtypkin by index.1
                    if (found);
                       set value of (formsub1(self)) to wtypkin.wtypkin_descr
                    else;
                       set value of (formsub1(self)) to ''
                end_procedure
                
                
                //AB-StoreEnd

            End_Object    // Witemxen_Wtypkin_Code

            Object Witemxen_Wtypkind_Code is a dbFormSub
                Entry_Item Witemxen.Wtypkind_code
                Set Size to 13 87
                Set Location to 66 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    move syscurxr.company_code to wtypkin.company_code
                    move syscurxr.branch_code  to wtypkin.branch_code
                    move syscurxr.year_year    to wtypkin.year_year
                    get value item 0           to wtypkin.wtypkin_code
                    find eq wtypkin by index.1
                    if (found);
                       set value of (formsub2(self)) to wtypkin.wtypkin_descr
                    else;
                       set value of (formsub2(self)) to ''
                end_procedure
                
                //AB-StoreEnd

            End_Object    // Witemxen_Wtypkind_Code

            Object Witemxen_Wax_Recr is a dbFormSub
                Entry_Item Witemxen.Wax_recr
                Set Size to 13 87
                Set Location to 81 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    get value item 0 to wax.wax_recr
                    find eq wax by index.2
                    if (found);
                       set value of (formsub3(self)) to wax.wax_descr
                    else;
                       set value of (formsub3(self)) to ''
                end_procedure
                
                //AB-StoreEnd

            End_Object    // Witemxen_Wax_Recr

            Object Witemxen_Waxd_Recr is a dbFormSub
                Entry_Item Witemxen.Waxd_recr
                Set Size to 13 87
                Set Location to 95 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                   get value item 0 to wax.wax_recr
                   find eq wax by index.2
                   if (found);
                      set value of (formsub4(self)) to wax.wax_descr
                   else;
                      set value of (formsub4(self)) to ''
                end_procedure
                //AB-StoreEnd

            End_Object    // Witemxen_Waxd_Recr

            Object Witemxen_Qty is a dbFormSub
                Entry_Item Witemxen.Qty
                Set Size to 13 41
                Set Location to 109 97
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set Points Item 0 to 1
                
                Procedure OnKillFocus
                    number oqty nqty
                    get field_current_value of witemxen_dd field witemxen.qty to oqty
                    get value of (witemxen_qty(self)) item 0 to nqty
                    if (nqty <> oqty) begin
                      set field_changed_value of witemxen_dd field witemxen.qty to nqty
                      Send Request_Save to Witemxen_DD
                    end
                    Send KeyAction to ButtonSub1
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxen_Qty

            Object FormSub1 is a FormSub
                Set Size to 13 243
                Set Location to 50 195
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub1

            Object FormSub2 is a FormSub
                Set Size to 13 243
                Set Location to 65 195
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub2

            Object FormSub3 is a FormSub
                Set Size to 13 243
                Set Location to 79 195
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub3

            Object FormSub4 is a FormSub
                Set Size to 13 243
                Set Location to 94 195
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub4

            Object Witemx_Witemx_Descr is a dbFormSub
                Entry_Item Witemx.Witemx_descr
                Set Size to 13 243
                Set Location to 20 195
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Witemx_Witemx_Descr

            Object ButtonSub1 is a ButtonSub

                //AB-StoreTopStart
                                                                                                                                                                                                            
                //AB-StoreTopEnd

                Set Bitmap to "astro01f.bmp"
                Set Size to 20 24
                Set Location to 108 194

                //AB-StoreStart
                Set TooltipValue to "Ñ§û£‚®‡©û èÂ§ò°ò ãú è®È´ú™ ì¢ú™"
                Procedure OnClick
                  integer ibpoid
                  number iqty
                  date ddate
                  string sitem msgstr srecr swtypkin swtypkind swax swaxd  sstatus sekleise
                  move '' to msgstr
                  get field_current_value of witemxen_dd field witemxen.ekleise to sekleise
                  get value of (witemxen_witemxen_hmnia(container1(current_object))) to ddate
                  get value of (witemxen_witemxn_recr(container1(current_object))) to srecr
                  get combo_value of (witemxen_status(container1(current_object))) item 0 to sstatus
                  get value of (witemxen_wtypkin_code(container1(current_object))) to swtypkin
                  get value of (witemxen_wtypkind_code(container1(current_object))) to swtypkind
                  get value of (witemxen_wax_recr(container1(current_object))) to swax
                  get value of (witemxen_waxd_recr(container1(current_object))) to swaxd
                  get value of (witemxen_qty(container1(current_object))) to iqty
                  get value of (witemx_witemx_code(container1(current_object))) to sitem
                 if (sekleise = 1) begin
                     move "" to msgstr
                     move "É‚§ äú†´¶¨®öúÂ Ü É†òõ†°ò©Âò Ä¨´„ !! Ü Ñ§´¶¢„ ÑÂ§ò† â¢ú†õ‡£‚§û !!" to msgstr
                     send info_box msgstr
                 end
                 else begin
                  if ((sitem = '') or (iqty = 0) or (swaxd = '') or (swax = '') or (swtypkind = '');
                     or (swtypkin = '') or (sstatus = '') or (srecr = '') or (ddate = '')) begin
                     move "" to msgstr
                     move "É‚§ ë¨£ß¢û®Èüû°ú â·ß¶†¶ èúõÂ¶ û É‚§ Ñö†§ú Ñöö®ò≠„!! Ñßò§‚¢úöÆ¶™ !!" to msgstr
                     send info_box msgstr
                  end
                  else begin
                
                     Move (Dofill(Self)) to iBPOID
                     Set psrecr of iBPOID to srecr
                     Set pswax  of iBPOID to swaxd
                     set piqty  of iBPOID to iqty
                     set psitem of iBPOID to sitem
                     Send DoProcess      to iBPOID
                     send beginning_of_data to (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(current_object))))
                  end
                 end
                End_Procedure // OnClick
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // ButtonSub1

            Object btnkleisimo is a ButtonSub

                //AB-StoreTopStart
                                                                                
                //AB-StoreTopEnd

                Set Label to "ButtonSub2"
                Set Bitmap to "open1.bmp"
                Set Size to 20 24
                Set Location to 108 225

                //AB-StoreStart
                                                                                
                Set TooltipValue to "Ä§¶†ö£ò / â¢úÂ©†£¶ Ñ§´¶¢„™ èò®òö‡ö„™"
                
                Function Kleise_Entolh Returns Integer
                   String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
                   String sentolh msgstr switemx snomisma smodule
                   Number nqty naxia
                   Integer idelete istatus lilathos iabort isClosed
                   Date ddate
                   Set piLathos to 0
                   move '08' to smodule
                   Get field_current_value of witemxen_dd field witemxen.witemxen_recr to scurrecr
                   Get field_current_value of witemxen_dd field witemxen.wtypkin_code to stypkin
                   Get field_current_value of witemxen_dd field witemxen.status to istatus
                   move syscurxr.c_code0 to snomisma
                   Clear wtypkin
                   Move syscurxr.company_code to wtypkin.company_code
                   Move syscurxr.branch_code  to wtypkin.branch_code
                   Move syscurxr.year_year    to wtypkin.year_year
                   Move  stypkin              to wtypkin.wtypkin_code
                   Find eq wtypkin by index.1
                   If (found = 1) begin
                        Move wtypkin.wtypkin_recr to swtypkinrecr
                        Get field_current_value of witemxen_dd field witemxen.witemx_recr to switemxrecr
                        Get field_current_value of witemxen_dd field witemxen.wax_recr to swaxrecr
                        Get field_current_value of witemxen_dd field witemxen.witemxen_hmnia to ddate
                        Get field_current_value of witemxen_dd field witemxen.qty to nqty
                        move ' Ä®. Ñ§´¶¢„™ ' to speri
                        move (append(speri,scurrecr)) to speri
                        if (istatus = 1);
                          move (append(speri,' è®¶™ ëÁ§üú©û')) to speri
                        else;
                          move (append(speri,' è®¶™ Äß¶©Á§üú©û')) to speri
                
                        Move (fsFtiaxe_Wcmoves(Papari(Self),swtypkinrecr,switemxrecr,swaxrecr,ddate,nqty,speri,snomisma,scurrecr,naxia,smodule)) to srecr
                        get pilathos  to lilathos
                        If (lilathos <> 0) Function_Return liLathos
                        If (srecr<>'') begin
                            Set field_changed_value of witemxen_dd field witemxen.wcmoves_recr to srecr
                            Send request_save to witemxen_dd
                            get pswitemx to switemx
                            Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                            Get field_current_value of witemxen_dd field witemxen.wtypkind_code  to stypkin
                            Clear wtypkin
                            Move syscurxr.company_code to wtypkin.company_code
                            Move syscurxr.branch_code  to wtypkin.branch_code
                            Move syscurxr.year_year    to wtypkin.year_year
                            Move stypkin  to wtypkin.wtypkin_code
                            Find eq wtypkin by index.1
                            If (Found = 1) begin
                                Send find to witemxed_dd first_record 1
                                While (found = 1)
                                    Set piLathos to 0
                                    Move wtypkin.wtypkin_recr to swtypkinrecr
                                    Get field_current_value of witemxed_dd field witemxed.witemx_recr to switemxrecr
                                    Get field_current_value of witemxed_dd field witemxed.wax_recr to swaxrecr
                                    Get field_current_value of witemxen_dd field witemxen.witemxen_hmnia to ddate
                                    Get field_current_value of witemxed_dd field witemxed.qty to nqty
                                    Move (fsFtiaxe_Wcmoves(Papari(Self),swtypkinrecr,switemxrecr,swaxrecr,ddate,nqty,speri,snomisma,scurrecr,naxia,smodule)) to srecr
                                    Get piLathos  to lilathos
                                    If (lilathos <> 0) Function_Return liLathos
                                    If (srecr<>'') begin
                                      Set field_changed_value of witemxed_dd field witemxed.wcmoves_recr to srecr
                                      Send request_save to witemxed_dd
                                      get pswitemx to switemx
                                      Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                                    End
                                    Else Function_Return 55559
                                    Send find to witemxed_dd next_record 1
                                Loop
                            End
                            Else Function_Return 55557
                        End
                        Else Function_Return 55558
                    End
                    Else Function_Return 55556
                    Function_Return 0
                End_Function
                
                Function Anoixe_Entolh Returns Integer
                    String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
                    String sentolh msgstr switemx smodule
                    Number nqty
                    Integer idelete istatus lilathos iabort isClosed
                    Date ddate
                    move '08' to smodule
                    Set piLathos to 0
                    Get field_current_value of witemxen_dd field witemxen.status to istatus
                    Get field_current_value of witemxen_dd field witemxen.witemxen_recr to scurrecr
                    Move '' to srecr
                    Move '' to speri
                    Move '' to msgstr
                    Get field_current_value of witemxen_dd field witemxen.wcmoves_recr to srecr
                    Move 1 to idelete
                    Move (fiDelete_WCmoves_Record(Papari(Self),srecr,idelete)) to idelete
                    If (iDelete>0) Function_Return iDelete
                    get pswitemx to switemx
                    Send UpdateWait to (piTxtID(Self))  ('É†òö®ò≠„ ÄßÊ Ä®ÆúÂ¶ â†§„©ú‡§ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                    Send find to witemxed_dd first_record 1
                    While (found = 1)
                        Get field_current_value of witemxed_dd field witemxed.wcmoves_recr to srecr
                        Move 1 to idelete
                        Set piLathos to 0
                        Move (fiDelete_WCmoves_Record(Papari(Self),srecr,idelete)) to idelete
                        Get pilathos  to lilathos
                        If (lilathos <> 0) Function_Return liLathos
                        get pswitemx to switemx
                        Send UpdateWait to (piTxtID(Self))  ('É†òö®ò≠„ ÄßÊ Ä®ÆúÂ¶ â†§„©ú‡§ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                        Send find to witemxed_dd next_record 1
                    Loop
                    Function_Return 0
                End_Function
                
                Procedure OnClick
                    Integer isClosed iMsg iRec iErr
                
                    Indicate Err False
                
                    Set piTxtID                         to (Wait(Self))
                    Set Button_State    of (Wait(Self)) to False
                    Set BarVisibleState of (Wait(Self)) to '' False
                    Send Popup                          to (Wait(Self))
                    Set Dynamic_Update_State Of (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self)))) to False
                    Send Beginning_Of_Data To (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self)))) true
                    If (Current_Record(WitemxED_DD(Self))) Begin
                        Begin_Transaction
                            Get Field_Current_value Of WitemxEN_DD Field WitemxEN.Recnum  to iRec
                            Get Field_Current_value Of WitemxEN_DD Field WitemxEN.Ekleise to isClosed
                            If (isClosed) Begin
                                Get Anoixe_Entolh to iMsg
                                If (Not(iMsg)) Begin
                                    Send Find_By_Recnum to WitemxEN_DD WitemxEN.File_Number iRec
                                    If (Found) Begin
                                        Set piReadOnly Of WitemxEN_DD to False
                                        Set Field_Changed_value Of WitemxEN_DD Field WitemxEN.Ekleise to ''
                                        Send Request_Save to WitemxEN_DD
                                        Move (Err) to iErr
                                        If (iErr) Begin
                                            Set piSfalma to 9001
                                            Send Beginning_Of_Data to (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                            Abort_Transaction
                                        End
                                    End
                                End
                                Else Begin
                                    Set piSfalma to iMsg
                                    Send Beginning_Of_Data to (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                    If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                    Abort_Transaction
                                End
                            End
                            Else Begin
                                Get Kleise_Entolh to iMsg
                                If (Not(iMsg)) Begin
                                    Send Find_By_Recnum to WitemxEN_DD WitemxEN.File_Number iRec
                                    If (Found) Begin
                                        Set Field_Changed_value Of WitemxEN_DD Field WitemxEN.Ekleise to '1'
                                        Send Request_Save to WitemxEN_DD
                                        Move (Err) to iErr
                                        If (iErr) Begin
                                            Set piSfalma to 9002
                                            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                            Send Beginning_Of_Data to (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                            Abort_Transaction
                                        End
                                    End
                                End
                                Else Begin
                                    Set piSfalma to iMsg
                                    If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                    Send Beginning_Of_Data to (witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                    Abort_Transaction
                                End
                            End
                        End_Transaction
                
                             If (piSfalma(Self)=9001)  Send Info_Box "Éú§ £ßÊ®ú©ò §ò ò§¶Â•‡ ´û§ ú§´¶¢„"  "ë≠·¢£ò 9001"
                        Else If (piSfalma(Self)=9002)  Send Info_Box "Éú§ £ßÊ®ú©ò §ò °¢úÂ©‡ ´û§ ú§´¶¢„"  "ë≠·¢£ò 9002"
                        Else If (piSfalma(Self)=55556) Send Info_Box "Éú§ ¨ß·®Æú† °Â§û©û ´¶¨ ©Á§üú´¶¨ úÂõ¶¨™"             "ë≠·¢£ò 55556"
                        Else If (piSfalma(Self)=55557) Send Info_Box "Éú§ ¨ß·®Æú† °Â§û©û ´‡§ ß®È´‡§ ¨¢È§"                 "ë≠·¢£ò 55557"
                        Else If (piSfalma(Self)=55558) Send Info_Box "Éú§ úß†©´®‚≠ú† Wcmoves Recr ö†ò ´¶ ©Á§üú´¶ úÂõ¶™"   "ë≠·¢£ò 55558"
                        Else If (piSfalma(Self)=55559) Send Info_Box "Éú§ úß†©´®‚≠ú† Wcmoves Recr ö†ò ´†™ ß®È´ú™ Á¢ú™"    "ë≠·¢£ò 55559"
                        Else If (piSfalma(Self)=60006) Send Info_Box "Éú§ ô®‚üû°ú ´Áß¶™ °Â§û©û™"                          "ë≠·¢£ò 60006"
                        Else If (piSfalma(Self)=60106) Send Info_Box "Éú§ ô®‚üû°ú ´¶ úÂõ¶™"                               "ë≠·¢£ò 60106"
                        Else If (piSfalma(Self)=60206) Send Info_Box "Éú§ ô®‚üû°ú òß¶üû°ú¨´†°Ê™ ÆÈ®¶™ Æ®„©ú‡™"            "ë≠·¢£ò 60206"
                        Else If (piSfalma(Self)=60002) Send Info_Box "Éú§ õ†òö®·≠ú´ò† ´¶ Wcmoves"                         "ë≠·¢£ò 60002"
                        Else If (piSfalma(Self)=60003) Send Info_Box "Éú§ ô®‚üû°ú Wcmoves ö†ò §ò ´¶ õ†òö®·Ø‡"             "ë≠·¢£ò 60003"
                    End
                    If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnkleisimo

            Object frmIsClosed is a FormSub
                Set Size to 20 42
                Set Location to 108 396
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
                Set Location to 108 254
                Set Focus_Mode to Pointer_Only

                //AB-StoreStart
                Set TooltipValue to "Ñ£≠·§†©û âÂ§û©û™ Äß¶ü„°û™"
                Procedure OnClick
                    String  srecr swcmovesrecr sekleise switemxrecr wrecr
                    Integer iRec rVal
                    Get field_current_value of witemxen_dd field witemxen.ekleise to sekleise
                    if (Not(sekleise));
                        send Info_Box "Ü Ñ§´¶¢„ èò®òö‡ö„™ úÂ§ò† ò§¶†Æ´„.Éú§ ¨ß·®Æú† °Â§û©û ©´û§ òß¶ü„°û" "è¢û®¶≠¶®Âò"
                    else begin
                
                           If (Focus(Desktop)=(Witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self))))) begin
                                get field_current_value of witemxed_dd field witemxed.wcmoves_recr to srecr
                                get field_current_value of witemxed_dd field witemxed.witemx_recr to switemxrecr
                                set pswcmovesrecr   to srecr
                                set pswitemxrecr    to switemxrecr
                           end
                           Else Begin
                                get field_current_value of witemxen_dd field witemxen.wcmoves_recr to srecr
                                get field_current_value of witemxen_dd field witemxen.witemx_recr to switemxrecr
                                set pswcmovesrecr to srecr
                                set pswitemxrecr to switemxrecr
                           End
                
                
                
                        get pswcmovesrecr    to swcmovesrecr
                        get pswitemxrecr     to switemxrecr
                        set pifromparticl    of (kinapoth(self)) to 2
                        set psFindmovesrecr  of (kinapoth(Self)) to swcmovesrecr
                        set psFinditemrecr   of (kinapoth(Self)) to switemxrecr
                        send Activate_kinapoth
                        send Request_Cancel to v185
                    end
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnwitemxen


            //AB-StoreStart
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Container1

        Object dbTabDialogSubS1 is a dbTabDialogSubS
            Set Size to 119 451
            Set Location to 159 2
            Set Border_Style to Border_Normal
            Object dbTabPageSubS1 is a dbTabPageSubS
                Set Label to "dbTabPageSubS1"
                Object Witemxed_ is a dbGridSub
                    Set Main_File to Witemxed.File_Number
                    Set Server to (Witemxed_DD(self))
                    Set Size to 98 449
                    Set Location to 5 -1
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Witemxed.Witemxed_code
                        Entry_Item (Fnwitemx(self,witemxed.witemxed_code))
                        Entry_Item Witemxed.Wax_recr
                        Entry_Item (Fnwax(self,witemxed.wax_recr))
                        Entry_Item Witemxed.Qty
                    End_Row

                    Set Form_Width    item 0 to 75
                    Set Header_Label  item 0 to "â‡õ†°Ê™ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 1 to 120
                    Set Header_Label  item 1 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 2 to 75
                    Set Header_Label  item 2 to "Äß¶ü„°û"
                    
                    Set Form_Width    item 3 to 120
                    Set Header_Label  item 3 to "èú®†ö®ò≠„ Äß¶ü„°û™"
                    
                    Set Form_Width    item 4 to 50
                    Set Header_Label  item 4 to "è¶©Ê´û´ò"
                    

                    //AB-StoreStart
                                    
                    //Set No_Create_State to True
                    //Set No_Delete_State to True
                    
                    
                    Set Points Of witemxed_   Item  4 to 1
                    set currentrowcolor to 11468799
                    set currentcellcolor to 11468799
                    set column_shadow_state item 0 to true
                    set column_shadow_state item 4 to true
                    set child_table_state to true
                    Function Child_entering returns Integer
                        Integer rval
                        Forward Get Child_Entering to rVal
                        If (NOT(rVal)) Begin
                            If (NOT(piReadOnly(WitemxEN_DD(Self)))) If (Should_Save(Witemxen_DD(Self))) Send Request_Save to Witemxen_DD
                        End
                        function_return rVal
                    End_Function
                    
                    Function Row_Save Returns Integer
                        Integer isClosed
                        Forward Get row_save to isClosed
                        If (NOT(isClosed)) Begin
                            Get piReadOnly Of WitemxED_DD to isClosed
                            If (isClosed) Send Info_Box "Ü ú§´¶¢„ úÂ§ò† °¢ú†©£‚§û.\nÉú§ úß†´®‚ß¶§´ò† ò¢¢òö‚™" "è¢û®¶≠¶®Âò"
                        End
                        Function_Return isClosed
                    End_Function
                    
                    Procedure Row_Delete
                        Integer isClosed
                        Get piReadOnly Of WitemxED_DD to isClosed
                        If (isClosed) Send Info_Box "Ü ú§´¶¢„ úÂ§ò† °¢ú†©£‚§û.\nÉú§ úß†´®‚ßú´ò† û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
                        Else Forward Send Row_Delete
                    End_Procedure
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemxed_


                //AB-StoreStart
                Set label to 'Ä§·¢¨©û è®È´‡§ ì¢È§'
                //AB-StoreEnd

            End_Object    // dbTabPageSubS1

        End_Object    // dbTabDialogSubS1


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            string srecr
            integer rval
            get psfindrecr to srecr
            if (srecr <> '') begin
               move srecr to witemxen.witemxen_recr
               find eq witemxen by index.2
            end
            Forward Get MSG_Activate_View to Rval
            procedure_return rval
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

    End_Object    // V185old


    //AB-StoreStart
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
    //AB-StoreEnd

//AB/     End_Object    // prj
