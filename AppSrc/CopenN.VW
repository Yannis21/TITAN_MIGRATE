//AB/ Project CopenN
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "CopenN"
//AB/         Set ProjectFileName to "CopenN.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   CopenN is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Clients_Clients_Code is a dbFormSub
//     Clients_Clients_Descr is a dbFormSub
//     TextBoxSub13 is a TextBoxSub
//     dbContYear is a dbContainer3dSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       Syscurxr_Company_Name is a dbFormSub
//       Syscurxr_Branch_Name is a dbFormSub
//       Syscurxr_Year_Year is a dbFormSub
//     TextBoxSub26 is a TextBoxSub
//     Cmoves_Cmoves_Hmnia is a dbFormSub
//     Cmoves_Cmoves_Par is a dbFormSub
//     Cmoves_Cmoves_Axia is a dbFormSub
//     Cmoves_Cmoves_X1 is a dbFormSub
//     Cmoves_Cmoves_P2 is a dbFormSub
//     TextBoxSub27 is a TextBoxSub
//     TextBoxSub28 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
//     TextBoxSub31 is a TextBoxSub
//     Cmoves_Axia_Pros_Sysx is a dbFormSub
//     Cmoves_Axia_Sysxet is a dbFormSub
//     Cmoves_Axia_Ypol_Sysx is a dbFormSub
//     TextBoxSub32 is a TextBoxSub
//     TextBoxSub33 is a TextBoxSub
//     TextBoxSub34 is a TextBoxSub
//     dbGridSub6 is a dbGridSub
//     Cmoves_Cmoves_Recr is a dbFormSub
//     Cmovesa_Cmoves_Recr is a dbFormSub
//     TextBoxSub35 is a TextBoxSub
//     TextBoxSub36 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_Clients_Code
Register_Object Clients_Clients_Descr
Register_Object Clients_DD
Register_Object Cmoves_Axia_Pros_Sysx
Register_Object Cmoves_Axia_Sysxet
Register_Object Cmoves_Axia_Ypol_Sysx
Register_Object Cmoves_Cmoves_Axia
Register_Object Cmoves_Cmoves_Hmnia
Register_Object Cmoves_Cmoves_P2
Register_Object Cmoves_Cmoves_Par
Register_Object Cmoves_Cmoves_Recr
Register_Object Cmoves_Cmoves_X1
Register_Object Cmoves_DD
Register_Object Cmovesa_Cmoves_Recr
Register_Object Cmovesa_DD
Register_Object Copen_DD
Register_Object CopenN
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object dbContYear
Register_Object dbGridSub6
Register_Object Payresp_DD
Register_Object Syscurxr_Branch_Name
Register_Object Syscurxr_Company_Name
Register_Object Syscurxr_DD
Register_Object Syscurxr_Year_Year
Register_Object TextBoxSub13
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub28
Register_Object TextBoxSub29
Register_Object TextBoxSub30
Register_Object TextBoxSub31
Register_Object TextBoxSub32
Register_Object TextBoxSub33
Register_Object TextBoxSub34
Register_Object TextBoxSub35
Register_Object TextBoxSub36
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open Ctypkin
    Open Clients
    
    Use bp2ndCop.dg
    Use bpCmvRm.dg
    Use bpCmvAf.dg
    
    Use sl006a1.sl
    
    Object Ctypkin_DD2 is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD2
    
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
    
    Object Cmoves_DD2 is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD2(self))
        Set DDO_Server to (Clients_DD2(self))
    End_Object    // Cmoves_DD2
    
    Object Cmovesa_DD2 is a Cmovesa_DataDictionary
        Set DDO_Server to (Ctypkin_DD2(self))
        Set DDO_Server to (Clients_DD2(self))
    End_Object    // Cmovesa_DD2
    
    Object Copen_DD2 is a Copen_DataDictionary
        Set DDO_Server to (Cmoves_DD2(self))
        Set DDO_Server to (Cmovesa_DD2(self))
    End_Object    // Copen_DD2
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbCont3.Sub
    Use dbGrid.Sub

    Use CTYPKIN.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use PAYRESP.DD
    Use AREAS.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    Use CMOVESA.DD
    Use COPEN.DD
    Use SYSCURXR.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_CopenN FOR CopenN

    Object CopenN is a dbViewSubS

        //AB-StoreTopStart
        Property Integer    piWhat      Public  0
        Property Integer    piXr_or_Pi  Public  0
        Property String     psModule    Public ''
        Property String     psClientID  Public ''
        Property date       pdApo       Public ''
        Property date       pdEos       Public ''
        
        
        On_Key Key_Alt+Key_O Send OpenMe
        
        
        
        //AB-StoreTopEnd

        Set Label to "É†òÆúÂ®†©û Open Items"
        Set Size to 290 526
        Set Location to 2 3

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary

            //AB-StoreStart
                                                        
            Set Read_Only_State to True
            
            //AB-StoreEnd

        End_Object    // Ctypkin_DD

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
            Procedure OnConstrain
                     If (psModule(Self)='01')  Constrain Clients.is_Client       Eq '1'
                Else If (psModule(Self)='02')  Constrain Clients.is_Promhtheyths Eq '1'
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
            Set Constrain_File to Clients.File_Number

            //AB-StoreStart
            
            Set piFromBP to 1
            
            Set Read_Only_State to True
            
            Begin_Constraints
            
                Constrain Cmoves.Company_Code   Eq SyscurXr.Company_Code
            //    Constrain Cmoves.Branch_Code    Eq SyscurXr.Branch_Code
                Constrain Cmoves.Year_Year      Eq SyscurXr.Year_Year
            
                Constrain Cmoves.Module_From    Eq (psModule(Self))
            
                If (pdApo   (Self)<>'') Constrain Cmoves.Cmoves_Hmnia   Ge (pdApo   (Self))
                If (pdEos   (Self)<>'') Constrain Cmoves.Cmoves_Hmnia   Le (pdEos   (Self))
            
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_DD

        Object Cmovesa_DD is a Cmovesa_DataDictionary

            //AB-StoreStart
            
            Begin_Constraints
            
                Constrain Cmovesa.Company_Code   Eq SyscurXr.Company_Code
            //    Constrain Cmovesa.Branch_Code    Eq SyscurXr.Branch_Code
                Constrain Cmovesa.Year_Year      Eq SyscurXr.Year_Year
            
                Constrain Cmovesa.Client_ID     Eq (psClientID(Self))
                Constrain CmovesA.Module_From   Eq (psModule(Self))
            
                If        (piXr_or_Pi(Copen(Self))=1)   Constrain Cmovesa.Flag_Copen Eq  2
                Else If   (piXr_or_Pi(Copen(Self))=2)   Constrain Cmovesa.Flag_Copen Eq  1
            
            End_Constraints
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmovesa_DD

        Object Copen_DD is a Copen_DataDictionary
            Set DDO_Server to (Cmoves_DD(self))
            Set DDO_Server to (Cmovesa_DD(self))
            Set Constrain_File to Cmoves.File_Number

            //AB-StoreStart
                                                        
            Set piFromBP to 1
            
            
            Procedure Request_Delete
                Integer iRetval iRecnum iLathos isClosed iOpenRecnum iCopenRecnum iErr
                String  sCopen_Recr sCMoves_Recr sCMovesA_Recr sMessage
                String  sAliasCtypkinRecr sMasterCtypkinRecr sClient_Recr sCopenDD2Recr
                Number nMeion nAxia nXr nPi nAfairese
            
                Move 0 to nMeion
                Move 0 to nAfairese
            
                Get Field_Current_Value Of Clients_DD   Field Clients.Client_Recr   to sClient_Recr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.Recnum         to iRecnum
                Get Field_Current_Value Of CMoves_DD    Field Cmoves.Ctypkin_Recr   to sMasterCtypkinRecr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.Is_Closed      to isClosed
                Get Field_Current_Value Of Copen_DD     Field Copen.Recnum          to iCopenRecnum
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Recr      to sCopen_Recr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.CMoves_Recr    to sCMoves_Recr
                Get Field_Current_Value Of CMovesA_DD   Field CMovesA.CMoves_Recr   to sCMovesA_Recr
                Get Field_Current_Value Of CMovesA_DD   Field CmovesA.Ctypkin_Recr  to sAliasCtypkinRecr
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Axia0     to nMeion
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_X0        to nXr
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_P0        to nPi
            
                If ((Trim(sCMoves_Recr)     <>'') And ;
                    (Trim(sCMovesA_Recr)    <>'') And ;
                    (Trim(sAliasCtypkinRecr)<>''))      Begin
            
                    Begin_Transaction
            
                        Forward Send Request_Delete
            
                        // 1. Diagrafoume to antistrofo copen kratontas
                        //    omos thn axia tou gia na thn afairesoume
                        Set psCmovesRecr    Of bpCmvRm  to sCmoves_Recr
                        Set psCmovesARecr   Of bpCmvRm  to sCmovesA_Recr
                        Send DoProcess      to bpCmvRm
                        Get pnAxia          Of bpCmvRm  to nAfairese
                        Get piLathos        Of bpCmvRm  to iLathos
                        If (iLathos) Begin
                            Abort_Transaction
                            Goto End_Trans_Delete
                        End
            
                        // 2. Anoigoume to record tou Cmoves pou exei
                        //    to CmovesA san header kai afairoume thn axia
                        Set psCmovesRecr    Of bpCmvAf  to sCmovesA_Recr
                        //Set piAfairese      Of bpCmvAf  to True
                        //Set pnAxia          Of bpCmvAf  to nAfairese
                        Set piAfairese      Of bpCmvAf  to False
                        Set pnAxia          Of bpCmvAf  to 0
                        Send DoProcess      to bpCmvAf
            
                        // 3. Anoigoume to kanoniko Header Cmoves
                        Set psCmovesRecr    Of bpCmvAf  to sCmoves_Recr
                        Set piAfairese      Of bpCmvAf  to False
                        Set pnAxia          Of bpCmvAf  to 0
                        Send DoProcess      to bpCmvAf
            
                    End_Transaction
            
                    End_Trans_Delete:
                         If (iLathos=30001) Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò§´Â©´®¶≠¶ Copen ö†ò §ò õ†òö®ò≠úÂ' 'ë≠·¢£ò 30001'
                    Else If (iLathos=30000) Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò§´Â©´®¶≠¶ Cmoves' 'ë≠·¢£ò 30000'
                End
                Else Send Stop_Box 'â·ß¶†¶ Recr òß¶ ´ò ò®ÆúÂò Cmoves/CmovesA/Ctypkin úÂ§ò† °ú§Ê' 'ë≠·¢£ò 55555'
                //Send KeyAction to btnPeriorise
            End_Procedure
            
            
            Procedure Request_Save
                Integer iRetval iRecnum iLathos isClosed iOpenRecnum iCopenRecnum iErr
                String  sCopen_Recr sCMoves_Recr sCMovesA_Recr sMessage
                String  sAliasCtypkinRecr sMasterCtypkinRecr sClient_Recr sCopenDD2Recr
                Number nMeion nAxia nXr nPi nAfairese
            
                Begin_Transaction
            
                Forward Send Request_Save
            
                Get Field_Current_Value Of Clients_DD   Field Clients.Client_Recr   to sClient_Recr
                Get Field_Current_Value Of CMoves_DD    Field Cmoves.Ctypkin_Recr   to sMasterCtypkinRecr
                Get Field_Current_Value Of CMoves_DD    Field CMoves.Is_Closed      to isClosed
                Get Field_Current_Value Of CMoves_DD    Field CMoves.Recnum         to iRecnum
                Get Field_Current_Value Of CMoves_DD    Field CMoves.CMoves_Recr    to sCMoves_Recr
                Get Field_Current_Value Of CMovesA_DD   Field CMovesA.CMoves_Recr   to sCMovesA_Recr
                Get Field_Current_Value Of CMovesA_DD   Field CmovesA.Ctypkin_Recr  to sAliasCtypkinRecr
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Axia0     to nAxia
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_X0        to nXr
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_P0        to nPi
                Get Field_Current_Value Of Copen_DD     Field Copen.Recnum          to iCopenRecnum
                Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Recr      to sCopen_Recr
            
                If ((sCmoves_Recr<>'') And (sCmovesA_Recr<>'')) Begin
            
                    Move 0 to iLathos
            
                    If ((Trim(sCMoves_Recr)     <>'') And ;
                        (Trim(sCMovesA_Recr)    <>'') And ;
                        (Trim(sAliasCtypkinRecr)<>''))      Begin
            
                        Set piLathos            Of bp2ndCop to False
                        Set psCopenRecr         Of bp2ndCop to (Trim(sCopen_Recr))
                        Set psCmovesRecr        Of bp2ndCop to (Trim(sCmoves_Recr))
                        Set psCmovesARecr       Of bp2ndCop to (Trim(sCmovesA_Recr))
                        Set psClientRecr        Of bp2ndCop to (Trim(sClient_Recr))
                        Set psMasterCtypkinRecr Of bp2ndCop to (Trim(sMasterCtypkinRecr))
                        Set psAliasCtypkinRecr  Of bp2ndCop to (Trim(sAliasCtypkinRecr))
                        Set pnAxia              Of bp2ndCop to nAxia
                        Set pnX0                Of bp2ndCop to nXr
                        Set pnP0                Of bp2ndCop to nPi
            
                        Send DoProcess                      to bp2ndCop
                        Get piLathos            Of bp2ndCop to iLathos
                        If (iLathos) Begin
                            Abort_Transaction
                            Goto Vgale_Mhnyma2
                        End
                    End
                    Else Begin
                        Move 60000 to iLathos
                        Abort_Transaction
                        Goto Vgale_Mhnyma2
                    End
                End
                Else Begin
                    Move 60000 to iLathos
                    Abort_Transaction
                    Goto Vgale_Mhnyma2
                End
                End_Transaction
            
                Vgale_Mhnyma2:
                If (Not(iLathos)) Get piLathos Of bp2ndCop to iLathos
                If (iLathos) Begin
                    Move iLathos to iretVal
                         If (iLathos=60000) Send Stop_Box 'äúÂß¶¨§ ßò®·£ú´®¶† ö†ò ´û§ °¢„©û bp2ndCop'   'ë≠·¢£ò 60000'
                    Else If (iLathos=60001) Send Stop_Box 'äúÂß¶¨§ ßò®·£ú´®¶† ©´û§ bp2ndCop'            'ë≠·¢£ò 60001'
                    Else If (iLathos=60003) Send Stop_Box 'Éú§ ô®‚üû°ú Cmoves ©´û§ bp2ndCop'            'ë≠·¢£ò 60003'
                    Else If (iLathos=60004) Send Stop_Box 'Éú§ ô®‚üû°ú CmovesA ©´û§ bp2ndCop'           'ë≠·¢£ò 60004'
                    Else                    Send Stop_Box 'ãû °ò´òÆ‡®û£‚§¶ ©≠·¢£ò'                      'ë≠·¢£ò 99999'
                End
            
                //Send KeyAction to btnPeriorise
                Send Find_By_Recnum to Cmoves_DD Cmoves.File_Number iRecnum
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Copen_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Clients_DD(self))
        Set Server to (Clients_DD(self))

        //AB-DDOEnd

        Object Clients_Clients_Code is a dbFormSub
            Entry_Item Clients.Client_id
            Set Size to 13 138
            Set Location to 30 50
            Set Label_Col_Offset to 85
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                        
            Procedure Exiting Integer WhereTo returns integer
                Integer Ret_Val
                forward get msg_exiting whereTo to Ret_Val
                If Ret_Val Procedure_Return Ret_Val
                //Send KeyAction to btnPeriorise
                Procedure_Return Ret_Val
            End_procedure
            
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(Self))
                Forward Send Prompt
                //Send KeyAction to btnPeriorise
            End_Procedure
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_Clients_Code

        Object Clients_Clients_Descr is a dbFormSub
            Entry_Item Clients.Client_name
            Set Size to 13 322
            Set Location to 30 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Clients_Clients_Descr

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "î¶®‚ò™"
            Set Location to 30 9
            Set Size to 13 29
        End_Object    // TextBoxSub13

        Object dbContYear is a dbContainer3dSub
            Set Border_Style to Border_StaticEdge
            Set Size to 21 518
            Set Location to 2 3
            Object TextBoxSub4 is a TextBoxSub
                Set Label to "Ñ´ò†®Âò:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 7
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "ìß¶°/£ò:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 214
                Set Size to 10 33
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "ï®„©û:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 408
                Set Size to 10 26
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub6

            Object Syscurxr_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 159
                Set Location to 4 47
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Company_Name

            Object Syscurxr_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 141
                Set Location to 4 259
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Branch_Name

            Object Syscurxr_Year_Year is a dbFormSub
                Entry_Item Syscurxr.Year_year
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 53
                Set Location to 4 446
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Year_Year

        End_Object    // dbContYear

        Object TextBoxSub26 is a TextBoxSub
            Set Label to "ë¨©Æú´†ùÊ£ú§ú™ â†§„©ú†™"
            Set Location to 115 2
            Set Size to 10 89
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub26

        Object Cmoves_Cmoves_Hmnia is a dbFormSub
            Entry_Item Cmoves.Cmoves_hmnia
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 47 50
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                        
            Set Item_Option Item 0 to NoPut true
            
            Procedure Set_The_Flag
                Integer iXP
                String  sClientID
                Get Field_Current_Value Of (Clients_DD(Copen(Self))) Field Clients.Client_ID to sClientID
                Get Field_Current_Value Of (Cmoves_DD(Copen(Self))) Field Cmoves.Flag_Copen to iXP
                Set psClientID Of (Copen(Self)) to (Trim(sClientID))
                Set piXr_or_Pi Of (Copen(Self)) to iXP
                Send Rebuild_Constraints to Copen_DD
                Send Beginning_Of_Data to dbGridSub6 True
                Send Rebuild_Constraints to Cmovesa_DD
            End_Procedure
            
            Procedure Prompt_CallBack Integer hPromptID
                Set Auto_Index_State Of hPromptID to False
            End_Procedure
            
            Procedure Prompt
                Integer iXP
                Set pdApo       Of (sl006(Self)) to (pdApo      (Self))
                Set pdEos       Of (sl006(Self)) to (pdEos      (Self))
                Set psClientID  Of (sl006(Self)) to (psClientID (Self))
                Set psModule    Of (sl006(Self)) to (psModule   (Self))
                Set piWhat      Of (sl006(Self)) to (piWhat     (Self))
                Forward Send Prompt
                Send Set_The_Flag
            End_Procedure
            
            Procedure Refresh Integer iMode
                Forward Send Refresh iMode
            End_Procedure
            
            Procedure Exiting Integer WhereTo Returns Integer
                Integer ret_val iXP
                Forward Get Msg_Exiting WhereTo to ret_val
                If Ret_Val Procedure_Return Ret_Val
                Send Set_The_Flag
                Procedure_Return ret_val
            End_procedure
            
            Procedure Find_Next
                Forward Send Find_Next
                Send Set_The_Flag
            End_procedure
            
            Procedure Find_Previous
                Forward Send Find_Previous
                Send Set_The_Flag
            End_procedure
            
            Procedure Find_GE
                Forward Send Find_GE
                Send Set_The_Flag
            End_procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Cmoves_Hmnia

        Object Cmoves_Cmoves_Par is a dbFormSub
            Entry_Item Cmoves.Cmoves_par
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 47 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Cmoves_Cmoves_Par

        Object Cmoves_Cmoves_Axia is a dbFormSub
            Entry_Item Cmoves.Cmoves_axia
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 66 50
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0  to iDecimals
                Set Points          Item 0       to iDecimals
                Set Numeric_Mask    Item 0 to 14 iDecimals '*, '
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Cmoves_Axia

        Object Cmoves_Cmoves_X1 is a dbFormSub
            Entry_Item Cmoves.Cmoves_x0
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 66 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0 to iDecimals
                Set Points          Item 0       to iDecimals
                Set Numeric_Mask    Item 0 to 14 iDecimals '*, '
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Cmoves_X1

        Object Cmoves_Cmoves_P2 is a dbFormSub
            Entry_Item Cmoves.Cmoves_p0
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 66 329
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0 to iDecimals
                Set Points          Item 0 to iDecimals
                Set Numeric_Mask    Item 0 to 14 iDecimals '*, '
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Cmoves_P2

        Object TextBoxSub27 is a TextBoxSub
            Set Label to "Ü£ú®/§Âò"
            Set Location to 47 9
            Set Size to 10 33
        End_Object    // TextBoxSub27

        Object TextBoxSub28 is a TextBoxSub
            Set Label to "èò®ò©´ò´†°Ê"
            Set Location to 47 137
            Set Size to 10 49
        End_Object    // TextBoxSub28

        Object TextBoxSub29 is a TextBoxSub
            Set Label to "Ä•Âò"
            Set Location to 65 9
            Set Size to 13 18
        End_Object    // TextBoxSub29

        Object TextBoxSub30 is a TextBoxSub
            Set Label to "ï®‚‡©û"
            Set Location to 65 137
            Set Size to 13 29
        End_Object    // TextBoxSub30

        Object TextBoxSub31 is a TextBoxSub
            Set Label to "èÂ©´‡©û"
            Set Location to 65 276
            Set Size to 13 31
        End_Object    // TextBoxSub31

        Object Cmoves_Axia_Pros_Sysx is a dbFormSub
            Entry_Item Cmoves.Axia_pros_sysx
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 95 50
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0 to iDecimals
                Set Points          Item 0       to iDecimals
                Set Numeric_Mask    Item 0 to 14 iDecimals '*, '
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Axia_Pros_Sysx

        Object Cmoves_Axia_Sysxet is a dbFormSub
            Entry_Item Cmoves.Axia_sysxet
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 95 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0 to iDecimals
                Set Points          Item 0 to iDecimals
                Set Numeric_Mask    Item 0 to 14 iDecimals '*, '
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Axia_Sysxet

        Object Cmoves_Axia_Ypol_Sysx is a dbFormSub
            Entry_Item Cmoves.Axia_ypol_sysx
            Set Server to (Cmoves_DD(self))
            Set Size to 13 69
            Set Location to 95 329
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0 to iDecimals
                Set Points          Item 0 to iDecimals
                Set Numeric_Mask    Item 0 to 14 iDecimals '*, '
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Axia_Ypol_Sysx

        Object TextBoxSub32 is a TextBoxSub
            Set Label to "è¶©Ê ß®¶™ ë¨©Æ‚´†©û"
            Set Location to 92 9
            Set Size to 16 38
            Set Justification_Mode to jMode_Left
        End_Object    // TextBoxSub32

        Object TextBoxSub33 is a TextBoxSub
            Set Label to "è¶©Ê ë¨©Æú´†©£‚§¶"
            Set Location to 92 137
            Set Size to 15 49
            Set Justification_Mode to jMode_Left
        End_Object    // TextBoxSub33

        Object TextBoxSub34 is a TextBoxSub
            Set Label to "ìßÊ¢¶†ß¶ ß®¶™ ë¨©Æ‚´†©û"
            Set Location to 92 276
            Set Size to 17 50
            Set Justification_Mode to jMode_Left
        End_Object    // TextBoxSub34

        Object dbGridSub6 is a dbGridSub

            //AB-StoreTopStart
                                                        
            Function sfXP Returns String
                If (Cmovesa.Cmoves_X0 <> 0) Function_Return "ï"
                Function_Return "è"
            End_Function //nfarxiki_axia
            
            //AB-StoreTopEnd

            Set Main_File to Copen.File_Number
            Set Server to (Copen_DD(self))
            Set Size to 144 517
            Set Location to 128 2
            Set Color to 15400959
            Set CurrentRowColor to 8257535
            Set CurrentRowTextColor to clNavy
            Set CurrentCellColor to 8257535
            Set CurrentCellTextColor to clNavy
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Cmovesa.Cmoves_hmnia
                Entry_Item Cmovesa.Cmoves_par
                Entry_Item Cmovesa.Ctypkin_code
                Entry_Item Cmovesa.Ctypkin_descr
                Entry_Item (sfXP(Self))
                Entry_Item Cmovesa.Axia_pros_sysx
                Entry_Item Cmovesa.Axia_sysxet
                Entry_Item Cmovesa.Axia_ypol_sysx
                Entry_Item Copen.Copen_axia0
            End_Row

            Set Form_Width    item 0 to 48
            Set Header_Label  item 0 to "Ü£/§Âò"
            
            Set Form_Width    item 1 to 84
            Set Header_Label  item 1 to "èò®ò©/°Ê"
            
            Set Form_Width    item 2 to 32
            Set Header_Label  item 2 to "â‡õ"
            
            Set Form_Width    item 3 to 92
            Set Header_Label  item 3 to "âÂ§û©û"
            
            Set Form_Width    item 4 to 24
            Set Header_Label  item 4 to "ïè"
            
            Set Form_Width    item 5 to 57
            Set Header_Label  item 5 to "Ä®Æ†°Ê"
            
            Set Form_Width    item 6 to 61
            Set Header_Label  item 6 to "Üõû ë¨©Æú´"
            
            Set Form_Width    item 7 to 63
            Set Header_Label  item 7 to "è®¶™ ë¨©Æú´"
            
            Set Form_Width    item 8 to 53
            Set Header_Label  item 8 to "è¶©Ê"
            

            //AB-StoreStart
                                                        
            Set Column_Option Item 1 to NoEnter True
            Set Column_Option Item 2 to NoEnter True
            Set Column_Option Item 3 to NoEnter True
            Set Column_Option Item 4 to NoEnter True
            Set Column_Option Item 5 to NoEnter True
            Set Column_Option Item 6 to NoEnter True
            Set Column_Option Item 7 to NoEnter True
            
            
            Procedure Request_Clear_All
            End_Procedure // Request_Clear_All
            
            Procedure Prompt_CallBack Integer hPrompt
                Set Auto_Index_State    Of hPrompt to False
                Set Export_Item_State   Of hPrompt to True
                Set Export_Column       Of hPrompt to 0
                Set FragmaClientID      Of hPrompt to (psClientID(Copen(Self)))
                Set psModule            Of hPrompt to (psModule  (Copen(Self)))
                Set piXr_Or_Pi          Of hPrompt to (piXr_Or_Pi(Copen(Self)))
            End_procedure
            
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0 to    iDecimals
                Set Points       Item 5         to    iDecimals
                Set Points       Item 6         to    iDecimals
                Set Points       Item 7         to    iDecimals
                Set Points       Item 8         to    iDecimals
            
                Set Numeric_Mask Item 5         to 14 iDecimals '*, '
                Set Numeric_Mask Item 6         to 14 iDecimals '*, '
                Set Numeric_Mask Item 7         to 14 iDecimals '*, '
                Set Numeric_Mask Item 8         to 14 iDecimals '*, '
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // dbGridSub6

        Object Cmoves_Cmoves_Recr is a dbFormSub
            Entry_Item Cmoves.Cmoves_recr
            Set Server to (Cmoves_DD(self))
            Set Size to 13 52
            Set Location to 66 467
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Set Item_Option Item 0 to NoEnter True
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_Cmoves_Recr

        Object Cmovesa_Cmoves_Recr is a dbFormSub
            Entry_Item Cmovesa.Cmoves_recr
            Set Server to (Copen_DD(self))
            Set Size to 13 52
            Set Location to 95 467
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                        
            Set Item_Option Item 0 to NoEnter True
            
            
            //AB-StoreEnd

        End_Object    // Cmovesa_Cmoves_Recr

        Object TextBoxSub35 is a TextBoxSub
            Set Label to "CMV Recr:"
            Set Location to 65 419
            Set Size to 13 36
        End_Object    // TextBoxSub35

        Object TextBoxSub36 is a TextBoxSub
            Set Label to "CMVA Recr:"
            Set Location to 95 419
            Set Size to 10 41
        End_Object    // TextBoxSub36


        //AB-StoreStart
        
        //***************** Predefined Procedures and Functions Section **************
        
        Procedure Activate_View Returns Integer
            Integer Rval
            String  sModule sLabel
            Get psMenuModule Of Main_Menu   to sModule
            If ((psModule(Self)<>'') And ;
                (psModule(Self)<>sModule)) Send Clear to Clients_DD
                 If (sModule='01') Set Label Of Copen to 'É†òÆúÂ®†©û Open Items èú¢ò´È§'
            Else If (sModule='02') Set Label Of Copen to 'É†òÆúÂ®†©û Open Items è®¶£ûüú¨´È§'
            Set psModule                    to sModule
            //Send KeyAction to btnPeriorise
            Forward Get MSG_Activate_View to Rval
            Procedure_Return rVal
        End_Procedure // Activate_View
        
        Procedure OpenMe
            Integer isEnabled
            Get Enabled_State Of Cmoves_Axia_Pros_Sysx to isEnabled
            Set Enabled_State Of Cmoves_Axia_Pros_Sysx to (1-isEnabled)
            Set Enabled_State Of Cmoves_Axia_Sysxet    to (1-isEnabled)
            Set Enabled_State Of Cmoves_Axia_Ypol_Sysx to (1-isEnabled)
            Set Read_Only_State Of Cmoves_DD to (1-(1-isEnabled))
        End_Procedure
        
        //Set Verify_Exit_Msg To Get_No_Confirmation
        
        
        
        
        //AB-StoreEnd

    End_Object    // CopenN


    //AB-StoreStart
    
    //AB-StoreEnd

//AB/     End_Object    // prj
