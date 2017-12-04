//AB/ Project sl045: Wcmoves lookup
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl045: Wcmoves lookup"
//AB/         Set ProjectFileName to "sl045.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl045 is a dbModalPanelSub
//     Wcmoves_DD is a DataDictionary
//     oSelList is a dbListSub
//     cSyDateForm1 is a cSyDateForm
//     FormSub1 is a FormSub
//     FormSub3 is a FormSub
//     oOK_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object cSyDateForm1
Register_Object FormSub1
Register_Object FormSub3
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl045
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object Wcmoves_DD



    //AB-StoreTopStart
    use sl22s.sl
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use cSyDateForm.Pkg
    Use Form.Sub
    Use Button.Sub
    Use Txtbox.Sub


    Use WCMOVES.DD
    
    //AB-IgnoreEnd

    Object sl045 is a dbModalPanelSub

        //AB-StoreTopStart
        Property String psModule    Public ''
        Property String psItemxCode Public ''
        Property date   pddate      Public ''
        //AB-StoreTopEnd

        Set Label to "â†§„©ú†™ Äß¶ü„°û™"
        Set Size to 279 515
        Set Location to 0 4
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Wcmoves_DD is a Wcmoves_DataDictionary

            //AB-StoreStart
                        
            Begin_Constraints
                Constrain wcmoves.company_code  eq syscurxr.company_code
                Constrain wcmoves.branch_code   eq syscurxr.branch_code
                Constrain wcmoves.year_year     eq syscurxr.year_year
                If (psItemxCode(Self)<>'') Begin
                    Set Ordering to 15
                    Constrain WCmoves.Witemx_Code Eq (Trim(psItemxCode(Self)))
                    if (pddate(self)<>'') constrain wcmoves.wcmove_hmnia eq (pddate(self))
                End
                Else begin
                    Set Ordering to 3
                    if (pddate(self)<>'') constrain wcmoves.wcmove_hmnia eq (pddate(self))
                End
            End_Constraints
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Wcmoves_DD

        Set Main_DD to (Wcmoves_DD(self))
        Set Server to (Wcmoves_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Wcmoves.File_Number
            Set Size to 229 501
            Set Location to 2 7
            Set Auto_Index_State to FALSE

            Begin_Row
                Entry_Item Wcmoves.Witemx_code
                Entry_Item (fswax(self,wcmoves.wax_recr))
                Entry_Item (fswtypkin(self,wcmoves.wtypkin_code))
                Entry_Item Wcmoves.Wcmove_hmnia
                Entry_Item Wcmoves.Wcmove_par
                Entry_Item Wcmoves.Wcmove_axia
                Entry_Item Wcmoves.Wcmove_qty
                Entry_Item Wcmoves.Wcmove_sc_code2
                Entry_Item Wcmoves.Module_from
            End_Row

            Set Form_Width    item 0 to 85
            Set Header_Label  item 0 to "ÑÂõ¶™"
            
            Set Form_Width    item 1 to 50
            Set Header_Label  item 1 to "Äß¶ü„°û "
            
            Set Form_Width    item 2 to 80
            Set Header_Label  item 2 to "âÂ§û©û"
            
            Set Form_Width    item 3 to 51
            Set Header_Label  item 3 to "Ü£ú®/§Âò"
            
            Set Form_Width    item 4 to 65
            Set Header_Label  item 4 to "Ä†´†¶¢¶öÂò"
            
            Set Form_Width    item 5 to 60
            Set Header_Label  item 5 to " Ä•Âò"
            
            Set Form_Width    item 6 to 51
            Set Header_Label  item 6 to "è¶©Ê´û´ò"
            
            Set Form_Width    item 7 to 26
            Set Header_Label  item 7 to "å¶£"
            
            Set Form_Width    item 8 to 27
            Set Header_Label  item 8 to "âÁ°¢"
            

            //AB-StoreStart
                                    
            Procedure End_Construct_Object
                String  sNom
                Integer iDecs
                Forward Send End_Construct_Object
                Move SysCurxr.C_Code0 to sNom
                Clear Nomisma
                Move sNom to Nomisma.Nomisma_Code
                Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
                If (Found=1)    Move Nomisma.Dekadika to iDecs
                Else            Move 0 to iDecs
                // èò®òõ¶Æ„: ò§ ´¶ ôò©†°Ê §¶£†©£ò Æ®„©û™ ÉÑå úÆú† õú°òõ†°·
                // ´Ê´ú ú•' ¶®†©£¶Á ô·ù¶¨£ú ú£ú†™ 2
                If (iDecs=0) Move 2 to iDecs
                Set Points          Item 5 to       iDecs
                Set Numeric_Mask    Item 5 to 14    iDecs '*, '
                Set Points          Item 6 to       2 // è¶©Ê´û´ò
            End_Procedure
            
            Procedure Activate
                Send Keyaction to ButtonSub1
                Forward Send Activate
            End_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object cSyDateForm1 is a cSyDateForm
            Set Size to 13 75
            Set Location to 236 51
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"

            //AB-StoreStart
                                            
            Procedure Key Integer iKey
                Integer iRetVal
                Forward Send Key iKey
                If (iKey=277) Begin
                    Send Clear_Me
                End
            End_Procedure
            
            Procedure Clear_Me
                Set Value Item 0 to ''
                Send KeyAction to ButtonSub1
            End_Procedure
            
            Procedure onchange
                date ddate
                get value item 0 to ddate
                set pddate to ddate
            
            end_procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // cSyDateForm1

        Object FormSub1 is a FormSub
            Set Size to 13 75
            Set Location to 250 51
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
                                                                                            
            //Set Prompt_Object to (sl22s(Self))
            Set Prompt_Object to (sl22Search(Self))
            
            Procedure OnChange
                String sitem
                Get Value Item 0 to sitem
                set psitemxcode to sitem
                Set Value Of FormSub3 Item 0 to (fsitem(Self,sitem))
            End_Procedure
            
            Procedure Key Integer iKey
                Integer iRetVal
                Forward Send Key iKey
                If (iKey=277) Begin
                    Send Clear_item
                End
            End_Procedure
            
            Procedure Clear_item
                Set Value Item 0 to ''
                Send KeyAction to ButtonSub1
            End_Procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // FormSub1

        Object FormSub3 is a FormSub
            Set Size to 13 195
            Set Location to 250 132
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // FormSub3

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 248 397

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 248 457

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn

        Object ButtonSub1 is a ButtonSub
            Set Label to "èú®†Ê®†©ú"
            Set Size to 13 50
            Set Location to 249 337
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart
                                                                                                        
            Procedure OnClick
                Send Rebuild_Constraints to Wcmoves_DD
                Send Beginning_Of_Data to oSelList True
            End_Procedure // OnClick
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ü£/§Âò"
            Set Location to 239 5
            Set Size to 10 31
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ÑÂõ¶™"
            Set Location to 251 5
            Set Size to 12 21
        End_Object    // TextBoxSub2


        //AB-StoreStart
                        
        On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
        
        Set Locate_Mode to Center_On_Screen
        Set Modal_State to True
        
        Procedure Activate
            Forward send Activate
        End_Procedure
        
        Procedure Request_Cancel
            Set Value Of cSyDateForm1 Item 0 to ''
            set value of formsub1     item 0 to ''
            set value of formsub3     item 0 to ''
            Send Clear to wcmoves_dd
            Forward Send Request_Cancel
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl045


    //AB-StoreStart
                        
                        
                        
    //AB-StoreEnd

//AB/     End_Object    // prj
