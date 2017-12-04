//AB/ Project vwexport:export arxeion
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwexport:export arxeion"
//AB/     Set ProjectFileName to "vwexport.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwexport is a dbViewSubS
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptypparl_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Pmoves_DD is a DataDictionary
//     date_apo is a FormSub
//     date_eos is a FormSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     BRANCH_CODE is a FormSub
//     Form1 is a Form
//     frmcount is a TextBoxSub
//     Textbox3 is a Textbox
//     TextBoxSub1 is a TextBoxSub
//     FormSub1 is a FormSub
//     ButtonSub2 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object BRANCH_CODE
Register_Object Branch_DD
Register_Object ButtonSub2
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cmoves_DD
Register_Object Company_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object date_apo
Register_Object date_eos
Register_Object Form1
Register_Object FormSub1
Register_Object Fpa_DD
Register_Object frmcount
Register_Object Item_DD
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Pmoves_DD
Register_Object Ptyppar_DD
Register_Object Ptypparl_DD
Register_Object TextBoxSub1
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Towns_DD
Register_Object Units_DD
Register_Object vwexport
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
open barticl
open sysfile
use sl002.sl
use bttmp1.dd
Open "bttmp1" as bttmp1
Use vWin32fh.pkg
Use Locales

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Form.Sub
Use Txtbox.Sub
Use Button.Sub

Use COMPANY.DD
Use BRANCH.DD
Use CTYPKIN.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use CMOVES.DD
Use WTYPKIN.DD
Use PTYPPARL.DD
Use PTYPPAR.DD
Use NOMISMA.DD
Use PARTICLE.DD
Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use PMOVES.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwexport FOR vwexport

Object vwexport is a dbViewSubS

    //AB-StoreTopStart

    Property Date   pdHmniafrom         Public ''
    Property Date   pdHmniato           Public ''
    Property String psBranch            Public ''
    Property String psParrecr           Public ''
    Property String psSelectedFolder    Public ""


    //AB-StoreTopEnd

    Set Label to "Éû£†¶¨®öÂò ASCII ò®ÆúÂ‡§ ö†ò ú†©òö‡ö„ ©´¶ Eurofasma"
    Set Size to 142 365
    Set Location to 9 13

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True

        //AB-StoreEnd

    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))

        //AB-StoreStart

        Set Read_Only_State to True
        Set Field_Options Field Branch.Branch_Name to DD_Clear_Field_Options DD_Required

        Begin_Constraints
            Constrain Branch.Company_Code Eq Syscurxr.Company_Code
        End_Constraints





        //AB-StoreEnd

    End_Object    // Branch_DD

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart

        begin_constraints
            set ordering to 13
            constrain cmoves.company_code eq syscurxr.company_code
            constrain cmoves.branch_code  eq (psbranch(self))
            constrain cmoves.year_year    eq syscurxr.year_year
            constrain cmoves.module_from  eq '01'
            constrain cmoves.cmoves_hmnia Between (pdHmniafrom(self)) And (pdHmniato(self))
            constrain cmoves.barticl_recr ne ''
        end_constraints






        //AB-StoreEnd

    End_Object    // Cmoves_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptypparl_DD is a Ptypparl_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart

        begin_constraints
            set ordering to 1
            constrain ptypparl.company_code eq syscurxr.company_code
            constrain ptypparl.branch_code  eq (psbranch(self))
            constrain ptypparl.ptyppar_module  eq '01'
            constrain ptypparl.singular ne ''
        end_constraints



        //AB-StoreEnd

    End_Object    // Ptypparl_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart


        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart

        begin_constraints
            set ordering to 12
            constrain particle.company_code eq syscurxr.company_code
            constrain particle.branch_code  eq (psbranch(self))
            constrain particle.year_year    eq syscurxr.year_year
            constrain particle.partl_module eq '01'
            constrain particle.ptyppar_recr eq (psparrecr(self))
            constrain particle.partl_hmnia Between (pdHmniafrom(self)) And (pdHmniato(self))
        end_constraints




        //AB-StoreEnd

    End_Object    // Particle_DD

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

    Object Pmoves_DD is a Pmoves_DataDictionary
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Pmoves_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object date_apo is a FormSub
        Set Size to 13 63
        Set Location to 26 100
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        procedure onchange
            date ddate
            get value item 0 to ddate
            set pdHmniafrom  to ddate
        end_procedure

        //AB-StoreEnd

    End_Object    // date_apo

    Object date_eos is a FormSub
        Set Size to 13 71
        Set Location to 26 191
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        procedure onchange
            date ddate
            get value item 0 to ddate
            set pdHmniato  to ddate
        end_procedure

        //AB-StoreEnd

    End_Object    // date_eos

    Object Textbox1 is a Textbox
        Set Label to "Ü£/§Âò úöö®ò≠È§ òßÊ"
        Set Location to 28 7
        Set Size to 10 83
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox1

    Object Textbox2 is a Textbox
        Set Label to "Ñ‡™"
        Set Location to 28 174
        Set Size to 10 14
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox2

    Object BRANCH_CODE is a FormSub
        Set Size to 13 64
        Set Location to 10 100
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart

        set prompt_object to (sl002(current_object))

        procedure onchange
            string sbranch
            clear branch
            get value item 0 to sbranch
            move syscurxr.company_code to branch.company_code
            move sbranch               to branch.branch_code
            find eq branch by index.1
            set value of (form1(self)) to branch.branch_name
            set psbranch to sbranch
        end_procedure

        procedure prompt
            Set Modal_State Of sl002 to True
            Set psFragmaCompanyCode Of (sl002(Self)) to (psbranch(Self))
            Forward Send Prompt
            Set psFragmaCompanyCode Of (sl002(Self)) to ''
        end_procedure







        //AB-StoreEnd

    End_Object    // BRANCH_CODE

    Object Form1 is a Form
        Set Size to 13 140
        Set Location to 10 191

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Form1

    Object frmcount is a TextBoxSub
        Set Label to "'"
        Set Location to 42 8
        Set Size to 13 17
        Set TypeFace to "MS Sans Serif"
    End_Object    // frmcount

    Object Textbox3 is a Textbox
        Set Label to "ìß¶°ò´·©´û£ò"
        Set Location to 12 7
        Set Size to 10 61
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox3

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "É†òõ®¶£„  (ÉÈ©´ú £Ê§¶ ´¶ ö®·££ò ´¶¨ ¶õûö¶Á ß¶¨ üò òß¶üû°ú¨´¶Á§ ´ò ò®ÆúÂò ß.Æ. A:\ „ C:\). íò ò®Æ†°· Ä_ „ D_ ... õÂ§¶§´ò† ò¨´Ê£ò´ò £òù† £ú ´ò ¶§Ê£ò´ò ´‡§ ò®ÆúÂ‡§"
        Set Location to 68 25
        Set Size to 18 319
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object FormSub1 is a FormSub
        Set Size to 13 201
        Set Location to 97 100
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart

        Set form_Button_Bitmap Item 0  To "OpenFold.bmp"

        Procedure DoSelectFolder
            String sSelectedFolder
            String sMsg
            Move (vSHBrowseForFolder('')) To sSelectedFolder
            If (Right(sSelectedFolder,1)<>'\') Append sSelectedFolder '\'
            Set psSelectedFolder To sSelectedFolder
        End_Procedure // DoSelectFolder

        Procedure Prompt
            String sValue
            Send DoSelectFolder
            Get psSelectedFolder To sValue
            Set Value Item 0 To sValue
        End_Procedure // Prompt



        //AB-StoreEnd

    End_Object    // FormSub1

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "ButtonSub2"
        Set Bitmap to "AbCode.bmp"
        Set Size to 15 18
        Set Location to 95 313
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart

        Set TooltipValue to "Ñ•òö‡ö„ úß†¢úö£‚§‡§ ö®ò££È§ ©ú ASCII ò®ÆúÂ¶"

        Procedure OnClick
                integer irecnum ino idecs ilines
                String sPath sFullName sBranch

                Get Value Of FormSub1 Item 0 to sPath
                Move (Trim(sPath)) to sPath
                If (sPath='') Begin
                    Send Info_Box 'Éú§ úß†¢‚•ò´ú ß®¶¶®†©£Ê' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End

                If (Right(sPath,1)<>'\') Append sPath '\'

                // 30/05/2003 è®¶ü„°û ´¶¨ A_ „ D_ „ E_ ...
                // Ä§·¢¶öò £ú ´¶ Branch ß¶¨ ú•òöú´ò† °ò† ´¶
                // ò§´Â©´¶†Æ¶ ö®·££ò (°ò† ´û§ ¨ß¶ö®·££†©û)
                // ß¶¨ ‚Æú† ¶®†©´úÂ ©´¶ Eurofasma ö†ò ´†™
                // úöö®ò≠‚™ ¨ß¶°ò´ò©´„£ò´¶™.
                // Ä¨´Ê ¢¶†ßÊ§ °ò´òÆ‡®úÂ´ò† ©´¶ view õ†òÆúÂ®†©û™
                // ´‡§ Branch ©´¶ ßúõÂ¶ Branch_J_Code.

                Get psBranch to sBranch
                move syscurxr.company_code to branch.company_code
                move sbranch               to branch.branch_code
                find eq branch by index.1
                Move (Append(sPath,Trim(Branch.Branch_J_Code))) to sPath
                //

                zerofile bttmp1
                move 5 to idecs
                date ddate
                number naxia nqty nunitprice
                string spar speri srecr syear sno swhat stropos sblank sarithmos sdate
                string sitem sitemkat slink1 setoima smatitem msgstr saxiopar
                move '' to sblank
                move '00/00/00' to sdate
                // ú§û£‚®‡©û òß¶ cmoves
                Move '' to sFullName
                Append sFullname sPath 'kincus.txt'

                Set Value Of FormSub1 Item 0 to sFullName
                //Send Page   to FormSub1
                Send Page_Object to FormSub1 true

                Direct_Output Channel 9 sFullName //"a:\A_kincus.txt"
                Close_Output Channel 9
                Append_Output Channel 9 sFullName //"a:\A_kincus.txt"

                SEND CLEAR TO PARTICLE_DD
                send rebuild_constraints to cmoves_dd
                send find to cmoves_dd first_record 13

             begin_transaction
                while (found)
                    get field_current_value of cmoves_dd    field cmoves.barticl_recr   to srecr
                    get field_current_value of cmoves_dd    field cmoves.cmoves_hmnia   to ddate
                    get field_current_value of ctypkin_dd   field ctypkin.singular      to spar
                    get field_current_value of cmoves_dd    field cmoves.cmoves_p0      to naxia
                    get field_current_value of cmoves_dd    field cmoves.cmoves_par     to saxiopar
                    if (spar='') begin
                        move 'É†ò°¶ß„ ú§û£‚®‡©û™. Éú§ ô®‚üû°ú °Â§û©û ö‚≠¨®ò™ ©ú ò•†Êö®ò≠¶ = ' to msgstr
                        append msgstr saxiopar
                        error 4000 msgstr
                    end

                    clear barticl
                    move srecr to barticl.barticl_recr
                    find eq barticl by index.2
                    if (not(found)) begin
                        move 'É†ò°¶ß„ ú§û£‚®‡©û™. Éú§ ô®‚üû°ú ´¶ ò•†Êö®ò≠¶ = ' to msgstr
                        append msgstr saxiopar
                        error 4001 msgstr
                    end
                    move barticl.barticl_no to ino
                    move 'BG000001   ' to speri
                    Write   Channel 9 (Pad(speri         ,12))
                    Write   Channel 9 (Pad(ddate         ,06))
                    mid ddate to syear 2 9
                    Write   Channel 9 (Pad(syear         ,02))
                    Write   Channel 9 (Pad(spar          ,02))
                    move 6 to idecs
                    get fsgCode_n_Zeroes ino idecs to sno
                    Write   Channel 9  sno           ,06))
                    move 15 to idecs
                    get fsgCode_n_Zeroes naxia idecs to sno
                    Write   Channel 9 (Pad(SNO          ,15))
                    Writeln Channel 9
                    set value of (frmcount(self)) to (string(srecr))
                    send find to cmoves_dd next_record 13
                Loop
                Close_Output Channel 9

                // ú§û£‚®‡©û òß¶ particle+pmoves
                Move '' to sFullName
                Append sFullname sPath 'kinpar.txt'
                Set Value Of FormSub1 Item 0 to sFullName
                Send Page_Object to FormSub1 true

                Direct_Output Channel 8 sFullName //"a:\A_kinpar.txt"
                Close_Output Channel 8
                Append_Output Channel 8 sFullName //"a:\A_kinpar.txt"
                send clear to particle_dd
                send rebuild_constraints to ptypparl_dd
                send find to ptypparl_dd first_record 1
                while (found)
                    get field_current_value of ptypparl_dd   field ptypparl.ptyppar_recr   to srecr
                    set psparrecr to srecr
                    send rebuild_constraints to particle_dd
                    send find to particle_dd first_record 12
                    while (found)
                         get field_current_value of ptyppar_dd field ptyppar.singular to spar
                         move 'BG000001' to speri
                         get field_current_value of particle_dd field particle.partl_no to ino
                         move 6 to idecs
                         get fsgCode_n_Zeroes ino idecs to sarithmos
                         get field_current_value of ptypparl_dd field ptypparl.ti_typonei_pms to swhat
                         get field_current_value of particle_dd field particle.partl_hmnia    to ddate
                         mid ddate to syear 2 9
                         move '99' to stropos
                         get field_current_value of particle_dd field particle.partl_payam    to naxia
                         get field_current_value of particle_dd field particle.partl_nooflines to ilines
                         Write   Channel 8                 (Pad(spar          ,02))
                         Write   Channel 8                 (Pad(speri         ,12))
                         if (swhat<>'1') begin
                                         Write   Channel 8 (Pad(sarithmos     ,06))
                                         Write   Channel 8 (Pad(sblank        ,06))
                                         Write   Channel 8 (Pad(ddate         ,06))
                                         Write   Channel 8 (Pad(syear         ,02))
                                         Write   Channel 8 (Pad(sdate         ,08))
                         end
                         if (swhat='1')  begin
                                         Write   Channel 8 (Pad(sblank        ,06))
                                         Write   Channel 8 (Pad(sarithmos     ,06))
                                         Write   Channel 8 (Pad(sdate         ,08))
                                         Write   Channel 8 (Pad(ddate         ,06))
                                         Write   Channel 8 (Pad(syear         ,02))

                         end

                         Write   Channel 8                 (Pad(stropos       ,02))
                         move 10 to idecs
                         get fsgCode_n_Zeroes naxia idecs to sno
                         if (swhat<>'1') Write   Channel 8 (Pad(sno           ,10))
                         else BEGIN
                              move 0 to naxia
                              get fsgCode_n_Zeroes naxia idecs to sno
                              Write   Channel 8 (Pad(sno           ,10))
                         end
                         move 3 to idecs
                         get fsgCode_n_Zeroes ilines idecs to sno
                         Write   Channel 8                 (Pad(sno           ,03))
                         Writeln Channel 8
                         set value of (frmcount(self)) to (string(sarithmos))
                         send rebuild_constraints to pmoves_dd
                         send find to pmoves_dd first_record 3
                         while (found)
                            get field_current_value of item_dd field item.wapokat_code to setoima
                            //if ((setoima<>sysfile.wapokat_etoima)and(swhat='1')) goto next1
                            get field_current_value of witemkat_dd field witemkat.codeglpol to sitemkat
                            Write   Channel 8              (Pad(sitemkat      ,02))
                            get field_current_value of pmoves_dd field pmoves.witemx_code   to sitem
                            if (setoima=sysfile.wapokat_etoima) begin
                                clear bttmp1
                                move sitemkat to smatitem
                                insert sitem in smatitem at 3
                                move smatitem to bttmp1.witemx_code
                                find eq bttmp1 by index.1
                                if (not(found)) begin
                                    move pmoves.witemx_descr to bttmp1.wcmove_par
                                    saverecord bttmp1
                                end
                            end

                            get field_current_value of item_dd field item.link1 to slink1
                            get field_current_value of pmoves_dd field pmoves.pms_qty to nqty
                            if (slink1='') Write   Channel 8              (Pad(sitem         ,10))

                            else           Write   Channel 8              (Pad(slink1        ,10))
                            Write   Channel 8              (Pad(ddate         ,06))
                            Write   Channel 8              (Pad(syear         ,02))
                            move 10 to idecs
                            get fsgCode_n_Zeroes nqty idecs to sno
                            Write   Channel 8              (Pad(sno           ,10))
                            get field_current_value of pmoves_dd field pmoves.pms_unitprice to nunitprice
                            get fsgCode_n_Zeroes nunitprice idecs to sno
                            if (swhat<>'1') Write   Channel 8 (Pad(sno           ,10))
                            else BEGIN
                              move 0 to nunitprice
                              get fsgCode_n_Zeroes nunitprice idecs to sno
                              Write   Channel 8 (Pad(sno           ,10))
                            end
                           // else            Write   Channel 8 (Pad(sblank        ,10))
                            Writeln Channel 8
                        // next1:
                         send find to pmoves_dd next_record 3
                         loop
                    send find to particle_dd next_record 12
                    loop
                send find to ptypparl_dd next_record 1
                loop
                Close_Output Channel 8

                //gemisma arxeioy mat.txt
                Move '' to sFullName
                Append sFullname sPath 'mat.txt'
                Set Value Of FormSub1 Item 0 to sFullName
                Send Page_Object to FormSub1 true

                Direct_Output Channel 7 sFullName //"a:\A_mat.txt"
                Close_Output Channel 7
                Append_Output Channel 7 sFullName //"a:\A_mat.txt"
                clear bttmp1
                move '' to bttmp1.witemx_code
                find gt bttmp1 by index.1
                while (found)
                    move bttmp1.witemx_code to sitem
                    move bttmp1.wcmove_par  to speri
                    Write   Channel 7 (Pad(sitem         ,12))
                    Write   Channel 7 (Pad(speri         ,30))
                    Write   Channel 7 (Pad('710105400'   ,12))
                    Write   Channel 7 (Pad('710000'      ,20))
                    Write   Channel 7 (Pad('000300020602',12))
                    Writeln Channel 7
                find gt bttmp1 by index.1
                loop
                Close_Output Channel 7
                send info_box 'Ü õ†òõ†°ò©Âò ú•òö‡ö„™ ò®ÆúÂ‡§ ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
            end_transaction

             set value of (frmcount(self)) to '0'
             Set Value Of FormSub1 Item 0 to ''
             move syscurxr.company_code to branch.company_code
             move syscurxr.branch_code  to branch.branch_code
             find eq branch by index.1
             Set Value Of Branch_Code Item 0 to Branch.Branch_Code
             Set psBranch to Branch.Branch_Code
        End_Procedure // OnClick







































































        //AB-StoreEnd

    End_Object    // ButtonSub2


    //AB-StoreStart

    Procedure Activate_View Returns Integer
        SET VALUE OF (branch_code(self)) to syscurxr.branch_code
        Integer rVal
        Forward Get Msg_Activate_View to rVal
        Reread Sysfile
        Unlock
        Procedure_Return rVal
    End_Procedure

































    //AB-StoreEnd

End_Object    // vwexport


//AB-StoreStart













//AB-StoreEnd

//AB/ End_Object    // prj
