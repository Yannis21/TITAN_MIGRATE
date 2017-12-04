//AB/ Project CN_SOS
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "CN_SOS"
//AB/     Set ProjectFileName to "CN_SOS.VW"

// Project Object Structure
//   CN_SOS is a dbViewSubS
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
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
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
//     Pmsdtl_DD is a DataDictionary
//     Baxiokat_DD is a DataDictionary
//     Pmssxet_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Particll_DD is a DataDictionary
//     Psxetika_DD is a DataDictionary
//     Dorderh_DD is a DataDictionary
//     Clnbank_DD is a DataDictionary
//     Dorderd_DD is a DataDictionary
//     Zones_DD is a DataDictionary
//     Brzones_DD is a DataDictionary
//     Cnzones_DD is a DataDictionary
//     Tpclient_DD is a DataDictionary
//     Tperga_DD is a DataDictionary
//     Tparticl_DD is a DataDictionary
//     Cmovesa2_DD is a DataDictionary
//     Clorder_DD is a DataDictionary
//     Clorderd_DD is a DataDictionary
//     Clitem_DD is a DataDictionary
//     Partlfpa_DD is a DataDictionary
//     Btnordh_DD is a DataDictionary
//     Btnordd_DD is a DataDictionary
//     Pmovesl_DD is a DataDictionary
//     Container2 is a dbContainer3d
//       Clients_Client_id is a dbForm
//       Clients_Client_name is a dbForm
//       Clients_Client_afm is a dbForm
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//     Cn_ is a dbGridSub
//     btnPartl is a ButtonSub
//     Cn_Cn_Codematch is a dbFormSub

// Register all objects
Register_Object Areas_DD
Register_Object Baxiokat_DD
Register_Object Branch_DD
Register_Object Brzones_DD
Register_Object Btnordd_DD
Register_Object Btnordh_DD
Register_Object btnPartl
Register_Object Cities_DD
Register_Object Clients_Client_afm
Register_Object Clients_Client_id
Register_Object Clients_Client_name
Register_Object Clients_DD
Register_Object Clitem_DD
Register_Object Clnbank_DD
Register_Object Clorder_DD
Register_Object Clorderd_DD
Register_Object Cmoves_DD
Register_Object Cmovesa_DD
Register_Object Cmovesa2_DD
Register_Object CN_SOS
Register_Object Cn_
Register_Object Cn_Cn_Codematch
Register_Object Cn_DD
Register_Object Cnzones_DD
Register_Object Company_DD
Register_Object Constrct_DD
Register_Object Container2
Register_Object Copen_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object Dorderd_DD
Register_Object Dorderh_DD
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Mhxanik_DD
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Particll_DD
Register_Object Partlfpa_DD
Register_Object Payresp_DD
Register_Object Pmoves_DD
Register_Object Pmovesl_DD
Register_Object Pmsdtl_DD
Register_Object Pmssxet_DD
Register_Object Psxetika_DD
Register_Object Ptyppar_DD
Register_Object Salesmen_DD
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object Towns_DD
Register_Object Tparticl_DD
Register_Object Tpclient_DD
Register_Object Tperga_DD
Register_Object Units_DD
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD
Register_Object Zones_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
use v041.vw
open pmoves
open cmoves
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbGrid.Sub
Use Button.Sub
Use dbForm.Sub

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
Use CMOVESA.DD
Use COPEN.DD
Use WTYPKIN.DD
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
Use PmsDtl.DD
Use BAXIOKAT.DD
Use PMSSXET.DD
Use SALESMEN.DD
Use MHXANIK.DD
Use CONSTRCT.DD
Use CN.DD
Use PARTICLL.DD
Use PSXETIKA.DD
Use DORDERH.DD
Use CLNBANK.DD
Use DORDERD.DD
Use ZONES.DD
Use BRZONES.DD
Use CNZONES.DD
Use TPCLIENT.DD
Use TPERGA.DD
Use TPARTICL.DD
Use CMOVESA2.DD
Use CLORDER.DD
Use CLORDERD.DD
Use CLITEM.DD
Use PARTLFPA.DD
Use BTNORDH.DD
Use BTNORDD.DD
Use PMOVESL.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_CN_SOS FOR CN_SOS

Object CN_SOS is a dbViewSubS

    //AB-StoreTopStart
    Property string psmodule public ''
    Property String psClientID public ''
    
    //AB-StoreTopEnd

    Set Label to "èêéëéïÜ -- ãÜå íé èÑàêÄçÑíÑ âÄáéäéì -- âìåÉìåéë âÄíÄëíêéîÜë.   âäÑàëíÑ íé èÄêÄáìêé Äìíé ÄãÑëÄ"
    Set Size to 284 513
    Set Location to 2 9

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))
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

        //AB-StoreStart
        set cascade_delete_state  to true
        Procedure Request_Delete
            Integer iErr isClosed isPrinted isReadOnly iRecnum  iyes
            string sid
            get field_current_value of clients_dd field clients.client_id to sid
            move 0 to iyes
            clear cmoves
            move sid to cmoves.client_id
            find ge cmoves by index.4
            while ((found) and (cmoves.client_id=sid))
                move 1 to iyes
                if (iyes=1) goto next_el
                find gt cmoves by index.4
            LOOP
            next_el:
            if (iyes=1) begin
                send stop_box 'ìß·®Æ¶¨§ â†§„©ú†™ èú¢·´û . Éú§ É†òö®·≠ú´ò† !!'
                procedure_return
            end
            clear pmoves
            move sid to pmoves.client_id
            find ge pmoves by index.6
            while ((found) and (pmoves.client_id=sid))
                move 1 to iyes
                if (iyes=1) goto re_error
                find gt pmoves by index.6
            LOOP
            re_error:
            if (iyes=1) begin
                send stop_box 'ìß·®Æ¶¨§ â†§„©ú†™ èú¢·´û. Éú§ É†òö®·≠ú´ò† !!'
                procedure_return
            end
            else  Forward Send Request_Delete
        
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Cmoves_DD

    Object Cmovesa_DD is a Cmovesa_DataDictionary
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Cmovesa_DD

    Object Copen_DD is a Copen_DataDictionary
        Set DDO_Server to (Cmoves_DD(self))
        Set DDO_Server to (Cmovesa_DD(self))
        Set Constrain_File to Cmoves.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        
        
        //AB-StoreEnd

    End_Object    // Copen_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
                                                                            
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

    Object Pmsdtl_DD is a Pmsdtl_DataDictionary
        Set DDO_Server to (Pmoves_DD(self))
        Set Constrain_File to Pmoves.File_Number
    End_Object    // Pmsdtl_DD

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Object Pmssxet_DD is a PmsSxet_DataDictionary
        Set DDO_Server to (Pmoves_DD(self))
        Set Constrain_File to Pmoves.File_Number
    End_Object    // Pmssxet_DD

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cn_DD

    Object Particll_DD is a Particll_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Particll_DD

    Object Psxetika_DD is a Psxetika_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Psxetika_DD

    Object Dorderh_DD is a Dorderh_DataDictionary
        Set DDO_Server to (Cn_DD(self))
        Set Constrain_File to Cn.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Dorderh_DD

    Object Clnbank_DD is a Clnbank_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Clnbank_DD

    Object Dorderd_DD is a Dorderd_DataDictionary
        Set DDO_Server to (Dorderh_DD(self))
        Set Constrain_File to Dorderh.File_Number
    End_Object    // Dorderd_DD

    Object Zones_DD is a Zones_DataDictionary
    End_Object    // Zones_DD

    Object Brzones_DD is a BrZones_DataDictionary
        Set DDO_Server to (Branch_DD(self))
        Set DDO_Server to (Zones_DD(self))
    End_Object    // Brzones_DD

    Object Cnzones_DD is a Cnzones_DataDictionary
        Set DDO_Server to (Cn_DD(self))
        Set DDO_Server to (Brzones_DD(self))
        Set Constrain_File to Cn.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Cnzones_DD

    Object Tpclient_DD is a Tpclient_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Baxiokat_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Tpclient_DD

    Object Tperga_DD is a Tperga_DataDictionary
        Set DDO_Server to (Cn_DD(self))
        Set DDO_Server to (Baxiokat_DD(self))
        Set Constrain_File to Cn.File_Number
    End_Object    // Tperga_DD

    Object Tparticl_DD is a Tparticl_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set DDO_Server to (Baxiokat_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Tparticl_DD

    Object Cmovesa2_DD is a Cmovesa2_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Cmovesa2_DD

    Object Clorder_DD is a Clorder_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Clorder_DD

    Object Clorderd_DD is a Clorderd_DataDictionary
        Set DDO_Server to (Clorder_DD(self))
        Set Constrain_File to Clorder.File_Number
    End_Object    // Clorderd_DD

    Object Clitem_DD is a Clitem_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Clitem_DD

    Object Partlfpa_DD is a Partlfpa_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set DDO_Server to (Fpa_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Partlfpa_DD

    Object Btnordh_DD is a Btnordh_DataDictionary
        Set DDO_Server to (Cn_DD(self))
        Set Constrain_File to Cn.File_Number

        //AB-StoreStart
        set cascade_delete_state  to true
        //AB-StoreEnd

    End_Object    // Btnordh_DD

    Object Btnordd_DD is a Btnordd_DataDictionary
        Set DDO_Server to (Btnordh_DD(self))
        Set Constrain_File to Btnordh.File_Number
    End_Object    // Btnordd_DD

    Object Pmovesl_DD is a Pmovesl_DataDictionary
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Pmovesl_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object Container2 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 58 446
        Set Location to 6 9
        Object Clients_Client_id is a dbForm
            Entry_Item Clients.Client_id
            Set Size to 13 126
            Set Location to 6 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(cn(Self)))
                Forward Send Prompt
            End_Procedure
            //AB-StoreEnd

        End_Object    // Clients_Client_id

        Object Clients_Client_name is a dbForm
            Entry_Item Clients.Client_name
            Set Size to 13 306
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_name

        Object Clients_Client_afm is a dbForm
            Entry_Item Clients.Client_afm
            Set Size to 13 71
            Set Location to 36 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_afm

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ èú¢·´û"
            Set Location to 7 7
            Set Size to 10 57
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Ñß‡§¨£Âò"
            Set Location to 22 7
            Set Size to 10 41
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "Ä.î.ã."
            Set Location to 36 7
            Set Size to 10 35
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7


        //AB-StoreStart
                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // Container2

    Object Cn_ is a dbGridSub
        Set Main_File to Cn.File_Number
        Set Server to (Cn_DD(self))
        Set Size to 168 493
        Set Location to 70 8
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Cn.Cn_code
            Entry_Item Cn.Cn_descr
            Entry_Item Constrct.Cnt_name
            Entry_Item Salesmen.Sls_name
            Entry_Item Payresp.Presp_name
            Entry_Item Mhxanik.Mhx_name
            Entry_Item Cn.Cn_start_date
            Entry_Item Cn.Hm_tel_fortio
        End_Row

        Set Form_Width    item 0 to 45
        Set Header_Label  item 0 to "â‡õ†°Ê™ "
        
        Set Form_Width    item 1 to 88
        Set Header_Label  item 1 to "èú®†ö®ò≠„ Î®ö¶¨"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "Ñ®ö¶¢·ô¶™"
        
        Set Form_Width    item 3 to 65
        Set Header_Label  item 3 to "è‡¢û´„™"
        
        Set Form_Width    item 4 to 70
        Set Header_Label  item 4 to "ìßúÁü. è¢û®‡£È§"
        
        Set Form_Width    item 5 to 60
        Set Header_Label  item 5 to "ãûÆò§†°Ê™"
        
        Set Form_Width    item 6 to 47
        Set Header_Label  item 6 to "Ñ§ò®•û"
        
        Set Form_Width    item 7 to 47
        Set Header_Label  item 7 to "íú¢.î¶®´Â¶"
        

        //AB-StoreStart
        set read_only_state to true
        
        
        //AB-StoreEnd

    End_Object    // Cn_

    Object btnPartl is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Filesys3.bmp"
        Set Size to 22 25
        Set Location to 246 11
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                
        Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ ‚®ö‡§"
        
        Procedure OnClick
                string scnid
                get field_current_value of cn_dd field cn.cn_code to scnid
                set pscncode of (v041(self)) to scnid
                send activate_v041
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPartl

    Object Cn_Cn_Codematch is a dbFormSub
        Entry_Item Cn.Cn_codematch
        Set Server to (Country_DD(self))
        Set Size to 13 65
        Set Location to 250 431
        Set Color to clBtnFace
        Set TextColor to 185
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Cn_Cn_Codematch


    //AB-StoreStart
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
    //AB-StoreEnd

End_Object    // CN_SOS


//AB-StoreStart
                    
                    
//AB-StoreEnd

//AB/ End_Object    // prj
