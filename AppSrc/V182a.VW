//AB/ Project V182a:mazikes kinhseis eidvn
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V182a:mazikes kinhseis eidvn"
//AB/         Set ProjectFileName to "V182a.VW"

// Project Object Structure
//   V182a is a dbViewSubS
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
//       btnkleisimo is a ButtonSub
//       frmIsClosed is a FormSub
//       btnwitemxen is a ButtonSub
//       Witemxtr_Descr is a dbFormSub
//       TextBoxSub11 is a TextBoxSub
//       Witemxtr_Wax_from is a dbFormSub
//       FormSub1 is a FormSub
//       FormSub2 is a FormSub
//       Witemxtr_Wax_to is a dbFormSub
//       TextBoxSub12 is a TextBoxSub
//       TextBoxSub14 is a TextBoxSub
//       FormSub3 is a FormSub
//       Witemxen_Wtypkin_Code is a dbFormSub
//       TextBoxSub16 is a TextBoxSub
//       Witemxen_Wtypkin_Code is a dbFormSub
//       FormSub5 is a FormSub
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
Register_Object TextBoxSub2
Register_Object TextBoxSub5
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Units_DD
Register_Object V182a
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Witemxen_Wtypkin_Code
Register_Object Witemxtd_
Register_Object Witemxtd_DD
Register_Object Witemxtr_Axia
Register_Object Witemxtr_DD
Register_Object Witemxtr_Descr
Register_Object Witemxtr_Fpa
Register_Object Witemxtr_Hmnia
Register_Object Witemxtr_Qty
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
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use Button.Sub
    Use Form.Sub
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

    ACTIVATE_VIEW Activate_V182a FOR V182a

    Object V182a is a dbViewSubS

        //AB-StoreTopStart
        
        property string     psmodule       public '03'
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
        
        Use stadia.pkg
        Use Kinapoth.vw
        
        
        
        //AB-StoreTopEnd

        Set Label to "ãòù†°‚™ ú§õ¶õ†ò°†§„©ú†™ ú†õÈ§ ©´†™ òß¶ü„°ú™"
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
            Set Size to 97 448
            Set Location to 25 5
            Object witemxtr_recr is a dbForm
                Entry_Item Witemxtr.Recr
                Set Size to 13 84
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
                Set Size to 13 84
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
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Hmnia

            Object btnkleisimo is a ButtonSub

                //AB-StoreTopStart
                                                                                                                                                        
                                                                                                                                                        
                //AB-StoreTopEnd

                Set Label to "ButtonSub2"
                Set Bitmap to "open1.bmp"
                Set Size to 20 24
                Set Location to 71 388

                //AB-StoreStart
                                                                                                                                                        
                Set TooltipValue to "Ä§¶†ö£ò / â¢úÂ©†£¶ Ñ§´¶¢„™ É†ò°Â§û©û™ Ñ†õÈ§"
                
                Function Kleise_Entolh Returns Integer
                   String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
                   String sentolh msgstr switemx snomisma  snwaxrecr switemxcode
                   Number nqty nposo
                   Integer idelete istatus lilathos iabort isClosed
                   Date ddate
                   Set piLathos to 0
                   Get field_current_value of witemxtr_dd field witemxtr.recr to scurrecr
                   Get field_current_value of witemxtr_dd field witemxtr.wtypkin_from to stypkin
                
                   move syscurxr.c_code0 to snomisma
                   Clear wtypkin
                   Move syscurxr.company_code to wtypkin.company_code
                   Move syscurxr.branch_code  to wtypkin.branch_code
                   Move syscurxr.year_year    to wtypkin.year_year
                   Move  stypkin              to wtypkin.wtypkin_code
                   Find eq wtypkin by index.1
                   If (Found = 1) begin
                      Send find to witemxtd_dd first_record 1
                      While (found = 1)
                         Set piLathos to 0
                         Move wtypkin.wtypkin_recr to swtypkinrecr
                         Get field_current_value of witemxtd_dd field witemxtd.witemx_code to switemxcode
                         clear witemx
                         Move syscurxr.company_code to witemx.company_code
                         Move syscurxr.branch_code  to witemx.branch_code
                         Move syscurxr.year_year    to witemx.year_year
                         move switemxcode           to witemx.witemx_code
                         find eq witemx by index.5
                         move witemx.witemx_recr    to switemxrecr
                         Get field_current_value of witemxtr_dd field witemxtr.wax_from to swaxrecr
                         Get field_current_value of witemxtr_dd field witemxtr.hmnia to ddate
                         Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                         Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                         Get field_current_value of witemxtd_dd field witemxtd.axia_from to nposo
                         move ' Ä®. èò®ò©´.É†ò°†§.ú†õÈ§ ' to speri
                         move (append(speri,scurrecr)) to speri
                         move (append(speri,' ãòù†°„ õ†ò°†§.ú†õÈ§')) to speri                        
                         
                         Get fsFtiaxe_Wcmoves Of (Papari(Self)) swtypkinrecr switemxrecr swaxrecr ddate nqty speri snomisma scurrecr nposo to srecr 
                         
                         //Move (fsFtiaxe_Wcmoves(Papari(Self),swtypkinrecr,switemxrecr,swaxrecr,ddate,nqty,speri,snomisma,scurrecr,nposo)) to srecr
                         
                         Get piLathos  to lilathos
                         If (lilathos <> 0) Function_Return liLathos
                         If (srecr<>'') begin
                           Set field_changed_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                           Send request_save to witemxtd_dd
                           get pswitemx to switemx
                           Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                         End
                         Else Function_Return 55559
                         Send find to witemxtd_dd next_record 1
                      Loop
                
                   End
                   Else Function_Return 55556
                
                   Get field_current_value of witemxtr_dd field witemxtr.wtypkin_to to stypkin
                   move syscurxr.c_code0 to snomisma
                   Clear wtypkin
                   Move syscurxr.company_code to wtypkin.company_code
                   Move syscurxr.branch_code  to wtypkin.branch_code
                   Move syscurxr.year_year    to wtypkin.year_year
                   Move  stypkin              to wtypkin.wtypkin_code
                   Find eq wtypkin by index.1
                   If (Found = 1) begin
                      Send find to witemxtd_dd first_record 1
                      While (found = 1)
                         Set piLathos to 0
                         Move wtypkin.wtypkin_recr to swtypkinrecr
                         Get field_current_value of witemxtd_dd field witemxtd.witemx_code to switemxcode
                         clear witemx
                         Move syscurxr.company_code to witemx.company_code
                         Move syscurxr.branch_code  to witemx.branch_code
                         Move syscurxr.year_year    to witemx.year_year
                         move switemxcode           to witemx.witemx_code
                         find eq witemx by index.5
                         move witemx.witemx_recr    to switemxrecr
                         Get field_current_value of witemxtr_dd field witemxtr.wax_to to swaxrecr
                         Get field_current_value of witemxtr_dd field witemxtr.hmnia to ddate
                         Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                         Get field_current_value of witemxtd_dd field witemxtd.qty_from to nqty
                         Get field_current_value of witemxtd_dd field witemxtd.axia_from to nposo
                
                         Get fsFtiaxe_Wcmoves Of (Papari(Self)) swtypkinrecr switemxrecr swaxrecr ddate nqty speri snomisma scurrecr nposo to srecr 
                         //Move (fsFtiaxe_Wcmoves(Papari(Self),wtypkinrecr,switemxrecr,swaxrecr,ddate,nqty,speri,snomisma,scurrecr,nposo)) to srecr
                
                         Get piLathos  to lilathos
                         If (lilathos <> 0) Function_Return liLathos
                         If (srecr<>'') begin
                           Set field_changed_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                           Send request_save to witemxtd_dd
                           get pswitemx to switemx
                           Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ ã‚ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                         End
                         Else Function_Return 55559
                         Send find to witemxtd_dd next_record 1
                      Loop
                
                   End
                   Else Function_Return 55556
                   Function_Return 0
                
                End_Function
                
                Function Anoixe_Entolh Returns Integer
                    String sekleise swtypkinrecr switemxrecr swaxrecr stypkin srecr scurrecr speri
                    String sentolh msgstr switemx
                    Number nqty
                    Integer idelete istatus lilathos iabort isClosed
                    Date ddate
                    Set piLathos to 0
                    Move '' to srecr
                    Move '' to speri
                    Move '' to msgstr
                    Send find to witemxtd_dd first_record 1
                    While (found = 1)
                        Get field_current_value of witemxtd_dd field witemxtd.wcmoves_recr to srecr
                        Move 1 to idelete
                        Set piLathos to 0
                        Move (fiDelete_WCmoves_Record(Papari(Self),srecr,idelete)) to idelete
                        Get pilathos  to lilathos
                        If (lilathos <> 0) Function_Return liLathos
                        get pswitemx to switemx
                        Send UpdateWait to (piTxtID(Self))  ('É†òö®ò≠„ ÄßÊ Ä®ÆúÂ¶ â†§„©ú‡§ âÂ§û©û ÑÂõ¶¨™ '+(String(switemx)))
                        Send find to witemxtd_dd next_record 1
                    Loop
                    Function_Return 0
                End_Function
                
                Procedure OnClick
                    Integer isClosed iMsg iRec iErr
                
                    Indicate Err False
                    set pifrom         to 1
                    Set piTxtID                         to (Wait(Self))
                    Set Button_State    of (Wait(Self)) to False
                    Set BarVisibleState of (Wait(Self)) to '' False
                    Send Popup                          to (Wait(Self))
                    Set Dynamic_Update_State Of (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) to False
                    Send Beginning_Of_Data To (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) true
                    If (Current_Record(Witemxtd_DD(Self))) Begin
                        Begin_Transaction
                            Get Field_Current_value Of Witemxtr_DD Field Witemxtr.Recnum  to iRec
                            Get Field_Current_value Of Witemxtr_DD Field Witemxtr.Ekleise to isClosed
                            If (isClosed) Begin
                                Get Anoixe_Entolh to iMsg
                                If (Not(iMsg)) Begin
                                    Send Find_By_Recnum to Witemxtr_DD Witemxtr.File_Number iRec
                                    If (Found) Begin
                                        Set piReadOnly Of Witemxtr_DD to False
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
                                            Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                            Abort_Transaction
                                        End
                                    End
                                End
                                Else Begin
                                    Set piSfalma to iMsg
                                    If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                                    Send Beginning_Of_Data to (witemxtd_(dbTabPageSubS1(dbTabDialogSubS1(self)))) True
                                    Abort_Transaction
                                End
                            End
                        End_Transaction
                
                             If (piSfalma(Self)=9001)  Send Info_Box "Éú§ £ßÊ®ú©ò §ò ò§¶Â•‡ ´û§ ú§´¶¢„ õ†ò°Â§û©û™"  "ë≠·¢£ò 9001"
                        Else If (piSfalma(Self)=9002)  Send Info_Box "Éú§ £ßÊ®ú©ò §ò °¢úÂ©‡ ´û§ ú§´¶¢„ õ†ò°Â§û©û™"  "ë≠·¢£ò 9002"
                        Else If (piSfalma(Self)=55556) Send Info_Box "Éú§ ¨ß·®Æú† °Â§û©û ´È§ ú†õÈ§"             "ë≠·¢£ò 55556"
                        Else If (piSfalma(Self)=55557) Send Info_Box "Éú§ ¨ß·®Æú† °Â§û©û ´‡§ ú†õÈ§"                 "ë≠·¢£ò 55557"
                        Else If (piSfalma(Self)=55558) Send Info_Box "Éú§ úß†©´®‚≠ú† Wcmoves Recr ö†ò ´¶ ©Á§üú´¶ úÂõ¶™"   "ë≠·¢£ò 55558"
                        Else If (piSfalma(Self)=55559) Send Info_Box "Éú§ úß†©´®‚≠ú† Wcmoves Recr ö†ò ´ò úÂõû"    "ë≠·¢£ò 55559"
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
                Set Size to 25 42
                Set Location to 33 385
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
                Set Location to 71 419

                //AB-StoreStart
                //Set TooltipValue to "Ñ£≠·§†©û âÂ§û©û™ Äß¶ü„°û™"
                //Procedure OnClick
                //    String  srecr swcmovesrecr sekleise switemxrecr wrecr
                //    Integer iRec rVal
                //    Get field_current_value of witemxen_dd field witemxen.ekleise to sekleise
                //    if (Not(sekleise));
                //        send Info_Box "Ü Ñ§´¶¢„ èò®òö‡ö„™ úÂ§ò† ò§¶†Æ´„.Éú§ ¨ß·®Æú† °Â§û©û ©´û§ òß¶ü„°û" "è¢û®¶≠¶®Âò"
                //    else begin
                //
                //            If (Focus(Desktop)=(Witemxed_(dbTabPageSubS1(dbTabDialogSubS1(self))))) begin
                //                get field_current_value of witemxed_dd field witemxed.wcmoves_recr to srecr
                //                get field_current_value of witemxed_dd field witemxed.witemx_recr to switemxrecr
                //                set pswcmovesrecr   to srecr
                //                set pswitemxrecr    to switemxrecr
                //            end
                //            Else Begin
                //                get field_current_value of witemxen_dd field witemxen.wcmoves_recr to srecr
                //                get field_current_value of witemxen_dd field witemxen.witemx_recr to switemxrecr
                //                set pswcmovesrecr to srecr
                //                set pswitemxrecr to switemxrecr
                //            End
                //
                //
                //        get pswcmovesrecr    to swcmovesrecr
                //        get pswitemxrecr     to switemxrecr
                //        set pifromparticl    of (kinapoth(self)) to 2
                //        set psFindmovesrecr  of (kinapoth(Self)) to swcmovesrecr
                //        set psFinditemrecr   of (kinapoth(Self)) to switemxrecr
                //        send Activate_kinapoth
                //        send Request_Cancel to v185
                //    end
                //End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnwitemxen

            Object Witemxtr_Descr is a dbFormSub
                Entry_Item Witemxtr.Descr
                Set Size to 13 236
                Set Location to 7 199
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

            Object Witemxtr_Wax_from is a dbFormSub
                Entry_Item Witemxtr.Wax_from
                Set Size to 13 84
                Set Location to 35 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                    get value item 0 to wax.wax_recr
                    find eq wax by index.2
                    if (found) set value of (formsub1(self)) to wax.wax_descr
                    else       set value of (formsub1(self)) to ''
                end_procedure
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Wax_from

            Object FormSub1 is a FormSub
                Set Size to 13 142
                Set Location to 34 199
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub1

            Object FormSub2 is a FormSub
                Set Size to 13 142
                Set Location to 65 199
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub2

            Object Witemxtr_Wax_to is a dbFormSub
                Entry_Item Witemxtr.Wax_to
                Set Size to 13 84
                Set Location to 65 107
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                procedure onchange
                   get value item 0 to wax.wax_recr
                   find eq wax by index.2
                   if (found) set value of (formsub2(self)) to wax.wax_descr
                   else       set value of (formsub2(self)) to ''
                end_procedure
                
                
                //AB-StoreEnd

            End_Object    // Witemxtr_Wax_to

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
                Set Size to 13 142
                Set Location to 50 199
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub3

            Object Witemxen_Wtypkin_Code is a dbFormSub
                Entry_Item Witemxtr.Wtypkin_from
                Set Size to 13 84
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
                    if (found) set value of (formsub1(self)) to wtypkin.wtypkin_descr
                    else       set value of (formsub1(self)) to ''
                end_procedure
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxen_Wtypkin_Code

            Object TextBoxSub16 is a TextBoxSub
                Set Label to "âÂ§û©û Ñ†õÈ§"
                Set Location to 79 2
                Set Size to 10 47
            End_Object    // TextBoxSub16

            Object Witemxen_Wtypkin_Code is a dbFormSub
                Entry_Item Witemxtr.Wtypkin_to
                Set Size to 13 84
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
                    if (found) set value of (formsub1(self)) to wtypkin.wtypkin_descr
                    else       set value of (formsub1(self)) to ''
                end_procedure
                
                
                
                //AB-StoreEnd

            End_Object    // Witemxen_Wtypkin_Code

            Object FormSub5 is a FormSub
                Set Size to 13 142
                Set Location to 81 199
                Set Label_Col_Offset to 2

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // FormSub5


            //AB-StoreStart
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Container1

        Object dbTabDialogSubS1 is a dbTabDialogSubS
            Set Size to 153 452
            Set Location to 122 3
            Set Border_Style to Border_Normal
            Object dbTabPageSubS1 is a dbTabPageSubS
                Set Label to "dbTabPageSubS1"
                Object Witemxtd_ is a dbGridSub
                    Set Main_File to Witemxtd.File_Number
                    Set Server to (Witemxtd_DD(self))
                    Set Size to 115 449
                    Set Location to 2 1
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Witemxtd.Witemx_code
                        Entry_Item (Fnwitemx(self,witemxtd.witemx_code))
                        Entry_Item Witemxtd.Qty_from
                        Entry_Item Witemxtd.Unitprice_from
                        Entry_Item Witemxtd.Axia_from
                        Entry_Item Witemxtd.Pcfpa_from
                        Entry_Item Witemxtd.Fpa_from
                        Entry_Item Witemxtd.Total_from
                    End_Row

                    Set Form_Width    item 0 to 70
                    Set Header_Label  item 0 to "â‡õ†°Ê™ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 1 to 100
                    Set Header_Label  item 1 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
                    
                    Set Form_Width    item 2 to 40
                    Set Header_Label  item 2 to "è¶©¶´."
                    
                    Set Form_Width    item 3 to 45
                    Set Header_Label  item 3 to "í†£„ ã¶§."
                    
                    Set Form_Width    item 4 to 50
                    Set Header_Label  item 4 to "âòüò®Ê"
                    
                    Set Form_Width    item 5 to 40
                    Set Header_Label  item 5 to "% î.è.Ä"
                    
                    Set Form_Width    item 6 to 45
                    Set Header_Label  item 6 to "î.è.Ä"
                    
                    Set Form_Width    item 7 to 53
                    Set Header_Label  item 7 to "ëÁ§¶¢¶"
                    

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                    
                    Set Points Of witemxtd_   Item  2 to 1
                    set currentrowcolor to 11468799
                    set currentcellcolor to 11468799
                    set column_shadow_state item 1 to true
                    set column_shadow_state item 4 to true
                    set column_shadow_state item 6 to true
                    set column_shadow_state item 7 to true
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
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Witemxtd_

                Object Witemxtr_Qty is a dbFormSub
                    Entry_Item Witemxtr.Qty
                    Set Size to 13 44
                    Set Location to 120 166
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Qty

                Object Witemxtr_Axia is a dbFormSub
                    Entry_Item Witemxtr.Axia
                    Set Size to 13 53
                    Set Location to 120 251
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Axia

                Object Witemxtr_Fpa is a dbFormSub
                    Entry_Item Witemxtr.Fpa
                    Set Size to 13 49
                    Set Location to 120 336
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Fpa

                Object Witemxtr_Total is a dbFormSub
                    Entry_Item Witemxtr.Total
                    Set Size to 13 59
                    Set Location to 120 386
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                End_Object    // Witemxtr_Total

                Object TextBoxSub13 is a TextBoxSub
                    Set Label to "ëÁ§¶¢ò :"
                    Set Color to clNavy
                    Set TextColor to clYellow
                    Set Location to 121 113
                    Set Size to 11 38
                    Set FontWeight to 800
                End_Object    // TextBoxSub13


                //AB-StoreStart
                Set label to 'ÑÂõû ß®¶™ É†ò°Â§û©û'
                
                //AB-StoreEnd

            End_Object    // dbTabPageSubS1

        End_Object    // dbTabDialogSubS1


        //AB-StoreStart
        //Procedure Activate_View Returns Integer
        //    string srecr
        //    integer rval
        //    Forward Get MSG_Activate_View to Rval
        //    get psfindrecr to srecr
        //    if (srecr <> '') begin
        //       move srecr to witemxtr.recr
        //       find eq witemxtr by index.2
        //    end
        //    procedure_return rval
        //End_Procedure
        
        procedure request_cancel
            set psfindrecr to ''
            forward send request_cancel
        end_procedure
        
        procedure close_panel
            set psfindrecr to ''
            forward send close_panel
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V182a


    //AB-StoreStart
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
    //AB-StoreEnd

//AB/     End_Object    // prj
