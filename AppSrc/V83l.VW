//AB/ Project V83l:logistikopoiish kinhseon pagion
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V83l:logistikopoiish kinhseon pagion"
//AB/     Set ProjectFileName to "V83l.VW"

// Project Object Structure
//   V83l is a dbView
//     Syscurxr_DD is a DataDictionary
//     Pagkat_DD is a DataDictionary
//     Pagkin_DD is a DataDictionary
//     Pagkinmv_DD is a DataDictionary
//     Pagia_DD is a DataDictionary
//     Pagmoves_DD is a DataDictionary
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
Register_Object Branch_Branch_Name
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
Register_Object Pagia_DD
Register_Object Pagkat_DD
Register_Object Pagkin_DD
Register_Object Pagkinmv_DD
Register_Object Pagmoves_DD
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
Register_Object V83l
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


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
Use Form.Sub
Use Button.Sub
Use Line.Sub
Use dbList.Sub

Use SYSCURXR.DD
Use PAGKAT.DD
Use PAGKIN.DD
Use PAGKINMV.DD
Use PAGIA.DD
Use PAGMOVES.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V83l FOR V83l

Object V83l is a dbView

    //AB-StoreTopStart
    property string         Psmodule public ''
    property integer        piepil   public 0
    property integer        piTxtID        public 0
    
    
    //AB-StoreTopEnd

    Set Label to "ä¶ö†©´†°¶ß¶Âû©û °†§„©ú‡§ ßòöÂ‡§"
    Set Size to 290 519
    Set Location to 5 5

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Pagkat_DD is a Pagkat_DataDictionary
    End_Object    // Pagkat_DD

    Object Pagkin_DD is a Pagkin_DataDictionary
    End_Object    // Pagkin_DD

    Object Pagkinmv_DD is a Pagkinmv_DataDictionary
        Set DDO_Server to (Pagkin_DD(self))
        Set Constrain_File to Pagkin.File_Number
    End_Object    // Pagkinmv_DD

    Object Pagia_DD is a Pagia_DataDictionary
        Set DDO_Server to (Pagkat_DD(self))
    End_Object    // Pagia_DD

    Object Pagmoves_DD is a Pagmoves_DataDictionary
        Set DDO_Server to (Pagia_DD(self))
        Set DDO_Server to (Pagkin_DD(self))

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
            constrain pagmoves.se_logik        ne 1
            constrain pagmoves.pagmoves_date   ge ldapo
            constrain pagmoves.pagmoves_date   le ldeos
            constrain pagmoves.pagmoves_axia   ne 0
            if (lsapokin<>'');
               constrain pagmoves.pagkin_code  ge lsapokin
            If (lseoskin<>'');
               constrain pagmoves.pagkin_code  le lseoskin
            if (lsapopel<>'');
               constrain pagmoves.pagia_code   ge lsapopel
            if (lseospel<>'');
               constrain pagmoves.pagia_code   le lseospel
        end_constraints
        
        //AB-StoreEnd

    End_Object    // Pagmoves_DD

    Set Main_DD to (Pagmoves_DD(self))
    Set Server to (Pagmoves_DD(self))

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
        Set Label to "Ñß†¢¶ö„  °†§„©ú‡§ ßòöÂ‡§"
        Set Color to clAqua
        Set TextColor to 4210688
        Set Location to 28 1
        Set Size to 10 439
        Set FontWeight to 800
        Set Justification_Mode to jMode_Center
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "è·ö†ò òßÊ"
        Set Location to 46 177
        Set Size to 10 42
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "è·ö†ò úÈ™"
        Set Location to 60 177
        Set Size to 10 38
    End_Object    // TextBoxSub8

    Object btypkin_apo is a FormSub
        Set Size to 13 95
        Set Location to 44 76
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
        Set Prompt_Object  to (sl81(Current_object))
        
        procedure onchange
            string spagkin
            string sdescr
            get value item 0           to spagkin
            clear pagkin
            Move spagkin to pagkin.pagkin_code
            find eq pagkin by index.1
            if (found=1) set value of (formsub1(self)) to pagkin.pagkin_descr
            else         set value of (formsub1(self)) to ''
        End_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btypkin_apo

    Object btypkin_eos is a FormSub
        Set Size to 13 95
        Set Location to 74 76
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
        Set Prompt_Object  to (sl81(Current_object))
        
        procedure onchange
            string spagkin
            string sdescr
            get value item 0           to spagkin
            clear pagkin
            Move spagkin to pagkin.pagkin_code
            find eq pagkin by index.1
            if (found=1) set value of (formsub2(self)) to pagkin.pagkin_descr
            else         set value of (formsub2(self)) to ''
        End_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btypkin_eos

    Object client_apo is a FormSub
        Set Size to 13 85
        Set Location to 44 231
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
        Set Prompt_Object to (sl83(Current_object))
        procedure onchange
            string scode
            get value item 0 to scode
            clear pagia
            move scode to pagia.pagia_code
            find eq pagia by index.4
            if (found=1) set value of (client_aponame(self)) to pagia.pagia_descr
            else         set value of (client_aponame(self)) to ''
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // client_apo

    Object client_eos is a FormSub
        Set Size to 13 85
        Set Location to 59 231
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
        Set Prompt_Object to (sl83(Current_object))
        procedure onchange
            string scode
            get value item 0 to scode
            clear pagia
            move scode to pagia.pagia_code
            find eq pagia by index.4
            if (found=1) set value of (client_eosname(self)) to pagia.pagia_descr
            else         set value of (client_eosname(self)) to ''
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
           send rebuild_constraints to (pagmoves_dd(self))
           send find to (pagmoves_dd(self)) first_record 4
           While (Found=1)
              set array_value of (selected_items(dblistsub1(self))) item inum to pagmoves.recnum
              add 1 to inum
              send find to (pagmoves_dd(self)) next_record 4
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
          date    ddate bartldate
          Integer iInt iCount ierr igtypkin  imsg irecnum icheck ilast ibtypkincode rval
          string  sbartlaitiol msgstr  scodegl sclient  sparast sbartlno spagkat spagio
          string  ssign sxp saxia sflaggl smodule baxiocode bkaxiocode
          number  nisotimia naxia ntotal nsign
          move 0 to ierr
        
          get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ¢¶ö†©´†°¶ß¶Âû©û ´‡§ úß†¢úö£‚§‡§ °†§„©ú‡§ ßòöÂ‡§ ??" to imsg
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
                   send clear to pagmoves_dd
                   move irecnum to pagmoves.recnum
                   Send Find_By_Recnum to pagmoves_DD pagmoves.File_Number pagmoves.Recnum
                   if (found=1) begin
                      get field_current_value of pagmoves_dd field pagmoves.pagmoves_date   to bartldate
                      get field_current_value of pagmoves_dd field pagmoves.pagmoves_parast to sparast
                      get field_current_value of pagmoves_dd field pagmoves.pagia_code  to sbartlno
                      get field_current_value of pagia_dd field pagia.pagia_code        to sclient
                      clear gbridgeh
                      move syscurxr.company_code to Gbridgeh.company_code
                      move syscurxr.branch_code  to Gbridgeh.branch_code
                      move syscurxr.year_year    to gbridgeh.year_year
                      move (psmodule(self))      to gbridgeh.module_from
                      move irecnum               to gbridgeh.particle_recnum
                      find eq gbridgeh  by index.1
                      if (found=1) begin
                         move 1 to ierr
                         move 'ÑÆú† ú§û£ú®‡üúÂ ´¶ ò®ÆúÂ¶ Gbridheh £ú ´„§ °Â§û©û ßòöÂ¶¨  = ' to msgstr
                         append msgstr sbartlno
                         send stop_box msgstr 'ë≠·¢£ò 6701'
                         abort_transaction
                         goto telos3
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
                      get field_current_value of pagkin_dd field pagkin.gtypkin_code  to igtypkin
                      get field_current_value of pagkin_dd field pagkin.pagkin_descr to sbartlaitiol
                      get field_current_value of pagkin_dd field pagkin.pagkin_code  to ibtypkincode
                      move syscurxr.company_code to Gtypkin.company_code
                      move syscurxr.branch_code  to Gtypkin.branch_code
                      move syscurxr.year_year    to gtypkin.year_year
                      move igtypkin              to gtypkin.gtypkin_code
                      find eq gtypkin by index.1
                      if (not(found)) begin
                         move 1 to ierr
                         move 'É‚§ ô®‚üû°ú ©´„§ Ç.ä ¶ °‡õ†°Ê™ °Â§û©û™ = ' to msgstr
                         append msgstr igtypkin
                         send stop_box msgstr 'ë≠·¢£ò 6703'
                         abort_transaction
                         goto telos3
                      end
                      move gtypkin.gtypkin_recr    to gbridgeh.gtypkin_recr
                      if (ddate='') move bartldate to gbridgeh.garticl_hmnia
                      else          move ddate     to gbridgeh.garticl_hmnia
                      move sparast                 to gbridgeh.garticl_no
                      move sbartlaitiol            to gbridgeh.garticl_aitiol
                      move 'EUR'                   to gbridgeh.garticl_c_code2
                      move (psmodule(self))        to gbridgeh.module_from
                      move ibtypkincode            to gbridgeh.ptyppar_code
                      move sclient                 to gbridgeh.client_id
                      move (append('',((Trim(SysCurGL.Branch_Site))+;
                                     (Trim(String(Gbridgeh.Gbridgeh_Rec0)))))) to Gbridgeh.Gbridgeh_Recr
                      saverecord gbridgeh
                      Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û ò®ÆúÂ¶¨ Gbridgeh £ú ßò®ò©´ò´†°Ê '+(string (sbartlno)))
                   end
                   else begin
                         move 1 to ierr
                         move 'É‚§ £ß¶®È §ò õ†òô·©‡ òßÊ ´û§ £§„£û ´„§ °Â§û©û ßòöÂ¶¨ = ' to msgstr
                         append msgstr sbartlno
                         send stop_box msgstr 'ë≠·¢£ò 6702'
                         abort_transaction
                         goto telos3
                   end
                   get field_current_value of pagmoves_dd field pagmoves.pagmoves_axia to naxia
                   get field_current_value of pagkat_dd field pagkat.codegl to spagkat
                   get field_current_value of pagia_dd field pagia.codegl to spagio
                   send rebuild_constraints to pagkinmv_dd
                   send find to pagkinmv_dd first_record 2
                   if (not(found)) begin
                      move 1 to ierr
                      move 'É‚§ £ß¶®È §ò õ†òô·©‡ Pagkinmv ö†ò Flags Ç.ä !! ' to msgstr
                      send stop_box msgstr 'ë≠·¢£ò 6704'
                      abort_transaction
                      goto telos3
                   end
                   while (found=1)
                      get field_current_value of pagkinmv_dd field pagkinmv.codegl   to scodegl
                      get field_current_value of pagkinmv_dd field pagkinmv.sign     to ssign
                      get field_current_value of pagkinmv_dd field pagkinmv.xp       to sxp
                      get field_current_value of pagkinmv_dd field pagkinmv.flaggl   to sflaggl
                      if (sflaggl='01') begin
                         if (scodegl='') begin
                            clear pagia
                            move pagmoves.pagia_code to pagia.pagia_code
                            find eq pagia by index.4
                            move pagia.codegl to scodegl
                         end
                      end
                      replace '@2' in scodegl with (trim(spagkat))
                      replace '@3' in scodegl with (trim(spagio))
                      replace "@1" in scodegl with (trim(syscurxr.branch_code))
                      Move (Check_log(scodegl)) to iCheck
                      move (check_last(scodegl)) to ilast
                      if (icheck) begin
                         move 1 to ierr
                         move 'É‚§ ¨ß·®Æú† o ¢¶ö/©£Ê™ Ç.ä ©´¶ ß·ö†¶ = ' to msgstr
                         append msgstr sbartlno
                         append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
                         append msgstr scodegl
                         append msgstr ' \n Ñ¢‚öÆ¶™ ¢¶ö/©£¶Á Ç.ä ßòöÂ¶¨ - °ò´ûö¶®Âò™ ßòöÂ¶¨'
                         send stop_box msgstr 'ë≠·¢£ò 6705'
                         abort_transaction
                         goto telos3
                      end
                      if (ilast) begin
                         move 1 to ierr
                         move 'é °‡õ†°Ê™ ¢¶ö/©£¶Á õú§ úÂ§ò† ´ú¢ú¨´òÂ¶¨ ôòü£¶Á ©´¶ ß·ö†¶ = ' to msgstr
                         append msgstr sbartlno
                         append msgstr ' ä¶ö/©£Ê™ Ç.ä = '
                         append msgstr scodegl
                         send stop_box msgstr 'ë≠·¢£ò 6709'
                         abort_transaction
                         goto telos3
                      end
                      if (naxia=0) begin
                          move 1 to ierr
                          move 'É‚§ ¨ß·®Æú† ò•Âò °Â§û©û™ ©´¶ ß·ö†¶ = ' to msgstr
                          append msgstr sbartlno
                          send stop_box msgstr 'ë≠·¢£ò 6706'
                          abort_transaction
                          goto telos3
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
                      Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û Gbridged °Â§û©û™ ßòöÂ¶¨ £ú ßò®ò©´ò´†°Ê '+(string (sbartlno)))
                   send find to pagkinmv_dd next_record 2
                   loop
                   set field_changed_value of pagmoves_dd field pagmoves.se_logik to '1'
                   send request_save to pagmoves_dd
               Loop
               end_transaction
               Set Value of (frmCount(self)) item 0 to 0
               send rebuild_constraints  to (pagmoves_dd(self))
               Send Beginning_Of_Data    to (dblistsub1(self)) true
        
            if (ierr=0) begin
               Send Delete_Data to (Selected_Items(dblistsub1(self)))
               Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            end
            telos3:
              If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
              procedure_return
           end // iint > 0
         end //msg-yes
            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
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
        Set Main_File to Pagmoves.File_Number
        Set Ordering to 4
        Set Size to 129 505
        Set Location to 130 3

        Begin_Row
            Entry_Item ('')
            Entry_Item Pagkin.Pagkin_descr
            Entry_Item Pagmoves.Pagmoves_parast
            Entry_Item Pagmoves.Pagmoves_date
            Entry_Item Pagia.Pagia_descr
            Entry_Item Pagmoves.Pagmoves_axia
        End_Row

        Set Form_Width    item 0 to 16
        Set Header_Label  item 0 to ""
        Set Column_Checkbox_State  item 0 to True
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "âÂ§û©û"
        
        Set Form_Width    item 2 to 127
        Set Header_Label  item 2 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 3 to 45
        Set Header_Label  item 3 to "Ü£/§Âò"
        
        Set Form_Width    item 4 to 153
        Set Header_Label  item 4 to "èú®†ö®ò≠„ èòöÂ¶¨"
        
        Set Form_Width    item 5 to 58
        Set Header_Label  item 5 to "Ä•Âò âÂ§û©û™"
        

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
            Get find_element of iSelItemsID pagmoves.recnum to bState
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
        Set psModule to '05' // module pagion
        send constrain_the_records
        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    Procedure Constrain_The_Records
            Integer liCount
            Send Rebuild_Constraints    to (pagmoves_DD(Self))
            Send Delete_Data            to (Selected_Items(dblistsub1(self)))
            Send Beginning_Of_Data      to (dblistsub1(self))
            Get Select_Count            of dbListsub1           to liCount
            Set enabled_State           of (buttonsub3(self))   to (liCount)
            If (liCount) Set Label      of (buttonsub2(self))   to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
            Else         Set Label      of (buttonsub2(self))   to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V83l


//AB-StoreStart
        
        
        
        
        
        
        
        
        
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
