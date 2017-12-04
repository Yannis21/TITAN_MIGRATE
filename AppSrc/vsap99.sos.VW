//AB/ Project vsap99
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vsap99"
//AB/     Set ProjectFileName to "vsap99.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vsap99 is a dbViewSubS
//     Clients_DD is a DataDictionary
//     Tempitel_DD is a DataDictionary
//     Tempitem_DD is a DataDictionary
//     frmapo is a FormSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio3 is a RadioSub
//       RadioSub1 is a RadioSub
//       RadioSub4 is a RadioSub
//     btnMetasx is a ButtonSub
//     btnekt is a ButtonSub
//     frmShow is a ButtonSub
//     ButtonSub1 is a ButtonSub
//     Textbox1 is a Textbox
//     btnPartl is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object btnekt
Register_Object btnMetasx
Register_Object btnPartl
Register_Object Clients_DD
Register_Object frmapo
Register_Object frmShow
Register_Object Radio1
Register_Object Radio3
Register_Object RadioGroupSub1
Register_Object RadioSub1
Register_Object RadioSub4
Register_Object Tempitel_DD
Register_Object Tempitem_DD
Register_Object Textbox1
Register_Object vsap99


//AB/ AppBuild VIEW


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
//    Use     Vwsap.vw
Open    Tmpsap
Open    Tmpaxio
Open    Tmppol
//Open    TmppolA
Open    Tmpapoth
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
open    witemxtr
open    itemtehn
//Use     Dorecord.dg
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Form.Sub
Use Rgroup.Sub
Use Radio.Sub
Use Button.Sub

Use CLIENTS.DD
Use TEMPITEL.DD
Use Tempitem.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vsap99 FOR vsap99

Object vsap99 is a dbViewSubS

    //AB-StoreTopStart
    property integer piepil public 0
    //AB-StoreTopEnd

    Set Label to "Ñ•òö‡ö„ Ä®ÆúÂ‡§ ö†ò ö‚≠¨®ú™ £ú SAP"
    Set Size to 210 373
    Set Location to 2 9

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
        Set Size to 73 361
        Set Location to 45 3
        Object Radio1 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ èú¢ò´È§"
            Set Size to 10 116
            Set Location to 10 5
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
            //move tmppol.recnum to irecnum
            //move tmppol.unitpr to nunitpr
            //move 0 to inum
            //move 0 to nqty
            //move tmppol.item to sitem
            //clear TmppolA
            //move irecnum to tmppola.recnum
            //move '03'    to tmppola.typos
            //find gt tmppola by index.3
            //while ((found) and (tmppola.typos = '06'))
            //    add 1 to inum
            //    if (inum=1);
            //        move tmppola.pinakida to spinakida
            //    if  (tmppola.pinakida <> spinakida);
            //        move 1 to ipin
            //    else;
            //        add tmppola.qty to nqty
            //    if (ipin=1) begin
            //        move 0 to ipin


            //AB-StoreEnd

        End_Object    // RadioSub4


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
        Set Location to 130 5
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart

        Set TooltipValue to "Ñßú•ú®öò©Âò Ñöö®ò≠È§"
        Procedure OnClick
            Set Label Of frmShow to ''
            integer libpo05 listatus retval irecnum  ibpoid ierr
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
        //    clear tmpsap
        //    move dapo to tmpsap.date
        //    find gt tmpsap by index.1
        //    if ((found) and (tmpsap.date ge dapo)) begin
        //        send info_box 'Ñö†§ú ú•òö‡ö„ ©´¶ Sap' 'É†òõ†°ò©Âò Ä°¨®È§ú´ò†'
        //        procedure_return
        //    end
        //
        //    clear tmpsap
        //    move (dapo-1) to tmpsap.date
        //    find eq tmpsap by index.1
        //    if (not(found)) begin
        //        send info_box 'Éú§ ‚ö†§ú ú•òö‡ö„ ©´¶ Sap û ß®¶ûö¶Á£ú§û £‚®ò' 'É†òõ†°ò©Âò Ä°¨®È§ú´ò†'
        //        procedure_return
        //    end

            Get YesNo_Box 'Ä®ÆÂùú† û Ñßú•ú®öò©Âò Ñöö®ò≠È§ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
            If (RetVal =MBR_yes) begin
        //        Zerofile TmpclSap
        //        Zerofile TmpAxio
        //        Zerofile Tmppol
                Zerofile Tmpapoth
                begin_transaction
        //            Send Ftiakse_Pelates
        //            Send enhmerose_axio
        //            Send Enhmerose_polhseis
                    Send enhmerose_apoth
                end_transaction
            end
            if (not(err)) begin
                Move "Ñ§û£‚®‡©û Ä®ÆúÂ‡§ ¶¢¶°¢û®Èüû°ú !!"  to MsgStr
                Send Info_Box MsgStr
            end
            else begin
                 Move "Ü õ†òõ†°ò©Âò õú§ ¶¢¶°¢û®Èüû°ú ©‡©´· !!" to MsgStr
                 Send Info_Box MsgStr
            end
        End_Procedure // OnClick


        Procedure Ftiakse_Pelates
             string srecr scode sstr stomeas
             integer Imet Ikod
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos tomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear clients
             move syscurxr.company_code to clients.company_code
        //     move syscurxr.branch_code  to clients.branch_code
         //    move '' to clients.status
         //    find gt clients by index.10
         //    while ((found) and (syscurxr.company_code=clients.company_code) and;
        //                        (clients.status<>'2'))
             FIND GT CLIENTS.RECNUM
             while (found)
                clear TmpclSap
                move 'FI1'                              to TmpclSap.onoma
                move '01'                               to TmpclSap.typos
                move 'idy1'                             to TmpclSap.etairia
        //      move clients.branch_code                to TmpclSap.branch_site
                move stomeas                            to TmpclSap.branch_site
                if (clients.status='') move '0'         to TmpclSap.type
           else if (clients.status='1') move '1'        to TmpclSap.type
                move (trim(clients.client_id))          to Tmpclsap.oldcode
                move (trim(clients.client_id))          to scode
                Move (Right(scode, Ikod))               To scode
                move (replaces('.',scode,'')) to scode
                insert '01' in scode at 1
                if (Sysfile.Client_Digits<6);
                    insert '0' in scode at 5
                move (trim(scode))                      to TmpclSap.code
                move 'MB00'                             to TmpclSap.group
                if (clients.endoomil='1');
                     move 'CSTIT'  to Tmpclsap.endoomil
                else;
                     move ''       to Tmpclsap.endoomil
                if (clients.anal='1')     move '2'      to Tmpclsap.anal
                else                      move '1'      to Tmpclsap.anal
                if (clients.npdd='1')     move 'B4'     to Tmpclsap.category
           else if (clients.custprom_code='1') move 'B3'to Tmpclsap.category
           else if (clients.is_xondr='1') move 'B1'     to Tmpclsap.category
           else                           move 'B2'     to Tmpclsap.category
                move clients.client_afm                 to Tmpclsap.afm
                clear Codemast
                move 'DOY' to   codemast.type
                move clients.client_doy to codemast.code
                find eq codemast by index.1
                move (trim(codemast.description))       to Tmpclsap.doy
                move (trim(clients.client_name))        to Tmpclsap.name
                clear Codemast
                move 'JOB' to codemast.type
                move clients.client_job to codemast.code
                find eq codemast by index.1
                move (trim(codemast.description))       to Tmpclsap.occup
                clear cities
                move clients.client_city_id to cities.city_id
                find eq cities by index.1
                move (trim(cities.city_descr))          to Tmpclsap.city
                move (trim(clients.client_address))     to sstr
                move (replaces('  ',sStr,'')) to sStr
                move (trim(sStr)) to Tmpclsap.address
            //    move (trim(clients.client_address))     to Tmpclsap.address
                move (trim(clients.client_add_no))      to Tmpclsap.add_no
                move (trim(clients.client_zipcode))     to Tmpclsap.zipcode
                move (trim(clients.client_phone))       to Tmpclsap.telfax
                move 'GR'                               to Tmpclsap.country
                move 'EL'                               TO Tmpclsap.language
                saverecord Tmpclsap
                add 1 to Imet
                Set Label Of frmShow to ('èú¢·´ú™' + '-' + String(iMet)+'-'+String(scode))
             //   find gt clients by index.10
                find gt clients.recnum
             Loop
                clear TmpclSap
                move 'FI1'                              to TmpclSap.onoma
                move 90                                 to TmpclSap.typos
                move 'idy1'                             to TmpclSap.etairia
             //   move clients.branch_code                to TmpclSap.branch_site
                move Imet                               to Tmpclsap.afm
                move 'GR'                               to Tmpclsap.country
                move 'EL'                               TO Tmpclsap.language
                saverecord Tmpclsap
        End_Procedure

        Procedure enhmerose_axio
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo stomeas
             integer Imet Ikod
             number nmetrhta nepitages nsynal nembasma nposo
             date dapo
             get value of frmapo to dapo
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos yomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear cmoves
             move dapo to cmoves.cmoves_hmnia
             find gt cmoves by index.3
             while ((found) and (cmoves.cmoves_hmnia=dapo))
                if  (cmoves.cmoves_hmnia  > dapo);
                    goto nextcmoves1
                if (cmoves.barticl_recr='');
                    goto nextcmoves1
                if (syscurxr.company_code<>cmoves.company_code);
                    goto nextcmoves1
         //       if (syscurxr.year_year<>cmoves.year_year);
         //           goto nextcmoves
                clear branch
                move Cmoves.company_code to branch.company_code
                move cmoves.branch_code  to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash    to sperioxh
                move branch.egkatastash    to segkatastash

                clear TmpAxio
                move 'FI3'                              to Tmpaxio.onoma
                move '01'                               to Tmpaxio.typos
                move 'idy1'                             to Tmpaxio.etairia
                move sperioxh                           to Tmpaxio.perioxh
                move segkatastash                       to Tmpaxio.egkatastash
                move stomeas                            to Tmpaxio.tomeas
                relate cmoves
                move (trim(ctypkin.singular))           to stype
                insert 'B' in stype at 1
                move (trim(stype))                      to Tmpaxio.type
                clear bmove
                move cmoves.custprom_code to bmove.bmove_recr
                find eq bmove by index.2
                move bmove.barticl_no                   to Tmpaxio.arithmos
        //        move cmoves.cmoves_hmnia                to shmnia
        //        move (Replaces('/',sHmnia,''))          to sHmnia
                move cmoves.cmoves_hmnia                to Tmpaxio.hmnia
                clear cflagkin
                move cmoves.ctypkin_code to cflagkin.ctypkin_code
                find gt cflagkin by index.1
                while ((found) and (cmoves.ctypkin_code=cflagkin.ctypkin_code))
                         if (trim(cflagkin.cflagkin_flag)='91') move '1' to sper
                    else if (trim(cflagkin.cflagkin_flag)='92') move '2' to sper
                    else if (trim(cflagkin.cflagkin_flag)='93') move '3' to sper
                    else if (trim(cflagkin.cflagkin_flag)='94') move '4' to sper
                    find gt cflagkin by index.1
                Loop
                move (trim(sper))                       to Tmpaxio.perigrafh
                     if (sper='1') add cmoves.cmoves_axia    to nmetrhta
                else if (sper='2') add cmoves.cmoves_axia    to nepitages
                else if (sper='3') add cmoves.cmoves_axia    to nsynal
                else if (sper='4') add cmoves.cmoves_axia    to nembasma
                move cmoves.cmoves_axia                 to Tmpaxio.axia
                move (trim(cmoves.client_id))           to scode
                Move (Right(scode, Ikod))               To scode
                move (replaces('.',scode,'')) to scode
                insert '01' in scode at 1
                if (Sysfile.Client_Digits<6);
                    insert '0' in scode at 5
                move (trim(scode))                      to TmpAxio.code
                move (trim(cmoves.client_name))         to TmpAxio.apodekths
                move 'Ñ§ò§´† ¢¶öò®†ò©£¶¨'              to TmpAxio.Aitiol
                if (sper='1') begin
                    move ''                             to Tmpaxio.lhxh
                    move ''                             to Tmpaxio.bank
                    move ''                             to Tmpaxio.ekdoths
                    move ''                             to Tmpaxio.noepit
                    move ''                             to Tmpaxio.xora
                    move ''                             to Tmpaxio.idioy
                    move ''                             to Tmpaxio.eparxia
                end
                else begin
                    Relate Bmove
                //    move Baxio.baxio_hmnial             to shmnia
                //    move (Replaces('/',sHmnia,''))      to sHmnia
                    move Baxio.baxio_hmnial             to Tmpaxio.lhxh
                    move baxio.baxio_banka              to Tmpaxio.bank
                    move (trim(baxio.baxio_ekdothse))   to Tmpaxio.ekdoths
                    move (trim(baxio.baxio_no))         to Tmpaxio.noepit
                    move 'GR'                           to Tmpaxio.xora
                    if (baxio.baxio_from='0') move '1'  to Tmpaxio.idioy
                    else if (baxio.baxio_from='1') move '2' to Tmpaxio.idioy
                    else if (baxio.baxio_from='')  move ''  to Tmpaxio.idioy
                    if (baxio.baxio_topos='0') move '2'  to Tmpaxio.eparxia
                    else if (baxio.baxio_topos='1') move '1' to Tmpaxio.eparxia
                    else if (baxio.baxio_topos='')  move ''  to Tmpaxio.eparxia

                end
                move 'EUR'                              To Tmpaxio.nomisma
                saverecord TmpAxio
                add 1 to Imet
                nextcmoves1:
                    Set Label Of frmShow to ('Ä•†Êö®ò≠ò' + '-' + String(iMet)+'-'+String(cmoves.cmoves_hmnia))
                    find gt cmoves by index.3
             Loop

            clear TmpAxio
            move 'FI3'                              to Tmpaxio.onoma
            move '90'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '1'                                to Tmpaxio.perigrafh
            move nmetrhta                           to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
            clear TmpAxio
            move 'FI3'                              to Tmpaxio.onoma
            move '91'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '2'                                to Tmpaxio.perigrafh
            move nepitages                          to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
            clear TmpAxio
            move 'FI3'                              to Tmpaxio.onoma
            move '92'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '3'                                to Tmpaxio.perigrafh
            move nsynal                             to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
            clear TmpAxio
            move 'FI3'                              to Tmpaxio.onoma
            move '93'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '4'                                to Tmpaxio.perigrafh
            move nembasma                           to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio

            clear TmpAxio
            move 'FI3'                              to Tmpaxio.onoma
            move '94'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move imet                               to Tmpaxio.axia
            saverecord TmpAxio

        End_Procedure


        Procedure enhmerose_polhseis
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo
             string stomeas soroi scmoves skod sitem

             integer Imet Ikod Ino irecnum
             number  ntot nfpa nnet nqty nhqty
             date dapo

             get value of frmapo to dapo
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos yomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear Particle
             move dapo to particle.partl_hmnia
             find gt particle by index.3
             while ((found) and (particle.partl_hmnia = dapo))
                if  (particle.partl_hmnia  > dapo);
                    goto nextpmoves1
                if (syscurxr.company_code<>particle.company_code);
                    goto nextpmoves1
        //        if (syscurxr.year_year<>particle.year_year);
        //            goto nextpmoves
                if (particle.partl_no < 1);
                    goto nextpmoves1
                clear tempitem
                find gt tempitem.recnum
                while (found)
                    delete tempitem
                    find gt tempitem.recnum
                Loop
                clear branch
                move particle.company_code to branch.company_code
                move particle.branch_code  to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash        to sperioxh
                move branch.egkatastash        to segkatastash
                move particle.partl_recr                to srecr
                clear TmpPol
                move 'FI2'                              to TmpPol.onoma
                move '01'                               to TmpPol.typos
                move 'idy1'                             to TmpPol.etairia
                move sperioxh                           to TmpPol.perioxh
                move segkatastash                       to TmpPol.egkatastash
                move stomeas                            to TmpPol.tomeas
                relate Particle
                if (trim(ptyppar.singular)='');
                    goto nextpmoves1

                move (trim(ptyppar.ptyppar_descr))      to Tmppol.descr
                move (trim(Ptyppar.ptyppar_code))       to stype
                insert 'B' in stype at 1
                move (trim(stype))                      to Tmppol.type
                move particle.partl_no                  to Tmppol.arithmos
                move Particle.Partl_hmnia               to Tmppol.hmnia
                MOVE PARTICLE.AITIOL                    to tmppol.sxolia
                move ''                                 to Tmppol.kodikos
                move Particle.partl_payam               to Tmppol.axia
                add Tmppol.axia                         to ntot
                move (trim(Particle.client_id))         to scode
          //      move Particle.partl_vatam               to Tmppol.posofpa
                move Particle.partl_totamad             to Tmppol.posonet

                if (Tmppol.axia <> 0) begin
                    move particle.cmoves_recr           to scmoves
                    clear cmoves
                    move scmoves to cmoves.cmoves_recr
                    find eq cmoves by index.2
                    if (cmoves.cmoves_p0 <> 0);
                        move 'è'                        to Tmppol.kinhsh
                    if (cmoves.cmoves_p0 < 0);
                        move '-'                        to Tmppol.sign
                    if (cmoves.cmoves_x0 <> 0);
                        move 'ï'                        to Tmppol.kinhsh
                    if (cmoves.cmoves_x0 < 0);
                        move '-'                        to Tmppol.sign
                end
                Move (Right(scode, Ikod))               To scode
                move (replaces('.',scode,'')) to scode
                insert '01' in scode at 1
                if (Sysfile.Client_Digits<6);
                    insert '0' in scode at 5
                move (trim(scode))                      to Tmppol.code
                Relate Particle
                if (clients.anal='1')     move '02'     to Tmppol.kodikos2
                else                      move '01'     to Tmppol.kodikos2
                move ''                                 to Tmppol.apoth
                move 0                                  to Tmppol.qty
                move clients.client_name                to Tmppol.name
                Clear Tperga
                move Particle.cn_code  to tperga.cn_code
                find gt tperga by index.1
                while ((found) and (particle.cn_code=tperga.cn_code))
                    if ((tperga.xarhtos_meres<>0) and (tperga.plhroteo_meres<>0)) begin
                        move '' to soroi
                        move tperga.xarhtos_meres to soroi
                        insert tperga.plhroteo_meres in soroi at 3
                        move (trim(soroi)) to soroi
                    end
                    find gt tperga by index.1
                loop
                move soroi                              to Tmppol.Oroi
                move 'EUR'                              To Tmppol.nomisma
                saverecord Tmppol
                add 1 to ino
                add 1 to Imet
                clear pmoves
                move srecr to pmoves.partl_recr
                find gt pmoves by index.3
                while ((found) and (srecr=pmoves.partl_recr))
                    clear TmpPol
                    move 'FI2'                              to TmpPol.onoma
                    move '03'                               to TmpPol.typos
                    move 'idy1'                             to TmpPol.etairia
                    move sperioxh                           to TmpPol.perioxh
                    move segkatastash                       to TmpPol.egkatastash
                    move stomeas                            to TmpPol.tomeas
                    move (trim(stype))                      to Tmppol.type
                    move pmoves.partl_no                    to Tmppol.arithmos
                    move Pmoves.Partl_hmnia                 to Tmppol.hmnia
                    move pmoves.pms_unitprice               to tmppol.unitpr
                    Relate Pmoves
                    move '' to skod
                    move (trim(wapokat.gl))                 to skod
                    insert ptyppar.singular in skod at 2
                    if (clients.is_xondr='1') move '1' to sstr
                    else                      move '2' to sstr
                    insert sstr              in skod at 3
                    insert Item.link2        in skod at 4
                    if (particle.skopos_diakin='9') move '2' to sstr
                    else                            move '1' to sstr
                    insert sstr              in skod at 5
                    move skod                               to Tmppol.kodikos
                    move Pmoves.pms_amaftdisc               to Tmppol.axia

                    move Pmoves.pms_VATAM                   to Tmppol.POSOFPA
                    add  Tmppol.axia                        to nnet
                    move 'B'                                to sitem
                    move wapokat.sap_descr                  to sstr
                    insert sstr in sitem at 2
                    insert 'O' in sitem at 3
                    insert item.link1 in sitem at 4
                    string spinak
                    move '' to spinak
                    move sitem                              to tmppol.apoth
                    move pmoves.pms_qty                     to Tmppol.qty
                    move pmoves.wapokat_code                to tmppol.wapokat_code

                    move pmoves.sx_arithmos                 to Tmppol.sxetiko
                    move item.item_code                     to Tmppol.item
                    move item.item_descr                    to Tmppol.item_descr
                    move Units.Units_Descr                  to Tmppol.mm
                    if (pmoves.wapokat_code<>'05');
                        move '' to tmppol.antlhsh
                    else;
                        move '' to tmppol.kathgoria
                    Clear Cars
                    move (trim(pmoves.car_id))  to Cars.car_id
                    Find eq Cars by index.2
                //    move Cars.car_license               to Tmppol.pinakida
                    Move (Append(spinak,(cars.car_what+'_'+cars.car_lc+cars.car_ln)))  to spinak
                    MOVE SPINAK to Tmppol.pinakida
                    If (trim(cars.ctype_id)='5');
                        move '2' to Tmppol.kathgoria
                    else if (trim(cars.ctype_id)='1');
                        move '1' to Tmppol.kathgoria
                    else move '3' to tmppol.kathgoria
                    move soroi                              to Tmppol.Oroi
                    move (abs(pmoves.pms_vatpct))           to Tmppol.fpa
                    move 'EUR'                              To Tmppol.nomisma
                    move particle.aitiol                    to tmppol.sxolia
                    saverecord Tmppol
                    if (pmoves.wapokat_code='05') begin
                        clear tempitem
                        move tmppol.recnum to tempitem.wcmove_qty_eisa
                        move '1' to tempitem.wcmove_status_e
                        move item.link1 to tempitem.witemx_code
                        move soroi to tempitem.client_id
                        move (abs(pmoves.pms_vatpct))           to Tempitem.company_code
                        move Units.Units_Descr to tempitem.branch_code
                        move pmoves.pms_qty                     to tempitem.wcmove_qty
                        move Pmoves.pms_amaftdisc               to tempitem.wcmove_axia
                        move Pmoves.pms_VATAM                   to Tempitem.wcmove_qty_exa
                        saverecord tempitem
                    end
        
        
        
        ////            add 1 to ino
        // apo oti katalaba to record 04 ua ginetai mono otan exei metaforika
        // an prepei se kaue periptosh na paragetai oxi remark ta epomena 5 lines
        //            move 0 to tmppol.recnum
        //            move 0 to tmppol.axia
        //            move 0 to tmppol.fpa
        //            move '04'                               to TmpPol.typos
        //            saverecord Tmppol
        
                    Set Label Of frmShow to ('è‡¢„©ú†™' + '-' + String(iMet)+'-'+String(Tmppol.arithmos))
                    find gt pmoves by index.3
        
                Loop
                move 0                                  to tmppol.recnum
                
                // 04/05/2011
                //move particle.partl_vatam               to Tmppol.axia
                move particle.Total_Vat_Poso            to Tmppol.axia
                
                add Tmppol.axia                         to nfpa
                move ''                                 to tmppol.code
                move ''                                 to tmppol.kodikos2
                move ''                                 to tmppol.apoth
                move 0                                  to tmppol.qty
                move 0                                  to tmppol.unitpr
                move 0                                  to tmppol.posofpa
                move ''                                 to tmppol.mm
                move ''                                 to tmppol.kathgoria
                move ''                                 to tmppol.pinakida
                move ''                                 to tmppol.item
                move ''                                 to tmppol.wapokat_code
                move ''                                 to tmppol.sxetiko
                move '05'                               to TmpPol.typos
                move '' to tmppol.kodikos
        
                saverecord Tmppol
        
                clear Psxetika
                move srecr to Psxetika.partl_recr
                Find gt Psxetika by index.4
                while ((found) and (srecr=Psxetika.partl_recr))
                    move 0                              to tmppol.recnum
                    move '06'                           to TmpPol.typos
                    move 0                              to tmppol.axia
                    move ''                             to tmppol.oroi
                    move ''                             to tmppol.nomisma
                    move 0                              to Tmppol.posofpa
                    move 0                              to Tmppol.fpa
                    move ''                             to tmppol.item
                    move ''                             to tmppol.wapokat_code
                    move ''                             to tmppol.sxolia
                    move ''                             to tmppol.sxetiko
                    move Psxetika.sx_partl_no           to Tmppol.deltia
                    move psxetika.psx_partl_recr        to Tmppol.sxrecr
                    Clear pmovesl
                    move tmppol.sxrecr to pmovesl.partl_recr
                    find gt pmovesl by index.3
                    while ((found) and (tmppol.sxrecr=pmovesl.partl_recr))
                        if (pmovesl.wapokat_code='05') begin
                            clear iteml
                            move pmovesl.item_code to iteml.item_code
                            find EQ iteml by index.5
                            move iteml.link1 to Tmppol.item
                            move pmovesl.pms_qty to tmppol.qty
                            clear pumps
                            move pmovesl.pump_id to pumps.pump_id
                            find eq pumps by index.3
                            if (found=1) begin
                                MOVE '' to spinak
                                Move (Append(spinak,(pumps.pump_what+'_'+pumps.pump_lc+pumps.pump_ln))) to spinak
                                move spinak to Tmppol.pinakida
                            end
                            If (trim(pumps.ctype_id)='5');
                                move '2' to Tmppol.antlhsh
                            else if (trim(pumps.ctype_id)='1');
                                move '1' to Tmppol.antlhsh
                            else if (trim(pumps.ctype_id)='4');
                                move '3' to Tmppol.antlhsh
                            else move '' to tmppol.antlhsh
                            move '' to tmppol.kathgoria
                            clear tempitem
                            move '2' to tempitem.wcmove_status_e
                            move (trim(iteml.link1)) to tempitem.witemx_code
                            move (trim(spinak)) to tempitem.item_code
                            move (trim(tmppol.antlhsh)) to tempitem.year_year
                            find eq tempitem by index.4
                            if (found) begin
                                add  pmovesl.pms_qty to tempitem.wcmove_qty
                                saverecord tempitem
                            end
                            else begin
                                move '2' to tempitem.wcmove_status_e
                                move iteml.link1 to tempitem.witemx_code
                                move pmovesl.pms_qty                   to tempitem.wcmove_qty
                                move Pmovesl.pms_amaftdisc             to tempitem.wcmove_axia
                                move Pmovesl.pms_VATAM                 to Tempitem.wcmove_qty_exa
                                saverecord tempitem
                            end
                        end
                        find gt pmovesl by index.3
                    Loop
        
                    saverecord Tmppol
        //            add 1 to ino
                    find gt Psxetika by index.4
                Loop
                clear tempitem
                move '1' to tempitem.wcmove_status_e
                find gt tempitem by index.4
                while ((found) and (tempitem.wcmove_status_e='1'))
                    move tempitem.wcmove_qty to nqty
                    move tempitem.witemx_code to sitem
                    MOVE TEMPITEM.wcmove_qty_eisa to irecnum
                    clear tempitel
                    move '2' to tempitel.wcmove_status_e
                    move sitem to tempitel.witemx_code
                    move 0 to nhqty
                    find gt tempitel by index.4
                    while ((found) and (tempitel.wcmove_status_e='2') and (sitem=tempitel.witemx_code))
                        add tempitel.wcmove_qty to nhqty
                        find gt tempitel by index.4
                    Loop
                    if  (nhqty=0) begin
                    end
                    else begin
                        move (nqty-nhqty) to nqty
                        clear tempitel
                        move '2' to tempitel.wcmove_status_e
                        move sitem to tempitel.witemx_code
                        move 0 to nhqty
                        move 0 to ino
                        find gt tempitel by index.4
                        while ((found) and (tempitel.wcmove_status_e='2') and (sitem=tempitel.witemx_code))
                            add 1 to ino
                            clear tmppol
                            move  irecnum to tmppol.recnum
                            find eq tmppol.recnum
                            if (found) begin
                                move 0 to tmppol.recnum
                                if (ino=1) Move (tempitel.wcmove_qty+nqty)  to tmpPol.qty
                                else       move tempitel.wcmove_qty         to tmpPol.qty
                                Move (ROUnD_number((tmpPol.qty*tmppol.unitpr),2))  to tmppol.axia
                                move tempitel.item_code to tmppol.pinakida
                                move tempitel.year_year to tmppol.antlhsh
                                saverecord tmppol
                            end
                            find gt tempitel by index.4
                        Loop
                        clear tmppol
                        move irecnum to tmppol.recnum
                        find eq tmppol.recnum
                        if (found);
                            delete tmppol
                    end
                    find gt tempitem by index.4
                Loop
                nextpmoves1:
                Set Label Of frmShow to ('è‡¢„©ú†™' + '-' +string(particle.partl_hmnia)+'-'+String(Tmppol.arithmos))
                find gt Particle by index.3
             Loop
        
             clear Tmppol
             move 'FI2'                              to Tmppol.onoma
             move '90'                               to Tmppol.typos
             move 'idy1'                             to Tmppol.etairia
             move '999'                              to Tmppol.type
             move '9999999999'                       to Tmppol.arithmos
             move 'ZZZZ'                             to Tmppol.EGKATASTASH
             move ntot                               to Tmppol.axia
             move 'EUR'                              To Tmppol.nomisma
             move dapo                               to Tmppol.hmnia
             saverecord Tmppol
             move 0                                  to Tmppol.recnum
             move '91'                               to Tmppol.typos
             move nfpa                               to Tmppol.axia
             saverecord Tmppol
             move 0                                  to Tmppol.recnum
             move '92'                               to Tmppol.typos
             move nnet                               to Tmppol.axia
             saverecord Tmppol
             move 0                                  to Tmppol.recnum
             move '93'                               to Tmppol.typos
             move ino                                to Tmppol.axia
             move ''                                 to Tmppol.nomisma
             saverecord Tmppol
        End_Procedure
        
        Procedure enhmerose_apoth
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo
             string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
             integer Imet Ikod Ino iLen iFirst iRecnum
             number  ntot nfpa nqty
             date dapo
             get value of frmapo to dapo
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos yomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear Wcmoves
             move dapo to wcmoves.wcmove_hmnia
             find gt wcmoves by index.3
             while ((found) and (wcmoves.wcmove_hmnia=dapo))
                relate Wcmoves
                if  (wcmoves.wcmove_hmnia  > dapo);
                    goto nextwcmoves1
                if (syscurxr.company_code<>Wcmoves.company_code);
                    goto nextWcmoves1
                if (Wcmoves.module_from<>'01');
                    goto nextWcmoves1
                if (Wapokat.enhm_sap<>'1');
                    goto nextWcmoves1
                if ((Wcmoves.wcmove_qty_eisa=0) and (Wcmoves.wcmove_qty_exa=0));
                    goto nextWcmoves1
                if (Wtypkin.wtypkin_anti='');
                    goto nextWcmoves1
                move (trim(Wcmoves.client_id))          to scode
                move Wcmoves.Wcmove_recr                to srecr
                clear branch
                move wcmoves.company_code to branch.company_code
                move wcmoves.branch_code  to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash        to segkatastash
        //        move Wcmoves.branch_code                to sperioxh
        //        move Wcmoves.branch_code                to segkatastash
                clear Tmpapoth
                move wtypkin.Wtypkin_anti               to Tmpapoth.type
                move 'MM1'                              to Tmpapoth.onoma
                move '01'                               to Tmpapoth.typos
                move segkatastash                       to Tmpapoth.egkatastash
                clear pmoves
                move wcmoves.partl_recr to pmoves.pms_recr
                find eq pmoves by index.2
                move pmoves.partl_no                    to Tmpapoth.arithmos
                Clear Cars
                move (trim(pmoves.car_id))  to Cars.car_id
                Find eq Cars by index.2
                Move (Append(CARS.CAR_LC,cars.car_ln)) to sPoso
                move sposo                              to Tmpapoth.pinakida
                move Wcmoves.Wcmove_hmnia               to Tmpapoth.hmnia
                //den xsero ti na balo ston typo kinhshs
        
        
        
                Move (Right(scode, Ikod))               To scode
                move (replaces('.',scode,'')) to scode
                insert '01' in scode at 1
                if (Sysfile.Client_Digits<6);
                    insert '0' in scode at 5
                if (wcmoves.client_id='');
                    move '' to scode
                move (trim(scode))                      to Tmpapoth.code
                move 'B'                                to sitem
                move wapokat.sap_descr                  to sti
                insert sti in sitem at 2
                insert 'O' in sitem at 3
                insert item.link1 in sitem at 4
                move sitem                              to Tmpapoth.item
                if (wcmoves.wcmove_qty_eisa<> 0);
                    move wcmoves.wcmove_qty_eisa        to Tmpapoth.qty
                else;
                    move wcmoves.wcmove_qty_exa         to Tmpapoth.qty
                move UNITS.UNITS_DESCR                  to Tmpapoth.monada
        
                saverecord Tmpapoth
                add 1 to ino
                add 1 to Imet
                nextWcmoves1:
                move (trim(wcmoves.wcmove_par)) to sno
                Set Label Of frmShow to ('â†§„©ú†™ Äß¶ü„°û™' + '-' + String(iMet)+'-'+String(sno))
                find gt Wcmoves by index.3
             Loop
             move 0                                  to Tmpapoth.recnum
             move '90'                               to Tmpapoth.typos
             move '9999999999'                       to Tmpapoth.arithmos
             move ''                                 to tmpapoth.type
             move imet                               to Tmpapoth.qty
             move ''                                 to Tmpapoth.code
             move ''                                 to Tmpapoth.item
             move ''                                 to Tmpapoth.egkatastash
             move ''                                 to Tmpapoth.monada
             move ''                                 to Tmpapoth.paralabh
             saverecord Tmpapoth
             move 0 to ifirst
             move 0 to nqty
             clear Tmpapoth
             find gt tmpapoth by index.3
             while ((found) and (tmpapoth.typos='01'))
                add 1 to ifirst
                if (ifirst=1) begin
                    move tmpapoth.egkatastash to shegkatastash
                    move tmpapoth.type        to shtype
                    move tmpapoth.item        to shitem
                    move tmpapoth.monada      to sstr
                end
        
                move tmpapoth.recnum to irecnum
                if ((tmpapoth.egkatastash<>shegkatastash)or (tmpapoth.type<>shtype) or;
                   (tmpapoth.item<>shitem)) begin
        
                        move 0                                  to Tmpapoth.recnum
                        move '91'                               to Tmpapoth.typos
                        move '9999999999'                       to Tmpapoth.arithmos
                        move shtype                             to tmpapoth.type
                        move nqty                               to Tmpapoth.qty
                        move ''                                 to Tmpapoth.code
                        move shitem                             to Tmpapoth.item
                        move shegkatastash                      to Tmpapoth.egkatastash
                        move sstr                               to Tmpapoth.monada
                        move ''                                 to Tmpapoth.paralabh
                        saverecord tmpapoth
                        move 0 to nqty
        
                        clear tmpapoth
                        move irecnum to tmpapoth.recnum
                        find eq tmpapoth.recnum
                        move tmpapoth.egkatastash to shegkatastash
                        move tmpapoth.type        to shtype
                        move tmpapoth.item        to shitem
                        move tmpapoth.monada      to sstr
                        add  tmpapoth.qty to nqty
                   end
                   else  add tmpapoth.qty              to nqty
                find gt tmpapoth by index.3
             Loop
             if (nqty<>0) begin
                move 0                                  to Tmpapoth.recnum
                move '91'                               to Tmpapoth.typos
                move '9999999999'                       to Tmpapoth.arithmos
                move shtype                             to tmpapoth.type
                move nqty                               to Tmpapoth.qty
                move ''                                 to Tmpapoth.code
                move shitem                             to Tmpapoth.item
                move shegkatastash                      to Tmpapoth.egkatastash
                move sstr                               to Tmpapoth.monada
                move ''                                 to Tmpapoth.paralabh
                saverecord tmpapoth
                move 0 to nqty
             end
        //     move 0                                  to Tmppol.recnum
        //     move '91'                               to Tmppol.typos
        //     move nfpa                               to Tmppol.axia
        //     saverecord Tmppol
        //     move 0                                  to Tmppol.recnum
        //     move '92'                               to Tmppol.typos
        //     move nnet                               to Tmppol.axia
        //     saverecord Tmppol
        //     move 0                                  to Tmppol.recnum
        //     move '93'                               to Tmppol.typos
        //     move ino                                to Tmppol.axia
        //     move ''                                 to Tmppol.nomisma
        //     saverecord Tmppol
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnMetasx

    Object btnekt is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "printer.bmp"
        Set Size to 21 24
        Set Location to 132 281
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
        Set Size to 14 207
        Set Location to 135 42
        Set Border_Style to Border_StaticEdge
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
        
        End_Procedure // OnClick
        //AB-StoreEnd

    End_Object    // frmShow

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "AutoCopen.bmp"
        Set Size to 20 23
        Set Location to 132 335
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set TooltipValue to 'Ñ•òö‡ö„ ©´¶ ò®ÆúÂ¶'
        
        // Grapsimo ton records
        // na arxeio xexoristo ana hmera
        // me onoma xxxxzzzyyyymmhh opou xxxx=Branch.code zzz onoma arxeioy
        // yyyymmhh etos-mhnas-mera eggrafon
        Procedure Write_Record_Pel
            Number  nPoso
            Integer iDecs iLen iInt Imet
            Integer rVal iMhnas iEtos iHmera
            String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
            String sstr
            Date    dapo deos dhmnia
            Get value of frmapo item 0 to dapo
        //           Get value of frmeos item 0 to deos
            Clear tmpsap
            move (dapo-1) to Tmpsap.date
            find eq Tmpsap by index.1
        //    if (not(found)) error 2152 'Éú§ Ñ°¢ú†©ú û ß®¶ûö¶Á£ú§û £‚®ò'
        //    if (tmpsap.apestalei<>1) error 2153 'Éú§ ãú´ò≠‚®üû°ò§ ©´¶ SAP ¶† Æüú©†§‚™ Ñöö®ò≠‚™ !'
            Clear tmpsap
            move (dapo) to Tmpsap.date
        //    move 'FI1'    to tmpsap.onoma
            find eq Tmpsap by index.1
        //    if ((found) and (tmpsap.apestalei=1)) error 2155 'Ü Ü£‚®ò ò¨´„ ‚Æú† ú†©òÆüúÂ ©´¶ SAP !!'
            move (dapo+1) to Tmpsap.date
        //    move 'FI1'    to tmpsap.onoma
            find gt Tmpsap by index.1
        //    if ((found) and (tmpsap.apestalei=1))  error 2155 'ÑÆ¶¨§ ú•òÆüúÂ úöö®ò≠‚™ > Ü£/§Âò!!'
        
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
            Move ('C:\'+Trim(stomeas)+'FI1'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)) to sFileName
            EraseFile sFileName
            Append_Output Channel 9 sFileName
            clear tmpclsap
            find gt tmpclsap.recnum
            while (found)
                Write   Channel 9 (Pad(Trim(tmpclsap.onoma)                ,  4))
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
                Move (trim(tmpclsap.afm))               to sPoso
                Move (Trim(sPoso))                      to sPoso
                Move (Length(sPoso))                    to iLen
                For iInt From 1 to (11-iLen)
                    Move (Insert(" ", sPoso,1))         to sPoso
                Loop
                Write   Channel 9 (Pad(sPoso                                ,11))
                Write   Channel 9 (Pad(tmpclsap.name                        ,40))
                Write   Channel 9 (Pad(tmpclsap.occup                       ,40))
                Write   Channel 9 (Pad(tmpclsap.city                        ,40))
                Write   Channel 9 (Pad(tmpclsap.address                     ,60))
                Move (trim(tmpclsap.add_no))            to sPoso
                Move (Trim(sPoso))                      to sPoso
                Move (Length(sPoso))                    to iLen
                For iInt From 1 to (3-iLen)
                    Move (Insert(" ", sPoso,1))         to sPoso
                Loop
                Write   Channel 9 (Pad(sPoso                                , 3))
                Move (trim(tmpclsap.zipcode))           to sPoso
                Move (Trim(sPoso))                      to sPoso
                Move (Length(sPoso))                    to iLen
                For iInt From 1 to (10-iLen)
                    Move (Insert(" ", sPoso,1))         to sPoso
                Loop
                Write   Channel 9 (Pad(sPoso                                ,10))
                Write   Channel 9 (Pad(tmpclsap.doy                         ,40))
                Move (trim(tmpclsap.telfax))            to sPoso
                Move (Trim(sPoso))                      to sPoso
                Move (Length(sPoso))                    to iLen
                For iInt From 1 to (14-iLen)
                    Move (Insert(" ", sPoso,1))         to sPoso
                Loop
                Write   Channel 9 (Pad(sPoso                                ,14))
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
            String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
            Date    dapo
            get value of frmapo to dapo
            clear Company
            move syscurxr.company_code to Company.company_code
            find eq company by index.1
            move Company.company_c_code0 to stomeas
        
        //    move syscurxr.branch_code       to sbranch
            Move (TheDaySegment  (dapo))  to iHmera
            Move (TheMonthSegment(dapo))  to iMhnas
            Move (TheYearSegment(dapo))   to ietos
            Move iHmera                     to sHmera
            Move iMhnas                     to sMhnas
            Move iEtos                      to sEtos
            If (Length(sHmera)=1) Insert '0' in sHmera at 1
            If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
            Move ('C:\'+Trim(stomeas)+'FI3'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)) to sFileName
            EraseFile sFileName
            Append_Output Channel 8 sFileName
            clear TmpAxio
            find gt TmpAxio.recnum
            while (found)
                Write   Channel 8 (Pad(Trim(TmpAxio.onoma)                 ,  3))
                Write   Channel 8 (Pad(Trim(TmpAxio.typos)                 ,  2))
                Write   Channel 8 (Pad(tmpaxio.etairia                     ,  4))
                Write   Channel 8 (Pad(trim(tmpaxio.perioxh)               ,  4))
                Write   Channel 8 (Pad(trim(tmpaxio.egkatastash)           ,  4))
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
                Write   Channel 8 (Pad(trim(tmpaxio.aitiol)                 ,50))
                Move Tmpaxio.lhxh     to sHmnia
                Move (Replaces('/',sHmnia,''))  to sHmnia
                Write   Channel 8 (Pad(sHmnia                               , 8))
                Write   Channel 8 (Pad(trim(tmpaxio.bank)                   ,15))
                move '' to sid
                Write   Channel 8 (Pad(sid                                  ,25))
                Write   Channel 8 (Pad(trim(tmpaxio.ekdoths)                ,25))
                Write   Channel 8 (Pad(trim(tmpaxio.noepit)                 ,18))
                Write   Channel 8 (Pad(tmpaxio.xora                         , 2))
                Write   Channel 8 (Pad(tmpaxio.idioy                        , 1))
                Write   Channel 8 (Pad(tmpaxio.eparxia                      , 1))
                Write   Channel 8 (Pad(trim(tmpaxio.nomisma)                , 3))
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
            string skeno
            Date    dapo
            get value of frmapo to dapo
            clear Company
            move syscurxr.company_code to Company.company_code
            find eq company by index.1
            move Company.company_c_code0 to stomeas
        
        //    move syscurxr.branch_code       to sbranch
            Move (TheDaySegment  (dapo))  to iHmera
            Move (TheMonthSegment(dapo))  to iMhnas
            Move (TheYearSegment(dapo))   to ietos
            Move iHmera                   to sHmera
            Move iMhnas                   to sMhnas
            Move iEtos                    to sEtos
            If (Length(sHmera)=1) Insert '0' in sHmera at 1
            If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
            Move ('C:\'+Trim(stomeas)+'FI2'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)) to sFileName
            EraseFile sFileName
            Append_Output Channel 7 sFileName
            clear TmpPol
            find gt Tmppol by index.1
            while (found)
                Write   Channel 7 (Pad(Trim(Tmppol.onoma)                 ,  3))
                Write   Channel 7 (Pad(Trim(Tmppol.typos)                 ,  2))
                Write   Channel 7 (Pad(tmppol.etairia                     ,  4))
                Write   Channel 7 (Pad(trim(tmppol.perioxh)               ,  4))
                if (tmppol.type ='999');
                   Write   Channel 7 (Pad(trim(skeno)                      ,  4))
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
                Write   Channel 7 (Pad(trim(tmppol.apoth)                   ,18))
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
        
        
            // 24/03/2004 allagh. Ta dekadika einai panta ta 3 teleytaia
            // psifia ara h teleia feygei
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
                Write   Channel 7 (Pad(trim(tmppol.pinakida)                ,12))
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
            // 24/03/2004 allagh. Ta dekadika einai panta ta 2 teleytaia
            // psifia ara h teleia feygei
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
                Write   Channel 7 (Pad(trim(tmppol.sxolia)                  ,50))
                Writeln Channel 7
                add 1 to imet
                Set Label Of frmShow to (String(iMet)+'-'+String(tmpaxio.code))
                find gt Tmppol by index.1
            Loop
            Close_Output Channel 7
        
        End_Procedure
        
        // Grapsimo ton kinhseon apoth
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
        
        //    move syscurxr.branch_code       to sbranch
            Move (TheDaySegment  (dapo))  to iHmera
            Move (TheMonthSegment(dapo))  to iMhnas
            Move (TheYearSegment(dapo))   to ietos
            Move iHmera                     to sHmera
            Move iMhnas                     to sMhnas
            Move iEtos                      to sEtos
            If (Length(sHmera)=1) Insert '0' in sHmera at 1
            If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
            Move ('C:\'+Trim(stomeas)+'MM1'+Trim(sEtos)+Trim(sMhnas)+Trim(sHmera)) to sFileName
            EraseFile sFileName
            Append_Output Channel 5 sFileName
            clear Tmpapoth
            find gt TmpApoth.recnum
            while (found)
                Write   Channel 5 (Pad(Trim(Tmpapoth.onoma)                ,  3))
                Write   Channel 5 (Pad(Trim(Tmpapoth.typos)                ,  2))
                Write   Channel 5 (Pad(trim(tmpapoth.egkatastash)          ,  4))
        
                Move TmpApoth.arithmos                to sPoso
        
                Write   Channel 5 (Pad(sposo                               , 16))
                Move Tmpapoth.Hmnia         to sHmnia
                Move (Replaces('/',sHmnia,''))  to sHmnia
                Write   Channel 5 (Pad(sHmnia                               , 8))
                Write   Channel 5 (Pad(trim(tmpapoth.type)                  , 3))
                Write   Channel 5 (Pad(tmpapoth.code                        ,10))
                Write   Channel 5 (Pad(tmpapoth.item                        ,18))
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
        
        
            // 24/03/2004 allagh. Ta dekadika einai panta ta 3 teleytaia
            // psifia ara h teleia feygei
                Move (Replace('.',sPoso,'')) to sPoso
        
        
                Move (Length(sPoso))                   to iLen
                For iInt From 1 to (13-iLen)
                   Move (Insert("0", sPoso,1))         to sPoso
                Loop
        
                Write   Channel 5 (Pad(sPoso                                ,13))
                Write   Channel 5 (Pad(trim(tmpapoth.monada)                ,03))
                Write   Channel 5 (Pad(trim(tmpapoth.paralabh)              ,04))
                Write   Channel 5 (Pad(trim(tmpapoth.pinakida)              ,10))
                Writeln Channel 5
                add 1 to imet
                Set Label Of frmShow to (String(iMet)+'-'+String(tmpapoth.code))
                find gt Tmpapoth.recnum
            Loop
            Close_Output Channel 5
        End_Procedure
        
        
        Procedure OnClick
            String  sFile sBranch sText sBaxiokatRecr sFile2 sstr
            String  sCompany sRec sLabel sPlace
            Date    dApo dEos
            Integer iInt iCount iRec iMet iPos iPlaceCode retval
            Get Value Of frmApo         Item 0 to dApo
            Get YesNo_Box 'Ä®ÆÂùú† û ú•òö‡ö„ Ñöö®ò≠È§ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
                If (dApo='') Begin
                    Send Info_Box 'Ü û£ú®¶£û§Âò òß¶ úÂ§ò† °ú§„' 'è¢û®¶≠¶®Âò'
                    Send Activate to frmApo
                    Procedure_Return
                End
            indicate err false
            If (RetVal =MBR_yes) begin
          //     begin_transaction
         //     Send Write_Record_Pel
         //     Send Write_record_polhseon
         //     Send Write_record_axio
         //     Send Write_record_apoth
         //       clear tmpclsap
        //        find gt tmpclsap.recnum
        //        while (found=1)
        //            clear clients
        //            move tmpclsap.oldcode to clients.client_id
        //            find eq clients by index.6
        //            if (found=1) begin
        //                move '2' to clients.status
        //                saverecord clients
        //                move  'Ä¢¢òö„ Status èú¢ò´È§' to sstr
        //                Set Label Of frmShow to (sstr+'-'+tmpclsap.oldcode)
        //            end
        //            find gt tmpclsap.recnum
        //        loop
                clear cmoves
                find gt cmoves by 16
                while ((found) and (cmoves.sap_hmnia =''))
                    if  (cmoves.cmoves_hmnia  > dapo);
                        goto nextread
                    move cmoves.recnum to irec
                    move dapo to cmoves.sap_hmnia
                    saverecord cmoves
                    move 1 to iint
                    nextread:
                        Set Label Of frmShow to ('Ä•†Êö®ò≠ò' + '-' + String(cmoves.recnum)+'-'+String(cmoves.cmoves_hmnia))
                        if (iint=1) begin
                       clear cmoves
                       move irec to cmoves.recnum
                    //   find gt cmoves.recnum
                    end
                    find gt cmoves by 16
                    move 0 to iint
            Loop
            move 0 to iint
            clear particle
            find gt particle by 17
            while ((found) and (particle.sap_hmnia =''))
                if  (particle.partl_hmnia  > dapo) ;
                    goto nextpartl
                if (particle.partl_no < 1);
                    goto nextpARTL
                move particle.recnum to irec
                move dapo to particle.sap_hmnia
                saverecord particle
                move 1 to iint
                nextpartl:
                    Set Label Of frmShow to ('è‡¢„©ú†™' + '-' + String(particle.recnum)+'-'+String(particle.partl_hmnia))
                    if (iint=1) begin
                       clear particle
                       move irec to particle.recnum
                    end
                    move 0 to iint
                    find gt particle by 17
        
            Loop
        
          move 0 to iint
          clear wcmoves
          find GT wcmoves by 16
          while ((found) and (wcmoves.sap_hmnia =''))
              if  (wcmoves.wcmove_hmnia  > dapo) ;
                  goto nextwmoves
              move wcmoves.recnum to irec
              move dapo to wcmoves.sap_hmnia
              saverecord wcmoves
              move 1 to iint
              nextwmoves:
                  Set Label Of frmShow to ('Äß¶ü„°û' + '-' + String(wcmoves.recnum)+'-'+String(wcmoves.wcmove_hmnia))
                  if (iint=1) begin
                     clear wcmoves
                     move irec to wcmoves.recnum
                  end
                  move 0 to iint
                  find Gt wcmoves by 16
          Loop
        
              move 0 to iint
              clear itemtehn
              find GT itemtehn by index.4
              while ((found) and (itemtehn.sap_hmnia =''))
                  if  (itemtehn.hmnia  > dapo) ;
                      goto nextmoves
                  move itemtehn.recnum to irec
                  move dapo to itemtehn.sap_hmnia
                  saverecord itemtehn
                  move 1 to iint
                  nextmoves:
                      Set Label Of frmShow to ('É†ò°†§„©ú†™' + '-' + String(itemtehn.recnum)+'-'+String(itemtehn.hmnia))
                      if (iint=1) begin
                         clear itemtehn
                         move irec to itemtehn.recnum
                      end
                      move 0 to iint
                      find Gt itemtehn by index.4
              Loop
        
        
        
        
               move 0 to iint
              clear witemxtr
              find GT witemxtr by index.4
              while ((found) and (witemxtr.sap_hmnia =''))
                  if  (witemxtr.hmnia  > dapo) ;
                      goto nextwoves
                  move witemxtr.recnum to irec
                  move dapo to witemxtr.sap_hmnia
                  saverecord witemxtr
                  move 1 to iint
                  nextwoves:
                      Set Label Of frmShow to ('É†ò°†§„©ú†™' + '-' + String(witemxtr.recnum)+'-'+String(witemxtr.hmnia))
                      if (iint=1) begin
                         clear witemxtr
                         move irec to witemxtr.recnum
                      end
                      move 0 to iint
                      find Gt witemxtr by index.4
              Loop
                if (not(err)) begin
                   Send Info_Box 'Ü ú•òö‡ö„ ©´¶†ÆúÂ‡§ ¶¢¶°¢û®Èüû°ú\náò ô®úÂ´ú ´ò ò®ÆúÂò ©´¶ C:/' 'è¢û®¶≠¶®Âò'
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

    Object btnPartl is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Bitmap to "Filesys3.bmp"
        Set Size to 22 25
        Set Location to 170 2
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "ãú´ò≠¶®· ©´· èò®òöÈ£ú§ò Ä®ÆúÂò"
        Procedure OnClick
        //     send activate_vwsap
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPartl


    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    //AB-StoreEnd

End_Object    // vsap99


//AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
