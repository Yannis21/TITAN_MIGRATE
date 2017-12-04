//AB/ Project V21b:elegxos Gbridgeh+Gbridged / akyrosh
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V21b:elegxos Gbridgeh+Gbridged / akyrosh"
//AB/         Set ProjectFileName to "V21b.VW"

// Project Object Structure
//   V21b is a dbView
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
//     Btypkin_DD is a DataDictionary
//     Barticl_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Pagkat_DD is a DataDictionary
//     Pagkin_DD is a DataDictionary
//     Pagia_DD is a DataDictionary
//     Pagmoves_DD is a DataDictionary
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
//       Radio3 is a RadioSub
//       Radio4 is a RadioSub
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
//     dblistSub1 is a dbListSub
//     frmCount is a FormSub
//     TextBoxSub1000 is a TextBoxSub
//     ButtonSub4 is a ButtonSub
//     dblistSub2 is a dbListSub
//     TextBoxSub1001 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object Barticl_DD
Register_Object Branch_Branch_Name
Register_Object Btypkin_DD
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
Register_Object dbGroupSub1
Register_Object dblistSub1
Register_Object dblistSub2
Register_Object frmCount
Register_Object Gbridged_DD
Register_Object Gbridgeh_DD
Register_Object Nomisma_DD
Register_Object Pagia_DD
Register_Object Pagkat_DD
Register_Object Pagkin_DD
Register_Object Pagmoves_DD
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Ptyppar_DD
Register_Object parast_apo
Register_Object parast_name
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object Radio4
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
Register_Object Towns_DD
Register_Object V21b
Register_Object Wtypkin_DD
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open clients
    Open ptyppar
    open gplan
    use wait.dg
    Use doakyr.dg
    use sl83.sl
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
    Use BTYPKIN.DD
    Use BARTICL.DD
    Use SYSCURXR.DD
    Use PAGKAT.DD
    Use PAGKIN.DD
    Use PAGIA.DD
    Use PAGMOVES.DD
    Use GBRIDGEH.DD
    Use GBRIDGED.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V21b FOR V21b

    Object V21b is a dbView

        //AB-StoreTopStart
        property string         Psmodule public ''
        property integer        piepil   public 0
        property integer        piTxtID  public 0
        property string         Psrecr   public ''
        
        Function fsclientS string code Returns string
            string name
            if (psmodule(self)='05') begin
                clear pagia
                move code to pagia.pagia_code
                find eq pagia by index.4
                if (found=1) move pagia.pagia_descr to name
                else         move '' to name
            end
            else begin
                clear clients
                move code to clients.client_id
                find eq clients by index.6
                if (found) move clients.client_name to name
                else       move '' to name
            end
            function_return name
        end_Function
        
        //AB-StoreTopEnd

        Set Label to "Ñ¢úöÆ¶™ ßò®ò©´ò´†°È§ - °†§„©ú‡§ òßÊ ö‚≠¨®ò ú£ß¶®†°¶Á /  ãú®†°„ - ¶¢†°„ ò°Á®‡©û õ†òõ†°ò©Âò™ ¢¶ö†©´†°¶ß¶Âû©û™"
        Set Size to 294 519
        Set Location to 1 5

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
        End_Object    // Particle_DD

        Object Btypkin_DD is a Btypkin_DataDictionary
        End_Object    // Btypkin_DD

        Object Barticl_DD is a Barticl_DataDictionary
            Set DDO_Server to (Btypkin_DD(self))
        End_Object    // Barticl_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Pagkat_DD is a Pagkat_DataDictionary
        End_Object    // Pagkat_DD

        Object Pagkin_DD is a Pagkin_DataDictionary
        End_Object    // Pagkin_DD

        Object Pagia_DD is a Pagia_DataDictionary
            Set DDO_Server to (Pagkat_DD(self))
        End_Object    // Pagia_DD

        Object Pagmoves_DD is a Pagmoves_DataDictionary
            Set DDO_Server to (Pagia_DD(self))
            Set DDO_Server to (Pagkin_DD(self))
        End_Object    // Pagmoves_DD

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

            //AB-StoreStart
            begin_constraints
                string srecr
                get psrecr to srecr
                constrain Gbridged.gbridgeh_recr eq srecr
            end_constraints
            
            
            
            //AB-StoreEnd

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
            Set Label to "Ñß†¢¶ö„  ßò®ò©´ò´†°È§ - °†§„©ú‡§"
            Set Color to clAqua
            Set TextColor to 4210688
            Set Location to 28 1
            Set Size to 10 438
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
        End_Object    // TextBoxSub6

        Object RadioGroupSub1 is a RadioGroupSub
            Set Label to "Ñß†¢¶ö„ ßò®ò©´ò´†°È§ - °†§„©ú‡§"
            Set Size to 31 188
            Set Location to 40 3
            Object Radio1 is a RadioSub
                Set Label to "è‡¢„©ú‡§ "
                Set Size to 10 49
                Set Location to 10 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "Äö¶®È§"
                Set Size to 10 42
                Set Location to 10 74
            End_Object    // Radio2

            Object Radio3 is a RadioSub
                Set Label to "Ä•†¶ö®·≠‡§"
                Set Size to 12 57
                Set Location to 9 123
            End_Object    // Radio3

            Object Radio4 is a RadioSub
                Set Label to "èòöÂ‡§"
                Set Size to 10 45
                Set Location to 20 5
            End_Object    // Radio4


            //AB-StoreStart
                                                                                                            
            Procedure Notify_Select_State integer iNewItem integer iOldItem
                //for augmentation
                local integer licount
                Forward Send Notify_Select_State  iNewItem  iOldItem
                If iNewItem Eq 0 begin
                    set label of (textboxsub7(self)) to 'î¶®‚ò™ òßÊ'
                    set label of (textboxsub8(self)) to 'î¶®‚ò™ úÈ™'
                    set header_label of (dblistsub1(self)) item 5 to 'â‡õ.î¶®‚ò'
                    set header_label of (dblistsub1(self)) item 6 to 'Ñß‡§¨£Âò'
                    Set piepil   to 0
                    set psmodule to '01'
                end
                Else If iNewItem Eq 1 begin
                    set label of (textboxsub7(self)) to 'î¶®‚ò™ òßÊ'
                    set label of (textboxsub8(self)) to 'î¶®‚ò™ úÈ™'
                    set header_label of (dblistsub1(self)) item 5 to 'â‡õ.î¶®‚ò'
                    set header_label of (dblistsub1(self)) item 6 to 'Ñß‡§¨£Âò'
                    Set piepil   to 1
                    set psmodule to '02'
                end
                Else If iNewItem Eq 2 begin
                    set label of (textboxsub7(self)) to 'î¶®‚ò™ òßÊ'
                    set label of (textboxsub8(self)) to 'î¶®‚ò™ úÈ™'
                    set header_label of (dblistsub1(self)) item 5 to 'â‡õ.î¶®‚ò'
                    set header_label of (dblistsub1(self)) item 6 to 'Ñß‡§¨£Âò'
                    Set piepil   to 4
                    set psmodule to '04'
                end
                Else If iNewItem Eq 3 begin
                    set label of (textboxsub7(self)) to 'è·ö†ò òßÊ'
                    set label of (textboxsub8(self)) to 'è·ö†ò úÈ™'
                    set header_label of (dblistsub1(self)) item 5 to 'â‡õ.èòöÂ¶¨'
                    set header_label of (dblistsub1(self)) item 6 to 'èú®†ö®ò≠„'
                    Set piepil   to 5
                    set psmodule to '05'
                end
                send Constrain_The_Records
            
                Get Select_Count of dblistsub1 to liCount
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
                                                                                                                                                                                            
            Procedure Prompt
                if (psmodule(self)='04') begin
                     Set Prompt_Object to (sl100(Current_object))
                     Set psModule Of (sl100(Self)) to ''
                end
                if (psmodule(self)='05') set Prompt_Object to (sl83(Current_object))
                if ((psmodule(self)='01') or (psmodule(self)='02')) begin
                    Set Prompt_Object to (sl100(Current_object))
                    Set psModule Of (sl100(Self)) to (psModule(Self))
                end
                forward send prompt
            end_procedure
            
            procedure onchange
                string sclient
                get value item 0 to sclient
                if (psmodule(self)='05') begin
                    clear pagia
                    move sclient to pagia.pagia_code
                    find eq pagia by index.4
                    if (found=1) set value of (client_aponame(self)) to pagia.pagia_descr
                    else         set value of (client_aponame(self)) to ''
                end
                else begin
                   Move (fsclient(Self,sclient)) to sclient
                   set value of (client_aponame(self)) to sclient
                end
            end_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // client_apo

        Object client_eos is a FormSub
            Set Size to 13 85
            Set Location to 59 247
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Procedure Prompt
                if (psmodule(self)='04') begin
                     Set Prompt_Object to (sl100(Current_object))
                     Set psModule Of (sl100(Self)) to ''
                end
                if (psmodule(self)='05') set Prompt_Object to (sl83(Current_object))
                if ((psmodule(self)='01') or (psmodule(self)='02')) begin
                    Set Prompt_Object to (sl100(Current_object))
                    Set psModule Of (sl100(Self)) to (psModule(Self))
                end
                forward send prompt
            end_procedure
            
            procedure onchange
                string sclient
                get value item 0 to sclient
                if (psmodule(self)='05') begin
                    clear pagia
                    move sclient to pagia.pagia_code
                    find eq pagia by index.4
                    if (found=1) set value of (client_eosname(self)) to pagia.pagia_descr
                    else         set value of (client_eosname(self)) to ''
                end
                else begin
                   Move (fsclient(Self,sclient)) to sclient
                   set value of (client_eosname(self)) to sclient
                end
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
            Set Location to 76 232
            Set Size to 10 39
        End_Object    // date_apo999

        Object date_eos999 is a TextBoxSub
            Set Label to "ÑÈ™"
            Set Location to 76 333
            Set Size to 10 17
        End_Object    // date_eos999

        Object parast_apo is a FormSub
            Set Size to 13 52
            Set Location to 75 91
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Numeric_Mask Item 0 to 14 0 ' ,*'
            Procedure Prompt
                if (psmodule(self)='04') Set Prompt_Object to (sl031(Current_object))
                else if (psmodule(self)='05') Set Prompt_Object to (sl81(Current_object))
                else                     Set Prompt_Object to (sl012(Current_object))
                Set psModule Of (sl012(Self)) to (psModule(Self))
                forward send prompt
            end_procedure
            
            procedure onchange
                string sptyppar
                integer icode
                if (psmodule(self)='04') begin
                   get value item 0 to icode
                   move (FindBtypkinDescr (self,icode)) to sptyppar
                   set value of (parast_name(self)) to sptyppar
                end
                if (psmodule(self)='05') begin
                   get value item 0 to sptyppar
                   clear pagkin
                   Move sptyppar to pagkin.pagkin_code
                   find eq pagkin by index.1
                   if (found=1) set value of (parast_name(self)) to pagkin.pagkin_descr
                   else         set value of (parast_name(self)) to ''
                end
            
                if ((psmodule(self)='01') or (psmodule(self)='02')) begin
                   get value item 0 to sptyppar
                   Move (fsptyppar(Self,sptyppar)) to sptyppar
                   set value of (parast_name(self)) to sptyppar
                end
            end_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // parast_apo

        Object date_apo is a FormSub
            Set Size to 13 61
            Set Location to 74 271
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            //AB-StoreEnd

        End_Object    // date_apo

        Object date_eos is a FormSub
            Set Size to 13 73
            Set Location to 74 352
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            //AB-StoreEnd

        End_Object    // date_eos

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ßò®ò©´./°Â§û©û™"
            Set Location to 76 3
            Set Size to 10 87
        End_Object    // TextBoxSub12

        Object parast_name is a FormSub
            Set Size to 13 86
            Set Location to 75 145
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
            Set Location to 264 160

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
               If (Select_Count(dblistsub1(Self))>0) Set label of (buttonsub2(self)) to 'çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
               Else                                  Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            End_Procedure
            
            Procedure Unmark_All
               Send Delete_Data to (Selected_Items(dblistsub1(self)))
               Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            End_Procedure
            
            Procedure Onclick
               Integer licount
               If (current_record(dblistsub1(Self))) begin
                //   Set Dynamic_Update_State    Of (dblistsub1(Self))  To false
                   If (select_Count(dblistsub1(Self)) Gt 0) send unmark_all
                   Else                                     send mark_all
               End
               Else Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
               Set enabled_State of (buttonsub3(self)) to (Select_Count(dblistsub1(Self)))
               Send Beginning_Of_Data    to (dblistsub1(self))
                //  Set Dynamic_Update_State    Of (dblistsub1(Self))  To true
               Get Select_Count of dblistsub1 to liCount
               Set Value of (frmCount(self)) item 0 to (Select_Count(dblistsub1(Self)))
               Set enabled_State of (buttonsub3(self)) to (liCount)
               If (liCount)    Set Label of (buttonsub2(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
               Else            Set Label of (buttonsub2(self)) to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object ButtonSub3 is a ButtonSub
            Set Label to "Ä°Á®‡©û ¢¶ö†©´†°¶ß¶Âû©û™  úöö®ò≠È§ "
            Set Size to 13 164
            Set Location to 265 347
            Set Form_FontWeight Item 0 to 800

            //AB-StoreStart
            Procedure OnClick
               Integer iInt ibpoid ierr imsg irecnum iError_Object_ID ilast iparticle rval icount
               string  snomisma msgstr sptypparcode scodegl switemkata smodule  spartlno
               indicate err false
               get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ò°Á®‡©û õ†òõ†°ò©Âò™ ¢¶ö†©´†°¶ß¶Âû©û™ ´‡§ úß†¢úö£‚§‡§ ßò®ò©´ò´†°È§ ??" to imsg
               If (imsg =MBR_yes) begin
                  Set piTxtID to (Wait(Self))
                  Set Button_State    of (piTxtID(Self))  to False
                  Set BarVisibleState of (piTxtID(Self))  to '' False
                  Send Popup                              to (piTxtID(Self))
                  Get Select_Count of (dblistsub1(Self)) to iInt
                  If (iInt>0) Begin
                     For iCount from 0 to (iInt-1)
                       begin_transaction
                       Get array_value of (Selected_Items(dblistsub1(self))) Item iCount to iRecnum
                       Move  Error_Object_ID  to iError_Object_ID
                       Move (Doakyr(Self))    to ibpoid
                       Set pirecnum   of iBPOID  to irecnum
                       Send DoProcess            to iBPOID
                       end_transaction
                       move iError_Object_ID to Error_Object_ID
                     Loop
                     [err] Send Info_Box "èò®¶¨©†·©´û°ú ¢·ü¶™ ©´û§ Ä°Á®‡©û ¢¶ö†©´†°¶ß¶Âû©û™ ßò®ò©´ò´†°¶Á !! " "è¢û®¶≠¶®Âò"
                     [err] Send Delete_Data to (Selected_Items(dblistsub1(self)))
                     [err] Set Label Of (Buttonsub2(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
                     if (not(err)) Send Info_Box "É†òõ†°ò©Âò ò°Á®‡©û™ ¢¶ö†©´†°¶ß¶Âû©û™ ¶¢¶°¢û®Èüû°ú " "è¢û®¶≠¶®Âò"
                     indicate err false
                     Set Value of (frmCount(self)) item 0 to 0
                     send clear to gbridgeh_dd
                     send onclick to (buttonsub4(self))
                  End
                  else send info_box 'É‚§ ¨ß·®Æ¶¨§ úß†¢úö£‚§ò ßò®ò©´ò´†°·' 'è¢û®¶≠¶®Âò'
               end
               If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
               procedure_return
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub3

        Object dblistSub1 is a dbListSub
            Set Main_File to Gbridgeh.File_Number
            Set Ordering to 4
            Set Size to 86 505
            Set Location to 93 4

            Begin_Row
                Entry_Item ('')
                Entry_Item Gbridgeh.Ptyppar_code
                Entry_Item Gbridgeh.Garticl_aitiol
                Entry_Item Gbridgeh.Garticl_no
                Entry_Item Gbridgeh.Garticl_hmnia
                Entry_Item Gbridgeh.Client_id
                Entry_Item (FsclientS(self,Gbridgeh.client_id))
            End_Row

            Set Form_Width    item 0 to 20
            Set Header_Label  item 0 to "Ä°"
            Set Column_Checkbox_State  item 0 to True
            
            Set Form_Width    item 1 to 65
            Set Header_Label  item 1 to "èò®ò©´-°Â§û©û"
            
            Set Form_Width    item 2 to 100
            Set Header_Label  item 2 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 3 to 103
            Set Header_Label  item 3 to "Ä®†ü£Ê™ ßò®ò©´†°¶Á"
            
            Set Form_Width    item 4 to 45
            Set Header_Label  item 4 to "Ü£/§Âò"
            
            Set Form_Width    item 5 to 66
            Set Header_Label  item 5 to "î¶®‚ò™"
            
            Set Form_Width    item 6 to 100
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
                Get find_element of iSelItemsID gbridgeh.recnum to bState
                Send DoDisplayCheckBox (iBase+iOffset) (bState<>-1)
                set psrecr to gbridgeh.gbridgeh_recr
                Send Rebuild_Constraints    to (Gbridged_DD(Self))
                Send Beginning_Of_Data      to (dblistsub2(self))  true
            End_Procedure // Entry_Display
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // dblistSub1

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
            Set Label to "Ñß†¢úö£‚§ú™ úöö®ò≠‚™ = "
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
            Set Location to 74 430
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
            Procedure OnClick
                Send constrain_the_records
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub4

        Object dblistSub2 is a dbListSub
            Set Main_File to Gbridged.File_Number
            Set Server to (Gbridged_DD(self))
            Set Ordering to 1
            Set Size to 70 507
            Set Location to 186 5

            Begin_Row
                Entry_Item Gbridgeh.Gbridgeh_recr
                Entry_Item Gbridged.Ext_gplan_code
                Entry_Item (Fsgplan(self,Gbridged.ext_gplan_code))
                Entry_Item Gbridged.Gmove_aitiol
                Entry_Item Gbridged.Gmove_x2
                Entry_Item Gbridged.Gmove_p2
            End_Row

            Set Form_Width    item 0 to 54
            Set Header_Label  item 0 to "Gbridgeh recr"
            
            Set Form_Width    item 1 to 70
            Set Header_Label  item 1 to "ä¶ö/©£Ê™ Ç.ä"
            
            Set Form_Width    item 2 to 127
            Set Header_Label  item 2 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 3 to 106
            Set Header_Label  item 3 to "Ä†´†¶¢¶öÂò"
            
            Set Form_Width    item 4 to 70
            Set Header_Label  item 4 to "ï®‚‡©û"
            
            Set Form_Width    item 5 to 72
            Set Header_Label  item 5 to "èÂ©´‡©û"
            

            //AB-StoreStart
            Set Points Item 4 to 2
            Set Numeric_Mask Item 4 to 14 2 ' ,*'
            Set Points Item 5 to 2
            Set Numeric_Mask Item 5 to 14 2 ' ,*'
            
            
            
            
            //AB-StoreEnd

        End_Object    // dblistSub2

        Object TextBoxSub1001 is a TextBoxSub
            Set Label to "Ñ§û£‚®‡©û ¢¶öò®†ò©£È§ ¢¶ö†©´†°„™ "
            Set Color to clNavy
            Set TextColor to clYellow
            Set Location to 176 4
            Set Size to 10 433
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
        End_Object    // TextBoxSub1001


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String   sModule
            integer  rval
        
            Set Dynamic_Update_State Of (dblistsub2(self)) to False
            send onclick to (buttonsub4(self))
            Forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure
        
        Procedure Constrain_The_Records
                Integer liCount
                Send Rebuild_Constraints    to (Gbridgeh_DD(Self))
                Send Delete_Data            to (Selected_Items(dblistsub1(self)))
                Send Beginning_Of_Data      to (dblistsub1(self)) true
                Send Beginning_Of_Data      to (dblistsub2(self)) true
                Get Select_Count            of dblistsub1           to liCount
                Set enabled_State           of (buttonsub3(self))   to (liCount)
                If (liCount) Set Label      of (buttonsub2(self))   to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
                Else         Set Label      of (buttonsub2(self))   to "ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§"
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V21b


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
