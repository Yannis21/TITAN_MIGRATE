//AB/ Project SL22c:ITEM-wapokat
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL22c:ITEM-wapokat"
//AB/     Set ProjectFileName to "Sl22c.SL"

// Project Object Structure
//   SL22c is a dbModalPanel
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     oSelList is a dbList
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
Register_Object SL22c
Register_Object Units_DD
Register_Object Witemkat_DD



//AB-StoreTopStart
open wapokat

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Button.Sub


Use WITEMKAT.DD
Use UNITS.DD
Use FPA.DD
Use ITEM.DD

//AB-IgnoreEnd

Object SL22c is a dbModalPanel

    //AB-StoreTopStart
    
    Property String     pscodekat               ''
    Function fswapokat string name Returns string
          string descr
          Clear wapokat
          move name to wapokat.wapokat_code
          find eq wapokat by index.1
          if (found=1) move wapokat.wapokat_descr to descr
          else         move ''          to descr
          function_return descr
    end_Function
    //AB-StoreTopEnd

    Set Minimize_Icon to FALSE
    Set Label to "¨ŽåĻ  é¤"
    Set Size to 270 484
    Set Location to 1 6

    //AB-DDOStart

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary

        //AB-StoreTopStart
                
                
        //AB-StoreTopEnd

        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
                
                
                
        Begin_Constraints
           String lsperi lscode lsvalue lstype lscodekat
           Get pscodekat  to lscodekat
           Move (Trim(lscodekat)) to lscodekat
           If (lscodekat<>'') Constrain item.wapokat_code eq lscodekat
        
        End_Constraints
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Item_DD

    Set Main_DD to (Item_DD(self))
    Set Server to (Item_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbList
        Set Main_File to Item.File_Number
        Set Ordering to 5
        Set Size to 234 475
        Set Location to -1 2
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentCellColor to 11783679

        Begin_Row
            Entry_Item Item.Item_code
            Entry_Item Item.Item_descr
            Entry_Item Item.Wapokat_code
            Entry_Item (fswapokat(self,item.wapokat_code))
            Entry_Item Item.Item_qual
            Entry_Item Fpa.Fpa_pososto
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "ā. åĻŦĒ"
        
        Set Form_Width    item 1 to 140
        Set Header_Label  item 1 to "¨ ¨­ã"
        
        Set Form_Width    item 2 to 70
        Set Header_Label  item 2 to "ā. ĢĻ¨åĒ"
        
        Set Form_Width    item 3 to 88
        Set Header_Label  item 3 to "¨ ¨­ã ĢĻ¨åĒ"
        
        Set Form_Width    item 4 to 64
        Set Header_Label  item 4 to "Ļ æĢĢ"
        
        Set Form_Width    item 5 to 45
        Set Header_Label  item 5 to "Ģ..."
        

        //AB-StoreStart
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&§ ĸĻã"
        Set Location to 237 316

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ąį¨āŠ"
        Set Location to 237 371

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "&¤ãĢŠ"
        Set Location to 237 426

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
    On_Key Key_Alt+Key_O Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_C Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_S Send KeyAction To (oSearch_bn(current_object))
    
    
    procedure page integer pagemode
        forward send page pagemode
        set location to 40,40
    end_procedure
    
    Procedure Activating Returns Integer
       Forward send Activating
       Send Rebuild_Constraints to (Item_DD(Self))
       send beginning_of_data to osellist true
    End_procedure
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // SL22c


//AB-StoreStart











//AB-StoreEnd

//AB/ End_Object    // prj
