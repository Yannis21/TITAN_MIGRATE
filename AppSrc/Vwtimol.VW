//AB/ Project Vwtimol:timokatalogoi
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Vwtimol:timokatalogoi"
//AB/     Set ProjectFileName to "Vwtimol.VW"
//AB/     Set GenerateFileName to "Item.vw"

// Project Object Structure
//   Vwtimol is a dbView
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     Witemcld_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//     Container1 is a dbContainer3d
//       TextBoxSub3 is a TextBoxSub
//       Clients_Client_Id is a dbFormSub
//       Clients_Client_Name is a dbFormSub
//       Witemcl_ is a dbGridSub
//     Witemcld_ is a dbGridSub
//     TextBoxSub25 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object Branch_Branch_Name
Register_Object Cities_DD
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Company_Company_Name
Register_Object Container1
Register_Object Country_DD
Register_Object dbGroupSub1
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Payresp_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub25
Register_Object TextBoxSub3
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Towns_DD
Register_Object Units_DD
Register_Object Vwtimol
Register_Object Witemcl_
Register_Object Witemcl_DD
Register_Object Witemcld_
Register_Object Witemcld_DD
Register_Object Witemkat_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbGrid.Sub

Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD
Use SYSCURXR.DD
Use WITEMCL.DD
Use WITEMCLD.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Vwtimol FOR Vwtimol

Object Vwtimol is a dbView

    //AB-StoreTopStart
    property string psmodule public ''
    property string psClientID public ''
    //AB-StoreTopEnd

    Set Label to "í†£¶°ò´·¢¶ö¶†"
    Set Size to 268 469
    Set Location to 6 29

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

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Witemcl_DD is a Witemcl_DataDictionary
        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
        
        Procedure OnConstrain
            string sclient
            Constrain witemcl.client_code  Eq (psClientID(self))
        end_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Witemcl_DD

    Object Witemcld_DD is a Witemcld_DataDictionary
        Set DDO_Server to (Witemcl_DD(self))
        Set Constrain_File to Witemcl.File_Number

        //AB-StoreStart
        
        //Begin_Constraints
        //    Constrain Witemcld Relates to Witemcl
        //End_Constraints
        
        
        //AB-StoreEnd

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

        //AB-StoreStart
        
        Procedure OnConstrain
               If (psModule(vwtimol(Self))='01')  Constrain Clients.is_Client       Eq '1'
          Else If (psModule(vwtimol(Self))='02')  Constrain Clients.is_Promhtheyths Eq '1'
        end_procedure
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Set Main_DD to (Witemcl_DD(self))
    Set Server to (Witemcl_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 449
        Set Location to -2 5
        Set Visible_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 83
            Set Location to 9 74
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 215
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 383
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
            
            //AB-StoreEnd

        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 165
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 334
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub10


        //AB-StoreStart
        
        
        //AB-StoreEnd

    End_Object    // dbGroupSub1

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 127 449
        Set Location to 4 5
        Object TextBoxSub3 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ î¶®‚ò"
            Set Location to 6 2
            Set Size to 10 56
        End_Object    // TextBoxSub3

        Object Clients_Client_Id is a dbFormSub
            Entry_Item Clients.Client_id
            Set Server to (Clients_DD(self))
            Set Size to 13 89
            Set Location to 4 76
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure Beginning_Of_Data
                Forward Send Beginning_Of_Data
                Send Set_The_Constraints
            End_Procedure
            Procedure End_Of_Data
                Forward Send End_Of_Data
                Send Set_The_Constraints
            End_Procedure
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
                Set psModule Of (sl100(Self)) to (psModule(vwtimol(Self)))
                Forward Send Prompt
                Send Set_The_Constraints
            End_Procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_Client_Id

        Object Clients_Client_Name is a dbFormSub
            Entry_Item Clients.Client_name
            Set Server to (Clients_DD(self))
            Set Size to 13 271
            Set Location to 4 171
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // Clients_Client_Name

        Object Witemcl_ is a dbGridSub
            Set Main_File to Witemcl.File_Number
            Set Size to 100 442
            Set Location to 22 1
            Set Color to 14280447
            Set CurrentRowColor to 11783679
            Set CurrentCellColor to 11783679
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Witemcl.Recnum
                Entry_Item Item.Item_code
                Entry_Item (Fsitem(self,item.item_code))
                Entry_Item Witemcl.Client_itemcode
                Entry_Item Witemcl.Client_date
                Entry_Item Witemcl.Client_price
            End_Row

            Set Form_Width    item 0 to 0
            Set Header_Label  item 0 to "Recnum"
            
            Set Form_Width    item 1 to 77
            Set Header_Label  item 1 to "â‡õ†°Ê™ ÑÂõ¶¨™"
            
            Set Form_Width    item 2 to 110
            Set Header_Label  item 2 to "èú®†ö®ò≠„ ÑÂõ¶¨™"
            
            Set Form_Width    item 3 to 89
            Set Header_Label  item 3 to "â‡õ.ÑÂõ¶¨™ î¶®‚ò"
            
            Set Form_Width    item 4 to 79
            Set Header_Label  item 4 to "í'Ü£/§Âò Ñ†©òö‡ö„™ "
            
            Set Form_Width    item 5 to 79
            Set Header_Label  item 5 to "í'í†£„ Ñ†©òö‡ö„™"
            

            //AB-StoreStart
            set child_table_state to true
            Set Column_Option Item 0 to NoEnter True
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos  SysCurXr.C_Code0  to    iDecimals
                Set Points Item 5 to iDecimals
                Set Numeric_Mask Item 5 to 14 iDecimals ' ,*'
            End_Procedure
            
            
            procedure item_change integer fromi integer toi returns integer
                local integer rval icol iBase_item
                Local String Sval
                forward get msg_item_change fromi toi to rval
                if (focus(Desktop) = witemcl_(self)) begin
                   Get Current_Col to iCol
                   Get Base_Item to iBase_item
                   if (icol = 1) begin
                      Get Value Item (iBase_item+1) to Sval
                      Move (fsitem(self,Sval)) to Sval
                      set value item  (iBase_item+2)  to Sval
                   end
                end
                procedure_return rval
            end_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemcl_


        //AB-StoreStart
        
        //AB-StoreEnd

    End_Object    // Container1

    Object Witemcld_ is a dbGridSub
        Set Main_File to Witemcld.File_Number
        Set Server to (Witemcld_DD(self))
        Set Size to 100 451
        Set Location to 145 4
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Witemcld.Value_date
            Entry_Item Witemcld.Qty
            Entry_Item Witemcld.Axia00
            Entry_Item Witemcld.Pcdisc
            Entry_Item Witemcld.Orio
            Entry_Item Witemcld.Pagioorio
            Entry_Item Witemcld.Pcdiscantlia
        End_Row

        Set Form_Width    item 0 to 62
        Set Header_Label  item 0 to "Ü£/§Âò à©ÆÁ¶™"
        
        Set Form_Width    item 1 to 59
        Set Header_Label  item 1 to "è¶©Ê´û´ò ÑÈ™"
        
        Set Form_Width    item 2 to 74
        Set Header_Label  item 2 to "âòüò®„ ´†£„ ãÊ§"
        
        Set Form_Width    item 3 to 59
        Set Header_Label  item 3 to "è¶©¶©´Ê Ñ°ß´"
        
        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "é®†¶ â¨ô†°È§"
        
        Set Form_Width    item 5 to 69
        Set Header_Label  item 5 to "è·ö†¶ é®Â¶¨"
        
        Set Form_Width    item 6 to 61
        Set Header_Label  item 6 to "è¶©¶©´Ê Ñ°ß´"
        

        //AB-StoreStart
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimals
            Set Points Item 2 to iDecimals
            Set Points Item 5 to iDecimals
            Set Numeric_Mask Item 2 to 14 iDecimals ' ,*'
            Set Numeric_Mask Item 5 to 14 iDecimals ' ,*'
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Witemcld_

    Object TextBoxSub25 is a TextBoxSub
        Set Label to "ë´òüú®‚™ ö†ò ï®„©û Ä§´¢Âò™"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 133 256
        Set Size to 10 159
        Set FontWeight to 800
        Set Justification_Mode to jMode_Center
    End_Object    // TextBoxSub25


    //AB-StoreStart
    Procedure Set_The_Constraints
        String sID
        Get Field_Current_Value Of Clients_DD Field Clients.Client_ID to sID
        Move (Trim(sID)) to sID
        Set psClientID to sID
        Send Rebuild_Constraints to clients_dd
        Send Rebuild_Constraints to Witemcl_DD
        Send Rebuild_Constraints to Witemcld_DD
        Send Beginning_Of_Data to (Witemcl_(container1(self))) True
        Send Beginning_Of_Data to (Witemcld_(self)) True
    End_Procedure
    
    Procedure Activate_View Returns Integer
        String  sModule sIsClient sIsPromhtheyths sID
        Integer rVal iCurRec
        Get Field_Current_Value Of Clients_DD Field Clients.Client_ID to sID
        Get psMenuModule  Of Main_Menu  to sModule
        Set psModule to sModule
        if (smodule = "01") Set Label Of VWtimol to "í†£¶°ò´·¢¶ö¶† èú¢ò´È§"
        else if (smodule = "02") Set Label Of VWtimol to "í†£¶°ò´·¢¶ö¶† è®¶£ûüú¨´È§"
        If (sID<>'') Send Clear to Clients_DD
        Send Set_The_Constraints
        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Vwtimol

//AB/ End_Object    // prj
