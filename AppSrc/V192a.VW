//AB/ Project V192a:allagh pedion btnemp
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V192a:allagh pedion btnemp"
//AB/         Set ProjectFileName to "V192a.VW"

// Project Object Structure
//   V192a is a dbView
//     Syscurxr_DD is a DataDictionary
//     Btnemp_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       vsn_no is a FormSub
//       clients_code is a FormSub
//       client_name is a FormSub
//       cons_code is a FormSub
//       cons_name is a FormSub
//       FormSub1 is a FormSub
//       ptyppar_code is a FormSub
//       seira is a FormSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     Btnemp_ is a dbGridSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox
//     se_pelath is a FormSub
//     se_ergo is a FormSub
//     se_oxhma is a FormSub
//     se_antlia is a FormSub
//     ButtonSub1 is a ButtonSub
//     Textbox5 is a Textbox
//     Btnemp_Vconstructorc is a dbFormSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Btnemp_
Register_Object Btnemp_DD
Register_Object Btnemp_Vconstructorc
Register_Object ButtonSub1
Register_Object Company_Company_Name
Register_Object Container1
Register_Object client_name
Register_Object clients_code
Register_Object cons_code
Register_Object cons_name
Register_Object dbGroupSub1
Register_Object FormSub1
Register_Object ptyppar_code
Register_Object Syscurxr_DD
Register_Object se_antlia
Register_Object se_ergo
Register_Object se_oxhma
Register_Object se_pelath
Register_Object seira
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object V192a
Register_Object vsn_no
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use sl100.sl
    use sl041.sl
    use sl053.sl
    use sl054.sl
    use sl22s.sl
    open iteml
    use itemtehn.sl
    Open Gmove
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use Form.Sub
    Use dbGroup.Sub
    Use dbForm.Sub
    Use dbGrid.Sub
    Use Button.Sub

    Use SYSCURXR.DD
    Use BTNEMP.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V192a FOR V192a

    Object V192a is a dbView

        //AB-StoreTopStart
        property string pspar    public ''
        property string pscn     public ''
        property string psclient public ''
        Property String psModule Public ''
        property integer pino    public 0
        property string psitem   public ''
        property string psseries public ''
        //AB-StoreTopEnd

        Set Label to "í®¶ß¶ß¶Âû©û ú°°®ú£È§ ßò®ò©´ò´†°È§ òßÊ Betolink "
        Set Size to 294 519
        Set Location to 1 6

        //AB-DDOStart

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Btnemp_DD is a Btnemp_DataDictionary

            //AB-StoreStart
            Begin_Constraints
                set ordering to 13
                constrain btnemp.vcompany   eq syscurxr.company_code
                constrain btnemp.vsiteemf   eq syscurxr.branch_site
                constrain btnemp.vvoucher   eq (pspar(self))
                constrain btnemp.vseries    eq (psseries(self))
                constrain btnemp.vsn        eq  (pino(self))
            End_Constraints
            
            Procedure New_Current_Record  Integer iOldRec  Integer iNewRec
                Forward Send New_Current_Record  iOldRec iNewRec
                // Insert Code Here
                set psitem   to btnemp.vprodcode
            End_Procedure   // New_Current_Record
            
            Function Validate_Save Returns Integer
                integer rval
                string sitem solditem
                Forward Get Validate_Save to rVal
                If (Not(rval)) begin
                    get psitem to solditem
                    move btnemp.vprodcode to sitem
                    if (sitem<>solditem) begin
                        clear iteml
                        move sitem to iteml.item_code
                        find eq iteml by index.5
                        if (not(found)) error 3666 'í¶ §‚¶ úÂõ¶™ õú§ ô®‚üû°ú ©´¶ ò®ÆúÂ¶ ú†õÈ§'
                        move 0 to btnemp.vorderprice
                    end
                end
                Function_Return rVal
            End_Procedure // Validate_Save
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Btnemp_DD

        Set Main_DD to (Btnemp_DD(self))
        Set Server to (Btnemp_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 55 507
            Set Location to 28 5
            Object TextBoxSub4 is a TextBoxSub
                Set Label to "ëú†®·- Ä®†ü. èò®ò©´ò´."
                Set Location to 6 5
                Set Size to 10 83
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "â‡õ.èú¢·´û"
                Set Location to 20 5
                Set Size to 10 45
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "â‡õ.Ñ®ö¶¨"
                Set Location to 34 5
                Set Size to 10 45
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub6

            Object vsn_no is a FormSub
                Set Size to 13 61
                Set Location to 4 117
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                
                
                
                
                //AB-StoreEnd

            End_Object    // vsn_no

            Object clients_code is a FormSub
                Set Size to 13 87
                Set Location to 18 91
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                procedure onchange
                    string sclient sname
                    get value of (clients_code(self)) item 0 to sclient
                    Move (fsclient(Self,sclient)) to sname
                    set value of (client_name(self)) to sname
                end_procedure
                
                Set Prompt_Object to (sl100(Current_object))
                Procedure Prompt_Callback integer hPrompt
                    Local String lsValue
                    set Export_Column of hPrompt to 0
                    Set Initial_Column of hPrompt to 0
                end_procedure
                
                Procedure Prompt
                    Set psModule Of (sl100(Self)) to (psModule(v192a(Self)))
                    Forward Send Prompt
                End_Procedure
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // clients_code

            Object client_name is a FormSub
                Set Size to 13 301
                Set Location to 20 188
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // client_name

            Object cons_code is a FormSub
                Set Size to 13 87
                Set Location to 34 91
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                procedure onchange
                    string scons sname
                    get value of (cons_code(self)) item 0 to scons
                    Move (fsCNDescr(Self,scons)) to sname
                    set value of (cons_name(self)) to sname
                end_procedure
                Set Prompt_Object to (sl041(Current_object))
                Procedure Prompt_Callback integer hPrompt
                    set Export_Column of hPrompt to 0
                    Set Initial_Column of hPrompt to 0
                end_procedure
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // cons_code

            Object cons_name is a FormSub
                Set Size to 13 301
                Set Location to 35 188
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // cons_name

            Object FormSub1 is a FormSub
                Set Size to 13 253
                Set Location to 4 236
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // FormSub1

            Object ptyppar_code is a FormSub
                Set Size to 13 45
                Set Location to 4 188
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                procedure onchange
                    string sptyppar sdescr
                    get value of (ptyppar_code(container1(self))) item 0 to sptyppar
                    Move (fsptyppar(Self,sptyppar)) to sdescr
                    set value of (formsub1(container1(self))) to sdescr
                end_procedure
                
                //AB-StoreEnd

            End_Object    // ptyppar_code

            Object seira is a FormSub
                Set Size to 12 23
                Set Location to 4 91
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // seira


            //AB-StoreStart
            
            
            
            //AB-StoreEnd

        End_Object    // Container1

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 510
            Set Location to -1 3
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 118
                Set Location to 9 54
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 145
                Set Location to 9 227
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub

                //AB-StoreTopStart
                
                //AB-StoreTopEnd

                Entry_Item Syscurxr.Year_descr
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 76
                Set Location to 9 423
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
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 177
                Set Size to 10 39
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 376
                Set Size to 10 34
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGroupSub1

        Object Btnemp_ is a dbGridSub
            Set Main_File to Btnemp.File_Number
            Set Ordering to 13
            Set Size to 122 507
            Set Location to 87 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Btnemp.Vsiteemf
                Entry_Item Btnemp.Vdate
                Entry_Item Btnemp.Vtime
                Entry_Item Btnemp.Vqty
                Entry_Item Btnemp.Vprodcode
                Entry_Item (fsitem(self,btnemp.vprodcode))
                Entry_Item Btnemp.Vorderprice
                Entry_Item Btnemp.Vpumbid
                Entry_Item Btnemp.Vcarcode
                Entry_Item Btnemp.Offer_id
                Entry_Item Btnemp.Nopagio
                Entry_Item Btnemp.Vzone
                Entry_Item Btnemp.Wapomast
            End_Row

            Set Form_Width    item 0 to 34
            Set Header_Label  item 0 to "í¶£‚ò™"
            
            Set Form_Width    item 1 to 43
            Set Header_Label  item 1 to "Ü£/§Âò"
            
            Set Form_Width    item 2 to 29
            Set Header_Label  item 2 to "ó®ò"
            
            Set Form_Width    item 3 to 33
            Set Header_Label  item 3 to "è¶©Ê´"
            
            Set Form_Width    item 4 to 50
            Set Header_Label  item 4 to "ÑÂõ¶™"
            
            Set Form_Width    item 5 to 60
            Set Header_Label  item 5 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 6 to 50
            Set Header_Label  item 6 to "í†£„ É.Ñ.é.è"
            
            Set Form_Width    item 7 to 35
            Set Header_Label  item 7 to "Ä§´¢Âò"
            
            Set Form_Width    item 8 to 31
            Set Header_Label  item 8 to "éÆû£ò"
            
            Set Form_Width    item 9 to 62
            Set Header_Label  item 9 to "É.Ñ.é.è"
            
            Set Form_Width    item 10 to 21
            Set Header_Label  item 10 to "é è"
            Set Column_Checkbox_State  item 10 to True
            
            Set Form_Width    item 11 to 28
            Set Header_Label  item 11 to "ÖÈ§û"
            
            Set Form_Width    item 12 to 27
            Set Header_Label  item 12 to "Äßoü."
            

            //AB-StoreStart
            set no_create_state to true
            Set Points Item 6 to 2
            Set Numeric_Mask Item 6 to 14 2 ' ,*'
            set column_prompt_object item 4 to (sl22s(self))
            Set Points Item 3 to 2
            Set Numeric_Mask Item 3 to 14 2 ' ,*'
            
            //AB-StoreEnd

        End_Object    // Btnemp_

        Object Textbox1 is a Textbox
            Set Label to "Ä¢¢òö„ ©ú èú¢·´û"
            Set Location to 218 5
            Set Size to 10 62
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "Ä¢¢òö„ ©ú Ñ®ö¶"
            Set Location to 234 5
            Set Size to 10 56
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox2

        Object Textbox3 is a Textbox
            Set Label to "Ä¢¢òö„ ©ú éÆû£ò"
            Set Location to 247 5
            Set Size to 12 61
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox3

        Object Textbox4 is a Textbox
            Set Label to "Ä¢¢òö„ ©ú Ä§´¢Âò"
            Set Location to 263 5
            Set Size to 10 67
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox4

        Object se_pelath is a FormSub
            Set Size to 13 72
            Set Location to 217 74
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl100(Current_object))
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(v192a(Self)))
                Forward Send Prompt
            End_Procedure
            
            procedure key
            end_procedure
            
            
            //AB-StoreEnd

        End_Object    // se_pelath

        Object se_ergo is a FormSub
            Set Size to 13 72
            Set Location to 233 74
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl041(Current_object))
            procedure key
            end_procedure
            
            procedure prompt
                string scode
                get value of (se_pelath(self)) to scode
                if (scode<>'') set fragmaclient_id of (sl041(self)) to scode
                forward send prompt
                set fragmaclient_id of (sl041(self)) to ''
            end_procedure
            
            //AB-StoreEnd

        End_Object    // se_ergo

        Object se_oxhma is a FormSub
            Set Size to 13 72
            Set Location to 249 74
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl054(Current_object))
            
            
            
            //AB-StoreEnd

        End_Object    // se_oxhma

        Object se_antlia is a FormSub
            Set Size to 13 72
            Set Location to 264 74
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (sl053(Current_object))
            
            
            
            //AB-StoreEnd

        End_Object    // se_antlia

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "docum2.bmp"
            Set Size to 23 25
            Set Location to 217 154
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set TooltipValue to "Ñ§û£‚®‡©û ßò®ò©´ò´†°¶Á £ú ò¢¢òö‚™"
            
            Procedure OnClick
                string  seclient seoxhma secn seantlia sclient soxhma scn santlia
                integer irecnum retval
                get yesno_box "á‚¢ú´ú ß®òö£ò´†°· §ò ß®¶Æ‡®Â©‡ ©´û§ ò¢¢òö„ ©´¶†ÆúÂ‡§ ßò®ò©´ò´†°¶Á ??" to retval
            
                If (RetVal =MBR_yes) begin
                    get value of se_pelath   to seclient
                    get value of se_ergo     to secn
                    get value of se_oxhma    to seoxhma
                    get value of se_antlia   to seantlia
                    send rebuild_constraints to btnemp_dd
                    send find to btnemp_dd   first_record 13
                    Set Dynamic_Update_State Of btnemp_ to False
                    while (found=1)
                        get field_current_value of btnemp_dd field btnemp.recnum to irecnum
                        get field_current_value of btnemp_dd field btnemp.vclientcode to sclient
                        get field_current_value of btnemp_dd field btnemp.vconscode  to scn
                        get field_current_value of btnemp_dd field btnemp.vcarcode to soxhma
                        get field_current_value of btnemp_dd field btnemp.vpumbid to santlia
                        if (seclient<>'') begin
                              set field_changed_value of btnemp_dd field btnemp.vclientcode to seclient
                              set field_changed_value of btnemp_dd field btnemp.vorderprice to 0
                        end
                        if (secn<>'') begin
                              set field_changed_value of btnemp_dd field btnemp.vconscode   to secn
                              set field_changed_value of btnemp_dd field btnemp.vorderprice to 0
                        end
                        if (seoxhma<>'')  begin
                             if (seoxhma='.')   set field_changed_value of btnemp_dd field btnemp.vcarcode    to ''
                             else               set field_changed_value of btnemp_dd field btnemp.vcarcode    to seoxhma
                             set field_changed_value of btnemp_dd field btnemp.vorderprice to 0
                        end
                        if (seantlia<>'') begin
                             if (seantlia='.') set field_changed_value of btnemp_dd field btnemp.vpumbid     to ''
                             else              set field_changed_value of btnemp_dd field btnemp.vpumbid     to seantlia
                             set field_changed_value of btnemp_dd field btnemp.vorderprice to 0
                        end
            
                        send request_save to btnemp_dd
                        send clear to btnemp_dd
                        move irecnum to btnemp.recnum
                        send find to btnemp_dd eq 0
                        send find to btnemp_dd next_record 13
                    loop
                    if (secn<>'') set value of (cons_code(container1(self)))      to secn
                    if (seclient<>'') set value of (clients_code(container1(self)))   to seclient
                    send Beginning_OF_DATA to (btnemp_(self)) true
                    Set Dynamic_Update_State Of btnemp_ to true
              end
              else send info_box 'Ü õ†òõ†°ò©Âò ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û'
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object Textbox5 is a Textbox
            Set Label to "(Å·ù¶§´ò™ ´ú¢úÂò (.)  ©´¶ ¶Æû£ò/ò§´¢Âò °ò† ßò´È§´ò™ ´¶ Button °òüò®Âùú† ´ò ßúõÂò ´¶¨ ßò®ò©´ò´†°¶Á "
            Set TextColor to clNavy
            Set Location to 254 149
            Set Size to 16 235
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox5

        Object Btnemp_Vconstructorc is a dbFormSub
            Entry_Item Btnemp.Vconstructorc
            Set Label to "íúÆ§.è®¶õ†òö®ò≠„"
            Set Size to 13 95
            Set Location to 215 416
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (itemtehn(Current_object))
            procedure key
            end_procedure
            //AB-StoreEnd

        End_Object    // Btnemp_Vconstructorc


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String  sModule sIsClient sIsPromhtheyths
            Integer rVal iCurRec
            set value of se_pelath  to ''
            set value of se_ergo    to ''
            set value of se_oxhma   to ''
            set value of se_antlia  to ''
            set value of (vsn_no(container1(self)))         to (pino(self))
            set value of (ptyppar_code(container1(self)))   to (pspar(self))
            set value of (cons_code(container1(self)))      to (pscn(self))
            set value of (clients_code(container1(self)))   to (psclient(self))
            set value of (seira(container1(self)))          to (psseries(self))
            if (pINO(self)<>0) begin
               send clear to btnemp_dd
               send rebuild_constraints to btnemp_dd
               send BEGINNING_OF_DATA to (btnemp_(self)) true
            end
            Forward Get Msg_Activate_View to rVal
            Get psMenuModule  Of Main_Menu  to sModule
            Set psModule to sModule
            Procedure_Return rVal
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // V192a


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
