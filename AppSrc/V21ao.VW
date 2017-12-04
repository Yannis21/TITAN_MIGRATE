//AB/ Project V21ao:logistikopiish parastatikon
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V21ao:logistikopiish parastatikon"
//AB/         Set ProjectFileName to "V21ao.VW"

// Project Object Structure
//   V21ao is a dbView
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
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
//     Ptypparh_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     client_apo is a FormSub
//     client_eos is a FormSub
//     client_aponame is a FormSub
//     client_eosname is a FormSub
//     date_apo999 is a TextBoxSub
//     date_eos999 is a TextBoxSub
//     seira_apo is a FormSub
//     parast_apo is a FormSub
//     date_apo is a FormSub
//     date_eos is a FormSub
//     TextBoxSub11 is a TextBoxSub
//     TextBoxSub12 is a TextBoxSub
//     parast_name is a FormSub
//     ButtonSub2 is a ButtonSub
//     ButtonSub3 is a ButtonSub
//     LineControlSub1 is a LineControlSub
//     TextBoxSub13 is a TextBoxSub
//     TextBoxSub14 is a TextBoxSub
//     date_logik is a FormSub
//     dbListSub1 is a dbListSub
//     frmCount is a FormSub
//     TextBoxSub1000 is a TextBoxSub
//     ButtonSub4 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Branch_Branch_Name
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Company_Company_Name
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object client_apo
Register_Object client_aponame
Register_Object client_eos
Register_Object client_eosname
Register_Object date_apo
Register_Object date_apo999
Register_Object date_eos
Register_Object date_eos999
Register_Object date_logik
Register_Object dbGroupSub1
Register_Object dbListSub1
Register_Object Fpa_DD
Register_Object frmCount
Register_Object Item_DD
Register_Object LineControlSub1
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Pmoves_DD
Register_Object Ptyppar_DD
Register_Object Ptypparh_DD
Register_Object parast_apo
Register_Object parast_name
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object Syscurxr_DD
Register_Object seira_apo
Register_Object TextBoxSub1
Register_Object TextBoxSub1000
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object Towns_DD
Register_Object Units_DD
Register_Object V21ao
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open gtypkin
    Open gplan
    open gbridgeh
    open gbridged
    use wait.dg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use Form.Sub
    Use Button.Sub
    Use Line.Sub
    Use dbList.Sub

    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
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
    Use PTYPPARH.DD
    Use SYSCURXR.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V21ao FOR V21ao

    Object V21ao is a dbView

        //AB-StoreTopStart
        property string         Psmodule public ''
        property integer        piepil   public 0
        property integer        piTxtID        public 0
        
        
        //AB-StoreTopEnd

        Set Label to "ä¶ö†©´†°¶ß¶Âû©û ßò®ò©´ò´†°È§ Ñ£ß¶®†°¶Á"
        Set Size to 290 519
        Set Location to 5 5

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD

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

        Object Nomisma_DD is a Nomisma_DataDictionary
        End_Object    // Nomisma_DD

        Object Particle_DD is a Particle_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Ptyppar_DD(self))
            Set DDO_Server to (Nomisma_DD(self))

            //AB-StoreStart
                                        
            begin_constraints
                Local date   ldapo ldeos
                Local string lsapopel lseospel lsseira lsparast
                local integer iepil
                get value of (client_apo(self)) to lsapopel
                get value of (client_eos(self)) to lseospel
                get value of (date_apo(self))   to ldapo
                get value of (date_eos(self))   to ldeos
                get value of (seira_apo(self))  to lsseira
                get value of (parast_apo(self)) to lsparast
                set ordering to 15
                if (ldapo='') move '01/01/1980' to ldapo
                if (ldeos='') move '31/12/2100' to ldeos
                constrain particle.company_code     eq syscurxr.company_code
                constrain particle.branch_code      eq syscurxr.branch_code
                constrain particle.year_year        eq syscurxr.year_year
                constrain particle.partl_module     eq (psmodule(self))
                constrain particle.se_logik         eq 0
                constrain particle.partl_hmnia      ge ldapo
                constrain particle.partl_hmnia      le ldeos
                constrain particle.partl_ektyposh   eq '1'
                constrain particle.partl_payam      ne 0
                if (lsparast<>'');
                   constrain particle.ptyppar_code  eq lsparast
                if (lsapopel<>'');
                   constrain particle.client_id     ge lsapopel
                if (lseospel<>'');
                   constrain particle.client_id     le lseospel
                If (lsseira<>'');
                   constrain particle.pseira_seira  eq lsseira
            
            
             End_constraints
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
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

        Object Ptypparh_DD is a Ptypparh_DataDictionary
            Set DDO_Server to (Ptyppar_DD(self))
            Set Constrain_File to Ptyppar.File_Number
        End_Object    // Ptypparh_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Particle_DD(self))
        Set Server to (Particle_DD(self))

        //AB-DDOEnd

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 512
            Set Location to 1 1
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 106
                Set Location to 9 63
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 123
                Set Location to 9 245
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
                Set Size to 13 85
                Set Location to 8 422
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
                Set Label to "ìß¶°ò´·©´û£ò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 175
                Set Size to 10 54
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ï®„©û"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 375
                Set Size to 10 32
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3


            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // dbGroupSub1

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„  ßò®ò©´ò´†°È§ "
            Set Color to clAqua
            Set TextColor to 4210688
            Set Location to 28 1
            Set Size to 10 438
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
        End_Object    // TextBoxSub6

        Object RadioGroupSub1 is a RadioGroupSub
            Set Label to "Ñß†¢¶ö„ ßò®ò©´ò´†°È§"
            Set Size to 24 147
            Set Location to 42 3
            Object Radio1 is a RadioSub
                Set Label to "è‡¢„©ú‡§ "
                Set Size to 10 49
                Set Location to 10 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "Äö¶®È§"
                Set Size to 10 42
                Set Location to 9 74
            End_Object    // Radio2


            //AB-StoreStart
                    
            Procedure Notify_Select_State integer iNewItem integer iOldItem
                local integer licount
                Forward Send Notify_Select_State  iNewItem  iOldItem
                If iNewItem Eq 0 begin
                    Set piepil   to 0
                    set psmodule to '01'
                end
                Else If iNewItem Eq 1 begin
                    Set piepil   to 1
                    set psmodule to '02'
                end
                send Constrain_The_Records
                Get Select_Count of dbListsub1 to liCount
                set enabled_State of (buttonsub3(self)) to (liCount)
                If (liCount)    Set Label of (buttonsub2(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                Else            Set Label of (buttonsub2(self)) to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
            
            
            End_Procedure
            
            // If you set Current_radio you must set this after the
            // radio objects have been created AND after Notify_select_State has been
            // created. i.e. Set in bottom-code at end!!
            //Set Current_Radio to 0
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "î¶®‚ò™ òßÊ"
            Set Location to 46 177
            Set Size to 10 49
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "î¶®‚ò™ úÈ™"
            Set Location to 60 177
            Set Size to 10 45
        End_Object    // TextBoxSub8

        Object client_apo is a FormSub
            Set Size to 13 85
            Set Location to 44 231
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (sl100(Current_object))
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(Self))
                forward send prompt
            end_procedure
            
            procedure onchange
                string sclient
                get value item 0 to sclient
                Move (fsclient(Self,sclient)) to sclient
                set value of (client_aponame(self)) to sclient
            end_procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // client_apo

        Object client_eos is a FormSub
            Set Size to 13 85
            Set Location to 59 231
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (sl100(Current_object))
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(Self))
                forward send prompt
            end_procedure
            
            procedure onchange
                string sclient
                get value item 0 to sclient
                Move (fsclient(Self,sclient)) to sclient
                set value of (client_eosname(self)) to sclient
            end_procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // client_eos

        Object client_aponame is a FormSub
            Set Size to 13 172
            Set Location to 44 340
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // client_aponame

        Object client_eosname is a FormSub
            Set Size to 13 172
            Set Location to 58 340
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // client_eosname

        Object date_apo999 is a TextBoxSub
            Set Label to "Ü£/§Âò òßÊ"
            Set Location to 78 177
            Set Size to 10 47
        End_Object    // date_apo999

        Object date_eos999 is a TextBoxSub
            Set Label to "ÑÈ™"
            Set Location to 78 321
            Set Size to 10 17
        End_Object    // date_eos999

        Object seira_apo is a FormSub
            Set Size to 13 55
            Set Location to 71 94
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object  to (sl013(Current_object))
            
            
            
            //AB-StoreEnd

        End_Object    // seira_apo

        Object parast_apo is a FormSub
            Set Size to 13 55
            Set Location to 90 94
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (sl012(Current_object))
            Procedure Prompt
                Set psModule Of (sl012(Self)) to (psModule(Self))
                forward send prompt
            end_procedure
            
            procedure onchange
                string spar
                get value item 0 to spar
                Move (fsptyppar(Self,spar)) to spar
                set value of (parast_name(self)) to spar
            end_procedure
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // parast_apo

        Object date_apo is a FormSub
            Set Size to 13 85
            Set Location to 76 231
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            //AB-StoreEnd

        End_Object    // date_apo

        Object date_eos is a FormSub
            Set Size to 13 85
            Set Location to 74 340
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            //AB-StoreEnd

        End_Object    // date_eos

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ©ú†®·™"
            Set Location to 73 5
            Set Size to 10 53
        End_Object    // TextBoxSub11

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ßò®ò©´ò´†°¶Á"
            Set Location to 90 5
            Set Size to 10 83
        End_Object    // TextBoxSub12

        Object parast_name is a FormSub
            Set Size to 13 140
            Set Location to 91 176
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // parast_name

        Object ButtonSub2 is a ButtonSub

            //AB-StoreTopStart
                                        
                                        
            //AB-StoreTopEnd

            Set Label to "ãò®°·®†©£ò úß†¢úö£‚§‡§ úöö®ò≠È§"
            Set Size to 14 169
            Set Location to 111 1

            //AB-StoreStart
                                        
            Procedure Mark_All
               Integer inum
               send rebuild_constraints to (particle_dd(self))
               send find to (particle_dd(self)) first_record 15
               While (Found=1)
                  set array_value of (selected_items(dblistsub1(self))) item inum to particle.recnum
                  add 1 to inum
                  send find to (particle_dd(self)) next_record 15
               Loop
               If (Select_Count(Dblistsub1(Self))>0) Set label of (buttonsub2(self)) to 'çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
               Else                                  Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            End_Procedure
            
            Procedure Unmark_All
               Send Delete_Data to (Selected_Items(dblistsub1(self)))
               Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            End_Procedure
            
            Procedure Onclick
               Integer licount
               If (current_record(dblistsub1(Self))) begin
                //   Set Dynamic_Update_State    Of (Dblistsub1(Self))  To false
                   If (select_Count(dblistsub1(Self)) Gt 0) send unmark_all
                   Else                                     send mark_all
               End
               Else Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
               Set enabled_State of (buttonsub3(self)) to (Select_Count(Dblistsub1(Self)))
               Send Beginning_Of_Data    to (dblistsub1(self))
             //  Set Dynamic_Update_State    Of (Dblistsub1(Self))  To true
               Get Select_Count of dbListsub1 to liCount
               Set Value of (frmCount(self)) item 0 to (Select_Count(dblistsub1(Self)))
               Set enabled_State of (buttonsub3(self)) to (liCount)
               If (liCount)    Set Label of (buttonsub2(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
               Else            Set Label of (buttonsub2(self)) to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object ButtonSub3 is a ButtonSub
            Set Label to "ä¶ö†©´†°¶ß¶Âû©û úß†¢úö£‚§‡§ úöö®ò≠È§ "
            Set Size to 23 169
            Set Location to 105 344
            Set Form_FontWeight Item 0 to 800

            //AB-StoreStart
            Procedure OnClick
              date ddate partldate
              Integer iInt iCount ierr igtypkin ipartlno imsg irecnum icheck ilast rval
              string  spartlaitiol snomisma msgstr sptypparcode scodegl switemkata sclient
              string  ssign sxp saxia sflaggl sfpapol sfpaago switemkatp sitemp sitema smodule
              number nisotimia naxia ntotal nsign
              move 0 to ierr
              get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ¢¶ö†©´†°¶ß¶Âû©û ´‡§ úß†¢úö£‚§‡§ ßò®ò©´ò´†°È§ ??" to imsg
              If (imsg =MBR_yes) begin
                 indicate err false
                 Set piTxtID to (Wait(Self))
                 Set Button_State    of (piTxtID(Self))  to False
                 Set BarVisibleState of (piTxtID(Self))  to '' False
                 Send Popup                              to (piTxtID(Self))
                 get value of (date_logik(self)) to ddate
                 Get Select_Count of (dblistsub1(Self)) to iInt
                 If (iInt>0) Begin
                 begin_transaction
                    For iCount from 0 to (iInt-1)
                       Get array_value of (Selected_Items(dblistsub1(self))) Item iCount to iRecnum
                       move '' to msgstr
            
            
            
                       send clear to particle_dd
                       move irecnum to particle.recnum
                       Send Find_By_Recnum to particle_DD particle.File_Number particle.Recnum
                       if (found=1) begin
            
            
                          get field_current_value of particle_dd field particle.partl_hmnia   to partldate
                          get field_current_value of particle_dd field particle.partl_no      to ipartlno
                          get field_current_value of particle_dd field particle.nomisma_code  to snomisma
                          get field_current_value of particle_dd field particle.isotimia      to nisotimia
                          get field_current_value of particle_dd field particle.client_id     to sclient
                          get field_current_value of particle_dd field particle.partl_module  to smodule
                          clear gbridgeh
                          move syscurxr.company_code to Gbridgeh.company_code
                          move syscurxr.branch_code  to Gbridgeh.branch_code
                          move syscurxr.year_year    to gbridgeh.year_year
                          move smodule               to gbridgeh.module_from
                          move irecnum               to gbridgeh.particle_recnum
                          find eq gbridgeh  by index.1
                          if (found=1) begin
                             move 1 to ierr
                             move 'ÑÆú† ú§û£ú®‡üúÂ ´¶ ò®ÆúÂ¶ Gbridheh £ú ´¶ ßò®ò©´ò´†°Ê= ' to msgstr
                             append msgstr ipartlno
                             send stop_box msgstr 'ë≠·¢£ò 6901'
                             abort_transaction
                             goto telos
                          end
                          reread sysrecg
                          Add 1 to SysrecG.Gbridgeh_Rec0
                          Saverecord SysrecG
                          unlock
                          Move SysrecG.Gbridgeh_Rec0 to Gbridgeh.Gbridgeh_Rec0
                          move syscurxr.company_code to Gbridgeh.company_code
                          move syscurxr.branch_code  to Gbridgeh.branch_code
                          move syscurxr.year_year    to gbridgeh.year_year
                          move irecnum               to gbridgeh.particle_recnum
                          get field_current_value of ptyppar_dd field ptyppar.gtypkin_code  to igtypkin
                          get field_current_value of ptyppar_dd field ptyppar.ptyppar_descr to spartlaitiol
                          get field_current_value of ptyppar_dd field ptyppar.ptyppar_code  to sptypparcode
                          move syscurxr.company_code to Gtypkin.company_code
                          move syscurxr.branch_code  to Gtypkin.branch_code
                          move syscurxr.year_year    to gtypkin.year_year
                          move igtypkin              to gtypkin.gtypkin_code
                          find eq gtypkin by index.1
                          if (not(found)) begin
                             move 1 to ierr
                             move 'É‚§ ô®‚üû°ú ©´„§ Ç.ä ¶ °‡õ†°Ê™ °Â§û©û™ = ' to msgstr
                             append msgstr igtypkin
                             send stop_box msgstr 'ë≠·¢£ò 6903'
                             abort_transaction
                             goto telos
                          end
                          move gtypkin.gtypkin_recr    to gbridgeh.gtypkin_recr
                          if (ddate='') move partldate to gbridgeh.garticl_hmnia
                          else          move ddate     to gbridgeh.garticl_hmnia
                          move ipartlno                to gbridgeh.garticl_no
                          move spartlaitiol            to gbridgeh.garticl_aitiol
                          move snomisma                to gbridgeh.garticl_c_code2
                          move nisotimia               to gbridgeh.garticl_rate0
                          move smodule                 to gbridgeh.module_from
                          move sptypparcode            to gbridgeh.ptyppar_code
                          move sclient                 to gbridgeh.client_id
                          move (append('',((Trim(SysCurGL.Branch_Site))+;
                                         (Trim(String(Gbridgeh.Gbridgeh_Rec0)))))) to Gbridgeh.Gbridgeh_Recr
                          saverecord gbridgeh
                          Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û ò®ÆúÂ¶¨ Gbridgeh £ú ßò®ò©´ò´†°Ê '+(string (ipartlno)))
                       end
                       else begin
                             move 1 to ierr
                             move 'É‚§ £ß¶®È §ò õ†òô·©‡ òßÊ ´û§ £§„£û ´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                             append msgstr ipartlno
                             send stop_box msgstr 'ë≠·¢£ò 6902'
                             abort_transaction
                             goto telos
                       end
                       send rebuild_constraints to pmoves_dd
                       send find to pmoves_dd first_record 3
                       if (not(found)) begin
                          move 1 to ierr
                          move 'É‚§ ¨ß·®Æú† °Â§û©û ú†õÈ§ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                          append msgstr ipartlno
                          send stop_box msgstr 'ë≠·¢£ò 6907'
                          abort_transaction
                          goto telos
                       end
                       while (found=1)
                           send rebuild_constraints to ptypparh_dd
                           send find to ptypparh_dd first_record 2
                           if (not(found)) begin
                              move 1 to ierr
                              move 'É‚§ £ß¶®È §ò õ†òô·©‡ Ptypparh ö†ò flags ä¶ö†©´†°„™ !! ' to msgstr
                              send stop_box msgstr 'ë≠·¢£ò 6904'
                              abort_transaction
                              goto telos
                           end
                           while (found=1)
                              get field_current_value of ptypparh_dd field ptypparh.codegl to scodegl
                              get field_current_value of ptypparh_dd field ptypparh.sign   to ssign
                              get field_current_value of ptypparh_dd field ptypparh.xp     to sxp
                              get field_current_value of ptypparh_dd field ptypparh.axia   to saxia
                              get field_current_value of ptypparh_dd field ptypparh.flaggl to sflaggl
                              get field_current_value of fpa_dd field fpa.polhsh_codegl    to sfpapol
                              get field_current_value of fpa_dd field fpa.agora_codegl     to sfpaago
                              get field_current_value of witemkat_dd field witemkat.codeglpol to switemkatp
                              get field_current_value of witemkat_dd field witemkat.codeglago to switemkata
                              get field_current_value of item_dd field item.codeglpol to sitemp
                              get field_current_value of item_dd field item.codeglago to sitema
                              if (sflaggl='01') begin
                                 if (scodegl='') move clients.client_glcode to scodegl
                              end
                              if  (psmodule(self)='01')replace '@3' in scodegl with (trim(sfpapol))
                              else if (psmodule(self)='02') replace '@3' in scodegl with (trim(sfpaago))
                              if (psmodule(self)='01') replace "@2" in scodegl with (trim(switemkatp))
                              else if (psmodule(self)='02')replace "@2" in scodegl with (trim(switemkata))
                              if  (psmodule(self)='01')replace '@4' in scodegl with (trim(sitemp))
                              else if (psmodule(self)='02') replace '@4' in scodegl with (trim(sitema))
                              replace "@1" in scodegl with (trim(syscurxr.branch_code))
            
                              Move (Check_log(scodegl)) to iCheck
                              move (check_last(scodegl)) to ilast
                              if (icheck) begin
                                 move 1 to ierr
                                 move 'É‚§ ¨ß·®Æú† o ¢¶ö/©£Ê™ Ç.ä ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                                 append msgstr ipartlno
                                 append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
                                 append msgstr scodegl
                                 append msgstr ' \n Ñ¢‚öÆ¶™ ¢¶ö/©£¶Á Ç.ä ≠¶®‚ò - °ò´ûö¶®Âò ú†õÈ§'
                                 send stop_box msgstr 'ë≠·¢£ò 6905'
                                 abort_transaction
                                 goto telos
                              end
                              if (ilast) begin
                                 move 1 to ierr
                                 move 'é °‡õ†°Ê™ ¢¶ö/©£¶Á õú§ úÂ§ò† ´ú¢ú¨´òÂ¶¨ ôòü£¶Á ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                                 append msgstr ipartlno
                                 append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
                                 append msgstr scodegl
                                 send stop_box msgstr 'ë≠·¢£ò 6909'
                                 abort_transaction
                                 goto telos
                              end
                              if      (saxia='1') move pmoves.pms_ambd       to naxia
                              else if (saxia='2') move pmoves.pms_amaftdisc  to naxia
                              else if (saxia='3') move pmoves.pms_vatam      to naxia
                              else if (saxia='4') move pmoves.pms_payable    to naxia
                              if (naxia=0) begin
                                 move 1 to ierr
                                 move 'É‚§ ¨ß·®Æú† ò•Âò ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                                 append msgstr ipartlno
                                 send stop_box msgstr 'ë≠·¢£ò 6906'
                                 abort_transaction
                                 goto telos
                              end
                              if      (ssign='-') move -1 to nsign
                              else if (ssign='+') move 1 to nsign
                              clear gbridged
                              move gbridgeh.gbridgeh_recr to gbridged.gbridgeh_recr
                              move scodegl               to gbridged.ext_gplan_code
                              find eq gbridged by index.1
                              if (not(found)) begin
                                 move spartlaitiol          to gbridged.gmove_aitiol
                                 if (sxp='ï') move (naxia*nsign) to gbridged.gmove_x2
                                 else         move (naxia*nsign) to gbridged.gmove_p2
                                 saverecord gbridged
                              end
                              else begin
                                 if (sxp='ï') move ((naxia*nsign)+gbridged.gmove_x2) to gbridged.gmove_x2
                                 else         move ((naxia*nsign)+gbridged.gmove_p2) to gbridged.gmove_p2
                                 saverecord gbridged
                              end
                              Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Gbridged ≠¶®‚ò £ú ßò®ò©´ò´†°Ê '+(string (ipartlno)))
                           send find to ptypparh_dd next_record 2
                           loop
                       send find to  pmoves_dd next_record 3
                       loop
                       set field_changed_value of particle_dd field particle.se_logik to '1'
                       send request_save to particle_dd
                    Loop
                 end_transaction
                 Set Value of (frmCount(self)) item 0 to 0
                 send rebuild_constraints  to (particle_dd(self))
                 Send Beginning_Of_Data    to (dblistsub1(self)) true
                 End
              end
              [err] move 1 to ierr
              if (ierr=0) begin
                 Send Delete_Data to (Selected_Items(dblistsub1(self)))
                 Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
              end
              else begin
                 move 'É‚§ £ß¶®È §ò õ†òô·©‡ ´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                 append msgstr ipartlno
                 append msgstr ' âò¢‚©´ú PIS !!'
                 send stop_box msgstr 'ë≠·¢£ò 6902'
                 abort_transaction
              end
            
              telos:
              if (err) begin
                 indicate err false
                 send rebuild_constraints  to (particle_dd(self))
                 Send Beginning_Of_Data    to (dblistsub1(self)) true
              end
              If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
              procedure_return
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub3

        Object LineControlSub1 is a LineControlSub
            Set Line_Style to lnSINGLE
            Set Size to 2 514
            Set Location to 129 1
        End_Object    // LineControlSub1

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "Ü£/§Âò ¢¶ö†©´†°¶ß¶Âû©û™"
            Set Location to 107 172
            Set Size to 10 84
        End_Object    // TextBoxSub13

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "âú§„ = û£/§Âò ßò®ò©´ò´."
            Set Location to 116 172
            Set Size to 10 86
        End_Object    // TextBoxSub14

        Object date_logik is a FormSub
            Set Size to 13 50
            Set Location to 110 266
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_Mask Item 0 to "dd/MM/yyyy"
        End_Object    // date_logik

        Object dbListSub1 is a dbListSub
            Set Main_File to Particle.File_Number
            Set Ordering to 15
            Set Size to 129 505
            Set Location to 130 3

            Begin_Row
                Entry_Item ('')
                Entry_Item Ptyppar.Ptyppar_descr
                Entry_Item Particle.Pseira_seira
                Entry_Item Particle.Partl_no
                Entry_Item Particle.Partl_hmnia
                Entry_Item Clients.Client_name
                Entry_Item Particle.Partl_payam
            End_Row

            Set Form_Width    item 0 to 16
            Set Header_Label  item 0 to ""
            Set Column_Checkbox_State  item 0 to True
            
            Set Form_Width    item 1 to 120
            Set Header_Label  item 1 to "èò®ò©´ò´†°Ê"
            
            Set Form_Width    item 2 to 40
            Set Header_Label  item 2 to "ëú†®·"
            
            Set Form_Width    item 3 to 45
            Set Header_Label  item 3 to "Ä®†ü£Ê™"
            
            Set Form_Width    item 4 to 45
            Set Header_Label  item 4 to "Ü£/§Âò"
            
            Set Form_Width    item 5 to 153
            Set Header_Label  item 5 to "î¶®‚ò™"
            
            Set Form_Width    item 6 to 80
            Set Header_Label  item 6 to "Ä•Âò èò®ò©´ò´†°¶Á"
            

            //AB-StoreStart
            Set Points Item 6 to 2
            Set Numeric_Mask Item 6 to 14 2 ' ,*'
            Set Select_Mode                     to Multi_Select
            Set Column_Option           item 0  to Noenter False
            Set Column_checkBox_state   item 0  to true
            Set Auto_Shadow_State               to False
            Set Auto_Index_State                to False
            Set Popup_Search_State              to True
            Set Find_Search_State               to False
            
            Set Color                           to 15263976
            Set TextColor                       to clWindowText
            Set CurrentRowColor                 to 14205112
            Set Highlight_row_color             to 14205112
            Set CurrentRowTextColor             to clWindowText
            Set CurrentCellColor                to 14205112
            Set CurrentCellTextColor            to clBtnText
            
            
            Procedure Toggle_Select
                Local integer iBase iOffset iCol
                Move 0 to iOffset
                Set Enabled_State of ButtonSub3 to False
                Get Base_Item to iBase
                Get Current_Col to iCol
                Forward Send Toggle_Select
                Send DoDisplayCheckBox (iBase+iOffset) (Select_State(self,iBase))
                If (Select_Count(dblistsub1(Self)) Gt 0) begin
                   Set Label of (buttonSub2(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                   Set Enabled_State of ButtonSub3 to True
                end
                else begin
                   Set Label of (buttonSub2(self)) to "ãò®°·®†©£ò Ê¢‡§ ´‡§ úöö®ò≠È§"
                   Set Enabled_State of ButtonSub3 to false
                end
                Set value of (frmCount(self)) item 0 to (Select_Count(dblistsub1(Self)))
                Set Dynamic_Update_State to true
            
            End_Procedure  //Toggle_Select
            
            Procedure Entry_Display Integer i1 Integer i2
                Local integer iBase iOffset iSelItemsID bState
                Get base_Item to iBase
                move 0 to iOffset
                move (Selected_Items(self)) to iSelItemsID
                Forward Send Entry_Display i1 i2
                Get find_element of iSelItemsID particle.recnum to bState
                Send DoDisplayCheckBox (iBase+iOffset) (bState<>-1)
            End_Procedure // Entry_Display
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // dbListSub1

        Object frmCount is a FormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreTopEnd

            Set Size to 13 23
            Set Location to 262 120
            Set TextColor to clRed
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set Shadow_state to true
            //AB-StoreEnd

        End_Object    // frmCount

        Object TextBoxSub1000 is a TextBoxSub
            Set Label to "Ñß†¢úö£‚§ò èò®ò©´ò´†°· = "
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 262 3
            Set Size to 13 96
            Set FontWeight to 600
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub1000

        Object ButtonSub4 is a ButtonSub
            Set Label to "ÑÁ®ú©û úöö®ò≠È§"
            Set Size to 13 83
            Set Location to 74 429
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                
            Procedure OnClick
                Send constrain_the_records
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub4


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String   sModule
            integer  rval
            Forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure
        
        Procedure Constrain_The_Records
                Integer liCount
                Send Rebuild_Constraints    to (particle_DD(Self))
                Send Delete_Data            to (Selected_Items(dblistsub1(self)))
                Send Beginning_Of_Data      to (dblistsub1(self))
                Get Select_Count            of dbListsub1           to liCount
                Set enabled_State           of (buttonsub3(self))   to (liCount)
                If (liCount) Set Label      of (buttonsub2(self))   to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                Else         Set Label      of (buttonsub2(self))   to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V21ao


    //AB-StoreStart
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
    //AB-StoreEnd

//AB/     End_Object    // prj
