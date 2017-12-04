//AB/ Project vaxio:oristikopoihsh
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vaxio:oristikopoihsh"
//AB/         Set ProjectFileName to "vaxio.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   vaxio is a dbViewSubs
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Btypkin_DD is a DataDictionary
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       TextBoxSub2 is a TextBoxSub
//       Radio2 is a RadioSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub1 is a TextBoxSub
//       frmDate is a cSyDateForm
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       chkPrinter is a CheckBoxSub
//       TextBoxSub7 is a TextBoxSub
//       TextBoxSub8 is a TextBoxSub
//     btnMessages is a ButtonSub
//     btnMessages2 is a ButtonSub
//     oOK_bn is a ButtonSub
//     Btypkin_Btypkin_Code is a dbFormSub
//     TextBoxSub9 is a TextBoxSub
//     Btypkin_Btypkin_Descr is a dbFormSub
//     TextBoxSub10 is a TextBoxSub
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub
//     fola is a CheckBoxSub
//     TextBoxSub11 is a TextBoxSub
//     frmPrivate is a FormSub
//     btnUnlockAxio is a ButtonSub
//     frmUnlockHmnia is a cSyDateForm
//     TextBoxSub12 is a TextBoxSub

// Register all objects
Register_Object Branch_DD
Register_Object Btypkin_Btypkin_Code
Register_Object Btypkin_Btypkin_Descr
Register_Object Btypkin_DD
Register_Object btnChangeXr
Register_Object btnMessages
Register_Object btnMessages2
Register_Object btnUnlockAxio
Register_Object Company_DD
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object chkPrinter
Register_Object dbGrpYear
Register_Object fola
Register_Object frmDate
Register_Object frmPrivate
Register_Object frmUnlockHmnia
Register_Object oOK_bn
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object vaxio
Register_Object Year_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Register_Object Rmhtraxio1

    Use Globals.Inc
    Use Barticl.cls
    use rmhtraxio1.rv
    use rchek.rv
    open branch
    open barticl
    Open BartlNo
    Open Cmoves

    open syscurxr
    use  v036.vw


    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use Rgroup.Sub
    Use Radio.Sub
    Use Txtbox.Sub
    Use cSyDateForm.Pkg
    Use Chkbox.Sub
    Use Button.Sub
    Use dbForm.Sub
    Use dbGroup.Sub
    Use Cmbfrm.Sub
    Use Form.Sub

    Use COMPANY.DD
    Use BRANCH.DD
    Use YEAR.DD
    Use BTYPKIN.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vaxio FOR vaxio

    Object vaxio is a dbViewSubs

        //AB-StoreTopStart
        property integer piepil public 0

        //AB-StoreTopEnd

        Set Label to "Ñ¢úöÆ¶™ - é®†©´†°¶ß¶†„©ú†™ ß®¶©‡®†§¶Á ò®ÆúÂ¶¨ Ñ†©ß®·•ú‡§"
        Set Size to 281 403
        Set Location to 5 10

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary
        End_Object    // Company_DD

        Object Branch_DD is a Branch_DataDictionary
            Set DDO_Server to (Company_DD(self))
        End_Object    // Branch_DD

        Object Year_DD is a Year_DataDictionary
            Set DDO_Server to (Branch_DD(self))
        End_Object    // Year_DD

        Object Btypkin_DD is a Btypkin_DataDictionary
        End_Object    // Btypkin_DD

        Set Main_DD to (Btypkin_DD(self))
        Set Server to (Btypkin_DD(self))

        //AB-DDOEnd

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 124 385
            Set Location to 55 7
            Object Radio1 is a RadioSub
                Set Size to 10 10
                Set Location to 10 6
                Set TextColor to clRed
            End_Object    // Radio1

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "Ñ°´Áß‡©û âò´·©´ò©û™ Ñ¢‚öÆ¶¨ èêéëóêàåóå úöö®ò≠È§"
                Set Color to 57600
                Set TextColor to clWhite
                Set Location to 10 20
                Set Size to 10 209
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub2

            Object Radio2 is a RadioSub
                Set Size to 10 10
                Set Location to 37 6
            End_Object    // Radio2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ãòù†°„ ÑâíìèóëÜ °ò† íò¨´ÊÆ®¶§û éêàëíàâéèéàÜëÜ"
                Set Color to 5869567
                Set TextColor to clYellow
                Set Location to 37 20
                Set Size to 10 209
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub3

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "Ü£/§Âò ß®¶™ úßú•ú®öò©Âò"
                Set Location to 103 21
                Set Size to 18 51
                Set Justification_Mode to jMode_Left
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub1

            Object frmDate is a cSyDateForm
                Set Size to 13 63
                Set Location to 105 75
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_Mask Item 0 to "dd/MM/yyyy"
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // frmDate

            Object TextBoxSub4 is a TextBoxSub
                Set Label to "(Ñ¢‚öÆú´ú ´†™ ãÜ é®†©´†°¶ß¶†û£‚§ú™ úöö®ò≠‚™ ©ò™ ©ú £†ò û£ú®¶£û§Âò)"
                Set Location to 20 20
                Set Size to 10 244
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "(Ñ°´¨ßÈ§ú´ú °ò† ¶®†©´†°¶ß¶†úÂ´ú ´†™ úöö®ò≠‚™ ©ò™ ©ú £†ò û£ú®¶£û§Âò)"
                Set Location to 46 20
                Set Size to 12 251
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "è®¶©¶Æ„, û õ†òõ†°ò©Âò ò¨´„ úÂ§ò† ãÜ ò§ò©´®‚Ø†£û"
                Set Color to 5869567
                Set TextColor to clRed
                Set FontSize to 12 8
                Set Location to 63 20
                Set Size to 9 182
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub6

            Object chkPrinter is a CheckBoxSub
                Set Size to 10 9
                Set Location to 86 308

                //AB-StoreStart


                //Set Visible_State to False
                //Set Enabled_State to False



                //AB-StoreEnd

            End_Object    // chkPrinter

            Object TextBoxSub7 is a TextBoxSub
                Set Label to "Éú§ üò úß†´®òß¶Á§ ·¢¢ú™ °ò´òÆ‡®„©ú†™ ©ú                   ¶®†©´†°¶ß¶†û£‚§û û£ú®¶£û§Âò"
                Set Color to 5869567
                Set FontSize to 12 8
                Set Location to 74 20
                Set Size to 17 208
                Set Justification_Mode to jMode_Left
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub7

            Object TextBoxSub8 is a TextBoxSub
                Set Label to "Éú§ ¨ß·®Æú† ú°´¨ß‡´„™ ©¨§õúõú£‚§¶™"
                Set Location to 98 240
                Set Size to 18 85
                Set Justification_Mode to jMode_Left
                Set TypeFace to "MS Sans Serif"

                //AB-StoreStart

                Set Visible_State to False
                //Set Enabled_State to False

                //AB-StoreEnd

            End_Object    // TextBoxSub8


            //AB-StoreStart

            Procedure Notify_Select_State integer inewItem integer ioldItem
                local integer licount
                Forward Send Notify_Select_State  iNewItem  iOldItem
                Set piEpil to (iNewItem+1)
            End_Procedure










            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object btnMessages is a ButtonSub
            Set Size to 14 384
            Set Location to 26 7
            Set Border_Style to Border_Normal
            Set Focus_Mode to No_Activate
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick

            End_Procedure // OnClick
            //AB-StoreEnd

        End_Object    // btnMessages

        Object btnMessages2 is a ButtonSub
            Set Size to 14 384
            Set Location to 41 7
            Set Border_Style to Border_Normal
            Set Focus_Mode to NonFocusable
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick

            End_Procedure // OnClick
            //AB-StoreEnd

        End_Object    // btnMessages2

        Object oOK_bn is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Bitmap to "Printer1.bmp"
            Set Size to 26 31
            Set Location to 188 315
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                integer iepil imet iNextNumber iError_Object_ID
                date ddate dbrdate dhmnia
                string srecr sbr  msgstr sHmera

                String sMess
                Integer iYes iNum iMhnOristikopoieis
                String lsTheAppPath

                Move 0 to iMhnOristikopoieis

                get piepil to iepil
                clear branch
                move syscurxr.company_code to branch.company_code
                move syscurxr.branch_code  to branch.branch_code
                find eq branch by index.1
                move branch.date_locked    to dbrdate
                get value of (frmdate(radiogroupsub1(self))) to ddate

                if (ddate='') begin
                    send info_box 'Ü£/§Âò °ú§„' 'è¢û®¶≠¶®Âò'
                    procedure_return
                End

                if (dbrdate>ddate)      Move 2 to iMhnOristikopoieis
                else if (dbrdate=ddate) Move 1 to iMhnOristikopoieis

                clear barticl
                move syscurxr.company_code to barticl.company_code
                move syscurxr.branch_code  to barticl.branch_code
                move syscurxr.year_year    to barticl.year_year
                move 1                     to barticl.ekkremes
                move ddate                 to barticl.barticl_hmnia
                find gt barticl by index.12
                while ((found) and (syscurxr.company_code=barticl.company_code)  and;
                                   (syscurxr.branch_code =barticl.branch_code)   and;
                                   (syscurxr.year_year=barticl.year_year)        and;
                                   (barticl.ekkremes=1)                          and;
                                   (ddate=barticl.barticl_hmnia))

                    if (barticl.barticl_ekleise<>'1') begin
                        move '' to msgstr
                        move 'è®¶©¶Æ„ ¨ß·®Æú† Ä§¶†Æ´Ê ßò®ò©´ò´†°Ê! èò®ò©´ò´†°Ê = ' to msgstr
                        append msgstr barticl.barticl_no
                        send info_box msgstr 'è¢û®¶≠¶®Âò'
                        if  (iepil=2) procedure_return
                    end
                    find gt barticl by index.12
                Loop

                clear barticl
                move syscurxr.company_code to barticl.company_code
                move syscurxr.branch_code  to barticl.branch_code
                move syscurxr.year_year    to barticl.year_year
                move 1                     to barticl.ekkremes
                move ddate                 to barticl.barticl_hmnia
                find ge barticl by index.12
                if ((found) and (syscurxr.company_code=barticl.company_code) and;
                                (syscurxr.branch_code =barticl.branch_code)  and;
                                (syscurxr.year_year=barticl.year_year)       and;
                                (barticl.ekkremes=1)                         and;
                                (ddate=barticl.barticl_hmnia)) begin


                    find lt barticl by index.12
                    if ((found) and (syscurxr.company_code=barticl.company_code)    and;
                                  (syscurxr.branch_code =barticl.branch_code)       and;
                                  (syscurxr.year_year=barticl.year_year)            and;
                                  (barticl.ekkremes=1)) begin
                        move barticl.barticl_hmnia to dhmnia
                        move '' to msgstr
                        move 'è®¶©¶Æ„ ¨ß·®Æ¶¨§ ß®¶©‡®†§‚™ úöö®ò≠‚™ ©ú û£/§Âò = ' to msgstr
                        append msgstr dhmnia
                        send info_box msgstr 'è¢û®¶≠¶®Âò'
                        if  (iepil=2) procedure_return
                     end
               End
               else if (iEpil=1) begin
                    send info_box 'Éú§ ô®‚üû°ò§ è®¶©‡®†§‚™ Ñöö®ò≠‚™' 'è¢û®¶≠¶®Âò'
                    procedure_return
               End



               Integer iAllBranch
               if  (iepil=1) begin
                    Get Checked_State Of fola to iAllBranch
                    Set piAllBranch Of (rchek(self)) to iAllBranch
                    Set pddate  of (rchek(self)) to ddate
                    Send  Runprom1report to (prom1WQLReport(rchek(Self)))
               End
               else if (iepil=2) begin
                    Integer iNoPrinterAttached
                    Integer iBtypkinCode

                    Get Field_Current_Value Of Btypkin_DD Field Btypkin.Btypkin_Code to iBtypkinCode
                    Get Checked_State Of (chkPrinter(RadioGroupSub1(Self))) to iNoPrinterAttached

                    If (iMhnOristikopoieis>0) Goto MonoEktyposh

                    Send ChangeAllFileModes DF_Filemode_ReadOnly
                    Set_Attribute DF_File_Mode Of Barticl.File_Number   To DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of BartlNo.File_Number   To DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Branch.File_Number    To DF_Filemode_Default
                    Set_Attribute DF_File_Mode Of Cmoves.File_Number    To DF_Filemode_Default

                    Integer iPerase
                    Move 0 to iPerase

                    Begin_Transaction
                        Move Error_Object_ID To iError_Object_ID

                        next_loop_barticl:

                        clear barticl
                        move syscurxr.company_code to barticl.company_code
                        move syscurxr.branch_code  to barticl.branch_code
                        move syscurxr.year_year    to barticl.year_year
                        move 1                     to barticl.ekkremes
                        move ddate                 to barticl.barticl_hmnia
                        find ge barticl by index.12
                        While ((found) and (syscurxr.company_code=barticl.company_code) and;
                                           (syscurxr.branch_code =barticl.branch_code)  and;
                                           (syscurxr.year_year=barticl.year_year)       and;
                                           (barticl.ekkremes=1)                         and;
                                           (ddate=barticl.barticl_hmnia))

                            Relate Barticl

                            // Vres epomeno arithmo oristikopoihshs
                            Clear BartlNo
                            Move SyscurXr.Company_Code  to BartlNo.Company_Code
                            Move Barticl.Btypkin_Code   to BartlNo.Btypkin_Code
                            Find Eq BartlNo By Index.1
                            Move (BartlNo.Last_No+1)    to iNextNumber
                            //Reread BartlNo
                            Move (BartlNo.Last_No+1)    to BartlNo.Last_No
                            Saverecord BartlNo
                            //Unlock
                            //reread barticl
                            move 0 to barticl.ekkremes
                            Move iNextNumber to Barticl.Arith_Orist
                            saverecord barticl
                            //unlock
                            move  barticl.barticl_recr to srecr

                            // Prosthikh 19/12/2008 Gia na prosthesoume sthn perigrafh kai ton
                            // arithmo oristikopoihshs
                            String sPar1 sPar0 ssBtypkinDescrShort sPerigrafh
                            Integer iiBarticleNO

                            Move Btypkin.Btypkin_Abr to ssBtypkinDescrShort
                            Move Barticl.Barticl_No  to iiBarticleNO

                            Clear Cmoves
                            Move srecr to Cmoves.Barticl_Recr
                            Find GE Cmoves By Index.9
                            While ((Found) And (srecr=Cmoves.Barticl_Recr))

                                Move "" to sPerigrafh
                                Move (Append(sPerigrafh,('*'+(Trim(ssBtypkinDescrShort))+'  '+ (String(iNextNumber))+;
                                                         '  èÄâ '+               (String(iiBarticleNO))+ '*'))) to sPerigrafh
                                Move (Trim(sPerigrafh)) to Cmoves.Cmoves_par

                                Saverecord Cmoves

                                Find GT Cmoves By Index.9
                            Loop

                            Move 1 to iPerase

                            goto next_loop_barticl
                            find gt barticl by index.12
                        Loop

                        If (iPerase=1) Begin
                            move ddate to branch.date_locked
                            saverecord branch
                        End

                        move (Trim(String(branch.date_locked))) to dDate
                        Move (Trim(DateToWeekDayName(dDate)))   to sHmera
                        If (dDate<>"") Set Label Of btnMessages to ("íú¢ú¨´òÂò û£ú®¶£û§Âò ¶®†©´†°¶ß¶Âû©û™ = "+sHmera+" "+String(dDate))

                        clear barticl
                        move syscurxr.company_code to barticl.company_code
                        move syscurxr.branch_code  to barticl.branch_code
                        move syscurxr.year_year    to barticl.year_year
                        move 1                     to barticl.ekkremes
                        find gt barticl by index.12
                        If ((found) and (syscurxr.company_code=barticl.company_code) and;
                                        (syscurxr.branch_code =barticl.branch_code)  and;
                                        (syscurxr.year_year=barticl.year_year)       and;
                                        (barticl.ekkremes=1)) Begin
                            Move (Trim(DateToWeekDayName(Barticl.Barticl_Hmnia))) to sHmera
                            Set Label Of btnMessages2 to ;
                                ("è®È´û û£ú®/§Âò £ú ãÜ ¶®†©´†°¶ß¶†û£‚§ú™ úöö®ò≠‚™ = "+sHmera+" "+String(Barticl.Barticl_Hmnia))
                        End
                        Else Set Label Of btnMessages2 to ""

                    End_Transaction
                    Unlock
                    Move iError_Object_ID To Error_Object_ID
                    Send ChangeAllFileModes DF_Filemode_Default


                    get value of (frmdate(radiogroupsub1(self))) to ddate


                    MonoEktyposh:
                    If (iMhnOristikopoieis=1) Begin
                        Get YesNo_Box "Ü Ü£‚®ò úÂ§ò† „õû ¶®†©´†°¶ß¶†û£‚§û.\nåò ©¨§úÆÂ©‡ £ú ´û§ ú°´Áß‡©û ?" to iYES
                        If (iYES=MBR_NO) Begin
                            Send Info_Box "Ü õ†òõ†°ò©Âò ¶¢¶°¢û®Èüû°ú" "è¢û®¶≠¶®Âò"
                            Procedure_Return
                        End
                    End
                    Else If (iMhnOristikopoieis=2) Begin
                        Send Stop_Box "Ü û£ú®¶£û§Âò õú§ £ß¶®úÂ §ò úÂ§ò† ß®¶öú§‚©´ú®û \n´û™ ´ú¢ú¨´òÂò™ ¶®†©´†°¶ß¶†û£‚§û™ û£ú®¶£û§Âò™" "Error 6000"
                        Procedure_Return
                    End

                    //----------
                    // js 20/05/2008 Tora to loop ektyposhs vlepei mono ta oristikopoihmena
                    // opote kai mporei na leitourghsei aytonoma pollaples fores thn hmera gia
                    // diaforetikous typous parastatikon axiografon (Btypkin_Code)
                    clear barticl
                    move syscurxr.company_code to barticl.company_code
                    move syscurxr.branch_code  to barticl.branch_code
                    move syscurxr.year_year    to barticl.year_year
                    move 0                     to barticl.ekkremes
                    move ddate                 to barticl.barticl_hmnia
                    find ge barticl by index.12
                    While ((found) and (syscurxr.company_code=barticl.company_code) and;
                                       (syscurxr.branch_code =barticl.branch_code)  and;
                                       (syscurxr.year_year=barticl.year_year)       and;
                                       (barticl.ekkremes=0)                         and;
                                       (ddate=barticl.barticl_hmnia))
                        if (barticl.isotimia=1) goto epomenh_ektyposh
                        move  barticl.barticl_recr to srecr
                        Set psolaRecr  of (v036(self)) to Srecr
                        If (iNoPrinterAttached<>1) Begin
                            // 20/05/2008 Ektyposh tou parastatikou axiografon mono ean den exei epilexei o xrhsths
                            // typo parastatikou sth othonh, H, an exei epilexei parastatiko kai o typos tou sygkekrimenou
                            // parastatikou pou epexergazomaste einai idios me thn epilogh ths othonhs.
                            If ((iBtypkinCode=0) Or (Barticl.Btypkin_Code=iBtypkinCode)) Send onclick to (buttonsub1(v036(self)))
                        End
                        epomenh_ektyposh:
                        find gt barticl by index.12
                    Loop
                    //----------


                    Send Info_Box "Ü õ†òõ†°ò©Âò ¶¢¶°¢û®Èüû°ú" "è¢û®¶≠¶®Âò"
                End

                Send Set_The_Values

            End_Procedure





















            //AB-StoreEnd

        End_Object    // oOK_bn

        Object Btypkin_Btypkin_Code is a dbFormSub
            Entry_Item Btypkin.Btypkin_code
            Set Size to 13 62
            Set Location to 184 149
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure Key Integer iKey
                Integer iRetVal
                Forward Send Key iKey
                If (iKey=277) Begin
                    Send Clear to Btypkin_DD
                End
            End_Procedure

            //AB-StoreEnd

        End_Object    // Btypkin_Btypkin_Code

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "èò®ò©´ò´†°Ê ß®¶™ Ñ°´Áß‡©û (ã¶§¶ ö†ò ´û§ é®†©´†°¶ß¶Âû©û °ò† úßò§ú°´Áß‡©û ¶®†©´¶°¶ß¶†û£‚§‡§) "
            Set Location to 187 17
            Set Size to 26 125
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub9

        Object Btypkin_Btypkin_Descr is a dbFormSub
            Entry_Item Btypkin.Btypkin_descr
            Set Size to 13 128
            Set Location to 199 149
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Btypkin_Btypkin_Descr

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "Ä§ ´¶ ò≠„©ú´ú °ú§Ê, üò ú°´¨ß‡ü¶Á§ Ê¢ò ´ò ßò®ò©´ò´†°· ´û™ úß†¢úö£‚§û™ û£‚®ò™"
            Set TextColor to 221
            Set Location to 216 8
            Set Size to 10 285
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub10

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

            //AB-StoreTopEnd

            Set Size to 26 517
            Set Location to 0 7
            Object otxtCompany is a TextBoxSub
                Set Label to "Ñ´ò†®úÂò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
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

                Set Size to 13 80
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
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 129
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtBranch

            Object cboBranch is a ComboFormSub
                Set Size to 13 99
                Set Location to 9 167
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
                Set FontSize to 4 0
                Set Location to 10 271
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
                Set Location to 9 302
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
                Set Size to 20 23
                Set Location to 5 361
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

        Object fola is a CheckBoxSub
            Set Size to 10 13
            Set Location to 229 7
        End_Object    // fola

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "Ñ°´Áß‡©û ßò®ò©´ò´†°È§ Ê¢‡§ ´‡§ ìß¶°ò´ò©´û£·´‡§"
            Set Location to 230 23
            Set Size to 10 213
            Set FontWeight to 800
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub11

        Object frmPrivate is a FormSub
            Set Size to 13 69
            Set Location to 247 113
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Password_State Item 0 to TRUE

            //AB-StoreStart

            Procedure OnChange
                String sStr
                Get Value Item 0 to sStr
                Set Enabled_State Of btnUnlockAxio  to (sStr="05091960")
                Set Visible_State of btnUnlockAxio  to (sStr="05091960")
                Set Enabled_State Of frmUnlockHmnia to (sStr="05091960")
                Set Visible_State of frmUnlockHmnia to (sStr="05091960")
            End_Procedure




            //AB-StoreEnd

        End_Object    // frmPrivate

        Object btnUnlockAxio is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Ä§¶†•ú"
            Set Location to 247 259
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                Date dHmnia dHmnia1
                String sLabel dDate sHmera
                Integer iNextNumber

                Get Label to sLabel
                Get Value Of frmUnlockHmnia Item 0 to dHmnia
                If (dHmnia<>"") Begin

                    clear branch
                    move syscurxr.company_code to branch.company_code
                    move syscurxr.branch_code  to branch.branch_code
                    find eq branch by index.1
                    if (Found) Begin
                        Reread Branch
                        Move branch.date_locked to dHmnia1
                        Sub 1 from dHmnia1
                        Move dHmnia1 to branch.date_locked
                        Saverecord branch
                        Unlock
                    End

                    clear barticl
                    move syscurxr.company_code to barticl.company_code
                    move syscurxr.branch_code  to barticl.branch_code
                    move syscurxr.year_year    to barticl.year_year
                    move 0                     to barticl.ekkremes
                    move dHmnia                to barticl.barticl_hmnia
                    find ge barticl by index.12
                    While ((found) and (syscurxr.company_code=barticl.company_code) and;
                                       (syscurxr.branch_code =barticl.branch_code)  and;
                                       (syscurxr.year_year=barticl.year_year)       and;
                                       (barticl.ekkremes=0)                         and;
                                       (dHmnia=barticl.barticl_hmnia))

                        Relate Barticl

                        Set Label to (String(Barticl.Recnum))

                        // Vres epomeno arithmo oristikopoihshs
                        Clear BartlNo
                        Move SyscurXr.Company_Code  to BartlNo.Company_Code
                        Move Barticl.Btypkin_Code   to BartlNo.Btypkin_Code
                        Find Eq BartlNo By Index.1
                        Move (BartlNo.Last_No-1)    to iNextNumber
                        Reread BartlNo
                        Move iNextNumber to BartlNo.Last_No
                        Saverecord BartlNo
                        Unlock

                        Reread barticl
                        move 1 to barticl.ekkremes
                        Move 0 to Barticl.Arith_Orist
                        saverecord barticl
                        unlock


                        clear barticl
                        move syscurxr.company_code to barticl.company_code
                        move syscurxr.branch_code  to barticl.branch_code
                        move syscurxr.year_year    to barticl.year_year
                        move 0                     to barticl.ekkremes
                        move dHmnia                to barticl.barticl_hmnia
                        find gt barticl by index.12
                    Loop

                    Set Label to sLabel
                    Send Info_Box "Ü ò§ò†®ú©û ¶¢¶°¢û®Èüû°ú" "è¢û®¶≠¶®Âò"

                    move (Trim(String(branch.date_locked))) to dDate
                    Move (Trim(DateToWeekDayName(dDate)))   to sHmera
                    If (dDate<>"") Set Label Of btnMessages to ("íú¢ú¨´òÂò û£ú®¶£û§Âò ¶®†©´†°¶ß¶Âû©û™ = "+sHmera+" "+String(dDate))

                    clear barticl
                    move syscurxr.company_code to barticl.company_code
                    move syscurxr.branch_code  to barticl.branch_code
                    move syscurxr.year_year    to barticl.year_year
                    move 1                     to barticl.ekkremes
                    find gt barticl by index.12
                    If ((found) and (syscurxr.company_code=barticl.company_code) and;
                                    (syscurxr.branch_code =barticl.branch_code)  and;
                                    (syscurxr.year_year=barticl.year_year)       and;
                                    (barticl.ekkremes=1)) Begin
                        Move (Trim(DateToWeekDayName(Barticl.Barticl_Hmnia))) to sHmera
                        Set Label Of btnMessages2 to ;
                            ("è®È´û û£ú®/§Âò £ú ãÜ ¶®†©´†°¶ß¶†û£‚§ú™ úöö®ò≠‚™ = "+sHmera+" "+String(Barticl.Barticl_Hmnia))
                    End
                    Else Set Label Of btnMessages2 to ""
                End
            End_Procedure // OnClick





            //AB-StoreEnd

        End_Object    // btnUnlockAxio

        Object frmUnlockHmnia is a cSyDateForm
            Set Size to 13 66
            Set Location to 247 187
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmUnlockHmnia

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "JS BD"
            Set Auto_Size_State to FALSE
            Set Location to 248 89
            Set Size to 10 21
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub12


        //AB-StoreStart

        Procedure Set_The_Values
            date dhmnia dDate
            String sHmera
            Integer rVal
            sysdate4 dhmnia
            set value of (frmdate(radiogroupsub1(self))) to dhmnia
            clear branch
            move syscurxr.company_code to branch.company_code
            move syscurxr.branch_code  to branch.branch_code
            find eq branch by index.1
            move (Trim(String(branch.date_locked))) to dDate
            Move (Trim(DateToWeekDayName(dDate)))   to sHmera
            If (dDate<>"") Set Label Of btnMessages to ("íú¢ú¨´òÂò û£ú®¶£û§Âò ¶®†©´†°¶ß¶Âû©û™ = "+sHmera+" "+String(dDate))
            else           Set Label Of btnMessages to ("Éú§ ô®‚üû°ú íú¢ú¨´òÂò û£ú®¶£û§Âò ¶®†©´†°¶ß¶Âû©û™ ")

            clear barticl
            move syscurxr.company_code to barticl.company_code
            move syscurxr.branch_code  to barticl.branch_code
            move syscurxr.year_year    to barticl.year_year
            move 1                     to barticl.ekkremes
            find gt barticl by index.12
            If ((found) and (syscurxr.company_code=barticl.company_code) and;
                            (syscurxr.branch_code =barticl.branch_code)  and;
                            (syscurxr.year_year=barticl.year_year)       and;
                            (barticl.ekkremes=1)) Begin
                Move (Trim(DateToWeekDayName(Barticl.Barticl_Hmnia))) to sHmera
                Set Label Of btnMessages2 to ;
                    ("è®È´û û£ú®/§Âò £ú ãÜ ¶®†©´†°¶ß¶†û£‚§ú™ úöö®ò≠‚™ = "+sHmera+" "+String(Barticl.Barticl_Hmnia))
                Set Value of (frmDate(RadioGroupSub1(Self))) Item 0 to Barticl.Barticl_Hmnia
            End
            Else Begin
                Set Label Of btnMessages2 to ""
                Set Value of (frmDate(RadioGroupSub1(Self))) Item 0 to ""
            End
        End_Procedure

        Procedure Activate_View Returns Integer
            Integer rVal
            Forward Get Msg_Activate_View to rVal
            Send Clear to Btypkin_DD
            Send Set_The_Values
            Set Value Of frmPrivate Item 0 to ""
            procedure_return rval
        End_Procedure











        //AB-StoreEnd

    End_Object    // vaxio


    //AB-StoreStart











    //AB-StoreEnd

//AB/     End_Object    // prj
