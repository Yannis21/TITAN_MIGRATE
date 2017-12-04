//AB/ Project SL17:witemx
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "SL17:witemx"
//AB/         Set ProjectFileName to "sl17.SL"

// Project Object Structure
//   SL17 is a dbModalPanelSub
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     oSelList is a dbListSub
//     TextBoxSub1 is a TextBoxSub
//     ocode is a FormSub
//     TextBoxSub2 is a TextBoxSub
//     operi is a FormSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub3 is a TextBoxSub
//     ocodekat is a FormSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     btnwitemcl is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object btnwitemcl
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object oCancel_bn
Register_Object ocode
Register_Object ocodekat
Register_Object oOK_bn
Register_Object operi
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object SL17
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Units_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD



    //AB-StoreTopStart
    use dg186.dg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Txtbox.Sub
    Use Form.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use Button.Sub


    Use UNITS.DD
    Use WITEMKAT.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMX.DD
    
    //AB-IgnoreEnd

    Object SL17 is a dbModalPanelSub

        //AB-StoreTopStart
                
        Property String     pscode                  ''
        Property String     psperi                  ''
        Property Integer    piContains_Or_Starts     0
        Property String     pscodekat               ''
        
        //AB-StoreTopEnd

        Set Minimize_Icon to FALSE
        Set Label to "Ñ¨®ú´„®†¶ Ä®ÆúÂ¶¨ Ñ†õÈ§"
        Set Size to 266 484
        Set Location to 9 14
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary

            //AB-StoreTopStart
                                                                                                    
                                                                                                    
            //AB-StoreTopEnd

            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))

            //AB-StoreStart
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
            //AB-StoreEnd

        End_Object    // Item_DD

        Object Witemx_DD is a Witemx_DataDictionary

            //AB-StoreTopStart
            Function fiPeriexei Returns Integer
                       String lsperi lscode  lscodekat
                       Integer rVal liContains_Or_Starts
                       Move 0 to rVal
                       Get piContains_Or_Starts to liContains_Or_Starts
                       Get psperi to lsperi
                       Get pscode to lscode
                       Get pscodekat to lscodekat
                       Move (Trim(lsperi)) to lsperi
                       Move (Trim(lscode)) to lscode
                       If (liContains_Or_Starts=0) Begin
                           If ((Trim(witemx.witemx_descr)) Contains lsperi) Begin
                               If ((Trim(witemx.witemx_code)) Contains lscode) Move 1 to rVal
                           End
                       End
                       Else Begin
                           If (Left(witemx.witemx_descr,(Length(lsperi)))=lsperi) Begin
                               If (Left(witemx.witemx_code,(Length(lscode)))=lscode) Move 1 to rVal
                           End
                       End
                       Function_Return rVal
                   End_Function
            
                   Function fiArxizeiperi Returns Integer
                       String lsperi
                       Get psperi to lsperi
                       Move (Trim(lsperi)) to lsperi
                       Function_Return (Left(witemx.witemx_descr,(Length(lsperi)))=lsperi)
                   End_Function
            
                   Function fiArxizeicode Returns Integer
                       String lscode lscodekat
                       Get pscode to lscode
                       Move (Trim(lscode)) to lscode
                       Function_Return (Left(witemx.witemx_code,(Length(lscode)))=lscode)
                   End_Function
            //AB-StoreTopEnd

            Set DDO_Server to (Item_DD(self))

            //AB-StoreStart
                                                                                
            Begin_Constraints
               String lsperi lscode lsvalue lstype lscodekat
               Integer liContains_Or_Starts
               Get psperi               to lsperi
               Get pscode               to lscode
               Get pscodekat            to lscodekat
               Get piContains_Or_Starts to liContains_Or_Starts
               Move (Trim(lsperi))      to lsperi
               Move (Trim(lscode))      to lscode
               Move (Trim(lscodekat))   to lscodekat
               Set Ordering to 4
               If ((lsperi<>'') and (lscode<>'')) Begin
                    Set Ordering to 4
                    Constrain witemx as (fiPeriexei(Self)=1)
               End
               Else Begin
                  If (liContains_Or_Starts=0) Begin
                        If (lsperi<>'') Begin
                            Set Ordering to 3
                            Constrain witemx.witemx_descr Contains lsperi
                        End
                        Else If (lscode<>'') Begin
                            Set Ordering to 4
                            Constrain witemx.witemx_code Contains lscode
                        End
                  End
                  Else Begin
                        If (lsperi<>'') Begin
                            Set Ordering to 3
                            Constrain witemx as (fiArxizeiperi(Self)=1) //witemx.witemx_descr
                        End
                        Else If (lscode<>'') Begin
                            Set Ordering to 4
                            Constrain witemx as (fiArxizeicode(Self)=1) //witemx.witemx_code
                        End
                  End
                  If (lscodekat<>'') Begin
                        Constrain witemx.witemkat_code Contains lscodekat
                  End
               End
            End_Constraints
            
            
            //AB-StoreEnd

        End_Object    // Witemx_DD

        Set Main_DD to (Witemx_DD(self))
        Set Server to (Witemx_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Witemx.File_Number
            Set Ordering to 5
            Set Size to 190 475
            Set Location to 1 1
            Set Color to 14280447
            Set CurrentRowColor to 11783679
            Set CurrentCellColor to 11783679
            Set Auto_Index_State to FALSE

            Begin_Row
                Entry_Item Witemx.Witemx_code
                Entry_Item Witemx.Witemx_descr
                Entry_Item Witemx.Witemkat_code
                Entry_Item Witemkat.Witemkat_descr
                Entry_Item Item.Item_qual
                Entry_Item Fpa.Fpa_pososto
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "â‡õ. ÑÂõ¶¨™"
            
            Set Form_Width    item 1 to 140
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 70
            Set Header_Label  item 2 to "â‡õ. âò´ûö¶®Âò™"
            
            Set Form_Width    item 3 to 88
            Set Header_Label  item 3 to "èú®†ö®ò≠„ âò´ûö."
            
            Set Form_Width    item 4 to 64
            Set Header_Label  item 4 to "è¶†Ê´û´ò"
            
            Set Form_Width    item 5 to 45
            Set Header_Label  item 5 to "âò´.î.è.Ä"
            

            //AB-StoreStart
            Property String Store_Fragma_Items public ""
            set export_item_state to true
            
            Procedure End_Construct_Object
                Forward Send End_Construct_Object
                Set Color               to 14280447
                Set CurrentRowColor     to 11783679
                Set CurrentCellColor    to 11783679
            End_Procedure
            
            Procedure Activating Returns Integer
                Integer rVal
                Forward Get Msg_Activating to rVal
                set auto_index_state to true
                Procedure_Return rVal
            End_Procedure
            
            procedure move_value_out
                forward send move_value_out
                set value of (ocode(self)) to ''
                set value of (operi(self)) to ''
                set value of (ocodekat(self)) to ''
                set psperi to ''
                set pscode to ''
                set pscodekat to ''
            end_procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "ë·®‡©û °‡õ†°¶Á ö†ò"
            Set Auto_Size_State to FALSE
            Set Location to 192 6
            Set Size to 13 69
        End_Object    // TextBoxSub1

        Object ocode is a FormSub
            Set Size to 13 197
            Set Location to 192 79
            Set Label_Col_Offset to 2

            //AB-StoreStart
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ocode

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ë·®‡©û ßú®†ö®ò≠„™ "
            Set Auto_Size_State to FALSE
            Set Location to 207 6
            Set Size to 13 71
        End_Object    // TextBoxSub2

        Object operi is a FormSub
            Set Size to 13 197
            Set Location to 207 79
            Set Label_Col_Offset to 2

            //AB-StoreStart
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // operi

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 32 77
            Set Location to 191 279
            Object Radio1 is a RadioSub
                Set Label to "èú®†‚Æú´ò†"
                Set Size to 10 53
                Set Location to 7 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "Ä®ÆÂùú† Äß¶"
                Set Size to 10 52
                Set Location to 21 5
            End_Object    // Radio2


            //AB-StoreStart
            
            Procedure Notify_Select_State integer iToItem integer iFromItem
                Set piContains_Or_Starts to iToItem
            End_Procedure
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object ButtonSub1 is a ButtonSub
            Set Label to "èú®†Ê®†©ú"
            Set Size to 15 197
            Set Location to 236 79
            Set Form_FontWeight Item 0 to 800
            Set Form_TypeFace Item 0 to "ms sans serif"

            //AB-StoreStart
            
            Procedure OnClick
                Forward Send OnClick
                Set pscode      to (Value(ocode(Self),0))
                Set psperi      to (Value(operi(Self),0))
                Set pscodekat   to (Value(ocodekat(Self),0))
                send Rebuild_Constraints    to (witemx_DD(Self))
                Send Beginning_Of_Data      to oSelList True
            End_Procedure // OnClick
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "â‡õ. °ò´ûö¶®Âò™ ö†ò"
            Set Auto_Size_State to FALSE
            Set Location to 221 5
            Set Size to 13 70
        End_Object    // TextBoxSub3

        Object ocodekat is a FormSub
            Set Size to 13 197
            Set Location to 221 79
            Set Label_Col_Offset to 2

            //AB-StoreStart
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ocodekat

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 232 318

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 232 373

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 232 428

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn

        Object btnwitemcl is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "Filesys3.bmp"
            Set Size to 22 25
            Set Location to 196 443
            Set Focus_Mode to Pointer_Only

            //AB-StoreStart
            
            Set TooltipValue to "ãú´ò≠¶®· ©´¶ ú¨®ú´„®†¶ Ñ†õÈ§ / è®¶£ûüú¨´„"
            
            Procedure OnClick
                String  scode speri
                Get value of (ocode(self)) to scode
                Get value of (operi(self)) to speri
                set pscode of (dg186(self)) to scode
                set psperi of (dg186(self)) to speri
               Send popup_modal to (dg186(self))
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnwitemcl


        //AB-StoreStart
                
        Set Locate_Mode to Center_On_Screen
        
        On_Key Key_Alt+Key_O Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_C Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_S Send KeyAction To (oSearch_bn(current_object))
        
        Procedure Activate
            Send Rebuild_Constraints    to Witemx_DD
            Send Beginning_Of_Data      to oSelList True
            Forward Send Activate
        End_Procedure
        
        procedure request_cancel
            forward send request_cancel
            set value of (ocode(self)) to ''
            set value of (operi(self)) to ''
            set value of (ocodekat(self)) to ''
            Set psperi  to ''
            Set pscode  to ''
            Set pscodekat TO ''
        end_procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // SL17


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
