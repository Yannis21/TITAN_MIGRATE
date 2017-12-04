//AB/ Project sl006New
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl006New"
//AB/     Set ProjectFileName to "sl006New.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl006New is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     Cmoves_Axia_Pros_Sysx is a dbFormSub
//     Cmoves_Axia_Sysxet is a dbFormSub
//     Cmoves_Axia_Ypol_Sysx is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     RadioGroupSub2 is a RadioGroupSub
//       Radio4 is a RadioSub
//       Radio5 is a RadioSub
//       Radio6 is a RadioSub

// Register all objects
Register_Object Clients_DD
Register_Object Cmoves_Axia_Pros_Sysx
Register_Object Cmoves_Axia_Sysxet
Register_Object Cmoves_Axia_Ypol_Sysx
Register_Object Cmoves_DD
Register_Object Ctypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Radio4
Register_Object Radio5
Register_Object Radio6
Register_Object RadioGroupSub2
Register_Object sl006New
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use Rgroup.Sub
Use Radio.Sub


Use CTYPKIN.DD
Use CLIENTS.DD
Use CMOVES.DD

//AB-IgnoreEnd

Object sl006New is a dbModalPanelSub

    //AB-StoreTopStart
                    
    Property String     psModule    Public ''
    Property String     psClientID  Public ''
    Property Date       pdApo       public ''
    Property Date       pdEos       public ''
    Property Integer    piXr_Or_Pi  public  0
    Property Integer    piWhat      public  0
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ î¶®‚‡§"
    Set Size to 270 519
    Set Location to 5 7
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Clients_DD is a Clients_DataDictionary
    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
                    
        Begin_Constraints
            Constrain Cmoves.Company_Code   Eq SyscurXr.Company_Code
            Constrain Cmoves.Year_Year      Eq SyscurXr.Year_Year
            If (psClientID(Self)<>'')   Constrain Cmoves.Client_ID      Eq (psClientID(Self))
            If (pdApo     (Self)<>'')   Constrain Cmoves.Cmoves_Hmnia   Ge (pdApo(Self))
            If (pdEos     (Self)<>'')   Constrain Cmoves.Cmoves_Hmnia   Le (pdEos(Self))
            Constrain Cmoves.Module_From    Eq (psModule(Self))
                 If (piWhat(Self)=1) Constrain Cmoves.Flag_Ypol Eq 1
            Else If (piWhat(Self)=2) Constrain Cmoves.Flag_Ypol Eq 0
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
        Set Ordering to 4
        Set Size to 199 505
        Set Location to 31 7
        Set Auto_Index_State to FALSE

        Begin_Row
            Entry_Item Cmoves.Cmoves_hmnia
            Entry_Item Cmoves.Cmoves_par
            Entry_Item Ctypkin.Ctypkin_descr
            Entry_Item Clients.Client_name
            Entry_Item Cmoves.Cmoves_axia
            Entry_Item Cmoves.Cmoves_sc_code2
            Entry_Item Cmoves.Branch_code
        End_Row

        Set Form_Width    item 0 to 57
        Set Header_Label  item 0 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 1 to 121
        Set Header_Label  item 1 to "Ä†´†¶¢¶öÂò"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "âÂ§û©û"
        
        Set Form_Width    item 3 to 107
        Set Header_Label  item 3 to "ë¨§ò¢¢ò©Ê£ú§¶™"
        
        Set Form_Width    item 4 to 63
        Set Header_Label  item 4 to " Ä•Âò"
        
        Set Form_Width    item 5 to 42
        Set Header_Label  item 5 to "åÊ£†©£ò"
        
        Set Form_Width    item 6 to 45
        Set Header_Label  item 6 to "ìß¶°/£ò"
        

        //AB-StoreStart
                                
        Procedure Activating
            Forward Send Activating
            Set Auto_Index_State    to True
        //    Send Beginning_Of_Data  to oSelList True
        End_Procedure
        
        Procedure Activate
            Forward Send Activate
            Send Beginning_Of_Data  to oSelList True
        End_Procedure
        
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
            If (iDecs=0)    Move 2 to iDecs
            Set Points          Item 4 to       iDecs
            Set Numeric_Mask    Item 4 to 14    iDecs '*, '
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 236 350

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 236 404

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 236 460

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn

    Object Cmoves_Axia_Pros_Sysx is a dbFormSub
        Entry_Item Cmoves.Axia_pros_sysx
        Set Size to 13 54
        Set Location to 236 24
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set points item 0 to 2
        Set Numeric_Mask Item 0 to 8 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Cmoves_Axia_Pros_Sysx

    Object Cmoves_Axia_Sysxet is a dbFormSub
        Entry_Item Cmoves.Axia_sysxet
        Set Size to 13 54
        Set Location to 236 140
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set points item 0 to 2
        Set Numeric_Mask Item 0 to 8 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Cmoves_Axia_Sysxet

    Object Cmoves_Axia_Ypol_Sysx is a dbFormSub
        Entry_Item Cmoves.Axia_ypol_sysx
        Set Size to 13 54
        Set Location to 236 248
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                                                                                                            
        Set points item 0 to 2
        Set Numeric_Mask Item 0 to 8 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Cmoves_Axia_Ypol_Sysx

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ä•Âò"
        Set Location to 238 7
        Set Size to 10 15
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "ë¨©Æú´†©£‚§û"
        Set Location to 238 89
        Set Size to 10 49
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "É†òü‚©†£û"
        Set Location to 238 210
        Set Size to 10 35
    End_Object    // TextBoxSub3

    Object RadioGroupSub2 is a RadioGroupSub
        Set Label to "Ñß†¢¶ö„ â†§„©ú‡§"
        Set Size to 24 497
        Set Location to 3 9
        Object Radio4 is a RadioSub
            Set Label to "é¢ú™"
            Set Size to 10 37
            Set Location to 10 97
        End_Object    // Radio4

        Object Radio5 is a RadioSub
            Set Label to "ãú ¨ßÊ¢¶†ß¶ ©¨©Æ‚´†©û™"
            Set Size to 10 97
            Set Location to 10 167
        End_Object    // Radio5

        Object Radio6 is a RadioSub
            Set Label to "ï‡®Â™ ¨ßÊ¢¶†ß¶ ©¨©Æ‚´†©û™"
            Set Size to 10 111
            Set Location to 10 278
        End_Object    // Radio6


        //AB-StoreStart
                                                                                                                                                                
        Procedure Notify_Select_State integer iToItem integer iFromItem
            Set piWhat to iToItem
            Send Rebuild_Constraints to Cmoves_DD
            Send Beginning_Of_Data To oSelList True
        End_Procedure
        
        Set Current_Radio to 1
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub2


    //AB-StoreStart
                    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    Set Modal_State to True
    Set Locate_Mode to Center_On_Screen
    
    Procedure Activate
        String  sNom
        Integer iDecs rVal
        Set piWhat to 1
        Set Current_Radio Of RadioGroupSub2 to 1
        Send Rebuild_Constraints        to Cmoves_DD
        Forward Send Activate
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // sl006New

//AB/ End_Object    // prj
