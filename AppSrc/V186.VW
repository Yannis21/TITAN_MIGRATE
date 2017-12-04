//AB/ Project V186:sysxetiseis eidon
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V186:sysxetiseis eidon"
//AB/         Set ProjectFileName to "V186.VW"
//AB/         Set GenerateFileName to "V186_sysxetiseis_eidon.vw"

// Project Object Structure
//   V186 is a dbView
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     The_Table is a dbGrid
//     TextBoxSub1 is a TextBoxSub
//     ocode is a FormSub
//     TextBoxSub2 is a TextBoxSub
//     operi is a FormSub
//     TextBoxSub3 is a TextBoxSub
//     ocodeprom is a FormSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//     ButtonSub1 is a ButtonSub
//     btnwitemcl is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object btnwitemcl
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object ocode
Register_Object ocodeprom
Register_Object operi
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object The_Table
Register_Object Units_DD
Register_Object V186
Register_Object Witemcl_DD
Register_Object Witemkat_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open clients
    use sl17.sl
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use Form.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use Button.Sub

    Use WITEMKAT.DD
    Use UNITS.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMCL.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V186 FOR V186

    Object V186 is a dbViewSubS

        //AB-StoreTopStart

        Property String     pscode                  ''
        Property String     psperi                  ''
        Property Integer    piContains_Or_Starts     0
        Property String     pscodeprom              ''


        //AB-StoreTopEnd

        Set Label to "‘¬©®œ«å©œ ª „ ›é¤ €§¦Ÿã¡žª"
        Set Size to 280 525
        Set Location to 1 0

        //AB-DDOStart

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))
        End_Object    // Item_DD

        Object Witemcl_DD is a Witemcl_DataDictionary

            //AB-StoreTopStart
            Function fiPeriexei Returns Integer
                       String lsperi lscode  lscodeprom
                       Integer rVal liContains_Or_Starts
                       Move 0 to rVal
                       Get piContains_Or_Starts to liContains_Or_Starts
                       Get psperi to lsperi
                       Get pscode to lscode
                       Get pscodeprom to lscodeprom
                       Move (Trim(lsperi)) to lsperi
                       Move (Trim(lscode)) to lscode
                  //     Move (Trim(lscodekat)) to lscodekat
                       If (liContains_Or_Starts=0) Begin
                           If ((Trim(witemcl.item_descr)) Contains lsperi) Begin
                               If ((Trim(witemcl.item_code)) Contains lscode) Move 1 to rVal
                           End

                       End
                       Else Begin
                           If (Left(witemcl.item_descr,(Length(lsperi)))=lsperi) Begin
                               If (Left(witemcl.item_code,(Length(lscode)))=lscode) Move 1 to rVal
                           End

                       End
                       Function_Return rVal
                   End_Function

                   Function fiArxizeiperi Returns Integer
                       String lsperi
                       Get psperi to lsperi
                       Move (Trim(lsperi)) to lsperi
                       Function_Return (Left(witemcl.item_descr,(Length(lsperi)))=lsperi)
                   End_Function

                   Function fiArxizeicode Returns Integer
                       String lscode lscodeprom
                       Get pscode to lscode
                       Move (Trim(lscode)) to lscode
                       Function_Return (Left(witemcl.item_code,(Length(lscode)))=lscode)
                   End_Function

            //AB-StoreTopEnd

            Set DDO_Server to (Item_DD(self))

            //AB-StoreStart


            Begin_Constraints
               String lsperi lscode lsvalue lstype lscodeprom
               Integer liContains_Or_Starts
                   Get psperi  to lsperi
                   Get pscode  to lscode
                   Get pscodeprom  to lscodeprom
                   Get piContains_Or_Starts to liContains_Or_Starts
                   Move (Trim(lsperi)) to lsperi
                   Move (Trim(lscode)) to lscode
                   Move (Trim(lscodeprom)) to lscodeprom
                   If ((lsperi<>'') and ;
                      (lscode<>'')) Constrain witemcl as (fiPeriexei(Self)=1)
                   Else Begin
                      If (liContains_Or_Starts=0) Begin
                      If (lsperi<>'') Constrain witemcl.item_descr Contains lsperi
                      Else If (lscode<>'') Constrain witemcl.item_code Contains lscode
                      End
                   Else Begin
                       If (lsperi<>'') Constrain witemcl as (fiArxizeiperi(Self)=1) //witemcl.item_descr
                       Else If (lscode<>'') Constrain witemcl as (fiArxizeicode(Self)=1) //witemcl.item_code
                       End
                   End
                   If (lscodeprom<>'') Constrain witemcl.client_itemcode Contains lscodeprom

            End_Constraints


            //AB-StoreEnd

        End_Object    // Witemcl_DD

        Set Main_DD to (Witemcl_DD(self))
        Set Server to (Witemcl_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGrid
            Set Main_File to Witemcl.File_Number
            Set Size to 201 519
            Set Location to 3 2
            Set Color to 14280447
            Set CurrentRowColor to 11783679
            Set CurrentCellColor to 11783679
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Witemcl.Item_code
                Entry_Item Witemcl.Client_itemcode
                Entry_Item Witemcl.Item_descr
                Entry_Item Witemcl.Client_code
                Entry_Item (fsclient(self,witemcl.client_code))
            End_Row

            Set Form_Width    item 0 to 100
            Set Header_Label  item 0 to "‰à› ¡æª „å›¦¬ª"
            
            Set Form_Width    item 1 to 100
            Set Header_Label  item 1 to "„å›¦ª ¨¦£žŸœ¬«ã"
            
            Set Form_Width    item 2 to 200
            Set Header_Label  item 2 to "œ¨ š¨˜­ã „å›¦¬ª"
            
            Set Form_Width    item 3 to 0
            Set Header_Label  item 3 to ""
            
            Set Form_Width    item 4 to 111
            Set Header_Label  item 4 to "¨¦£žŸœ¬«ãª"
            

            //AB-StoreStart
            Set Column_Option Item 3 to NoEnter True
            //set read_only_state to true
            set no_create_state to true
            set no_delete_state to true
            //AB-StoreEnd

        End_Object    // The_Table

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "‘á¨à©ž ‰à› ¡¦ç ‚ á"
            Set Auto_Size_State to FALSE
            Set Location to 208 5
            Set Size to 13 78
        End_Object    // TextBoxSub1

        Object ocode is a FormSub
            Set Size to 13 197
            Set Location to 209 91
            Set Label_Col_Offset to 2

            //AB-StoreStart
                                                                                                                                            
            Procedure OnKILLFOCUS
               Send KeyAction to ButtonSub1
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // ocode

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "‘á¨à©ž œ¨ š¨˜­ãª "
            Set Auto_Size_State to FALSE
            Set Location to 223 5
            Set Size to 13 83
        End_Object    // TextBoxSub2

        Object operi is a FormSub
            Set Size to 13 197
            Set Location to 223 91
            Set Label_Col_Offset to 2

            //AB-StoreStart
                                                                                                                                            
            Procedure OnKILLFOCUS
              Send KeyAction to ButtonSub1
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // operi

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "„å›¦ª ¨¦£žŸœ¬«ã ‚ á"
            Set Auto_Size_State to FALSE
            Set Location to 237 3
            Set Size to 13 78
        End_Object    // TextBoxSub3

        Object ocodeprom is a FormSub
            Set Size to 13 197
            Set Location to 238 90
            Set Label_Col_Offset to 2

            //AB-StoreStart
                                                                                                                                            
            Procedure OnKILLFOCUS
                Send KeyAction to ButtonSub1
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // ocodeprom

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 32 77
            Set Location to 209 296
            Object Radio1 is a RadioSub
                Set Label to "œ¨ â®œ«˜ "
                Set Size to 10 53
                Set Location to 7 5
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "€¨®åœ  €§æ"
                Set Size to 10 51
                Set Location to 21 5
            End_Object    // Radio2


            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                
            Procedure Notify_Select_State integer iToItem integer iFromItem
                //iToItem=0 => Contains, =1 => Starts with
                Set piContains_Or_Starts to iToItem
                Send KeyAction to ButtonSub1
            End_Procedure
            
            // If you set Current_radio you must set this after the
            // radio objects have been created AND after Notify_select_State has been
            // created. i.e. Set in bottom-code at end!!
            //Set Current_Radio to 0
            
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object ButtonSub1 is a ButtonSub
            Set Label to "Search"
            Set Size to 28 37
            Set Location to 210 413
            Set Form_FontWeight Item 0 to 800
            Set Form_TypeFace Item 0 to "ms sans serif"

            //AB-StoreStart
                                                                                                                                                                                                                                    
            Set Visible_State to False
            
            Procedure OnClick
                Forward Send OnClick
                Set pscode  to (Value(ocode(Self),0))
                Set psperi  to (Value(operi(Self),0))
                Set pscodeprom  to (Value(ocodeprom(Self),0))
                send Rebuild_Constraints    to (witemcl_DD(Self))
                Send Beginning_Of_Data      to the_table True
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object btnwitemcl is a ButtonSub

            //AB-StoreTopStart
                            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "Filesys3.bmp"
            Set Size to 22 25
            Set Location to 214 482
            Set Focus_Mode to Pointer_Only

            //AB-StoreStart
                            
            Set TooltipValue to "‹œ«˜­¦¨á ©«¦ œ¬¨œ«ã¨ ¦ „ ›é¤"
            
            Procedure OnClick
                String  scode speri
                Get value of (ocode(self)) to scode
                Get value of (operi(self)) to speri
                set pscode of (sl17(self)) to scode
                set psperi of (sl17(self)) to speri
                send request_cancel to v186
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnwitemcl


        //AB-StoreStart
        Procedure Activate_View Returns Integer
           integer rval
           set value of (ocode(self)) to (pscode(self))
           set value of (operi(self)) to (psperi(self))
           Send Rebuild_Constraints to (witemcl_DD(Self))
           Forward Get Msg_Activate_View to rVal
           procedure_return rval
        End_Procedure
        
        //procedure page integer pagemode
        //    forward send page pagemode
        //    set location to 40,40
        //end_procedure
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V186


    //AB-StoreStart
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
