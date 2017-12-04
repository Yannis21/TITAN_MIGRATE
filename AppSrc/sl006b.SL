//AB/ Project sl006b
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl006b"
//AB/     Set ProjectFileName to "sl006b.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl006b is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Clients_DD
Register_Object Cmoves_DD
Register_Object Ctypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl006b


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CTYPKIN.DD
Use CLIENTS.DD
Use CMOVES.DD

//AB-IgnoreEnd

Object sl006b is a dbModalPanelSub

    //AB-StoreTopStart
                                
    Property String     psModule    Public ''
    Property String     psClientID  Public ''
    Property Date       pdApo       public ''
    Property Date       pdEos       public ''
    Property Integer    piXr_Or_Pi  public  0
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ î¶®‚‡§"
    Set Size to 148 519
    Set Location to 5 7
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Clients_DD is a Clients_DataDictionary
    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
                            
        Begin_Constraints
            Constrain Cmoves.Company_Code   Eq Syscurxr.Company_Code
            Constrain Cmoves.Branch_Code    Eq Syscurxr.Branch_Code
            Constrain Cmoves.Year_Year      Eq Syscurxr.Year_Year
            Constrain Cmoves.Module_From    Eq (psModule(Self))
        
        ////////    Constrain Cmoves.Flag_ypol      Eq 1
        
            If (psClientID(Self)<>'')   Constrain Cmoves.Client_ID      Eq (psClientID(Self))
            If (pdApo(Self)<>'')        Constrain Cmoves.Cmoves_Hmnia   Ge (pdApo(Self))
            If (pdEos(Self)<>'')        Constrain Cmoves.Cmoves_Hmnia   Le (pdEos(Self))
        
        End_Constraints
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cmoves_DD

    Set Main_DD to (Cmoves_DD(self))
    Set Server to (Cmoves_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Main_File to Cmoves.File_Number
        Set Ordering to 13
        Set Size to 105 505
        Set Location to 6 6

        Begin_Row
            Entry_Item Cmoves.Cmoves_recr
            Entry_Item Cmoves.Cmoves_hmnia
            Entry_Item Cmoves.Cmoves_par
            Entry_Item Ctypkin.Ctypkin_descr
            Entry_Item Clients.Client_name
            Entry_Item Cmoves.Cmoves_axia
            Entry_Item Cmoves.Cmoves_sc_code2
            Entry_Item Cmoves.Module_from
        End_Row

        Set Form_Width    item 0 to 46
        Set Header_Label  item 0 to "âÂ§û©û"
        
        Set Form_Width    item 1 to 53
        Set Header_Label  item 1 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 2 to 78
        Set Header_Label  item 2 to "Ä†´†¶¢¶öÂò"
        
        Set Form_Width    item 3 to 65
        Set Header_Label  item 3 to "âÂ§û©û"
        
        Set Form_Width    item 4 to 107
        Set Header_Label  item 4 to "ë¨§ò¢¢ò©Ê£ú§¶™"
        
        Set Form_Width    item 5 to 63
        Set Header_Label  item 5 to " Ä•Âò"
        
        Set Form_Width    item 6 to 42
        Set Header_Label  item 6 to "åÊ£†©£ò"
        
        Set Form_Width    item 7 to 45
        Set Header_Label  item 7 to "âÁ°¢‡£ò"
        

        //AB-StoreStart
        
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
        Set Location to 113 351

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 405

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 113 461

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
    
    Procedure Activate
        String  sNom
        Integer iDecs rVal
        Forward Send Activate
        Send Rebuild_Constraints        to Cmoves_DD
        Send Beginning_Of_Data          to oSelList True
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // sl006b

//AB/ End_Object    // prj
