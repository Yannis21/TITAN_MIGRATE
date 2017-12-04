//AB/ Project sl22Search
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl22Search"
//AB/     Set ProjectFileName to "sl22Search.SL"

// Project Object Structure
//   sl22Search is a dbModalPanelSub
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     oSL22SearchSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     ocode is a FormSub
//     operi is a FormSub
//     ocodekat is a FormSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//     ButtonSub1 is a ButtonSub

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
Register_Object oSL22SearchSelList
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object sl22Search
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Units_DD
Register_Object Witemkat_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub
Use Txtbox.Sub
Use Form.Sub
Use Rgroup.Sub
Use Radio.Sub


Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD

//AB-IgnoreEnd

Object sl22Search is a dbModalPanelSub

    //AB-StoreTopStart
    Property String     pscode                  ''
    Property String     psperi                  ''
    Property Integer    piContains_Or_Starts     0
    Property String     pscodekat               ''
    
    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®†©û Ñ†õÈ§ - ãû´®È¶"
    Set Size to 301 590
    Set Location to 6 9

    //AB-DDOStart

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary

        //AB-StoreTopStart
        Function IsWitemxOK String asCode Returns Integer
            clear Witemx
            Move SyscurXr.Company_Code  to Witemx.Company_Code
            Move SyscurXr.Branch_Code   to Witemx.Branch_Code
            Move SyscurXr.Year_Year     to Witemx.Year_Year
            move (Trim(asCode))         to Witemx.Witemx_code
            find eq Witemx by index.5
            Function_Return (Witemx.Not_To_Be_Used=0)
        End_Function
        
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
            // -------------------------------------------------
            // -------------------------------------------------
            // Yannis 16/03/2016 Pernaei to constrain sto Witemx
            //Constrain item.item_orio eq 0
            //Constrain Item as (IsWitemxOK(Self,Item.Item_Code)=1)
            // -------------------------------------------------
            // -------------------------------------------------
        End_Constraints
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Item_DD

    Set Main_DD to (Item_DD(self))
    Set Server to (Item_DD(self))

    //AB-DDOEnd

    Object oSL22SearchSelList is a dbListSub
        Set Main_File to Item.File_Number
        Set Ordering to 5
        Set Size to 224 571
        Set Location to 6 6
        Set Color to 11383243
        Set CurrentRowColor to 11383243
        Set CurrentCellColor to 15000817

        Begin_Row
            Entry_Item Item.Item_code
            Entry_Item Item.Item_descr
            Entry_Item Witemkat.Witemkat_code
            Entry_Item Witemkat.Witemkat_descr
            Entry_Item Item.Item_qual
            Entry_Item Fpa.Fpa_pososto
        End_Row

        Set Form_Width    item 0 to 63
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 152
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 89
        Set Header_Label  item 2 to "âò´ûö¶®Âò"
        
        Set Form_Width    item 3 to 144
        Set Header_Label  item 3 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 4 to 81
        Set Header_Label  item 4 to "è¶†Ê´û´ò"
        
        Set Form_Width    item 5 to 36
        Set Header_Label  item 5 to "îèÄ"
        
    End_Object    // oSL22SearchSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 265 418
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSL22SearchSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 265 473
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSL22SearchSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 265 528
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSL22SearchSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Å®ú™ â‡õ†°Ê"
        Set Auto_Size_State to FALSE
        Set Location to 238 11
        Set Size to 13 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Å®ú™ èú®†ö®ò≠„"
        Set Auto_Size_State to FALSE
        Set Location to 253 11
        Set Size to 13 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "Å®ú™ âò´ûö¶®Âò"
        Set Auto_Size_State to FALSE
        Set Location to 267 11
        Set Size to 13 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object ocode is a FormSub
        Set Size to 13 197
        Set Location to 239 77
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnKILLFOCUS
            Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // ocode

    Object operi is a FormSub
        Set Size to 13 197
        Set Location to 254 77
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnKILLFOCUS
            Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // operi

    Object ocodekat is a FormSub
        Set Size to 13 197
        Set Location to 268 77
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnKILLFOCUS
           Send KeyAction to ButtonSub1
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // ocodekat

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 32 77
        Set Location to 240 275
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
        Set Location to 245 355
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
            Send Beginning_Of_Data      to oSL22SearchSelList True
        End_Procedure // OnClick
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
    
    On_Key Key_Alt+Key_O Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_C Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_S Send KeyAction To (oSearch_bn(current_object))
    
    Set Locate_Mode to Center_On_Screen
    
    
    //AB-StoreEnd

End_Object    // sl22Search

//AB/ End_Object    // prj
