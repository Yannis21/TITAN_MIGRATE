//AB/ Project V83:pagia
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V83:pagia"
//AB/     Set ProjectFileName to "V83.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V83 is a dbViewSubS
//     pagia_DD2 is a pagia_DataDictionary
//     pagkin_DD2 is a pagkin_DataDictionary
//     pagmoves_DD2 is a pagmoves_DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Pagkat_DD is a DataDictionary
//     Pagkin_DD is a DataDictionary
//     Pagia_DD is a DataDictionary
//     Pagmoves_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     Pagia_Pagia_Code is a dbFormSub
//     Pagia_Pagia_Codea is a dbFormSub
//     Pagia_Pagia_Descr is a dbFormSub
//     Pagia_Pagkat_Code is a dbFormSub
//     Pagia_Client_Id is a dbFormSub
//     Pagia_Pagia_Bydate is a dbFormSub
//     Pagia_Pagia_Parast is a dbFormSub
//     Pagia_Pagia_Axia is a dbFormSub
//     Pagia_Pagia_Qty is a dbFormSub
//     Pagia_Pagia_Ist is a dbComboFormSub
//     Pagia_Pagia_Pososto is a dbFormSub
//     dbComboFormSub1 is a dbComboFormSub
//     Pagia_Pagia_Topos is a dbFormSub
//     Pagia_Pagia_Modifdate is a dbFormSub
//     Pagia_Codegl is a dbFormSub
//     Pagia_Pagia_Deaddate is a dbFormSub
//     Pagia_Pagia_Lastdate is a dbFormSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     Pagkat_Pagkat_Descr is a dbFormSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox
//     Textbox5 is a Textbox
//     Textbox6 is a Textbox
//     Textbox7 is a Textbox
//     Textbox8 is a Textbox
//     Textbox9 is a Textbox
//     LineControlSub1 is a LineControlSub
//     TextBoxSub9 is a TextBoxSub
//     Pagia_Pagia_Ypol is a dbFormSub
//     ButtonSub1 is a ButtonSub
//     dbGridSub1 is a dbGridSub
//     TextBoxSub10 is a TextBoxSub
//     frmIsClosed is a FormSub
//     TextBoxSub11 is a TextBoxSub
//     Pagia_Pagia_Lposost is a dbFormSub
//     TextBoxSub12 is a TextBoxSub
//     FormSub1 is a FormSub
//     TextBoxSub13 is a TextBoxSub
//     FormSub2 is a FormSub
//     clients_client_name is a FormSub
//     Textbox10 is a Textbox

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub1
Register_Object Company_Company_Name
Register_Object clients_client_name
Register_Object dbComboFormSub1
Register_Object dbGridSub1
Register_Object dbGroupSub1
Register_Object FormSub1
Register_Object FormSub2
Register_Object frmIsClosed
Register_Object LineControlSub1
Register_Object Pagia_Client_Id
Register_Object Pagia_Codegl
Register_Object Pagia_DD
Register_Object Pagia_Pagia_Axia
Register_Object Pagia_Pagia_Bydate
Register_Object Pagia_Pagia_Code
Register_Object Pagia_Pagia_Codea
Register_Object Pagia_Pagia_Deaddate
Register_Object Pagia_Pagia_Descr
Register_Object Pagia_Pagia_Ist
Register_Object Pagia_Pagia_Lastdate
Register_Object Pagia_Pagia_Lposost
Register_Object Pagia_Pagia_Modifdate
Register_Object Pagia_Pagia_Parast
Register_Object Pagia_Pagia_Pososto
Register_Object Pagia_Pagia_Qty
Register_Object Pagia_Pagia_Topos
Register_Object Pagia_Pagia_Ypol
Register_Object Pagia_Pagkat_Code
Register_Object Pagkat_DD
Register_Object Pagkat_Pagkat_Descr
Register_Object Pagkin_DD
Register_Object Pagmoves_DD
Register_Object pagia_DD2
Register_Object pagkin_DD2
Register_Object pagmoves_DD2
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox10
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object Textbox6
Register_Object Textbox7
Register_Object Textbox8
Register_Object Textbox9
Register_Object V83
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl100.sl
use sl81.sl
open clients
use r83_1.rv

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbCmbfrm.Sub
Use Line.Sub
Use Button.Sub
Use dbGrid.Sub
Use Form.Sub

Use SYSCURXR.DD
Use PAGKAT.DD
Use PAGKIN.DD
Use PAGIA.DD
Use PAGMOVES.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_V83 FOR ;
;
Object V83 is a dbViewSubS

    //AB-StoreTopStart
    Object pagia_DD2 is a pagia_DataDictionary
    End_Object    // pagmoves_DD
    
    Object pagkin_DD2 is a pagkin_DataDictionary
    End_Object    // pagmoves_DD
    
    Object pagmoves_DD2 is a pagmoves_DataDictionary
        Set Server to (Pagia_DD2(Self))
        Set Server to (Pagkin_DD2(Self))
        Property String psRecr Public ''
        Procedure OnConstrain
            String sRecr
            Get psRecr to sRecr
            Constrain Pagmoves.Pagia_Recr Eq sRecr
        End_procedure
    
    End_Object    // pagmoves_DD
    property integer picreate public 0
    
    //AB-StoreTopEnd

    Set Label to "ãû´®È¶ èòöÂ‡§"
    Set Size to 290 503
    Set Location to 2 5

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Pagkat_DD is a Pagkat_DataDictionary
    End_Object    // Pagkat_DD

    Object Pagkin_DD is a Pagkin_DataDictionary
    End_Object    // Pagkin_DD

    Object Pagia_DD is a Pagia_DataDictionary
        Set DDO_Server to (Pagkat_DD(self))

        //AB-StoreStart
        set allow_foreign_new_save_state to  true
        
        
        Function Validate_Save  Returns Integer
            Local Integer iReturnVal
            string msgstr
            number Axia
            Forward Get Validate_Save  To iReturnVal
            If (Not(iReturnVal)) Begin
               if (pagia.pagia_axia*pagia.pagia_qty < (round(pagia.pagia_synol))) begin
                  move 'Äß¶©ô‚©†£¶ ë¨§¶¢†°Ê è¶©Ê > Ä•Âò èòöÂ¶¨! è¶©Ê KÂ§û©û™ = ' to msgstr
                  move pagmoves.pagmoves_axia to axia
                  append msgstr axia
                  send info_box msgstr 'ë≠·¢£ò'
                  move 1 to ireturnval
               end
            end
        Function_Return iReturnVal
        End_Function   // Validate_Save
        
        Procedure Creating
                Forward Send Creating
                integer idecimals  INO  irecnum
                string sno
                if ((pagia.pagia_code <> '') and (pagia.pagia_codea <> '')) begin
                    move (append('',((trim(pagia.pagia_code))+'.'+;
                                    (Trim(String(pagia.pagia_codea)))))) to pagia.pagia_code
        
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                    (Trim(String(pagia.pagia_code)))))) to pagia.pagia_Recr
        
                    if (pagia.pagia_pososto = 0);
                                    move pagkat.pagkat_pososto to pagia.pagia_pososto
                end
                else begin
                   move (pagkat.pagia_code + 1) to pagkat.pagia_code
                   saverecord pagkat
                   move 4 to idecimals
                   move pagkat.pagia_code to ino
                   get fsgCode_n_Zeroes ino idecimals to sno
                   move (append('',((trim(pagkat.pagkat_code))+'.'+;
                                   (Trim(String(sno)))))) to pagia.pagia_code
                   if (pagia.pagia_codea <> '') begin
                   move (append('',((trim(pagia.pagia_code))+'.'+;
                                   (Trim(String(pagia.pagia_codea)))))) to pagia.pagia_code
                   end
                   Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                     (Trim(String(pagia.pagia_code)))))) to pagia.pagia_Recr
                   if (pagia.pagia_pososto = 0);
                                     move pagkat.pagkat_pososto to pagia.pagia_pososto
                end
        
        
        
        
        
                get fidekadika_nomismatos SysCurXr.C_Code0  to idecimals
                clear pagmoves
                move (sysrecg.pagmoves_rec0+1) to sysrecg.pagmoves_rec0
                saverecord sysrecg
                move sysrecg.pagmoves_rec0 to pagmoves.pagmoves_rec0
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                  (Trim(String(pagmoves.pagmoves_rec0)))))) to pagmoves.pagmoves_Recr
                move pagmoves.pagmoves_date  to pagia.pagia_lastdate
                Move SysCurXR.Company_Code      to pagmoves.Company_Code
                Move SysCurXR.Branch_Code       to pagmoves.Branch_Code
                Move SysCurXR.Year_Year         to pagmoves.Year_Year
                move pagia.pagia_code           to pagmoves.pagia_code
                move pagia.pagia_codea          to pagmoves.pagia_codea
                move pagia.pagia_bydate         to pagmoves.pagmoves_date
                move '101' to pagmoves.pagkin_code
                move pagia.pagia_parast to pagmoves.pagmoves_parast
                move pagia.pagia_recr   to pagmoves.pagia_recr
                if (pagia.pagia_qty = 0) move 1 to pagia.pagia_qty
                move pagia.pagia_qty    to pagmoves.pagmoves_qty
                move (round_number((pagia.pagia_axia*pagia.pagia_qty),idecimals)) to pagmoves.pagmoves_axia
                saveRECORD pagmoves
                set picreate to 1
        
        end_procedure
        
        procedure request_save
            forward send request_save
            if (picreate(self)=1) begin
                set picreate to 0
                send beginning_of_data to  (dbgridsub1(self)) true
            end
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pagia_DD

    Object Pagmoves_DD is a Pagmoves_DataDictionary
        Set DDO_Server to (Pagia_DD(self))
        Set DDO_Server to (Pagkin_DD(self))
        Set Constrain_File to Pagia.File_Number

        //AB-StoreStart
        Function Validate_Save  Returns Integer
            Local Integer iReturnVal
            Forward Get Validate_Save  To iReturnVal
            If (Not(iReturnVal)) Begin
               if (pagia.pagia_qty < pagmoves.pagmoves_qty) begin
                  send info_box 'è¶©Ê´û´ò âÂ§û©û™ > è¶©Ê´û´ò èòöÂ¶¨ !!' 'ë≠·¢£ò'
                  move 1 to ireturnval
               end
               if (pagkin.pagkin_code <> '103') begin
                  send info_box 'Éú§ £ß¶®úÂ´ú §ò ò¢¢·•ú´ú û °ò´òÆ‡®„©ú´ú °†§„©ú†™ ú°´Ê™ ´û™ Äß¶ö®ò≠„™!!' 'ë≠·¢£ò'
                  move 1 to ireturnval
               end
               if (pagmoves.se_logik = '1') begin
                  send info_box 'Éú§ ´®¶ß¶ß¶†„´ú û °Â§û©û !! Ñö†§ú ¢¶ö†©´†°¶ß¶Âû©û °Â§û©û™ !!' 'ë≠·¢£ò'
                  move 1 to ireturnval
               end
           end
        Function_Return iReturnVal
        End_Function   // Validate_Save
        
        
        Procedure Request_Delete
            String  scompany_code
            String  sbranch_code
            Integer iyear_year  iErr
            String  spagia_code
            String  spagia_codea sPagiaRecr
            Date    dpagmoves_date
            string  skin
            Number nAxia
        
            Indicate Err False
        
            if (pagmoves.pagmoves_date < pagia.pagia_lastdate) begin
               send info_box 'É‚§ £ß¶®úÂ´ú §ò õ†òö®·Øú´ú °Â§û©û èòöÂ‡§ £ú Ü£/§Âò < ´ú¢ú¨´.ÄßÊ©ôú©û™' 'ë≠·¢£ò'
               Procedure_Return
            End
            if (pagmoves.se_logik = '1') begin
                  send info_box 'Éú§ õ†òö®·≠ú´ò† û °Â§û©û !! Ñö†§ú ¢¶ö†©´†°¶ß¶Âû©û °Â§û©û™ !!' 'ë≠·¢£ò'
                  Procedure_Return
            end
            Move pagmoves.pagia_recr      to sPagiaRecr
            Move pagmoves.company_code    to scompany_code
            Move pagmoves.branch_code     to sbranch_code
            Move pagmoves.year_year       to iyear_year
            Move pagmoves.pagia_code      to spagia_code
            Move pagmoves.pagia_codea     to spagia_codea
            Move pagmoves.pagmoves_date   to dpagmoves_date
            Move pagmoves.pagkin_code     to skin
            Move pagmoves.pagmoves_axia   to nAxia
            Forward Send Request_Delete
            Move (Err) to iErr
            If (Not(iErr)) Begin
                Clear Pagmoves
                Move scompany_code   to    pagmoves.company_code
                Move sbranch_code    to    pagmoves.branch_code
                Move iyear_year      to    pagmoves.year_year
                Move spagia_code     to    pagmoves.pagia_code
                Move spagia_codea    to    pagmoves.pagia_codea
                Move dpagmoves_date  to    pagmoves.pagmoves_date
                Move skin            to    pagmoves.pagkin_code
                Find le Pagmoves By Index.1
                If ((Found=1) and (scompany_code =  pagmoves.company_code);
                              and (sbranch_code = pagmoves.branch_code);
                              and (iyear_year = pagmoves.year_year);
                              and (spagia_code = pagmoves.pagia_code);
                              and (spagia_codea = pagmoves.pagia_codea)) begin
                    Relate pagmoves
                    Reread Pagia
                    Move pagmoves.pagmoves_date to pagia.pagia_lastdate
                    if (pagmoves.pagkin_code = '102') begin
                        move '' to pagia.pagia_modifdate
                        move '' to pagia.pagia_deaddate
                        move 0  to pagia.pagia_polposo
                    end
                    Saverecord pagia
                    unlock
                End
                Else Begin
                    Reread Pagia
                    Move '' to pagia.pagia_lastdate
                    Saverecord pagia
                    unlock
                End
                Send Request_Assign to Pagia_DD
            End
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pagmoves_DD

    Set Main_DD to (Pagia_DD(self))
    Set Server to (Pagia_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 493
        Set Location to 0 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 94
            Set Location to 8 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 8 228
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
            Set Size to 13 61
            Set Location to 7 425
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
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 173
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                
                                                                                                                
            //AB-StoreEnd

        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 367
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3

    End_Object    // dbGroupSub1

    Object Pagia_Pagia_Code is a dbFormSub
        Entry_Item Pagia.Pagia_code
        Set Size to 13 95
        Set Location to 30 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        Procedure Refresh Integer iMode
            number naxia
            integer idecimals
            get fidekadika_nomismatos SysCurXr.C_Code0  to idecimals
            Forward Send Refresh iMode
            move (round_number((Pagia.pagia_axia * pagia.pagia_qty),idecimals)) to naxia
            if (pagia.pagia_modifdate<>'') set value of (formsub1(self)) to 0
            else set value of (formsub1(self)) to ((pagia.pagia_axia*pagia.pagia_qty) - pagia.pagia_synol)
            if (naxia <= pagia.pagia_synol) begin
               Set Color Of frmIsClosed to clRed
               Set Enabled_State   Of buttonsub1 to false
            end
            Else begin
               Set Color Of frmIsClosed to clLime
               Set Enabled_State   Of buttonsub1 to true
            end
            if (pagia.pagia_polposo > 0) begin
               Set Color Of frmIsClosed to clRed
               Set Enabled_State   Of buttonsub1 to false
               set value of (formsub2(self)) to ((pagia.pagia_synol+pagia.pagia_polposo)-pagia.pagia_axia)
            end
            else set value of (formsub2(self)) to 0
        
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Code

    Object Pagia_Pagia_Codea is a dbFormSub
        Entry_Item Pagia.Pagia_codea
        Set Size to 13 31
        Set Location to 30 174
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Codea

    Object Pagia_Pagia_Descr is a dbFormSub
        Entry_Item Pagia.Pagia_descr
        Set Size to 13 280
        Set Location to 30 206
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
                                                                                
                                                                                
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Descr

    Object Pagia_Pagkat_Code is a dbFormSub
        Entry_Item Pagkat.Pagkat_code
        Set Size to 13 126
        Set Location to 44 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagkat_Code

    Object Pagia_Client_Id is a dbFormSub
        Entry_Item Pagia.Client_id
        Set Size to 13 126
        Set Location to 58 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        set prompt_object to (sl100(self))
        procedure onchange
            string sclient
            get value item 0 to sclient
            move (fsclient(self,sclient)) to sclient
            set value of (clients_client_name(self)) to sclient
        end_procedure
        
        Procedure Prompt
            Set psModule Of (sl100(self)) to '02'
            Forward Send Prompt
        End_procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pagia_Client_Id

    Object Pagia_Pagia_Bydate is a dbFormSub
        Entry_Item Pagia.Pagia_bydate
        Set Size to 13 71
        Set Location to 71 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Bydate

    Object Pagia_Pagia_Parast is a dbFormSub
        Entry_Item Pagia.Pagia_parast
        Set Size to 13 280
        Set Location to 71 207
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Parast

    Object Pagia_Pagia_Axia is a dbFormSub
        Entry_Item Pagia.Pagia_axia
        Set Size to 13 71
        Set Location to 85 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
            Set Points Item 0 to iDecimals
            Set Numeric_Mask Item 0 to 14 iDecimals " ,*"
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Axia

    Object Pagia_Pagia_Qty is a dbFormSub
        Entry_Item Pagia.Pagia_qty
        Set Size to 13 49
        Set Location to 85 207
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        set points item 0 to 1
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Qty

    Object Pagia_Pagia_Ist is a dbComboFormSub
        Entry_Item Pagia.Pagia_ist
        Set Size to 13 142
        Set Location to 84 345
        Set Label_Col_Offset to 2
    End_Object    // Pagia_Pagia_Ist

    Object Pagia_Pagia_Pososto is a dbFormSub
        Entry_Item Pagia.Pagia_pososto
        Set Size to 13 30
        Set Location to 99 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Pososto

    Object dbComboFormSub1 is a dbComboFormSub
        Entry_Item Pagia.Pagia_fpa
        Set Size to 14 50
        Set Location to 100 207
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // dbComboFormSub1

    Object Pagia_Pagia_Topos is a dbFormSub
        Entry_Item Pagia.Pagia_topos
        Set Size to 13 142
        Set Location to 99 345
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Topos

    Object Pagia_Pagia_Modifdate is a dbFormSub
        Entry_Item Pagia.Pagia_modifdate
        Set Size to 13 71
        Set Location to 113 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Modifdate

    Object Pagia_Codegl is a dbFormSub
        Entry_Item Pagia.Codegl
        Set Size to 12 50
        Set Location to 114 207
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Codegl

    Object Pagia_Pagia_Deaddate is a dbFormSub
        Entry_Item Pagia.Pagia_deaddate
        Set Size to 13 71
        Set Location to 127 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Pagia_Pagia_Deaddate

    Object Pagia_Pagia_Lastdate is a dbFormSub
        Entry_Item Pagia.Pagia_lastdate
        Set Size to 13 71
        Set Location to 141 79
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Lastdate

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "â‡õ†°Ê™ èòöÂ¶¨"
        Set TextColor to clNavy
        Set Location to 31 2
        Set Size to 10 54
        Set FontWeight to 800
    End_Object    // TextBoxSub4

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "âò´ûö¶®Âò èòöÂ¶¨"
        Set Location to 44 2
        Set Size to 10 63
    End_Object    // TextBoxSub6

    Object Pagkat_Pagkat_Descr is a dbFormSub
        Entry_Item Pagkat.Pagkat_descr
        Set Size to 13 280
        Set Location to 44 207
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Pagkat_Pagkat_Descr

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "â‡õ†°Ê™ è®¶£ûüú¨´„"
        Set Location to 58 2
        Set Size to 10 73
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Ü£/§Âò Äö¶®·™"
        Set Location to 72 2
        Set Size to 10 55
    End_Object    // TextBoxSub8

    Object Textbox1 is a Textbox
        Set Label to "èò®ò©´ò´†°Ê"
        Set Location to 73 150
        Set Size to 10 51
    End_Object    // Textbox1

    Object Textbox2 is a Textbox
        Set Label to "âòüò®„ Ä•Âò"
        Set Location to 86 2
        Set Size to 10 49
        Set FontWeight to 800
    End_Object    // Textbox2

    Object Textbox3 is a Textbox
        Set Label to "è¶©Ê´û´ò"
        Set Location to 88 151
        Set Size to 10 38
    End_Object    // Textbox3

    Object Textbox4 is a Textbox
        Set Label to "è¶©¶©´Ê ÄßÊ©ôú©û™"
        Set Location to 100 2
        Set Size to 10 70
    End_Object    // Textbox4

    Object Textbox5 is a Textbox
        Set Label to "âò´ûö¶®Âò îèÄ"
        Set Location to 102 151
        Set Size to 10 54
    End_Object    // Textbox5

    Object Textbox6 is a Textbox
        Set Label to "î¨©†°„ á‚©û"
        Set Location to 100 284
        Set Size to 10 46
        Set FontWeight to 800
    End_Object    // Textbox6

    Object Textbox7 is a Textbox
        Set Label to "Ü£/§Âò èÈ¢./âò´ò©´®."
        Set Location to 114 2
        Set Size to 10 75
    End_Object    // Textbox7

    Object Textbox8 is a Textbox
        Set Label to "Ü£/§Âò ä„•û™ Ö‡„™"
        Set Location to 128 2
        Set Size to 10 65
    End_Object    // Textbox8

    Object Textbox9 is a Textbox
        Set Label to "íú¢ú¨´.ÄßÊ©ôú©û"
        Set Location to 142 2
        Set Size to 10 63
    End_Object    // Textbox9

    Object LineControlSub1 is a LineControlSub
        Set Line_Style to lnSINGLE
        Set Size to 4 499
        Set Location to 158 1
    End_Object    // LineControlSub1

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "Äß¶©ôú©ü‚§ è¶©Ê"
        Set Location to 118 347
        Set Size to 10 63
    End_Object    // TextBoxSub9

    Object Pagia_Pagia_Ypol is a dbFormSub
        Entry_Item Pagia.Pagia_synol
        Set Size to 13 73
        Set Location to 114 414
        Set Color to clNavy
        Set TextColor to clYellow
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        set enabled_state to false
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
            Set Points Item 0 to iDecimals
            Set Numeric_Mask Item 0 to 14 iDecimals " ,*"
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Ypol

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "open1.bmp"
        Set Size to 23 26
        Set Location to 132 248

        //AB-StoreStart
                                                                                
        Set TooltipValue to "Ñß†¢¶ö„ â®†´û®Â‡§ Ç†ò Éû£†¶¨®öÂò â†§„©ú‡§ èòöÂ‡§"
        
        Procedure OnClick
            string skat scode
            get value of (pagia_pagia_code(self)) to scode
            get value of (pagia_pagkat_code(self)) to skat
            set pskat of (r83_1(self)) to skat
            set pscode of (r83_1(self)) to scode
            Send Popup to (r83_1(Self))
            send request_cancel to v83
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object dbGridSub1 is a dbGridSub
        Set Main_File to Pagmoves.File_Number
        Set Server to (Pagmoves_DD(self))
        Set Ordering to 3
        Set Size to 103 486
        Set Location to 169 3
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Pagmoves.Pagmoves_date
            Entry_Item Pagkin.Pagkin_descr
            Entry_Item Pagmoves.Pagmoves_parast
            Entry_Item Pagmoves.Pagmoves_no
            Entry_Item Pagmoves.Pagmoves_posost
            Entry_Item Pagmoves.Pagmoves_qty
            Entry_Item Pagmoves.Pagmoves_axia
        End_Row

        Set Form_Width    item 0 to 45
        Set Header_Label  item 0 to "Ü£/§Âò"
        
        Set Form_Width    item 1 to 100
        Set Header_Label  item 1 to "âÂ§û©û"
        
        Set Form_Width    item 2 to 120
        Set Header_Label  item 2 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 3 to 44
        Set Header_Label  item 3 to "Ü£.Äß¶©ô."
        
        Set Form_Width    item 4 to 40
        Set Header_Label  item 4 to "è¶©¶©´Ê"
        
        Set Form_Width    item 5 to 50
        Set Header_Label  item 5 to "è¶©Ê´û´ò"
        
        Set Form_Width    item 6 to 80
        Set Header_Label  item 6 to "ë¨§¶¢†°„ Ä•Âò"
        

        //AB-StoreStart
        Set Column_Option                    Item  3 to NoEnter  True
        Set Column_Option                    Item  4 to NoEnter  True
        Set Column_Option                    Item  5 to NoEnter  True
        set ordering to 3
        Set Prompt_Object to (sl81(Current_object))
        Procedure Prompt_Callback integer hPrompt
            string smodule
            set Export_Column of hPrompt to 1
            Set Initial_Column of hPrompt to 1
        
        end_procedure
        
        set child_table_state to true
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // dbGridSub1

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "â†§„©ú†™ èòöÂ‡§"
        Set TextColor to clNavy
        Set Location to 159 4
        Set Size to 10 58
        Set FontWeight to 800
    End_Object    // TextBoxSub10

    Object frmIsClosed is a FormSub
        Set Size to 25 34
        Set Location to 131 206
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                
        Set Shadow_State to True
        
        
        //AB-StoreEnd

    End_Object    // frmIsClosed

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "ïò®ò°´û®†©£Ê™ èòöÂ¶¨"
        Set Location to 88 260
        Set Size to 10 79
    End_Object    // TextBoxSub11

    Object Pagia_Pagia_Lposost is a dbFormSub
        Entry_Item Pagia.Pagia_lpososto
        Set Size to 13 38
        Set Location to 99 111
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Pagia_Pagia_Lposost

    Object TextBoxSub12 is a TextBoxSub
        Set Label to "è¶©Ê ß®Ê™ ÄßÊ©ôú©û"
        Set Location to 128 337
        Set Size to 12 75
    End_Object    // TextBoxSub12

    Object FormSub1 is a FormSub
        Set Size to 13 73
        Set Location to 128 415
        Set Color to clNavy
        Set TextColor to clWhite
        Set Label_Col_Offset to 2

        //AB-StoreStart
        set shadow_state to true
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
         //   Set Points Item 0 to iDecs
            Set Numeric_Mask Item 0 to 14 iDecimals " ,*"
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object TextBoxSub13 is a TextBoxSub
        Set Label to "Äß¶´‚¢ú©£ò òßÊ ßÈ¢û©û"
        Set Location to 143 311
        Set Size to 10 84
        Set FontWeight to 800
    End_Object    // TextBoxSub13

    Object FormSub2 is a FormSub
        Set Size to 13 73
        Set Location to 143 415
        Set TextColor to clRed
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Form_FontWeight Item 0 to 800

        //AB-StoreStart
        set shadow_state to true
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
         //   Set Points Item 0 to iDecs
            Set Numeric_Mask Item 0 to 14 iDecimals " ,*"
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // FormSub2

    Object clients_client_name is a FormSub
        Set Size to 13 281
        Set Location to 57 206
        Set Label_Col_Offset to 2

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // clients_client_name

    Object Textbox10 is a Textbox
        Set Label to "â‡õ†°Ê™ Ç.ä"
        Set Location to 114 152
        Set Size to 12 46
    End_Object    // Textbox10


    //AB-StoreStart
    Procedure Set_The_Decimal_Points
        Integer itable ipedia itable1
        String  sCode sNomisma sRecr
        date    dHmnia
        Set Dynamic_Update_State Of dbgridsub1 to False
        Set Visible_State Of dbgridsub1     to False
        Move (Trim(syscurxr.c_code0)) to sNomisma
        Clear Nomisma
        Move snomisma to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (dbgridsub1(self)) Item  5 to 1
        Set Points          Of (dbgridsub1(self)) Item  6 to Nomisma.Dekadika
        Set Numeric_Mask    Of (dbgridsub1(self)) Item  5 to 12 1 " ,*"
        Set Numeric_Mask    Of (dbgridsub1(self)) Item  6 to 12 Nomisma.Dekadika " ,*"
        Set Visible_State Of dbgridsub1 to true
        Set Dynamic_Update_State Of dbgridsub1 to true
    
    End_procedure
    
    
    Procedure Activate_View Returns Integer
        integer rval
        send Set_The_Decimal_Points
        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // V83


//AB-StoreStart
                
                
                
                
                
                
//AB-StoreEnd

//AB/ End_Object    // prj
