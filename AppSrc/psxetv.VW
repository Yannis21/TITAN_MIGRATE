//AB/ Project psxetv : Emfanish psxetika
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "psxetv : Emfanish psxetika"
//AB/     Set ProjectFileName to "psxetv.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   psxetv is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Psxetika_DD is a DataDictionary
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Partl_No is a dbFormSub
//     Particle_Pseira_Seira is a dbFormSub
//     Clients_Client_Id is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     ProFPA is a dbFormSub
//     GenFpa is a dbFormSub
//     Payam is a dbFormSub
//     TextBoxSub17 is a TextBoxSub
//     Ptyppar_Ptyppar_Code is a dbFormSub
//     Ptyppar_Ptyppar_Descr is a dbFormSub
//     TextBoxSub20 is a TextBoxSub
//     Psxetika_ is a dbGridSub
//     TextBoxSub21 is a TextBoxSub
//     TextBoxSub22 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object GenFpa
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Pseira_Seira
Register_Object Payam
Register_Object Payresp_DD
Register_Object ProFPA
Register_Object Psxetika_
Register_Object Psxetika_DD
Register_Object Ptyppar_DD
Register_Object Ptyppar_Ptyppar_Code
Register_Object Ptyppar_Ptyppar_Descr
Register_Object psxetv
Register_Object TextBoxSub10
Register_Object TextBoxSub17
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object Towns_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbGrid.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use PAYRESP.DD
Use AREAS.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD
Use PSXETIKA.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_psxetv FOR psxetv

Object psxetv is a dbViewSubS

    //AB-StoreTopStart
    Property String     psOldNomismaCode    Public ''
    Property String     psArticleRecr       Public ''
    Property Integer    piDecimals          Public  0
    
    //AB-StoreTopEnd

    Set Label to "ëÆú´†°· ßò®ò©´ò´†°· òßÊ ´ò ¶ß¶Âò õû£†¶¨®ö„üû°ú"
    Set Size to 218 363
    Set Location to 4 6

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Country_DD is a Country_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Areas_DD is a Areas_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Areas_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Payresp_DD(self))
        Set DDO_Server to (Areas_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Psxetika_DD is a Psxetika_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number

        //AB-StoreStart
        
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Psxetika_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object Particle_Partl_Hmnia is a dbFormSub
        Entry_Item Particle.Partl_hmnia
        Set Size to 13 66
        Set Location to 5 49
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff

        //AB-StoreStart
        Set Item_Option Item 0 to NoPut True
        
        Procedure Prompt
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Hmnia

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 66
        Set Location to 5 186
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Partl_No

    Object Particle_Pseira_Seira is a dbFormSub
        Entry_Item Particle.Pseira_seira
        Set Size to 13 27
        Set Location to 5 326
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Pseira_Seira

    Object Clients_Client_Id is a dbFormSub
        Entry_Item Clients.Client_id
        Set Size to 13 66
        Set Location to 25 49
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Id

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 232
        Set Location to 25 120
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Name

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "ëú†®ò"
        Set Location to 7 293
        Set Size to 10 23
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™"
        Set Location to 7 150
        Set Size to 10 29
    End_Object    // TextBoxSub6

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set Location to 7 2
        Set Size to 10 34
    End_Object    // TextBoxSub8

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "î¶®‚ò™"
        Set Location to 26 2
        Set Size to 10 31
    End_Object    // TextBoxSub10

    Object ProFPA is a dbFormSub
        Entry_Item Particle.Partl_genam
        Set Size to 13 66
        Set Location to 72 49
        Set Color to clNavy
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to clNavy
        Set TextColor       to clAqua
        
        
        //AB-StoreEnd

    End_Object    // ProFPA

    Object GenFpa is a dbFormSub
        Entry_Item Particle.Total_vat_poso
        Set Size to 13 71
        Set Location to 72 154
        Set Color to clNavy
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        
        Set Color           to clNavy
        Set TextColor       to clAqua
        
        
        
        
        //AB-StoreEnd

    End_Object    // GenFpa

    Object Payam is a dbFormSub
        Entry_Item Particle.Partl_payam
        Set Size to 13 73
        Set Location to 71 281
        Set Color to clNavy
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
                                                                                                                                                                                                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        
        Set Color           to clNavy
        Set TextColor       to clAqua
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Payam

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "âòüò®„ ò•Âò"
        Set Location to 60 71
        Set Size to 10 43
    End_Object    // TextBoxSub17

    Object Ptyppar_Ptyppar_Code is a dbFormSub

        //AB-StoreTopStart
                                                                                                                                            
        Procedure Preset_Nomisma
            String  sNom
            Integer iRec
            Number  nIsot
            Get Field_Current_Value Of Particle_DD Field Particle.recnum to iRec
            If (NOT(iRec)) Begin
                Get Field_Current_Value Of Nomisma_DD Field Nomisma.Nomisma_Code to sNom
                If (trim(sNom)='') Begin
                    Send Clear to Nomisma_DD
                    Move 'GRD' to Nomisma.Nomisma_Code
                    Send Find to Nomisma_DD eq 1 // Nomisma:Index.1:Nomisma_Code
                    Set Field_Current_Value Of Particle_DD Field Particle.Isotimia to 1
                End
            End
        End_procedure
        
        //AB-StoreTopEnd

        Entry_Item Ptyppar.Ptyppar_code
        Set Size to 13 66
        Set Location to 44 49
        Set Color to clBtnFace
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        Procedure Rythmise_Thn_Seira
            String sRecr sWhat sNom
            Send Combo_delete_Data to Particle_Pseira_Seira
            Get Field_Current_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Recr to sRecr
            If (trim(sRecr)<>'') Begin
                Get Field_Current_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Is_What to sWhat
                If (Trim(sWhat)='2') Begin // Ä§ ú†§ò† ß‡¢û©û
                    Set psPtyppar to sRecr
                    Send Rebuild_Constraints to Pseira_DD
                    Send Rebuild_Constraints to Pseira_DD2
                    Send Combo_Fill_List to Particle_Pseira_Seira
                End
                Else Begin
                    Set Shadow_State Of Particle_Partl_No Item 0 to False
                    Set psPtyppar to ''
                    Send Rebuild_Constraints to Pseira_DD
                    Send Rebuild_Constraints to Pseira_DD2
                End
            End
            Else Set Shadow_State Of Particle_Partl_No Item 0 to False
            Send Preset_Nomisma
        End_Procedure
        
        Procedure Prompt
            Set psModule Of (sl012(self)) to (psModule(Self))
            Set Modal_State Of (sl012(Self)) to True
            Forward Send Prompt
            Send Rythmise_Thn_Seira
        End_procedure
        
        Procedure OnChange
            If (Focus(Desktop)=Ptyppar_Ptyppar_Code(Self)) Send Rythmise_Thn_Seira
        End_procedure
        
        Procedure Find_Next
            Forward Send Find_Next
            Send Rythmise_Thn_Seira
        End_procedure
        
        Procedure Find_Previous
            Forward Send Find_Previous
            Send Rythmise_Thn_Seira
        End_procedure
        
        Procedure Find_Ge
            Forward Send Find_Ge
            Send Rythmise_Thn_Seira
        End_procedure
        
        Procedure OnKillFocus
            Forward Send OnKillFocus
            Send Preset_Nomisma
            Send Rythmise_Thn_Seira
        End_Procedure
        
        Procedure Exiting
            Forward Send Exiting
            Send Preset_Nomisma
            Send Rythmise_Thn_Seira
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Ptyppar_Ptyppar_Code

    Object Ptyppar_Ptyppar_Descr is a dbFormSub
        Entry_Item Ptyppar.Ptyppar_descr
        Set Size to 13 232
        Set Location to 44 120
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        //AB-StoreEnd

    End_Object    // Ptyppar_Ptyppar_Descr

    Object TextBoxSub20 is a TextBoxSub
        Set Label to "èò®ò©´/°Ê"
        Set Location to 44 2
        Set Size to 10 40
    End_Object    // TextBoxSub20

    Object Psxetika_ is a dbGridSub

        //AB-StoreTopStart
        
        
        //AB-StoreTopEnd

        Set Main_File to Psxetika.File_Number
        Set Server to (Psxetika_DD(self))
        Set Size to 100 351
        Set Location to 98 4
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Psxetika.Psx_partl_recr
            Entry_Item Psxetika.Sx_ptyppar_desc
            Entry_Item Psxetika.Sx_partl_hmnia
            Entry_Item Psxetika.Sx_pseira_seira
            Entry_Item Psxetika.Sx_partl_no
        End_Row

        Set Form_Width    item 0 to 42
        Set Header_Label  item 0 to "Recr"
        
        Set Form_Width    item 1 to 167
        Set Header_Label  item 1 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 2 to 57
        Set Header_Label  item 2 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 3 to 35
        Set Header_Label  item 3 to "ëú†®·"
        
        Set Form_Width    item 4 to 41
        Set Header_Label  item 4 to "Ä®†ü£Ê™"
        

        //AB-StoreStart
        
        Set No_Create_State To True
        
        Function Child_entering returns Integer
            Integer rVal
            String  sRecr
            Get Field_Current_Value Of Particle_DD  Field Particle.Partl_Recr   to sRecr
            If (Trim(sRecr)='') Function_Return 1
            Forward Get Child_Entering to rVal
            Function_Return rVal
        End_Function
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Psxetika_

    Object TextBoxSub21 is a TextBoxSub
        Set Label to "î.è.Ä."
        Set Location to 60 202
        Set Size to 10 22
    End_Object    // TextBoxSub21

    Object TextBoxSub22 is a TextBoxSub
        Set Label to "è¢û®‡´‚¶"
        Set Location to 60 319
        Set Size to 10 35
    End_Object    // TextBoxSub22


    //AB-StoreStart
                                
    Set Verify_Data_Loss_Msg TO Get_No_Confirmation
    Set Verify_Delete_Msg    TO Get_No_Confirmation
    Set Verify_Save_Msg      TO Get_No_Confirmation
    Set Verify_Exit_Msg      TO Get_No_confirmation
    
    Procedure Set_The_Decimal_Points
        Integer iGridID iAmount
        String  sCode sOld
        Move Nomisma.Nomisma_Code to sCode
        Get psOldNomismaCode to sOld
        Move (Trim(sCode))  to sCode
        Move (Trim(sOld))   to sOld
        If (sCode<>sOld) Begin
            Set psOldNomismaCode to sCode
            Move (PartlFpa_(self)) to iGridID
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma by Index.1
    
            Set piDecimals to Nomisma.Dekadika
    
    //        Set Dynamic_Update_State Of iGridID to False
    //         Set Visible_State Of iGridID to False
    
    //        // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´¶ Grid Pmoves
    //        Set Points Of iGridID   Item  0 to 2                 // è¶©¶©´¶ îèÄ
    //        Set Points Of iGridID   Item  1 to Nomisma.Dekadika  // è¶©Ê îèÄ
    
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´ò ©Á§¶¢ò ´¶¨ ´†£¶¢¶öÂ¶¨
    
    
            Set Numeric_Mask Of ProFpa          Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of GenFpa          Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of Payam           Item 0 to 12 (piDecimals(Self)) " ,*"
    
    //        Set Visible_State           Of iGridID to True
    //        Set Dynamic_Update_State    Of iGridID to True
    //        //Send Display
        End
    End_procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal iRecnum
        String sRecr
        Get psArticleRecr to sRecr
        Move (Trim(sRecr)) to sRecr
        Send Set_The_Decimal_Points
        If (sRecr<>'') Begin
            Clear Particle
            Move sRecr to Particle.Partl_Recr
            Find Eq Particle By Index.2
            If (Found) Begin
                Move Particle.Recnum to iRecnum
                Send Find_By_Recnum to Particle_DD Particle.File_Number iRecnum
            End
            Else Procedure_Return 1
        End
        Forward get Msg_Activate_View to rVal
        Set Modal_State to True
        Procedure_Return rVal
    End_Procedure
    
    Procedure Close_Panel
        Forward Send Close_Panel
        Set psArticleRecr   to ''
        Set Modal_State     to False
    End_Procedure
    
    Procedure Request_Cancel
        Forward Send Request_Cancel
        Set psArticleRecr   to ''
        Set Modal_State     to False
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // psxetv

//AB/ End_Object    // prj
