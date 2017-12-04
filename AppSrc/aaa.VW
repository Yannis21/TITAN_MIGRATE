//AB/ Project aaa
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "aaa"
//AB/         Set ProjectFileName to "aaa.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   aaa is a dbViewSubS
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     Witemcld_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Clients_Client_Id is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     Witemcl_ is a dbGridSub
//     Witemcld_ is a dbGridSub

// Register all objects
Register_Object Areas_DD
Register_Object aaa
Register_Object Cities_DD
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Payresp_DD
Register_Object Towns_DD
Register_Object Units_DD
Register_Object Witemcl_
Register_Object Witemcl_DD
Register_Object Witemcld_
Register_Object Witemcld_DD
Register_Object Witemkat_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbGrid.Sub

    Use WITEMKAT.DD
    Use UNITS.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMCL.DD
    Use WITEMCLD.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_aaa FOR ;
    ;
    Object aaa is a dbViewSubS

        //AB-StoreTopStart
                        
        Property String psModule    Public ''
        Property String psClientID  Public ''
        
        //AB-StoreTopEnd

        Set Label to "Put The Label of The View Here"
        Set Size to 269 497
        Set Location to 6 6

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
            Set DDO_Server to (Item_DD(self))

            //AB-StoreStart
            Begin_Constraints
                Constrain Witemcl.Client_Code Eq (psClientID(Self))
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Witemcl_DD

        Object Witemcld_DD is a Witemcld_DataDictionary
            Set DDO_Server to (Witemcl_DD(self))
            Set Constrain_File to Witemcl.File_Number
        End_Object    // Witemcld_DD

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

        Set Main_DD to (Witemcl_DD(self))
        Set Server to (Witemcl_DD(self))

        //AB-DDOEnd

        Object Clients_Client_Id is a dbFormSub
            Entry_Item Clients.Client_id
            Set Server to (Clients_DD(self))
            Set Label to "Client Id:"
            Set Size to 13 126
            Set Location to 7 46
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                        
            Procedure Find_Next
                Forward Send Find_Next
                Send Set_The_Constraints
            End_Procedure
            Procedure Find_Previous
                Forward Send Find_Previous
                Send Set_The_Constraints
            End_Procedure
            Procedure Find_GE
                Forward Send Find_GE
                Send Set_The_Constraints
            End_Procedure
            Procedure Prompt
                Forward Send Prompt
                Send Set_The_Constraints
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Clients_Client_Id

        Object Clients_Client_Name is a dbFormSub
            Entry_Item Clients.Client_name
            Set Server to (Clients_DD(self))
            Set Label to "Client Name:"
            Set Size to 13 212
            Set Location to 7 226
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_Name

        Object Witemcl_ is a dbGridSub
            Set Main_File to Witemcl.File_Number
            Set Size to 70 449
            Set Location to 38 22
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Item.Item_code
                Entry_Item Witemcl.Client_code
                Entry_Item Witemcl.Client_itemcode
                Entry_Item Witemcl.Client_date
                Entry_Item Witemcl.Client_price
                Entry_Item Witemcl.Item_descr
            End_Row

            Set Form_Width    item 0 to 120
            Set Header_Label  item 0 to "Item Code"
            
            Set Form_Width    item 1 to 120
            Set Header_Label  item 1 to "Client Code"
            
            Set Form_Width    item 2 to 120
            Set Header_Label  item 2 to "Client Itemcode"
            
            Set Form_Width    item 3 to 60
            Set Header_Label  item 3 to "Client Date"
            
            Set Form_Width    item 4 to 120
            Set Header_Label  item 4 to "Client Price"
            
            Set Form_Width    item 5 to 900
            Set Header_Label  item 5 to "Item Descr"
            
        End_Object    // Witemcl_

        Object Witemcld_ is a dbGridSub
            Set Main_File to Witemcld.File_Number
            Set Server to (Witemcld_DD(self))
            Set Size to 70 447
            Set Location to 119 24
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Witemcld.Item_code
                Entry_Item Witemcld.Client_code
                Entry_Item Witemcld.Value_date
                Entry_Item Witemcld.Axia00
                Entry_Item Witemcld.Qty
            End_Row

            Set Form_Width    item 0 to 120
            Set Header_Label  item 0 to "Item Code"
            
            Set Form_Width    item 1 to 120
            Set Header_Label  item 1 to "Client Code"
            
            Set Form_Width    item 2 to 60
            Set Header_Label  item 2 to "Value Date"
            
            Set Form_Width    item 3 to 132
            Set Header_Label  item 3 to "Axia00"
            
            Set Form_Width    item 4 to 96
            Set Header_Label  item 4 to "Qty"
            
        End_Object    // Witemcld_


        //AB-StoreStart
                        
        Procedure Set_The_Constraints
            String sID
            Get Field_Current_Value Of Clients_DD Field Clients.Client_ID to sID
            Move (Trim(sID)) to sID
            Set psClientID to sID
            Send Rebuild_Constraints to Witemcl_DD
            Send Rebuild_Constraints to Witemcld_DD
            Send Beginning_Of_Data to Witemcl_ True
            Send Beginning_Of_Data to Witemcld_ True
        End_Procedure
        
        Procedure Activate_View Returns Integer
            Integer rVal
            String sModule
            Forward Get Msg_Activate_View to rVal
            Get psMenuModule  Of Main_Menu to sModule
            Set psModule   to sModule
            Send Set_The_Constraints
            Procedure_return rval
        End_procedure
        
        
        //AB-StoreEnd

    CD_End_Object    // aaa

//AB/     End_Object    // prj
