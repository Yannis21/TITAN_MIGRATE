//AB/ Project sl014R
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl014R"
//AB/     Set ProjectFileName to "sl014R.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl014R is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     oSelList is a dbListSub
//     cSyDateForm1 is a cSyDateForm
//     FormSub1 is a FormSub
//     FormSub3 is a FormSub
//     FormSub2 is a FormSub
//     FormSub4 is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     oOK_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Clients_DD
Register_Object Ctypkin_DD
Register_Object cSyDateForm1
Register_Object FormSub1
Register_Object FormSub2
Register_Object FormSub3
Register_Object FormSub4
Register_Object Nomisma_DD
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Particle_DD
Register_Object Ptyppar_DD
Register_Object sl014R
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Wtypkin_DD



//AB-StoreTopStart
    
Open PtypparL

Use sl100.sl
Use sl012.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use cSyDateForm.Pkg
Use Form.Sub
Use Txtbox.Sub
Use Button.Sub


Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD

//AB-IgnoreEnd

Object sl014R is a dbModalPanelSub

    //AB-StoreTopStart
                    
    Property String psModule        Public ''
    Property String psClient        Public ''
    Property String psPtyppar       Public ''
    Property String psCtypkin       Public ''
    Property String psWtypkin       Public ''
    Property String psPtypparRecr   Public ''
    Property Date   pdHmnia         Public ''
    
    //AB-StoreTopEnd

    Set Label to "èò®ò©´ò´†°·"
    Set Size to 282 523
    Set Location to 4 3
    Set Color to 12363657
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

    Object Clients_DD is a Clients_DataDictionary
    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
                        
        Procedure OnConstrain
            String  sPtyppar sWtypkin sCtypkin sClientID sPtypparRecr
            Date    dHmnia
        
            Get psClient        to sClientID
            Get psPtyppar       to sPtyppar
            Get psPtypparRecr   to sPtypparRecr
            Get psCtypkin       to sCtypkin
            Get psWtypkin       to sWtypkin
            Get Value Of cSyDateForm1 Item 0 to dHmnia
        
            If (sClientID<>'') Begin
                If (sPtypparRecr<>'') Begin
                    Set Ordering to 1
                    Constrain Particle.Company_Code     Eq SysCurXR.Company_Code
                    Constrain Particle.Branch_Code      Eq SysCurXR.Branch_Code
                    Constrain Particle.Year_Year        Eq SysCurXR.Year_Year
                    Constrain Particle.CustProm_Code    Eq ''
                    Constrain Particle.Client_ID        Eq sClientID
                    Constrain Particle.Ctypkin_Code     Eq sCtypkin
                    Constrain Particle.Wtypkin_Code     Eq sWtypkin
                    Constrain Particle.Ptyppar_Code     Eq sPtyppar
                    If (dHmnia<>'') ;
                        Constrain Particle.Partl_Hmnia  Eq dHmnia
                End
                Else Begin
                    Set Ordering to 13
                    Constrain Particle.Company_Code     Eq SysCurXR.Company_Code
                    Constrain Particle.Branch_Code      Eq SysCurXR.Branch_Code
                    Constrain Particle.Year_Year        Eq SysCurXR.Year_Year
                    Constrain Particle.Client_ID        Eq sClientID
                    If (dHmnia<>'') ;
                        Constrain Particle.Partl_Hmnia  Eq dHmnia
                End
            End
            Else If (sPtypparRecr<>'') Begin
                Set Ordering to 12
                Constrain Particle.Company_Code     Eq SysCurXR.Company_Code
                Constrain Particle.Branch_Code      Eq SysCurXR.Branch_Code
                Constrain Particle.Year_Year        Eq SysCurXR.Year_Year
                Constrain Particle.Partl_Module     Eq (psModule(Self))
                Constrain Particle.Ptyppar_Recr     Eq sPtypparRecr
                If (dHmnia<>'') ;
                    Constrain Particle.Partl_Hmnia  Eq dHmnia
            End
            Else  Begin
                Set Ordering to 14
                Constrain Particle.Company_Code     Eq SysCurXR.Company_Code
                Constrain Particle.Branch_Code      Eq SysCurXR.Branch_Code
                Constrain Particle.Year_Year        Eq SysCurXR.Year_Year
                Constrain Particle.Partl_Module     Eq (psModule(Self))
                If (dHmnia<>'') ;
                    Constrain Particle.Partl_Hmnia  Eq dHmnia
            End
        
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub

        //AB-StoreTopStart
                                                                                        
                                                                                        
        //AB-StoreTopEnd

        Set Main_File to Particle.File_Number
        Set Size to 208 511
        Set Location to 6 5
        Set Auto_Index_State to FALSE

        Begin_Row
            Entry_Item Particle.Partl_recr
            Entry_Item Particle.Partl_hmnia
            Entry_Item Ptyppar.Ptyppar_descr
            Entry_Item Particle.Pseira_seira
            Entry_Item Particle.Partl_no
            Entry_Item Clients.Client_id
            Entry_Item Clients.Client_name
            Entry_Item Particle.Partl_ekleise
        End_Row

        Set Form_Width    item 0 to 50
        Set Header_Label  item 0 to "Recr"
        
        Set Form_Width    item 1 to 60
        Set Header_Label  item 1 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 2 to 114
        Set Header_Label  item 2 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 3 to 36
        Set Header_Label  item 3 to "ëú†®·"
        
        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "Ä®†ü£Ê™"
        
        Set Form_Width    item 5 to 57
        Set Header_Label  item 5 to "â‡õ†°Ê™"
        
        Set Form_Width    item 6 to 112
        Set Header_Label  item 6 to "èú¢·´û™ / è®¶£ûüú¨´„™"
        
        Set Form_Width    item 7 to 16
        Set Header_Label  item 7 to "K"
        Set Column_Checkbox_State  item 7 to True
        

        //AB-StoreStart
                                                                                        
        Procedure Activate
            Send Keyaction to ButtonSub1
            Forward Send Activate
        End_procedure
        
        Procedure Activating
            Forward Send Activating
            Set Auto_Index_State to True
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object cSyDateForm1 is a cSyDateForm
        Set Size to 13 85
        Set Location to 222 54
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "d/M/yyyy"

        //AB-StoreStart
                                                                
        Procedure Key Integer iKey
            Integer iRetVal
            Forward Send Key iKey
            If (iKey=277) Begin
                Send Clear_Me
            End
        End_Procedure
        
        Procedure Clear_Me
            Set Value Item 0 to ''
            Send KeyAction to ButtonSub1
        End_Procedure
        
        Procedure Exiting00000
            Forward Send Exiting
            Send KeyAction to ButtonSub1
        End_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // cSyDateForm1

    Object FormSub1 is a FormSub
        Set Size to 13 85
        Set Location to 236 54
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
                                                        
        Set Prompt_Object to (sl012(Self))
        
        Procedure Prompt
            String sModule
            Get psModule Of (sl012(Self)) to sModule
            Set psModule Of (sl012(Self)) to (psModule(Self))
            Forward Send Prompt
            Set psModule Of (sl012(Self)) to sModule
        End_Procedure
        
        Procedure OnChange
            String s1
            Get Value Item 0 to s1
            Set Value Of FormSub3 Item 0 to (fsPtyppar(Self,s1))
            Clear Ptypparl
            Move Syscurxr.Company_Code  to ptypparl.Company_Code
            Move Syscurxr.Branch_Code   to ptypparl.Branch_Code
            Move s1                     to Ptypparl.Ptyppar_Code
            Find Eq Ptypparl by index.1
            Set psPtyppar       to s1
            Set psPtypparRecr   to Ptypparl.Ptyppar_Recr
            Set psWtypkin       to PtypparL.Wtypkin_Code
            Set psCtypkin       to PtypparL.Ctypkin_Code
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object FormSub3 is a FormSub
        Set Size to 13 195
        Set Location to 236 145
        Set Color to 12363657
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // FormSub3

    Object FormSub2 is a FormSub
        Set Size to 13 85
        Set Location to 250 54
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
                                                        
        Set Prompt_Object to (sl100(Self))
        
        Procedure Prompt
            String sModule
            Get psModule Of (sl100(Self)) to sModule
            Set psModule Of (sl100(Self)) to (psModule(Self))
            Forward Send Prompt
            Set psModule Of (sl100(Self)) to sModule
        End_Procedure
        
        Procedure OnChange
            String s1
            Get Value Item 0 to s1
            Set Value Of FormSub4 Item 0 to (fsClient(Self,s1))
            Set psClient to s1
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub2

    Object FormSub4 is a FormSub
        Set Size to 13 195
        Set Location to 250 145
        Set Color to 12363657
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // FormSub4

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set Color to 12363657
        Set Location to 222 5
        Set Size to 10 35
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "èò®ò©´/°Ê"
        Set Color to 12363657
        Set Location to 237 4
        Set Size to 10 41
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "î¶®‚ò™"
        Set Color to 12363657
        Set Location to 252 4
        Set Size to 10 31
    End_Object    // TextBoxSub3

    Object ButtonSub1 is a ButtonSub
        Set Label to "èú®†Ê®†©ú"
        Set Size to 13 50
        Set Location to 252 355
        Set Form_FontWeight Item 0 to 600

        //AB-StoreStart
                                                                            
        Procedure OnClick
            Send Rebuild_Constraints to Particle_DD
            Send Beginning_Of_Data to oSelList True
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Size to 13 50
        Set Location to 252 413

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Size to 13 50
        Set Location to 252 466

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
                    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    Set Locate_Mode to Center_On_Screen
    Set Modal_State to True
    
    Procedure Request_Cancel
        Set Value Of cSyDateForm1 Item 0 to ''
        Send Clear to Particle_DD
        Forward Send Request_Cancel
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // sl014R

//AB/ End_Object    // prj
