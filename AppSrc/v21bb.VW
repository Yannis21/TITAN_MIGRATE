//AB/ Project V21bb:elegxos Gbridgeh+Gbridged / akyrosh
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V21bb:elegxos Gbridgeh+Gbridged / akyrosh"
//AB/         Set ProjectFileName to "v21bb.VW"

// Project Object Structure
//   V21bb is a dbView
//     Syscurxr_DD is a DataDictionary
//     Gbridgeh_DD is a DataDictionary
//     Gbridged_DD is a DataDictionary
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
//     parast_apo is a FormSub
//     date_apo is a FormSub
//     date_eos is a FormSub
//     TextBoxSub12 is a TextBoxSub
//     parast_name is a FormSub
//     ButtonSub2 is a ButtonSub
//     ButtonSub3 is a ButtonSub
//     LineControlSub1 is a LineControlSub
//     dbListSub1 is a dbListSub
//     frmCount is a FormSub
//     TextBoxSub1000 is a TextBoxSub
//     ButtonSub4 is a ButtonSub
//     dbgridSub2 is a dbGridSub
//     TextBoxSub1001 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object Company_Company_Name
Register_Object client_apo
Register_Object client_aponame
Register_Object client_eos
Register_Object client_eosname
Register_Object date_apo
Register_Object date_apo999
Register_Object date_eos
Register_Object date_eos999
Register_Object dbGroupSub1
Register_Object dbgridSub2
Register_Object dbListSub1
Register_Object frmCount
Register_Object Gbridged_DD
Register_Object Gbridgeh_DD
Register_Object LineControlSub1
Register_Object parast_apo
Register_Object parast_name
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub1000
Register_Object TextBoxSub1001
Register_Object TextBoxSub12
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object V21bb
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open clients
    Open ptyppar
    open gplan
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
    Use dbGrid.Sub

    Use SYSCURXR.DD
    Use GBRIDGEH.DD
    Use GBRIDGED.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V21bb FOR V21bb

    Object V21bb is a dbView

        //AB-StoreTopStart
        property string         Psmodule public ''
        property integer        piepil   public 0
        property integer        piTxtID        public 0
        
        //AB-StoreTopEnd

        Set Label to "Ñ¢úöÆ¶™ ßò®ò©´ò´†°È§ òßÊ ö‚≠¨®ò ú£ß¶®†°¶Á /  ãú®†°„ - ¶¢†°„ ò°Á®‡©û õ†òõ†°ò©Âò™ ¢¶ö†©´†°¶ß¶Âû©û™"
        Set Size to 294 519
        Set Location to 1 5

        //AB-DDOStart

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Gbridgeh_DD is a Gbridgeh_DataDictionary

            //AB-StoreStart
            begin_constraints
                Local date   ldapo ldeos
                Local string lsapopel lseospel lsparast
                local integer iepil
                get value of (client_apo(self)) to lsapopel
                get value of (client_eos(self)) to lseospel
                get value of (date_apo(self))   to ldapo
                get value of (date_eos(self))   to ldeos
                get value of (parast_apo(self)) to lsparast
                set ordering to 4
                constrain Gbridgeh.company_code     eq syscurxr.company_code
                constrain Gbridgeh.branch_code      eq syscurxr.branch_code
                constrain Gbridgeh.year_year        eq syscurxr.year_year
                constrain Gbridgeh.module_from      eq (psmodule(self))
                constrain Gbridgeh.Gbridgeh_flag    ne '1'
                if (lsparast<>'');
                   constrain Gbridgeh.ptyppar_code  eq lsparast
                if (lsapopel<>'');
                   constrain Gbridgeh.client_id     ge lsapopel
                if (lseospel<>'');
                   constrain Gbridgeh.client_id     le lseospel
                if ldapo ne '';
                   constrain Gbridgeh.garticl_hmnia   ge ldapo
                if ldeos ne '';
                   constrain Gbridgeh.garticl_hmnia   le ldeos
            
             End_constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Gbridgeh_DD

        Object Gbridged_DD is a Gbridged_DataDictionary
            Set DDO_Server to (Gbridgeh_DD(self))
            Set Constrain_File to Gbridgeh.File_Number
        End_Object    // Gbridged_DD

        Set Main_DD to (Gbridgeh_DD(self))
        Set Server to (Gbridgeh_DD(self))

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
                //for augmentation
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
            Set Location to 45 193
            Set Size to 10 49
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "î¶®‚ò™ úÈ™"
            Set Location to 60 193
            Set Size to 10 45
        End_Object    // TextBoxSub8

        Object client_apo is a FormSub
            Set Size to 13 85
            Set Location to 44 247
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
            Set Location to 59 247
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
            Set Location to 76 240
            Set Size to 10 39
        End_Object    // date_apo999

        Object date_eos999 is a TextBoxSub
            Set Label to "ÑÈ™"
            Set Location to 76 341
            Set Size to 10 17
        End_Object    // date_eos999

        Object parast_apo is a FormSub
            Set Size to 13 55
            Set Location to 73 89
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (sl012(Current_object))
            Procedure Prompt
                Set psModule Of (sl012(Self)) to (psModule(Self))
                forward send prompt
            end_procedure
            
            procedure onchange
                string sptyppar
                get value item 0 to sptyppar
                Move (fsptyppar(Self,sptyppar)) to sptyppar
                set value of (parast_name(self)) to sptyppar
            end_procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // parast_apo

        Object date_apo is a FormSub
            Set Size to 13 51
            Set Location to 75 281
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            //AB-StoreEnd

        End_Object    // date_apo

        Object date_eos is a FormSub
            Set Size to 13 51
            Set Location to 74 374
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            //AB-StoreEnd

        End_Object    // date_eos

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ßò®ò©´ò´†°¶Á"
            Set Location to 74 3
            Set Size to 10 83
        End_Object    // TextBoxSub12

        Object parast_name is a FormSub
            Set Size to 13 91
            Set Location to 73 145
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
            Set Location to 263 177

            //AB-StoreStart
            
            Procedure Mark_All
               Integer inum
               send rebuild_constraints to (Gbridgeh_dd(self))
               send find to (gbridgeh_dd(self)) first_record 4
               While (Found=1)
                  set array_value of (selected_items(dblistsub1(self))) item inum to gbridgeh.recnum
                  add 1 to inum
                  send find to (gbridgeh_dd(self)) next_record 4
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
            Set Size to 13 71
            Set Location to 265 433
            Set Form_FontWeight Item 0 to 800

            //AB-StoreStart
            Procedure OnClick
            //  date ddate partldate
            //  Integer iInt iCount ierr igtypkin ipartlno imsg irecnum icheck ilast
            //  string  spartlaitiol snomisma msgstr sptypparcode scodegl switemkata
            //  string  ssign sxp saxia sflaggl sfpapol sfpaago switemkatp sitemp sitema
            //  number nisotimia naxia ntotal nsign
            //  move 0 to ierr
            //  get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ¢¶ö†©´†°¶ß¶Âû©û ´‡§ úß†¢úö£‚§‡§ ßò®ò©´ò´†°È§ ??" to imsg
            //  If (imsg =MBR_yes) begin
            //     Set piTxtID to (Wait(Self))
            //     Set Button_State    of (piTxtID(Self))  to False
            //     Set BarVisibleState of (piTxtID(Self))  to '' False
            //     Send Popup                              to (piTxtID(Self))
            //     get value of (date_logik(self)) to ddate
            //     Get Select_Count of (dblistsub1(Self)) to iInt
            //     If (iInt>0) Begin
            //     begin_transaction
            //        For iCount from 0 to (iInt-1)
            //           Get array_value of (Selected_Items(dblistsub1(self))) Item iCount to iRecnum
            //           move '' to msgstr
            //           send clear to particle_dd
            //           move irecnum to particle.recnum
            //           Send Find_By_Recnum to particle_DD particle.File_Number particle.Recnum
            //           if (found=1) begin
            //              get field_current_value of particle_dd field particle.partl_hmnia   to partldate
            //              get field_current_value of particle_dd field particle.partl_no      to ipartlno
            //              get field_current_value of particle_dd field particle.nomisma_code  to snomisma
            //              get field_current_value of particle_dd field particle.isotimia      to nisotimia
            //              clear gbridgeh
            //              move syscurxr.company_code to Gbridgeh.company_code
            //              move syscurxr.branch_code  to Gbridgeh.branch_code
            //              move syscurxr.year_year    to gbridgeh.year_year
            //              move irecnum               to gbridgeh.particle_recnum
            //              find eq gbridgeh  by index.1
            //              if (found=1) begin
            //                 move 1 to ierr
            //                 move 'ÑÆú† ú§û£ú®‡üúÂ ´¶ ò®ÆúÂ¶ Gbridheh £ú ´¶ ßò®ò©´ò´†°Ê= ' to msgstr
            //                 append msgstr ipartlno
            //                 send stop_box msgstr 'ë≠·¢£ò 6901'
            //                 abort_transaction
            //                 goto telos1
            //              end
            //              reread sysrecg
            //              Add 1 to SysrecG.Gbridgeh_Rec0
            //              Saverecord SysrecG
            //              unlock
            //              Move SysrecG.Gbridgeh_Rec0 to Gbridgeh.Gbridgeh_Rec0
            //              move syscurxr.company_code to Gbridgeh.company_code
            //              move syscurxr.branch_code  to Gbridgeh.branch_code
            //              move syscurxr.year_year    to gbridgeh.year_year
            //              move irecnum               to gbridgeh.particle_recnum
            //              get field_current_value of ptyppar_dd field ptyppar.gtypkin_code  to igtypkin
            //              get field_current_value of ptyppar_dd field ptyppar.ptyppar_descr to spartlaitiol
            //              get field_current_value of ptyppar_dd field ptyppar.ptyppar_code  to sptypparcode
            //              move syscurxr.company_code to Gtypkin.company_code
            //              move syscurxr.branch_code  to Gtypkin.branch_code
            //              move syscurxr.year_year    to gtypkin.year_year
            //              move igtypkin              to gtypkin.gtypkin_code
            //              find eq gtypkin by index.1
            //              if (not(found)) begin
            //                 move 1 to ierr
            //                 move 'É‚§ ô®‚üû°ú ©´„§ Ç.ä ¶ °‡õ†°Ê™ °Â§û©û™ = ' to msgstr
            //                 append msgstr igtypkin
            //                 send stop_box msgstr 'ë≠·¢£ò 6903'
            //                 abort_transaction
            //                 goto telos1
            //              end
            //              move gtypkin.gtypkin_recr    to gbridgeh.gtypkin_recr
            //              if (ddate='') move partldate to gbridgeh.garticl_hmnia
            //              else          move ddate     to gbridgeh.garticl_hmnia
            //              move ipartlno                to gbridgeh.garticl_no
            //              move spartlaitiol            to gbridgeh.garticl_aitiol
            //              move snomisma                to gbridgeh.garticl_c_code2
            //              move nisotimia               to gbridgeh.garticl_rate0
            //              move (psmodule(self))        to gbridgeh.module_from
            //              move sptypparcode            to gbridgeh.ptyppar_code
            //              move (append('',((Trim(SysCurGL.Branch_Site))+;
            //                             (Trim(String(Gbridgeh.Gbridgeh_Rec0)))))) to Gbridgeh.Gbridgeh_Recr
            //              saverecord gbridgeh
            //              Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û ò®ÆúÂ¶¨ Gbridgeh £ú ßò®ò©´ò´†°Ê '+(string (ipartlno)))
            //           end
            //           else begin
            //                 move 1 to ierr
            //                 move 'É‚§ £ß¶®È §ò õ†òô·©‡ òßÊ ´û§ £§„£û ´¶ ßò®ò©´ò´†°Ê = ' to msgstr
            //                 append msgstr ipartlno
            //                 send stop_box msgstr 'ë≠·¢£ò 6902'
            //                 abort_transaction
            //                 goto telos1
            //           end
            //           send rebuild_constraints to pmoves_dd
            //           send find to pmoves_dd first_record 0
            //           if (not(found)) begin
            //              move 1 to ierr
            //              move 'É‚§ ¨ß·®Æú† °Â§û©û ú†õÈ§ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
            //              append msgstr ipartlno
            //              send stop_box msgstr 'ë≠·¢£ò 6907'
            //              abort_transaction
            //              goto telos
            //           end
            //           while (found=1)
            //               send rebuild_constraints to ptypparh_dd
            //               send find to ptypparh_dd first_record 2
            //               if (not(found)) begin
            //                  move 1 to ierr
            //                  move 'É‚§ £ß¶®È §ò õ†òô·©‡ Ptypparh ö†ò flags ä¶ö†©´†°„™ !! ' to msgstr
            //                  send stop_box msgstr 'ë≠·¢£ò 6904'
            //                  abort_transaction
            //                  goto telos1
            //               end
            //               while (found=1)
            //                  get field_current_value of ptypparh_dd field ptypparh.codegl to scodegl
            //                  get field_current_value of ptypparh_dd field ptypparh.sign   to ssign
            //                  get field_current_value of ptypparh_dd field ptypparh.xp     to sxp
            //                  get field_current_value of ptypparh_dd field ptypparh.axia   to saxia
            //                  get field_current_value of ptypparh_dd field ptypparh.flaggl to sflaggl
            //                  get field_current_value of fpa_dd field fpa.polhsh_codegl    to sfpapol
            //                  get field_current_value of fpa_dd field fpa.agora_codegl     to sfpaago
            //                  get field_current_value of witemkat_dd field witemkat.codeglpol to switemkatp
            //                  get field_current_value of witemkat_dd field witemkat.codeglago to switemkata
            //                  get field_current_value of item_dd field item.codeglpol to sitemp
            //                  get field_current_value of item_dd field item.codeglago to sitema
            //                  if (sflaggl='01') begin
            //                     if (scodegl='') move clients.client_glcode to scodegl
            //                  end
            //                  if  (psmodule(self)='01')replace '@3' in scodegl with (trim(sfpapol))
            //                  else if (psmodule(self)='02') replace '@3' in scodegl with (trim(sfpaago))
            //                  if (psmodule(self)='01') replace "@2" in scodegl with (trim(switemkatp))
            //                  else if (psmodule(self)='02')replace "@2" in scodegl with (trim(switemkata))
            //                  if  (psmodule(self)='01')replace '@4' in scodegl with (trim(sitemp))
            //                  else if (psmodule(self)='02') replace '@4' in scodegl with (trim(sitema))
            //                  replace "@1" in scodegl with (trim(syscurxr.branch_code))
            //
            //                  Move (Check_log(scodegl)) to iCheck
            //                  move (check_last(scodegl)) to ilast
            //                  if (icheck) begin
            //                     move 1 to ierr
            //                     move 'É‚§ ¨ß·®Æú† o ¢¶ö/©£Ê™ Ç.ä ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
            //                     append msgstr ipartlno
            //                     append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
            //                     append msgstr scodegl
            //                     send stop_box msgstr 'ë≠·¢£ò 6905'
            //                     abort_transaction
            //                     goto telos1
            //                  end
            //                  if (ilast) begin
            //                     move 1 to ierr
            //                     move 'é °‡õ†°Ê™ ¢¶ö/©£¶Á õú§ úÂ§ò† ´ú¢ú¨´òÂ¶¨ ôòü£¶Á ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
            //                     append msgstr ipartlno
            //                     append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
            //                     append msgstr scodegl
            //                     send stop_box msgstr 'ë≠·¢£ò 6909'
            //                     abort_transaction
            //                     goto telos1
            //                  end
            //                  if      (saxia='1') move pmoves.pms_ambd       to naxia
            //                  else if (saxia='2') move pmoves.pms_amaftdisc  to naxia
            //                  else if (saxia='3') move pmoves.pms_vatam      to naxia
            //                  else if (saxia='4') move pmoves.pms_payable    to naxia
            //                  if (naxia=0) begin
            //                     move 1 to ierr
            //                     move 'É‚§ ¨ß·®Æú† ò•Âò ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
            //                     append msgstr ipartlno
            //                     send stop_box msgstr 'ë≠·¢£ò 6906'
            //                     abort_transaction
            //                     goto telos1
            //                  end
            //                  if      (ssign='-') move -1 to nsign
            //                  else if (ssign='+') move 1 to nsign
            //                  clear gbridged
            //                  move gbridgeh.gbridgeh_recr to gbridged.gbridgeh_recr
            //                  move scodegl               to gbridged.ext_gplan_code
            //                  find eq gbridged by index.1
            //                  if (not(found)) begin
            //                     move spartlaitiol          to gbridged.gmove_aitiol
            //                     if (sxp='ï') move (naxia*nsign) to gbridged.gmove_x2
            //                     else         move (naxia*nsign) to gbridged.gmove_p2
            //                     saverecord gbridged
            //                  end
            //                  else begin
            //                     if (sxp='ï') move ((naxia*nsign)+gbridged.gmove_x2) to gbridged.gmove_x2
            //                     else         move ((naxia*nsign)+gbridged.gmove_p2) to gbridged.gmove_p2
            //                     saverecord gbridged
            //                  end
            //                  Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Gbridged ≠¶®‚ò £ú ßò®ò©´ò´†°Ê '+(string (ipartlno)))
            //               send find to ptypparh_dd next_record 2
            //               loop
            //           send find to  pmoves_dd next_record 0
            //           loop
            //           set field_changed_value of particle_dd field particle.se_logik to '1'
            //           send request_save to particle_dd
            //        Loop
            //     end_transaction
            //     Set Value of (frmCount(self)) item 0 to 0
            //     send rebuild_constraints  to (particle_dd(self))
            //     Send Beginning_Of_Data    to (dblistsub1(self)) true
            //     End
            //  end
            //  if (ierr=0) begin
            //     Send Delete_Data to (Selected_Items(dblistsub1(self)))
            //     Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            //  end
            //  telos1:
            //  If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
            //  procedure_return
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub3

        Object LineControlSub1 is a LineControlSub
            Set Line_Style to lnSINGLE
            Set Size to 2 514
            Set Location to 91 1
        End_Object    // LineControlSub1

        Object dbListSub1 is a dbListSub
            Set Main_File to Gbridgeh.File_Number
            Set Ordering to 4
            Set Size to 86 505
            Set Location to 93 4

            Begin_Row
                Entry_Item ('')
                Entry_Item Gbridgeh.Ptyppar_code
                Entry_Item (Fsptyppar(self,Gbridgeh.ptyppar_code))
                Entry_Item Gbridgeh.Garticl_no
                Entry_Item Gbridgeh.Garticl_hmnia
                Entry_Item Gbridgeh.Client_id
                Entry_Item (Fsclient(self,Gbridgeh.client_id))
            End_Row

            Set Form_Width    item 0 to 20
            Set Header_Label  item 0 to "Ä°"
            Set Column_Checkbox_State  item 0 to True
            
            Set Form_Width    item 1 to 60
            Set Header_Label  item 1 to "èò®ò©´ò´†°Ê"
            
            Set Form_Width    item 2 to 123
            Set Header_Label  item 2 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 3 to 50
            Set Header_Label  item 3 to "Ä®†ü£Ê™"
            
            Set Form_Width    item 4 to 45
            Set Header_Label  item 4 to "Ü£/§Âò"
            
            Set Form_Width    item 5 to 70
            Set Header_Label  item 5 to "î¶®‚ò™"
            
            Set Form_Width    item 6 to 130
            Set Header_Label  item 6 to "Ñß‡§¨£Âò"
            

            //AB-StoreStart
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
                If (Select_Count(dblistsub1(Self)) Gt 0)    Set Label of (buttonSub2(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                else                                        Set Label of (buttonSub2(self)) to "ãò®°·®†©£ò Ê¢‡§ ´‡§ úöö®ò≠È§"
                Set value of (frmCount(self)) item 0 to (Select_Count(dblistsub1(Self)))
                Set Dynamic_Update_State to true
                Set Enabled_State of ButtonSub3 to True
            End_Procedure  //Toggle_Select
            
            Procedure Entry_Display Integer i1 Integer i2
                Local integer iBase iOffset iSelItemsID bState
                Get base_Item to iBase
                move 0 to iOffset
                move (Selected_Items(self)) to iSelItemsID
                Forward Send Entry_Display i1 i2
                Get find_element of iSelItemsID gbridgeh.recnum to bState
                Send DoDisplayCheckBox (iBase+iOffset) (bState<>-1)
            End_Procedure // Entry_Display
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // dbListSub1

        Object frmCount is a FormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 13 23
            Set Location to 265 120
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
            Set Location to 265 3
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

        Object dbgridSub2 is a dbGridSub
            Set Main_File to Gbridged.File_Number
            Set Server to (Gbridged_DD(self))
            Set Ordering to 1
            Set Size to 70 507
            Set Location to 186 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Gbridgeh.Gbridgeh_recr
                Entry_Item Gbridged.Ext_gplan_code
                Entry_Item (Fsgplan(self,Gbridged.ext_gplan_code))
                Entry_Item Gbridged.Gmove_aitiol
                Entry_Item Gbridged.Gmove_x2
                Entry_Item Gbridged.Gmove_p2
            End_Row

            Set Form_Width    item 0 to 72
            Set Header_Label  item 0 to "Gbridgeh recr"
            
            Set Form_Width    item 1 to 70
            Set Header_Label  item 1 to "ä¶ö/©£Ê™ Ç.ä"
            
            Set Form_Width    item 2 to 110
            Set Header_Label  item 2 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 3 to 106
            Set Header_Label  item 3 to "Ä†´†¶¢¶öÂò"
            
            Set Form_Width    item 4 to 70
            Set Header_Label  item 4 to "ï®‚‡©û"
            
            Set Form_Width    item 5 to 70
            Set Header_Label  item 5 to "èÂ©´‡©û"
            

            //AB-StoreStart
            
            
            //AB-StoreEnd

        End_Object    // dbgridSub2

        Object TextBoxSub1001 is a TextBoxSub
            Set Label to "Ñ§û£‚®‡©û ¢¶öò®†ò©£È§ ¢¶ö†©´†°„™ "
            Set Color to clNavy
            Set TextColor to clYellow
            Set Location to 175 4
            Set Size to 10 433
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
        End_Object    // TextBoxSub1001


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String   sModule
            integer  rval
         //   Get psMenuModule  Of Main_Menu  to sModule
         //   Set psModule to sModule
        
            Forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure
        
        Procedure Constrain_The_Records
                Integer liCount
                Send Rebuild_Constraints    to (Gbridgeh_DD(Self))
                Send Delete_Data            to (Selected_Items(dblistsub1(self)))
                Send Beginning_Of_Data      to (dblistsub1(self))
                Send Beginning_Of_Data      to (dbgridsub2(self))
                Get Select_Count            of dbListsub1           to liCount
                Set enabled_State           of (buttonsub3(self))   to (liCount)
                If (liCount) Set Label      of (buttonsub2(self))   to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                Else         Set Label      of (buttonsub2(self))   to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V21bb


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
