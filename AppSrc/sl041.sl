//AB/ Project CN : sl041
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "CN : sl041"
//AB/         Set ProjectFileName to "sl041.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl041 is a dbModalPanelSub
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
Register_Object sl041


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CLIENTS.DD
    Use CN.DD
    
    //AB-IgnoreEnd

    Object sl041 is a dbModalPanelSub

        //AB-StoreTopStart
        Property String FragmaClient_ID Public ''
        
        //AB-StoreTopEnd

        Set Label to "Ñß†¢¶ö„ Ñ®ö‡§"
        Set Size to 249 500
        Set Location to 2 6
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
                String sID
                Get FragmaClient_ID to sID
                If (sID<>'') begin
                    set ordering to 4
                    Constrain CN.Client_ID eq sID
                end
                ELSE SET ORDERING TO -1
            End_Constraints
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cn_DD

        Set Main_DD to (Cn_DD(self))
        Set Server to (Cn_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Cn.File_Number
            Set Ordering to 4
            Set Size to 209 481
            Set Location to 6 6
            Set Auto_Index_State to FALSE

            Begin_Row
                Entry_Item Cn.Cn_code
                Entry_Item Cn.Cn_descr
                Entry_Item Cn.Client_id
                Entry_Item Clients.Client_name
                Entry_Item Cn.Cn_active
            End_Row

            Set Form_Width    item 0 to 62
            Set Header_Label  item 0 to "â‡õ†°Ê™ Ñ®ö¶¨"
            
            Set Form_Width    item 1 to 185
            Set Header_Label  item 1 to "èú®†ö®ò≠„ Ñ®ö¶¨"
            
            Set Form_Width    item 2 to 60
            Set Header_Label  item 2 to "â‡õ.èú¢·´û"
            
            Set Form_Width    item 3 to 123
            Set Header_Label  item 3 to "Ñß‡§¨£Âò èú¢·´û"
            
            Set Form_Width    item 4 to 44
            Set Header_Label  item 4 to "ëú Ñ•‚¢†•û"
            Set Column_Checkbox_State  item 4 to True
            

            //AB-StoreStart
                                                        
            Property String StoreFragmaClient_ID Public ''
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaClient_ID to (FragmaClient_ID(Self))
            End_Procedure
            
            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set FragmaClient_ID to (StoreFragmaClient_ID(Self))
            End_Procedure
            
            Procedure Activating Returns Integer
                Integer rVal
                Forward Get Msg_Activating to rVal
                set auto_index_state to true
                SET ORDERING TO -1
                Procedure_Return rVal
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 219 327
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 219 383
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 219 437
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
        
        Set Modal_State to True
        
        Procedure Activating Returns Integer
            Integer rVal
            Forward Get Msg_Activating to rVal
            Send Rebuild_Constraints to (CN_DD(Self))
            Send Beginning_Of_Data to oSelList
            Procedure_Return rVal
        End_Procedure
        
        procedure page integer pagemode
            forward send page pagemode
            set location to 40,40
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl041

//AB/     End_Object    // prj
