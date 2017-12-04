//AB/ Project SL22s:ITEM
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL22s:ITEM"
//AB/     Set ProjectFileName to "sl22s.sl"

// Project Object Structure
//   SL22s is a dbModalPanel
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
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

// Register all objects
Register_Object ButtonSub1
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
Register_Object SL22s
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Units_DD
Register_Object Witemkat_DD



//AB-StoreTopStart
                                    
                                    
//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Txtbox.Sub
Use Form.Sub
Use Rgroup.Sub
Use Radio.Sub
Use Button.Sub


Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD

//AB-IgnoreEnd

CD_Popup_Object SL22s is a dbModalPanel

    //AB-StoreTopStart
    Property String     pscode                  ''
    Property String     psperi                  ''
    Property Integer    piContains_Or_Starts     0
    Property String     pscodekat               ''
    
    //AB-StoreTopEnd

    Set Minimize_Icon to FALSE
    Set Label to "Ä®ÆúÂ¶ Ñ†õÈ§"
    Set Size to 270 484
    Set Location to 15 17

    //AB-DDOStart

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary

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
              //     Move (Trim(lscodekat)) to lscodekat
                   If (liContains_Or_Starts=0) Begin
                       If ((Trim(item.item_descr)) Contains lsperi) Begin
                           If ((Trim(item.item_code)) Contains lscode) Move 1 to rVal
                       End
        
                   End
                   Else Begin
                       If (Left(item.item_descr,(Length(lsperi)))=lsperi) Begin
                           If (Left(item.item_code,(Length(lscode)))=lscode) Move 1 to rVal
                       End
        
                   End
                   Function_Return rVal
               End_Function
        
               Function fiArxizeiperi Returns Integer
                   String lsperi
                   Get psperi to lsperi
                   Move (Trim(lsperi)) to lsperi
                   Function_Return (Left(item.item_descr,(Length(lsperi)))=lsperi)
               End_Function
        
               Function fiArxizeicode Returns Integer
                   String lscode lscodekat
                   Get pscode to lscode
                   Move (Trim(lscode)) to lscode
                   Function_Return (Left(item.item_code,(Length(lscode)))=lscode)
               End_Function
        
        //AB-StoreTopEnd

        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
                    
                    
        Begin_Constraints
           String lsperi lscode lsvalue lstype lscodekat
           Integer liContains_Or_Starts
         //  Get FragmaItem  to lsValue
        
               Get psperi       to lsperi
               Get pscode       to lscode
               Get pscodekat    to lscodekat
        
               Get piContains_Or_Starts to liContains_Or_Starts
               Move (Trim(lsperi))      to lsperi
               Move (Trim(lscode))      to lscode
               Move (Trim(lscodekat))   to lscodekat
        
               Set Ordering to 5
        
               If ((lsperi<>'') and (lscode<>'')) begin
                    set ordering to 5
                    Constrain item as (fiPeriexei(Self)=1)
               end
               Else Begin
                  If (liContains_Or_Starts=0) Begin
                    If (lsperi<>'') begin
                        set ordering to 3
                        Constrain item.item_descr Contains lsperi
                    end
                    Else If (lscode<>'') begin
                        set ordering to 5
                        Constrain item.item_code Contains lscode
                    end
                  End
                  Else Begin
                       If (lsperi<>'') begin
                            set ordering to 3
                            Constrain item as (fiArxizeiperi(Self)=1) //item.item_descr
                       end
                       Else If (lscode<>'') begin
                            set ordering to 5
                            Constrain item as (fiArxizeicode(Self)=1) //item.item_code
                       end
                  End
               End
               If (lscodekat<>'') Constrain item.witemkat_code Contains lscodekat
               Constrain item.item_orio eq 0
        End_Constraints
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Item_DD

    Set Main_DD to (Item_DD(self))
    Set Server to (Item_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Item.File_Number
        Set Ordering to 5
        Set Size to 190 475
        Set Location to -1 2
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679
        Set Auto_Server_State to TRUE
        Set Auto_Index_State to FALSE
        Set Export_Item_State to TRUE

        Begin_Row
            Entry_Item Item.Item_code
            Entry_Item Item.Item_descr
            Entry_Item Item.Witemkat_code
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
        
        Set Ordering to 5
        
        Procedure Activating
           Forward send Activating
           Send Rebuild_Constraints to (Item_DD(Self))
        End_Procedure
        
        Function Child_Exiting Integer iWhere Returns Integer
            local integer Rval
            Forward get Child_Exiting iWhere  to Rval
            set value of (ocode   (self))   to ''
            set value of (operi   (self))   to ''
            set value of (ocodekat(self))   to ''
            set psperi                      to ''
            set pscode                      to ''
            set pscodekat                   to ''
            function_return Rval // if non-zero do not enter
        End_function
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Å®ú™ â‡õ†°Ê"
        Set Auto_Size_State to FALSE
        Set Location to 192 12
        Set Size to 13 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object ocode is a FormSub
        Set Size to 13 197
        Set Location to 192 78
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                            
        Procedure OnKILLFOCUS
            Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // ocode

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Å®ú™ èú®†ö®ò≠„"
        Set Auto_Size_State to FALSE
        Set Location to 207 12
        Set Size to 13 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object operi is a FormSub
        Set Size to 13 197
        Set Location to 207 78
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                            
        Procedure OnKILLFOCUS
            Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // operi

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 32 77
        Set Location to 193 277
        Object Radio1 is a RadioSub
            Set Label to "èú®†‚Æú´ò†"
            Set Size to 10 53
            Set Location to 7 5
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "Ä®ÆÂùú† ÄßÊ"
            Set Size to 10 51
            Set Location to 21 5
        End_Object    // Radio2


        //AB-StoreStart
                                                                            
        Procedure Notify_Select_State integer iToItem integer iFromItem
            Set piContains_Or_Starts to iToItem
            Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub1

    Object ButtonSub1 is a ButtonSub
        Set Label to "Search"
        Set Size to 28 37
        Set Location to 198 357
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                            
        Set Visible_State to False
        
        Procedure OnClick
            Forward Send OnClick
            Set pscode  to (Value(ocode(Self),0))
            Set psperi  to (Value(operi(Self),0))
            Set pscodekat  to (Value(ocodekat(Self),0))
            send Rebuild_Constraints    to (item_DD(Self))
            Send Beginning_Of_Data      to oSelList True
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "Å®ú™ âò´ûö¶®Âò"
        Set Auto_Size_State to FALSE
        Set Location to 221 12
        Set Size to 13 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object ocodekat is a FormSub
        Set Size to 13 197
        Set Location to 221 78
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                            
        Procedure OnKILLFOCUS
           Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // ocodekat

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 237 316
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 237 371
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 237 426
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
            
    On_Key Key_Alt+Key_O Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_C Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_S Send KeyAction To (oSearch_bn(current_object))
    
    Set Locate_Mode to Center_On_Screen
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // SL22s


//AB-StoreStart
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
//AB-StoreEnd

//AB/ End_Object    // prj
