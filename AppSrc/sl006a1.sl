//AB/ Project sl006a1
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl006a1"
//AB/     Set ProjectFileName to "sl006a1.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl006a1 is a dbModalPanelSub
//     Cmovesa_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     Cmoves_Axia_Ypol_Sysx is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     Cmoves_Axia_Sysxet is a dbFormSub
//     TextBoxSub2 is a TextBoxSub
//     Cmoves_Axia_Pros_Sysx is a dbFormSub
//     TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Cmoves_Axia_Pros_Sysx
Register_Object Cmoves_Axia_Sysxet
Register_Object Cmoves_Axia_Ypol_Sysx
Register_Object Cmovesa_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl006a1
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub
Use dbForm.Sub
Use Txtbox.Sub


Use CMOVESA.DD

//AB-IgnoreEnd

CD_Popup_Object sl006a1 is a dbModalPanelSub

    //AB-StoreTopStart
                                                        
    Property String     FragmaClientID  Public ''
    Property Integer    piXr_Or_Pi      Public  0
    Property String     psModule        Public ''
    Property Date       pdApo           public ''
    Property Date       pdEos           public ''
    Property Integer    piWhat          public  0
    
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™"
    Set Size to 231 495
    Set Location to 4 6
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Cmovesa_DD is a Cmovesa_DataDictionary

        //AB-StoreStart
                    
        Begin_Constraints
            Constrain Cmovesa.Company_Code  Eq SyscurXr.Company_Code
            Constrain Cmovesa.Year_Year     Eq SyscurXr.Year_Year
            Constrain Cmovesa.Flag_Ypol     Eq 1
            Constrain CmovesA.Client_ID     Eq (FragmaClientID(Self))
            Constrain CmovesA.Module_From   Eq (psModule(Self))
                 If (piXr_or_Pi(Self)=1)    Constrain Cmovesa.Flag_Copen Eq 2
            Else If (piXr_or_Pi(Self)=2)    Constrain Cmovesa.Flag_Copen Eq 1
            If (pdApo(Self)<>'')            Constrain Cmoves.Cmoves_Hmnia   Ge (pdApo(Self))
            If (pdEos(Self)<>'')            Constrain Cmoves.Cmoves_Hmnia   Le (pdEos(Self))
        End_Constraints
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cmovesa_DD

    Set Main_DD to (Cmovesa_DD(self))
    Set Server to (Cmovesa_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub

        //AB-StoreTopStart
                                                                                                                                                        
                                                                                                                                                        
        //AB-StoreTopEnd

        Set Main_File to Cmovesa.File_Number
        Set Size to 191 478
        Set Location to 6 6

        Begin_Row
            Entry_Item Cmovesa.Cmoves_hmnia
            Entry_Item Cmovesa.Cmoves_par
            Entry_Item Cmovesa.Ctypkin_descr
            Entry_Item Cmovesa.Client_name
            Entry_Item Cmovesa.Cmoves_axia
            Entry_Item Cmovesa.Branch_code
        End_Row

        Set Form_Width    item 0 to 57
        Set Header_Label  item 0 to "Ü£/§Âò"
        
        Set Form_Width    item 1 to 102
        Set Header_Label  item 1 to "Ä†´†¶¢¶öÂò"
        
        Set Form_Width    item 2 to 98
        Set Header_Label  item 2 to "âÂ§û©û"
        
        Set Form_Width    item 3 to 111
        Set Header_Label  item 3 to "ë¨§ò¢¢ò©Ê£ú§¶™"
        
        Set Form_Width    item 4 to 64
        Set Header_Label  item 4 to " Ä•Âò"
        
        Set Form_Width    item 5 to 40
        Set Header_Label  item 5 to "ìß¶°/£ò"
        

        //AB-StoreStart
                                                                                                                                                        
        Property String StoreFragmaClientID Public ''
        Property String StorepsModule       Public ''
        //
        Procedure Store_Defaults
               Forward Send Store_Defaults
               Set StoreFragmaClientID  to (FragmaClientID  (Self))
               Set StorepsModule        to (psModule        (Self))
        End_Procedure
        //
        Procedure ReStore_Defaults
               Forward Send ReStore_Defaults
               Set FragmaClientID   to (StoreFragmaClientID (Self))
               Set psModule         to (StorepsModule       (Self))
        End_Procedure
        //
        Procedure Activating
           Forward Send Activating
           Send Rebuild_Constraints to (Cmovesa_DD(Self))
        End_Procedure
        //
        Procedure Activate
            Forward Send Activate
            Send Beginning_Of_Data          to oSelList True
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
        
            Set Points          Item 4 to       iDecs
            Set Numeric_Mask    Item 4 to 14    iDecs ' ,*'
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 199 325

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 199 379

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 199 435

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn

    Object Cmoves_Axia_Ypol_Sysx is a dbFormSub
        Entry_Item Cmovesa.Axia_ypol_sysx
        Set Size to 13 54
        Set Location to 199 249
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
        Set Label to "É†òü‚©†£û"
        Set Location to 201 211
        Set Size to 10 35
    End_Object    // TextBoxSub1

    Object Cmoves_Axia_Sysxet is a dbFormSub
        Entry_Item Cmovesa.Axia_sysxet
        Set Size to 13 54
        Set Location to 199 141
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

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "ë¨©Æú´†©£‚§û"
        Set Location to 201 90
        Set Size to 10 49
    End_Object    // TextBoxSub2

    Object Cmoves_Axia_Pros_Sysx is a dbFormSub
        Entry_Item Cmovesa.Axia_pros_sysx
        Set Size to 13 54
        Set Location to 199 25
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

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "Ä•Âò"
        Set Location to 201 6
        Set Size to 10 15
    End_Object    // TextBoxSub3


    //AB-StoreStart
                                                        
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // sl006a1

//AB/ End_Object    // prj
