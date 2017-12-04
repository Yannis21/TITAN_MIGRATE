//AB/ Project sl94_1:paraggelies Prom
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl94_1:paraggelies Prom"
//AB/     Set ProjectFileName to "sl94_1.SL"

// Project Object Structure
//   sl94_1 is a dbModalPanelSub
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Clorder_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Clorder_DD
Register_Object Country_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Payresp_DD
Register_Object sl94_1
Register_Object Towns_DD



//AB-StoreTopStart
open nomisma
//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use PAYRESP.DD
Use AREAS.DD
Use CLIENTS.DD
Use CLORDER.DD

//AB-IgnoreEnd

Object sl94_1 is a dbModalPanelSub

    //AB-StoreTopStart
    
    property string psmodule public ''
    property string psclient public ''
    
    //AB-StoreTopEnd

    Set Label to "èò®òööú¢Âú™ Ä§· è®¶£ûüú¨´„"
    Set Size to 239 506
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

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Payresp_DD(self))
        Set DDO_Server to (Areas_DD(self))
    End_Object    // Clients_DD

    Object Clorder_DD is a Clorder_DataDictionary
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
        Procedure OnConstrain
            Constrain clorder.company_code  eq SysCurXR.Company_Code
            Constrain clorder.Branch_Code   eq SysCurXR.Branch_Code
            Constrain clorder.Year_Year     eq SysCurXR.Year_Year
        
            If (psModule(Self)<>'') Begin
                Constrain clorder.Module eq (psModule(Self))
            End
            If (psclient(Self)<>'') Begin
                Constrain clorder.clients_code eq (psclient(Self))
            End
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clorder_DD

    Set Main_DD to (Clorder_DD(self))
    Set Server to (Clorder_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Clorder.File_Number
        Set Ordering to 1
        Set Size to 199 493
        Set Location to 6 6
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679

        Begin_Row
            Entry_Item Clorder.Aapar
            Entry_Item Clients.Client_name
            Entry_Item Clorder.Date
            Entry_Item Clorder.Armod
            Entry_Item Clorder.Nomisma
            Entry_Item Clorder.Total
            Entry_Item Clorder.Finish
            Entry_Item Clorder.Okey
            Entry_Item Clorder.Akyrh
            Entry_Item Clorder.Rial_date
        End_Row

        Set Form_Width    item 0 to 52
        Set Header_Label  item 0 to "Ä/ò èò®òöö."
        
        Set Form_Width    item 1 to 87
        Set Header_Label  item 1 to ""
        
        Set Form_Width    item 2 to 45
        Set Header_Label  item 2 to "Ü£/§Âò "
        
        Set Form_Width    item 3 to 82
        Set Header_Label  item 3 to "ìßúÁü¨§¶™ ëÁ§´ò•û™"
        
        Set Form_Width    item 4 to 30
        Set Header_Label  item 4 to "åÊ£"
        
        Set Form_Width    item 5 to 69
        Set Header_Label  item 5 to "ëÁ§.èò®òööú¢Âò™"
        
        Set Form_Width    item 6 to 17
        Set Header_Label  item 6 to "éâ"
        Set Column_Checkbox_State  item 6 to True
        
        Set Form_Width    item 7 to 33
        Set Header_Label  item 7 to "Ñß†ôúô."
        Set Column_Checkbox_State  item 7 to True
        
        Set Form_Width    item 8 to 30
        Set Header_Label  item 8 to "Ä°¨®û"
        Set Column_Checkbox_State  item 8 to True
        
        Set Form_Width    item 9 to 43
        Set Header_Label  item 9 to "èú®ò†‡ü."
        

        //AB-StoreStart
        Set Points          Item 5 to       2
        Set Numeric_Mask    Item 5 to 14    2 ' ,*'
        set ordering to 1
        Property String Store_Fragma_prom public ""
        //
        Procedure Store_Defaults
           forward send Store_Defaults
           Set Store_Fragma_prom to (psclient(Self))
        end_Procedure
        //
        Procedure Restore_Defaults
            forward send Restore_Defaults
            Set psclient to (Store_Fragma_prom(Self))
        end_Procedure
        //
        
        
        
        Procedure Activating Returns Integer
            Integer rVal
            Forward Get Msg_Activating to rVal
                 if (psmodule(self)='01') set label of sl100 to 'âò´·¢¶ö¶™ èú¢ò´È§'
            else if (psmodule(self)='02') set label of sl100 to 'âò´·¢¶ö¶™ è®¶£ûüú¨´È§'
            Send Rebuild_Constraints to Clorder_DD
          //  Send Beginning_Of_Data to oSelList True
            Procedure_Return rVal
        End_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "Äß¶õ¶Æ„"
        Set Location to 209 334

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "Ä°Á®‡©û"
        Set Location to 209 388

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä§òù„´û©û"
        Set Location to 209 444

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
    
    Set Locate_Mode to Center_On_Screen
    
    Procedure Activating returns integer
        string smodule
        integer rval
        get psmodule to smodule
        if (sModule='01') set header_label  of (osellist(self)) item 1 to 'èú¢·´û™'
        else              set header_label  of (osellist(self)) item 1 to 'è®¶£ûüú¨´„™'
        if (sModule='01') set label of sl94_1 to 'èò®òööú¢Âú™ / èú¢·´û'
        else              set label of sl94_1 to 'èò®òööú¢Âú™ / è®¶£ûüú¨´„'
        Send Rebuild_Constraints to clorder_DD
        Send Beginning_Of_Data to oSelList True
        Procedure_Return rVal
    
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // sl94_1


//AB-StoreStart
                            
                            
                            
//AB-StoreEnd

//AB/ End_Object    // prj
