//AB/ Project itemtehn
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "itemtehn"
//AB/     Set ProjectFileName to "itemtehn.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   itemtehn is a dbModalPanelSub
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Itemtehn_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Itemtehn_DD
Register_Object itemtehn
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Units_DD
Register_Object Witemkat_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD
Use ITEMTEHN.DD

//AB-IgnoreEnd

Object itemtehn is a dbModalPanelSub

    //AB-StoreTopStart
    
    Property String psItem Public ""
    
    //AB-StoreTopEnd

    Set Label to "âò´·¢¶ö¶™ íúÆ§†°È§ è®¶õ†òö®ò≠È§"
    Set Size to 148 275
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
    End_Object    // Item_DD

    Object Itemtehn_DD is a Itemtehn_DataDictionary

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
        
        begin_constraints
           Constrain ITEMtehn.company eq SysCurXR.Company_Code
           Constrain itemtehn.branch  eq SysCurXR.Branch_Code
           If (psItem(Self)<>"") Constrain Itemtehn.Item_Code Eq (psItem(Self))
        end_constraints
        
        //AB-StoreEnd

    End_Object    // Itemtehn_DD

    Set Main_DD to (Itemtehn_DD(self))
    Set Server to (Itemtehn_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Main_File to Itemtehn.File_Number
        Set Size to 105 259
        Set Location to 6 6

        Begin_Row
            Entry_Item Itemtehn.Code
            Entry_Item Item.Item_code
            Entry_Item Itemtehn.Hmnia
        End_Row

        Set Form_Width    item 0 to 72
        Set Header_Label  item 0 to "è®¶õ†òö®ò≠„"
        
        Set Form_Width    item 1 to 120
        Set Header_Label  item 1 to "â‡õ.ÑÂõ¶¨™"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "Ü£/§Âò à©ÆÁ¶™"
        

        //AB-StoreStart
        
        Procedure Activate
            Send Rebuild_Constraints    to itemtehn_DD
            Forward Send Activate
        End_procedure
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 114 108
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 114 163
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 114 217
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

End_Object    // itemtehn

//AB/ End_Object    // prj
