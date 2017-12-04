//AB/ Project btnordd
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "btnordd"
//AB/         Set ProjectFileName to "btnordd.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   btnordd is a dbModalPanelSub
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
Register_Object btnordd
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
    Use BTNORDH.DD
    Use BTNORDD.DD
    
    //AB-IgnoreEnd

    Object btnordd is a dbModalPanelSub

        //AB-StoreTopStart
                                
        Property String FragmaClient    Public ''
        Property String FragmaCN        Public ''
        Property Date   FragmaHmnia     Public ''
        
        //AB-StoreTopEnd

        Set Label to "Ñß†¢¶ö„ ú†õÈ§ òß¶ ÉÑéè"
        Set Size to 255 381
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

        Object Btnordh_DD is a Btnordh_DataDictionary
            Set DDO_Server to (Cn_DD(self))
        End_Object    // Btnordh_DD

        Object Btnordd_DD is a Btnordd_DataDictionary
            Set DDO_Server to (Btnordh_DD(self))

            //AB-StoreStart
                        
            Function fiDateOk Returns Integer
                Date    dHmnia
                Get FragmaHmnia to dHmnia
                If ((btnordd.arxh_date<=dHmnia) And (btnordd.deop_date>=dHmnia)) ;
                     Function_Return 1
                Else Function_Return 0
            End_Function
            
            Begin_Constraints
                If (FragmaCN(Self)<>'') Begin
                    Constrain BtnOrdD.Vclient_ID    Eq (FragmaClient(Self))
                    Constrain BtnOrdD.VCn_Code      Eq (FragmaCN    (Self))
                    Constrain BtnOrdD.Vactive       Eq 0 // Active
                    If (FragmaHmnia(Self)<>'') ;
                        Constrain Btnordd As (fiDateOk(Self)=1)
                End
            End_Constraints
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Btnordd_DD

        Set Main_DD to (Btnordd_DD(self))
        Set Server to (Btnordd_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Main_File to Btnordd.File_Number
            Set Size to 211 365
            Set Location to 6 6

            Begin_Row
                Entry_Item Btnordd.Vitem
                Entry_Item Btnordd.Vitem_descr
                Entry_Item Btnordd.Vqual
                Entry_Item Btnordd.Vqty
            End_Row

            Set Form_Width    item 0 to 63
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 172
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 80
            Set Header_Label  item 2 to "è¶†Ê´û´ò"
            
            Set Form_Width    item 3 to 43
            Set Header_Label  item 3 to "è¶©Ê´û´ò"
            

            //AB-StoreStart
            
            Property String StoreFragmaClient    Public ''
            Property String StoreFragmaCN        Public ''
            Property String StoreFragmaHmnia     Public ''
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaClient    to (FragmaClient(Self))
                   Set StoreFragmaCN        to (FragmaCN    (Self))
                   Set StoreFragmaHmnia     to (FragmaHmnia (Self))
            End_Procedure
            
            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set FragmaClient to (StoreFragmaClient(Self))
                   Set FragmaCN     to (StoreFragmaCN    (Self))
                   Set FragmaHmnia  to (StoreFragmaHmnia (Self))
            End_Procedure
            
            Procedure Activating
               Forward Send Activating
               Send Rebuild_Constraints to (BtnOrdD_DD(Self))
            End_Procedure
            
            Set Points Item 3 to 2
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 221 211

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 221 265

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 221 321

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

    End_Object    // btnordd

//AB/     End_Object    // prj
