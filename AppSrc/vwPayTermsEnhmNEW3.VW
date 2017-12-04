//AB/ Project vwPayTermsEnhmNEW3
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwPayTermsEnhmNEW3"
//AB/     Set ProjectFileName to "vwPayTermsEnhmNEW3.VW"

// Project Object Structure
//   vwPayTermsEnhmNEW3 is a dbViewSubs
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     chkControlOnly is a CheckBoxSub
//     F_CODE_APO is a FormSub
//     FormSub1 is a FormSub

// Register all objects
Register_Object ButtonSub1
Register_Object chkControlOnly
Register_Object F_CODE_APO
Register_Object FormSub1
Register_Object TextBoxSub1
Register_Object vwPayTermsEnhmNEW3


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open PayTerms
Open Clients
Open BtnOrdH

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use Button.Sub
Use Txtbox.Sub
Use Chkbox.Sub
Use Form.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwPayTermsEnhmNEW3 FOR vwPayTermsEnhmNEW3

Object vwPayTermsEnhmNEW3 is a dbViewSubs

    //AB-StoreTopStart
                    
    Set Verify_Exit_Msg         to Get_No_Confirmation
    Set Verify_Save_Msg         to Get_No_Confirmation
    Set Verify_Data_Loss_Msg    to Get_No_Confirmation
    
    //AB-StoreTopEnd

    Set Label to "Ä§òõ®¶£†°„ Ñ§û£‚®‡©û"
    Set Size to 137 409
    Set Location to 23 117

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        
        Property Integer piHaveFound      Public 0
        Property Integer piHaveNotFound   Public 0
        Property Integer piHaveTotal      Public 0
        Property Integer piHaveFoundCN    Public 0
        Property Integer piHaveNotFoundCN Public 0
        Property Integer piHaveTotalCN    Public 0
        
        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û"
        Set Size to 14 355
        Set Location to 99 25
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            String  sLabel sNewTP sNewTPCN sClient
            Integer iClientsHPAL iClientsHPSO iTPClientHPAL iTPClientsHPSO iYes
            Integer iErgoHPAL iErgoHPSO iTPErgaHPAL iTPErgaHPSO iHaveFound iHaveNotFound iHaveTotal
            Integer iHaveFoundCN iHaveNotFoundCN iHaveTotalCN iiTestOnly
        
            Get Checked_State of chkControlOnly to iiTestOnly
        
            Get Value Of F_Code_Apo Item 0 to sClient
            Move (Trim(sClient)) to sClient
        
            Get Label   to sLabel
            Move 0      to iHaveFound
            Move 0      to iHaveNotFound
            Move 0      to iHaveTotal
            Move 0      to iHaveFoundCN
            Move 0      to iHaveNotFoundCN
            Move 0      to iHaveTotalCN
        
            Set piHaveFound         to 0
            Set piHaveNotFound      to 0
            Set piHaveTotal         to 0
            Set piHaveFoundCN       to 0
            Set piHaveNotFoundCN    to 0
            Set piHaveTotalCN       to 0
        
            If (sClient="") Get YesNo_Box "åò ú§û£ú®‡ü¶Á§ ò§òõ®¶£†°· ¶† èú¢·´ú™ °ò† ´ò ÉÑéè\nô·©û ´¶¨ §‚¶¨ ò¢ö¶®Âü£¶¨ ö†ò ´¶¨™ Ê®¶¨™ ß¢û®‡£„™ 30/30 ú‡™ 30/300\nò§·¢¶öò £ú ´ò ¨ß·®Æ¶§´ò ©´¶†ÆúÂò TPClients & TPErga ?"              to iYes
            Else            Get YesNo_Box "åò ú§û£ú®‡üúÂ ò§òõ®¶£†°· ¶ ©¨ö°ú°®†£‚§¶™ èú¢·´û™ °ò† ´ò ÉÑéè\nô·©û ´¶¨ §‚¶¨ ò¢ö¶®Âü£¶¨ ö†ò ´¶¨™ Ê®¶¨™ ß¢û®‡£„™ 30/30 ú‡™ 30/300\nò§·¢¶öò £ú ´ò ¨ß·®Æ¶§´ò ©´¶†ÆúÂò TPClients & TPErga ?"  to iYes
            if (iYes=MBR_NO) Procedure_return
        
            If (sClient<>"") Begin
                Send EnhmeroshOronPlhromhs sClient iiTestOnly
            End
            Else Begin
                // 1. Å®ú™ Ê¢¶¨™ ´¶¨™ èú¢·´ú™ ú§ò§ ú§ò§
                Clear Clients
                Find GT Clients.Recnum
                While (Found)
                    Send EnhmeroshOronPlhromhs Clients.Client_ID iiTestOnly
                    Find GT Clients.Recnum
                Loop
            End
        
            Get piHaveFound         to iHaveFound
            Get piHaveNotFound      to iHaveNotFound
            Get piHaveTotal         to iHaveTotal
            Get piHaveFoundCN       to iHaveFoundCN
            Get piHaveNotFoundCN    to iHaveNotFoundCN
            Get piHaveTotalCN       to iHaveTotalCN
        
        
            Set Label to sLabel
            Send Info_Box 'é† ´®Êß¶† è¢û®‡£„™ Ñ§û£ú®Èüû°ò§' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick
        
        Procedure EnhmeroshOronPlhromhs String asClientID Integer iTestOnly
            String  sLabel sNewTP sNewTPCN sClient sVal1 sVal2
            Integer iClientsHPAL iClientsHPSO iTPClientHPAL iTPClientsHPSO iDeikthsPel iDeikthsErgo iDeikths
            Integer iErgoHPAL iErgoHPSO iTPErgaHPAL iTPErgaHPSO iHaveFound iHaveNotFound iHaveTotal
            Integer iHaveFoundCN iHaveNotFoundCN iHaveTotalCN
        
            Get piHaveFound         to iHaveFound
            Get piHaveNotFound      to iHaveNotFound
            Get piHaveTotal         to iHaveTotal
            Get piHaveFoundCN       to iHaveFoundCN
            Get piHaveNotFoundCN    to iHaveNotFoundCN
            Get piHaveTotalCN       to iHaveTotalCN
        
            Clear Clients
            Move asClientID to Clients.Client_ID
            Find EQ Clients By Index.6
            If (Found) Begin
        
                Set Label to (Trim(Clients.Client_ID)+" - "+Trim(Clients.Client_Name))
        
                Move "" to sNewTP
                Add 1   to iHaveTotal    

                Move -1 to iDeikthsPel
                Move -1 to iDeikthsErgo  
                Move -1 to iDeikths
        
                // 2. â®ò´ò ÜèÄä /Üèëé £„ß‡™ õú§ ô®ú†™ ©´¶ TPClients
                Move Clients.Hpal   to iClientsHPAL
                Move Clients.Hpso   to iClientsHPSO
        
                // 3. Ñ¢úöÆ¶™ §ú¶¨ ò¢ö¶®†ü£¶¨
                integer iRounded iPosa30 iAdd iInt iResta
        
                Move 30 to iClientsHPAL
        
                Move (Integer(iClientsHPSO/30)) to iPosa30
                Move (Mod    (iClientsHPSO,30)) to iResta
                If (iResta>0)   Move 30 to iAdd
                Else            Move  0 to iAdd
                Move ((iPosa30*30)+iAdd) to iClientsHPSO   
                Move (iClientsHPSO/30) to iDeikthsPel
        
        
                // 4. ô®ú™ ´®¶ß¶¨™ ß¢û®‡£û™ ö†ò úß†´òöû ò§ ¨ßò®Æ¶¨§
                Clear TPClient
                Move Clients.Client_ID  to TPClient.Client_ID
                Move 1                  to TPClient.Baxiokat_Code // Epitages
                Find GE TPClient By Index.1
                If ((Found) And (Clients.Client_ID=TPClient.Client_ID) And (TPClient.Baxiokat_Code=1)) Begin
        
                    Move 30 to iTPClientHPAL
        
                    Move (Integer(TPClient.Plhroteo_Meres/30)) to iPosa30
                    Move (Mod    (TPClient.Plhroteo_Meres,30)) to iResta
                    If (iResta>0)   Move 30 to iAdd
                    Else            Move  0 to iAdd
                    Move ((iPosa30*30)+iAdd) to iTPClientsHPSO
                    Move (String(iTPClientHPAL)+String(iTPClientsHPSO)) to sNewTP
                    Move (iTPClientsHPSO/30)    to iDeikthsErgo
                    Move iDeikthsErgo           to iDeikths
                End
                Else Begin
                    If ((iClientsHPal>0) And (iClientsHPSO>0)) Begin
                        Move (String(iClientsHPAL)+String(iClientsHPSO)) to sNewTP
                        Move iDeikthsPel to iDeikths
                    End
                End
                Move (Trim(sNewTP)) to sNewTP
        
                If (sNewTP<>"") Begin
        
                    Get Cell_Value Of xxx 0 iDeikths to sVal1
                    Get Cell_Value Of xxx 1 iDeikths to sVal2

                    Clear PayTerms
                    Move (Trim(sVAl1)) to Payterms.PayTerms_Code
                    Find Eq Payterms By Index.1
                    If (Found)  Add 1 to iHaveFound
                    Else        Add 1 to iHaveNotFound
        
                    If (iTestOnly=0) Begin
                        Reread Clients    
                        If (Trim(sVal1)="") Move "K000" to sVal1
                        Move (Trim(sVal1)) to Clients.Polh_recr
                        Saverecord Clients
                        Unlock
                    End
        
                    Move 0  to iHaveFoundCN
                    Move 0  to iHaveNotFoundCN
                    Move 0  to iHaveTotalCN
                    Move "" to sNewTPCN
        

                    Clear CN
                    Move Clients.Client_ID to CN.Client_ID
                    Find GE CN By Index.4 // Client_ID+CN_Code
                    While ((Found) And (Clients.Client_ID=CN.Client_ID))
                        Add 1 to iHaveTotalCN
        
                        Set Label to (Trim(Clients.Client_ID)+" - "+Trim(Clients.Client_Name)+" / "+Trim(CN.CN_Code))
        
                        Clear TPErga
                        Move CN.CN_Code to TPErga.CN_Code
                        Move 1          to TPErga.Baxiokat_Code
                        Find GE TPErga By Index.1
                        If ((Found) And (CN.CN_Code=TPErga.CN_Code) And (TPErga.Baxiokat_Code=1)) begin
        
                            Move 30 to iTPErgaHPAL
        
                            Move (Integer(TPErga.Plhroteo_Meres/30)) to iPosa30
                            Move (Mod    (TPErga.Plhroteo_Meres,30)) to iResta
                            If (iResta>0)   Move 30     to iAdd
                            Else            Move  0     to iAdd
                            Move ((iPosa30*30)+iAdd)    to iTPErgaHPSO
                            Move (String(iTPErgaHPAL)+String(iTPErgaHPSO)) to sNewTPCN    
                            Move (iTPErgaHPSO/30)       to iDeikthsErgo
                            Move iDeikthsErgo           to iDeikths
                        End
                        Else Begin
                            Move (Trim(sNewTP)) to sNewTPCN  
                            Move iDeikthsPel    to iDeikths
                            
                        End
        
                        If (Trim(sNewTPCN)<>"") Begin
        
                            Get Cell_Value Of xxx 0 iDeikths to sVal1
                            Get Cell_Value Of xxx 1 iDeikths to sVal2
        
                            Clear PayTerms
                            Move (Trim(sVAl1)) to Payterms.PayTerms_Code
                            Find Eq Payterms By Index.1
                            If (Found)  Add 1 to iHaveFound
                            Else        Add 1 to iHaveNotFound
                
                            Clear PayTerms
                            Move (Trim(sVal1)) to Payterms.PayTerms_Code
                            Find Eq Payterms By Index.1
                            If (Found)  Add 1 to iHaveFoundCN
                            Else        Add 1 to iHaveNotFoundCN
        
                            If (iTestOnly=0) Begin
                                Clear BtnOrdH
                                Move Clients.Client_ID  to BtnOrdH.Client_ID
                                Move CN.CN_Code         to BtnOrdH.CN_Code
                                Find GE BtnOrdH By Index.6
                                While ((Found) And (Clients.Client_ID=BtnOrdH.Client_ID) And (CN.CN_Code=BtnOrdH.CN_Code))
                                    Reread BtnOrdH
                                    If (Trim(sVal1)="") Move "K000" to sVal1
                                    Move (Trim(sVal1)) to BtnOrdH.TimeOut
                                    Saverecord BtnOrdh
                                    Unlock
                                    Find GT BtnOrdH By Index.6
                                Loop
                            End
                        End
                        Else Add 1 to iHaveNotFoundCN
        
                        Find GT CN By Index.4 // Client_ID+CN_Code
                    Loop
        
                End
                Else Add 1 to iHaveNotFound
        
                Set piHaveFound         to iHaveFound
                Set piHaveNotFound      to iHaveNotFound
                Set piHaveTotal         to iHaveTotal
                Set piHaveFoundCN       to iHaveFoundCN
                Set piHaveNotFoundCN    to iHaveNotFoundCN
                Set piHaveTotalCN       to iHaveTotalCN
            End
        End_Procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ä§òõ®¶£†°„ Ñ§û£‚®‡©û èú¢ò´È§ °ò† ÉÑéè £ú §‚¶¨™ Ê®¶¨™ è¢û®‡£„™  òß¶ 30/30 ú‡™ 30/300 (ò®ÆúÂ¶ PayTerms)"
        Set TextColor to 196
        Set Location to 4 109
        Set Size to 26 159
        Set FontWeight to 600
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object chkControlOnly is a CheckBoxSub
        Set Label to "ãÊ§¶ Ñ¢úöÆ¶™ Æ‡®Â™ ß®òö£ò´†°„ ú§û£‚®‡©û ´‡§ ò®ÆúÂ‡§"
        Set Size to 10 209
        Set Location to 78 98
    End_Object    // chkControlOnly

    Object F_CODE_APO is a FormSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Size to 13 63
        Set Location to 46 90
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Set Prompt_Object to (sl100(Current_object))
        
        Procedure Prompt_Callback integer hPrompt
            string smodule
            set Export_Column  of hPrompt to 0
            Set Initial_Column of hPrompt to 0
        end_procedure
        
        procedure onchange
            string sclient
            get value item 0 to sclient
            Move (fsclient(Self,sclient)) to sclient
            set value of (formsub1(self)) to sclient
        end_procedure
        
        procedure prompt
            Set psModule Of (sl100(Self)) to "01"
            Forward Send Prompt
        end_procedure
        
        
        //AB-StoreEnd

    End_Object    // F_CODE_APO

    Object FormSub1 is a FormSub
        Set Size to 13 151
        Set Location to 46 155
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // FormSub1


    //AB-StoreStart
                    
                    
    //AB-StoreEnd

End_Object    // vwPayTermsEnhmNEW3


//AB-StoreStart





//AB-StoreEnd

//AB/ End_Object    // prj
