//AB/ Project v193a:deop/pelath
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v193a:deop/pelath"
//AB/         Set ProjectFileName to "v193a.VW"

// Project Object Structure
//   v193a is a dbViewSubS
//     Btnordd_DD is a DataDictionary
//     The_Table is a dbGrid
//     Container1 is a dbContainer3d
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//       clients_code is a FormSub
//       client_name is a FormSub
//       cons_code is a FormSub
//       cons_name is a FormSub
//       RadioGroupSub1 is a RadioGroupSub
//         Radio1 is a RadioSub
//         Radio2 is a RadioSub
//         Radio3 is a RadioSub

// Register all objects
Register_Object Btnordd_DD
Register_Object Container1
Register_Object client_name
Register_Object clients_code
Register_Object cons_code
Register_Object cons_name
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object RadioGroupSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object The_Table
Register_Object v193a


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use Form.Sub
    Use Rgroup.Sub
    Use Radio.Sub

    Use BTNORDD.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v193a FOR v193a

    Object v193a is a dbViewSubS

        //AB-StoreTopStart
        PROPERTY string PSCLIENT      public ''
        property string pscn   public ''
        property integer piepil public 0
        function fsqual string code returns string
             string squal
             clear iteml
             move code to iteml.item_code
             find eq iteml by index.5
             move iteml.item_qual to squal
             function_return squal
        end_Function
        
        Procedure Constrain_The_Records
            string sorder scn sclient
            Get Value of (clients_code(container1(current_object)))     to sclient
            Get Value of (cons_code(container1(current_object)))        to scn
            set pscn                       to scn
            set psclient                   to sclient
            Send Rebuild_Constraints       to btnordD_dd
            send beginning_of_data         to the_table true
        End_Procedure
        
        //AB-StoreTopEnd

        Set Label to "Ä§·¢¨©û ú†õÈ§  èú¢·´û-Ñ®ö¶¨  É.Ñ.é.è"
        Set Size to 282 520
        Set Location to 6 6

        //AB-DDOStart

        Object Btnordd_DD is a Btnordd_DataDictionary

            //AB-StoreStart
            Begin_Constraints
                 string  sclient scn
                 get psclient        to sclient
                 get pscn            to scn
                 if (psclient(self) <> '');
                    constrain btnordd.vclient_id  eq sclient
                 if (pscn(self) <> '');
                    constrain btnordD.vcn_code    eq scn
                 if (piepil(self)=1) constrain btnordd.vactive eq 0
                 else if (piepil(self)=2) constrain btnordd.vactive ne 0
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Btnordd_DD

        Set Main_DD to (Btnordd_DD(self))
        Set Server to (Btnordd_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGrid
            Set Main_File to Btnordd.File_Number
            Set Size to 202 506
            Set Location to 62 3
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Btnordd.Recnum
                Entry_Item Btnordd.Vorderbt
                Entry_Item Btnordd.Vitem
                Entry_Item (fsqual(self,btnordd.vitem))
                Entry_Item Btnordd.Vqty
                Entry_Item Btnordd.Vprice
                Entry_Item Btnordd.Vkatish
                Entry_Item Btnordd.Vxrm3
                Entry_Item Btnordd.Vpagiaxrm3
                Entry_Item Btnordd.Vpagiaxrprice
                Entry_Item Btnordd.Arxh_date
                Entry_Item Btnordd.Deop_date
            End_Row

            Set Form_Width    item 0 to 0
            Set Header_Label  item 0 to ""
            
            Set Form_Width    item 1 to 64
            Set Header_Label  item 1 to "â‡õ. É.Ñ.é.è"
            
            Set Form_Width    item 2 to 54
            Set Header_Label  item 2 to "â‡õ.ÑÂõ¶¨™"
            
            Set Form_Width    item 3 to 40
            Set Header_Label  item 3 to "è¶†Ê´"
            
            Set Form_Width    item 4 to 40
            Set Header_Label  item 4 to "è¶©Ê´"
            
            Set Form_Width    item 5 to 45
            Set Header_Label  item 5 to "Ä•Âò"
            
            Set Form_Width    item 6 to 32
            Set Header_Label  item 6 to "â·ü†©û"
            
            Set Form_Width    item 7 to 32
            Set Header_Label  item 7 to "ï®/m3"
            Set Column_Checkbox_State  item 7 to True
            
            Set Form_Width    item 8 to 48
            Set Header_Label  item 8 to "èòö.ï®/m3"
            
            Set Form_Width    item 9 to 54
            Set Header_Label  item 9 to "èòö.í†£„ ï®."
            
            Set Form_Width    item 10 to 46
            Set Header_Label  item 10 to "Ü£.Ñ§ò®•"
            
            Set Form_Width    item 11 to 46
            Set Header_Label  item 11 to "Ü£.ä„•û™"
            

            //AB-StoreStart
            set read_only_state to true
            Set Column_Option Item 0 to NoEnter True
            Set Column_Option Item 5 to NoEnter True
            set currentrowcolor to 11468799
            set currentcellcolor to 11468799
            
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
                Set Points Item 4 to 2
                Set Points Item 5 to iDecimals
             //   Set Points Item 6 to iDecimals
                Set Points Item 9 to iDecimals
                Set Points Item 8 to iDecimals
                Set Numeric_Mask  Item 5 to 14 iDecimals ' ,*'
             //   Set Numeric_Mask  Item 6 to 14 iDecimals ' ,*'
                Set Numeric_Mask  Item 9 to 14 iDecimals ' ,*'
                Set Numeric_Mask  Item 8 to 14 iDecimals ' ,*'
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 57 507
            Set Location to 2 1
            Object TextBoxSub2 is a TextBoxSub
                Set Label to "â‡õ.èú¢·´û"
                Set Location to 3 5
                Set Size to 10 45
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "â‡õ.Ñ®ö¶¨"
                Set Location to 17 5
                Set Size to 10 45
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub3

            Object clients_code is a FormSub
                Set Size to 13 128
                Set Location to 2 63
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Form_TypeFace Item 0 to "MS Sans Serif"

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
                    Set psModule Of (sl100(Self)) to '01'
                    Forward Send Prompt
                End_Procedure
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // clients_code

            Object client_name is a FormSub
                Set Size to 13 305
                Set Location to 2 197
                Set Label_Col_Offset to 2
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // client_name

            Object cons_code is a FormSub
                Set Size to 13 128
                Set Location to 17 63
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                procedure onchange
                    string scons sdescr
                    get value of (cons_code(self)) item 0 to scons
                    move (fsCNDescr(Self,scons)) to sdescr
                    set value of (cons_name(self)) to sdescr
                end_procedure
                
                Set Prompt_Object to (sl041(Current_object))
                Procedure Prompt
                    string scode
                    get value of (clients_code(container1(self))) to scode
                    if (scode<>'') set fragmaclient_id of (sl041(self)) to scode
                    forward send prompt
                    set fragmaclient_id of (sl041(self)) to ''
                end_procedure
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // cons_code

            Object cons_name is a FormSub
                Set Size to 13 305
                Set Location to 18 197
                Set Label_Col_Offset to 2
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // cons_name

            Object RadioGroupSub1 is a RadioGroupSub
                Set Size to 20 207
                Set Location to 32 63
                Object Radio1 is a RadioSub
                    Set Label to "Ó¢ò ´ò úÂõû"
                    Set Size to 10 57
                    Set Location to 7 3
                End_Object    // Radio1

                Object Radio2 is a RadioSub
                    Set Label to "Ñ§ú®ö·"
                    Set Size to 10 49
                    Set Location to 7 70
                End_Object    // Radio2

                Object Radio3 is a RadioSub
                    Set Label to "Ä§ú§ú®ö·"
                    Set Size to 10 55
                    Set Location to 7 135
                End_Object    // Radio3


                //AB-StoreStart
                                        
                Procedure Notify_Select_State integer iToItem integer iFromItem
                     IF itoitem eq 0 set piepil to 0
                     else if itoitem eq 1 set piepil to 1
                     else if itoitem eq 2 set piepil to 2
                     send Constrain_The_Records
                End_Procedure
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // RadioGroupSub1

        End_Object    // Container1


        //AB-StoreStart
                
        Procedure Activate_View Returns Integer
            String  sModule sIsClient sIsPromhtheyths
            Integer rVal iCurRec
            if (pscn(self)<>'') set value of (cons_code(container1(self))) to (pscn(self))
            if (psclient(self)<>'') set value of (clients_code(container1(self))) to (psclient(self))
            Forward Get Msg_Activate_View to rVal
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // v193a

//AB/     End_Object    // prj
