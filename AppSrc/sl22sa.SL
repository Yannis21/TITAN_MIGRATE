//AB/ Project SL22sa:ITEM
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "SL22sa:ITEM"
//AB/         Set ProjectFileName to "sl22sa.SL"

// Project Object Structure
//   SL22sa is a dbModalPanel
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL22sa
Register_Object Units_DD
Register_Object Witemkat_DD



    //AB-StoreTopStart
                        
                        
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Button.Sub


    Use WITEMKAT.DD
    Use UNITS.DD
    Use FPA.DD
    Use ITEM.DD
    
    //AB-IgnoreEnd

    Object SL22sa is a dbModalPanel

        //AB-StoreTopStart
                
        Property String     pscodekat               ''
        
        //AB-StoreTopEnd

        Set Minimize_Icon to FALSE
        Set Label to "Ä®ÆúÂ¶ Ñ†õÈ§"
        Set Size to 270 484
        Set Location to 1 6

        //AB-DDOStart

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary

            //AB-StoreTopStart
                                                
                                                
            //AB-StoreTopEnd

            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))

            //AB-StoreStart
                                                
                                                
                                                
            Begin_Constraints
               String lsperi lscode lsvalue lstype lscodekat
               Get pscodekat  to lscodekat
               Move (Trim(lscodekat)) to lscodekat
               If (lscodekat<>'') Constrain item.witemkat_code eq lscodekat
            
            End_Constraints
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Item_DD

        Set Main_DD to (Item_DD(self))
        Set Server to (Item_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Item.File_Number
            Set Ordering to 5
            Set Size to 234 475
            Set Location to -1 2
            Set Color to 14280447
            Set CurrentRowColor to 11783679
            Set CurrentCellColor to 11783679

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
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 237 316

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 237 371

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 237 426

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
        
        
        procedure page integer pagemode
            forward send page pagemode
            set location to 40,40
        end_procedure
        
        Procedure Activating Returns Integer
           Forward send Activating
           Send Rebuild_Constraints to (Item_DD(Self))
           send beginning_of_data to osellist true
        End_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // SL22sa


    //AB-StoreStart
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
    //AB-StoreEnd

//AB/     End_Object    // prj
