//AB/ Project V193d:apoenergopiish DEOP
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V193d:apoenergopiish DEOP"
//AB/     Set ProjectFileName to "V193d.VW"

// Project Object Structure
//   V193d is a dbViewSubS
//     Country_DD2 is a Country_DataDictionary
//     Towns_DD2 is a Towns_DataDictionary
//     Cities_DD2 is a Cities_DataDictionary
//     Areas_DD2 is a Areas_DataDictionary
//     Payresp_DD2 is a Payresp_DataDictionary
//     Clients_DD2 is a Clients_DataDictionary
//     Constrct_DD2 is a Constrct_DataDictionary
//     Salesmen_DD2 is a Salesmen_DataDictionary
//     Mhxanik_DD2 is a Mhxanik_DataDictionary
//     Cn_DD2 is a Cn_DataDictionary
//     Btnordh_DD2 is a Btnordh_DataDictionary
//     Btnordd_DD2 is a Btnordd_DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Timokat_DD is a DataDictionary
//     Btnordh_DD is a DataDictionary
//     Btnordd_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     RadioGroupSub5 is a RadioGroupSub
//       Radio7 is a RadioSub
//       Radio8 is a RadioSub
//     TextBoxSub1020 is a TextBoxSub
//     client_apo is a FormSub
//     client_aponame is a FormSub
//     date_eos is a FormSub
//     date_apo1021 is a TextBoxSub
//     RadioGroupSub6 is a RadioGroupSub
//       Radio9 is a RadioSub
//       Radio10 is a RadioSub
//     ButtonSub6 is a ButtonSub
//     ButtonSub7 is a ButtonSub
//     dbListSub1 is a dbListSub
//     TextBoxSub1022 is a TextBoxSub
//     frmCount is a FormSub
//     ButtonSub8 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Areas_DD2
Register_Object Branch_Branch_Name
Register_Object Btnordd_DD
Register_Object Btnordd_DD2
Register_Object Btnordh_DD
Register_Object Btnordh_DD2
Register_Object ButtonSub6
Register_Object ButtonSub7
Register_Object ButtonSub8
Register_Object Cities_DD
Register_Object Cities_DD2
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object Cn_DD
Register_Object Cn_DD2
Register_Object Company_Company_Name
Register_Object Constrct_DD
Register_Object Constrct_DD2
Register_Object Country_DD
Register_Object Country_DD2
Register_Object client_apo
Register_Object client_aponame
Register_Object date_apo1021
Register_Object date_eos
Register_Object dbGroupSub1
Register_Object dbListSub1
Register_Object frmCount
Register_Object Mhxanik_DD
Register_Object Mhxanik_DD2
Register_Object Payresp_DD
Register_Object Payresp_DD2
Register_Object Radio10
Register_Object Radio7
Register_Object Radio8
Register_Object Radio9
Register_Object RadioGroupSub5
Register_Object RadioGroupSub6
Register_Object Salesmen_DD
Register_Object Salesmen_DD2
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub1020
Register_Object TextBoxSub1022
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Timokat_DD
Register_Object Towns_DD
Register_Object Towns_DD2
Register_Object V193d
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use wait.dg
use sl024.sl
use sl100.sl
use v193.vw

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use Rgroup.Sub
Use Radio.Sub
Use Form.Sub
Use Button.Sub
Use dbList.Sub

Use SYSCURXR.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use CONSTRCT.DD
Use SALESMEN.DD
Use MHXANIK.DD
Use CN.DD
Use TIMOKAT.DD
Use BTNORDH.DD
Use BTNORDD.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V193d FOR V193d

Object V193d is a dbViewSubS

    //AB-StoreTopStart
    property integer    piepil          public 0
    property integer    piTxtID         public 0
    Property Integer    piListID        Public 0
    Property String     psClient        Public ''
    Property Date       pdEos           Public ''
    property integer    pienergo        public 0
    
    Object Country_DD2 is a Country_DataDictionary
    End_Object    // Country_DD
    
    Object Towns_DD2 is a Towns_DataDictionary
        Set DDO_Server to (Country_DD2(self))
    End_Object    // Towns_DD
    
    Object Cities_DD2 is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD2(self))
    End_Object    // Cities_DD
    
    Object Areas_DD2 is a Areas_DataDictionary
    End_Object    // Areas_DD
    
    Object Payresp_DD2 is a Payresp_DataDictionary
    End_Object    // Payresp_DD
    
    Object Clients_DD2 is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD2(self))
        Set DDO_Server to (Areas_DD2(self))
        Set DDO_Server to (Payresp_DD2(self))
    End_Object    // Clients_DD
    
    Object Constrct_DD2 is a Constrct_DataDictionary
    End_Object    // Constrct_DD
    
    Object Salesmen_DD2 is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD
    
    Object Mhxanik_DD2 is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD
    
    Object Cn_DD2 is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD2(self))
        Set DDO_Server to (Constrct_DD2(self))
        Set DDO_Server to (Salesmen_DD2(self))
        Set DDO_Server to (Mhxanik_DD2(self))
    End_Object    // Cn_DD
    
    Object Btnordh_DD2 is a Btnordh_DataDictionary
        Set DDO_Server to (Cn_DD2(self))
        send defineallextendedfields
    End_Object    // Btnordh_DD
    
    Object Btnordd_DD2 is a Btnordd_DataDictionary
        Set DDO_Server to (Btnordh_DD2(self))
        Set Constrain_File to Btnordh.File_Number
    End_Object    // Btnordd_DD
    
    
    //AB-StoreTopEnd

    Set Label to "Äß¶ú§ú®ö¶ß¶Âû©û - Ñ§ú®ö¶ß¶Âû©û É.Ñ.é.è"
    Set Size to 289 525
    Set Location to 1 3

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

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

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
    End_Object    // Cn_DD

    Object Timokat_DD is a Timokat_DataDictionary
    End_Object    // Timokat_DD

    Object Btnordh_DD is a Btnordh_DataDictionary
        Set DDO_Server to (Cn_DD(self))

        //AB-StoreStart
        send defineallextendedfields
        
        begin_constraints
            Date    ldeos
            String  lsApopel
            Integer iEpil
            Set Ordering to 7
            Get piepil      to iEpil
            Get psClient    to lsApopel
            Get pdEos       to ldEos
            if (ldEos='') move '31/12/2100' to ldEos
            constrain btnordh.deop_active eq (pienergo(self))
            constrain btnordh.statero     eq iepil
            constrain btnordh.deop_lhxh   lt ldeos
            if (lsapopel<>'') constrain btnordh.client_id eq lsapopel
        End_constraints
        
        
        
        //AB-StoreEnd

    End_Object    // Btnordh_DD

    Object Btnordd_DD is a Btnordd_DataDictionary
        Set DDO_Server to (Btnordh_DD(self))
        Set Constrain_File to Btnordh.File_Number
    End_Object    // Btnordd_DD

    Set Main_DD to (Btnordh_DD(self))
    Set Server to (Btnordh_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 512
        Set Location to -3 1
        Set Visible_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 106
            Set Location to 9 63
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
            Set Size to 13 123
            Set Location to 9 245
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
            Set Size to 13 85
            Set Location to 8 422
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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

    Object RadioGroupSub5 is a RadioGroupSub
        Set Label to "Ñß†¢¶ö„  É.Ñ.é.è"
        Set Size to 25 171
        Set Location to 1 4
        Object Radio7 is a RadioSub
            Set Label to "Äß¶ú§ú®ö¶ß¶Âû©û"
            Set Size to 10 75
            Set Location to 10 5
        End_Object    // Radio7

        Object Radio8 is a RadioSub
            Set Label to "Ñ§ú®ö¶ß¶Âû©û"
            Set Size to 10 79
            Set Location to 10 85
        End_Object    // Radio8


        //AB-StoreStart
                                                                                                                                                    
        Procedure Notify_Select_State integer iNewItem integer iOldItem
            Integer licount
            If iNewItem Eq 0        set pienergo  to 0
            Else If iNewItem Eq 1   Set pienergo  to 1
            Send Constrain_The_Records
            Get Select_Count of dbListsub1 to liCount
            set enabled_State of (buttonsub8(self)) to (liCount)
            If (liCount)    Set Label of (buttonsub6(self)) to "çú£ò®°·®†©£ò Ê¢‡§ ´‡§ É.Ñ.é.è"
            Else            Set Label of (buttonsub6(self)) to "ãò®°·®†©£ò Ê¢‡§ ´‡§ É.Ñ.é.è"
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub5

    Object TextBoxSub1020 is a TextBoxSub
        Set Label to "èú¢·´û™"
        Set Location to 5 204
        Set Size to 10 43
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1020

    Object client_apo is a FormSub
        Set Size to 13 101
        Set Location to 4 253
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        Set Prompt_Object to (sl100(Current_object))
        
        Procedure Prompt
            Set psModule Of (sl100(Self)) to '01'
            forward send prompt
        end_procedure
        
        procedure onchange
            string sclient scode
            get value item 0 to scode
            Move (fsclient(Self,scode)) to sclient
            set value of (client_aponame(self)) to sclient
            Set psClient to sCode
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // client_apo

    Object client_aponame is a FormSub
        Set Size to 13 153
        Set Location to 4 361
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // client_aponame

    Object date_eos is a FormSub
        Set Size to 13 62
        Set Location to 21 452
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Date_Window
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set prompt_object to (ocalendar(self))
        
        Procedure OnChange
            Date dHmnia
            Get Value Item 0    to dHmnia
            Set pdEos           to dHmnia
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // date_eos

    Object date_apo1021 is a TextBoxSub
        Set Label to "Ä¢¢òö„ °ò´·©´ò©û™ É.Ñ.é.è  £ú û£/§Âò ¢„•û™ £†°®Ê´ú®û  "
        Set Location to 23 222
        Set Size to 10 194
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // date_apo1021

    Object RadioGroupSub6 is a RadioGroupSub
        Set Label to "Ñß†¢¶ö„  °ò´·©´ò©û™ É.Ñ.é.è"
        Set Size to 25 171
        Set Location to 30 4
        Object Radio9 is a RadioSub
            Set Label to "ãû ©´òüú®Ê´û´ò™"
            Set Size to 10 75
            Set Location to 10 5
        End_Object    // Radio9

        Object Radio10 is a RadioSub
            Set Label to "ë´òüú®Ê´û´ò ´†£È§"
            Set Size to 10 81
            Set Location to 10 85
        End_Object    // Radio10


        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        Procedure Notify_Select_State integer iNewItem integer iOldItem
            Integer licount
            If iNewItem Eq 0        set piepil   to 0
            Else If iNewItem Eq 1   Set piepil   to 1
            Send Constrain_The_Records
            Get Select_Count of dbListsub1 to liCount
            set enabled_State of (buttonsub8(self)) to (liCount)
            If (liCount)    Set Label of (buttonsub6(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
            Else            Set Label of (buttonsub6(self)) to "ãò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
        End_Procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub6

    Object ButtonSub6 is a ButtonSub

        //AB-StoreTopStart
                
                
        //AB-StoreTopEnd

        Set Label to "ãò®°·®†©£ò úß†¢úö£‚§‡§ úöö®ò≠È§"
        Set Size to 14 173
        Set Location to 60 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        Procedure Mark_All
           Integer inum
           send rebuild_constraints to (BTNORDH_dd(self))
           send find to (btnordh_dd(self)) first_record 7
           While (Found=1)
              set array_value of (selected_items(dblistsub1(self))) item inum to btnordh.recnum
              add 1 to inum
              send find to (btnordh_dd(self)) next_record 7
           Loop
           If (Select_Count(Dblistsub1(Self))>0) Set label of (buttonsub6(self)) to 'çú£ò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è'
           Else                                  Set Label Of (Buttonsub6(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è'
        End_Procedure
        
        Procedure Unmark_All
           Send Delete_Data to (Selected_Items(dblistsub1(self)))
           Set Label Of (Buttonsub6(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è'
        End_Procedure
        
        Procedure Onclick
           Integer licount
           If (current_record(dblistsub1(Self))) begin
               If (select_Count(dblistsub1(Self)) Gt 0) send unmark_all
               Else                                     send mark_all
           End
           Else Set Label Of (Buttonsub6(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è'
           Set enabled_State of (buttonsub8(self)) to (Select_Count(Dblistsub1(Self)))
           Send Beginning_Of_Data    to (dblistsub1(self))
           Get Select_Count of dbListsub1 to liCount
           Set Value of (frmCount(self)) item 0 to (Select_Count(dblistsub1(Self)))
           Set enabled_State of (buttonsub8(self)) to (liCount)
           If (liCount)    Set Label of (buttonsub6(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
           Else            Set Label of (buttonsub6(self)) to "ãò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub6

    Object ButtonSub7 is a ButtonSub
        Set Label to "ÑÁ®ú©û úöö®ò≠È§"
        Set Size to 18 261
        Set Location to 40 253
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        Procedure OnClick
            Send constrain_the_records
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub7

    Object dbListSub1 is a dbListSub
        Set Main_File to Btnordh.File_Number
        Set Ordering to 6
        Set Size to 178 508
        Set Location to 78 5

        Begin_Row
            Entry_Item ('')
            Entry_Item Btnordh.Aa_deop
            Entry_Item Btnordh.Client_id
            Entry_Item Clients.Client_name
            Entry_Item Btnordh.Cn_code
            Entry_Item Cn.Cn_descr
            Entry_Item Btnordh.Deop_date
            Entry_Item Btnordh.Deop_lhxh
            Entry_Item Btnordh.Deop_active
        End_Row

        Set Form_Width    item 0 to 16
        Set Header_Label  item 0 to ""
        Set Column_Checkbox_State  item 0 to True
        
        Set Form_Width    item 1 to 65
        Set Header_Label  item 1 to "â‡õ†°Ê™ É.Ñ.é.è"
        
        Set Form_Width    item 2 to 62
        Set Header_Label  item 2 to "â‡õ†°Ê™ èú¢·´û"
        
        Set Form_Width    item 3 to 85
        Set Header_Label  item 3 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 4 to 55
        Set Header_Label  item 4 to "â‡õ.Ñ®ö¶¨"
        
        Set Form_Width    item 5 to 90
        Set Header_Label  item 5 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 6 to 45
        Set Header_Label  item 6 to "Ñ§ò®•û "
        
        Set Form_Width    item 7 to 45
        Set Header_Label  item 7 to "ä„•û"
        
        Set Form_Width    item 8 to 42
        Set Header_Label  item 8 to "Ä§ú§ú®öÊ"
        Set Column_Checkbox_State  item 8 to True
        

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
            Set Enabled_State of ButtonSub8 to False
            Get Base_Item to iBase
            Get Current_Col to iCol
            Forward Send Toggle_Select
            Send DoDisplayCheckBox (iBase+iOffset) (Select_State(self,iBase))
            If (Select_Count(dblistsub1(Self)) Gt 0) begin
               Set Label of (buttonSub6(self)) to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
               Set Enabled_State of ButtonSub8 to True
            end
            else begin
               Set Label of (buttonSub6(self)) to "ãò®°·®†©£ò Ê¢‡§ ´‡§ É.Ñ.é.è"
               Set Enabled_State of ButtonSub8 to false
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
            Get find_element of iSelItemsID btnordh.recnum to bState
            Send DoDisplayCheckBox (iBase+iOffset) (bState<>-1)
        End_Procedure // Entry_Display
        
        procedure mouse_click integer window integer char_pos
            string sdeop
            Integer iBase
            forward send mouse_click window char_pos
            Get Base_Item to iBase
            Get Value Item (iBase+1) to sDeop
            Set psdeop  Of (v193(Self)) to sdeop
            If (Trim(sDeop)<>'') Send Activate_v193
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // dbListSub1

    Object TextBoxSub1022 is a TextBoxSub
        Set Label to "Ñß†¢úö£‚§ò É.Ñ.é.è = "
        Set Auto_Size_State to FALSE
        Set FontSize to 4 0
        Set Location to 260 5
        Set Size to 13 88
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
        Set Enabled_State to TRUE
    End_Object    // TextBoxSub1022

    Object frmCount is a FormSub

        //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        //AB-StoreTopEnd

        Set Size to 13 31
        Set Location to 260 114
        Set TextColor to clRed
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Shadow_state to true
        //AB-StoreEnd

    End_Object    // frmCount

    Object ButtonSub8 is a ButtonSub
        Set Label to "ÑåÄêçÜ ÉàÄÉàâÄëàÄë"
        Set Size to 12 169
        Set Location to 262 343
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            date enarxhdate lhxhdate ddate datecreated currdate deopenarxh
            Integer iInt iCount ierr imsg irecnum icheck ilast rval ilocked istatero irec
            integer ipanokato iupdate ifrom iactive
            string  scnrecr ssxolia msgstr suserid scodegl sitem sclient squal oaadeop
            string  ssign sxp saxia sflaggl smodule skatish selxr saadeop
            number nunitprice ndisc nprice ntotal neleiph nqty nxrm3 npagiaxrm3 naxia
            number npagiaxrprice nanopagia nsthsimo neleipes nposo npososto ndiscposo
        
            move 0 to ierr
            get value of (date_eos(self)) to ddate
            get pienergo to iactive
            if (ddate='') begin
                send info_box 'Ü£/§Âò ¢„•û™ É.Ñ.é.è ¨ß¶Æ®ú‡´†°„ '
                procedure_return
            end
            get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ ò¢¢òö„ °ò´·©´ò©û™ É.Ñ.é.è ??" to imsg
            If (imsg =MBR_yes) begin
                indicate err false
                Set piTxtID to (Wait(Self))
                Set Button_State    of (piTxtID(Self))  to False
                Set BarVisibleState of (piTxtID(Self))  to '' False
                Send Popup                              to (piTxtID(Self))
                Get Select_Count of (dblistsub1(Self)) to iInt
                If (iInt>0) Begin
                    move 0 to ifrom
                    For iCount from 0 to (iInt-1)
                      begin_transaction
                        Get array_value of (Selected_Items(dblistsub1(self))) Item iCount to iRecnum
                        move '' to msgstr
                        Send Find_By_Recnum to btnordh_DD2 btnordh.File_Number irecnum
                        if (found=1) begin
                            if (iactive=0) begin
                                set field_changed_value of btnordh_dd2 field btnordh.deop_active to 1
                            end
                            else begin
                                set field_changed_value of btnordh_dd2 field btnordh.deop_active to 0
                                set field_changed_value of btnordh_dd2 field btnordh.locked to 1
                            end
                            send request_save to btnordh_dd2
                            get field_current_value of btnordh_dd2 field btnordh.aa_deop to saadeop
                            send rebuild_constraints to btnordd_dd2
                            send find to btnordd_dd2 first_record 1
                            while (found=1)
                                get field_current_value of btnordd_dd2 field btnordd.recnum  to irec
                                if (iactive=0) set field_changed_value of btnordd_dd2 field btnordd.vactive to 1
                                else set field_changed_value of btnordd_dd2 field btnordd.vactive to 0
                                send request_save to btnordd_dd2
                                Send UpdateWait to (piTxtID(Self))  ('Ä¢¢òö„ °ò´·©´ò©û™ É.Ñ.é.è '+(string (saadeop)))
                                send clear to btnordd_dd2
                                move irec to btnordd.recnum
                                Send Find_By_Recnum to btnordd_DD2 btnordd.File_Number btnordd.Recnum
                                send find to  btnordd_dd2 next_record 1
                            loop
                            [err] move 1 to ierr
                            if (ierr=1)  begin
                                indicate err false
                                move 1 to ierr
                                move 'èò®¶¨©†·©´û°ú ë≠·¢£ò ©´„§ ò¢¢òö„ °ò´·©´ò©û™ É.Ñ.é.è = ' TO msgstr
                                append msgstr saadeop
                                send info_box msgstr
                            end
                        end
                      end_transaction
                    Loop
                end
                else send info_box 'Éú§ ¨ß·®Æ¶¨§ úß†¢úö£‚§ò É.Ñ.é.è ö†ò ò¢¢òö„ °ò´·©´ò©û™ ' 'è¢û®¶≠¶®Âò'
                Set Value of (frmCount(self)) item 0 to 0
                Send Delete_Data to (Selected_Items(dblistsub1(self)))
                Set Label Of (Buttonsub6(Self)) To 'ãò®°·®†©£ò ¶¢‡§ ´‡§ úöö®ò≠È§'
            end
            else send info_box 'Ü õ†òõ†°ò©Âò ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û' 'è¢û®¶≠¶®Âò'
            Send constrain_the_records
            send beginning_of_data to (dblistsub1(self)) true
            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub8


    //AB-StoreStart
            
            
    Procedure Constrain_The_Records
        Integer liCount iID
        Send Rebuild_Constraints    to (btnordh_DD(Self))
        Send Delete_Data            to (Selected_Items(dblistsub1(self)))
        Send Beginning_Of_Data      to (dblistsub1(self)) True
        Get Select_Count            of (dblistsub1(self))   to liCount
        Set enabled_State           of (buttonsub8(self))   to (liCount)
        If (liCount) Set Label      of (buttonsub6(self))   to "çú£ò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
        Else         Set Label      of (buttonsub6(self))   to "ãò®°·®†©£ò ¶¢‡§ ´‡§ É.Ñ.é.è"
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V193d


//AB-StoreStart
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
//AB-StoreEnd

//AB/ End_Object    // prj
