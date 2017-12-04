//AB/ Project SL002:Branch
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL002:Branch"
//AB/     Set ProjectFileName to "Sl002.sl"

// Project Object Structure
//   SL002 is a dbModalPanelSub
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Branch_DD
Register_Object Company_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL002


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use COMPANY.DD
Use BRANCH.DD

//AB-IgnoreEnd

Object SL002 is a dbModalPanelSub

    //AB-StoreTopStart
    Property String psFragmaCompanyCode  ""
    
    //AB-StoreTopEnd

    Set Minimize_Icon to FALSE
    Set Label to "ìß¶°ò´ò©´„£ò´ò"
    Set Size to 146 430
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))

        //AB-StoreStart
        Procedure OnConstrain
             String lsCompanyCode
             Get psFragmaCompanyCode to lsCompanyCode
             If (lsCompanyCode <> "") Constrain Branch.Company_code eq lsCompanyCode
        End_Procedure // OnConstrain
        
        
        
        //AB-StoreEnd

    End_Object    // Branch_DD

    Set Main_DD to (Branch_DD(self))
    Set Server to (Branch_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Branch.File_Number
        Set Size to 105 415
        Set Location to 6 6

        Begin_Row
            Entry_Item Branch.Branch_code
            Entry_Item Branch.Branch_name
            Entry_Item Company.Company_code
            Entry_Item Company.Company_name
            Entry_Item Branch.Beto_site
            Entry_Item Branch.Branch_recr
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 128
        Set Header_Label  item 1 to "é§¶£ò"
        
        Set Form_Width    item 2 to 69
        Set Header_Label  item 2 to "â‡õ†°Ê™ Ñ´ò†®Âò™"
        
        Set Form_Width    item 3 to 109
        Set Header_Label  item 3 to "é§¶£ò Ñ´ò†®Âò™"
        
        Set Form_Width    item 4 to 42
        Set Header_Label  item 4 to "Site"
        
        Set Form_Width    item 5 to 0
        Set Header_Label  item 5 to ""
        

        //AB-StoreStart
                
        Property String psStoreFragmaCompanyCode  ""
        
        Procedure Store_Defaults
            forward send Store_Defaults
            Set psStoreFragmaCompanyCode to (psFragmaCompanyCode(Self))
        end_Procedure // Store_Defaults
        
        Procedure Restore_Defaults
            forward send Restore_Defaults
            Set psFragmaCompanyCode to (psStoreFragmaCompanyCode(self))
        end_Procedure // Restore_Defaults
        
        Procedure Activating
            Forward Send Activating
            Send Rebuild_Constraints to (Branch_DD(self))
        End_Procedure // Activating
        
        Set Column_Options Item 5 to NoEnter True
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 112 262
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 112 317
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 112 372
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

End_Object    // SL002

//AB/ End_Object    // prj
