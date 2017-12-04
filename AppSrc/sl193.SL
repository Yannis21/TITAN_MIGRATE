//AB/ Project sl193:deop
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl193:deop"
//AB/         Set ProjectFileName to "sl193.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl193 is a dbModalPanelSub
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Btnordh_DD is a DataDictionary
//     Btnordd_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Btnordd_DD
Register_Object Btnordh_DD
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object Mhxanik_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object sl193
Register_Object Towns_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
    Use SALESMEN.DD
    Use MHXANIK.DD
    Use CONSTRCT.DD
    Use CN.DD
    Use BTNORDH.DD
    Use BTNORDD.DD
    
    //AB-IgnoreEnd

    Object sl193 is a dbModalPanelSub

        //AB-StoreTopStart
        Function fnCn string descr Returns string
              clear cn
              move descr to cn.cn_code
              find eq cn by index.5
              move cn.cn_descr to descr
              function_return descr
        end_Function
        
        property string psclient     public ''
        property string pscn         public ''
        //AB-StoreTopEnd

        Set Label to "Ä®ÆúÂ¶ É.Ñ.é.è"
        Set Size to 233 519
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Object Payresp_DD is a Payresp_DataDictionary
        End_Object    // Payresp_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
            Set DDO_Server to (Areas_DD(self))
            Set DDO_Server to (Payresp_DD(self))
        End_Object    // Clients_DD

        Object Salesmen_DD is a Salesmen_DataDictionary
        End_Object    // Salesmen_DD

        Object Mhxanik_DD is a Mhxanik_DataDictionary
        End_Object    // Mhxanik_DD

        Object Constrct_DD is a Constrct_DataDictionary
        End_Object    // Constrct_DD

        Object Cn_DD is a Cn_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Salesmen_DD(self))
            Set DDO_Server to (Mhxanik_DD(self))
            Set DDO_Server to (Constrct_DD(self))
        End_Object    // Cn_DD

        Object Btnordh_DD is a Btnordh_DataDictionary
            Set DDO_Server to (Cn_DD(self))

            //AB-StoreStart
            set ordering to 1
            Begin_Constraints
                String sID scn
                Get psclient to sID
                get pscn     to scn
                if ((scn='') and (sid='')) set ordering to 1
                else set ordering to 6
                If (sID<>'') begin
                    Constrain btnordh.Client_ID eq sID
                end
                If (scn<>'') begin
                    constrain btnordh.cn_code   eq scn
                end
            
            End_Constraints
            
            //AB-StoreEnd

        End_Object    // Btnordh_DD

        Object Btnordd_DD is a BTNORDD_DataDictionary
            Set DDO_Server to (Btnordh_DD(self))
            Set Constrain_File to Btnordh.File_Number
        End_Object    // Btnordd_DD

        Set Main_DD to (Btnordh_DD(self))
        Set Server to (Btnordh_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Btnordh.File_Number
            Set Ordering to 6
            Set Size to 192 507
            Set Location to 6 6
            Set Auto_Index_State to FALSE

            Begin_Row
                Entry_Item Btnordh.Aa_deop
                Entry_Item Btnordh.Client_id
                Entry_Item (fsclient(self,btnordh.client_id))
                Entry_Item Btnordh.Cn_code
                Entry_Item (fncn(self,btnordh.cn_code))
                Entry_Item Btnordh.Deop_date
                Entry_Item Btnordh.Deop_lhxh
                Entry_Item Btnordh.Deop_active
                Entry_Item Btnordh.Locked
                Entry_Item Btnordh.Statero
            End_Row

            Set Form_Width    item 0 to 66
            Set Header_Label  item 0 to "â‡õ†°Ê™ É.Ñ.é.è"
            
            Set Form_Width    item 1 to 51
            Set Header_Label  item 1 to "â‡õ.èú¢·´û"
            
            Set Form_Width    item 2 to 87
            Set Header_Label  item 2 to "Ñß‡§¨£Âò èú¢·´û"
            
            Set Form_Width    item 3 to 51
            Set Header_Label  item 3 to "â‡õ.Ñ®ö¶¨"
            
            Set Form_Width    item 4 to 106
            Set Header_Label  item 4 to "èú®†ö®ò≠„ Ñ®ö¶¨"
            
            Set Form_Width    item 5 to 47
            Set Header_Label  item 5 to "Î§ò®•û"
            
            Set Form_Width    item 6 to 44
            Set Header_Label  item 6 to "ä„•û"
            
            Set Form_Width    item 7 to 19
            Set Header_Label  item 7 to "Off"
            Set Column_Checkbox_State  item 7 to True
            
            Set Form_Width    item 8 to 17
            Set Header_Label  item 8 to "âä"
            Set Column_Checkbox_State  item 8 to True
            
            Set Form_Width    item 9 to 13
            Set Header_Label  item 9 to "ë"
            Set Column_Checkbox_State  item 9 to True
            

            //AB-StoreStart
                                                                                
                                                                                
            Procedure Activating Returns Integer
                Integer rVal
                Forward Get Msg_Activating to rVal
                Send Rebuild_Constraints to (btnordh_DD(Self))
                set auto_index_state to true
                Procedure_Return rVal
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 201 335
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 201 389
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 201 445
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
        
        Procedure Activating Returns Integer
            Integer rVal
            Forward Get Msg_Activating to rVal
            Send Beginning_Of_Data to oSelList
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl193

//AB/     End_Object    // prj
