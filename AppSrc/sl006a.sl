//AB/ Project sl006a : Cmoves Alias Lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl006a : Cmoves Alias Lookup"
//AB/     Set ProjectFileName to "sl006a.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl006a is a dbModalPanelSub
//     Cmovesa_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Cmovesa_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl006a



//AB-StoreTopStart
Open Clients
Open Ctypkin

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CMOVESA.DD

//AB-IgnoreEnd

Object sl006a is a dbModalPanelSub

    //AB-StoreTopStart
    Property String     psModule    Public ''
    Property String     psClientID  Public ''
    Property Integer    piXr_Or_Pi  Public  0
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™    "
    Set Size to 148 493
    Set Location to 5 7
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE
    Set Popup_State to TRUE

    //AB-DDOStart

    Object Cmovesa_DD is a Cmovesa_DataDictionary

        //AB-StoreStart
        
        
        Procedure OnConstrain
            Forward Send OnConstrain
            Constrain Cmovesa.Company_Code   Eq Syscurxr.Company_Code
            Constrain Cmovesa.Year_Year      Eq Syscurxr.Year_Year
            If (psClientID(Self)<>'')   Constrain Cmovesa.Client_ID      Eq (psClientID(Self))
            If (psModule(Self)  <>'')   Constrain Cmovesa.Module_From    Eq (psModule(Self))
        
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // Cmovesa_DD

    Set Main_DD to (Cmovesa_DD(self))
    Set Server to (Cmovesa_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub

        //AB-StoreTopStart
                            
        Function fsClientName String asRecr Returns String
            Clear Clients
            move asrecr to clients.client_recr
            Find Eq Clients By Index.2
            function_return clients.client_name
        End_Function
        
        Function fsCtypkinDescr String asRecr Returns String
            Clear Ctypkin
            Move asRecr to Ctypkin.Ctypkin_Recr
            Find Eq Ctypkin By Index.2
            Function_Return Ctypkin.Ctypkin_Descr
        End_Function
        
        
        
        //AB-StoreTopEnd

        Set Main_File to Cmovesa.File_Number
        Set Size to 105 478
        Set Location to 6 6
        Set Auto_Server_State to TRUE

        Begin_Row
            Entry_Item Cmovesa.Cmoves_recr
            Entry_Item Cmovesa.Cmoves_hmnia
            Entry_Item Cmovesa.Cmoves_par
            Entry_Item (fsCtypkinDescr(Self,Cmovesa.Ctypkin_Recr))
            Entry_Item (fsClientName(Self,Cmovesa.Client_Recr))
            Entry_Item Cmovesa.Cmoves_axia
            Entry_Item Cmovesa.Branch_code
        End_Row

        Set Form_Width    item 0 to 45
        Set Header_Label  item 0 to "âÂ§û©û"
        
        Set Form_Width    item 1 to 57
        Set Header_Label  item 1 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 2 to 105
        Set Header_Label  item 2 to "Ä†´†¶¢¶öÂò"
        
        Set Form_Width    item 3 to 43
        Set Header_Label  item 3 to "âÂ§û©û"
        
        Set Form_Width    item 4 to 116
        Set Header_Label  item 4 to "ë¨§ò¢¢ò©Ê£ú§¶™"
        
        Set Form_Width    item 5 to 60
        Set Header_Label  item 5 to " Ä•Âò"
        
        Set Form_Width    item 6 to 45
        Set Header_Label  item 6 to "âÁ°¢‡£ò"
        

        //AB-StoreStart
                            
        Procedure Activating
            Forward Send Activating
            Send Rebuild_Constraints to (Cmovesa_DD(Self))
        End_procedure
        
        Procedure End_Construct_Object
            String  sNom
            Integer iDecs
            Forward Send End_Construct_Object
            Move SysCurxr.C_Code0 to sNom
            Clear Nomisma
            Move sNom to Nomisma.Nomisma_Code
            Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
            If (Found=1)    Move Nomisma.Dekadika to iDecs
            Else            Move 0 to iDecs
        
            // é®†ù¶¨£ú ß‡™ ò§ ´¶ ôò©†°Ê §¶£†©£ò Æ®„©û™ ÉÑå úÆú† õú°òõ†°·
            // ´Ê´ú ú•' ¶®†©£¶Á ô·ù¶¨£ú ú£ú†™ 2
            If (iDecs=0) Move 2 to iDecs
            //
        
            Set Points          Item 5 to       iDecs
            Set Numeric_Mask    Item 5 to 14    iDecs '*, '
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 325

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 379

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 113 435

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
                                        
    Set Modal_State to True
    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    Procedure Activate
        String  sNom
        Integer iDecs rVal
    
        Move SysCurxr.C_Code0                   to sNom
        Clear Nomisma
        Move sNom                               to Nomisma.Nomisma_Code
        Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
        If (Found=1)    Move Nomisma.Dekadika   to iDecs
        Else            Move 0                  to iDecs
    
        Set Points Of oSelList Item 4   to iDecs
        Send Rebuild_Constraints        to Cmovesa_DD
        Send Beginning_Of_Data          to oSelList True
        Forward Send Activate
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // sl006a


//AB-StoreStart
                            
//AB-StoreEnd

//AB/ End_Object    // prj
