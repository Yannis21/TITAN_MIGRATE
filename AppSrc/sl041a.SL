//AB/ Project sl041a:mhtroo cn
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl041a:mhtroo cn"
//AB/         Set ProjectFileName to "sl041a.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl041a is a dbModalPanelSub
//     Clients_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Clients_DD
Register_Object Cn_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl041a


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CLIENTS.DD
    Use CN.DD
    
    //AB-IgnoreEnd

    Object sl041a is a dbModalPanelSub

        //AB-StoreTopStart
                            
        Property String FragmaClient Public 0
        
        
        //AB-StoreTopEnd

        Set Label to "Ä®ÆúÂ¶ Ñ®ö‡§"
        Set Size to 148 364
        Set Location to 6 11
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Clients_DD is a Clients_DataDictionary

            //AB-StoreStart
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
            //AB-StoreEnd

        End_Object    // Clients_DD

        Object Cn_DD is a Cn_DataDictionary
            Set DDO_Server to (Clients_DD(self))

            //AB-StoreStart
                                                    
            Begin_Constraints
                If (FragmaClient(Self)<>'') Constrain Cn.Client_ID Eq (FragmaClient(Self))
            End_Constraints
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cn_DD

        Set Main_DD to (Cn_DD(self))
        Set Server to (Cn_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Main_File to Cn.File_Number
            Set Ordering to 4
            Set Size to 105 351
            Set Location to 6 6
            Set Auto_Index_State to FALSE

            Begin_Row
                Entry_Item Cn.Cn_code
                Entry_Item Cn.Cn_descr
                Entry_Item Clients.Client_name
                Entry_Item Cn.Cn_active
            End_Row

            Set Form_Width    item 0 to 64
            Set Header_Label  item 0 to "â‡õ†°Ê™ Ñ®ö¶¨"
            
            Set Form_Width    item 1 to 118
            Set Header_Label  item 1 to "èú®†ö®ò≠„ Ñ®ö¶¨"
            
            Set Form_Width    item 2 to 118
            Set Header_Label  item 2 to "Ñß‡§¨£Âò èú¢·´û"
            
            Set Form_Width    item 3 to 44
            Set Header_Label  item 3 to "ë‚ Ñ•‚¢†•û"
            Set Column_Checkbox_State  item 3 to True
            

            //AB-StoreStart
            
            Property String StoreFragmaClient Public 0
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaClient to (FragmaClient(Self))
            End_Procedure
            
            Procedure Restore_Defaults
                   Forward Send ReStore_Defaults
                   Set FragmaClient to (StoreFragmaClient(Self))
            End_Procedure
            
            Procedure Activating
               Forward Send Activating
               Send Rebuild_Constraints to (CN_DD(Self))
               send beginning_of_data to osellist true
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 113 197
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 113 252
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 113 307
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
                            
        On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl041a

//AB/     End_Object    // prj
