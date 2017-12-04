//AB/ Project Vsap:eksagogh eggrafon gia Sap
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Vsap:eksagogh eggrafon gia Sap"
//AB/     Set ProjectFileName to "Vsap.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Vsap is a dbViewSubs
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
//     btnPartl is a ButtonSub
//     frmPath is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     oDirectoryPicker is a OLEDPDlg

// Register all objects
Register_Object ButtonSub1
Register_Object btnekt
Register_Object btnMetasx
Register_Object btnPartl
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
Register_Object Vsap


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
use     ranal90.rv
use     rapoth.rv
use     ranald.rv
open    itemtehn
open    itemd
Use     Keimeno.dg
Open    Tmplg
use     saprep.rv
open    wflagkin
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
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

ACTIVATE_VIEW Activate_Vsap FOR Vsap

Object Vsap is a dbViewSubs

    //AB-StoreTopStart
                                                
    Property Integer piLathi    Public 0
    property integer piepil     public 0
    Property Integer piSfalma   Public 0
    
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

    Set Label to "Ñ•òö‡ö„ Ä®ÆúÂ‡§ ö†ò ö‚≠¨®ú™ £ú SAP (vSap.vw)"
    Set Size to 245 405
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
        Set Location to 146 11
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                
        Set TooltipValue to "Ñßú•ú®öò©Âò Ñöö®ò≠È§"
        
        Procedure Deixe_Ta_Lathi
            Integer liLathi
            Set piLathi to 0
            send Delete_Data to (EditSub1(Keimeno(Self)))
            send read to (EditSub1(Keimeno(Self))) 'C:\SapAFM.txt'
            Send popup to (Keimeno(Self))
        End_Procedure
        
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
            Clear tmpSap
            Move dapo to tmpSap.Date
            Find Eq tmpSap By Index.1
            If ((Found) And (tmpSap.Kleidomeno=1)) begin
                send info_box 'Ü Ü£/§Âò Ä¨´„ úÂ§ò† °¢ú†õ‡£‚§û' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
            Get fiSapOK Of vwSap dApo to iOK
            If (iOK<>0) Begin
                If (iOK=1)      Send Info_Box 'ìß·®Æú† ß®¶öú§‚©´ú®û û£ú®¶£û§Âò ò§¶†Æ´„' 'è¢û®¶≠¶®Âò'
                Else If (iOK=2) Send Info_Box 'Ü û£ú®¶£û§Âò ò¨´„ úÂ§ò† „õû °¢ú†õ‡£‚§û' 'è¢û®¶≠¶®Âò'
                Else If (iOK=3) Send Info_Box 'è®¶°Áß´ú† °ú§Ê û£ú®¶£û§†È§.\nâ·ß¶†ò ß®¶ûö¶Á£ú§û ÉÑå ‚´®ú•ú' 'è¢û®¶≠¶®Âò'
                Else If (iOK=4) Send Info_Box 'ìß·®Æú† £ú´òöú§‚©´ú®û û£ú®¶£û§Âò' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
        
            Get YesNo_Box 'Ä®ÆÂùú† û Ñßú•ú®öò©Âò Ñöö®ò≠È§ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
            If (RetVal =MBR_yes) begin
                Zerofile TmpclSap
                Zerofile TmpAxio
                Zerofile Tmppol
                Zerofile Tmpapoth
                Zerofile Tmptehn
                Zerofile Tmpanal
                begin_transaction
                    Send enhmerose_axio
                    Send Enhmerose_polhseis
                    Send enhmerose_apoth
                    Send enhmerose_itemtehn
                    Send enhmerose_anal
                    Set piLathi to 0
                    Direct_Output Channel 7 'C:\SapAFM.txt'
                    Send Ftiakse_Pelates
                    Close_Output Channel 7
                    If (piLathi(Self)<>0) Begin
                        Send Deixe_Ta_Lathi
                        Get YesNo_Box 'ìß„®•ò§ ¢ò§üò©£‚§ò Äîã.\Ä§ ©¨§úÆÂ©‡, ´ò Äîã ò¨´· üò ßú®·©¶¨§ £ú ãûõú§†°· ©´¶ SAP.\nåò ©¨§úÆÂ©‡ ?' to iYes
                        If (iYes=MBR_NO) Begin
                            Move MBR_NO to RetVal
                            Abort_Transaction
                        End
                    End
                    If (RetVal=MBR_YES) Begin
        
                    End
                // íú©´·®¶¨£ú ´¶ fi2 ö†ò ßú®†´´‚™ úöö®ò≠‚™ ´®Ê£ßò™
        
                end_transaction
                Unlock
                Close_Output Channel 7
                send check_the_records
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
        
        
        Procedure Ftiakse_Pelates
             string srecr scode sstr stomeas
             integer Imet Ikod isok Inum
        
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos tomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear clients
             set piLathi to 0
             move 0 to imet
             move syscurxr.company_code to clients.company_code
             find gt clients by index.11
             while ((found) and (clients.sap_hmnia=''))
                IF ((syscurxr.company_code=clients.company_code) and;
                                (clients.status <'2')) BEGIN
                    IF (clients.client_fpa=1) goto next_clients
                    clear TmpclSap
                    move 'FI1'                              to TmpclSap.onoma
                    move '01'                               to TmpclSap.typos
                    move 'idy1'                             to TmpclSap.etairia
                    clear branch
                    move syscurxr.company_code to branch.company_code
                    move syscurxr.branch_code  to branch.branch_code
                    find eq branch by index.1
                    move branch.egkatastash    to TmpclSap.branch_site
             //       move stomeas                            to TmpclSap.branch_site
                         if (clients.status='' ) move '0'   to TmpclSap.type
                    else if (clients.status='1') move '1'   to TmpclSap.type
        
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
                    if (clients.is_xondr='1')     move '1'      to Tmpclsap.anal
                    else                          move '2'      to Tmpclsap.anal
        
        
                         if (clients.npdd         ='1') move 'B4'   to Tmpclsap.category
                    else if (clients.custprom_code='1') move 'B3'   to Tmpclsap.category
                    else if (clients.is_xondr     ='1') move 'B1'   to Tmpclsap.category
                    else                                move 'B2'   to Tmpclsap.category
        
                    move clients.client_afm                         to Tmpclsap.afm
                    Get Validate_Afm tmpCLSAP.AFM tmpCLSAP.oldcode  to isOk
                    If (isOK=0) Move '000000000'                    to Tmpclsap.afm
        
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
                    move (trim(clients.client_add_no))      to Tmpclsap.add_no
                    move (trim(clients.client_zipcode))     to Tmpclsap.zipcode
        
                    If (length(trim(tmpclsap.zipcode))<>5) Move '00000' to Tmpclsap.zipcode
                    move (trim(clients.client_phone))       to Tmpclsap.telfax
                    move 'GR'                               to Tmpclsap.country
                    move 'EL'                               TO Tmpclsap.language
                    saverecord Tmpclsap
                    add 1 to Imet
                    Set Label Of frmShow to ('èú¢·´ú™' + '-' + String(iMet)+'-'+String(scode))
                END
                NEXT_CLIENTS:
                find gt clients by index.11
            Loop
            clear TmpclSap
            move 'FI1'                              to TmpclSap.onoma
            move 90                                 to TmpclSap.typos
            move 'idy1'                             to TmpclSap.etairia
            move stomeas                            to TmpclSap.branch_site
            move Imet                               to Tmpclsap.afm
            move 'GR'                               to Tmpclsap.country
            move 'EL'                               TO Tmpclsap.language
            saverecord Tmpclsap
        End_Procedure
        
        Procedure enhmerose_axio
        
        
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo stomeas  lsTheAppPath
             integer Imet Ikod ienhsap iVal
             number nmetrhta nepitages nsynal nembasma nposo
             date dapo ddate dkenhdate
             string soroi sclient msgstr sclientid
             get value of frmapo to dapo
             move '01/01/2005' to ddate
             move '01/01/1753' to dkenhdate
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos yomea
        
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
        
             clear cmoves
             find gt cmoves by 16
             while ((found) and (cmoves.sap_hmnia=''))
                move '' to sclientid
                move 0 to ienhsap
                if  (cmoves.cmoves_hmnia  > dapo);
                    goto nextcmoves
                if (cmoves.barticl_recr='');
                    goto nextcmoves
                if (syscurxr.company_code<>cmoves.company_code);
                    goto nextcmoves
        
                //gts 03-12-07 â†§„©ú†™ ß¶¨ úÂ§ò† locked °ò† û û£/§Âò ´û™ °Â§û©û™ ú†©ß®·•ú‡§ => ´û™ û£/§Âò™
                //°¢ú†õÈ£ò´¶™ ß®‚ßú† §ò ß®¶©ßú®§†¶Á§´ú
                if (cmoves.barticl_recr<>'') begin
                    clear barticl
                    move cmoves.barticl_recr to barticl.barticl_recr
                    find eq barticl by index.2
                    if (found) begin
                       if (SYSFILE.serial_number='1');
                            If (barticl.ekkremes=1) goto nextcmoves
                        relate barticl
                        if (btypkin.locked=1) begin
                            if (btypkin.locked_date<>'');
                                if (cmoves.cmoves_hmnia ge btypkin.locked_date);
                                    goto nextcmoves
                        End
                    end
                End
                clear branch
                move Cmoves.company_code    to branch.company_code
                move cmoves.branch_code     to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash     to sperioxh
                move branch.egkatastash     to segkatastash
        
                clear TmpAxio
                move 'FI3'                              to Tmpaxio.onoma
                move '01'                               to Tmpaxio.typos
                move 'idy1'                             to Tmpaxio.etairia
                move segkatastash                       to Tmpaxio.perioxh
                move segkatastash                       to Tmpaxio.egkatastash
                move segkatastash                       to Tmpaxio.tomeas
        
                relate cmoves
                if (clients.is_xondr='1');
                     move '01' to Tmpaxio.anal
                else;
                     move '02' to Tmpaxio.anal
        
                if ((clients.status='') and (clients.sap_hmnia<=ddate)) begin
                    move 1 to ienhsap
                    move cmoves.client_id to sclientid
                    if (clients.client_ptyppar='') begin
                       move 'Éú§ ‚Æú† ¶®†©üúÂ ßò®ò©´ò´†°Ê ©´¶§ èú¢·´û = ' to msgstr
                       append msgstr clients.client_id
                       error 3330 msgstr
                    end
                    if (clients.client_ptyppar='100') begin
                            move '' to msgstr
                            if (clients.is_xondr<>'1') begin
                                move 'ä·ü¶™ ©´¶ ßò®ò©´ò´†°Ê/Flag ©´¶§ ßú¢·´û =' to msgstr
                                append msgstr clients.client_id
                                error 3333 msgstr
                            end
                    end
                    else begin
                            if (clients.client_ptyppar<>'113') begin
                                move 'ä·ü¶™ ©´¶ ßò®ò©´ò´†°Ê/Flag ©´¶§ ßú¢·´û =' to msgstr
                                append msgstr clients.client_id
                                error 3334 msgstr
                            end
                    end
                end
        
                move (trim(ctypkin.sub))                to stype
                if (stype='');
                    goto nextcmoves
                insert 'B' in stype at 1
                move (trim(stype))                      to Tmpaxio.type
        
                clear bmove
                move cmoves.custprom_code to bmove.bmove_recr
                find eq bmove by index.2
                move bmove.barticl_no                   to Tmpaxio.arithmos
                move cmoves.cmoves_hmnia                to Tmpaxio.hmnia
                move '' to sper
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
                If ((tmpaxio.type = 'B200') or (tmpaxio.type = 'B201')) BEGIN
                   if (btypkin.gplan_code_apo1 <> '') begin
                       clear tmppol
                       move 'FI2'                              to TmpPol.onoma
                       move '01'                               to TmpPol.typos
                       move 'idy1'                             to TmpPol.etairia
                       move segkatastash                       to TmpPol.perioxh
                       move segkatastash                       to TmpPol.egkatastash
                       move segkatastash                       to TmpPol.tomeas
                       move btypkin.btypkin_descr              to tmppol.descr
                       move tmpaxio.type                       to tmppol.type
                       move tmpaxio.arithmos                   to Tmppol.arithmos
                       move tmpaxio.hmnia                      to Tmppol.hmnia
                       MOVE barticl.sxolia1                    to tmppol.sxolia
                       move ''                                 to Tmppol.kodikos
                       move tmpaxio.axia                       to Tmppol.axia
                       if (Tmppol.axia <> 0) begin
                           if (cmoves.cmoves_p0 <> 0);
                               move '_'                        to Tmppol.kinhsh
                           if (cmoves.cmoves_p0 < 0);
                               move '-'                        to Tmppol.sign
                           if (cmoves.cmoves_x0 <> 0);
                               move ''                        to Tmppol.kinhsh
                           if (cmoves.cmoves_x0 < 0);
                               move '-'                        to Tmppol.sign
                        end
        
                        move (trim(tmpaxio.code))              to Tmppol.code
                        move tmpaxio.anal                      to Tmppol.kodikos2
                        move tmpaxio.apodekths                 to Tmppol.name
                        Clear Tperga
                        move barticl.cn_code  to tperga.cn_code
                        find gt tperga by index.1
                        while ((found) and (barticl.cn_code=tperga.cn_code))
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
                        move  0 to tmppol.recnum
                        if (tmpaxio.type='B200');
                            move '00001' to tmppol.kodikos
                        else if (tmpaxio.type='B201');
                            move '00002' to tmppol.kodikos
               //         move btypkin.gplan_code_apo1            to Tmppol.kodikos
                        move ''                                 to tmppol.code
                        move '03' to tmppol.typos
                        saverecord tmppol
        
                   End
                End
                else begin
                    saverecord TmpAxio
                    add 1 to Imet
                end
        
                nextcmoves:
                Set Label Of frmShow to ('Ä•†Êö®ò≠ò' + '-' + String(iMet)+'-'+String(cmoves.cmoves_hmnia))
                if (ienhsap=1) begin
                    clear clients
                    move sclientid to clients.client_id
                    find eq clients by index.6
                    if (found=1) begin
                        move dkenhdate to clients.sap_hmnia
                        saverecord clients
                    end
                end
                find gt cmoves by 16
        
             Loop
        
        
        
        
            clear TmpAxio
            move 'ÖÖÖÖ'                             to Tmpaxio.EGKATASTASH
            move ''                                 to tmpaxio.anal
            move 'FI3'                              to Tmpaxio.onoma
            move '90'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            MOVE STOMEAS                            to Tmpaxio.perioxh
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '1'                                to Tmpaxio.perigrafh
            move nmetrhta                           to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
            clear TmpAxio
            move 'ÖÖÖÖ'                             to Tmpaxio.EGKATASTASH
            move 'FI3'                              to Tmpaxio.onoma
            move ''                                 to tmpaxio.anal
             MOVE STOMEAS                           to Tmpaxio.perioxh
            move '91'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '2'                                to Tmpaxio.perigrafh
            move nepitages                          to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
            clear TmpAxio
            move 'ÖÖÖÖ'                             to Tmpaxio.EGKATASTASH
            move 'FI3'                              to Tmpaxio.onoma
            move '92'                               to Tmpaxio.typos
            move ''                                 to tmpaxio.anal
            move 'idy1'                             to Tmpaxio.etairia
            MOVE STOMEAS                            to Tmpaxio.perioxh
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move '3'                                to Tmpaxio.perigrafh
            move nsynal                             to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
            clear TmpAxio
            move 'ÖÖÖÖ'                             to Tmpaxio.EGKATASTASH
            move 'FI3'                              to Tmpaxio.onoma
        
            move '93'                               to Tmpaxio.typos
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move ''                                 to tmpaxio.anal
            MOVE STOMEAS                            to Tmpaxio.perioxh
            move '9999999999'                       to Tmpaxio.arithmos
            move '4'                                to Tmpaxio.perigrafh
            move nembasma                           to Tmpaxio.axia
            move 'EUR'                              To Tmpaxio.nomisma
            saverecord TmpAxio
        
            clear TmpAxio
            move 'ÖÖÖÖ'                             to Tmpaxio.EGKATASTASH
            move 'FI3'                              to Tmpaxio.onoma
            move '94'                               to Tmpaxio.typos
            move ''                                 to tmpaxio.anal
            MOVE STOMEAS                            to Tmpaxio.perioxh
            move 'idy1'                             to Tmpaxio.etairia
            move '9999'                             to Tmpaxio.type
            move '9999999999'                       to Tmpaxio.arithmos
            move imet                               to Tmpaxio.axia
            saverecord TmpAxio
        
        End_Procedure
        
        
        Procedure enhmerose_polhseis
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo SSIGN sptyp
             string stomeas soroi scmoves skod sitem spar sparast skodikos sclientid spmsrecr  spartlrecr
             NUMBER npartlfpa npmsfpa
             integer Imet Ikod  irecnum  ino ienhsap iarnhtika
             number  ntot nfpa nnet nqty nhqty
             date dapo ddate dkenhdate
             string msgstr
             move '01/01/2005' to ddate
             move '01/01/1753' to dkenhdate
             clear tmppol
             find gt tmppol.recnum
             while (found)
                if (tmppol.typos='01');
                    add tmppol.axia to ntot
                find gt tmppol.recnum
             Loop
             get value of frmapo to dapo
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos yomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear Particle
             find gt particle by 17
             while ((found) and (particle.sap_hmnia = ''))
                if  (particle.partl_hmnia  > dapo);
                    goto nextpmoves
                if (syscurxr.company_code<>particle.company_code);
                    goto nextpmoves
                if (particle.partl_no < 1);
                    goto nextpmoves
                move '' to sclientid
                move 0 to ienhsap
                clear tempitem
                find gt tempitem.recnum
                while (found)
                    delete tempitem
                    find gt tempitem.recnum
                Loop
        
                clear tmplg
                find gt tmplg.recnum
                while (found)
                    delete tmplg
                    find gt tmplg.recnum
                Loop
                move 0 to npartlfpa
                move 0 to npmsfpa
                clear branch
                move particle.company_code to branch.company_code
                move particle.branch_code  to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash        to sperioxh
                move branch.egkatastash        to segkatastash
                move particle.partl_recr                to srecr
             //   move particle.partl_vatam      to npartlfpa
                clear TmpPol
                MOVE '' to  ssign
                move 'FI2'                              to TmpPol.onoma
                move '01'                               to TmpPol.typos
                move 'idy1'                             to TmpPol.etairia
                move segkatastash                       to TmpPol.perioxh
                move segkatastash                       to TmpPol.egkatastash
                move segkatastash                       to TmpPol.tomeas
                relate Particle
                if (trim(ptyppar.sap)='');
                    goto nextpmoves
                IF (clients.client_fpa=1);
                    goto nextpmoves
        
        
                move (trim(ptyppar.ptyppar_descr))      to Tmppol.descr
                move (trim(Ptyppar.ptyppar_code))       to stype
                move '' to spartlrecr
                move '' to sptyp
                if (ptyppar.sub='1') insert 'C' in stype at 1
                else insert 'B' in stype at 1
                if (stype<>'C') begin
                    clear psxetika
                    move particle.partl_recr to spartlrecr
                    move spartlrecr to psxetika.psx_partl_recr
                    find gt psxetika by index.3
                    while ((found) and (spartlrecr=psxetika.psx_partl_recr))
                        move psxetika.ptyppar_code to sptyp
                        clear ptypparl
                        move particle.company_code to ptypparl.company_code
                        move particle.branch_code  to ptypparl.branch_code
                        move sptyp                 to ptypparl.ptyppar_code
                        find eq ptypparl by index.1
                        if (found) begin
                           if (ptypparl.sub='1') begin
                                move '' to stype
                                move (trim(Ptyppar.ptyppar_code))       to stype
                                insert 'C' in stype at 1
                           end
                        End
                        find gt psxetika by index.3
                    Loop
        
                end
                move (trim(stype))                      to Tmppol.type
                move '' to spar
             // move particle.pseira_seira              to tmppol.item_descr
                move particle.partl_no                  to Tmppol.arithmos
                move Particle.Partl_hmnia               to Tmppol.hmnia
                MOVE PARTICLE.AITIOL                    to tmppol.sxolia
                move ''                                 to Tmppol.kodikos
                move Particle.partl_payam               to Tmppol.axia
                add Tmppol.axia                         to ntot
                move (trim(Particle.client_id))         to scode
                move Particle.partl_totamad             to Tmppol.posonet
                move '' to skodikos
                if (Tmppol.axia <> 0) begin
                    move particle.cmoves_recr           to scmoves
                    clear cmoves
                    move scmoves to cmoves.cmoves_recr
                    find eq cmoves by index.2
                    if (cmoves.cmoves_p0 <> 0);
                        move 'è'                        to Tmppol.kinhsh
                    if (cmoves.cmoves_p0 < 0) begin
                        move '-'                        to Tmppol.sign
                        move '-'                        to ssign
                    end
                    if (cmoves.cmoves_x0 <> 0);
                        move 'ï'                        to Tmppol.kinhsh
                    if (cmoves.cmoves_x0 < 0) begin
                        move '-'                        to Tmppol.sign
                        move '-'                        to ssign
                    end
                end
                Move (Right(scode, Ikod))               To scode
                move (replaces('.',scode,'')) to scode
                insert '01' in scode at 1
                if (Sysfile.Client_Digits<6);
                    insert '0' in scode at 5
                move (trim(scode))                      to Tmppol.code
                Relate Particle
                if (clients.is_xondr='1')     move '1'     to skodikos
                else                          move '2'     to skodikos
        
                if (clients.is_xondr='1')     move '01'     to Tmppol.kodikos2
                else                          move '02'     to Tmppol.kodikos2
                if ((particle.ptyppar_code='100') or (particle.ptyppar_code='113')) begin
                    if (particle.ptyppar_code<>clients.client_ptyppar) begin
                       move 'èò®ò©´ò´†°Ê <> òßÊ Ê´† ¶®Â©´û°ú ©´¶§ èú¢·´û. èò®ò©´ò´†°Ê = ' to msgstr
                       append msgstr tmppol.arithmos
                       error 5690 msgstr
                    end
                End
                if ((clients.status='') and (clients.sap_hmnia<=ddate)) begin
                    move 1 to ienhsap
                    move Particle.client_id to sclientid
                    if (clients.client_ptyppar='') begin
                        move 'Éú§ ‚Æú† ¶®†©üúÂ ßò®ò©´ò´†°Ê ©´¶§ èú¢·´û = ' to msgstr
                        append msgstr clients.client_id
                        error 4330 msgstr
                    end
                    if (clients.client_ptyppar='100') begin
                            move '' to msgstr
                            if (clients.is_xondr<>'1') begin
                                move 'ä·ü¶™ ©´¶ ßò®ò©´ò´†°Ê/Flag ©´¶§ ßú¢·´û =' to msgstr
                                append msgstr clients.client_id
                                error 4333 msgstr
                            end
                    end
                    else begin
                        if (clients.client_ptyppar<>'113') begin
                            move 'ä·ü¶™ ©´¶ ßò®ò©´ò´†°Ê/Flag ©´¶§ ßú¢·´û =' to msgstr
                            append msgstr clients.client_id
                            error 4334 msgstr
                        end
                    end
                end
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
                move 0 to iarnhtika
                clear pmoves
                move srecr to pmoves.partl_recr
                find gt pmoves by index.3
                while ((found) and (srecr=pmoves.partl_recr))
                    clear TmpPol
                    move 'FI2'                              to TmpPol.onoma
                    move '03'                               to TmpPol.typos
                    move 'idy1'                             to TmpPol.etairia
                    move segkatastash                       to TmpPol.perioxh
                    move segkatastash                       to TmpPol.egkatastash
                    move segkatastash                       to TmpPol.tomeas
                    move (trim(stype))                      to Tmppol.type
                    move ssign                              to tmppol.sign
                    move pmoves.partl_no                    to Tmppol.arithmos
                    move Pmoves.Partl_hmnia                 to Tmppol.hmnia
                    move pmoves.pms_unitprice               to tmppol.unitpr
                    move iarnhtika                          to tmppol.neo
                    Relate Pmoves
                    move '' to skod
                    move (trim(wapokat.gl))                 to skod
                    IF (pmoves.pms_status_e=1);
                        move '1'                            to skod
                    insert ptyppar.sap in skod at 2
                    move skodikos to sstr
                    insert sstr              in skod at 3
                    insert Item.link2        in skod at 4
                    if (particle.skopos_diakin='9') move '2' to sstr
                    else                            move '1' to sstr
                    insert sstr              in skod at 5
                    if (trim(wapokat.gl)='') begin
                        move 'Éú§ ‚Æú† ¶®†©üúÂ ¶ °‡õ†°Ê™ SAP ©´†™ Äß¶ü„°ú™ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                        append msgstr tmppol.arithmos
                        error 4441 msgstr
                    End
                    if (trim(item.link2)='') begin
                        move 'Éú§ ‚Æú† ¶®†©üúÂ ¶ °‡õ†°Ê™ ëÁ§õú©û™ SAP ©´¶ ÑÂõ¶™ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                        append msgstr tmppol.arithmos
                        error 4443 msgstr
                    End
                    move skod                               to Tmppol.kodikos
                    move Pmoves.pms_amaftdisc               to Tmppol.axia
               //     add  pmoves.pms_vatam                   to npmsfpa
                    move Pmoves.pms_VATAM                   to Tmppol.POSOFPA
                    add  Tmppol.axia                        to nnet
                    move 'B'                                to sitem
                    IF (pmoves.pms_status_e=1);
                        move 'G'                            to sstr
                    else;
                        move wapokat.sap_descr              to sstr
                    insert sstr in sitem at 2
                    if (trim(wapokat.sap_descr)='') begin
                        move 'Éú§ ‚Æú† ¶®†©üúÂ ¶ °‡õ†°Ê™ SAP ©´„§ âò´ûö¶®Âò ÑÂõ¶¨™ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                        append msgstr tmppol.arithmos
                        error 4459 msgstr
                    End
                    insert 'O' in sitem at 3
                    insert item.sap in sitem at 4
                    if (trim(item.sap)='') begin
                        move 'Éú§ ‚Æú† ¶®†©üúÂ ¶ °‡õ†°Ê™ SAP ÑÂõ¶¨™ ©´Ê ÑÂõ¶™ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                        append msgstr tmppol.arithmos
                        error 4446 msgstr
                    End
                    if (pmoves.wapokat_code='05') begin
                        clear tmplg
                        move item.sap to tmplg.company_code
                        move  Pmoves.pms_VATAM to tmplg.gmove_x0
                        saverecord tmplg
                    end
                    string spinak
                    move '' to spinak
                    move sitem                              to tmppol.apoth
                    move pmoves.pms_qty                     to Tmppol.qty
                    move pmoves.wapokat_code                to tmppol.wapokat_code
                    move pmoves.sx_arithmos                 to Tmppol.sxetiko
                    move item.item_code                     to Tmppol.item
                    move item.item_descr                    to Tmppol.item_descr
                    move Units.Units_Descr                  to Tmppol.mm
                    if (trim(pmoves.car_id)<>'')  begin
                        Clear Cars
                        move (trim(pmoves.car_id))  to Cars.car_id
                        Find eq Cars by index.2
                        Move (Append(spinak,(cars.car_what+'_'+cars.car_lc+cars.car_ln)))  to spinak
                        if ((cars.car_what='') and (cars.car_ln=''));
                            move '' to spinak
                        MOVE SPINAK to Tmppol.pinakida
        
                        If (trim(cars.ctype_id)='1');
                            move '1' to Tmppol.kathgoria
                        else if (trim(cars.ctype_id)='2');
                            move '2' to Tmppol.kathgoria
                        else if (trim(cars.ctype_id)='3');
                            move '3' to tmppol.kathgoria
                        else;
                            move '4' to tmppol.kathgoria
                    end
                    if (pmoves.wapokat_code='04') begin
                        move '' to tmppol.pinakida
                        move '' to tmppol.kathgoria
                    end
                    if (pmoves.wapokat_code='05') begin
                        move '' to tmppol.kathgoria
                        move pmoves.pump_id to pumps.pump_id
                        find eq pumps by index.3
                        if (found=1) begin
                            MOVE '' to spinak
                            Move (Append(spinak,(pumps.pump_what+pumps.pump_lc+pumps.pump_ln))) to spinak
                            move spinak to Tmppol.pinakida
                         end
                         If (trim(pumps.ctype_id)='1');
                            move '1' to Tmppol.antlhsh
                         else if (trim(pumps.ctype_id)='2');
                            move '2' to Tmppol.antlhsh
                         else if (trim(pumps.ctype_id)='4');
                            move '3' to Tmppol.antlhsh
                         else move '' to tmppol.antlhsh
                    END
                    move soroi                              to Tmppol.Oroi
                    move (abs(pmoves.pms_vatpct))           to Tmppol.fpa
                    move 'EUR'                              To Tmppol.nomisma
                    move particle.aitiol                    to tmppol.sxolia
                    saverecord Tmppol
                    add 1 to imet
                    if (pmoves.wapokat_code='05') begin
                        clear tempitem
                        move tmppol.recnum to tempitem.wcmove_qty_eisa
                        move '1' to tempitem.wcmove_status_e
                        move item.sap to tempitem.witemx_code
                        move soroi to tempitem.client_id
                        move (abs(pmoves.pms_vatpct))           to Tempitem.company_code
                        move Units.Units_Descr to tempitem.branch_code
                        move pmoves.pms_qty                     to tempitem.wcmove_qty
                        move Pmoves.pms_amaftdisc               to tempitem.wcmove_axia
                        move Pmoves.pms_VATAM                   to Tempitem.wcmove_qty_exa
                        saverecord tempitem
                    end
                    Set Label Of frmShow to ('è‡¢„©ú†™' + '-' + String(iMet)+'-'+String(Tmppol.arithmos))
                    find gt pmoves by index.3
                Loop
        
                move 0                                  to tmppol.recnum
                
                // 04/05/2011
                //move particle.partl_vatam               to Tmppol.axia
                move particle.Total_Vat_Poso            to Tmppol.axia
                
                add Tmppol.axia                         to nfpa
                move segkatastash                       to TmpPol.perioxh
                move ''                                 to tmppol.code
                move ''                                 to tmppol.kodikos2
                move ''                                 to tmppol.apoth
                move 0                                  to tmppol.qty
                move 0                                  to tmppol.unitpr
                move ''                                 to tmppol.mm
                move ''                                 to tmppol.kathgoria
                move ''                                 to tmppol.pinakida
                move ''                                 to tmppol.ANTLHSH
                move 0                                  to tmppol.posofpa
                move ''                                 to tmppol.item
                move ''                                 to tmppol.wapokat_code
                move ''                                 to tmppol.sxetiko
                move '05'                               to TmpPol.typos
                move '' to tmppol.kodikos
                saverecord Tmppol
                add 1 to imet
                clear Psxetika
                move srecr to Psxetika.partl_recr
                Find gt Psxetika by index.4
                while ((found) and (srecr=Psxetika.partl_recr))
                        move 0                              to tmppol.recnum
                        move '06'                           to TmpPol.typos
                        move segkatastash                   to TmpPol.perioxh
                        move 0                              to tmppol.axia
                        move ''                             to tmppol.oroi
                        move ''                             to tmppol.nomisma
                        move 0                              to Tmppol.posofpa
                        move 0                              to Tmppol.fpa
                        move ''                             to tmppol.item
                        move ''                             to tmppol.wapokat_code
                        move ''                             to tmppol.sxolia
                        move ''                             to tmppol.sxetiko
                        move '' to sparast
                        move psxetika.sx_pseira_seira       to sparast
                        append sparast Psxetika.sx_partl_no
                        move sparast                        to Tmppol.deltia
                        move psxetika.psx_partl_recr        to Tmppol.sxrecr
                        Clear pmovesl
                        move tmppol.sxrecr to pmovesl.partl_recr
                        find gt pmovesl by index.3
                        while ((found) and (tmppol.sxrecr=pmovesl.partl_recr))
                            if (pmovesl.wapokat_code='05') begin
                                clear iteml
                                move pmovesl.item_code to iteml.item_code
                                find EQ iteml by index.5
                                move iteml.sap to Tmppol.item
                                move pmovesl.pms_qty to tmppol.qty
                                clear pumps
                                move pmovesl.pump_id to pumps.pump_id
                                find eq pumps by index.3
                                if (found=1) begin
                                    MOVE '' to spinak
                                    Move (Append(spinak,(pumps.pump_what+pumps.pump_lc+pumps.pump_ln))) to spinak
                                    move spinak to Tmppol.pinakida
        
                                end
                                If (trim(pumps.ctype_id)='1');
                                    move '1' to Tmppol.antlhsh
                                else if (trim(pumps.ctype_id)='2');
                                    move '2' to Tmppol.antlhsh
                                else if (trim(pumps.ctype_id)='4');
                                    move '3' to Tmppol.antlhsh
                                else move '' to tmppol.antlhsh
                                move '' to tmppol.kathgoria
                                clear tempitem
                                move '2' to tempitem.wcmove_status_e
                                move (trim(iteml.sap)) to tempitem.witemx_code
                                move (trim(spinak)) to tempitem.item_code
        
                                move (trim(tmppol.antlhsh)) to tempitem.year_year
                                find eq tempitem by index.4
                                if (found) begin
                                    add  pmovesl.pms_qty to tempitem.wcmove_qty
                                    saverecord tempitem
                                end
                                else begin
                                    move '2' to tempitem.wcmove_status_e
                                    move iteml.sap to tempitem.witemx_code
                                    move pmovesl.pms_qty                   to tempitem.wcmove_qty
                                    move Pmovesl.pms_amaftdisc             to tempitem.wcmove_axia
                                    move Pmovesl.pms_VATAM                 to Tempitem.wcmove_qty_exa
                                    saverecord tempitem
                                end
                            end
                            find gt pmovesl by index.3
                        Loop
                        add 1 to imet
                        saverecord Tmppol
                    find gt Psxetika by index.4
                Loop
        
                // úõ‡ úÆú† õ†ò£¶®≠‡üúÂ ´¶ ò®Æú†¶ £ú úöö®ò≠ú™ 1 °ò† 2
                // 1 ò®Æ†°„ úöö®ò≠„ °ò† 2= ´ò õÁ¶ ¶Æ„£ò´ò
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
                        move 0 to npartlfpa
                        integer iTrecnum
                        move 0 to itrecnum
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
                                Move (ROUnD_number(((tmppol.axia*tmppol.fpa)/100),2))  to tmppol.posofpa
                                move tempitel.item_code to tmppol.pinakida
                                move tempitel.year_year to tmppol.antlhsh
                                add 1 to imet
                                saverecord tmppol
                                add tmppol.posofpa to npartlfpa
                                move tmppol.recnum to itrecnum
                            end
                            find gt tempitel by index.4
        
                        Loop
                        clear tmplg
                        move sitem to tmplg.company_code
                        find ge tmplg by index.1
                        while ((found) and (tmplg.company_code=sitem))
                            if (tmplg.gmove_x0 <> npartlfpa) begin
                                clear tmppol
                                move itrecnum to tmppol.recnum
                                find eq tmppol.recnum
                                move (tmplg.gmove_x0-npartlfpa) to npartlfpa
                                add npartlfpa to tmppol.posofpa
                                saverecord tmppol
                            end
                            find gt tmplg by index.1
                        Loop
                        clear tmppol
                        move irecnum to tmppol.recnum
                        find eq tmppol.recnum
                        if (found) begin
                            delete tmppol
                            sub 1 from imet
                        end
                    end
                    find gt tempitem by index.4
                Loop
                nextpmoves:
                Set Label Of frmShow to ('è‡¢„©ú†™' + '-' +string(particle.partl_hmnia)+'-'+String(particle.recnum))
                if (ienhsap=1) begin
                    clear clients
                    move sclientid to clients.client_id
                    find eq clients by index.6
                    if (found=1) begin
                        move dkenhdate to clients.sap_hmnia
                        saverecord clients
                    end
                end
                find gt Particle by 17
             Loop
        
             clear Tmppol
             move 'FI2'                              to Tmppol.onoma
             move '90'                               to Tmppol.typos
             move 'idy1'                             to Tmppol.etairia
             move '9999'                             to Tmppol.type
             move '9999999999'                       to Tmppol.arithmos
             move 'ZZZZ'                             to Tmppol.EGKATASTASH
             move sTOMEAS                            to TmpPol.perioxh
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
        
             move 0 to imet
             clear tmppol
             find gt tmppol.recnum
             while (found)
                if ((tmppol.typos='01') or (tmppol.typos='03') or (tmppol.typos='05') or (tmppol.typos='06'));
                    add 1 to imet
                if (tmppol.typos='92') begin
                    move 0                                  to Tmppol.recnum
                    move '93'                               to Tmppol.typos
                    move imet                               to Tmppol.axia
                    move ''                                 to Tmppol.nomisma
                    saverecord Tmppol
                    goto next_loop
                end
                IF (tmppol.typos='06') begin
                   move tmppol.recnum to irecnum
                   if (tmppol.sxrecr<>'') begin
                       clear particle
                       move tmppol.sxrecr to particle.partl_recr
                       find eq particle by index.2
                       if (found) begin
                            if (particle.ptyppar_code<>'099') begin
                                delete tmppol
                                sub 1 from imet
                                clear tmppol
                                move irecnum to tmppol.recnum
                            end
                       end
                    end
                end
                find gt tmppol.recnum
             Loop
             next_loop:
        End_Procedure
        
        Procedure enhmerose_apoth
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo spinak
             string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
             STRING sLetter sEnglish sGreek sid spar msgstr
        
             integer Imet Ikod Ino iLen iFirst iRecnum IINT ipos isygk
             number  ntot nfpa nqty
             date dapo ddate dhdate
             Move 'ABCDEFGHIJKLMNOPRSTUVWXYZ' to sEnglish
             Move 'ÄÅñÉÑîÇÜàçâäãåéèêëíáóëïìÖ' to sGreek
             get value of frmapo to dapo
             move Sysfile.Client_Digits to Ikod
             add 3 to ikod // gia na paroyme kai to AX ektos yomea
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear Wcmoves
             find gt wcmoves by 16
             while ((found) and (wcmoves.sap_hmnia=''))
                if  (wcmoves.wcmove_hmnia  > dapo);
                    goto nextwcmoves
                if (syscurxr.company_code<>Wcmoves.company_code);
                    goto nextWcmoves
                relate Wcmoves
                if (Wcmoves.module_from<>'01');
                    goto nextWcmoves
                if (Wapokat.OXIMM1='1') BEGIN
                    goto nextWcmoves
                END
                ELSE BEGIN
                    if (Wapokat.enhm_sap<>'1');
                        goto nextWcmoves
                end
                if ((Wcmoves.wcmove_qty_eisa=0) and (Wcmoves.wcmove_qty_exa=0));
                    goto nextWcmoves
                if (Wtypkin.wtypkin_anti='');
                    goto nextWcmoves
                move (trim(Wcmoves.client_id))          to scode
                move Wcmoves.Wcmove_recr                to srecr
                clear branch
                move wcmoves.company_code to branch.company_code
                move wcmoves.branch_code  to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash        to segkatastash
                clear Tmpapoth
                move wtypkin.Wtypkin_anti               to Tmpapoth.type
                move 'MM1'                              to Tmpapoth.onoma
                move '01'                               to Tmpapoth.typos
                move segkatastash                       to Tmpapoth.egkatastash
                clear pmoves
                move wcmoves.partl_recr to pmoves.pms_recr
                find eq pmoves by index.2
                if (not(found)) begin
                    move 'Éú§ ô®Â©°‡ recr ©Á§õú©û™ £ú pmoves wcmoves.particle_recr = ' to msgstr
                    append msgstr wcmoves.particle_recr
                    error 4499 msgstr
                End
        
                move pmoves.pseira_seira to spar
                append spar pmoves.partl_no
                move spar                               to Tmpapoth.arithmos
                MOVE '' TO SPINAK
                Clear Cars
                move (trim(pmoves.car_id))  to Cars.car_id
                Find eq Cars by index.2
                Move (trim(Cars.Car_license)) to spinak
                For iInt From 1 to (Length(spinak))
                    Move (Mid(spinak,1,iInt)) to sLetter
                    If (sGREEK Contains sLetter) Begin
                         Move (Pos(sLetter,sgreek)) to iPos
                         Move (Replaces(sLetter,spinak,(Mid(senglish,1,iPos)))) to spinak
                    End
                Loop
        
                move spinak                             to Tmpapoth.pinakida
                move Wcmoves.Wcmove_hmnia               to Tmpapoth.hmnia
                move wtypkin.Wtypkin_anti               to Tmpapoth.type
        
                if (Wtypkin.wtypkin_anti='');
                    goto nextWcmoves
                relate pmoves
                if (particle.skopos_diakin='2');
                    move 'Z17'                          to Tmpapoth.type
                if (particle.skopos_diakin='3');
                    move 'Z15'                          to Tmpapoth.type
                if (clients.anal='1');
                    move 1 to isygk
                else;
                    move 0 to isygk
                Move (Right(scode, Ikod))               To scode
                move (replaces('.',scode,'')) to scode
                insert '01' in scode at 1
                if (Sysfile.Client_Digits<6);
                    insert '0' in scode at 5
                if (wcmoves.client_id='');
                    move '' to scode
                if (trim(scode)<>'') begin
                    if (isygk=1) begin
                        left scode to sid 4
                        append sid '999999'
                        move (trim(sid)) to scode
                    end
                end
                if ((tmpapoth.type='Z17') or (Tmpapoth.type='Z15'));
                    move '' to scode
                if ((tmpapoth.type='Ö17') or (Tmpapoth.type='Ö15'));
                    move '' to scode
                move (trim(scode))                      to Tmpapoth.code
        
                move 'B'                                to sitem
                if (wcmoves.wcmove_status_e=1);
                    move 'G'                            to sti
                else;
                    move wapokat.sap_descr              to sti
                if (trim(wapokat.sap_descr)='') begin
                        move 'Éú§ ‚Æú† ¶®†©üúÂ ¶ °‡õ†°Ê™ SAP ©´„§ âò´ûö¶®Âò ÑÂõ¶¨™ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                        append msgstr tmpapoth.arithmos
                        error 4488 msgstr
                End
                insert sti in sitem at 2
                insert 'O' in sitem at 3
                insert item.sap in sitem at 4
                move sitem                              to Tmpapoth.item
                if (wcmoves.wcmove_qty_eisa<> 0);
                    move (ABS(wcmoves.wcmove_qty_eisa))        to Tmpapoth.qty
                else;
                    move (ABS(wcmoves.wcmove_qty_exa))         to Tmpapoth.qty
                move UNITS.UNITS_DESCR                  to Tmpapoth.monada
                saverecord Tmpapoth
                add 1 to ino
                add 1 to Imet
                nextWcmoves:
                move (trim(wcmoves.wcmove_par)) to sno
                Set Label Of frmShow to ('â†§„©ú†™ Äß¶ü„°û™' + '-' + String(iMet)+'-'+String(sno))
                find gt Wcmoves by 16
             Loop
             move 0                                  to Tmpapoth.recnum
             move ''                                 to Tmpapoth.hmnia
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
             Send StartReport to Rapoth
        End_Procedure
        
        Procedure enhmerose_itemtehn
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo
             string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
             integer Imet Ikod Ino iLen iFirst iRecnum
             number  ntot nfpa nqty
             date dapo
             get value of frmapo to dapo
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear itemtehn
             find gt itemtehn by index.4
             while ((found) and (itemtehn.sap_hmnia=''))
                if  (itemtehn.hmnia  > dapo);
                    goto nextitemtehn
                if (syscurxr.company_code<>itemtehn.company);
                    goto nextitemtehn
                relate itemtehn
                clear branch
                move itemtehn.company to branch.company_code
                move itemtehn.branch  to branch.branch_code
                find eq branch by index.1
                move branch.egkatastash        to segkatastash
                clear Tmptehn
                move 'PP1'                              to Tmptehn.onoma
                move '09'                               to Tmptehn.typos
                move segkatastash                       to Tmptehn.egkatastash
                move itemtehn.hmnia                     to Tmptehn.hmnia
                move 'B'                                to sitem
                clear wapokat
                move item.wapokat_code to wapokat.wapokat_code
                find eq wapokat by index.1
                move wapokat.sap_descr                  to sti
                insert sti in sitem at 2
                insert 'O' in sitem at 3
                insert itemtehn.item_code in sitem at 4
                move sitem                              to Tmptehn.item
                move itemtehn.code                      to tmptehn.prodiagrafh
                move UNITS.UNITS_DESCR                  to Tmptehn.mm
                move '1'                                to tmptehn.type
                clear itemd
                move itemtehn.recr to srecr
                move 0 to Ino
                move srecr to itemd.itemtehn_recr
                find gt itemd by index.5
                while ((found) and (itemd.itemtehn_recr=srecr))
                    add 1 to ifirst
                    add 1 to ino
                    if (ino>1) begin
                        move 0 to tmptehn.recnum
                        saverecord tmptehn
                    end
                    clear iteml
                    move itemd.itemd_code to iteml.item_code
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
                    insert itemd.itemd_code in sitem at 4
                    move sitem                              to Tmptehn.itemd
                    move units.units_descr                  to Tmptehn.mmitemd
                    move itemd.itemd_qty                    to Tmptehn.qty
                    move ino                                to tmptehn.aa
                    move itemd.sap_aa  to sno
                    move sno                                to Tmptehn.index
                    saverecord Tmptehn
                    move (trim(itemd.itemtehn_code)) to sno
                    move itemd.recnum to imet
                    Set Label Of frmShow to ('íúÆ§.è®¶õ†òö®ò≠‚™' + '-' + String(iMet)+'-'+String(sno))
                    find gt itemd by index.5
                Loop
                nextitemtehn:
                move (trim(itemd.itemtehn_code)) to sno
                move itemd.recnum to imet
                Set Label Of frmShow to ('íúÆ§.è®¶õ†òö®ò≠‚™' + '-' + String(iMet)+'-'+String(sno))
                find gt itemtehn by index.4
            Loop
            move 0                                  to Tmptehn.recnum
            move '90'                               to Tmptehn.typos
            move ifirst                             to Tmptehn.type
            move ''                                 to Tmptehn.item
            move ''                                 to Tmptehn.prodiagrafh
            move ''                                 to Tmptehn.mm
            move ''                                 to Tmptehn.egkatastash
            move ''                                 to Tmptehn.itemd
            move 0                                  to Tmptehn.aa
            move ''                                 to Tmptehn.mmitemd
            move 0                                  to Tmptehn.index
            move 0                                  to Tmptehn.qty
            saverecord Tmptehn
        End_Procedure
        
        Procedure enhmerose_anal
             string srecr scode sstr sperioxh segkatastash stype shmnia sper sposo snext
             string stomeas soroi swcmoves sno sitem sti shegkatastash shtype shitem
             string seidos
             integer Imet Ikod Ino itot iFirst iRecnum Icount ifound
             number  ntot nfpa nqty
             date dapo ddate
             move '27/04/2005' to ddate
             string stexnikh  msgstr
             get value of frmapo to dapo
             clear Company
             move syscurxr.company_code to Company.company_code
             find eq company by index.1
             move Company.company_c_code0 to stomeas
             clear witemxtr
             find gt witemxtr by index.4
             while ((found) and (witemxtr.sap_hmnia=''))
                if  (witemxtr.hmnia  > dapo);
                    goto nextanal
                if (syscurxr.company_code<>witemxtr.company_code);
                    goto nextanal
                move witemxtr.recr to srecr
                move '' to snext
                move '' to stexnikh
                clear witemxtd
                move srecr to witemxtd.witemxtr_recr
                find gt witemxtd by index.1
                while ((found) and (witemxtd.witemxtr_recr=srecr))
                    clear branch
                    move witemxtr.company_code to branch.company_code
                    move witemxtr.branch_code  to branch.branch_code
                    find eq branch by index.1
                    move branch.egkatastash                 to segkatastash
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
                    move 0 to icount
                    move sitem                              to Tmpanal.item
        //            move sitem                              to seidos
                    clear anprod
                    move srecr                      to anprod.entolh_recr
                    move witemxtd.witemx_code       to anprod.anprod_form
                    move witemxtd.fpa_from          to anprod.anprod_cartp
                    move witemxtd.texnikh           to anprod.anprod_itemtn
                    find gt anprod by index.4
                    while ((found) and (anprod.entolh_recr=srecr) and;
                          (witemxtd.witemx_code=anprod.anprod_form) and;
                          (witemxtd.fpa_from=anprod.anprod_cartp) and;
                          (witemxtd.texnikh=anprod.anprod_itemtn))
                        add 1 to icount
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
        
        //               integer iok
        //               move 0 to iok
        //               clear tmpanala
        //               move witemxtr.hmnia to tmpanala.hmnia
        //
        //               move '09' to tmpanala.typos
        //               move segkatastash to tmpanala.egkatastash
        //               move witemxtd.witemx_code to tmpanala.item
        //               move anprod.anprod_cartp   to tmpanala.trmetaf
        //               move anprod.anprod_itemtn to Tmpanala.prodiagrafh
        //               find gt tmpanala by index.5
        //               while ((found) and (tmpanala.hmnia=witemxtr.hmnia)          and;
        //                                 (tmpanala.typos='09')                     and;
        //                                 (tmpanala.egkatastash=segkatastash)       and;
        //                                 (tmpanala.item=seidos)                    and;
        //                                 (tmpanala.trmetaf=anprod.anprod_cartp)    and;
        //                                 (anprod.anprod_itemtn=Tmpanala.prodiagrafh))
        //                   move 1 to iok
        //                   if (tmpanala.itemd=sitem) begin
        //                       add anprod.anprod_qty to tmpanal.posoths
        //                       sub 1 from ino
        //                       saverecord tmpanal
        //                   end
        //                   else begin
        //                       move anprod.entolh_recr                 to Tmpanal.product
        //                       saverecord Tmpanal
        //                   end
        //                   find gt tmpanal by index.5
        //               Loop
        //               if (iok=0) begin
        //                  move anprod.entolh_recr to Tmpanal.product
        //                  saverecord tmpanal
        //               end
                        move anprod.entolh_recr to Tmpanal.product
                        saverecord tmpanal
                        move (trim(anprod.anprod_item)) to sno
                        move itemd.recnum to imet
                        Set Label Of frmShow to ('Ü£ú®„©†ú™ âò´ò§ò¢È©ú†™' + '-' + String(iMet)+'-'+String(sno))
                        find gt anprod by index.4
                    Loop
                    if (icount=0) begin
                        move 'Éú§ ô®‚üû°ò§ Ä§ò¢È©ú†™ ©´¶ ÑÂõ¶™ = ' to msgstr
                        append msgstr witemxtd.witemx_code
                        append msgstr ' í.è = '
                        APPEND msgstr witemxtd.texnikh
                        append msgstr ' ìß¶°ò´ = '
                        append msgstr witemxtr.branch_code
                        error 3691 msgstr
                    End
                    find gt witemxtd by index.1
                Loop
                nextanal:
                move (trim(anprod.anprod_item)) to sno
                move anprod.recnum to imet
                Set Label Of frmShow to ('Ü£ú®„©†ú™ âò´ò§ò¢È©ú†™' + '-' + String(iMet)+'-'+String(sno))
                find gt witemxtr by index.4
             Loop
             Send StartReport to Ranald
             Send StartReport to Ranal90
             Send StartReport to Ranal
        End_Procedure
        
        procedure check_the_records
            number nfpa nfpatot
            integer iint
            move 0 to iint
            clear tmppol
            find gt tmppol by index.1
            while (found)
               if (tmppol.typos='01');
                     move 0 to nfpa
               if (tmppol.typos='03');
                    add tmppol.posofpa to nfpa
               if (tmppol.typos='05') begin
                    move (abs(nfpa-tmppol.axia)) to nfpatot
                    if (nfpatot > 1) move 1 to iint
               end
               Set Label Of frmShow to ('Ñ¢úöÆ¶™ è‡¢„©ú‡§' + '-' +String(Tmppol.arithmos))
        
               find gt tmppol by index.1
            Loop
            if (iint=1) ;
               send info_box 'èêéëéïÜ èàáÄåé ëîÄäãÄ ëíé ÄêïÑàé FI2. ÑäÑÇçíÑ íé îèÄ ëíàë ÑâíìèóëÑàë èóäÜëÑóå' 'èäÜêéîéêàÄ'
        
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnMetasx

    Object btnekt is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "printer.bmp"
        Set Size to 21 24
        Set Location to 202 11
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
        Set Location to 179 350
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                    
        Set TooltipValue to 'Ñ•òö‡ö„ ©´¶ ò®ÆúÂ¶'
        
        
        Function Verify_Ascii Integer aiFlag Returns Integer
            Number  nPoso
            Integer iDecs iLen iInt Imet iNum FileSize
            Integer rVal iMhnas iEtos iHmera
            String  sPoso sHmnia sid sMhnas sHmera sBranch sFileName setos scomp stomeas
            String sStr
            Date    dapo deos dhmnia
            Move 0 to iNum
        
            Get value of frmapo item 0      to dapo
            clear Company
            move syscurxr.company_code      to Company.company_code
            find eq company by index.1
            move Company.company_c_code0    to stomeas
            Move (TheDaySegment  (dapo))    to iHmera
            Move (TheMonthSegment(dapo))    to iMhnas
            Move (TheYearSegment(dapo))     to ietos
            Move iHmera                     to sHmera
            Move iMhnas                     to sMhnas
            Move iEtos                      to sEtos
            If (Length(sHmera)=1) Insert '0' in sHmera at 1
            If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
        
            If aiFlag Eq 1 Begin
                Move (psPath(Self)+Trim(stomeas)+'FI1'+Trim(sEtos)+Trim(sMhnas);
                    +Trim(sHmera)+'.txt')   to sFileName
                File_Size tmpclsap          to FileSize
                Direct_Input Channel 9 sFileName
                Readln Channel 9 sStr
                While (Not(Seqeof))
                    Add 1 to iNum
                    Readln Channel 9 sStr
                Loop
                Close_Input Channel 9
                Function_Return (iNum=FileSize)
            End
            Else If aiFlag Eq 2 Begin
                Move (psPath(Self)+Trim(stomeas)+'FI2'+Trim(sEtos)+Trim(sMhnas);
                    +Trim(sHmera)+'.txt') to sFileName
                File_Size TmpPol          to FileSize
                Direct_Input Channel 9 sFileName
                Readln Channel 9 sStr
                While (Not(Seqeof))
                    Add 1 to iNum
                    Readln Channel 9 sStr
                Loop
                Close_Input Channel 9
                Function_Return (iNum=FileSize)
            End
            Else If aiFlag Eq 3 Begin
                Move (psPath(Self)+Trim(stomeas)+'FI3'+Trim(sEtos)+Trim(sMhnas);
                    +Trim(sHmera)+'.txt') to sFileName
                File_Size tmpAxio         to FileSize
                Direct_Input Channel 9 sFileName
                Readln Channel 9 sStr
                While (Not(Seqeof))
                    Add 1 to iNum
                    Readln Channel 9 sStr
                Loop
                Close_Input Channel 9
                Function_Return (iNum=FileSize)
            End
            Else If aiFlag Eq 4 Begin
                Move (psPath(Self)+Trim(stomeas)+'MM1'+Trim(sEtos)+Trim(sMhnas);
                    +Trim(sHmera)+'.txt') to sFileName
                File_Size Tmpapoth        to FileSize
                Direct_Input Channel 9 sFileName
                Readln Channel 9 sStr
                While (Not(Seqeof))
                    Add 1 to iNum
                    Readln Channel 9 sStr
                Loop
                Close_Input Channel 9
                Function_Return (iNum=FileSize)
            End
            Else If aiFlag Eq 5 Begin
                Move (psPath(Self)+Trim(stomeas)+'PP1'+Trim(sEtos)+Trim(sMhnas);
                    +Trim(sHmera)+'.txt') to sFileName
                File_Size Tmptehn         to FileSize
                Direct_Input Channel 9 sFileName
                Readln Channel 9 sStr
                While (Not(Seqeof))
                    Add 1 to iNum
                    Readln Channel 9 sStr
                Loop
                Close_Input Channel 9
                Function_Return (iNum=FileSize)
            End
            Else If aiFlag Eq 6 Begin
                Move (psPath(Self)+Trim(stomeas)+'PP2'+Trim(sEtos)+Trim(sMhnas);
                    +Trim(sHmera)+'.txt') to sFileName
                File_Size TmpAnal         to FileSize
                Direct_Input Channel 9 sFileName
                Readln Channel 9 sStr
                While (Not(Seqeof))
                    Add 1 to iNum
                    Readln Channel 9 sStr
                Loop
                Close_Input Channel 9
                Function_Return (iNum=FileSize)
            End
            Function_Return 1
        End_function
        
        
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
                Move (round_number(tmpaxio.axia,2))     to nPoso
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
                Write   Channel 7 (Pad(ToAnsi(sposo)                       , 10))
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
                Write   Channel 7 (Pad(toansi(tmppol.deltia)                ,10))
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
        
                Write   Channel 5 (Pad(ToAnsi(sposo)                      , 16))
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
            String  sFile sBranch sText sBaxiokatRecr sFile2 sStr
            String  sCompany sRec sLabel sPlace sPath
            Date    dApo dEos
            Integer iInt iCount iRec iMet iPos iPlaceCode retval isOK iOk
            indicate err false
            Get Value Of frmApo         Item 0 to dApo
            Clear tmpSap
            Move dapo to tmpSap.Date
            Find Eq tmpSap By Index.1
            If ((Found) And (tmpSap.Kleidomeno=1)) begin
                send info_box 'Ü Ü£/§Âò Ä¨´„ úÂ§ò† °¢ú†õ‡£‚§û' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
        //    if (not(found)) begin
        //       send info_box 'Éú§ ‚Æ¶¨§ ´®‚•ú† ¶† ú§û£ú®È©ú†™ Ä®ÆúÂ‡§ Ü ßò®¶¨©†·©´û°ú ë≠·¢£ò!\n í®‚•´ú ú§û£ú®È©ú†™ Ä®ÆúÂ‡§ H É†¶®üÈ©´ú ´¶ ë≠·¢£ò!!' 'è¢û®¶≠¶®Âò'
        //       procedure_return
        //    end
            Move '' to sStr
            Get fiSapOK Of vwSap dApo to iOK
            If (iOK<>0) Begin
                If (iOK=1)      Send Info_Box 'ìß·®Æú† ß®¶öú§‚©´ú®û û£ú®¶£û§Âò ò§¶†Æ´„' 'è¢û®¶≠¶®Âò'
                Else If (iOK=2) Send Info_Box 'Ü û£ú®¶£û§Âò ò¨´„ úÂ§ò† „õû °¢ú†õ‡£‚§û' 'è¢û®¶≠¶®Âò'
                Else If (iOK=3) Send Info_Box 'è®¶°Áß´ú† °ú§Ê û£ú®¶£û§†È§.\nâ·ß¶†ò ß®¶ûö¶Á£ú§û ÉÑå ‚´®ú•ú' 'è¢û®¶≠¶®Âò'
                Else If (iOK=4) Send Info_Box 'ìß·®Æú† £ú´òöú§‚©´ú®û û£ú®¶£û§Âò' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
            Get Value Of frmPath to sPath
            Set psPath to (Trim(sPath)+'\')
        
        
            Get YesNo_Box 'Ä®ÆÂùú† û ú•òö‡ö„ Ñöö®ò≠È§ !!\nåò ©¨§úÆÂ©‡ ??' to RetVal
                If (dApo='') Begin
                    Send Info_Box 'Ü û£ú®¶£û§Âò òß¶ úÂ§ò† °ú§„' 'è¢û®¶≠¶®Âò'
                    Send Activate to frmApo
                    Procedure_Return
                End
            indicate err false
            If (RetVal =MBR_yes) begin
              begin_transaction
                Send Write_Record_Pel
                Get Verify_Ascii 1 to isOK
                If (Not(isOK)) Begin
                    Error 6001 'Ä©¨£≠‡§Âò úöö®ò≠È§ ©´¶ ò®ÆúÂ¶ FI1. Ü ú•òö‡ö„ õ†ò°Êß´ú´ò†'
                //    Procedure_Return
                End
        
        
                Send Write_record_polhseon
                Get Verify_Ascii 2 to isOK
                If (Not(isOK)) Begin
                    Error 6002 'Ä©¨£≠‡§Âò úöö®ò≠È§ ©´¶ ò®ÆúÂ¶ FI2. Ü ú•òö‡ö„ õ†ò°Êß´ú´ò†'
                //    Procedure_Return
                End
        
                Send Write_record_axio
                Get Verify_Ascii 3 to isOK
                If (Not(isOK)) Begin
                    Error 6003 'Ä©¨£≠‡§Âò úöö®ò≠È§ ©´¶ ò®ÆúÂ¶ FI3. Ü ú•òö‡ö„ õ†ò°Êß´ú´ò†'
                //    Procedure_Return
                End
        
                Send Write_record_apoth
                Get Verify_Ascii 4 to isOK
                If (Not(isOK)) Begin
                    Error 6004 'Ä©¨£≠‡§Âò úöö®ò≠È§ ©´¶ ò®ÆúÂ¶ MM1. Ü ú•òö‡ö„ õ†ò°Êß´ú´ò†'
                //    Procedure_Return
                End
        
                Send Write_record_tehn
                Get Verify_Ascii 5 to isOK
                If (Not(isOK)) Begin
                    Error 6005 'Ä©¨£≠‡§Âò úöö®ò≠È§ ©´¶ ò®ÆúÂ¶ PP1. Ü ú•òö‡ö„ õ†ò°Êß´ú´ò†'
                //    Procedure_Return
                End
        
                Send Write_record_Anal
                Get Verify_Ascii 6 to isOK
                If (Not(isOK)) Begin
                    Error 6006 'Ä©¨£≠‡§Âò úöö®ò≠È§ ©´¶ ò®ÆúÂ¶ PP2. Ü ú•òö‡ö„ õ†ò°Êß´ú´ò†'
                //    Procedure_Return
                End
        
        
              move 0 to iint
              clear clients
              find GT  clients by index.11
              while ((found) and (clients.sap_hmnia =''))
                  move clients.recnum to irec
                  if (clients.status='') move '2' to clients.status
                  else if (clients.status='1') move '3' to clients.status
                  move dapo to clients.sap_hmnia
                  saverecord clients
                  move  'Ä¢¢òö„ Status èú¢ò´È§' to sstr
                  Set Label Of frmShow to (sstr+'-'+CLIENTS.client_id)
                  clear clients
                  move irec to clients.recnum
                  find gt clients by index.11
              Loop
        
        
              clear cmoves
              find gt cmoves by 16
              while ((found) and (cmoves.sap_hmnia =''))
                  if  (cmoves.cmoves_hmnia  > dapo);
                      goto nextread
        
                   //úö®®ò≠‚™ °¢ú†õÈ£ò´¶™ ß®‚ßú† §ò ß®¶©ßú®§†¶Á§´ú
                  if (cmoves.barticl_recr<>'') begin
                      clear barticl
                      move cmoves.barticl_recr to barticl.barticl_recr
                      find eq barticl by index.2
                      if (found) begin
                          If (barticl.ekkremes=1) goto nextread
                      end
                  End
                  move cmoves.recnum to irec
                  move dapo to cmoves.sap_hmnia
                  saverecord cmoves
                  move 1 to iint
                  nextread:
                      Set Label Of frmShow to ('Ä•†Êö®ò≠ò' + '-' + String(cmoves.recnum)+'-'+String(cmoves.cmoves_hmnia))
                      if (iint=1) begin
                         clear cmoves
                         move irec to cmoves.recnum
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
              //    Reread Particle
                  move dapo to particle.sap_hmnia
                  saverecord particle
              //    Unlock
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
             //   Reread Wcmoves
                move dapo to wcmoves.sap_hmnia
                saverecord wcmoves
             //   Unlock
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
                    goto nextitem
                move itemtehn.recnum to irec
            //    Reread ItemTehn
                move dapo to itemtehn.sap_hmnia
                saverecord itemtehn
            //    Unlock
                move 1 to iint
                nextitem:
                    Set Label Of frmShow to ('íúÆ§.è®¶õ†òö®ò≠‚™' + '-' + String(itemtehn.recnum)+'-'+String(itemtehn.hmnia))
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
                    goto nextwitem
                move witemxtr.recnum to irec
            //    Reread WitemxTr
                move dapo to witemxtr.sap_hmnia
                saverecord witemxtr
           //     Unlock
                move 1 to iint
                nextwitem:
                    Set Label Of frmShow to ('É†ò°†§„©ú†™' + '-' + String(witemxtr.recnum)+'-'+String(witemxtr.hmnia))
                    if (iint=1) begin
                       clear witemxtr
                       move irec to witemxtr.recnum
                    end
                    move 0 to iint
                    find Gt witemxtr by index.4
            Loop
        
        
            clear tmpsap
            move dapo to tmpsap.date
            move 1 to tmpsap.kleidomeno
            saverecord tmpsap
        //   SEND IGNORE_ERROR TO ERROR_INFO_OBJECT 4358
        //   Make_Directory "C:\PISBACKUPASCCI"
        //   SEND TRAP_ERROR TO ERROR_INFO_OBJECT 4358
        //   Copyfile (PSPATH(SELF)+'*.*') to  "C:\PISBACKUPASCCI"
        
           end_transaction
           unlock
           if (not(err)) begin
              SEND IGNORE_ERROR TO ERROR_INFO_OBJECT 4358
              Make_Directory "C:\PISBACKUPASCCI"
              Copyfile (PSPATH(SELF)+'*.*') to  "C:\PISBACKUPASCCI"
              SEND TRAP_ERROR TO ERROR_INFO_OBJECT 4358
        
              Send Info_Box ('Ü ú•òö‡ö„ ©´¶†ÆúÂ‡§ ¶¢¶°¢û®Èüû°ú\náò ô®úÂ´ú ´ò ò®ÆúÂò ©´¶\n'+(psPath(Self))) 'è¢û®¶≠¶®Âò'
           end
           else  begin
              erasefile (PSPATH(SELF)+'*.txt')
              Send Info_Box 'èò®¶¨©†·©´û°ú °·ß¶†¶ ¢·ü¶™ ©´û§ Ñ•òö‡ö„' 'è¢û®¶≠¶®Âò'
           end
           set pddate of (saprep(self)) to dapo
           set pspath of (saprep(self)) to (pspath(self))
           send ACTIVATE_saprep
        
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
        Set Location to 174 11
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "ãú´ò≠¶®· ©´ò èò®òöÈ£ú§ò Ä®ÆúÂò"
        Procedure OnClick
             send activate_vwsap
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPartl

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
        date ddate
        CLEAR company
        move syscurxr.company_code to company.company_code
        find eq company by index.1
        if (found);
            set value of frmpath to company.sap_path
        else;
            set value of frmpath to ''
        clear tmpsap
        move '31/12/2100' to tmpsap.date
        find lt tmpsap by index.1
        if (found) begin
           move (tmpsap.date+1) to ddate
           set value of frmapo to ddate
        End
        Forward Get Msg_Activate_View to rVal
        Reread Sysfile
        Unlock
        Send Activate to oDirectoryPicker
        Send Activate to (frmapo(vsap(Self)))
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Vsap


//AB-StoreStart
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
//AB-StoreEnd

//AB/ End_Object    // prj
