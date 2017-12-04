//AB/ Project Particle
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Particle"
//AB/     Set ProjectFileName to "Particle.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Particle is a dbViewSubS
//     Pseira_DD2 is a Pseira_DataDictionary
//     CN_DD2 is a CN_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Pmoves_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Psxetika_DD is a DataDictionary
//     Partlfpa_DD is a DataDictionary
//     Ptyppar_Ptyppar_Code is a dbFormSub
//     Ptyppar_Ptyppar_Descr is a dbFormSub
//     Ctypkin_Ctypkin_Descr is a dbFormSub
//     Wtypkin_Wtypkin_Descr is a dbFormSub
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Pseira_Seira is a dbComboFormSub
//     FormSub1 is a FormSub
//     Particle_Partl_No is a dbFormSub
//     Particle_Partl_Recr is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     Particle_Cn_Code is a dbFormSub
//     FormSub2 is a FormSub
//     Cn_Cn_Descr is a dbFormSub
//     frmIsClosed is a FormSub
//     Nomisma_Nomisma_Descr is a dbFormSub
//     Particle_Isotimia is a dbFormSub
//     frmIsotimia is a FormSub
//     frmEURO is a FormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         Pmoves_ is a dbGridSub
//       TP______ is a dbTabPageSubS
//         Psxetika_ is a dbGridSub
//     btnKleisimo is a ButtonSub
//     btnEktyposh is a ButtonSub
//     Payam is a dbFormSub
//     Totambd is a dbFormSub
//     Amdiscpms is a dbFormSub
//     Totdiscpc is a dbFormSub
//     Vatam is a dbFormSub
//     Extra is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     Discam is a dbFormSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox
//     Textbox5 is a Textbox
//     Textbox6 is a Textbox
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TextBoxSub11 is a TextBoxSub
//     txtRecr is a TextBoxSub
//     frmCount is a FormSub

// Register all objects
Register_Object Amdiscpms
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object btnEktyposh
Register_Object btnKleisimo
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object CN_DD2
Register_Object Cn_Cn_Descr
Register_Object Cn_DD
Register_Object Ctypkin_Ctypkin_Descr
Register_Object Ctypkin_DD
Register_Object Discam
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object Extra
Register_Object FormSub1
Register_Object FormSub2
Register_Object Fpa_DD
Register_Object frmCount
Register_Object frmEURO
Register_Object frmIsClosed
Register_Object frmIsotimia
Register_Object Item_DD
Register_Object Nomisma_DD
Register_Object Nomisma_Nomisma_Descr
Register_Object Particle
Register_Object Particle_Cn_Code
Register_Object Particle_DD
Register_Object Particle_Isotimia
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Recr
Register_Object Particle_Pseira_Seira
Register_Object Partlfpa_DD
Register_Object Payam
Register_Object Pmoves_
Register_Object Pmoves_DD
Register_Object Pseira_DD
Register_Object Pseira_DD2
Register_Object Psxetika_
Register_Object Psxetika_DD
Register_Object Ptyppar_DD
Register_Object Ptyppar_Ptyppar_Code
Register_Object Ptyppar_Ptyppar_Descr
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object Textbox6
Register_Object Totambd
Register_Object Totdiscpc
Register_Object TP______
Register_Object txtRecr
Register_Object Units_DD
Register_Object Vatam
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD
Register_Object Wtypkin_Wtypkin_Descr


//AB/ AppBuild VIEW


//AB-StoreTopStart
    
Use bpEnCmvs.dg     // Business process to update Cmoves and Wcmoves
Use Rmhtrb.rv       // Report Ñ°´Áß‡©û™ ´†£¶¢¶öÂ¶¨
Use PartlFpa.vw


//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbCmbfrm.Sub
Use Form.Sub
Use dbTabDlgS.Sub
Use dbGrid.Sub
Use Button.Sub
Use Txtbox.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use PSEIRA.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD
Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use PMOVES.DD
Use SYSCURXR.DD
Use CN.DD
Use PSXETIKA.DD
Use PARTLFPA.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Particle FOR Particle

Object Particle is a dbViewSubS

    //AB-StoreTopStart
            
    Set Verify_Data_Loss_Msg TO Get_No_Confirmation
    Set Verify_Delete_Msg    TO Get_No_Confirmation
    Set Verify_Save_Msg      TO Get_No_Confirmation
    Set Verify_Exit_Msg      TO Get_No_confirmation
    
    Property String psNom0              Public ''
    Property String psNom00             Public ''
    Property String psNomR              Public ''
    Property String psOldNomismaCode    Public ''
    Property String psPtyppar           Public ''
    Property String psSeira             Public ''
    Property String psIsSeiraAutoNum    Public ''
    Property String psClientRecr        Public ''
    Property String psCNDescr           Public ''
    
    Property String psFindParticleRecr  Public ''
    
    Procedure Kleise_Ta_Pedia
        Integer iNoOfLines
        Get Field_Current_Value Of Particle_DD Field ;
            Particle.Partl_NoOfLines                        To        iNoOfLines
        Set Enabled_State   Of Ptyppar_Ptyppar_Code         To       (iNoOfLines=0)
        Set Item_Option     Of Particle_Partl_Hmnia Item 0  To NoPut (iNoOfLines<>0)
        Set Enabled_State   Of Particle_Pseira_Seira        To       (iNoOfLines=0)
        Set Enabled_State   Of Particle_Pseira_Seira        To       (iNoOfLines=0)
        Set Enabled_State   Of Particle_Partl_No            To       (iNoOfLines=0)
        Set Enabled_State   Of Particle_Partl_Recr          To       (iNoOfLines=0)
        Set Enabled_State   Of Clients_Client_Name          To       (iNoOfLines=0)
        Set Enabled_State   Of Particle_CN_Code             To       (iNoOfLines=0)
        Set Enabled_State   Of Nomisma_Nomisma_Descr        To       (iNoOfLines=0)
        Set Enabled_State   Of Particle_Isotimia            To       (iNoOfLines=0)
    End_procedure
    
    Procedure Enhm_Particle_Amounts
        Number nTotambd nAmdiscpms nTotdiscpc nDiscam nVatam nExtra nPayam nTotamad nGenam
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Totambd     to nTotambd
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Amdiscpms   to nAmdiscpms
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Totdiscpc   to nTotdiscpc
        Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Discam      to (nAmdiscpms+nTotdiscpc)
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Discam      to nDiscam
        Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Totamad     to (nTotambd-nDiscam)
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Totamad     to nTotamad
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Vatam       to nVatam
        Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Genam       to (nTotamad+nVatam)
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Genam       to nGenam
        Get Field_Current_Value Of Particle_DD Field Particle.Partl_Extra       to nExtra
        Set Field_Changed_Value Of Particle_DD Field Particle.Partl_Payam       to (nGenam+nExtra)
    End_Procedure
    
    Object Pseira_DD2 is a Pseira_DataDictionary
        Begin_Constraints
            String sRecr
            Get psPtyppar to sRecr
            If (sRecr<>'') Constrain Pseira.Ptyppar_recr eq sRecr
        End_Constraints
    End_Object    // Pseira_DD2
    
    Object CN_DD2 is a CN_DataDictionary
    End_Object    // CN_DD2
    
    Property String psModule Public ''
    
    //AB-StoreTopEnd

    set label to "è‡¢„©ú†™ / Äö¶®‚™" 
    Set Size to 290 527
    Set Location to 1 4

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
        
        Procedure OnConstrain
            If (psModule(Self)<>'') Begin
                Constrain Ptyppar.Ptyppar_Module eq (psModule(Self))
            End
        End_Procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Pseira_DD is a Pseira_DataDictionary

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Set DDO_Server to (Ptyppar_DD(self))

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        Begin_Constraints
            String sRecr
            Get psPtyppar to sRecr
            If (sRecr<>'') Constrain Pseira.Ptyppar_recr eq sRecr
        End_Constraints
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pseira_DD

    Object Clients_DD is a Clients_DataDictionary

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

        //AB-StoreTopStart
                    
                    
        //AB-StoreTopEnd

        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
                    
        Procedure OnConstrain
            If (psModule(Self)<>'') Begin
                Constrain Particle.Partl_Module eq (psModule(Self))
            End
        End_Procedure
        
        
        //Object oValidateSeira is a FileValidationTable
        //    set table_title         to "Ñß†¢¶ö„ ëú†®·™ èò®ò©´ò´†°¶Á" 
        //    Set Main_File           to Pseira.File_Number
        //    Set Code_Field          to   8 //Pseira.Pseira_Seira
        //    Set Description_Field   to  11 //Pseira.Pseira_Printer
        //    Set Ordering            to   1
        //    Set Static_State to False
        //End_Object
        
        
        //Set Field_Value_Table Field Particle.Pseira_Seira ;
        //    To (oValidateSeira(Self))
        
        //Set Validate_State Of oValidateSeira  to true //false
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Wapokat_DD is a Wapokat_DataDictionary

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Witemx_DD

    Object Pmoves_DD is a Pmoves_DataDictionary
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Pmoves_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart
                    
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        set constrain_file to clients.file_number 

        //AB-StoreStart
        Set Read_Only_State to True
        
        //Begin_Constraints
        //    String sRecr
        //    Get psClientRecr to sRecr
        //    Constrain CN.Client_recr eq sRecr
        //End_Constraints
        
        
        //AB-StoreEnd

    End_Object    // Cn_DD

    Object Psxetika_DD is a Psxetika_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number

        //AB-StoreStart
                    
        Set Read_Only_State To True
        
        //AB-StoreEnd

    End_Object    // Psxetika_DD

    Object Partlfpa_DD is a Partlfpa_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set DDO_Server to (Fpa_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Partlfpa_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object Ptyppar_Ptyppar_Code is a dbFormSub

        //AB-StoreTopStart
                    
        Procedure Preset_Nomisma
            String sNom
            Integer iRec
            Get Field_Current_Value Of Particle_DD Field Particle.recnum to iRec
            If (NOT(iRec)) Begin
                Get Field_Current_Value Of Nomisma_DD Field Nomisma.Nomisma_Code to sNom
                If (trim(sNom)='') Begin
                    Send Clear to Nomisma_DD
                    Move 'GRD' to Nomisma.Nomisma_Code
                    Send Find to Nomisma_DD eq 1 // Nomisma:Index.1:Nomisma_Code
                End
            End
        End_procedure
        
        //AB-StoreTopEnd

        Entry_Item Ptyppar.Ptyppar_code
        Set Size to 13 62
        Set Location to 2 61
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

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
        Set Size to 13 358
        Set Location to 2 145
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

    Object Ctypkin_Ctypkin_Descr is a dbFormSub
        Entry_Item Ctypkin.Ctypkin_descr
        Set Size to 13 200
        Set Location to 17 61
        Set Color to clBtnFace
        Set Label_Col_Offset to 4
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

    End_Object    // Ctypkin_Ctypkin_Descr

    Object Wtypkin_Wtypkin_Descr is a dbFormSub
        Entry_Item Wtypkin.Wtypkin_descr
        Set Size to 13 160
        Set Location to 17 342
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

    End_Object    // Wtypkin_Wtypkin_Descr

    Object Particle_Partl_Hmnia is a dbFormSub

        //AB-StoreTopStart
                    
                    
        //AB-StoreTopEnd

        Entry_Item Particle.Partl_hmnia
        Set Size to 13 66
        Set Location to 32 61
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        Procedure Prompt
            Set psModule Of (sl014(self)) to (psModule(Self))
            Forward Send Prompt
            Send Show_CN
            Send Show_Seira
            Send Set_The_Decimal_Points
        End_Procedure
        
        Procedure Refresh Integer iMode
            Forward Send Refresh iMode
            Set Read_Only_State Of Particle_DD  to (Particle.Partl_Ekleise='1')
            Set Read_Only_State Of Pmoves_DD    to (Particle.Partl_Ekleise='1')
            Set Enabled_State   Of BtnEktyposh  to (Particle.Partl_Ekleise='1')
            If (Particle.Partl_Ekleise='1') Begin
                Set Color Of frmIsClosed to clRed
                set label of btnkleisimo to 'Ä§¶†ö£ò' 
            End
            Else Begin
                Set Color Of frmIsClosed to clLime
                set label of btnkleisimo to "â¢úÂ©†£¶" 
            End
            Send Show_CN
            Send Show_Seira
            Send Set_The_Decimal_Points
            Send Kleise_Ta_Pedia
        End_Procedure
        
        procedure exiting integer whereTo returns integer
            Integer ret_val
            Date dHmnia
            String sStr
            Move '' to sStr
            forward get msg_exiting whereTo to ret_val
            if ret_val procedure_return ret_val
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Hmnia to dHmnia
            If (dHmnia<>'') Begin
                If ((dHmnia<Syscurxr.Year_XrhshFrom) Or (dHmnia>Syscurxr.Year_XrhshTo)) Begin
                    append sstr tz.oria_xrhshs syscurxr.year_year '   òß¶ ' syscurxr.year_xrhshfrom '    ú¢™ ' syscurxr.year_xrhshto 
                    send stop_box "Ü£ú®¶£û§Âò ú°´Ê™ ¶®Â‡§ Æ®„©û™" sstr 
                    Function_Return 1
                End
            End
            procedure_return ret_val
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Hmnia

    Object Particle_Pseira_Seira is a dbComboFormSub

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Entry_Item Particle.Pseira_seira
        Set Size to 13 76
        Set Location to 33 165
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Allow_Blank_State to TRUE

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        On_Key KCancel Send Next
        
        
        
        Procedure Combo_Item_Changed
            String sSeira sAuto sWhat
            Forward Send Combo_Item_Changed
            Get Value Item 0 to sSeira
            Set psSeira to (Trim(sSeira))
            Send Show_Seira
            Get psIsSeiraAutoNum to sAuto
            Move (Trim(sAuto)) to sAuto
            Set Shadow_State Of Particle_Partl_No Item 0 to (sAuto='1')
        End_procedure
        
        Procedure OnCloseUp
            String sSeira sAuto sWhat
            Forward Send OnCloseUp
            Get Value Item 0 to sSeira
            Set psSeira to (Trim(sSeira))
            Send Show_Seira
            Get psIsSeiraAutoNum to sAuto
            Move (Trim(sAuto)) to sAuto
            Set Shadow_State Of Particle_Partl_No Item 0 to (sAuto='1')
        End_Procedure
        
        Procedure Combo_Fill_List
            String sSeira
            Send Combo_Delete_Data
            Send Rebuild_Constraints to Pseira_DD2
            Send Clear to Pseira_DD2
            Send Find to Pseira_DD2 First_Record 1
            While (Found=1)
                Get Field_Current_Value Of Pseira_DD2 Field Pseira.Pseira_Seira to sSeira
                Send Combo_Add_Item (Trim(sSeira))
                Send Find to Pseira_DD2 Next_Record 1
            Loop
        End_Procedure
        
        Procedure Find_Next
        End_Procedure
        Procedure Find_Previous
        End_Procedure
        Procedure Find_Ge
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Pseira_Seira

    Object FormSub1 is a FormSub
        Set Size to 7 9
        Set Location to 36 252
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to clLime
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 63
        Set Location to 31 342
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
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_No

    Object Particle_Partl_Recr is a dbFormSub
        Entry_Item Particle.Partl_recr
        Set Size to 13 73
        Set Location to 32 430
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                    
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        // Ñ§ú®ö¶ß¶†ú†´ò† £ú Alt+R
        Set Visible_State To False
        Set Enabled_State to False
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Recr

    Object Clients_Client_Name is a dbFormSub
        entry_item clients.client_name 
        Set Size to 13 442
        Set Location to 49 61
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                    
        Procedure Request_Clear
            Send Clear to Clients_DD
            Send Rebuild_Constraints to CN_DD
            Send Show_CN
        End_Procedure
        
        Procedure Request_Clear_All
            Send Clear to Clients_DD
            Send Rebuild_Constraints to CN_DD
            Send Show_CN
        End_Procedure
        
        Procedure Prompt
            Send Clear to CN_DD
            Send Clear to CN_DD2
            Set Value Of Particle_CN_Code to ''
            Set psModule Of (sl100(Self)) to (psModule(Self))
            Forward Send Prompt
            Send rebuild_Constraints to Cn_DD
            Send Show_CN
        End_procedure
        
        Procedure Find_Next
            Send Clear to CN_DD
            Send Clear to CN_DD2
            Set Value Of Particle_CN_Code to ''
            Forward Send Find_Next
            Send rebuild_Constraints to Cn_DD
            Send Show_CN
        End_procedure
        
        Procedure Find_Previous
            Send Clear to CN_DD
            Send Clear to CN_DD2
            Set Value Of Particle_CN_Code to ''
            Forward Send Find_Previous
            Send rebuild_Constraints to Cn_DD
            Send Show_CN
        End_procedure
        
        Procedure Find_Ge
            Send Clear to CN_DD
            Send Clear to CN_DD2
            Set Value Of Particle_CN_Code to ''
            Forward Send Find_GE
            Send rebuild_Constraints to Cn_DD
            Send Show_CN
        End_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_Client_Name

    Object Particle_Cn_Code is a dbFormSub

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Entry_Item Particle.Cn_code
        Set Size to 14 126
        Set Location to 63 61
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
                    
        Procedure Request_Clear
            Send Clear to Cn_DD
            Send Clear to Cn_DD2
        End_Procedure
        
        Procedure Request_Clear_All
            Send Clear to Cn_DD
            Send Clear to Cn_DD2
        End_Procedure
        
        Procedure Prompt_CallBack Integer hPromptID
            String sID
            get field_current_value of clients_dd field clients.client_id to sid 
            Set FragmaClient_ID Of hPromptID to sID
        End_Procedure
        
        Procedure Prompt
            Forward Send Prompt
            Send Show_CN
        End_Procedure
        
        Procedure OnChange
            Send Show_CN
        End_procedure
        
        
        Procedure Find_Next
        End_Procedure
        Procedure Find_Previous
        End_Procedure
        Procedure Find_GE
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Cn_Code

    Object FormSub2 is a FormSub
        Set Size to 7 9
        Set Location to 66 189
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to clLime
        
        
        //AB-StoreEnd

    End_Object    // FormSub2

    Object Cn_Cn_Descr is a dbFormSub
        Entry_Item Cn.Cn_descr
        Set Server to (Cn_DD(self))
        Set Size to 13 213
        Set Location to 65 241
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                    
        Set Server to (CN_DD2(Self))
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cn_Cn_Descr

    Object frmIsClosed is a FormSub
        Set Size to 13 18
        Set Location to 80 485
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                    
        Set Shadow_State to True
        
        
        //AB-StoreEnd

    End_Object    // frmIsClosed

    Object Nomisma_Nomisma_Descr is a dbFormSub
        Entry_Item Nomisma.Nomisma_code
        Set Size to 13 126
        Set Location to 80 61
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        
        Procedure OnChange
            Send Set_The_Decimal_Points
            Send Find_The_Rate
        End_Procedure
        
        Procedure Find_Next
            Forward Send Find_Next
            Send Set_The_Decimal_Points
            Send Find_The_Rate
        End_Procedure
        
        Procedure Find_Previous
            Forward Send Find_Previous
            Send Set_The_Decimal_Points
            Send Find_The_Rate
        End_Procedure
        
        Procedure Find_GE
            Forward Send Find_GE
            Send Set_The_Decimal_Points
            Send Find_The_Rate
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Nomisma_Nomisma_Descr

    Object Particle_Isotimia is a dbFormSub
        Entry_Item Particle.Isotimia
        set label to "à©¶´†£Âò" 
        Set Size to 13 69
        Set Location to 80 241
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        
        //AB-StoreEnd

    End_Object    // Particle_Isotimia

    Object frmIsotimia is a FormSub
        Set Size to 13 61
        Set Location to 80 324
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmIsotimia

    Object frmEURO is a FormSub
        Set Size to 13 61
        Set Location to 80 393
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmEURO

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 123 523
        Set Location to 98 0
        Object dbTabPageSubS1 is a dbTabPageSubS
            set label to "â†§„©ú†™    " 
            Object Pmoves_ is a dbGridSub
                Set Main_File to Pmoves.File_Number
                Set Server to (Pmoves_DD(self))
                Set Size to 100 519
                Set Location to 4 -1
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Witemx.Witemx_recr
                    Entry_Item Witemx.Witemx_descr
                    Entry_Item Wax.Wax_descr
                    Entry_Item Pmoves.Pms_qty
                    entry_item units.units_descr 
                    Entry_Item Pmoves.Pms_unitprice
                    Entry_Item Pmoves.Pms_pctdisc
                    Entry_Item Pmoves.Pms_discam
                    Entry_Item Pmoves.Pms_amaftdisc
                    Entry_Item Pmoves.Pms_vatpct
                    Entry_Item Pmoves.Pms_vatam
                    Entry_Item Pmoves.Pms_payable
                End_Row

                Set Form_Width    item 0 to 30
                set header_label  item 0 to "â‡õ" 
                
                Set Form_Width    item 1 to 66
                set header_label  item 1 to "Ñ†õ¶™" 
                
                Set Form_Width    item 2 to 40
                set header_label  item 2 to "Äß¶ü„°û      :" 
                
                Set Form_Width    item 3 to 27
                set header_label  item 3 to "è¶©" 
                
                Set Form_Width    item 4 to 29
                set header_label  item 4 to "ã/ã" 
                
                Set Form_Width    item 5 to 47
                set header_label  item 5 to "í†£„ ã¶§" 
                
                Set Form_Width    item 6 to 34
                set header_label  item 6 to "% Ñ°ß´" 
                
                Set Form_Width    item 7 to 53
                set header_label  item 7 to "è¶©Ê Ñ°ß´" 
                
                Set Form_Width    item 8 to 42
                set header_label  item 8 to "åú´" 
                
                Set Form_Width    item 9 to 36
                set header_label  item 9 to "% îèÄ" 
                
                Set Form_Width    item 10 to 53
                set header_label  item 10 to "è¶©Ê îèÄ" 
                
                Set Form_Width    item 11 to 58
                set header_label  item 11 to "ëÁ§¶¢¶" 
                

                //AB-StoreStart
                                    
                Set Column_Option       Item  1 to NoEnter True // èú®†ö®ò≠„ ÑÂõ¶¨™
                Set Column_Option       Item  4 to NoEnter True // ã¶§·õò ã‚´®û©û™
                Set Column_Option       Item  7 to NoEnter True // è¶©¶ Ñ°ß´‡©û™
                Set Column_Option       Item  8 to NoEnter True // åú´ è¶©¶ (Calculated)
                Set Column_Option       Item 11 to NoEnter True // ë¨§¶¢¶   (Calculated)
                
                Set Points Item 3 to 1 // 1 Éú°òõ†°¶ ö†ò ´û§ è¶©¶©´û´ò 06/03/2001 js
                
                Function Child_entering returns Integer
                    Integer rVal iRec iDecs iRecNom
                    Forward Get Child_Entering to rVal
                    If (Not(rVal)) Begin
                        If (Should_Save(Particle_DD(Self))) Send Request_Save to (Particle_DD(Self))
                        Get Field_Current_Value Of Particle_DD Field Particle.Recnum to iRec
                        Get Field_Current_Value Of Nomisma_DD Field Nomisma.Recnum to iRecNom
                        If (Not(iRec)) Begin
                            send info_box "Éú§ ¨ß·®Æú† ú§ú®öÊ ßò®ò©´ò´†°Ê" tz.plhroforia 
                            Move 1 to rVal
                        End
                        Else If (Not(iRecNom)) Begin
                            send info_box "Éú§ úß†¢‚•ò´ú åÊ£†©£ò ©´¶ èò®ò©´ò´†°Ê" tz.plhroforia 
                            Move 1 to rVal
                        End
                    End
                    Function_Return rVal
                End_Function
                
                Procedure Item_Change Integer Fromi Integer Toi Returns Integer
                    Integer rVal iBase iColumn iFieldNumber iFileNumber
                    Integer iFromPCT iDecimals iYear iColfrom iColTo
                    Number nQty nTimhMon nQtyTimhMon nPctEkpt nPosoEkpt
                    Number nPosoNet nPctFpa nPosoFpa nPosoSynolo nFpa
                    String sNameFrom sNameTo sRecr sWapokat sCompany sBranch swrecr
                
                    Forward Get Msg_Item_Change Fromi Toi To Rval
                
                    Get Column FromI    to iColumn
                    Get Column FromI    to iColFrom
                    Get Column ToI      to iColTo
                
                    If ((iColFrom=0) Or (iColTo=2)) Begin
                        Get Field_Current_Value Of Witemx_DD Field Witemx.Witemx_recr to swrecr
                        If (trim(swrecr)<>'') Begin
                            Move SysCurXr.Company_Code   to sCompany
                            Move SysCurXr.Branch_Code    to sBranch
                            Move SysCurXr.Year_Year      to iYear
                            Get Field_Current_Value Of Witemx_DD Field Witemx.ITEM_APOKAT_COD ;
                                                        to sWapokat
                
                            Set piMustConstrain Of (Wax(Self)) To True
                            Set piYear          Of (Wax(Self)) To iYear
                            Set psCompany       Of (Wax(Self)) To sCompany
                            Set psBranch        Of (Wax(Self)) To sBranch
                            Set psWapokat       Of (Wax(Self)) To sWapokat
                
                            Get Field_Current_Value Of Fpa_DD       Field Fpa.Fpa_Pososto   to nFpa
                            Set Field_Changed_Value Of Pmoves_DD    Field Pmoves.Pms_Vatpct to nFpa
                        End
                    End
                
                    Get Data_File  Item iColumn                             to iFileNumber
                    Get Data_Field Item iColumn                             to iFieldNumber
                    Get_Attribute DF_FIELD_NAME Of iFileNumber iFieldNumber to sNameFrom
                    Move (Trim(sNameFrom))                                  to sNameFrom
                
                    Get Column ToI                                          to iColumn
                    Get Data_File  Item iColumn                             to iFileNumber
                    Get Data_Field Item iColumn                             to iFieldNumber
                    Get_Attribute DF_FIELD_NAME Of iFileNumber iFieldNumber to sNameTo
                    Move (Trim(sNameTo))                                    to sNameTo
                
                    Get Field_Current_Value Of Nomisma_DD Field Nomisma.Dekadika  To iDecimals
                
                    Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_qty       To nQty
                    Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_unitprice To nTimhMon
                
                    If ((nQty<>0) And (nTimhMon<>0)) Begin
                
                        Move (nQty*nTimhMon) to nQtyTimhMon
                
                        Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_pctdisc   To nPctEkpt
                        Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_discam    To nPosoEkpt
                
                        If (sNameFrom=(Uppercase('Pms_PctDisc'))) Begin
                            Move  (Round_Number((nQtyTimhMon*nPctEkpt/100),iDecimals))    to nPosoEkpt
                            Set Field_Changed_Value Of Pmoves_DD Field Pmoves.Pms_discam To nPosoEkpt
                        End
                
                        Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_discam    To nPosoEkpt
                        Set Field_Changed_Value Of Pmoves_DD Field Pmoves.Pms_Amaftdisc To (nQtyTimhMon-nPosoEkpt)
                        Move (nQtyTimhMon-nPosoEkpt)                                    To nPosoNet
                
                        Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_VatPct    To nPctFpa
                        Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_VatAm     To nPosoFpa
                
                        If (sNameFrom=(Uppercase('Pms_VatPct'))) Begin
                            Move  (Round_Number((nPosoNet*nPctFpa/100),iDecimals)) to nPosoFpa
                            Set Field_Changed_Value Of Pmoves_DD Field Pmoves.Pms_VatAm To nPosoFpa
                        End
                
                        Get Field_Current_Value Of Pmoves_DD Field Pmoves.Pms_VatAm     To nPosoFpa
                        Move (nPosoNet+nPosoFpa) to nPosoSynolo
                        Set Field_Changed_Value Of Pmoves_DD Field Pmoves.Pms_Payable   To nPosoSynolo
                
                    End
                
                    Procedure_Return rVal
                End_Procedure
                
                
                
                //AB-StoreEnd

            End_Object    // Pmoves_


            //AB-StoreStart
            set label to "Ä§·¢¨©û ßò®ò©´ò´†°¶Á" 
            
            //AB-StoreEnd

        End_Object    // dbTabPageSubS1

        Object TP______ is a dbTabPageSubS
            set label to "ëÆú´†°· èò®ò©´ò´†°·" 
            Object Psxetika_ is a dbGridSub

                //AB-StoreTopStart
                                    
                                    
                //AB-StoreTopEnd

                Set Main_File to Psxetika.File_Number
                Set Server to (Psxetika_DD(self))
                Set Size to 99 509
                Set Location to 3 3
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Psxetika.Psx_partl_recr
                    Entry_Item Psxetika.Sx_client_desc
                    Entry_Item Psxetika.Sx_ptyppar_desc
                    Entry_Item Psxetika.Sx_partl_hmnia
                    Entry_Item Psxetika.Sx_partl_no
                    Entry_Item Psxetika.Sx_pseira_seira
                End_Row

                Set Form_Width    item 0 to 65
                Set Header_Label  item 0 to "Recr"
                
                Set Form_Width    item 1 to 161
                set header_label  item 1 to "î¶®‚ò™" 
                
                Set Form_Width    item 2 to 127
                set header_label  item 2 to "èò®ò©´ò´†°Ê" 
                
                Set Form_Width    item 3 to 60
                set header_label  item 3 to "Ü£ú®/§Âò" 
                
                Set Form_Width    item 4 to 53
                set header_label  item 4 to "Ä®†ü£Ê™" 
                
                Set Form_Width    item 5 to 38
                set header_label  item 5 to "ëú†®ò" 
                

                //AB-StoreStart
                                    
                Function Child_entering returns Integer
                    Integer rVal iRec iDecs iRecNom
                    Forward Get Child_Entering to rVal
                    If (Not(rVal)) Begin
                        If (Should_Save(Particle_DD(Self))) Send Request_Save to (Particle_DD(Self))
                        Get Field_Current_Value Of Particle_DD Field Particle.Recnum to iRec
                        Get Field_Current_Value Of Nomisma_DD Field Nomisma.Recnum to iRecNom
                        If (Not(iRec)) Begin
                            send info_box "Éú§ ¨ß·®Æú† ú§ú®öÊ ßò®ò©´ò´†°Ê" tz.plhroforia 
                            Move 1 to rVal
                        End
                        Else If (Not(iRecNom)) Begin
                            send info_box "Éú§ úß†¢‚•ò´ú åÊ£†©£ò ©´¶ èò®ò©´ò´†°Ê" tz.plhroforia 
                            Move 1 to rVal
                        End
                    End
                    Function_Return rVal
                End_Function
                
                
                //AB-StoreEnd

            End_Object    // Psxetika_


            //AB-StoreStart
            set label to "ëÆú´†°· èò®ò©´ò´†°·" 
            
            
            //AB-StoreEnd

        End_Object    // TP______

    End_Object    // dbTabDialogSubS1

    Object btnKleisimo is a ButtonSub
        set label to "â¢úÂ©†£¶" 
        Set Size to 13 50
        Set Location to 222 370
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                    
        Procedure OnClick
            String sRecr sStr
            Integer isClosed iErr iRecnum
        
        //    Set Visible_State Of frmCount To True
        //    Set Enabled_State Of frmCount to True
        
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr    to sRecr
            Get Field_Current_Value Of Particle_DD Field Particle.Recnum        to iRecnum
            Move (Trim(sRecr)) to sRecr
            If (sRecr<>'') Begin
                Begin_Transaction
                    Set psParticleRecr  Of (bpEnCmvs(Self)) to sRecr
                    Set piParticleID    Of (bpEnCmvs(Self)) to (Particle(Self))
                    Set psModule        Of (bpEnCmvs(Self)) to (psModule(Self))
                    Send DoProcess                          to (bpEnCmvs(Self))
                    Get piLathos        Of (bpEnCmvs(Self)) to iErr
                    If (iErr) Abort_Transaction
                End_Transaction
                     If (iErr=50000) Send Stop_Box "No Initial Particle recr is passed"                         "Error 50000"
                Else If (iErr=50001) Send Stop_Box "Initially Passed Particle Recr Not Found"                   "Error 50001"
                Else If (iErr=50002) Send Stop_Box "Error While attempting to Delete Cmoves"                    "Error 50002"
                Else If (iErr=50003) Send Stop_Box "Could not find Cmoves with Particle_Cmoves_Recr"            "Error 50003"
                Else If (iErr=50004) Send Stop_Box "Error While Saving Particle after deletion Cmoves+WcMoves"  "Error 50004"
                Else If (iErr=50005) Send Stop_Box "Client record not found"                                    "Error 50005"
                Else If (iErr=50006) Send Stop_Box "Ctypkin record not found"                                   "Error 50006"
                Else If (iErr=50007) Send Stop_Box "Error While Saving Cmoves"                                  "Error 50007"
                Else If (iErr=50008) Send Stop_Box "Saved Cmoves but dont have Recr"                            "Error 50008"
                Else If (iErr=50009) Send Stop_Box "Error While Saving Particle after Saving Cmoves+Wmoves"     "Error 50009"
                Else If (iErr=50010) Send Stop_Box "Nomisma record not found"                                   "Error 50010"
                Else If (iErr=50011) Send Stop_Box "Client record not found for saving flags"                   "Error 50011"
                Else If (iErr=50012) Send Stop_Box "No Flags found in Cflagkin to process"                      "Error 50012"
                Else If (iErr=50111) Send Stop_Box "Could Not Delete Cmoves to Open Particle"                   "Error 50111"
                Else If (iErr=51000) Send Stop_Box "Found Cmoves Record on Open Particle"                       "Error 51000"
                Else If (iErr=59999) Send Stop_Box "Business Process Called without setting psModule property"  "Error 59999"
                Else If (iErr=60002) Send Stop_Box "Error While attempting to Delete WCmoves"                   "Error 60002"
                Else If (iErr=60003) Send Stop_Box "Could not find WCmoves with Particle_WCmoves_Recr"          "Error 60003"
                Else If (iErr=60006) Send Stop_Box "Wtypkin record not found"                                   "Error 60006"
                Else If (iErr=60007) Send Stop_Box "Error While Saving WCmoves"                                 "Error 60007"
                Else If (iErr=60008) Send Stop_Box "Saved WCmoves but dont have Recr"                           "Error 60008"
                Else If (iErr=60012) Send Stop_Box "No Flags found in Wflagkin to process"                      "Error 60012"
                Else If (iErr=60111) Send Stop_Box "Could Not Delete WCmoves to Open Particle"                  "Error 60111"
                Else If (iErr=60106) Send Stop_Box "Witemx Record Not Found"                                    "Error 60106"
                Else If (iErr=60206) Send Stop_Box "Wax Record Not Found"                                       "Error 60206"
                Else If (iErr=60500) Send Stop_Box "Could Not Update Pmoves with Wcmoves Recr"                  "Error 60500"
                Else If (iErr=61000) Send Stop_Box "Found WCmoves Record on Open Particle"                      "Error 61000"
                Else If (iErr=55555) Send Stop_Box "Error Saving Clients after updating Ypoloipa"               "Error 55555"
                Else If (iErr=55556) Send Stop_Box "Error Saving Clients after updating Hmnies"                 "Error 55556"
                Send Find_By_Recnum to Particle_DD Particle.File_Number iRecnum
            End
            else send info_box "Éú§ ¨ß·®Æú† ´®‚Æ¶§ ßò®ò©´ò´†°Ê. âò££Âò ò¢¢òö„ õú§ ‚ö†§ú" tz.plhroforia 
        //    Set Visible_State Of frmCount To False
        //    Set Enabled_State Of frmCount to False
        End_Procedure // OnClick
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnKleisimo

    Object btnEktyposh is a ButtonSub
        set label to "Ñ°´Á&ß‡©û" 
        Set Size to 13 50
        Set Location to 222 424
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                    
        Procedure OnClick
            String Wrecr
            Integer iNextNo iRecnum
            If (Particle.Recnum) Begin
                Move Particle.Recnum to iRecnum
                If (Particle.Partl_No<0) Begin
                    Clear Pseira
                    Move SysCurXr.Company_Code  to Pseira.Company_Code
                    Move SysCurXr.Branch_Code   to Pseira.Branch_Code
                    Move SysCurXr.Year_Year     to Pseira.Year_Year
                    Move Ctypkin.Ctypkin_Code   to Pseira.Ctypkin_Code
                    Move Wtypkin.Wtypkin_Code   to Pseira.Wtypkin_Code
                    Move Ptyppar.Ptyppar_Code   to Pseira.Ptyppar_Code
                    Move Particle.Pseira_Seira  to Pseira.Pseira_Seira
                    Move Particle.Pseira_Seira  to Pseira.Pseira_Seira
                    Find eq Pseira By Index.1 // Pseira:Index.1:Company_Code+Branch_Code+Year_Year+;
                                              //                Ctypkin_Code+Wtypkin_Code+Ptyppar_Code+Seira_Seira
                    If (Found=1) Begin
                        Reread
                        // Ä§ û ©ú†®ò ú†§ò† autonum °ò† ´¶ ßò®ò©´ò´†°¶ ú†§ò† ´¨ß¶¨ 2 èóäÜëÜ
                        If ((Pseira.Pseira_Autonum=1) And (Ptyppar.Ptyppar_Is_What='2')) Begin
                           Move (Pseira.Autonum_Plus+1) to iNextNo
                           Move (Pseira.Autonum_Plus+1) to Pseira.Autonum_Plus
                           Saverecord Pseira
                           Move iNextNo to Particle.Partl_No
                           Saverecord Particle
                           Send Find_By_Recnum to Particle_DD Particle.File_Number iRecnum
                        End
                        Unlock
                    End
                    Get Field_Current_Value Of (Particle_DD(Self)) Field Particle.Partl_Recr to Wrecr
                    Set psRecr Of (Timologio_BasicReport(Rmhtrb(Self))) to Wrecr
                    Send StartReport to Rmhtrb
                    //******
                End
                Else Begin
                    if (particle.partl_no=0) send info_box "Éú§ £ß¶®úÂ §ò ´¨ß‡üúÂ ßò®ò©´ò´†°Ê £ú ò®†ü£Ê 0" tz.plhroforia 
                    Else Begin
                        Get Field_Current_Value Of (Particle_DD(Self)) Field Particle.Partl_Recr to Wrecr
                        Set psRecr Of (Timologio_BasicReport(Rmhtrb(Self))) to Wrecr
                        Send StartReport to Rmhtrb
                        //******
                    End
                End
            End
            else send info_box "Éú§ ¨ß·®Æú† ßò®ò©´ò´†°Ê ö†ò ú°´Áß‡©û" tz.plhroforia 
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnEktyposh

    Object Payam is a dbFormSub
        Entry_Item Particle.Partl_payam
        Set Size to 13 71
        Set Location to 254 438
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to clTeal
        Set TextColor       to clWhite
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Payam

    Object Totambd is a dbFormSub
        Entry_Item Particle.Partl_totambd
        Set Size to 13 71
        Set Location to 254 52
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        
        //AB-StoreEnd

    End_Object    // Totambd

    Object Amdiscpms is a dbFormSub
        Entry_Item Particle.Partl_amdiscpms
        Set Size to 13 71
        Set Location to 223 52
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        //AB-StoreEnd

    End_Object    // Amdiscpms

    Object Totdiscpc is a dbFormSub
        Entry_Item Particle.Partl_totdiscpc
        Set Size to 13 71
        Set Location to 239 52
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
                    
        Procedure OnChange
            If (Focus(Desktop)=TotDiscPc(Self)) Begin
                Send Enhm_Particle_Amounts
            End
        End_Procedure
        
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        
        //AB-StoreEnd

    End_Object    // Totdiscpc

    Object Vatam is a dbFormSub
        Entry_Item Particle.Partl_vatam
        Set Size to 13 71
        Set Location to 254 264
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
        Procedure OnChange
            If (Focus(Desktop)=Extra(Self)) Begin
                Send Enhm_Particle_Amounts
            End
        End_Procedure
        
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        
        //AB-StoreEnd

    End_Object    // Vatam

    Object Extra is a dbFormSub
        Entry_Item Particle.Partl_extra
        Set Size to 13 71
        Set Location to 254 363
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
        Procedure OnChange
            If (Focus(Desktop)=Extra(Self)) Begin
                Send Enhm_Particle_Amounts
            End
        End_Procedure
        
        Procedure Request_Clear
            Delegate Send Request_Clear
        End_procedure
        
        Procedure Request_Clear_All
            Delegate Send Request_Clear_All
        End_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Extra

    Object TextBoxSub1 is a TextBoxSub
        set label to "âòüò®„ ò•Âò" 
        Set Location to 255 5
        Set Size to 10 45
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        set label to "Ñ°ß´. ú†õÈ§" 
        Set Location to 224 5
        Set Size to 10 41
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        set label to "Ñ°ß´. í†£¶¢." 
        Set Location to 239 5
        Set Size to 10 40
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        set label to "Ñß†ôò®." 
        Set Location to 255 335
        Set Size to 8 25
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        set label to "î.è.Ä" 
        Set Location to 255 239
        Set Size to 10 23
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        set label to "è¢û®‡´‚¶" 
        Set Location to 243 439
        Set Size to 10 58
        Set FontWeight to 600
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        set label to "Ñ°ß´È©ú†™" 
        Set Location to 255 128
        Set Size to 10 37
    End_Object    // TextBoxSub7

    Object Discam is a dbFormSub
        Entry_Item Particle.Partl_discam
        Set Size to 13 71
        Set Location to 254 167
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "###,###,###,###.######"

        //AB-StoreStart
                    
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to 15000804
        
        //AB-StoreEnd

    End_Object    // Discam

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                    
                    
        //AB-StoreTopEnd

        set label to "Ä§·¢¨©û îèÄ" 
        Set Size to 14 71
        Set Location to 238 264

        //AB-StoreStart
                    
        Procedure OnClick
            Send Activate_PartlFpa
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub
        Set Label to "ButtonSub2"
        Set Bitmap to "exit_m.bmp"
        Set Size to 18 21
        Set Location to 222 500

        //AB-StoreStart
                    
        Procedure OnClick
            Send Request_Cancel //Close_Panel
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object Textbox1 is a Textbox
        set label to "èò®ò©´ò´†°Ê" 
        Set Location to 3 8
        Set Size to 10 48
    End_Object    // Textbox1

    Object Textbox2 is a Textbox
        set label to "âÂ§.èò®ò©´." 
        Set Location to 18 8
        Set Size to 10 43
    End_Object    // Textbox2

    Object Textbox3 is a Textbox
        set label to "Ü£-§Âò" 
        Set Location to 35 8
        Set Size to 10 33
    End_Object    // Textbox3

    Object Textbox4 is a Textbox
        set label to "ë¨§ò¢/§¶™" 
        Set Location to 50 8
        Set Size to 10 41
    End_Object    // Textbox4

    Object Textbox5 is a Textbox
        set label to "Ñ®ö¶/ìß¶°ò´" 
        Set Location to 65 8
        Set Size to 10 49
    End_Object    // Textbox5

    Object Textbox6 is a Textbox
        set label to "å¶£Â©£ò´ò" 
        Set Location to 80 8
        Set Size to 10 34
    End_Object    // Textbox6

    Object TextBoxSub8 is a TextBoxSub
        set label to "ëú†®ò" 
        Set Location to 34 133
        Set Size to 10 27
    End_Object    // TextBoxSub8

    Object TextBoxSub9 is a TextBoxSub
        set label to "èú®†ö®ò≠„" 
        Set Location to 65 200
        Set Size to 10 37

        //AB-StoreStart
        
        set label to "èú®†ö®ò≠„" 
        
        //AB-StoreEnd

    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        set label to "âÂ§. Äß¶ü„°û™" 
        Set Location to 18 274
        Set Size to 10 57
    End_Object    // TextBoxSub10

    Object TextBoxSub11 is a TextBoxSub
        set label to "Ä®†ü£Ê™" 
        Set Location to 32 274
        Set Size to 10 37
    End_Object    // TextBoxSub11

    Object txtRecr is a TextBoxSub
        Set Label to "Recr"
        Set Location to 33 413
        Set Size to 10 17

        //AB-StoreStart
                    
        // Ñ§ú®ö¶ß¶†ú†´ò† £ú Alt+R
        Set Visible_State To False
        
        
        
        //AB-StoreEnd

    End_Object    // txtRecr

    Object frmCount is a FormSub
        Set Size to 13 25
        Set Location to 222 343
        Set Label_Col_Offset to 2

        //AB-StoreStart
        Set Visible_State To False
        Set Enabled_State to False
        
        //AB-StoreEnd

    End_Object    // frmCount


    //AB-StoreStart
            
    On_Key Key_Alt+Key_r Send Show_Recr
    On_Key KCancel Send Next
    
    Procedure Show_Recr
        Integer iState
        Get Visible_State Of Particle_Partl_Recr to iState
        Set Visible_State Of Particle_Partl_Recr to (1-iState)
        Set Enabled_State Of Particle_Partl_Recr to (1-iState)
        Set Visible_State Of TxtRecr             to (1-iState)
    End_procedure
    
    Procedure Request_Clear
        Forward Send Request_Clear
        Send Delete_Data to Particle_Pseira_Seira
        Send Clear to Clients_DD //////CN_DD
    End_procedure
    
    Procedure Request_Clear_All
        Forward Send Request_Clear_All
        Send Delete_Data to Particle_Pseira_Seira
        Send Clear to Clients_DD ////CN_DD
    End_procedure
    
    
    Procedure Activate_View Returns Integer
        String sStr sModule sDescr
        Integer rVal
    
        Move '' to sStr
        move (append(sstr, tz.timologhsh                    +'        ' +; 
                           (Trim(SyscurXr.Company_Name))   +' - '      +;
                           (Trim(SyscurXr.Branch_Name))    +' - '      +;
                           (Trim(SyscurXr.Year_Descr)))) to sStr
        Set Label Of Particle to sStr
        Forward Get Msg_Activate_View to rVal
    
    
        Get psMenuModule  Of Main_Menu  to sModule
    
        Set psModule                    to sModule
    
        Get gsfCode_Mast "MODULE" sModule to sDescr
        Move (Trim(sDescr)) to sDescr
    
        // â‡õ†°ò™ ß¶¨ ò≠¶®ò ´¶ constrain ´‡§ ©´¶†Æú†‡§ ´¶¨ view ¶ß‡™ ßò®ò©´ò´†°·
        // û °†§„©ú†™ ß¶¨ èêÑèÑà §ò úÂ§ò† constrain ò§ò¢¶öò £ú ´¶ °Á°¢‡£ò òß¶
        // ´¶ ¶ß¶†¶ °ò¢úÂ´ò† ´¶ view. è.ï. ò§ °¢ûüúÂ òß¶ è‡¢„©ú†™/èú¢·´ú™ §ò £û§
        // ≠òÂ§¶§´ò† ©´ò ßò®ò©´ò´†°· ´ò ctypkin Äö¶®È§ °¢ß....
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                Send Rebuild_Constraints to Ptyppar_DD
                set label of particle to "è‡¢„©ú†™ - â†§„©ú†™    " 
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                Send Rebuild_Constraints to Ptyppar_DD
                set label of particle to "Äö¶®‚™ - â†§„©ú†™    " 
              Case Break
        Case End
        Send Rebuild_Constraints to Particle_DD
        If (psFindParticleRecr(Self)<>'') Begin
            Clear Particle
            Move (psFindParticleRecr(Self)) to Particle.Partl_Recr
            Find eq Particle By Index.2   // Particle:Index.2:Partl_Recr
            If (Found=1) Send Find to Particle_DD eq 2 // Particle:Index.2:Partl_Recr
        End
    End_Procedure
    
    Procedure Find_The_Rate
        String  sCode sWhat
        Integer iRateID
        Number nEuro nIsot nRate
        Date dHmnia
        Get Field_Current_Value Of Nomisma_DD   Field Nomisma.Nomisma_Code to sCode
        Get Field_Current_Value Of Particle_DD  Field Particle.Partl_Hmnia to dHmnia
        Get Field_Current_Value Of Particle_DD  Field Particle.Isotimia    to nIsot
        If (nIsot=0) Begin
            If (dHmnia='') Sysdate dHmnia
            Move (Trim(sCode)) to sCode
            Clear Isotimia
            Move sCode      to Isotimia.Nomisma_Code
            Move (dHmnia+1) to Isotimia.Isotimia_Hmnia
            Find lt Isotimia by Index.1 // Isotimia:Index.1:Nomisma_Code+Isotimia_Hmnia
    
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
    
            If (Nomisma.Einai_Drx) Begin
                Set Field_Changed_Value Of Particle_DD Field Particle.Isotimia to 1
                Set Value Of frmIsotimia    to 1
                Set Value Of frmEuro        to Isotimia.Isotimia_Euro
            End
            Else Begin
                Case Begin
                    case (isotimia.poia_metatrepei=tz.a) // agora ellhniko 
                        Set Field_Changed_Value Of Particle_DD Field Particle.Isotimia  to Isotimia.Isotimia_Agora
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Agora
                        Case Break
                    case (isotimia.poia_metatrepei=tz.p) // polhsh ellhniko 
                        Set Field_Changed_Value Of Particle_DD Field Particle.Isotimia  to Isotimia.Isotimia_Polhsh
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Polhsh
                        Case Break
                    Case (Isotimia.Poia_Metatrepei='F') // Fixing Ellhniko
                        Set Field_Changed_Value Of Particle_DD Field Particle.Isotimia  to Isotimia.Isotimia_Fixing
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Fixing
                        Case Break
                    Case (Isotimia.Poia_Metatrepei='P') // Private Ellhniko
                        Set Field_Changed_Value Of Particle_DD Field Particle.Isotimia  to Isotimia.Isotimia_Privat
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Privat
                        Case Break
                Case End
                Set Value Of frmEuro        to Isotimia.Isotimia_Euro
            End
        End
        Else Begin
            If (dHmnia='') Sysdate dHmnia
            Move (Trim(sCode)) to sCode
            Clear Isotimia
            Move sCode      to Isotimia.Nomisma_Code
            Move (dHmnia+1) to Isotimia.Isotimia_Hmnia
            Find lt Isotimia by Index.1 // Isotimia:Index.1:Nomisma_Code+Isotimia_Hmnia
    
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
    
            If (Nomisma.Einai_Drx) Begin
                Set Value Of frmIsotimia    to 1
                Set Value Of frmEuro        to Isotimia.Isotimia_Euro
            End
            Else Begin
                Case Begin
                    case (isotimia.poia_metatrepei=tz.a) // agora ellhniko 
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Agora
                        Case Break
                    case (isotimia.poia_metatrepei=tz.p) // polhsh ellhniko 
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Polhsh
                        Case Break
                    Case (Isotimia.Poia_Metatrepei='F') // Fixing Ellhniko
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Fixing
                        Case Break
                    Case (Isotimia.Poia_Metatrepei='P') // Private Ellhniko
                        Set Value Of frmIsotimia                                        to Isotimia.Isotimia_Privat
                        Case Break
                Case End
                Set Value Of frmEuro        to Isotimia.Isotimia_Euro
            End
        End
        Set Shadow_State Of Particle_ISotimia to (Nomisma.Einai_DRX)
    End_Procedure
    
    Procedure Set_The_Decimal_Points
        Integer iGridID iAmount
        String  sCode sOld
        Get Field_Current_Value Of Nomisma_DD Field Nomisma.Nomisma_Code to sCode
        Get psOldNomismaCode to sOld
        Move (Trim(sCode))  to sCode
        Move (Trim(sOld))   to sOld
    
        If (sCode<>sOld) Begin
            Set psOldNomismaCode to sCode
            Move (Pmoves_(dbTabPageSubS1(dbTabDialogSubS1(Self)))) to iGridID
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma by Index.1
            Set Dynamic_Update_State Of iGridID to False
             Set Visible_State Of iGridID to False
    
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´¶ Grid Pmoves
            Set Points Of iGridID   Item  3 to 1                 // è¶©Ê´û´ò
            Set Points Of iGridID   Item  5 to Nomisma.Dekadika  // í†£„ £¶§·õ¶™
            Set Points Of iGridID   Item  6 to 2                 // è¶©¶©´Ê Ñ°ß´‡©û™
            Set Points Of iGridID   Item  7 to Nomisma.Dekadika  // è¶©Ê Ñ°ß´‡©û™
            Set Points Of iGridID   Item  8 to Nomisma.Dekadika  // åú´ è¶©Ê (ß®¶ îßò)
            Set Points Of iGridID   Item  9 to 2                 // è¶©¶©´Ê îèÄ
            Set Points Of iGridID   Item 10 to Nomisma.Dekadika  // è¶©Ê îèÄ
            Set Points Of iGridID   Item 11 to Nomisma.Dekadika  // è¢û®‡´‚¶
    
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´ò ©Á§¶¢ò ´¶¨ ´†£¶¢¶öÂ¶¨
            Set Points Of Totambd   Item  0 to Nomisma.Dekadika
            Set Points Of Amdiscpms Item  0 to Nomisma.Dekadika
            Set Points Of Totdiscpc Item  0 to Nomisma.Dekadika
            Set Points Of Discam    Item  0 to Nomisma.Dekadika
            Set Points Of Vatam     Item  0 to Nomisma.Dekadika
            Set Points Of Extra     Item  0 to Nomisma.Dekadika
            Set Points Of Payam     Item  0 to Nomisma.Dekadika
    
            Set Numeric_Mask Of Totambd   Item  0  to 12 Nomisma.Dekadika "*,"
            Set Numeric_Mask Of Amdiscpms Item  0  to 12 Nomisma.Dekadika "*,"
            Set Numeric_Mask Of Totdiscpc Item  0  to 12 Nomisma.Dekadika "*,"
            Set Numeric_Mask Of Discam    Item  0  to 12 Nomisma.Dekadika "*,"
            Set Numeric_Mask Of Vatam     Item  0  to 12 Nomisma.Dekadika "*,"
            Set Numeric_Mask Of Extra     Item  0  to 12 Nomisma.Dekadika "*,"
            Set Numeric_Mask Of Payam     Item  0  to 12 Nomisma.Dekadika "*,"
    
            Set Visible_State         Of iGridID to True
            Set Dynamic_Update_State  Of iGridID to True
            //Send Display
        End
    End_procedure
    
    Procedure Show_Seira
        String  sSeira sCompany sBranch sCtypkin sWtypkin sPtyppar sWhat
        Integer iYear ret_val
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Company_Code      to sCompany
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Branch_Code       to sBranch
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Year_Year         to iYear
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Ctypkin_Code      to sCtypkin
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Wtypkin_Code      to sWtypkin
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Ptyppar_Code      to sPtyppar
        Get Field_Current_Value Of PtypPar_DD   Field Ptyppar.Ptyppar_Is_What   to sWhat
        Get Field_Current_Value Of Particle_DD  Field Particle.Pseira_Seira     to sSeira
        Clear Pseira
        Move (Trim(sCompany))   to Pseira.Company_Code
        Move (Trim(sBranch))    to Pseira.Branch_Code
        Move       iYear        to Pseira.Year_Year
        Move (Trim(sCtypkin))   to Pseira.Ctypkin_Code
        Move (Trim(sWtypkin))   to Pseira.Wtypkin_Code
        Move (Trim(sPtyppar))   to Pseira.Ptyppar_Code
        Move (Trim(sSeira))     to Pseira.Pseira_Seira
        Find eq Pseira By Index.1
        If (Found)  Begin
            Send Find_By_Recnum to Pseira_DD Pseira.File_Number Pseira.Recnum
            Set Color Of FormSub1 to clLime
            If ((Trim(sWhat)='2') And (Pseira.Pseira_Autonum=1)) ;
                Set psIsSeiraAutoNum to '1'
            Else Begin
                Set psIsSeiraAutoNum to ''
            End
        End
        Else Begin
            Set Color Of FormSub1 to clRed
            Set psIsSeiraAutoNum to ''
        End
    End_procedure
    
    Procedure Show_CN
        String  sCode sCompany sBranch sCustprom sCN_Recr
        String sClient_ID sClient_Recr sCN sCNd sCN_Code
        Integer iYear ret_val
        Get Value Of Particle_CN_Code Item 0 to sCode
        Clear Cn
        Move (Trim(sCode))      to CN.CN_Code
        Find Eq CN By Index.5
        If (Found)  Begin
            Send Find_By_recnum To CN_DD2 CN.File_Number CN.Recnum
            Move CN.CN_Recr to sCN_Recr
            Set Field_Changed_Value Of Particle_DD  Field Particle.CN_Recr  to sCN_Recr
            Set Color Of FormSub2 to clLime
        End
        Else Begin
            Send Clear to CN_DD
            Send Clear to CN_DD2
    //                Set Field_Changed_Value Of Particle_DD Field Particle.CN_Code to ''
    //                Set Field_Changed_Value Of Particle_DD Field Particle.CN_Recr to ''
            Set Color Of FormSub2 to clRed
        End
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Particle


//AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
