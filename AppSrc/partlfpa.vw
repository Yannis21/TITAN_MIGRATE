//AB/ Project PartlFpa
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "PartlFpa"
//AB/     Set ProjectFileName to "PartlFpa.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   PartlFpa is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Partlfpa_DD is a DataDictionary
//     Partlfpa_ is a dbGridSub
//     Particle_Partl_Recr is a dbFormSub
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Partl_No is a dbFormSub
//     Particle_Pseira_Seira is a dbFormSub
//     Clients_Client_Id is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     Nomisma_Nomisma_Descr is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TextBoxSub11 is a TextBoxSub
//     ProFPA is a dbFormSub
//     GenFpa is a dbFormSub
//     TextBoxSub12 is a TextBoxSub
//     TextBoxSub13 is a TextBoxSub
//     Payam is a dbFormSub
//     TOTAL_VAT_POSO is a dbFormSub
//     TextBoxSub14 is a TextBoxSub
//     Disc_Vat_Poso is a dbFormSub
//     TextBoxSub15 is a TextBoxSub
//     Extravat is a dbFormSub
//     TextBoxSub16 is a TextBoxSub
//     Totambd is a dbFormSub
//     Totdiscpc is a dbFormSub
//     Extra is a dbFormSub
//     TextBoxSub17 is a TextBoxSub
//     TextBoxSub18 is a TextBoxSub
//     TextBoxSub19 is a TextBoxSub
//     VatamOnTotal is a dbFormSub
//     GenFpaOnTotal is a dbFormSub

// Register all objects
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Ctypkin_DD
Register_Object Disc_Vat_Poso
Register_Object Extra
Register_Object Extravat
Register_Object Fpa_DD
Register_Object GenFpa
Register_Object GenFpaOnTotal
Register_Object Nomisma_DD
Register_Object Nomisma_Nomisma_Descr
Register_Object Particle_DD
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Recr
Register_Object Particle_Pseira_Seira
Register_Object PartlFpa
Register_Object Partlfpa_
Register_Object Partlfpa_DD
Register_Object Payam
Register_Object ProFPA
Register_Object Ptyppar_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Totambd
Register_Object Totdiscpc
Register_Object TOTAL_VAT_POSO
Register_Object VatamOnTotal
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub
Use dbForm.Sub
Use Txtbox.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD
Use FPA.DD
Use PARTLFPA.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_PartlFpa FOR PartlFpa

Object PartlFpa is a dbViewSubS

    //AB-StoreTopStart
    Property String psOldNomismaCode Public ''
    Property Integer piDecimals Public 0
    
    //AB-StoreTopEnd

    Set Label to "îèÄ èò®ò©´ò´†°¶Á"
    Set Size to 230 318
    Set Location to 4 7

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Clients_DD is a Clients_DataDictionary

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Fpa_DD is a Fpa_DataDictionary

        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Fpa_DD

    Object Partlfpa_DD is a Partlfpa_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set DDO_Server to (Fpa_DD(self))
        Set Constrain_File to Particle.File_Number

        //AB-StoreStart
                    
        Procedure Request_Save
        End_Procedure
        
        Procedure Request_Delete
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // Partlfpa_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object Partlfpa_ is a dbGridSub
        Set Main_File to Partlfpa.File_Number
        Set Server to (Partlfpa_DD(self))
        Set Size to 60 252
        Set Location to 60 49
        Set Resize_Column_State to FALSE
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Fpa.Fpa_pososto
            Entry_Item Partlfpa.Partlfpa_poso
            Entry_Item Partlfpa.Poso_fpa
        End_Row

        Set Form_Width    item 0 to 50
        Set Header_Label  item 0 to "% îèÄ"
        
        Set Form_Width    item 1 to 193
        Set Header_Label  item 1 to "è¶©Ê îèÄ"
        
        Set Form_Width    item 2 to 193
        Set Header_Label  item 2 to "è¶©¶ îèÄ *"
        

        //AB-StoreStart
                    
        Set No_Create_State to True
        Set No_Delete_State to True
        
        Set Numeric_Mask Item 1 to 12 2
        Set Numeric_Mask Item 2 to 12 2
        
        //AB-StoreEnd

    End_Object    // Partlfpa_

    Object Particle_Partl_Recr is a dbFormSub
        Entry_Item Particle.Partl_recr
        Set Size to 13 66
        Set Location to 6 49
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                    
        Procedure Prompt
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Recr

    Object Particle_Partl_Hmnia is a dbFormSub
        Entry_Item Particle.Partl_hmnia
        Set Size to 13 66
        Set Location to 23 49
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Partl_Hmnia

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 66
        Set Location to 23 149
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Partl_No

    Object Particle_Pseira_Seira is a dbFormSub
        Entry_Item Particle.Pseira_seira
        Set Size to 13 27
        Set Location to 23 274
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Pseira_Seira

    Object Clients_Client_Id is a dbFormSub
        Entry_Item Clients.Client_id
        Set Size to 13 66
        Set Location to 41 49
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Id

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 181
        Set Location to 41 119
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Name

    Object Nomisma_Nomisma_Descr is a dbFormSub
        Entry_Item Nomisma.Nomisma_descr
        Set Size to 13 153
        Set Location to 6 149
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Nomisma_Descr

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "ëú†®·"
        Set Location to 23 244
        Set Size to 10 22
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™"
        Set Location to 23 119
        Set Size to 10 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "å¶£."
        Set Location to 6 119
        Set Size to 10 19
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set Location to 23 12
        Set Size to 10 34
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "Recr"
        Set Location to 6 12
        Set Size to 10 17
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "î¶®‚ò™"
        Set Location to 41 12
        Set Size to 10 31
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "è®¶ îèÄ"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 182 42
        Set Size to 10 33
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub11

    Object ProFPA is a dbFormSub
        Entry_Item Particle.Partl_genam
        Set Size to 13 71
        Set Location to 181 91
        Set Color to clNavy
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

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
        Set Location to 181 167
        Set Color to clNavy
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        
        Set Color           to clNavy
        Set TextColor       to clAqua
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // GenFpa

    Object TextBoxSub12 is a TextBoxSub
        Set Label to "îèÄ ëÁ§¶¢¶"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 182 246
        Set Size to 10 45
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub12

    Object TextBoxSub13 is a TextBoxSub
        Set Label to "Euro"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 200 142
        Set Size to 10 17
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"

        //AB-StoreStart
                    
        Set Label to SysCurXr.C_Code0
        
        //AB-StoreEnd

    End_Object    // TextBoxSub13

    Object Payam is a dbFormSub
        Entry_Item Particle.Partl_payam
        Set Size to 13 71
        Set Location to 199 167
        Set Color to clNavy
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        
        Set Color           to clNavy
        Set TextColor       to clAqua
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Payam


    // 04/05/2011
    Object TOTAL_VAT_POSO is a dbFormSub
        Entry_Item particle.Total_Vat_Poso
        Set Size to 13 71
        Set Location to 133 167
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        
        //AB-StoreEnd

    End_Object    // TOTAL_VAT_POSO

    Object TextBoxSub14 is a TextBoxSub
        Set Label to "î.è.Ä. Ñ†õÈ§"
        Set Location to 136 246
        Set Size to 10 47
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub14

    Object Disc_Vat_Poso is a dbFormSub
        Entry_Item Particle.Disc_vat_poso
        Set Size to 13 71
        Set Location to 149 167
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        
        //AB-StoreEnd

    End_Object    // Disc_Vat_Poso

    Object TextBoxSub15 is a TextBoxSub
        Set Label to "î.è.Ä. Î°ß´."
        Set Location to 151 246
        Set Size to 10 49
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub15

    Object Extravat is a dbFormSub
        Entry_Item Particle.Partl_extravat
        Set Size to 13 71
        Set Location to 163 167
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        
        //AB-StoreEnd

    End_Object    // Extravat

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "î.è.Ä. Ñß†ôò®."
        Set Location to 165 246
        Set Size to 10 57
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub16

    Object Totambd is a dbFormSub
        Entry_Item Particle.Partl_totambd
        Set Size to 13 71
        Set Location to 133 91
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        //AB-StoreEnd

    End_Object    // Totambd

    Object Totdiscpc is a dbFormSub
        Entry_Item Particle.Partl_totdiscpc
        Set Size to 13 71
        Set Location to 148 91
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        //AB-StoreEnd

    End_Object    // Totdiscpc

    Object Extra is a dbFormSub
        Entry_Item Particle.Partl_extra
        Set Size to 13 71
        Set Location to 163 91
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        //AB-StoreEnd

    End_Object    // Extra

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "âòüò®„ ò•Âò"
        Set Location to 135 42
        Set Size to 10 45
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub17

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "Î°ß´. í†£¶¢."
        Set Location to 151 42
        Set Size to 10 45
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object TextBoxSub19 is a TextBoxSub
        Set Label to "Ñß†ôò®. í†£¶¢."
        Set Location to 165 42
        Set Size to 10 47
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub19

    Object VatamOnTotal is a dbFormSub
        Entry_Item Particle.Fpa_on_total
        Set Size to 13 71
        Set Location to 133 167
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        Set Numeric_Mask Item 0 to 12 2
        
        
        
        //AB-StoreEnd

    End_Object    // VatamOnTotal

    Object GenFpaOnTotal is a dbFormSub
        Entry_Item Particle.Fpa_on_total
        Set Size to 13 71
        Set Location to 181 167
        Set Color to clBtnFace
        Set TextColor to clAqua
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.##"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // GenFpaOnTotal


    //AB-StoreStart
    
    
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
    
            Set Dynamic_Update_State Of iGridID to False
             Set Visible_State Of iGridID to False
    
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´¶ Grid Pmoves
            Set Points Of iGridID   Item  0 to 2                 // è¶©¶©´¶ îèÄ
            Set Points Of iGridID   Item  1 to Nomisma.Dekadika  // è¶©Ê îèÄ
            Set Points Of iGridID   Item  2 to Nomisma.Dekadika  // è¶©Ê îèÄ
    
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´ò ©Á§¶¢ò ´¶¨ ´†£¶¢¶öÂ¶¨
    
            Set Numeric_Mask Of Totambd         Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of TOTAL_VAT_POSO           Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of TotDiscPC       Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of Disc_Vat_Poso   Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of Extra           Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of ExtraVat        Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of ProFpa          Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of GenFpa          Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of GenFpaOnTotal   Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of Payam           Item 0 to 12 (piDecimals(Self)) " ,*"
    

            ////////////////////////////////////////////////////////////////////////
            // SOS js 11/04/2011 Gia Titana Patras pou timologei 
            // ena pelath sygkentrotika 1 fora ton mhna kai prepei to fpa na ypologizetai sto synolo
            ////////////////////////////////////////////////////////////////////////
            If (particle.partl_euro=1) Begin
                If (Particle.Fpa_On_Total<>0) Begin
                    Set Visible_State Of GenFpa             to False
                    Set Visible_State Of TOTAL_VAT_POSO     to False
    
                    Set Visible_State Of GenFpaOnTotal  to True
                    Set Visible_State Of VatAmOnTotal   to True
    
                    Set Form_Width      Of PartlFpa_ Item 1 to   0
                    Set Form_Width      Of PartlFpa_ Item 2 to 193
                    Set Column_Option   Of PartlFpa_ Item 1 to NoEnter True
                    Set Column_Option   Of PartlFpa_ Item 2 to NoEnter False
                End
                Else Begin
                    Set Visible_State Of GenFpa         to True
                    Set Visible_State Of TOTAL_VAT_POSO          to True
    
                    Set Visible_State Of GenFpaOnTotal  to False
                    Set Visible_State Of VatAmOnTotal   to False
    
                    Set Form_Width      Of PartlFpa_ Item 1 to 193
                    Set Form_Width      Of PartlFpa_ Item 2 to   0
                    Set Column_Option   Of PartlFpa_ Item 1 to NoEnter False
                    Set Column_Option   Of PartlFpa_ Item 2 to NoEnter True
                End
            End
            Else Begin
                If (Sysfile.Fpa_On_Total=1) Begin
                    If (Particle.Fpa_On_Total<>0) Begin
                        Set Visible_State Of GenFpa         to False
                        Set Visible_State Of TOTAL_VAT_POSO to False
    
                        Set Visible_State Of GenFpaOnTotal  to True
                        Set Visible_State Of VatAmOnTotal   to True
    
                        Set Form_Width      Of PartlFpa_ Item 1 to   0
                        Set Form_Width      Of PartlFpa_ Item 2 to 193
                        Set Column_Option   Of PartlFpa_ Item 1 to NoEnter True
                        Set Column_Option   Of PartlFpa_ Item 2 to NoEnter False
                    End
                    Else Begin
                        Set Visible_State Of GenFpa         to True
                        Set Visible_State Of TOTAL_VAT_POSO          to True
    
                        Set Visible_State Of GenFpaOnTotal  to False
                        Set Visible_State Of VatAmOnTotal   to False
    
                        Set Form_Width      Of PartlFpa_ Item 1 to 193
                        Set Form_Width      Of PartlFpa_ Item 2 to   0
                        Set Column_Option   Of PartlFpa_ Item 1 to NoEnter False
                        Set Column_Option   Of PartlFpa_ Item 2 to NoEnter True
                    End
                End
                Else Begin
                    Set Visible_State Of GenFpa         to True
                    Set Visible_State Of TOTAL_VAT_POSO          to True
    
                    Set Visible_State Of GenFpaOnTotal  to False
                    Set Visible_State Of VatAmOnTotal   to False
    
                    Set Form_Width      Of PartlFpa_ Item 1 to 193
                    Set Form_Width      Of PartlFpa_ Item 2 to   0
                    Set Column_Option   Of PartlFpa_ Item 1 to NoEnter False
                    Set Column_Option   Of PartlFpa_ Item 2 to NoEnter True
                End
            End

            Set Visible_State           Of iGridID to True
            Set Dynamic_Update_State    Of iGridID to True
        End
    End_procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal
        Send Set_The_Decimal_Points
        Forward get Msg_Activate_View to rVal
        Set Modal_State to True
        reread sysfile
        unlock
        Procedure_Return rVal
    End_Procedure
    
    Procedure Close_Panel
        Set Modal_State to False
        Forward Send Close_Panel
    End_Procedure
    
    Procedure Request_Cancel
        Set Modal_State to False
        Forward Send Request_Cancel
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // PartlFpa

//AB/ End_Object    // prj
