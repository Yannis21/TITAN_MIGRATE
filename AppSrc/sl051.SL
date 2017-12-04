//AB/ Project sl051:Hmerhsia Deltia Paraggelion
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl051:Hmerhsia Deltia Paraggelion"
//AB/         Set ProjectFileName to "sl051.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl051 is a dbModalPanelSub
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Dorderh_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object Dorderh_DD
Register_Object Mhxanik_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object sl051
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
    Use CONSTRCT.DD
    Use SALESMEN.DD
    Use MHXANIK.DD
    Use CN.DD
    Use DORDERH.DD
    
    //AB-IgnoreEnd

    Object sl051 is a dbModalPanelSub

        //AB-StoreTopStart
        Property Date   FragmaHmnia     Public ''
        Property String FragmaClient    Public ''
        Property String FragmaCN        Public ''
        
        //AB-StoreTopEnd

        Set Label to "Ü£ú®„©†ò õú¢´Âò ßò®òööú¢†È§"
        Set Size to 250 514
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

        Object Constrct_DD is a Constrct_DataDictionary
        End_Object    // Constrct_DD

        Object Salesmen_DD is a Salesmen_DataDictionary
        End_Object    // Salesmen_DD

        Object Mhxanik_DD is a Mhxanik_DataDictionary
        End_Object    // Mhxanik_DD

        Object Cn_DD is a Cn_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Constrct_DD(self))
            Set DDO_Server to (Salesmen_DD(self))
            Set DDO_Server to (Mhxanik_DD(self))
        End_Object    // Cn_DD

        Object Dorderh_DD is a Dorderh_DataDictionary

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set DDO_Server to (Cn_DD(self))

            //AB-StoreStart
                    
            Begin_Constraints
                Date    dHmnia
                String  sClient sCN
                Get FragmaHmnia  to dHmnia
                Get FragmaClient to sClient
                Get FragmaCN     to sCN
                If (dHmnia<>'') Begin
                    Set Ordering to 3
                    Constrain DorderH.DorderH_Date Eq dHmnia
                    If (sClient<>'') Begin
                        Constrain DorderH.Client_ID Eq sClient
                        If (sCN<>'') Constrain DorderH.CN_Code Eq sCN
                    End
                End
                Else Begin
                    Set Ordering to 5
                    If (sClient<>'') Begin
                        Constrain DorderH.Client_ID Eq sClient
                        If (sCN<>'') Constrain DorderH.CN_Code Eq sCN
                    End
                End
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Dorderh_DD

        Set Main_DD to (Dorderh_DD(self))
        Set Server to (Dorderh_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub

            //AB-StoreTopStart
                            
            //AB-StoreTopEnd

            Set Main_File to Dorderh.File_Number
            Set Size to 208 499
            Set Location to 2 6

            Begin_Row
                Entry_Item Dorderh.Dorderh_id
                Entry_Item Dorderh.Dorderh_date
                Entry_Item Cn.Cn_code
                Entry_Item Cn.Cn_descr
                Entry_Item Clients.Client_id
                Entry_Item Clients.Client_name
            End_Row

            Set Form_Width    item 0 to 55
            Set Header_Label  item 0 to "â‡õ"
            
            Set Form_Width    item 1 to 46
            Set Header_Label  item 1 to "Ü£ú®/§Âò"
            
            Set Form_Width    item 2 to 58
            Set Header_Label  item 2 to "Ñ®ö¶"
            
            Set Form_Width    item 3 to 138
            Set Header_Label  item 3 to ""
            
            Set Form_Width    item 4 to 60
            Set Header_Label  item 4 to "èú¢·´û™"
            
            Set Form_Width    item 5 to 133
            Set Header_Label  item 5 to ""
            

            //AB-StoreStart
                            
            Property Date   StoreFragmaHmnia     Public ''
            Property String StoreFragmaClient    Public ''
            Property String StoreFragmaCN        Public ''
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaHmnia     to (FragmaHmnia (Self))
                   Set StoreFragmaClient    to (FragmaClient(Self))
                   Set StoreFragmaCN        to (FragmaCN    (Self))
            End_Procedure
            
            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set FragmaHmnia          to (StoreFragmaHmnia (Self))
                   Set FragmaClient         to (StoreFragmaClient(Self))
                   Set FragmaCN             to (StoreFragmaCN    (Self))
            End_Procedure
            
            Procedure Activating
               Forward Send Activating
               Send Rebuild_Constraints to (DorderH_DD(Self))
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 218 345

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 218 400

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 218 455

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
        
        Procedure Activating
           Forward Send Activating
           Send Beginning_Of_Data to oSelList True
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // sl051

//AB/     End_Object    // prj
