//AB/ Project v14_1:emfanish ekremon parastatikon
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v14_1:emfanish ekremon parastatikon"
//AB/     Set ProjectFileName to "v14_1.VW"
//AB/     Set GenerateFileName to "v192.vw"

// Project Object Structure
//   v14_1 is a dbViewSubs
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
//     Syscurxr_DD is a DataDictionary
//     FROM_DATE is a FormSub
//     TO_DATE is a FormSub
//     ButtonSub3 is a ButtonSub
//     The_Table is a dbGrid
//     FormSub1 is a FormSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     FormSub2 is a FormSub
//     TextBoxSub8 is a TextBoxSub
//     btnPartl is a ButtonSub
//     ButtonSub4 is a ButtonSub
//     Particle_Exei_Sxetika is a dbFormSub
//     Particle_Max_Days_Date is a dbFormSub

// Register all objects
Register_Object Areas_DD
Register_Object Branch_Branch_Name
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object btnPartl
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Company_Company_Name
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object dbGroupSub1
Register_Object FormSub1
Register_Object FormSub2
Register_Object FROM_DATE
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Particle_Exei_Sxetika
Register_Object Particle_Max_Days_Date
Register_Object Payresp_DD
Register_Object Ptyppar_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object The_Table
Register_Object TO_DATE
Register_Object Towns_DD
Register_Object v14_1
Register_Object Wtypkin_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use r9_3.rv
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Form.Sub
Use Button.Sub
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub

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
Use SYSCURXR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v14_1 FOR v14_1

Object v14_1 is a dbViewSubs

    //AB-StoreTopStart
    Property String psModule   Public ''
    property string psdatefrom public ''
    property string psdateto   public ''
    property integer pierr     public 0
    property string pspar      public ''
    //AB-StoreTopEnd

    Set Label to "ÑÁ®ú©û ú°°®ú£È§ ßò®ò©´ò´†°È§"
    Set Size to 294 518
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

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
        
        Begin_Constraints
            string datefrom dateto spar
        
            get psdatefrom to datefrom
            get psdateto   to dateto
            get pspar      to spar
        
            //Set Ordering to 10
        
            constrain particle.company_code eq syscurxr.company_code
            constrain particle.branch_code  eq syscurxr.branch_code
            constrain particle.year_year    eq syscurxr.year_year
        
                 If (psModule(Self)='01') constrain particle.partl_module eq '01' //Polhseis
            Else If (psModule(Self)='02') constrain particle.partl_module eq '02' //Polhseis
        
            constrain particle.exei_sxetika                                 eq '1'
        
            Constrain particle.max_days_date Between datefrom And dateto
        
            constrain particle.partl_timol                                  ne 1
        
            if (spar<>'') Constrain particle.ptyppar_code                   eq spar
        
        End_Constraints
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object FROM_DATE is a FormSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 13 61
        Set Location to 28 88
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        set prompt_object to (ocalendar(self))
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FROM_DATE

    Object TO_DATE is a FormSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 13 61
        Set Location to 44 88
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        set prompt_object to (ocalendar(self))
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // TO_DATE

    Object ButtonSub3 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ÑÁ®ú©û Ñöö®ò≠È§"
        Set Bitmap to "drum.bmp"
        Set Size to 22 25
        Set Location to 44 301
        Set Border_Style to Border_Normal
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set TooltipValue to "ÑÁ®ú©û ú°°®ú£È§ úöö®ò≠È§"
        
        Procedure OnClick
            Date dFrom dTo
            string spar
            Get Value Of From_Date  Item 0 to dFrom
            Get Value Of To_Date    Item 0 to dTo
            get value of formsub1   item 0 to spar
        
            if (dfrom='') move '01/01/1980' to dfrom
            if (dto='')   move '31/12/2100' to dto
        
            Set psDateFrom  to dFrom
            Set psDateTo    to dTo
            set pspar       to spar
        
            Send Rebuild_Constraints    to Particle_DD
            Send Beginning_Of_Data      to The_Table True
        
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object The_Table is a dbGrid

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Main_File to Particle.File_Number
        Set Ordering to 10
        Set Size to 197 502
        Set Location to 65 2
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Particle.Ptyppar_code
            Entry_Item Particle.Partl_hmnia
            Entry_Item Particle.Max_days_date
            Entry_Item Particle.Client_id
            Entry_Item Clients.Client_name
            Entry_Item Wtypkin.Wtypkin_descr
            Entry_Item Particle.Pseira_seira
            Entry_Item Particle.Partl_no
        End_Row

        Set Form_Width    item 0 to 45
        Set Header_Label  item 0 to "èò®ò©´."
        
        Set Form_Width    item 1 to 69
        Set Header_Label  item 1 to "Ü£/§Âò ßò®ò©´."
        
        Set Form_Width    item 2 to 51
        Set Header_Label  item 2 to "Ü£.¢„•û™"
        
        Set Form_Width    item 3 to 55
        Set Header_Label  item 3 to "î¶®‚ò™"
        
        Set Form_Width    item 4 to 115
        Set Header_Label  item 4 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 5 to 90
        Set Header_Label  item 5 to "âÂ§û©û"
        
        Set Form_Width    item 6 to 33
        Set Header_Label  item 6 to "ëú†®·"
        
        Set Form_Width    item 7 to 39
        Set Header_Label  item 7 to "Ä®†ü£Ê™"
        

        //AB-StoreStart
        
        set read_only_state             to true
        
        set column_prompt_object item 0 to none
        set column_prompt_object item 3 to none
        set column_prompt_object item 4 to none
        
        on_key key_ctrl+key_o send open_the_fields
        
        set size to 210 502
        
        procedure open_the_fields
           integer iopen
           get enabled_state of particle_exei_sxetika  to iopen
           set enabled_state of particle_exei_sxetika  to (1-iopen)
           set enabled_state of particle_max_days_date to (1-iopen)
           set visible_state of particle_exei_sxetika  to (1-iopen)
           set visible_state of particle_max_days_date to (1-iopen)
           set Dynamic_Update_State Of (the_table(self)) to false
           if (Not(iOpen)) Set size Of The_Table to 197 502
           else            Set size Of The_Table to 210 502
           set Dynamic_Update_State Of (the_table(self)) to true
        end_procedure
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object FormSub1 is a FormSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 18 55
        Set Location to 24 243
        Set Color to clNavy
        Set TextColor to clYellow
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Prompt_Object to (sl012(Current_object))
        
        Procedure Find_Perigrafh String asValue
            String lsValue
            move (fsptyppar(self,asvalue)) to lsvalue
            set value of (formsub2(current_object)) to lsvalue
        End_Procedure
        
        Procedure Prompt_Callback integer hPrompt
            Local String lsValue
            set Export_Column of hPrompt to 0
            Set Initial_Column of hPrompt to 0
        end_procedure
        
        Procedure Prompt
            String sVal
            Set Modal_State Of (sl012(Current_object)) to True
            Set psModule Of (sl012(Current_object)) to (psModule(Self))
            Forward Send Prompt
            Get Value Item 0 to sVal
            Send Find_Perigrafh sVal
        End_procedure
        
        procedure onchange
            String sVal
            Get Value Item 0 to sVal
            Send Find_Perigrafh sVal
        end_procedure
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 25 502
        Set Location to -4 1
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 123
            Set Location to 9 52
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 110
            Set Location to 9 263
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                    
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 439
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub3 is a TextBoxSub
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

        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 206
            Set Size to 10 42
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 382
            Set Size to 10 33
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub5

    End_Object    // dbGroupSub1

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "ÄßÊ Ü£/§Âò  ä„•û™"
        Set Location to 30 2
        Set Size to 10 67
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "Ñ‡™ Ü£§Âò  ä„•û™"
        Set Location to 45 3
        Set Size to 10 62
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object FormSub2 is a FormSub
        Set Size to 18 200
        Set Location to 25 301
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // FormSub2

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "íÁß¶™ ßò®ò©´ò´†°¶Á"
        Set Location to 28 152
        Set Size to 12 75
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object btnPartl is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Filesys3.bmp"
        Set Size to 22 25
        Set Location to 44 435
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                    
        Set TooltipValue to "Ñ£≠·§†©û úß†¢úö£‚§¶¨ ßò®ò©´ò´†°¶Á "
        
        Procedure OnClick
            String  sPartlRecr sModule
            Integer iRec
            Get Field_Current_Value Of particle_DD Field particle.Partl_Recr   to sPartlRecr
            Get Field_Current_Value Of particle_DD Field particle.partl_module to sModule
        
            If (Trim(sPartlRecr)<>'') Begin
                Clear Particle
                If (Trim(sModule)<>'') begin
                   Set psModule Of (Particle(Self)) to sModule
                   Set psFindParticleRecr  Of (Particle(Self)) to sPartlRecr
                   Send Activate_Particle
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPartl

    Object ButtonSub4 is a ButtonSub

        //AB-StoreTopStart
                
        //AB-StoreTopEnd

        Set Label to "ButtonSub3"
        Set Bitmap to "printer.bmp"
        Set Size to 20 27
        Set Location to 44 469
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        Set TooltipValue to "Ñ°´Áß‡©û ú°°®ú£È§ ßò®ò©´ò´†°È§ "
        
        Procedure OnClick
            string spar
            integer dfrom dto
            Get Value Of From_Date  Item 0 to dFrom
            Get Value Of To_Date    Item 0 to dTo
            get value of formsub1   item 0 to spar
            if (dfrom='') move '01/01/1980' to dfrom
            if (dto='')   move '31/12/2100' to dto
            Set psDateFrom of (r9_3(self)) to dfrom
            Set psDateTo   of (r9_3(self)) to dTo
            set pspar      of (r9_3(self)) to spar
            Set psModule Of r9_3 to (psModule(Self))
            Send runcustomReport to (customWQLReport(r9_3(Self)))
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4

    Object Particle_Exei_Sxetika is a dbFormSub
        Entry_Item Particle.Exei_sxetika
        Set Size to 13 13
        Set Location to 260 5
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        set visible_state to false
        procedure request_save
            send request_save to particle_dd
            Set Dynamic_Update_State Of (the_table(self)) to False
            send beginning_of_data to the_table true
            Set Dynamic_Update_State Of (the_table(self)) to true
        end_procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Exei_Sxetika

    Object Particle_Max_Days_Date is a dbFormSub
        Entry_Item Particle.Max_days_date
        Set Size to 13 66
        Set Location to 260 21
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        set visible_state to false
        
        procedure request_save
            send request_save to particle_dd
            Set Dynamic_Update_State Of (the_table(self)) to false
            send beginning_of_data to the_table true
            Set Dynamic_Update_State Of (the_table(self)) to true
        end_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Max_Days_Date


    //AB-StoreStart
                            
    Procedure Activate_View Returns Integer
         Integer Rval ibpoid
         Date ddate
         String sModule  sDescr asvalue
    
         Get psMenuModule  Of Main_Menu      to sModule
         Set psModule                    to sModule
         Get gsfCode_Mast "MODULE" sModule to sDescr
         Move (Trim(sDescr)) to sDescr
    
        // â‡õ†°ò™ ß¶¨ ò≠¶®ò ´¶ constrain ´‡§ ©´¶†Æú†‡§ ´¶¨ view ¶ß‡™ ßò®ò©´ò´†°·
        // û °†§„©ú†™ ß¶¨ èêÑèÑà §ò úÂ§ò† constrain ò§ò¢¶öò £ú ´¶ °Á°¢‡£ò òß¶
        // ´¶ ¶ß¶†¶ °ò¢úÂ´ò† ´¶ view. è.ï. ò§ °¢ûüúÂ òß¶ è‡¢„©ú†™/èú¢·´ú™ §ò £û§
        // ≠òÂ§¶§´ò† ©´ò ßò®ò©´ò´†°· ´ò ctypkin Äö¶®È§ °¢ß....
    
    
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                set label of v14_1 to "ÑÁ®ú©û ú°°®ú£È§ ßò®ò©´ò´†°È§ ßÈ¢û©û™"
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                set label of v14_1 to "ÑÁ®ú©û ú°°®ú£È§ ßò®ò©´ò´†°È§ òö¶®È§"
              Case Break
        Case End
    
        set value of (from_date(self))  to syscurxr.year_xrhshfrom
        set value of (to_date(self))    to syscurxr.year_xrhshto
        Set psdatefrom                  to ddate
        set psdateto                    to ddate
     //   Send OnClick to ButtonSub3
        Forward Get MSG_Activate_View to Rval
        procedure_return rval
    End_Procedure
    
    Procedure Request_Cancel
        Set Ordering Of particle_DD to -1
        Forward Send Request_Cancel
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // v14_1


//AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
