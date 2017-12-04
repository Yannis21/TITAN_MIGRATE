//AB/ Project sl186:clients-item
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl186:clients-item"
//AB/         Set ProjectFileName to "sl186.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl186 is a dbModalPanelSub
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     oSelList is a dbListSub
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
Register_Object sl186
Register_Object Units_DD
Register_Object Witemcl_DD
Register_Object Witemkat_DD



    //AB-StoreTopStart
    open clients
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use WITEMKAT.DD
    Use UNITS.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMCL.DD
    
    //AB-IgnoreEnd

    Object sl186 is a dbModalPanelSub

        //AB-StoreTopStart
        property string psmodule public ''
        Function fnitem string name Returns string
            move name to item.item_code
            find eq item by index.5
            move item.item_descr to name
            function_return name
        end_Function
        Function fnclient string name Returns string
            move name to clients.client_id
            find eq clients by index.6
            move clients.client_name to name
            function_return name
        end_Function
        ProPerty String Fragmaprom Public ""
        property string fragmaprom1 public ""
        //AB-StoreTopEnd

        Set Label to "ÑÂõû Ä§· è®¶£ûüú¨´„"
        Set Size to 148 495
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

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

            //AB-StoreStart
                                                                                                                                                                                        
            //AB-StoreEnd

        End_Object    // Item_DD

        Object Witemcl_DD is a Witemcl_DataDictionary
            Set DDO_Server to (Item_DD(self))

            //AB-StoreStart
            
            Procedure OnConstrain
                string lsvalue
                get fragmaprom1 to lsvalue
                      if (psmodule(self)='01') constrain witemcl.is_client eq '1'
                else  if (psmodule(self)='02') constrain witemcl.is_client eq ''
                
                If (fragmaprom(Self)<>'') Begin
                    Constrain witemcl.item_code eq (fragmaprom(Self))
                End
                else begin
                    Constrain witemcl.client_code eq (fragmaprom1(Self))
                end
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemcl_DD

        Set Main_DD to (Witemcl_DD(self))
        Set Server to (Witemcl_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Witemcl.File_Number
            Set Size to 105 480
            Set Location to 6 6

            Begin_Row
                Entry_Item Witemcl.Client_code
                Entry_Item (Fnclient(self,witemcl.client_code))
                Entry_Item Witemcl.Item_code
                Entry_Item (fnitem(self,witemcl.item_code))
                Entry_Item Witemcl.Client_itemcode
                Entry_Item Witemcl.Client_date
                Entry_Item Witemcl.Client_price
            End_Row

            Set Form_Width    item 0 to 55
            Set Header_Label  item 0 to "â‡õ.î¶®‚ò"
            
            Set Form_Width    item 1 to 96
            Set Header_Label  item 1 to "Ñß‡§¨£Âò î¶®‚ò"
            
            Set Form_Width    item 2 to 60
            Set Header_Label  item 2 to "â‡õ.ÑÂõ¶¨™"
            
            Set Form_Width    item 3 to 90
            Set Header_Label  item 3 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
            
            Set Form_Width    item 4 to 60
            Set Header_Label  item 4 to "ÑÂõ¶™ è®¶£ûü."
            
            Set Form_Width    item 5 to 60
            Set Header_Label  item 5 to "í'Ü£/§Âò Ñ†©òö."
            
            Set Form_Width    item 6 to 52
            Set Header_Label  item 6 to "í'í†£„ Ñ†©òö."
            

            //AB-StoreStart
                        
            Property String Store_Fragma_prom public ""
            Set Points Item 6 to 0
            Procedure Store_Defaults
               forward send Store_Defaults
               Set Store_Fragma_prom to (Fragmaprom(Self))
            end_Procedure
            
            Procedure Restore_Defaults
                forward send Restore_Defaults
                local string lsT
                Get Store_Fragma_prom to lsT
                Set Fragmaprom to lsT
            end_Procedure
            
            
            
            //Procedure Activate
            //    Forward Send Activate
            //    Send Rebuild_Constraints to witemcl_DD
            //    Send Beginning_Of_Data to oSelList True
            //End_procedure
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 114 324

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 114 379

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 114 434

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

    End_Object    // sl186


    //AB-StoreStart
                            
                            
                            
    //AB-StoreEnd

//AB/     End_Object    // prj
