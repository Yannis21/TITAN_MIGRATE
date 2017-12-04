//AB/ Project CopenL
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "CopenL"
//AB/     Set ProjectFileName to "CopenL.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   CopenL is a dbViewSubS
//     Ctypkin_DD3 is a Ctypkin_DataDictionary
//     Country_DD2 is a Country_DataDictionary
//     Towns_DD2 is a Towns_DataDictionary
//     Cities_DD2 is a Cities_DataDictionary
//     Payresp_DD2 is a Payresp_DataDictionary
//     Areas_DD2 is a Areas_DataDictionary
//     Clients_DD2 is a Clients_DataDictionary
//     Ctypkin_DD2 is a Ctypkin_DataDictionary
//     Cmoves_DD2 is a Cmoves_DataDictionary
//     Cmovesa_DD2 is a Cmovesa_DataDictionary
//     Copen_DD2 is a Copen_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Clients_Client_Id is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     Cmoves_Cmoves_Hmnia is a dbFormSub
//     Cmoves_Cmoves_Par is a dbFormSub
//     Cmoves_Cmoves_Axia is a dbFormSub
//     Cmoves_Cmoves_C_Code2 is a dbFormSub
//     Cmoves_Axia_Pros_Sysx is a dbFormSub
//     Cmoves_Axia_Sysxet is a dbFormSub
//     Cmoves_Axia_Ypol_Sysx is a dbFormSub
//     Copen_ is a dbGridSub

// Register all objects
Register_Object Areas_DD
Register_Object Areas_DD2
Register_Object Cities_DD
Register_Object Cities_DD2
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object Cmoves_Axia_Pros_Sysx
Register_Object Cmoves_Axia_Sysxet
Register_Object Cmoves_Axia_Ypol_Sysx
Register_Object Cmoves_Cmoves_Axia
Register_Object Cmoves_Cmoves_C_Code2
Register_Object Cmoves_Cmoves_Hmnia
Register_Object Cmoves_Cmoves_Par
Register_Object Cmoves_DD
Register_Object Cmoves_DD2
Register_Object Cmovesa_DD
Register_Object Cmovesa_DD2
Register_Object Copen_
Register_Object Copen_DD
Register_Object Copen_DD2
Register_Object CopenL
Register_Object Country_DD
Register_Object Country_DD2
Register_Object Ctypkin_DD
Register_Object Ctypkin_DD2
Register_Object Ctypkin_DD3
Register_Object Payresp_DD
Register_Object Payresp_DD2
Register_Object Towns_DD
Register_Object Towns_DD2


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open Ctypkin
Open Clients
Use bp2ndCop.dg

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbGrid.Sub

Use CTYPKIN.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use CMOVES.DD
Use CMOVESA.DD
Use COPEN.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_CopenL FOR ;
;
Object CopenL is a dbViewSubS

    //AB-StoreTopStart
    Property String psModule    Public ''
    
    On_Key Key_Alt+Key_O Send OpenMe
    
    Use sl006a1.sl
    
    Property String psClientID  Public ''
    Property date pdApo         Public ''
    Property date pdEos         Public ''
    
    Property Integer piXr_or_Pi Public  0
    
    
    ///////////////////////////////////////////////
    Object Ctypkin_DD3 is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD3
    
    Object Country_DD2 is a Country_DataDictionary
    End_Object    // Country_DD2
    
    Object Towns_DD2 is a Towns_DataDictionary
        Set DDO_Server to (Country_DD2(self))
    End_Object    // Towns_DD2
    
    Object Cities_DD2 is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD2(self))
    End_Object    // Cities_DD2
    
    Object Payresp_DD2 is a Payresp_DataDictionary
    End_Object    // Payresp_DD2
    
    Object Areas_DD2 is a Areas_DataDictionary
    End_Object    // Areas_DD2
    
    Object Clients_DD2 is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD2(self))
        Set DDO_Server to (Payresp_DD2(self))
        Set DDO_Server to (Areas_DD2(self))
    End_Object    // Clients_DD2
    
    Object Ctypkin_DD2 is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD2
    
    Object Cmoves_DD2 is a Cmoves_DataDictionary
        Set DDO_Server  to (Ctypkin_DD2(self))
        Set DDO_Server  to (Clients_DD2(self))
        Set pifrombp    to 1
    End_Object    // Cmoves_DD2
    
    Object Cmovesa_DD2 is a Cmovesa_DataDictionary
        Set DDO_Server  to (Ctypkin_DD2(self))
        Set DDO_Server  to (Clients_DD2(self))
        //Set pifrombp    to 1
    End_Object    // Cmovesa_DD2
    
    Object Copen_DD2 is a Copen_DataDictionary
        Set DDO_Server to (Cmoves_DD2(self))
        Set DDO_Server to (Cmovesa_DD2(self))
    End_Object    // Copen_DD2
    ///////////////////////////////////////////////
    
    
    
    //AB-StoreTopEnd

    Set Label to "Put The Label of The View Here"
    Set Size to 287 522
    Set Location to 2 5

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
                    
        Set pifrombp to 1
        Set Field_Options Field Cmoves.Ctypkin_Code to DD_NOPUT
        
        Procedure OnConstrain
            If (psClientID(Self)<>'') Constrain Cmoves.Client_ID    Eq (psClientID(Self))
            If (pdApo     (Self)<>'') Constrain Cmoves.Cmoves_Hmnia Ge (pdApo     (Self))
            If (pdEos     (Self)<>'') Constrain Cmoves.Cmoves_Hmnia Le (pdEos     (Self))
            If (psModule  (Self)<>'') Constrain Cmoves.Module_From  Eq (psModule  (Self))
            //Constrain Cmoves.Flag_Ypol Eq 1
        End_Procedure
        
        Procedure Request_Save
        End_procedure
        
        Procedure Request_Delete
        End_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cmoves_DD

    Object Cmovesa_DD is a Cmovesa_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
        
        Procedure OnConstrain
            If (psClientID(Self)<>'') Constrain CmovesA.Client_ID    Eq (psClientID(Self))
            //If (psModule  (Self)<>'') Constrain Cmoves.Module_From  Eq (psModule  (Self))
            //Constrain Cmoves.Flag_Ypol Eq 1
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Cmovesa_DD

    Object Copen_DD is a Copen_DataDictionary
        Set DDO_Server to (Cmoves_DD(self))
        Set DDO_Server to (Cmovesa_DD(self))
        Set Constrain_File to Cmoves.File_Number
    End_Object    // Copen_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object Clients_Client_Id is a dbFormSub
        Entry_Item Clients.Client_id
        Set Label to "Client Id:"
        Set Size to 13 66
        Set Location to 19 69
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
                    
        Procedure Constrain_Moves
            String sClientID
            Get Field_Current_Value Of Clients_DD ;
                field clients.client_id to sclientid
            Set psClientID              to (Trim(sClientID))
            Send Rebuild_Constraints to Cmoves_DD
            Send Rebuild_Constraints to Cmovesa_DD
            Send Find to Copen_DD First_Record 4 // Copen:Index.4:Cmoves_Recr+Copen_Recr
        End_Procedure
        
        procedure exiting integer whereTo returns integer
            local integer ret_val
            forward get msg_exiting whereTo to ret_val
            if ret_val procedure_return ret_val
            Send Constrain_Moves
            procedure_return ret_val
        end_procedure
        
        Procedure Prompt
            Forward Send Prompt
            Send Constrain_Moves
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // Clients_Client_Id

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 208
        Set Location to 19 207
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Name

    Object Cmoves_Cmoves_Hmnia is a dbFormSub
        Entry_Item Cmoves.Cmoves_hmnia
        Set Server to (Cmoves_DD(self))
        Set Label to "Cmoves Hmnia:"
        Set Size to 13 66
        Set Location to 63 70
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        
        Set Item_Option Item 0 to NoPut true
        
        Procedure Set_The_Flag
            Integer iXP
        //    Get Field_Current_Value Of (Cmoves_DD(CopenL(Self))) Field Cmoves.Flag_Copen to iXP
        //    Set piXr_or_Pi Of (CopenL(Self)) to iXP
        //    Send Rebuild_Constraints to Cmovesa_DD
        //    Send Beginning_Of_Data to Copen_ True
        End_Procedure
        
        Procedure Prompt
            Integer iXP
            Set pdApo       Of (sl006(Self)) to (pdApo      (Self))
            Set pdEos       Of (sl006(Self)) to (pdEos      (Self))
            Set psClientID  Of (sl006(Self)) to (psClientID (Self))
            Set psModule    Of (sl006(Self)) to (psModule   (Self))
            Forward Send Prompt
            //Send Set_The_Flag
        End_Procedure
        
        //Procedure Refresh Integer iMode
        //    Forward Send Refresh iMode
        //    If (Cmoves.Is_Closed='1')   Set Color Of frmIsClosed to clred
        //    Else                        Set Color Of frmIsClosed to clLime
        //End_Procedure
        
        Procedure Exiting Integer WhereTo Returns Integer
            Integer ret_val iXP
            Forward Get Msg_Exiting WhereTo to ret_val
            If Ret_Val Procedure_Return Ret_Val
            //Send Set_The_Flag
            Procedure_Return ret_val
        End_procedure
        
        Procedure Find_Next
            Forward Send Find_Next
            //Send Set_The_Flag
        End_procedure
        
        Procedure Find_Previous
            Forward Send Find_Previous
            //Send Set_The_Flag
        End_procedure
        
        Procedure Find_GE
            Forward Send Find_GE
            //Send Set_The_Flag
        End_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cmoves_Cmoves_Hmnia

    Object Cmoves_Cmoves_Par is a dbFormSub
        Entry_Item Cmoves.Cmoves_par
        Set Server to (Cmoves_DD(self))
        Set Label to "Cmoves Par:"
        Set Size to 13 208
        Set Location to 63 208
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Cmoves_Cmoves_Par

    Object Cmoves_Cmoves_Axia is a dbFormSub
        Entry_Item Cmoves.Cmoves_axia
        Set Server to (Cmoves_DD(self))
        Set Label to "Cmoves Axia:"
        Set Size to 13 66
        Set Location to 82 70
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Cmoves_Cmoves_Axia

    Object Cmoves_Cmoves_C_Code2 is a dbFormSub
        Entry_Item Cmoves.Cmoves_c_code2
        Set Server to (Cmoves_DD(self))
        Set Size to 13 26
        Set Location to 82 139
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Cmoves_Cmoves_C_Code2

    Object Cmoves_Axia_Pros_Sysx is a dbFormSub
        Entry_Item Cmoves.Axia_pros_sysx
        Set Server to (Cmoves_DD(self))
        Set Label to "Axia Pros Sysx:"
        Set Size to 13 67
        Set Location to 113 70
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Cmoves_Axia_Pros_Sysx

    Object Cmoves_Axia_Sysxet is a dbFormSub
        Entry_Item Cmoves.Axia_sysxet
        Set Server to (Cmoves_DD(self))
        Set Label to "Axia Sysxet:"
        Set Size to 13 67
        Set Location to 113 209
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Cmoves_Axia_Sysxet

    Object Cmoves_Axia_Ypol_Sysx is a dbFormSub
        Entry_Item Cmoves.Axia_ypol_sysx
        Set Server to (Cmoves_DD(self))
        Set Label to "Axia Ypol Sysx:"
        Set Size to 13 67
        Set Location to 114 361
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Cmoves_Axia_Ypol_Sysx

    Object Copen_ is a dbGridSub
        Set Main_File to Copen.File_Number
        Set Server to (Copen_DD(self))
        Set Size to 118 500
        Set Location to 146 11
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Cmovesa.Cmoves_hmnia
            Entry_Item Cmovesa.Ctypkin_code
            Entry_Item Ctypkin.Ctypkin_descr
            Entry_Item Cmovesa.Cmoves_axia
            Entry_Item Cmovesa.Axia_pros_sysx
            Entry_Item Cmovesa.Axia_sysxet
            Entry_Item Cmovesa.Axia_ypol_sysx
            Entry_Item Copen.Copen_axia0
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "Cmoves hmnia"
        
        Set Form_Width    item 1 to 41
        Set Header_Label  item 1 to "Ctypkin code"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "Ctypkin descr"
        
        Set Form_Width    item 3 to 58
        Set Header_Label  item 3 to "Cmoves axia"
        
        Set Form_Width    item 4 to 69
        Set Header_Label  item 4 to "Axia pros sysx"
        
        Set Form_Width    item 5 to 67
        Set Header_Label  item 5 to "Axia sysxet"
        
        Set Form_Width    item 6 to 65
        Set Header_Label  item 6 to "Axia ypol sysx"
        
        Set Form_Width    item 7 to 74
        Set Header_Label  item 7 to "Copen axia0"
        

        //AB-StoreStart
                                
        Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        Set Column_Option Item 3 to NoEnter True
        Set Column_Option Item 4 to NoEnter True
        Set Column_Option Item 5 to NoEnter True
        Set Column_Option Item 6 to NoEnter True
        
        
        Procedure Prompt_CallBack Integer hPrompt
            Set FragmaClientID  Of hPrompt to (psClientID(CopenL(Self)))
            //Set psModule        Of hPrompt to (psModule  (CopenL(Self)))
            //Set piXr_Or_Pi      Of hPrompt to (piXr_Or_Pi(CopenL(Self)))
        End_procedure
        
        //AB-StoreEnd

    End_Object    // Copen_


    //AB-StoreStart
                            
    //***************** Predefined Procedures and Functions Section **************
    
    Procedure Activate_View Returns Integer
        Integer Rval
        String  sModule
        Forward Get MSG_Activate_View to Rval
        If (Not(Rval)) Begin
            If (Trim(psModule(Self))='') Begin
                Get psMenuModule Of Main_Menu   to sModule
                Set psModule                    to sModule
            End
            //Else Move (psModule(Self))          to sModule
        End
        Procedure_Return rVal
    End_Procedure // Activate_View
    
    Procedure OpenMe
        Integer isEnabled
        Get Enabled_State Of (Cmoves_Axia_Pros_Sysx(Self)) to isEnabled
        Set Enabled_State Of (Cmoves_Axia_Pros_Sysx(Self)) to (1-isEnabled)
        Set Enabled_State Of (Cmoves_Axia_Sysxet   (Self)) to (1-isEnabled)
        Set Enabled_State Of (Cmoves_Axia_Ypol_Sysx(Self)) to (1-isEnabled)
    End_Procedure
    
    //Set Verify_Exit_Msg To Get_No_Confirmation
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // CopenL


//AB-StoreStart
            
//AB-StoreEnd

//AB/ End_Object    // prj
