//AB/ Project V182:mazikes kinhseis eidvn
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V182:mazikes kinhseis eidvn"
//AB/         Set ProjectFileName to "V182.VW"

// Project Object Structure
//   V182 is a dbViewSubS
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
//     Witemxtr_DD is a DataDictionary
//     Witemxtd_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//     Container1 is a dbContainer3d
//       witemxtr_recr is a dbForm
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       Witemxtr_Hmnia is a dbFormSub
//       Witemxtr_Wax_from is a dbFormSub
//       Witemxen_Wtypkin_Code is a dbFormSub
//       Witemxtr_Wax_to is a dbFormSub
//       Witemxtd_Wtypkin_Code is a dbFormSub
//       btnkleisimo is a ButtonSub
//       frmIsClosed is a FormSub
//       btnwitemxen is a ButtonSub
//       Witemxtr_Descr is a dbFormSub
//       TextBoxSub11 is a TextBoxSub
//       FormSub1 is a FormSub
//       FormSub2 is a FormSub
//       TextBoxSub12 is a TextBoxSub
//       TextBoxSub14 is a TextBoxSub
//       FormSub3 is a FormSub
//       TextBoxSub16 is a TextBoxSub
//       FormSub5 is a FormSub
//       Witemxtr_From_No is a dbCheckBoxSub
//       Witemxtr_To_No is a dbCheckBoxSub
//       TextBoxSub17 is a TextBoxSub
//       Witemxtr_Particle_Recr is a dbFormSub
//       FormSub6 is a FormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         Witemxtd_ is a dbGridSub
//         Witemxtr_Qty is a dbFormSub
//         Witemxtr_Axia is a dbFormSub
//         Witemxtr_Fpa is a dbFormSub
//         Witemxtr_Total is a dbFormSub
//         TextBoxSub13 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
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
Register_Object FormSub5
Register_Object FormSub6
Register_Object Fpa_DD
Register_Object frmIsClosed
Register_Object Item_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub2
Register_Object TextBoxSub5
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Units_DD
Register_Object V182
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Witemxen_Wtypkin_Code
Register_Object Witemxtd_
Register_Object Witemxtd_DD
Register_Object Witemxtd_Wtypkin_Code
Register_Object Witemxtr_Axia
Register_Object Witemxtr_DD
Register_Object Witemxtr_Descr
Register_Object Witemxtr_Fpa
Register_Object Witemxtr_From_No
Register_Object Witemxtr_Hmnia
Register_Object Witemxtr_Particle_Recr
Register_Object Witemxtr_Qty
Register_Object Witemxtr_To_No
Register_Object Witemxtr_Total
Register_Object Witemxtr_Wax_from
Register_Object Witemxtr_Wax_to
Register_Object Wtypkin_DD
Register_Object witemxtr_recr
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use wtypkin.dd
    use wax.dd
    use iteml.dd
    Use Kinapoth.vw
    Use bpMkWcm.dg
    use sl014_1.sl
    use particle.dd
    use wax.sl
    open wflagkin
    //use doapot.dg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use Button.Sub
    Use Form.Sub
    Use dbChkbox.Sub
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
    Use WITEMXTR.DD
    Use WITEMXTD.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V182 FOR V182

    Object V182 is a dbViewSubS

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
        property integer    pifrom         public  0
        property integer    pito           public 0
        Function fnwitemx string code Returns string
            string name
            clear item
            move code to iteml.item_code
            find eq iteml by index.5
            if (found=1) begin
                move iteml.item_descr to name
                set pipcfpa to iteml.fpa_pososto
            end
            else move '' to name
            function_return name
        end_Function
        
        
        Function fiDelete_WCmoves_Record String asRecr integer aidelete Returns Integer
            Integer iErr
            string switemx smodule srecr
            Indicate Err False
            Send Clear to WCmoves_DD
            Move asRecr to WCmoves.particle_Recr
            Send Request_Find to WCmoves_DD gt Wcmoves.File_Number 5 //WCmoves:Index.5:partlicle_Recr + witemx_recr + wcmoves_recr
            while ((Found=1) and (wcmoves.particle_recr = asrecr))
                Send Request_Delete to WCmoves_DD
                Send Request_Find to WCmoves_DD gt Wcmoves.File_Number 5 //WCmoves:Index.5:partlicle_Recr + witemx_recr + wcmoves_recr
            loop
            Function_Return 0
        End_Function
        
        
        //AB-StoreTopEnd

        Set Label to "ãòù†°‚™ ú§õ¶õ†ò°†§„©ú†™ ú†õÈ§ òßÊ Äß¶ü„°û ©ú Äß¶ü„°û"
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

        Set Main_DD to (Witemxtr_DD(self))
        Set Server to (Witemxtr_DD(self))

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
            Set Size to 112 448
            Set Location to 26 6
            Object witemxtr_recr is a dbForm
                Entry_Item Witemxtr.Recr
                Set Size to 13 67
                Set Location to 7 107
                Set TextColor to clBlue
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // witemxtr_recr

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "Ä/ò ßò®ò©´ò´†°¶Á õ†ò°Â§û©û™"
                Set TextColor to clBlue
                Set Location to 8 3
                Set Size to 10 103
            End_Object    // TextBoxSub2

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "Ü£ú®¶£û§Âò"
                Set TextColor to clBlue
                Set Location to 21 3
                Set Size to 10 42
            End_Object    // TextBoxSub5

            Object Witemxtr_Hmnia is a dbFormSub
                Entry_Item Witemxtr.Hmnia
                Set Size to 13 67
                Set Location to 21 107
                Set TextColor to clBlue
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_FontWeight Item 0 to 800

                //AB-StoreStart
                
                
                Procedure Refresh Integer iMode
                    String sRecr
                    Forward Send Refresh iMode
                    Set Enabled_State   Of BtnKleisimo          to True
                    If (witemxtr.Ekleise='1') Begin
                        Set Color Of (frmIsClosed(container1(self))) to clred
                    End
                    else Begin
                        set Color Of (frmIsClosed(container1(self))) to clLime
                    End
                    Set piReadOnly Of Witemxtr_DD to (Witemxtr.Ekleise='1')
                    Set piReadOnly Of Witemxtd_DD to (Witemxtr.Ekleise='1')
                End_Procedure
                
                
                procedure prompt
                    forward send prompt
                    send set_the_decimal_points
                end_procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Hmnia

            Object Witemxtr_Wax_from is a dbFormSub
                Entry_Item Witemxtr.Wax_from
                Set Size to 13 67
                Set Location to 35 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set Prompt_Object to (wax(Current_object))
                procedure onchange
                    clear wax
                    get value item 0 to wax.wax_recr
                    find eq wax by index.2
                    if (found) set value of (formsub1(self)) to wax.wax_descr
                    else       set value of (formsub1(self)) to ''
                end_procedure
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Wax_from

            Object Witemxen_Wtypkin_Code is a dbFormSub
                Entry_Item Witemxtr.Wtypkin_from
                Set Size to 13 67
                Set Location to 50 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    move syscurxr.company_code to wtypkin.company_code
                    move syscurxr.branch_code  to wtypkin.branch_code
                    move syscurxr.year_year    to wtypkin.year_year
                    get value item 0           to wtypkin.wtypkin_code
                    find eq wtypkin by index.1
                    if (found) set value of (formsub3(self)) to wtypkin.wtypkin_descr
                    else       set value of (formsub3(self)) to ''
                end_procedure
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxen_Wtypkin_Code

            Object Witemxtr_Wax_to is a dbFormSub
                Entry_Item Witemxtr.Wax_to
                Set Size to 13 67
                Set Location to 65 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set prompt_object to (wax(Current_object))
                procedure onchange
                   clear wax
                   get value item 0 to wax.wax_recr
                   find eq wax by index.2
                   if (found) set value of (formsub2(self)) to wax.wax_descr
                   else       set value of (formsub2(self)) to ''
                end_procedure
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Wax_to

            Object Witemxtd_Wtypkin_Code is a dbFormSub
                Entry_Item Witemxtr.Wtypkin_to
                Set Size to 13 67
                Set Location to 79 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    move syscurxr.company_code to wtypkin.company_code
                    move syscurxr.branch_code  to wtypkin.branch_code
                    move syscurxr.year_year    to wtypkin.year_year
                    get value item 0           to wtypkin.wtypkin_code
                    find eq wtypkin by index.1
                    if (found) set value of (formsub5(self)) to wtypkin.wtypkin_descr
                    else       set value of (formsub5(self)) to ''
                end_procedure
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtd_Wtypkin_Code

            Object btnkleisimo is a ButtonSub

                //AB-StoreTopStart
                                                        
                                                        
                //AB-StoreTopEnd

                Set Label to "ButtonSub2"
                Set Bitmap to "open1.bmp"
                Set Size to 20 24
                Set Location to 90 383

                //AB-StoreStart
                                                        
                Set TooltipValue to "Ä§¶†ö£ò / â¢úÂ©†£¶ Ñ§´¶¢„™ É†ò°Â§û©û™ Ñ†õÈ§"
                
                Function Kleise_Entolh Returns Integer
                   String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
                   String sentolh msgstr switemx snomisma  snwaxrecr switemxcode smodule
                   Number nqty nunit nmesh
                   Integer idelete istatus lilathos iabort isClosed ifrom ito iflag
                   move 0 to iflag
                   Date ddate
                   Set piLathos to 0
                   get pifrom to ifrom
                   get pito   to ito
                   move '09' to smodule
                   Get field_current_value of witemxtr_dd field witemxtr.recr to scurrecr
                   Get field_current_value of witemxtr_dd field witemxtr.wtypkin_from to stypkin
                 if (ifrom=0) begin
                   clear wflagkin
                   move syscurxr.company_code to wflagkin.company_code
                   move syscurxr.branch_code  to wflagkin.branch_code
                   move syscurxr.year_year    to wflagkin.year_year
                   move stypkin               to wflagkin.wtypkin_code
                   find ge wflagkin by index.1
                   while (found eq 1 and wflagkin.wtypkin_code = stypkin)
                      if wflagkin.wflagkin_flag eq '9' move 1 to iflag
                      find gt wflagkin by index.1
                   loop
                   move syscurxr.c_code0 to snomisma
                   Clear wtypkin
                   Move syscurxr.company_code to wtypkin.company_code
                   Move syscurxr.branch_code  to wtypkin.branch_code
                   Move syscurxr.year_year    to wtypkin.year_year
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
                         move witemx.mesosta_xre    to nmesh
                         Get field_current_value of witemxtr_dd field witemxtr.wax_from to swaxrecr
                         Get field_current_value of witemxtr_dd field witemxtr.hmnia to ddate
                         Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                         Get field_current_value of witemxtd_dd field witemxtd.unitprice_from to nunit
                         move 'Ñ.É.ßò®.' to speri
                         move (append(speri,scurrecr)) to speri
                         move (append(speri,' ãòù†°„ õ†ò°†§.ú†õÈ§')) to speri
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
                         if (iflag=1) begin
                            if (nunit=0) Set pnTimhMonados   Of bpMkWcm  to  nmesh
                            else         Set pnTimhMonados   Of bpMkWcm  to  nunit
                         end
                         else            Set pnTimhMonados   Of bpMkWcm  to  0
                         Set pdHmnia          Of bpMkWcm  to  ddate
                         Set psNomisma        Of bpMkWcm  to  sNomisma
                         Set psParticleRecr   Of bpMkWcm  to  scurrecr
                         Set psPerigrafh      Of bpMkWcm  to  sPeri
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
                         If (srecr<>'') begin
                           Set field_changed_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                           Send request_save to witemxtd_dd
                           get pswitemx to switemx
                           Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(srecr)))
                         End
                         Else Function_Return 55559
                         Send find to witemxtd_dd next_record 1
                      Loop
                
                   End
                   Else Function_Return 55556
                 end
                 if (ito=0) begin
                   move 0 to iflag
                   Get field_current_value of witemxtr_dd field witemxtr.wtypkin_to to stypkin
                   clear wflagkin
                   move syscurxr.company_code to wflagkin.company_code
                   move syscurxr.branch_code  to wflagkin.branch_code
                   move syscurxr.year_year    to wflagkin.year_year
                   move stypkin               to wflagkin.wtypkin_code
                   find ge wflagkin by index.1
                   while (found eq 1 and wflagkin.wtypkin_code = stypkin)
                      if wflagkin.wflagkin_flag eq '9' move 1 to iflag
                      find gt wflagkin by index.1
                   loop
                   move syscurxr.c_code0 to snomisma
                   Clear wtypkin
                   Move syscurxr.company_code to wtypkin.company_code
                   Move syscurxr.branch_code  to wtypkin.branch_code
                   Move syscurxr.year_year    to wtypkin.year_year
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
                         move witemx.mesosta_xre    to nmesh
                         Get field_current_value of witemxtr_dd field witemxtr.wax_to to swaxrecr
                         Get field_current_value of witemxtr_dd field witemxtr.hmnia to ddate
                         Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                         Get field_current_value of witemxtd_dd field witemxtd.unitprice_from to nunit
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
                         if (iflag=1) begin
                            if (nunit=0) Set pnTimhMonados   Of bpMkWcm  to  nmesh
                            else         Set pnTimhMonados   Of bpMkWcm  to  nunit
                         end
                         else            Set pnTimhMonados   Of bpMkWcm  to  0
                         Set pdHmnia          Of bpMkWcm  to  ddate
                         Set psNomisma        Of bpMkWcm  to  sNomisma
                         Set psParticleRecr   Of bpMkWcm  to  scurrecr
                         if (ifrom=1) begin
                             move 'Ñ.É.ßò®.' to speri
                             move (append(speri,scurrecr)) to speri
                             move (append(speri,' ãòù†°„ õ†ò°†§.ú†õÈ§')) to speri
                         end
                         Set psPerigrafh      Of bpMkWcm  to  sPeri
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
                         If (srecr<>'') begin
                           Set field_changed_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                           Send request_save to witemxtd_dd
                           get pswitemx to switemx
                           Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(srecr)))
                         End
                         Else Function_Return 55559
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
                    String sentolh msgstr switemx smodule
                    Number nqty
                    Integer idelete istatus lilathos iabort isClosed
                    Date ddate
                    Set piLathos to 0
                    Move '' to srecr
                    Move '' to speri
                    Move '' to msgstr
                    Get field_current_value of witemxtr_dd field witemxtr.recr to srecr
                    Set piLathos to 0
                    Move (fiDelete_WCmoves_Record(Self,srecr,0)) to idelete
                    Get pilathos  to lilathos
                    If (lilathos <> 0) Function_Return liLathos
                    Send UpdateWait to (piTxtID(Self))  ('É†òö®ò≠„ ÄßÊ Ä®ÆúÂ¶ â†§„©ú‡§ âÂ§û©û ÑÂõ¶¨™ '+(String(srecr)))
                    Function_Return 0
                End_Function
                
                Procedure OnClick
                    Integer isClosed iMsg iRec iErr ifrom ito
                    Indicate Err False
                    get checked_state of (witemxtr_from_no(container1(self))) to ifrom
                    get checked_state of (witemxtr_to_no(container1(self))) to ito
                    Set piTxtID                         to (Wait(Self))
                    Set Button_State    of (Wait(Self)) to False
                    Set BarVisibleState of (Wait(Self)) to '' False
                    Send Popup                          to (Wait(Self))
                //    send request_save to witemxtr_dd
                //      Set Dynamic_Update_State Of (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) to False
                    Send Beginning_Of_Data To (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) true
                    If (Current_Record(Witemxtd_DD(Self))) Begin
                        Begin_Transaction
                            Get Field_Current_value Of Witemxtr_DD Field Witemxtr.Recnum  to iRec
                            Get Field_Current_value Of Witemxtr_DD Field Witemxtr.Ekleise to isClosed
                            Get Field_Current_value Of Witemxtr_DD Field Witemxtr.from_no to ifrom
                            Get Field_Current_value Of Witemxtr_DD Field Witemxtr.to_no   to ito
                            If (isClosed) Begin
                                if ((ifrom=0) or (ito=0)) begin
                                   set pifrom to ifrom
                                   set pito   to ito
                                   if (sysfile.titan=0) begin
                                        Clear particle
                                        move witemxtr.particle_recr to particle.partl_recr
                                        find eq particle by index.2
                                        if (not(found)) begin
                                            send stop_box 'Éú§ ¨ß·®Æú† ß¢‚¶§ ´¶ ßò®ò©´ò´†°Ê ©¨©Æ‚´†©û™ !!' 'ë≠·¢£ò 9005'
                                            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                            Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                            Abort_Transaction
                                            procedure_return
                                        end
                                        else begin
                                            if (particle.exei_sxetika eq '') begin
                                                move '1' to particle.exei_sxetika
                                                saverecord particle
                                            end
                                            else begin
                                                send stop_box 'í¶ ßò®ò©´ò´†°Ê ©¨©Æ‚´†©û™ ô®Â©°ú´ò† ©ú ú°°®ú£Ê´û´ò ' 'ë≠·¢£ò 9006'
                                                If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                                Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                                Abort_Transaction
                                                procedure_return
                                            end
                                        end
                                   end
                                end
                            Get Anoixe_Entolh to iMsg
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
                                        Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                        Abort_Transaction
                                    End
                                End
                            End
                            Else Begin
                                Set piSfalma to iMsg
                                Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
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
                                   if (sysfile.titan=0) begin
                                        clear particle
                                        move witemxtr.particle_recr to particle.partl_recr
                                        find eq particle by index.2
                                        if (not(found)) begin
                                            send stop_box 'Éú§ ¨ß·®Æú† ©¨©Æú´†©£‚§¶ ßò®ò©´ò´†°Ê ' 'ë≠·¢£ò 9003'
                                            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                            Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                            set pifrom to 0
                                            set pito   to 0
                                            //   Set Dynamic_Update_State Of (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) to true
                                            Abort_Transaction
                                            procedure_return
                                        end
                                        else begin
                                            if ((particle.exei_sxetika   eq '1') and;
                                                (particle.partl_no       gt '0') and;
                                                (particle.partl_module   eq '01')and;
                                                (particle.partl_timol    eq  0)) Begin
                                                move '' to particle.exei_sxetika
                                                saverecord particle
                                                set pifrom to ifrom
                                                set pito   to ito
                                            end
                                            else begin
                                                send stop_box 'í¶ ßò®ò©´ò´†°Ê õú§ £ß¶®úÂ §ò ©¨©Æú´†©´úÂ ' 'ë≠·¢£ò 9004'
                                                If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                                Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                                set pifrom to 0
                                                set pito   to 0
                                                //   Set Dynamic_Update_State Of (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) to true
                                                Abort_Transaction
                                                procedure_return
                                            end
                                        end
                                   end
                             end
                             Get Kleise_Entolh to iMsg
                                If (Not(iMsg)) Begin
                                    Send Find_By_Recnum to Witemxtr_DD Witemxtr.File_Number iRec
                                    If (Found) Begin
                                        Set Field_Changed_value Of Witemxtr_DD Field Witemxtr.Ekleise to '1'
                                        Send Request_Save to Witemxtr_DD
                                        Move (Err) to iErr
                                        If (iErr) Begin
                                            Set piSfalma to 9002
                                            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                            set pifrom to 0
                                            set pito   to 0
                                            Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                            Abort_Transaction
                                        End
                                    End
                                End
                                Else Begin
                                    Set piSfalma to iMsg
                                    If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                    set pifrom to 0
                                    set pito   to 0
                                    Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
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
                 //   Set Dynamic_Update_State Of (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) to true
                    If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnkleisimo

            Object frmIsClosed is a FormSub
                Set Size to 25 42
                Set Location to 36 390
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
                Set Location to 90 419

                //AB-StoreStart
                Set TooltipValue to "Ñ£≠·§†©û âÂ§û©û™ Äß¶ü„°û™"
                Procedure OnClick
                    String  srecr swcmovesrecr sekleise switemxrecr wrecr
                    Integer iRec rVal
                    Get field_current_value of witemxtr_dd field witemxtr.ekleise to sekleise
                    if (Not(sekleise));
                        send Info_Box "Ü Ñ§´¶¢„ £òù†°„™ õ†ò°Â§û©û™ ú†õÈ§ úÂ§ò† ò§¶†Æ´„.Éú§ ¨ß·®Æú† °Â§û©û ©´û§ òß¶ü„°û" "è¢û®¶≠¶®Âò"
                    else begin
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
                        send Request_Cancel to v182
                    end
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnwitemxen

            Object Witemxtr_Descr is a dbFormSub
                Entry_Item Witemxtr.Descr
                Set Size to 13 257
                Set Location to 7 175
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // Witemxtr_Descr

            Object TextBoxSub11 is a TextBoxSub
                Set Label to "ÄßÊ òß¶ü„°û "
                Set Location to 34 2
                Set Size to 10 51
            End_Object    // TextBoxSub11

            Object FormSub1 is a FormSub
                Set Size to 13 141
                Set Location to 34 175
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub1

            Object FormSub2 is a FormSub
                Set Size to 13 141
                Set Location to 64 175
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub2

            Object TextBoxSub12 is a TextBoxSub
                Set Label to "ãú´ò≠¶®· ©ú òß¶ü„°û"
                Set Location to 65 1
                Set Size to 10 81
            End_Object    // TextBoxSub12

            Object TextBoxSub14 is a TextBoxSub
                Set Label to "âÂ§û©û Ñ†õÈ§"
                Set Location to 50 2
                Set Size to 10 47
            End_Object    // TextBoxSub14

            Object FormSub3 is a FormSub
                Set Size to 13 141
                Set Location to 49 175
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub3

            Object TextBoxSub16 is a TextBoxSub
                Set Label to "âÂ§û©û Ñ†õÈ§"
                Set Location to 79 2
                Set Size to 10 47
            End_Object    // TextBoxSub16

            Object FormSub5 is a FormSub
                Set Size to 13 141
                Set Location to 79 175
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub5

            Object Witemxtr_From_No is a dbCheckBoxSub
                Entry_Item Witemxtr.From_no
                Set Label to "åò £û§ öÂ§ú†"
                Set Size to 10 60
                Set Location to 50 322
            End_Object    // Witemxtr_From_No

            Object Witemxtr_To_No is a dbCheckBoxSub
                Entry_Item Witemxtr.To_no
                Set Label to "åò £û§ öÂ§ú†"
                Set Size to 10 57
                Set Location to 80 322
            End_Object    // Witemxtr_To_No

            Object TextBoxSub17 is a TextBoxSub
                Set Label to "ëÆú´†°Ê ßò®ò©´ò´†°Ê"
                Set Location to 94 1
                Set Size to 10 87
            End_Object    // TextBoxSub17

            Object Witemxtr_Particle_Recr is a dbFormSub
                Entry_Item Witemxtr.Particle_recr
                Set Size to 13 67
                Set Location to 93 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Prompt_Button_Mode to pb_PromptOn

                //AB-StoreStart
                Set Prompt_Object to (sl014_1(Current_object))
                Procedure Prompt_Callback integer hPrompt
                    set Export_Column of hPrompt to 0
                    Set Initial_Column of hPrompt to 0
                end_procedure
                
                procedure onchange
                    string srecr
                    integer ifrom ito
                 ///   get checked_state of (witemxtr_from_no(container1(self))) to ifrom
                  //  get checked_state of (witemxtr_to_no(container1(self))) to ito
                 //   if ((ifrom=1) or (ito=1)) begin
                 //      set enabled_state item 0 to true
                       clear particle
                       get value item 0 to srecr
                       move srecr to particle.partl_recr
                       find eq particle by index.2
                       if (found=1) set value of (formsub6(container1(self))) to particle.partl_no
                       else         set value of (formsub6(container1(self))) to ''
                   // end
                   // else set enabled_state item 0 to false
                end_procedure
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Particle_Recr

            Object FormSub6 is a FormSub
                Set Size to 13 49
                Set Location to 93 175
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub6


            //AB-StoreStart
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
            //AB-StoreEnd

        End_Object    // Container1

        Object dbTabDialogSubS1 is a dbTabDialogSubS
            Set Size to 134 452
            Set Location to 142 3
            Set Border_Style to Border_Normal
            Object dbTabPageSubS1 is a dbTabPageSubS
                Set Label to "dbTabPageSubS1"
                Object Witemxtd_ is a dbGridSub
                    Set Main_File to Witemxtd.File_Number
                    Set Server to (Witemxtd_DD(self))
                    Set Size to 95 449
                    Set Location to 4 0
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Witemxtd.Recnum
                        Entry_Item Witemxtd.Witemx_code
                        Entry_Item (Fnwitemx(self,witemxtd.witemx_code))
                        Entry_Item Witemxtd.Qty_from
                        Entry_Item Witemxtd.Unitprice_from
                        Entry_Item Witemxtd.Axia_from
                        Entry_Item Witemxtd.Pcfpa_from
                        Entry_Item Witemxtd.Fpa_from
                        Entry_Item Witemxtd.Total_from
                    End_Row

                    Set Form_Width    item 0 to 0
                    Set Header_Label  item 0 to ""
                    
                    Set Form_Width    item 1 to 70
                    Set Header_Label  item 1 to "â‡õ†°Ê™ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 2 to 100
                    Set Header_Label  item 2 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 3 to 40
                    Set Header_Label  item 3 to "è¶©¶´."
                    
                    Set Form_Width    item 4 to 45
                    Set Header_Label  item 4 to "í†£„ ã¶§."
                    
                    Set Form_Width    item 5 to 50
                    Set Header_Label  item 5 to "âòüò®Ê"
                    
                    Set Form_Width    item 6 to 40
                    Set Header_Label  item 6 to "% î.è.Ä"
                    
                    Set Form_Width    item 7 to 45
                    Set Header_Label  item 7 to "î.è.Ä"
                    
                    Set Form_Width    item 8 to 53
                    Set Header_Label  item 8 to "ëÁ§¶¢¶"
                    

                    //AB-StoreStart
                    set column_shadow_state item 0 to true
                    Set Points Of witemxtd_   Item  3 to 1
                    set currentrowcolor to 11468799
                    set currentcellcolor to 11468799
                    set column_shadow_state item 2 to true
                    set column_shadow_state item 5 to true
                    set column_shadow_state item 6 to true
                    set column_shadow_state item 7 to true
                    set column_shadow_state item 8 to true
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
                     Number nQty nTimhMon nQtyTimhMon nPctEkpt nPosoEkpt preis## fpa##
                     Number nPosoNet nPctFpa nPosoFpa nPosoSynolo nFpa nextra
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
                           Move (Fnwitemx(self,Rval##))   to rval##
                           Set value item (iBase_item+2) to Rval##
                        End
                     end
                     Get Field_Current_Value Of witemxtd_DD Field witemxtd.witemx_code To lsitem##
                     if (lsitem## <> '') begin
                         Get Column FromI    to iColumn
                         Get Column FromI    to iColFrom
                         Get Column ToI      to iColTo
                         Get Data_File  Item iColumn                             to iFileNumber
                         Get Data_Field Item iColumn                             to iFieldNumber
                         Get_Attribute DF_FIELD_NAME Of iFileNumber iFieldNumber to sNameFrom
                         Move (Trim(sNameFrom))                                  to sNameFrom
                         Get Column ToI                                          to iColumn
                         Get Data_File  Item iColumn                             to iFileNumber
                         Get Data_Field Item iColumn                             to iFieldNumber
                         Get_Attribute DF_FIELD_NAME Of iFileNumber iFieldNumber to sNameTo
                         Move (Trim(sNameTo))                                    to sNameTo
                         Get Field_Current_Value Of witemxtd_DD Field witemxtd.qty_from To nQty
                         Get Field_Current_Value Of witemxtd_DD Field witemxtd.unitprice_from To nTimhMon
                         If (sNameFrom=(Uppercase('witemx_code'))) Begin
                            Get Field_Current_Value Of witemxtd_DD Field witemxtd.pcfpa_from To nPctFpa
                            if (npctfpa=0) Set Field_Changed_Value Of witemxtd_dd Field witemxtd.pcfpa_from To (pipcfpa(self))
                         end
                    
                         If ((nQty<>0) or (nTimhMon<>0)) Begin
                             Move (nQty*nTimhMon) to nPosoNet
                             Get Field_Current_Value Of witemxtd_DD Field witemxtd.pcfpa_from To nPctFpa
                             Get Field_Current_Value Of witemxtd_DD Field witemxtd.fpa_from   To nPosoFpa
                             Set Field_Changed_Value Of witemxtd_DD Field witemxtd.axia_from To nPosonet
                             If (sNameFrom=(Uppercase('pcfpa_from'))) Begin
                                Move  (Round_number(((nPosoNet*nPctFpa/100)),2)) to nPosoFpa
                                Set Field_Changed_Value Of witemxtd_DD Field witemxtd.fpa_from To nPosoFpa
                             End
                    
                             Get Field_Current_Value Of witemxtd_DD Field witemxtd.fpa_from  To nPosoFpa
                             Move (nPosoNet+nPosoFpa)       to npososynolo
                             Set Field_Changed_Value Of witemxtd_DD Field witemxtd.total_from To nPosoSynolo
                    
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
                    Set Location to 103 166
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Qty

                Object Witemxtr_Axia is a dbFormSub
                    Entry_Item Witemxtr.Axia
                    Set Size to 13 53
                    Set Location to 103 251
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Axia

                Object Witemxtr_Fpa is a dbFormSub
                    Entry_Item Witemxtr.Fpa
                    Set Size to 13 49
                    Set Location to 103 336
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Fpa

                Object Witemxtr_Total is a dbFormSub
                    Entry_Item Witemxtr.Total
                    Set Size to 13 59
                    Set Location to 103 386
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Total

                Object TextBoxSub13 is a TextBoxSub
                    Set Label to "ëÁ§¶¢ò :"
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Location to 104 113
                    Set Size to 11 38
                    Set FontWeight to 800
                End_Object    // TextBoxSub13


                //AB-StoreStart
                Set label to 'ÑÂõû ß®¶™ É†ò°Â§û©û'
                
                //AB-StoreEnd

            End_Object    // dbTabPageSubS1

        End_Object    // dbTabDialogSubS1


        //AB-StoreStart
                        
        Procedure Activate_View Returns Integer
            string srecr
            integer rval
            send set_the_decimal_points
            if (sysfile.titan=1) begin
                set visible_state of (textboxsub17(container1(self))) to false
                set visible_state of (witemxtr_particle_recr(container1(self))) to false
                set visible_state of (formsub6(container1(self))) to false
            end
            else begin
                set visible_state of (textboxsub17(container1(self))) to true
                set visible_state of (witemxtr_particle_recr(container1(self))) to true
                set visible_state of (formsub6(container1(self))) to true
        
            end
            Forward Get MSG_Activate_View to Rval
            get psfindrecr to srecr
            if (srecr <> '') begin
               move srecr to witemxtr.recr
               find eq witemxtr by index.2
            end
        
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
        
        Procedure Set_The_Decimal_Points
            Integer itable ipedia idecs itable1
            String  sCode sNomisma sRecr
            date    dHmnia
        
            Get Fidekadika_nomismatos SysCurXr.C_Code0 to idecs
        
            Move (dbTabPageSubS1(dbTabDialogSubS1(Self))) to itable
            Move (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(Self)))) to itable1
            Set Dynamic_Update_State Of itable1 to False
            Set Visible_State Of itable1 to False
        
            Set Points          Of (witemxtr_qty(itable)) Item  0 to 1
            Set Points          Of (witemxtr_axia(itable))Item  0 to idecs
            Set Points          Of (witemxtr_fpa(itable)) Item  0 to idecs
            Set Points          Of (witemxtr_total(itable)) Item  0 to idecs
        
            Set Numeric_Mask    Of (witemxtr_qty(itable)) Item  0 to 12 1
            Set Numeric_Mask    Of (witemxtr_axia(itable))Item  0 to 12 idecs " ,*"
            Set Numeric_Mask    Of (witemxtr_fpa(itable)) Item  0 to 12 idecs " ,*"
            Set Numeric_Mask    Of (witemxtr_total(itable)) Item  0 to 12 idecs " ,*"
        
            Set Points          Of itable1           Item  3 to 1
            Set Points          Of itable1           Item  4 to idecs
            Set Points          Of itable1           Item  5 to idecs
            Set Points          Of itable1           Item  7 to idecs
            Set Points          Of itable1           Item  8 to idecs
        
            Set Numeric_Mask    Of itable1           Item  3 to 12 1 " ,*"
            Set Numeric_Mask    Of itable1           Item  4 to 12 idecs  " ,*"
            Set Numeric_Mask    Of itable1           Item  5 to 12 idecs " ,*"
            Set Numeric_Mask    Of itable1           Item  7 to 12 idecs  " ,*"
            Set Numeric_Mask    Of itable1           Item  8 to 12 idecs " ,*"
            Set Visible_State Of itable1 to true
            Set Dynamic_Update_State Of itable1 to true
        
        
        End_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V182


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
