//AB/ Project V30o:logistikopiish aksiografon
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V30o:logistikopiish aksiografon"
//AB/         Set ProjectFileName to "V30o.VW"

// Project Object Structure
//   V30o is a dbView
//     Baxiokat_DD is a DataDictionary
//     Btypkin_DD is a DataDictionary
//     Bkinkat_DD is a DataDictionary
//     Bkinkath_DD is a DataDictionary
//     Barticl_DD is a DataDictionary
//     Baxio_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Bmove_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     btypkin_apo is a FormSub
//     btypkin_eos is a FormSub
//     client_apo is a FormSub
//     client_eos is a FormSub
//     client_aponame is a FormSub
//     client_eosname is a FormSub
//     date_apo999 is a TextBoxSub
//     date_eos999 is a TextBoxSub
//     date_apo is a FormSub
//     date_eos is a FormSub
//     TextBoxSub11 is a TextBoxSub
//     TextBoxSub12 is a TextBoxSub
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
//     FormSub1 is a FormSub
//     FormSub2 is a FormSub

// Register all objects
Register_Object Barticl_DD
Register_Object Baxio_DD
Register_Object Baxiokat_DD
Register_Object Bkinkat_DD
Register_Object Bkinkath_DD
Register_Object Bmove_DD
Register_Object Branch_Branch_Name
Register_Object Btypkin_DD
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object btypkin_apo
Register_Object btypkin_eos
Register_Object Company_Company_Name
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
Register_Object FormSub1
Register_Object FormSub2
Register_Object frmCount
Register_Object LineControlSub1
Register_Object Syscurxr_DD
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
Register_Object V30o
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open gtypkin
    Open gplan
    open gbridgeh
    open gbridged
    open clients
    use wait.dg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use Form.Sub
    Use Button.Sub
    Use Line.Sub
    Use dbList.Sub

    Use BAXIOKAT.DD
    Use BTYPKIN.DD
    Use BKINKAT.DD
    Use BKINKATH.DD
    Use BARTICL.DD
    Use BAXIO.DD
    Use SYSCURXR.DD
    Use BMOVE.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V30o FOR V30o

    Object V30o is a dbView

        //AB-StoreTopStart
        property string         Psmodule public ''
        property integer        piepil   public 0
        property integer        piTxtID        public 0
        
        
        //AB-StoreTopEnd

        Set Label to "ä¶ö†©´†°¶ß¶Âû©û Ä•†¶ö®·≠‡§"
        Set Size to 290 519
        Set Location to 5 5

        //AB-DDOStart

        Object Baxiokat_DD is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Btypkin_DD is a Btypkin_DataDictionary
        End_Object    // Btypkin_DD

        Object Bkinkat_DD is a Bkinkat_DataDictionary
            Set DDO_Server to (Baxiokat_DD(self))
            Set DDO_Server to (Btypkin_DD(self))
            Set Constrain_File to Btypkin.File_Number
        End_Object    // Bkinkat_DD

        Object Bkinkath_DD is a Bkinkath_DataDictionary
            Set DDO_Server to (Bkinkat_DD(self))
            Set Constrain_File to Bkinkat.File_Number
        End_Object    // Bkinkath_DD

        Object Barticl_DD is a Barticl_DataDictionary
            Set DDO_Server to (Btypkin_DD(self))

            //AB-StoreStart
            begin_constraints
                Local date   ldapo ldeos
                Local string lsapopel lseospel lsapokin lseoskin
                local integer iepil
                get value of (client_apo(self)) to lsapopel
                get value of (client_eos(self)) to lseospel
                get value of (date_apo(self))   to ldapo
                get value of (date_eos(self))   to ldeos
                get value of (btypkin_apo(self))to lsapokin
                get value of (btypkin_eos(self))to lseoskin
               // set ordering to 11
                if (ldapo='') move '01/01/1980' to ldapo
                if (ldeos='') move '31/12/2100' to ldeos
                constrain barticl.company_code  eq syscurxr.company_code
                constrain barticl.branch_code   eq syscurxr.branch_code
                constrain barticl.year_year     eq syscurxr.year_year
                constrain barticl.se_logik      ne 1
                constrain barticl.barticl_hmnia ge ldapo
                constrain barticl.barticl_hmnia le ldeos
                constrain barticl.barticl_ekleise eq '1'
                constrain barticl.barticl_sv0  ne 0
                if (lsapokin<>'');
                   constrain barticl.btypkin_code  ge lsapokin
                If (lseoskin<>'');
                   constrain barticl.btypkin_code  le lseoskin
                if (lsapopel<>'');
                   constrain barticl.barticl_code1 ge lsapopel
                if (lseospel<>'');
                   constrain barticl.barticl_code1 le lseospel
            end_constraints
            
            
            
            
            //AB-StoreEnd

        End_Object    // Barticl_DD

        Object Baxio_DD is a Baxio_DataDictionary
            Set DDO_Server to (Baxiokat_DD(self))
        End_Object    // Baxio_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Bmove_DD is a Bmove_DataDictionary
            Set DDO_Server to (Barticl_DD(self))
            Set DDO_Server to (Baxio_DD(self))
            Set Constrain_File to Barticl.File_Number
        End_Object    // Bmove_DD

        Set Main_DD to (Barticl_DD(self))
        Set Server to (Barticl_DD(self))

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
            Set Label to "Ñß†¢¶ö„  °†§„©ú‡§ ßò®ò©´ò´†°È§ ò•†¶ö®·≠‡§"
            Set Color to clAqua
            Set TextColor to 4210688
            Set Location to 28 1
            Set Size to 10 438
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
        End_Object    // TextBoxSub6

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

        Object btypkin_apo is a FormSub
            Set Size to 13 95
            Set Location to 44 76
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object  to (sl031(Current_object))
            Set Numeric_Mask Item 0 to 14 0 ' ,*'
            procedure onchange
                integer ibtypkin
                string sdescr
                get value item 0           to ibtypkin
                Move (FindBtypkinDescr(Self,ibtypkin)) to sdescr
                set value of (formsub1(self)) to sdescr
            End_procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btypkin_apo

        Object btypkin_eos is a FormSub
            Set Size to 13 95
            Set Location to 74 76
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object  to (sl031(Current_object))
            Set Numeric_Mask Item 0 to 14 0 ' ,*'
            procedure onchange
                integer ibtypkin
                string sdescr
                get value item 0           to ibtypkin
                Move (FindBtypkinDescr(Self,ibtypkin)) to sdescr
                set value of (formsub2(self)) to sdescr
            End_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btypkin_eos

        Object client_apo is a FormSub
            Set Size to 13 85
            Set Location to 44 231
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (sl100(Current_object))
            Procedure Prompt
                Set psModule Of (sl100(Self)) to ''
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
                Set psModule Of (sl100(Self)) to ''
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
            Set Label to "Ñß†¢¶ö„ °Â§û©û™ òßÊ"
            Set Location to 45 2
            Set Size to 10 71
        End_Object    // TextBoxSub11

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ °Â§û©û™ úÈ™"
            Set Location to 75 1
            Set Size to 10 71
        End_Object    // TextBoxSub12

        Object ButtonSub2 is a ButtonSub

            //AB-StoreTopStart
                                                                                                                                                
                                                                                                                                                
            //AB-StoreTopEnd

            Set Label to "ãò®°·®†©£ò úß†¢úö£‚§‡§ úöö®ò≠È§"
            Set Size to 14 169
            Set Location to 111 1

            //AB-StoreStart
                                                                                                                                                
            Procedure Mark_All
               Integer inum
               send rebuild_constraints to (barticl_dd(self))
               send find to (barticl_dd(self)) first_record 4
               While (Found=1)
                  set array_value of (selected_items(dblistsub1(self))) item inum to barticl.recnum
                  add 1 to inum
                  send find to (barticl_dd(self)) next_record 4
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
              date ddate bartldate
              Integer iInt iCount ierr igtypkin ibartlno imsg irecnum icheck ilast ibtypkincode rval
              string  sbartlaitiol msgstr  scodegl sclient  sbanka
              string  ssign sxp saxia sflaggl smodule baxiocode bkaxiocode
              number nisotimia naxia ntotal nsign
              move 0 to ierr
              get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ¢¶ö†©´†°¶ß¶Âû©û ´‡§ úß†¢úö£‚§‡§ °†§„©ú‡§ ò•†¶ö®·≠‡§ ??" to imsg
              If (imsg =MBR_yes) begin
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
                       send clear to barticl_dd
                       move irecnum to barticl.recnum
                       Send Find_By_Recnum to barticl_DD barticl.File_Number barticl.Recnum
                       if (found=1) begin
                          get field_current_value of barticl_dd field barticl.barticl_hmnia   to bartldate
                          get field_current_value of barticl_dd field barticl.barticl_no      to ibartlno
                          get field_current_value of barticl_dd field barticl.barticl_code1   to sclient
                          clear gbridgeh
                          move syscurxr.company_code to Gbridgeh.company_code
                          move syscurxr.branch_code  to Gbridgeh.branch_code
                          move syscurxr.year_year    to gbridgeh.year_year
                          move (psmodule(self))      to gbridgeh.module_from
                          move irecnum               to gbridgeh.particle_recnum
                          find eq gbridgeh  by index.1
                          if (found=1) begin
                             move 1 to ierr
                             move 'ÑÆú† ú§û£ú®‡üúÂ ´¶ ò®ÆúÂ¶ Gbridheh £ú ´¶ ßò®ò©´ò´†°Ê= ' to msgstr
                             append msgstr ibartlno
                             send stop_box msgstr 'ë≠·¢£ò 6801'
                             abort_transaction
                             goto telos2
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
                          get field_current_value of btypkin_dd field btypkin.gtypkin_code  to igtypkin
                          get field_current_value of btypkin_dd field btypkin.btypkin_descr to sbartlaitiol
                          get field_current_value of btypkin_dd field btypkin.btypkin_code  to ibtypkincode
                          move syscurxr.company_code to Gtypkin.company_code
                          move syscurxr.branch_code  to Gtypkin.branch_code
                          move syscurxr.year_year    to gtypkin.year_year
                          move igtypkin              to gtypkin.gtypkin_code
                          find eq gtypkin by index.1
                          if (not(found)) begin
                             move 1 to ierr
                             move 'É‚§ ô®‚üû°ú ©´„§ Ç.ä ¶ °‡õ†°Ê™ °Â§û©û™ = ' to msgstr
                             append msgstr igtypkin
                             send stop_box msgstr 'ë≠·¢£ò 6803'
                             abort_transaction
                             goto telos2
                          end
                          move gtypkin.gtypkin_recr    to gbridgeh.gtypkin_recr
                          if (ddate='') move bartldate to gbridgeh.garticl_hmnia
                          else          move ddate     to gbridgeh.garticl_hmnia
                          move ibartlno                to gbridgeh.garticl_no
                          move sbartlaitiol            to gbridgeh.garticl_aitiol
                          move 'EUR'                   to gbridgeh.garticl_c_code2
                          move (psmodule(self))        to gbridgeh.module_from
                          move ibtypkincode            to gbridgeh.ptyppar_code
                          move sclient                 to gbridgeh.client_id
                          move (append('',((Trim(SysCurGL.Branch_Site))+;
                                         (Trim(String(Gbridgeh.Gbridgeh_Rec0)))))) to Gbridgeh.Gbridgeh_Recr
                          saverecord gbridgeh
                          Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û ò®ÆúÂ¶¨ Gbridgeh £ú ßò®ò©´ò´†°Ê '+(string (ibartlno)))
                       end
                       else begin
                             move 1 to ierr
                             move 'É‚§ £ß¶®È §ò õ†òô·©‡ òßÊ ´û§ £§„£û ´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                             append msgstr ibartlno
                             send stop_box msgstr 'ë≠·¢£ò 6802'
                             abort_transaction
                             goto telos2
                       end
                       send rebuild_constraints to bmove_dd
                       send find to bmove_dd first_record 0
                       if (not(found)) begin
                          move 1 to ierr
                          move 'É‚§ ¨ß·®Æ¶¨§ ò§ò¢¨´†°‚™ °†§„©ú†™ ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                          append msgstr ibartlno
                          send stop_box msgstr 'ë≠·¢£ò 6807'
                          abort_transaction
                          goto telos2
                       end
                       while (found=1)
                           get field_current_value of baxio_dd field baxio.baxiokat_code to baxiocode
                           send rebuild_constraints to bkinkat_dd
                           send find to bkinkat_dd first_record 1
                           if (not(found)) begin
                              move 1 to ierr
                              move 'É‚§ £ß¶®È §ò õ†òô·©‡ Bkinkat ö†ò °†§„©ú†™ !! ' to msgstr
                              send stop_box msgstr 'ë≠·¢£ò 6804'
                              abort_transaction
                              goto telos2
                           end
                           while (found=1)
                              get field_current_value of bkinkat_dd field bkinkat.baxiokat_code to bkaxiocode
                              if (baxiocode=bkaxiocode) begin
                                 send rebuild_constraints to bkinkath_dd
                                 send find to bkinkath_dd first_record 2
                                 if (not(found)) begin
                                   move 1 to ierr
                                   move 'É‚§ £ß¶®È §ò õ†òô·©‡ Bkinkath ö†ò Flags Ç.ä !! ' to msgstr
                                   send stop_box msgstr 'ë≠·¢£ò 6804'
                                   abort_transaction
                                   goto telos2
                                 end
                              while (found=1)
                                 get field_current_value of bkinkath_dd field bkinkath.codegl   to scodegl
                                 get field_current_value of bkinkath_dd field bkinkath.sign     to ssign
                                 get field_current_value of bkinkath_dd field bkinkath.xp       to sxp
                                 get field_current_value of bkinkath_dd field bkinkath.flaggl   to sflaggl
                                 get field_current_value of baxio_dd    field baxio.baxio_banka to sbanka
                                 get field_current_value of baxio_dd    field baxio.baxio_v0    to naxia
                                 if (sflaggl='01') begin
                                   if (scodegl='') begin
                                      clear clients
                                      move barticl.barticl_code1 to clients.client_id
                                      find eq clients by index.6
                                      move clients.client_glcode to scodegl
                                   end
                                 end
                                 replace '@2' in scodegl with (trim(sbanka))
                                 replace "@1" in scodegl with (trim(syscurxr.branch_code))
                                 Move (Check_log(scodegl)) to iCheck
                                 move (check_last(scodegl)) to ilast
                                 if (icheck) begin
                                    move 1 to ierr
                                    move 'É‚§ ¨ß·®Æú† o ¢¶ö/©£Ê™ Ç.ä ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                                    append msgstr ibartlno
                                    append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
                                    append msgstr scodegl
                                    append msgstr ' \n Ñ¢‚öÆ¶™ ¢¶ö/©£¶Á Ç.ä ≠¶®‚ò - í®·ßúùò™'
                                    send stop_box msgstr 'ë≠·¢£ò 6805'
                                    abort_transaction
                                    goto telos2
                                 end
                                 if (ilast) begin
                                    move 1 to ierr
                                    move 'é °‡õ†°Ê™ ¢¶ö/©£¶Á õú§ úÂ§ò† ´ú¢ú¨´òÂ¶¨ ôòü£¶Á ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                                    append msgstr ibartlno
                                    append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
                                    append msgstr scodegl
                                    send stop_box msgstr 'ë≠·¢£ò 6809'
                                    abort_transaction
                                    goto telos2
                                 end
                                 if (naxia=0) begin
                                    move 1 to ierr
                                    move 'É‚§ ¨ß·®Æú† ò•Âò ©´¶ ßò®ò©´ò´†°Ê = ' to msgstr
                                    append msgstr ibartlno
                                    send stop_box msgstr 'ë≠·¢£ò 6806'
                                    abort_transaction
                                    goto telos2
                                 end
                                 if      (ssign='-') move -1 to nsign
                                else if (ssign='+') move 1 to nsign
                                clear gbridged
                                move gbridgeh.gbridgeh_recr to gbridged.gbridgeh_recr
                                move scodegl               to gbridged.ext_gplan_code
                                find eq gbridged by index.1
                                if (not(found)) begin
                                   move sbartlaitiol          to gbridged.gmove_aitiol
                                   if (sxp='ï') move (naxia*nsign) to gbridged.gmove_x2
                                   else         move (naxia*nsign) to gbridged.gmove_p2
                                   saverecord gbridged
                                end
                                else begin
                                   if (sxp='ï') move ((naxia*nsign)+gbridged.gmove_x2) to gbridged.gmove_x2
                                   else         move ((naxia*nsign)+gbridged.gmove_p2) to gbridged.gmove_p2
                                   saverecord gbridged
                                end
                               Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Gbridged ≠¶®‚ò £ú ßò®ò©´ò´†°Ê '+(string (ibartlno)))
                               send find to bkinkath_dd next_record 2
                               loop
                             end
                             send find to bkinkat_dd next_record 1
                         loop
                         send find to  bmove_dd next_record 0
                         loop
                       set field_changed_value of barticl_dd field barticl.se_logik to '1'
                       send request_save to barticl_dd
                   Loop
                   end_transaction
                   Set Value of (frmCount(self)) item 0 to 0
                   send rebuild_constraints  to (barticl_dd(self))
                   Send Beginning_Of_Data    to (dblistsub1(self)) true
                 End
              end
              if (ierr=0) begin
                 Send Delete_Data to (Selected_Items(dblistsub1(self)))
                 Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
              end
              telos2:
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
            Set Main_File to Barticl.File_Number
            Set Ordering to 4
            Set Size to 129 505
            Set Location to 130 3

            Begin_Row
                Entry_Item ('')
                Entry_Item Btypkin.Btypkin_descr
                Entry_Item Barticl.Barticl_no
                Entry_Item Barticl.Barticl_hmnia
                Entry_Item Barticl.Barticl_epon1
                Entry_Item Barticl.Barticl_sv0
            End_Row

            Set Form_Width    item 0 to 16
            Set Header_Label  item 0 to ""
            Set Column_Checkbox_State  item 0 to True
            
            Set Form_Width    item 1 to 145
            Set Header_Label  item 1 to "âÂ§û©û"
            
            Set Form_Width    item 2 to 59
            Set Header_Label  item 2 to "èò®ò©´ò´†°Ê"
            
            Set Form_Width    item 3 to 45
            Set Header_Label  item 3 to "Ü£/§Âò"
            
            Set Form_Width    item 4 to 153
            Set Header_Label  item 4 to "î¶®‚ò™"
            
            Set Form_Width    item 5 to 80
            Set Header_Label  item 5 to "Ä•Âò èò®ò©´ò´†°¶Á"
            

            //AB-StoreStart
            Set Points Item 5 to 2
            Set Numeric_Mask Item 5 to 14 2 ' ,*'
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
                Get find_element of iSelItemsID barticl.recnum to bState
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
            Set Label to "Ñß†¢úö£‚§ú™ °†§„©ú†™ = "
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

        Object FormSub1 is a FormSub
            Set Size to 13 95
            Set Location to 59 76
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub1

        Object FormSub2 is a FormSub
            Set Size to 13 95
            Set Location to 89 76
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub2


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String   sModule
            integer  rval
         //   Get psMenuModule  Of Main_Menu  to sModule
            Set psModule to '04'
            send constrain_the_records
            Forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure
        
        Procedure Constrain_The_Records
                Integer liCount
                Send Rebuild_Constraints    to (barticl_DD(Self))
                Send Delete_Data            to (Selected_Items(dblistsub1(self)))
                Send Beginning_Of_Data      to (dblistsub1(self))
                Get Select_Count            of dbListsub1           to liCount
                Set enabled_State           of (buttonsub3(self))   to (liCount)
                If (liCount) Set Label      of (buttonsub2(self))   to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                Else         Set Label      of (buttonsub2(self))   to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V30o


    //AB-StoreStart
                
                
                
                
                
                
                
                
                
                
    //AB-StoreEnd

//AB/     End_Object    // prj
