//AB/ Project Vsappp2:eksagogh gia Sap
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Vsappp2:eksagogh gia Sap"
//AB/         Set ProjectFileName to "Vsappp2.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Vsappp2 is a dbViewSubS
//     Clients_DD is a DataDictionary
//     Tempitel_DD is a DataDictionary
//     Tempitem_DD is a DataDictionary
//     frmapo is a FormSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio3 is a RadioSub
//       RadioSub1 is a RadioSub
//       RadioSub4 is a RadioSub
//       RadioSub5 is a RadioSub
//       RadioSub6 is a RadioSub
//       Radio7 is a RadioSub
//     btnMetasx is a ButtonSub
//     btnekt is a ButtonSub
//     frmShow is a ButtonSub
//     ButtonSub1 is a ButtonSub
//     Textbox1 is a Textbox
//     frmPath is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     btnDelete is a ButtonSub
//     oDirectoryPicker is a OLEDPDlg

// Register all objects
Register_Object ButtonSub1
Register_Object btnDelete
Register_Object btnekt
Register_Object btnMetasx
Register_Object Clients_DD
Register_Object frmapo
Register_Object frmPath
Register_Object frmShow
Register_Object oDirectoryPicker
Register_Object Radio1
Register_Object Radio3
Register_Object Radio7
Register_Object RadioGroupSub1
Register_Object RadioSub1
Register_Object RadioSub4
Register_Object RadioSub5
Register_Object RadioSub6
Register_Object Tempitel_DD
Register_Object Tempitem_DD
Register_Object TextBoxSub1
Register_Object Textbox1
Register_Object Vsappp2


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open    TmpclSap
    Open    Wapokat
    Open    Wtypkin
    Open    Wcmoves
    Open    sysfile
    Open    codemast
    Open    cities
    Use     rclsap.rv
    Open    Clients
    Use     Vwsap.vw
    Open    Tmpsap
    Open    Tmpaxio
    Open    Tmppol
    Open    Tmpapoth
    Open    Tmpanal
    Open    Cmoves
    Open    Cmovesa
    Open    Cmovesa2
    Open    Cflagkin
    Open    Company
    Open    Branch
    Open    Bmove
    Open    Particle
    Open    Pmovesl
    Open    Pmoves
    Open    Tperga
    Open    Pumps
    Open    Cars
    Open    Units
    Open    Item
    Open    Psxetika
    Open    Tmptehn
    Open    Witemxtr
    Open    Witemxtd
    Open    anprod
    use     ranal.rv
    //use     rapoth.rv
    open    itemtehn
    open    itemd
    Use Keimeno.dg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use Button.Sub
    Use Txtbox.Sub

    Use CLIENTS.DD
    Use TEMPITEL.DD
    Use Tempitem.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Vsappp2 FOR Vsappp2

    Object Vsappp2 is a dbViewSubS

        //AB-StoreTopStart
                                                                                                                                                                            
        Property Integer piLathi    Public 0
        property integer piepil     public 0
        
        Register_Object oDirectoryPicker
        
        Function Check_Afm_Local String Afm_Num Returns Integer
            Integer iii Num1 Num2
        
            Move (Trim(Afm_Num)) To Afm_Num
        
            For iii From 1 To (Length(Trim(Afm_Num)))
                If Not (Mid(Afm_Num,1,iii)) In  "0123456789" Function_Return 3
            Loop
        
            Move (Right(Afm_Num,1)) to Num2
        
            If (Length(Afm_Num)<>9) Function_Return 2
        
            Move 0 to Num1
        
            For iii From 1 to 8
                Add ((Mid(Afm_Num,1,iii)) * (2 ^ (9 - iii))) to Num1
            Loop
        
            Move (Mod(Num1,11)) to Num1
            If (Num1=10) Move 0 to Num1
        
            If (Num1=Num2)  Function_Return 0
            Else            Function_Return 1
        End_Function
        
        Function Validate_AFM String asAFM String asPel Returns Integer
            Integer rVal iCheck
            // Elegxos gia sosto AFM
            Move (Check_AFM(asAFM)) to iCheck
            If (iCheck=1) Begin
                Set piLathi to (piLathi(Self)+1)
                Write   Channel 7 'í¶ Äîã ´¶¨ '
                Write   Channel 7 (Trim(asPel)+' ')
                Write   Channel 7 'úÂ§ò† ¢ò§üò©£‚§¶'
                Writeln Channel 7
                Function_Return 0
            End
            Else If (iCheck=2) Begin
                Set piLathi to (piLathi(Self)+1)
                Write   Channel 7 'í¶ Äîã ´¶¨ '
                Write   Channel 7 (Trim(asPel)+' ')
                Writeln Channel 7 'õú§ úÂ§ò† 9 Ø„≠†¶'
                Function_Return 0
            End
            Else If (iCheck=3) Begin
                Set piLathi to (piLathi(Self)+1)
                Write   Channel 7 'í¶ Äîã ´¶¨ '
                Write   Channel 7 (Trim(asPel)+' ')
                Writeln Channel 7 'ßú®†‚Æú† £û òß¶õú°´¶Á™ Æò®ò°´„®ú™'
                Function_Return 0
            End
            Function_Return 1
        End_Function
        
        //AB-StoreTopEnd

        Set Label to "Ñ•òö‡ö„ Ä®ÆúÂ‡§ ö†ò ö‚≠¨®ú™ £ú SAP Ñß†¢ú°´†°· PP2"
        Set Size to 247 386
        Set Location to 1 9

        //AB-DDOStart

        Object Clients_DD is a Clients_DataDictionary

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // Clients_DD

        Object Tempitel_DD is a Tempitel_DataDictionary
        End_Object    // Tempitel_DD

        Object Tempitem_DD is a Tempitem_DataDictionary
        End_Object    // Tempitem_DD

        Set Main_DD to (Clients_DD(self))
        Set Server to (Clients_DD(self))

        //AB-DDOEnd

        Object frmapo is a FormSub
            Set Size to 13 61
            Set Location to 15 178
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmapo

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 105 361
            Set Location to 33 10
            Object Radio1 is a RadioSub
                Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ èú¢ò´È§"
                Set Size to 10 116
                Set Location to 9 5
                Set TextColor to clRed
            End_Object    // Radio1

            Object Radio3 is a RadioSub
                Set Label to "Ñ°´Áß‡©û Ä®ÆúÂ¶¨ Ñ†©ß®·•ú‡§ èú¢ò´È§"
                Set Size to 10 152
                Set Location to 24 5
            End_Object    // Radio3

            Object RadioSub1 is a RadioSub
                Set Label to "Ñ°´Áß‡©û Ä®ÆúÂ¶¨ è‡¢„©ú‡§ èú¢ò´È§"
                Set Size to 10 169
                Set Location to 38 5
                Set Auto_Size_State to FALSE
            End_Object    // RadioSub1

            Object RadioSub4 is a RadioSub
                Set Label to "Ñ°´Áß‡©û Ä®ÆúÂ¶¨ â†§„©ú‡§ Äß¶ü„°û™"
                Set Size to 10 169
                Set Location to 52 5
                Set Auto_Size_State to FALSE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // RadioSub4

            Object RadioSub5 is a RadioSub
                Set Label to "Ñ°´Áß‡©û Ä®ÆúÂ¶¨ íúÆ§.è®¶õ†òö®ò≠È§"
                Set Size to 10 169
                Set Location to 64 5
                Set Auto_Size_State to FALSE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // RadioSub5

            Object RadioSub6 is a RadioSub
                Set Label to "Ñ°´Áß‡©û Ä®ÆúÂ¶¨ âò´ò§ò¢È©ú‡§"
                Set Size to 10 169
                Set Location to 78 5
                Set Auto_Size_State to FALSE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // RadioSub6

            Object Radio7 is a RadioSub
                Set Label to "Ñ°´Áß‡©û  èú¢ò´È§ £ú ä·ü¶™ Ä.î.ã"
                Set Size to 12 147
                Set Location to 91 5
                Set TextColor to clRed
            End_Object    // Radio7


            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            Procedure Notify_Select_State integer inewItem integer ioldItem
                local integer licount
                Forward Send Notify_Select_State  iNewItem  iOldItem
                Set piEpil to (iNewItem+1)
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object btnMetasx is a ButtonSub

            //AB-StoreTopStart
                                                
            //AB-StoreTopEnd

            Set Label to "ãú´ò©Æû£ò´†©£Ê™ ëú èò®òööú¢Âú™ è®¶£ûüú¨´È§"
            Set Bitmap to "AGGEL.BMP"
            Set Size to 20 22
            Set Location to 158 11
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                
            Set TooltipValue to "Ñßú•ú®öò©Âò Ñöö®ò≠È§"
            
            
            Procedure OnClick
                Set Label Of frmShow to ''
                integer libpo05 listatus retval irecnum  ibpoid ierr  iok iYes
                string msgstr wrecr edate mdate ename mname scodem srecr sdescr  spar
                date dapo
                integer iepil
                get piepil to iepil
                get value of frmapo to dapo
                indicate err false
                If (dApo='') Begin
                    Send Info_Box 'Ü û£ú®¶£û§Âò Ñöö®ò≠È§ úÂ§ò† °ú§„' 'è¢û®¶≠¶®Âò'
                    Send Activate to frmApo
                    Procedure_Return
                End
            
                Get YesNo_Box 'Ä®ÆÂùú† û Ñßú•ú®öò©Âò Ñöö®ò≠È§ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
                If (RetVal =MBR_yes) begin
                    Zerofile Tmpanal
                    begin_transaction
                        Send enhmerose_anal
                    end_transaction
                end
                If (RetVal=MBR_NO) Begin
                    send info_box 'É†òõ†°ò©Âò Ä°¨®Èüû°ú òß¶ ´¶§ ï®„©´û' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            
                if ((not(err)) And (RetVal=MBR_YES)) begin
                    Move "Ñ§û£‚®‡©û Ä®ÆúÂ‡§ ¶¢¶°¢û®Èüû°ú"  to MsgStr
                    Send Info_Box MsgStr
                end
                else begin
                     Move "Ü õ†òõ†°ò©Âò õú§ ¶¢¶°¢û®Èüû°ú ©‡©´·" to MsgStr
                     Send Info_Box MsgStr
                end
            End_Procedure // OnClick
            
            //Procedure enhmerose_apoth
            //     string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo spinak
            //     string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
            //     STRING sLetter sEnglish sGreek sid
            //
            //     integer Imet Ikod Ino iLen iFirst iRecnum IINT ipos isygk
            //     number  ntot nfpa nqty
            //     date dapo ddate dhdate
            //     Move 'ABCDEFGHIJKLMNOPRSTUVWXYZ' to sEnglish
            //     Move 'ÄÅñÉÑîÇÜàçâäãåéèêëíáóëïìÖ' to sGreek
            //     get value of frmapo to dapo
            //     move Sysfile.Client_Digits to Ikod
            //     add 3 to ikod // gia na paroyme kai to AX ektos yomea
            //     clear Company
            //     move syscurxr.company_code to Company.company_code
            //     find eq company by index.1
            //     move Company.company_c_code0 to stomeas
            //     clear Wcmoves
            //     find gt wcmoves by 16
            //     while ((found) and (wcmoves.sap_hmnia=''))
            //        if  (wcmoves.wcmove_hmnia  > dapo);
            //            goto nextwcmoves
            //        if (syscurxr.company_code<>Wcmoves.company_code);
            //            goto nextWcmoves
            //        relate Wcmoves
            //        if (Wcmoves.module_from<>'01');
            //            goto nextWcmoves
            //        if (Wapokat.OXIMM1='1') BEGIN
            //            goto nextWcmoves
            //        END
            //        ELSE BEGIN
            //            if (Wapokat.enhm_sap<>'1');
            //                goto nextWcmoves
            //        end
            //        if ((Wcmoves.wcmove_qty_eisa=0) and (Wcmoves.wcmove_qty_exa=0));
            //            goto nextWcmoves
            //        if (Wtypkin.wtypkin_anti='');
            //            goto nextWcmoves
            //        move (trim(Wcmoves.client_id))          to scode
            //        move Wcmoves.Wcmove_recr                to srecr
            //        clear branch
            //        move wcmoves.company_code to branch.company_code
            //        move wcmoves.branch_code  to branch.branch_code
            //        find eq branch by index.1
            //        move branch.egkatastash        to segkatastash
            //        clear Tmpapoth
            //        move wtypkin.Wtypkin_anti               to Tmpapoth.type
            //        move 'MM1'                              to Tmpapoth.onoma
            //        move '01'                               to Tmpapoth.typos
            //        move segkatastash                       to Tmpapoth.egkatastash
            //        clear pmoves
            //        move wcmoves.partl_recr to pmoves.pms_recr
            //        find eq pmoves by index.2
            //        move pmoves.partl_no                    to Tmpapoth.arithmos
            //        MOVE '' TO SPINAK
            //        Clear Cars
            //        move (trim(pmoves.car_id))  to Cars.car_id
            //        Find eq Cars by index.2
            //        Move (trim(Cars.Car_license)) to spinak
            //        For iInt From 1 to (Length(spinak))
            //            Move (Mid(spinak,1,iInt)) to sLetter
            //            If (sGREEK Contains sLetter) Begin
            //                 Move (Pos(sLetter,sgreek)) to iPos
            //                 Move (Replaces(sLetter,spinak,(Mid(senglish,1,iPos)))) to spinak
            //            End
            //        Loop
            //
            //        move spinak                             to Tmpapoth.pinakida
            //        move Wcmoves.Wcmove_hmnia               to Tmpapoth.hmnia
            //        move wtypkin.Wtypkin_anti               to Tmpapoth.type
            //
            //        if (Wtypkin.wtypkin_anti='');
            //            goto nextWcmoves
            //        relate pmoves
            //        if (particle.skopos_diakin='2');
            //            move 'Z17'                          to Tmpapoth.type
            //        if (particle.skopos_diakin='3');
            //            move 'Z15'                          to Tmpapoth.type
            //        if (clients.anal='1');
            //            move 1 to isygk
            //        else;
            //            move 0 to isygk
            //        Move (Right(scode, Ikod))               To scode
            //        move (replaces('.',scode,'')) to scode
            //        insert '01' in scode at 1
            //        if (Sysfile.Client_Digits<6);
            //            insert '0' in scode at 5
            //        if (wcmoves.client_id='');
            //            move '' to scode
            //        if (trim(scode)<>'') begin
            //            if (isygk=1) begin
            //                left scode to sid 4
            //                append sid '999999'
            //                move (trim(sid)) to scode
            //            end
            //        end
            //        move (trim(scode))                      to Tmpapoth.code
            //        move 'B'                                to sitem
            //        if (wcmoves.wcmove_status_e=1);
            //            move 'G'                            to sti
            //        else;
            //            move wapokat.sap_descr              to sti
            //        insert sti in sitem at 2
            //        insert 'O' in sitem at 3
            //        insert item.sap in sitem at 4
            //        move sitem                              to Tmpapoth.item
            //        if (wcmoves.wcmove_qty_eisa<> 0);
            //            move (ABS(wcmoves.wcmove_qty_eisa))        to Tmpapoth.qty
            //        else;
            //            move (ABS(wcmoves.wcmove_qty_exa))         to Tmpapoth.qty
            //        move UNITS.UNITS_DESCR                  to Tmpapoth.monada
            //        saverecord Tmpapoth
            //        add 1 to ino
            //        add 1 to Imet
            //        nextWcmoves:
            //        move (trim(wcmoves.wcmove_par)) to sno
            //        Set Label Of frmShow to ('â†§„©ú†™ Äß¶ü„°û™' + '-' + String(iMet)+'-'+String(sno))
            //        find gt Wcmoves by 16
            //     Loop
            //     move 0                                  to Tmpapoth.recnum
            //     move ''                                 to Tmpapoth.hmnia
            //     move '90'                               to Tmpapoth.typos
            //     move '9999999999'                       to Tmpapoth.arithmos
            //     move ''                                 to tmpapoth.type
            //     move imet                               to Tmpapoth.qty
            //     move ''                                 to Tmpapoth.code
            //     move ''                                 to Tmpapoth.item
            //     move ''                                 to Tmpapoth.egkatastash
            //     move ''                                 to Tmpapoth.monada
            //     move ''                                 to Tmpapoth.paralabh
            //     saverecord Tmpapoth
            ////     move 0 to ifirst
            ////     move 0 to nqty
            ////     clear Tmpapoth
            ////     find gt tmpapoth by index.3
            ////     while ((found) and (tmpapoth.typos='01'))
            ////        add 1 to ifirst
            ////        if (ifirst=1) begin
            ////            move tmpapoth.egkatastash to shegkatastash
            ////            move tmpapoth.type        to shtype
            ////            move tmpapoth.hmnia       to dhdate
            ////            move tmpapoth.item        to shitem
            ////            move tmpapoth.monada      to sstr
            ////        end
            ////
            ////        move tmpapoth.recnum to irecnum
            ////        if ((tmpapoth.egkatastash<>shegkatastash)or (tmpapoth.hmnia<>dhdate) or (tmpapoth.type<>shtype) or;
            ////           (tmpapoth.item<>shitem)) begin
            ////
            ////                move 0                                  to Tmpapoth.recnum
            ////                move '91'                               to Tmpapoth.typos
            ////                move '9999999999'                       to Tmpapoth.arithmos
            ////                move shtype                             to tmpapoth.type
            ////                move nqty                               to Tmpapoth.qty
            ////                move ''                                 to Tmpapoth.code
            ////                move dhdate                             to tmpapoth.hmnia
            ////                move shitem                             to Tmpapoth.item
            ////                move shegkatastash                      to Tmpapoth.egkatastash
            ////                move sstr                               to Tmpapoth.monada
            ////                move ''                                 to Tmpapoth.paralabh
            ////                saverecord tmpapoth
            ////                move 0 to nqty
            ////
            ////                clear tmpapoth
            ////                move irecnum to tmpapoth.recnum
            ////                find eq tmpapoth.recnum
            ////                move tmpapoth.egkatastash to shegkatastash
            ////                move tmpapoth.type        to shtype
            ////                move tmpapoth.item        to shitem
            ////                move tmpapoth.hmnia       to dhdate
            ////                move tmpapoth.monada      to sstr
            ////                add  tmpapoth.qty to nqty
            ////           end
            ////           else  add tmpapoth.qty              to nqty
            ////        find gt tmpapoth by index.3
            ////     Loop
            ////     if (nqty<>0) begin
            ////        move 0                                  to Tmpapoth.recnum
            ////        move '91'                               to Tmpapoth.typos
            ////        move '9999999999'                       to Tmpapoth.arithmos
            ////        move shtype                             to tmpapoth.type
            ////        move nqty                               to Tmpapoth.qty
            ////        move ''                                 to Tmpapoth.code
            ////        move shitem                             to Tmpapoth.item
            ////        move dhdate                             to tmpapoth.hmnia
            ////        move shegkatastash                      to Tmpapoth.egkatastash
            ////        move sstr                               to Tmpapoth.monada
            ////        move ''                                 to Tmpapoth.paralabh
            ////        saverecord tmpapoth
            ////        move 0 to nqty
            ////     end
            //       Send StartReport to Rapoth
            //End_Procedure
            
            //Procedure enhmerose_itemtehn
            //     string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo
            //     string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
            //     integer Imet Ikod Ino iLen iFirst iRecnum
            //     number  ntot nfpa nqty
            //     date dapo
            //     get value of frmapo to dapo
            //     clear Company
            //     move syscurxr.company_code to Company.company_code
            //     find eq company by index.1
            //     move Company.company_c_code0 to stomeas
            //     clear itemtehn
            //     find gt itemtehn by index.4
            //     while ((found) and (itemtehn.sap_hmnia=''))
            //        if  (itemtehn.hmnia  > dapo);
            //            goto nextitemtehn
            //        if (syscurxr.company_code<>itemtehn.company);
            //            goto nextitemtehn
            //        relate itemtehn
            //        clear branch
            //        move itemtehn.company to branch.company_code
            //        move itemtehn.branch  to branch.branch_code
            //        find eq branch by index.1
            //        move branch.egkatastash        to segkatastash
            //        clear Tmptehn
            //        move 'PP1'                              to Tmptehn.onoma
            //        move '09'                               to Tmptehn.typos
            //        move segkatastash                       to Tmptehn.egkatastash
            //        move itemtehn.hmnia                     to Tmptehn.hmnia
            //        move 'B'                                to sitem
            //        clear wapokat
            //        move item.wapokat_code to wapokat.wapokat_code
            //        find eq wapokat by index.1
            //        move wapokat.sap_descr                  to sti
            //        insert sti in sitem at 2
            //        insert 'O' in sitem at 3
            //        insert itemtehn.item_code in sitem at 4
            //        move sitem                              to Tmptehn.item
            //        move itemtehn.code                      to tmptehn.prodiagrafh
            //        move UNITS.UNITS_DESCR                  to Tmptehn.mm
            //        move '1'                                to tmptehn.type
            //        clear itemd
            //        move itemtehn.recr to srecr
            //        move 0 to Ino
            //        move srecr to itemd.itemtehn_recr
            //        find gt itemd by index.5
            //        while ((found) and (itemd.itemtehn_recr=srecr))
            //            add 1 to ifirst
            //            add 1 to ino
            //            if (ino>1) begin
            //                move 0 to tmptehn.recnum
            //                saverecord tmptehn
            //            end
            //            clear iteml
            //            move itemd.itemd_code to iteml.item_code
            //            find eq iteml by index.5
            //            clear wapokat
            //            move iteml.wapokat_code to wapokat.wapokat_code
            //            find eq wapokat by index.1
            //            clear units
            //            move iteml.units_code to units.units_code
            //            find eq units by index.1
            //            move 'B'                                to sitem
            //            move wapokat.sap_descr                  to sti
            //            insert sti in sitem at 2
            //            insert 'O' in sitem at 3
            //            insert itemd.itemd_code in sitem at 4
            //            move sitem                              to Tmptehn.itemd
            //            move units.units_descr                  to Tmptehn.mmitemd
            //            move itemd.itemd_qty                    to Tmptehn.qty
            //            move ino                                to tmptehn.aa
            //            move itemd.sap_aa  to sno
            //            move sno                                to Tmptehn.index
            //            saverecord Tmptehn
            //            move (trim(itemd.itemtehn_code)) to sno
            //            move itemd.recnum to imet
            //            Set Label Of frmShow to ('íúÆ§.è®¶õ†òö®ò≠‚™' + '-' + String(iMet)+'-'+String(sno))
            //            find gt itemd by index.5
            //        Loop
            //        nextitemtehn:
            //        move (trim(itemd.itemtehn_code)) to sno
            //        move itemd.recnum to imet
            //        Set Label Of frmShow to ('íúÆ§.è®¶õ†òö®ò≠‚™' + '-' + String(iMet)+'-'+String(sno))
            //        find gt itemtehn by index.4
            //    Loop
            //    move 0                                  to Tmptehn.recnum
            //    move '90'                               to Tmptehn.typos
            //    move ifirst                             to Tmptehn.type
            //    move ''                                 to Tmptehn.item
            //    move ''                                 to Tmptehn.prodiagrafh
            //    move ''                                 to Tmptehn.mm
            //    move ''                                 to Tmptehn.egkatastash
            //    move ''                                 to Tmptehn.itemd
            //    move 0                                  to Tmptehn.aa
            //    move ''                                 to Tmptehn.mmitemd
            //    move 0                                  to Tmptehn.index
            //    move 0                                  to Tmptehn.qty
            //    saverecord Tmptehn
            //End_Procedure
            //
            Procedure enhmerose_anal
                 string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo snext
                 string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
                 integer Imet Ikod Ino itot iFirst iRecnum
                 number  ntot nfpa nqty
                 date dapo
                 get value of frmapo to dapo
                 clear Company
                 move syscurxr.company_code to Company.company_code
                 find eq company by index.1
                 move Company.company_c_code0 to stomeas
                 clear witemxtr
                 find gt witemxtr by index.4
                 while ((found) and (witemxtr.sap_hmnia=''))
                    if  (witemxtr.hmnia  > dapo);
                        goto nextanal1
                    if (syscurxr.company_code<>witemxtr.company_code);
                        goto nextanal1
                    move witemxtr.recr to srecr
                    move '' to snext
                    clear witemxtd
                    move srecr to witemxtd.witemxtr_recr
                    find gt witemxtd by index.1
                    while ((found) and (witemxtd.witemxtr_recr=srecr))
                        clear branch
                        move witemxtr.company_code to branch.company_code
                        move witemxtr.branch_code  to branch.branch_code
                        find eq branch by index.1
                        move branch.egkatastash                 to segkatastash
                        if (snext<>witemxtd.witemx_code) begin
                            move witemxtd.witemx_code to snext
                            clear tmpanal
                            move 'PP2'                              to Tmpanal.onoma
                            move '90'                               to Tmpanal.typos
                            move segkatastash                       to Tmpanal.egkatastash
                            move witemxtd.qty_from                  to tmpanal.qty
                            move 'B'                                to sitem
                            move witemxtd.witemx_code               to shitem
                            clear iteml
                            move shitem to iteml.item_code
                            find eq iteml by index.5
                            clear wapokat
                            move iteml.wapokat_code to wapokat.wapokat_code
                            find eq wapokat by index.1
                            move wapokat.sap_descr                  to sti
                            insert sti in sitem at 2
                            insert 'O' in sitem at 3
                            insert shitem in sitem at 4
            
                            move SITEM               to Tmpanal.item
                            move witemxtr.hmnia                     to Tmpanal.hmnia
                            saverecord tmpanal
                        end
                        else begin
                            clear tmpanal
                            move '90' to tmpanal.typos
                            move segkatastash to tmpanal.egkatastash
                            move 'B'                                to sitem
                            move snext               to shitem
                            clear iteml
                            move shitem to iteml.item_code
                            find eq iteml by index.5
                            relate iteml
                            move iteml.wapokat_code to wapokat.wapokat_code
                            find eq wapokat by index.1
                            move wapokat.sap_descr                  to sti
                            insert sti in sitem at 2
                            insert 'O' in sitem at 3
                            insert shitem in sitem at 4
                            move SITEM      to Tmpanal.item
                            find gt tmpanal by index.3
                            while ((found) and (tmpanal.typos='90') and;
                                 (tmpanal.egkatastash=segkatastash) and;
                                 (tmpanal.item=sitem))
            
                                add witemxtd.qty_from to tmpanal.qty
                                saverecord tmpanal
                                find gt tmpanal by index.3
                            Loop
                        end
                        clear Tmpanal
                        move 'PP2'                              to Tmpanal.onoma
                        move '09'                               to Tmpanal.typos
                        move segkatastash                       to Tmpanal.egkatastash
                        move witemxtr.hmnia                     to Tmpanal.hmnia
                        move 'B'                                to sitem
                        move witemxtd.witemx_code               to shitem
                        clear iteml
                        move shitem to iteml.item_code
                        find eq iteml by index.5
                        clear units
                        move iteml.units_code to units.units_code
                        find eq units by index.1
                        move UNITS.UNITS_DESCR                  to Tmpanal.mm
                        clear wapokat
                        move iteml.wapokat_code to wapokat.wapokat_code
                        find eq wapokat by index.1
                        move wapokat.sap_descr                  to sti
                        insert sti in sitem at 2
                        insert 'O' in sitem at 3
                        insert shitem in sitem at 4
                        move 0 to Ino
                        move sitem                              to Tmpanal.item
                        clear anprod
                        move srecr                      to anprod.entolh_recr
                        move witemxtd.witemx_code       to anprod.anprod_form
                        move witemxtd.fpa_from          to anprod.anprod_cartp
                        find gt anprod by index.4
                        while ((found) and (anprod.entolh_recr=srecr) and;
                              (witemxtd.witemx_code=anprod.anprod_form) and;
                              (witemxtd.fpa_from=anprod.anprod_cartp))
                            if (sperioxh<>anprod.anprod_itemtn) begin
                                move 0 to ino
                                move 0 to ikod
                                move anprod.anprod_itemtn to sperioxh
                                move 0 to tmpanal.recnum
                                saverecord tmpanal
                             end
                            add 1 to ifirst
                            add 1 to ino
                            if ((ino>1) and (ikod=0)) begin
                                move 0 to tmpanal.recnum
                                saverecord tmpanal
                            end
                            move anprod.anprod_itemtn to Tmpanal.prodiagrafh
                            clear iteml
                            move anprod.anprod_item to iteml.item_code
                            find eq iteml by index.5
                            clear wapokat
                            move iteml.wapokat_code to wapokat.wapokat_code
                            find eq wapokat by index.1
                            clear units
                            move iteml.units_code to units.units_code
                            find eq units by index.1
                            move 'B'                                to sitem
                            move wapokat.sap_descr                  to sti
                            insert sti in sitem at 2
                            insert 'O' in sitem at 3
                            insert anprod.anprod_item in sitem at 4
                            move sitem                              to Tmpanal.itemd
                            move units.units_descr                  to Tmpanal.mmitemd
                            move witemxtd.qty_from                  to Tmpanal.qty
                            move anprod.anprod_qty                  to tmpanal.posoths
                            move anprod.anprod_cartp                to Tmpanal.trmetaf
                            move ino                                to tmpanal.aa
            
                            move anprod.entolh_recr                 to Tmpanal.product
                            saverecord Tmpanal
                            move (trim(anprod.anprod_item)) to sno
                            move itemd.recnum to imet
                            Set Label Of frmShow to ('Ü£ú®„©†ú™ âò´ò§ò¢È©ú†™' + '-' + String(iMet)+'-'+String(sno))
                            find gt anprod by index.4
                        Loop
                        find gt witemxtd by index.1
                    Loop
                    nextanal1:
                    move (trim(anprod.anprod_item)) to sno
                    move anprod.recnum to imet
                    Set Label Of frmShow to ('Ü£ú®„©†ú™ âò´ò§ò¢È©ú†™' + '-' + String(iMet)+'-'+String(sno))
                    find gt witemxtr by index.4
                 Loop
                 Send StartReport to Ranal
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnMetasx

        Object btnekt is a ButtonSub
            Set Label to "ButtonSub1"
            Set Bitmap to "printer.bmp"
            Set Size to 21 24
            Set Location to 192 10
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "Ñ°´Áß‡©û °†§„©ú‡§ ß®¶™ Ñ¢úöÆ¶ ! "
            Procedure OnClick
                date dapo
                get value of frmapo to dapo
                set pddate of rclsap to dapo
                set piti of rclsap to (piepil(self))
                Send runprom1Report to (prom1WQLReport(rclsap(Self)))
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // btnekt

        Object frmShow is a ButtonSub
            Set Size to 14 267
            Set Location to 146 57
            Set Border_Style to Border_StaticEdge
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
            
            End_Procedure // OnClick
            //AB-StoreEnd

        End_Object    // frmShow

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            Property String psPath Public ''
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "AutoCopen.bmp"
            Set Size to 21 24
            Set Location to 208 349
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                
            Set TooltipValue to 'Ñ•òö‡ö„ ©´¶ ò®ÆúÂ¶'
            
            // Grapsimo ton records
            // na arxeio xexoristo ana hmera
            // me onoma xxxxzzzyyyymmhh opou xxxx=Branch.code zzz onoma arxeioy
            // yyyymmhh etos-mhnas-mera eggrafon
            Procedure Write_Record_Pel
                Number  nPoso
                Integer iDecs iLen iInt Imet Inum
                Integer rVal iMhnas iEtos iHmera
                String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
                String sstr
                Date    dapo deos dhmnia
                Get value of frmapo item 0 to dapo
             //   Get value of frmeos item 0 to deos
            
                Set Label Of frmShow to ''
                clear Company
                move syscurxr.company_code to Company.company_code
                find eq company by index.1
                move Company.company_c_code0 to stomeas
            
            //    move syscurxr.branch_code       to sbranch
                Move (TheDaySegment  (dapo))    to iHmera
                Move (TheMonthSegment(dapo))    to iMhnas
                Move (TheYearSegment(dapo))     to ietos
                Move iHmera                     to sHmera
                Move iMhnas                     to sMhnas
                Move iEtos                      to sEtos
                If (Length(sHmera)=1) Insert '0' in sHmera at 1
                If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
            //    Move ('C:\'+Trim(stomeas)+'FI1'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                Move (psPath(Self)+Trim(stomeas)+'FI1'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                EraseFile sFileName
                Append_Output Channel 9 sFileName
                clear tmpclsap
                find gt tmpclsap.recnum
                while (found)
                    Write   Channel 9 (Pad(Trim(tmpclsap.onoma)                ,  3))
                    move tmpclsap.typos to sposo
                    Write   Channel 9 (Pad(sposo                               ,  2))
                    Write   Channel 9 (Pad(tmpclsap.etairia                    ,  4))
                    Write   Channel 9 (Pad(tmpclsap.branch_site                ,  4))
                    Write   Channel 9 (Pad(tmpclsap.type                       ,  1))
                    Write   Channel 9 (Pad(tmpclsap.code                       , 10))
                    move    tmpclsap.code to sid
                    move syscurxr.company_code to scomp
                    insert '.' in scomp at 3
                    Write   Channel 9 (Pad(sstr                                , 10))
                    Write   Channel 9 (Pad(tmpclsap.group                      ,  4))
                    Write   Channel 9 (Pad(tmpclsap.endoomil                    , 6))
                    Write   Channel 9 (Pad(tmpclsap.anal                        , 1))
                    Write   Channel 9 (Pad(tmpclsap.category                    , 2))
                    Write   Channel 9 (Pad(tmpclsap.afm                         ,11))
                    Write   Channel 9 (Pad(ToAnsi(tmpclsap.name)                ,40))
                    Write   Channel 9 (Pad(ToAnsi(tmpclsap.occup)               ,40))
                    Write   Channel 9 (Pad(ToAnsi(tmpclsap.city)                ,40))
                    Write   Channel 9 (Pad(ToAnsi(tmpclsap.address)             ,60))
                    Move (trim(tmpclsap.add_no))            to sPoso
                    Write   Channel 9 (Pad(ToAnsi(sPoso)                        ,03))
                    Move (trim(tmpclsap.zipcode))            to sPoso
                    if ((sposo='') and (tmpclsap.typos='01'));
                        move '00000' to sposo
                    Write   Channel 9 (Pad(sPoso                                ,10))
                    Write   Channel 9 (Pad(ToAnsi(tmpclsap.doy)                 ,40))
                    Move (trim(tmpclsap.telfax))            to sPoso
                    Move (Trim(sPoso))                      to sPoso
                    Move (Length(sPoso))                    to iLen
                    For iInt From 1 to (14-iLen)
                        Move (Insert(" ", sPoso,1))         to sPoso
                    Loop
                    Write   Channel 9 (Pad(ToAnsi(sPoso)                        ,14))
                    Write   Channel 9 (Pad(tmpclsap.country                     , 2))
                    Write   Channel 9 (Pad(tmpclsap.language                    , 2))
                    Writeln Channel 9
                    add 1 to imet
                    Set Label Of frmShow to (String(iMet)+'-'+String(tmpclsap.code))
                    find gt tmpclsap.recnum
                Loop
                Close_Output Channel 9
            End_Procedure
            
            
            // Grapsimo ton eisprakseon
            Procedure Write_Record_Axio
                Number  nPoso
                Integer iDecs iLen iInt Imet ipos idiafora
                Integer rVal iMhnas iEtos iHmera
                string sperioxh
                String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
                Date    dapo
                get value of frmapo to dapo
                clear Company
                move syscurxr.company_code to Company.company_code
                find eq company by index.1
                move Company.company_c_code0 to stomeas
                Move (TheDaySegment  (dapo))  to iHmera
                Move (TheMonthSegment(dapo))  to iMhnas
                Move (TheYearSegment(dapo))   to ietos
                Move iHmera                     to sHmera
                Move iMhnas                     to sMhnas
                Move iEtos                      to sEtos
                If (Length(sHmera)=1) Insert '0' in sHmera at 1
                If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
                Move (psPath(Self)+Trim(stomeas)+'FI3'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                EraseFile sFileName
                Append_Output Channel 8 sFileName
                clear TmpAxio
                find gt TmpAxio.recnum
                while (found)
                    Write   Channel 8 (Pad(Trim(TmpAxio.onoma)                 ,  3))
                    Write   Channel 8 (Pad(Trim(TmpAxio.typos)                 ,  2))
                    Write   Channel 8 (Pad(tmpaxio.etairia                     ,  4))
                    MOVE tmpaxio.typos to sposo
                    if ((sposo='90') or (sposo='91') or (sposo='92') or (sposo='93') or (sposo='94')) begin
                         move stomeas to sposo
                         Write   Channel 8 (Pad(trim(sposo)                    ,  4))
                         move '' to sposo
                         Write   Channel 8 (Pad(trim(sposo)                    ,  4))
                    end
                    else begin
                        move tmpaxio.perioxh to sposo
                        Write   Channel 8 (Pad(trim(sposo)                     ,  4))
                        move tmpaxio.egkatastash to sposo
                        Write   Channel 8 (Pad(trim(sposo)                     ,  4))
                    end
                    Write   Channel 8 (Pad(trim(tmpaxio.type)                  ,  4))
            
                    Move TmpAxio.arithmos                 to sPoso
                    Move (Trim(sPoso))                    to sPoso
                    Move (Length(sPoso))                  to iLen
                    For iInt From 1 to (10-iLen)
                        Move (Insert(" ", sPoso,1))       to sPoso
                    Loop
            
                    Write   Channel 8 (Pad(sposo                               , 10))
                    Move Tmpaxio.Hmnia         to sHmnia
                    Move (Replaces('/',sHmnia,''))  to sHmnia
                    Write   Channel 8 (Pad(sHmnia                               , 8))
                    Write   Channel 8 (Pad(tmpaxio.perigrafh                    , 1))
                    Move (ROUnD_number(tmpaxio.axia,2))     to nPoso
                    move nposo to sposo
                    Move (Trim(sPoso))                      to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)       to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.00'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume ena '0' sto telos
                    If (iDiafora=1) Move (Append(sPoso,'0')) to sPoso
                    End
                // 24/03/2004 allagh. Ta dekadika einai panta ta 2 teleytaia
                // psifia ara h teleia feygei
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                    to iLen
                    For iInt From 1 to (16-iLen)
                        Move (Insert(" ", sPoso,1))         to sPoso
                    Loop
            
            
                    Write   Channel 8 (Pad(sPoso                                ,16))
                    Write   Channel 8 (Pad(tmpaxio.code                         ,10))
                    Write   Channel 8 (Pad(ToAnsi(tmpaxio.aitiol)               ,50))
                    Move Tmpaxio.lhxh     to sHmnia
                    Move (Replaces('/',sHmnia,''))  to sHmnia
                    Write   Channel 8 (Pad(sHmnia                               , 8))
                    Write   Channel 8 (Pad(trim(tmpaxio.bank)                   ,15))
                    move '' to sid
                    Write   Channel 8 (Pad(sid                                  ,25))
                    Write   Channel 8 (Pad(ToAnsi(tmpaxio.apodekths)            ,25))
                    Write   Channel 8 (Pad(trim(tmpaxio.noepit)                 ,18))
                    Write   Channel 8 (Pad(tmpaxio.xora                         , 2))
                    Write   Channel 8 (Pad(tmpaxio.idioy                        , 1))
                    Write   Channel 8 (Pad(tmpaxio.eparxia                      , 1))
                    Write   Channel 8 (Pad(trim(tmpaxio.nomisma)                , 3))
                    Write   Channel 8 (Pad(trim(tmpaxio.anal)                   , 2))
                    Writeln Channel 8
                    add 1 to imet
                    Set Label Of frmShow to (String(iMet)+'-'+String(tmpaxio.code))
                    find gt Tmpaxio.recnum
                Loop
                Close_Output Channel 8
            End_Procedure
            
            Procedure Write_record_polhseon
                Number  nPoso
                Integer iDecs iLen iInt Imet ipos idiafora
                Integer rVal iMhnas iEtos iHmera
                String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
                string skeno senter stext sstr
                Date    dapo
                get value of frmapo to dapo
                clear Company
                move syscurxr.company_code to Company.company_code
                find eq company by index.1
                move Company.company_c_code0 to stomeas
                Move (TheDaySegment  (dapo))  to iHmera
                Move (TheMonthSegment(dapo))  to iMhnas
                Move (TheYearSegment(dapo))   to ietos
                Move iHmera                   to sHmera
                Move iMhnas                   to sMhnas
                Move iEtos                    to sEtos
                If (Length(sHmera)=1) Insert '0' in sHmera at 1
                If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
                Move (psPath(Self)+Trim(stomeas)+'FI2'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                EraseFile sFileName
                Append_Output Channel 7 sFileName
                clear TmpPol
                find gt Tmppol by index.1
                while (found)
                    Write   Channel 7 (Pad(Trim(Tmppol.onoma)                 ,  3))
                    Write   Channel 7 (Pad(Trim(Tmppol.typos)                 ,  2))
                    Write   Channel 7 (Pad(tmppol.etairia                     ,  4))
                    Write   Channel 7 (Pad(trim(tmppol.perioxh)               ,  4))
                    if (tmppol.type ='9999');
                       Write   Channel 7 (Pad(trim(skeno)                     ,  4))
                    else;
                       Write   Channel 7 (Pad(trim(tmppol.egkatastash)        ,  4))
                    Write   Channel 7 (Pad(trim(tmppol.type)                  ,  4))
                    Move Tmppol.arithmos                 to sPoso
                    Move (Trim(sPoso))                   to sPoso
                    Move (Length(sPoso))                 to iLen
                    For iInt From 1 to (10-iLen)
                        Move (Insert(" ", sPoso,1))       to sPoso
                    Loop
            
                    Write   Channel 7 (Pad(sposo                               , 10))
                    Move Tmppol.Hmnia         to sHmnia
                    Move (Replaces('/',sHmnia,''))  to sHmnia
                    Write   Channel 7 (Pad(sHmnia                               , 8))
                    Write   Channel 7 (Pad(trim(tmppol.kodikos)                 , 5))
            
            
                    //**************************************
                    Move (ROUnD_number(tmppol.axia,2))     to nPoso
                    move nposo to sposo
                    Move (Trim(sPoso))                      to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)       to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.00'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume ena '0' sto telos
                    If (iDiafora=1) Move (Append(sPoso,'0')) to sPoso
                    End
                // 24/03/2004 allagh. Ta dekadika einai panta ta 2 teleytaia
                // psifia ara h teleia feygei
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                    to iLen
                    For iInt From 1 to (16-iLen)
                        Move (Insert(" ", sPoso,1))         to sPoso
                    Loop
                    //**************************************
                    if (tmppol.typos='06') move '' to sposo
                    Write   Channel 7 (Pad(sPoso                                ,16))
                    Write   Channel 7 (Pad(tmppol.code                          ,10))
                    Write   Channel 7 (Pad(tmppol.kodikos2                      , 2))
                    Write   Channel 7 (Pad(ToAnsi(tmppol.apoth)                 ,18))
                    Move (Round_Number(tmppol.qty,3))   to nPoso
                    MOVE nposo  TO SPOSO
                    Move (Trim(sPoso))                    to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)     to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.000'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume dyo '0' sto telos
                        If (iDiafora=1) Move (Append(sPoso,'00')) to sPoso
                        else If (iDiafora=2) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (13-iLen)
                       Move (Insert(" ", sPoso,1))         to sPoso
                    Loop
                    if (tmppol.typos='06') move '' to sposo
                    Write   Channel 7 (Pad(sPoso                                ,13))
                    Write   Channel 7 (Pad(trim(tmppol.mm)                      , 3))
                    if (tmppol.typos='06') begin
                        move '' to tmppol.kathgoria
                        move '' to tmppol.antlhsh
                        move '' to tmppol.pinakida
                        move '' to tmppol.fpa
                    end
                    Write   Channel 7 (Pad(trim(tmppol.kathgoria)               , 1))
                    Write   Channel 7 (Pad(trim(tmppol.antlhsh)                 , 1))
                    Write   Channel 7 (Pad(ToAnsi(tmppol.pinakida)              ,12))
                    Write   Channel 7 (Pad(trim(tmppol.oroi)                    , 4))
                    Write   Channel 7 (Pad(trim(tmppol.fpa)                     , 2))
                    Move (ROUnD_number(tmppol.posofpa,2))     to nPoso
                    move nposo to sposo
                    Move (Trim(sPoso))                      to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)       to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.00'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume ena '0' sto telos
                    If (iDiafora=1) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                    to iLen
                    For iInt From 1 to (16-iLen)
                        Move (Insert(" ", sPoso,1))         to sPoso
                    Loop
                    if ((tmppol.typos='06')or(tmppol.typos='05')or(tmppol.typos='01'));
                          move '' to sposo
                    Write   Channel 7 (Pad(sPoso                                ,16))
                    Write   Channel 7 (Pad(trim(tmppol.nomisma)                 , 5))
                    Write   Channel 7 (Pad(trim(tmppol.deltia)                  ,10))
                    Move '' to sEnter
                    move tmppol.sxolia to stext
                    Append sEnter (Character(13)) (Character(10))
                    Move (Replaces(sEnter,sText,' ')) to sText
                    Move stext to sStr
                    Append sStr ' '
                    move (Length(sStr)) to iLen
                    For iInt From 1 to iLen
                        If (iInt>50) Break
                    Loop
            
                    Write   Channel 7 (Pad(ToAnsi(sstr)                        ,50))
                    Writeln Channel 7
                    add 1 to imet
                    Set Label Of frmShow to (String(iMet)+'-'+String(tmppol.code))
                    find gt Tmppol by index.1
                Loop
                Close_Output Channel 7
            
            End_Procedure
            Procedure Write_Record_Apoth
                Number  nPoso
                Integer iDecs iLen iInt Imet idiafora ipos
                Integer rVal iMhnas iEtos iHmera
                String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
                Date    dapo
                get value of frmapo to dapo
                clear Company
                move syscurxr.company_code to Company.company_code
                find eq company by index.1
                move Company.company_c_code0 to stomeas
            
                Move (TheDaySegment  (dapo))  to iHmera
                Move (TheMonthSegment(dapo))  to iMhnas
                Move (TheYearSegment(dapo))   to ietos
                Move iHmera                     to sHmera
                Move iMhnas                     to sMhnas
                Move iEtos                      to sEtos
                If (Length(sHmera)=1) Insert '0' in sHmera at 1
                If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
                Move (psPath(Self)+Trim(stomeas)+'MM1'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                EraseFile sFileName
                Append_Output Channel 5 sFileName
                clear Tmpapoth
                find gt TmpApoth.recnum
                while (found)
                    Write   Channel 5 (Pad(Trim(Tmpapoth.onoma)                ,  3))
                    Write   Channel 5 (Pad(Trim(Tmpapoth.typos)                ,  2))
                    if (Tmpapoth.typos='90');
                        move stomeas to sposo
                    else;
                        move tmpapoth.egkatastash to sposo
                    Write   Channel 5 (Pad(trim(sposo)                        ,  4))
            
                    Move TmpApoth.arithmos                to sPoso
            
                    Write   Channel 5 (Pad(sposo                               , 16))
                    Move Tmpapoth.Hmnia         to sHmnia
                    Move (Replaces('/',sHmnia,''))  to sHmnia
                    Write   Channel 5 (Pad(sHmnia                               , 8))
                    Write   Channel 5 (Pad(trim(tmpapoth.type)                  , 3))
                    Write   Channel 5 (Pad(tmpapoth.code                        ,10))
                    Write   Channel 5 (Pad(ToAnsi(tmpapoth.item)                ,18))
                    Move (Round_Number(tmpapoth.qty,3))   to nPoso
                    MOVE nposo  TO SPOSO
                    Move (Trim(sPoso))                    to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)     to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.000'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume dyo '0' sto telos
                        If (iDiafora=1) Move (Append(sPoso,'00')) to sPoso
                        else If (iDiafora=2) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (13-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
            
                    Write   Channel 5 (Pad(sPoso                                ,13))
                    Write   Channel 5 (Pad(trim(tmpapoth.monada)                ,03))
                    Write   Channel 5 (Pad(trim(tmpapoth.paralabh)              ,04))
                    move tmpapoth.pinakida to sposo
                    if ((Tmpapoth.typos='90') or (tmpapoth.typos='91'));
                        move '' to sposo
                    Move (Replace(' ',sPoso,'')) to sPoso
                    Write   Channel 5 (Pad(ToAnsi(sposo)                        ,10))
                    Writeln Channel 5
                    add 1 to imet
                    Set Label Of frmShow to (String(iMet)+'-'+String(tmpapoth.code))
                    find gt Tmpapoth.recnum
                Loop
                Close_Output Channel 5
            End_Procedure
            // grapsimo arxeioy texn.prodiagrafon
            Procedure Write_Record_tehn
                Number  nPoso
                Integer iDecs iLen iInt Imet idiafora ipos
                Integer rVal iMhnas iEtos iHmera
                String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
                Date    dapo
                get value of frmapo to dapo
                clear Company
                move syscurxr.company_code to Company.company_code
                find eq company by index.1
                move Company.company_c_code0 to stomeas
            
                Move (TheDaySegment  (dapo))  to iHmera
                Move (TheMonthSegment(dapo))  to iMhnas
                Move (TheYearSegment(dapo))   to ietos
                Move iHmera                     to sHmera
                Move iMhnas                     to sMhnas
                Move iEtos                      to sEtos
                If (Length(sHmera)=1) Insert '0' in sHmera at 1
                If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
                Move (psPath(Self)+Trim(stomeas)+'PP1'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                EraseFile sFileName
                Append_Output Channel 5 sFileName
                clear Tmptehn
                find gt Tmptehn by index.3
                while (found)
                    Write   Channel 5 (Pad(Trim(Tmptehn.onoma)                ,  3))
                    Write   Channel 5 (Pad(Trim(Tmptehn.typos)                ,  2))
                    if (tmptehn.typos='90') move stomeas to sposo
                    else move  tmptehn.egkatastash to sposo
                    Write   Channel 5 (Pad(trim(sposo)                        ,  4))
                    Write   Channel 5 (Pad(ToAnsi(tmptehn.item)                ,18))
                    Write   Channel 5 (Pad(trim(tmptehn.prodiagrafh)           ,12))
                    Move tmptehn.type   to nPoso
                    MOVE nposo  TO SPOSO
                    Move (Trim(sPoso))                    to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)     to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.000'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume dyo '0' sto telos
                        If (iDiafora=1) Move (Append(sPoso,'00')) to sPoso
                        else If (iDiafora=2) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (13-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
                    Write   Channel 5 (Pad(trim(sposo)                     ,13))
                    Write   Channel 5 (Pad(trim(tmptehn.mm)                ,03))
            
                    move tmptehn.aa to sposo
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (4-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
                    if (tmptehn.typos='90');
                        move '' to sposo
                    Write   Channel 5 (Pad(sPoso                            ,4))
                    Write   Channel 5 (Pad(ToAnsi(tmptehn.itemd)            ,18))
                    move tmptehn.qty to nposo
                    MOVE nposo  TO SPOSO
                    Move (Trim(sPoso))                    to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)     to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.000'
                    Else Begin
                        If (iDiafora=1) Move (Append(sPoso,'00')) to sPoso
                        else If (iDiafora=2) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (13-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
                    if (tmptehn.typos='90');
                        move '' to sposo
                    Write   Channel 5 (Pad(trim(sposo)                     ,13))
            
                    Write   Channel 5 (Pad(trim(tmptehn.mmitemd)           ,03))
                    if (tmptehn.typos='90') begin
                        move '' to sposo
                        Write   Channel 5 (Pad(sposo                       ,01))
                    end
                    else;
                        Write   Channel 5 (Pad(tmptehn.index               ,01))
                    Writeln Channel 5
                    add 1 to imet
                    Set Label Of frmShow to (String(iMet)+'-'+String(tmptehn.recnum))
                    find gt Tmptehn by index.3
                Loop
                Close_Output Channel 5
            End_Procedure
            
            Procedure Write_Record_Anal
                Number  nPoso
                Integer iDecs iLen iInt Imet idiafora ipos
                Integer rVal iMhnas iEtos iHmera
                string s1 s2
                String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
                Date    dapo
                get value of frmapo to dapo
                clear Company
                move syscurxr.company_code to Company.company_code
                find eq company by index.1
                move Company.company_c_code0 to stomeas
            
                Move (TheDaySegment  (dapo))  to iHmera
                Move (TheMonthSegment(dapo))  to iMhnas
                Move (TheYearSegment(dapo))   to ietos
                Move iHmera                     to sHmera
                Move iMhnas                     to sMhnas
                Move iEtos                      to sEtos
                If (Length(sHmera)=1) Insert '0' in sHmera at 1
                If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
                Move (psPath(Self)+Trim(stomeas)+'PP2'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)+'.txt') to sFileName
                EraseFile sFileName
                Append_Output Channel 5 sFileName
                clear TmpAnal
                find gt TmpAnal by index.5
                while (found)
                    Write   Channel 5 (Pad(Trim(TmpAnal.onoma)                ,  3))
                    Write   Channel 5 (Pad(Trim(TmpAnal.typos)                ,  2))
                    Move Tmpanal.Hmnia         to sHmnia
                    Move (Replaces('/',sHmnia,''))  to sHmnia
                    Write   Channel 5 (Pad(sHmnia                              , 8))
                    move stomeas to sposo
                    if (tmpanal.typos='92');
                        Write   Channel 5 (Pad(trim(sposo)                    ,  4))
                    else;
                        Write   Channel 5 (Pad(trim(tmpAnal.egkatastash)      ,  4))
                    Write   Channel 5 (Pad(ToAnsi(tmpANAL.item)                ,18))
                    Write   Channel 5 (Pad(trim(tmpAnal.trmetaf)              ,  4))
                    Write   Channel 5 (Pad(trim(tmpanal.prodiagrafh)           ,12))
                    Move tmpanal.qty   to nPoso
                    MOVE nposo  TO SPOSO
                    Move (Trim(sPoso))                    to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)     to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.000'
                    Else Begin
                    // An exei mono 1 dekadiko prepei na prosthesoume dyo '0' sto telos
                        If (iDiafora=1) Move (Append(sPoso,'00')) to sPoso
                        else If (iDiafora=2) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (13-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
                    if (tmpanal.typos='91');
                        move '' to sposo
                    Write   Channel 5 (Pad(trim(sposo)                     ,13))
                    Write   Channel 5 (Pad(trim(tmpanal.mm)                ,03))
                    move tmpanal.aa to sposo
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (4-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
                    if ((tmpanal.typos='90') or (tmpanal.typos='91') or (tmpanal.typos='92'));
                        move '' to sposo
                    Write   Channel 5 (Pad(sPoso                            ,4))
                    Write   Channel 5 (Pad(ToAnsi(tmpanal.itemd)           ,18))
                    move tmpanal.posoths to nposo
                    MOVE nposo  TO SPOSO
                    Move (Trim(sPoso))                    to sPoso
                    Move (Pos('.',sPoso))   to iPos
                    Move (Length(sPoso))    to iLen
                    Move (iLen-iPos)     to iDiafora
                    If (Pos('.',sPoso)=0) Append sPoso '.000'
                    Else Begin
                        If (iDiafora=1) Move (Append(sPoso,'00')) to sPoso
                        else If (iDiafora=2) Move (Append(sPoso,'0')) to sPoso
                    End
                    Move (Replace('.',sPoso,'')) to sPoso
                    Move (Length(sPoso))                   to iLen
                    For iInt From 1 to (13-iLen)
                       Move (Insert("0", sPoso,1))         to sPoso
                    Loop
                    if ((tmpanal.typos='90') or (tmpanal.typos='92'));
                        move '' to sposo
                    Write   Channel 5 (Pad(trim(tmpanal.mmitemd)           ,03))
                    Write   Channel 5 (Pad(trim(sposo)                     ,13))
                    move  tmpanal.product to sposo
                    if (sposo<>'');
                        insert 'è' in  sposo at 1
                    Move (Replace('.',sPoso,'')) to sPoso
                    left sposo to s1 3
                    right sposo to s2 12
                    move s1 to sposo
                    append sposo s2
                    Write   Channel 5 (Pad(toansi(sposo)                   ,16))
                    move  tmpanal.product to sposo
                    if (sposo<>'');
                        insert 'Ä' in  sposo at 1
                    Move (Replace('.',sPoso,'')) to sPoso
                    left sposo to s1 3
                    right sposo to s2 12
                    move s1 to sposo
                    append sposo s2
                    Write   Channel 5 (Pad(toansi(sposo)                   ,16))
                    Writeln Channel 5
                    add 1 to imet
                    Set Label Of frmShow to (String(iMet)+'-'+String(tmpanal.recnum))
                    find gt Tmpanal by index.5
                Loop
                Close_Output Channel 5
            End_Procedure
            
            Procedure OnClick
                String  sFile sBranch sText sBaxiokatRecr sFile2 sstr
                String  sCompany sRec sLabel sPlace sPath
                Date    dApo dEos
                Integer iInt iCount iRec iMet iPos iPlaceCode retval
            
            
                Get Value Of frmPath to sPath
                Set psPath to (Trim(sPath)+'\')
            
                Get Value Of frmApo         Item 0 to dApo
                Get YesNo_Box 'Ä®ÆÂùú† û ú•òö‡ö„ Ñöö®ò≠È§ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
                    If (dApo='') Begin
                        Send Info_Box 'Ü û£ú®¶£û§Âò òß¶ úÂ§ò† °ú§„' 'è¢û®¶≠¶®Âò'
                        Send Activate to frmApo
                        Procedure_Return
                    End
                indicate err false
                If (RetVal =MBR_yes) begin
                  begin_transaction
            //        Send Write_Record_Pel
            //        Send Write_record_polhseon
            //        Send Write_record_axio
            //        Send Write_record_apoth
            //        Send Write_record_tehn
                    Send Write_record_Anal
            //      move 0 to iint
            //      clear clients
            //      find GT  clients by index.11
            //      while ((found) and (clients.sap_hmnia =''))
            //          move clients.recnum to irec
            //          if (clients.status='') move '2' to clients.status
            //          else if (clients.status='1') move '3' to clients.status
            //          move dapo to clients.sap_hmnia
            //          saverecord clients
            //          move  'Ä¢¢òö„ Status èú¢ò´È§' to sstr
            //          Set Label Of frmShow to (sstr+'-'+CLIENTS.client_id)
            //          clear clients
            //          move irec to clients.recnum
            //          find gt clients by index.11
            //      Loop
            //
            //
            //      clear cmoves
            //      find gt cmoves by 16
            //      while ((found) and (cmoves.sap_hmnia =''))
            //          if  (cmoves.cmoves_hmnia  > dapo);
            //              goto nextread
            //          move cmoves.recnum to irec
            //          move dapo to cmoves.sap_hmnia
            //          saverecord cmoves
            //          move 1 to iint
            //          nextread:
            //              Set Label Of frmShow to ('Ä•†Êö®ò≠ò' + '-' + String(cmoves.recnum)+'-'+String(cmoves.cmoves_hmnia))
            //              if (iint=1) begin
            //                 clear cmoves
            //                 move irec to cmoves.recnum
            //              end
            //              find gt cmoves by 16
            //              move 0 to iint
            //      Loop
            //      move 0 to iint
            //      clear particle
            //      find gt particle by 17
            //      while ((found) and (particle.sap_hmnia =''))
            //          if  (particle.partl_hmnia  > dapo) ;
            //              goto nextpartl
            //          if (particle.partl_no < 1);
            //              goto nextpARTL
            //          move particle.recnum to irec
            //          move dapo to particle.sap_hmnia
            //          saverecord particle
            //          move 1 to iint
            //          nextpartl:
            //              Set Label Of frmShow to ('è‡¢„©ú†™' + '-' + String(particle.recnum)+'-'+String(particle.partl_hmnia))
            //              if (iint=1) begin
            //                 clear particle
            //                 move irec to particle.recnum
            //              end
            //              move 0 to iint
            //              find gt particle by 17
            //
            //      Loop
            //
            //    move 0 to iint
            //    clear wcmoves
            //    find GT wcmoves by 16
            //    while ((found) and (wcmoves.sap_hmnia =''))
            //        if  (wcmoves.wcmove_hmnia  > dapo) ;
            //            goto nextwmoves
            //        move wcmoves.recnum to irec
            //        move dapo to wcmoves.sap_hmnia
            //        saverecord wcmoves
            //        move 1 to iint
            //        nextwmoves:
            //            Set Label Of frmShow to ('Äß¶ü„°û' + '-' + String(wcmoves.recnum)+'-'+String(wcmoves.wcmove_hmnia))
            //            if (iint=1) begin
            //               clear wcmoves
            //               move irec to wcmoves.recnum
            //            end
            //            move 0 to iint
            //            find Gt wcmoves by 16
            //    Loop
            //
            //    move 0 to iint
            //    clear itemtehn
            //    find GT itemtehn by index.4
            //    while ((found) and (itemtehn.sap_hmnia =''))
            //        if  (itemtehn.hmnia  > dapo) ;
            //            goto nextitem
            //        move itemtehn.recnum to irec
            //        move dapo to itemtehn.sap_hmnia
            //        saverecord itemtehn
            //        move 1 to iint
            //        nextitem:
            //            Set Label Of frmShow to ('íúÆ§.è®¶õ†òö®ò≠‚™' + '-' + String(itemtehn.recnum)+'-'+String(itemtehn.hmnia))
            //            if (iint=1) begin
            //               clear itemtehn
            //               move irec to itemtehn.recnum
            //            end
            //            move 0 to iint
            //            find Gt itemtehn by index.4
            //    Loop
            //
                move 0 to iint
                clear witemxtr
                find GT witemxtr by index.4
                while ((found) and (witemxtr.sap_hmnia =''))
                    if  (witemxtr.hmnia  > dapo) ;
                        goto nextwitem9
                    move witemxtr.recnum to irec
                    move dapo to witemxtr.sap_hmnia
                    saverecord witemxtr
                    move 1 to iint
                    nextwitem9:
                        Set Label Of frmShow to ('É†ò°†§„©ú†™' + '-' + String(witemxtr.recnum)+'-'+String(witemxtr.hmnia))
                        if (iint=1) begin
                           clear witemxtr
                           move irec to witemxtr.recnum
                        end
                        move 0 to iint
                        find Gt witemxtr by index.4
                Loop
               end_transaction
            
                    if (not(err)) begin
            //           clear tmpsap
            //           move dapo to tmpsap.date
            //           move 1 to tmpsap.kleidomeno
            //           saverecord tmpsap
                       Send Info_Box ('Ü ú•òö‡ö„ ©´¶†ÆúÂ‡§ ¶¢¶°¢û®Èüû°ú\náò ô®úÂ´ú ´ò ò®ÆúÂò ©´¶\n'+(psPath(Self))) 'è¢û®¶≠¶®Âò'
                    end
                    else  Send Info_Box 'èò®¶¨©†·©´û°ú °·ß¶†¶ ¢·ü¶™ ©´û§ Ñ•òö‡ö„' 'è¢û®¶≠¶®Âò'
              end
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object Textbox1 is a Textbox
            Set Label to "Ü£/§Âò Ñöö®ò≠È§ "
            Set Location to 17 84
            Set Size to 10 66
            Set FontWeight to 800
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object frmPath is a FormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            //AB-StoreTopEnd

            Set Size to 13 223
            Set Location to 212 95
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            Procedure Prompt
                String sStr sStr2
                Move (DPDlgShow(oDirectoryPicker(Self)))  to sStr
                GET DPDlgPath Of (oDirectoryPicker(Self)) to sStr2  // Full Path
                Move (Trim(sStr2)) to sStr2
                Set Value Of frmPath Item 0 to (Uppercase(TOOEM(sStr2)))
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmPath

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Path SAP"
            Set Location to 213 58
            Set Size to 10 32
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object btnDelete is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ä§òÂ®ú©û Ç‚≠¨®ò™"
            Set Size to 14 94
            Set Location to 14 261
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                Integer iID iErr iYes iInt
                Date    dHmnia
                String  sMess
                Get Value Of frmapo Item 0 to dHmnia
                If (dHmnia='') Procedure_Return
            
            //    Get fisapok Of vwSap dHmnia to iInt
            //
            //    // 1. Elegxos an yparxei progenesterh hmeromhnia anoixth
            //    If (iInt=1) Send Stop_Box 'ìß·®Æú† ß®¶öú§‚©´ú®û û£ú®¶£û§Âò ò§¶†Æ´„' 'ë≠·¢£ò 4001'
            //    // 2. Elegxos an yparxei h sygkekrimenh hmeromhnia kai einai kleidomenh
            //    //If (iInt=2) Send Stop_Box 'ìß·®Æú† „õû û û£ú®¶£û§Âò °ò† úÂ§ò† °¢ú†õ‡£‚§û' 'ë≠·¢£ò 4002'
            //    // 3. Elegxos an yparxei epomenh hmeromhnia
            //    If (iInt=4) Send Stop_Box 'ìß·®Æú† £ú´òöú§‚©´ú®û û£ú®¶£û§Âò ©´¶ ò®ÆúÂ¶' 'ë≠·¢£ò 4004'
            //    // 4. Elegxos an exei trexei h prohgoumenh hmera
            //    If (iInt=3) Send Stop_Box 'è®¶°Áß´ú† õ†ò≠¶®· û£ú®¶£û§†È§ > 1' 'ë≠·¢£ò 4003'
            //
                Move ('åò ú¢ú¨üú®È©‡ Ê¢ú™ ´†™ úöö®ò≠‚™ ß¶¨ úÆ¶¨§ ©´ò¢úÂ ©´¶ ëÄè £ú û£ú®/§Âò '+String(dHmnia)+' ?') to sMess
                Get YesNo_Box sMess to iYes
                If (iYes=MBR_NO) Procedure_Return
            
                Indicate Err False
                Move Error_Object_ID to iID
            
                Send ChangeAllFileModes DF_Filemode_ReadOnly
                Set_Attribute DF_File_Mode Of WitemxTr.File_Number  To DF_Filemode_Default
                Begin_Transaction
                    Send Eleyterose_Kinhseis_Sap dHmnia
                End_Transaction
            
            
                If (Err) Begin
                    Send Stop_Box 'é† úöö®ò≠‚™ ÉÑå ú¢ú¨üú®Èüû°ò§ ¢Êö‡ ©≠·¢£ò´¶™' ('ë≠·¢£ò '+(String(iErr)))
                End
            
                Send ChangeAllFileModes DF_Filemode_Default
                Move iID to  Error_Object_ID
            End_Procedure // OnClick
            
            Procedure Eleyterose_Kinhseis_Sap Date adHmnia
                Integer iID iErr inum
                Date dNullHmnia
                Move '01/01/1753' to dNullHmnia
            
            
                // WitemxTr
                Clear WitemxTr
                Move adHmnia to WitemxTr.Sap_Hmnia
                Find Gt WitemxTr By Index.4
                While ((Found) And (WitemxTr.Sap_Hmnia=adHmnia))
                    //Reread WitemxTr
                    Set Label Of frmshow    to ('â†§„©ú†™ É†ò°†§„©ú‡§ '+String(WitemxTr.Recnum))
                    Move dNullHmnia to WitemxTr.Sap_Hmnia
                    Saverecord WitemxTr
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5004
                    Clear WitemxTr
                    Move adHmnia to WitemxTr.Sap_Hmnia
                    Find Gt WitemxTr By Index.4
                Loop
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnDelete


        //AB-StoreStart
                                                                                                                                                                            
        Object oDirectoryPicker is a OLEDPDlg
            Set Size            to 0 0
            Set Location        to 0 0
            Set Visible_State   to False
            Procedure Activate
                Forward Send Activate
                Set Location    to 1 1
                Set Size        to 190 190
                SET DPDlgRoot   to 0
            End_procedure
        End_Object
        
        Procedure Activate_View Returns Integer
            Integer rVal
            CLEAR company
            move syscurxr.company_code to company.company_code
            find eq company by index.1
            if (found);
                set value of frmpath to company.sap_path
            else;
                set value of frmpath to ''
            Forward Get Msg_Activate_View to rVal
            Send Activate to oDirectoryPicker
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Vsappp2


    //AB-StoreStart
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
