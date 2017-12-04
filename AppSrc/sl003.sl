//AB/ Project SL003:Year
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL003:Year"
//AB/     Set ProjectFileName to "Sl003.sl"

// Project Object Structure
//   SL003 is a dbModalPanelSub
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
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
Register_Object SL003
Register_Object Year_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD

//AB-IgnoreEnd

CD_Popup_Object SL003 is a dbModalPanelSub

    //AB-StoreTopStart
    Property String psFragmaCompanyCode  ""
    Property String psFragmaBranchCode   ""
    property integer pifragmaactive public 0
    //AB-StoreTopEnd

    Set Minimize_Icon to FALSE
    Set Label to "ï®„©ú†™"
    Set Size to 149 449
    Set Location to 4 7
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))
    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))

        //AB-StoreStart
        Procedure OnConstrain
             String lsCompanyCode lsBranchCode
             integer iactive
             Get psFragmaCompanyCode to lsCompanyCode
             get pifragmaactive to iactive
             If (lsCompanyCode <> "") Begin
                Get psFragmaBranchCode  to lsBranchCode
                Constrain Year.Company_Code eq lsCompanyCode
                If (lsBranchCode <> "") Constrain Year.Branch_code eq lsBranchCode
             End
             if (iactive = 0) constrain year.working ne 1
        End_Procedure // OnConstrain
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Year_DD

    Set Main_DD to (Year_DD(self))
    Set Server to (Year_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Year.File_Number
        Set Size to 105 433
        Set Location to 6 6

        Begin_Row
            Entry_Item Year.Year_year
            Entry_Item Company.Company_code
            Entry_Item Company.Company_name
            Entry_Item Branch.Branch_code
            Entry_Item Branch.Branch_name
        End_Row

        Set Form_Width    item 0 to 36
        Set Header_Label  item 0 to "ï®„©û :          "
        
        Set Form_Width    item 1 to 71
        Set Header_Label  item 1 to "â‡õ†°Ê™ Ñ´ò†®Âò™"
        
        Set Form_Width    item 2 to 136
        Set Header_Label  item 2 to "é§¶£ò Ñ´ò†®Âò™"
        
        Set Form_Width    item 3 to 73
        Set Header_Label  item 3 to "â‡õ†°Ê™ ìß¶°/´¶™"
        
        Set Form_Width    item 4 to 109
        Set Header_Label  item 4 to "é§¶£ò ìß¶°/´¶™"
        

        //AB-StoreStart
                                                
        Property String psStoreFragmaCompanyCode  ""
        Property String psStoreFragmaBranchCode   ""
        
        Procedure Store_Defaults
            forward send Store_Defaults
            Set psStoreFragmaCompanyCode to (psFragmaCompanyCode(Self))
            Set psStoreFragmaBranchCode  to (psFragmaBranchCode(Self))
        end_Procedure // Store_Defaults
        
        Procedure Restore_Defaults
            forward send Restore_Defaults
            Set psFragmaCompanyCode to (psStoreFragmaCompanyCode(self))
            Set psFragmaBranchCode  to (psStoreFragmaBranchCode(self))
        end_Procedure // Restore_Defaults
        
        Procedure Activating
            Forward Send Activating
            Send Rebuild_Constraints to (Year_DD(self))
        End_Procedure // Activating
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 112 280

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 112 335

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 112 390

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

CD_End_Object    // SL003

//AB/ End_Object    // prj
