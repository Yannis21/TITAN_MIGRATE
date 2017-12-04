//AB/ Project EnhPrespNew
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhPrespNew"
//AB/         Set ProjectFileName to "EnhPrespNew.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhPrespNew is a dbViewSub
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     TextBoxSub1 is a TextBoxSub
//     frmPalios is a FormSub
//     frmPaliosName is a FormSub
//     TextBoxSub2 is a TextBoxSub
//     frmNeos is a FormSub
//     frmNeosName is a FormSub
//     TextBoxSub3 is a TextBoxSub
//     frmPelaths is a FormSub
//     frmPelathsName is a FormSub
//     ButtonSub1 is a ButtonSub
//     chkClients is a CheckBoxSub
//     chkCN is a CheckBoxSub
//     chkWcmoves is a CheckBoxSub
//     ChkPmoves is a CheckBoxSub
//     ChkCmoves is a CheckBoxSub
//     ChkBarticle is a CheckBoxSub
//     ChkBtnOrdH is a CheckBoxSub
//     TextBoxSub4 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object ChkBarticle
Register_Object ChkBtnOrdH
Register_Object ChkCmoves
Register_Object ChkPmoves
Register_Object Cities_DD
Register_Object Country_DD
Register_Object chkClients
Register_Object chkCN
Register_Object chkWcmoves
Register_Object EnhPrespNew
Register_Object frmNeos
Register_Object frmNeosName
Register_Object frmPalios
Register_Object frmPaliosName
Register_Object frmPelaths
Register_Object frmPelathsName
Register_Object Payresp_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Open Clients
    Open Pmoves
    Open Particle
    Open Barticl
    Open BtnOrdH
    Open Wcmoves
    Open Cmoves
    Open CN
    Open Bmove
    
    Use sl100.sl
    Use sl111.sl
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use Form.Sub
    Use Button.Sub
    Use Chkbox.Sub

    Use COUNTRY.DD
    Use TOWNS.DD
    Use PAYRESP.DD
    Use AREAS.DD
    Use CITIES.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_EnhPrespNew FOR EnhPrespNew

    Object EnhPrespNew is a dbViewSub

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Set Label to "Batch Ä¢¢òö„ òß¶ ‚§ò§ ìßúÁü¨§¶ è¢û®‡£È§ ©ú °·ß¶†¶§ ·¢¢¶ (£ú ò§òõ®¶£„ ©ú Ê¢ò ´ò ú£ß¢ú°Ê£ú§ò ò®ÆúÂò)"
        Set Size to 140 592
        Set Location to 24 15

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Payresp_DD is a Payresp_DataDictionary
        End_Object    // Payresp_DD

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Set Main_DD to (Payresp_DD(self))
        Set Server to (Payresp_DD(self))

        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "è®¶ûö¶Á£ú§¶™ ìßúÁü¨§¶™"
            Set Auto_Size_State to FALSE
            Set TextColor to 4210688
            Set Location to 9 47
            Set Size to 10 90
            Set FontWeight to 800
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object frmPalios is a FormSub

            //AB-StoreTopStart
                                
            //AB-StoreTopEnd

            Set Size to 13 85
            Set Location to 7 156
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                
            Set Prompt_Object to (sl111(Self))
            
            Procedure OnChange
                String s1 s2 s3 s4
                Get Value Of frmPalios Item 0   to s1
                Move (Trim(s1))                 to s1
                Clear Payresp
                Move s1 to Payresp.Presp_ID
                Find Eq Payresp By Index.7
                Set Value of frmPaliosName Item 0 to (Trim(Payresp.Presp_Name))
            End_Procedure
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmPalios

        Object frmPaliosName is a FormSub
            Set Size to 13 220
            Set Location to 7 247
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // frmPaliosName

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "í¶®†§Ê™ ìßúÁü¨§¶™"
            Set Auto_Size_State to FALSE
            Set TextColor to 4210688
            Set Location to 25 71
            Set Size to 10 67
            Set FontWeight to 800
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object frmNeos is a FormSub

            //AB-StoreTopStart
                                
            //AB-StoreTopEnd

            Set Size to 13 85
            Set Location to 24 156
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                
            Set Prompt_Object to (sl111(Self))
            
            Procedure OnChange
                String s1 s2 s3 s4
                Get Value Of frmNeos Item 0 to s1
                Move (Trim(s1))             to s1
                Clear Payresp
                Move s1 to Payresp.Presp_ID
                Find Eq Payresp By Index.7
                Set Value of frmNeosName Item 0 to (Trim(Payresp.Presp_Name))
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmNeos

        Object frmNeosName is a FormSub
            Set Size to 13 220
            Set Location to 24 247
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // frmNeosName

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ èú¢·´û"
            Set Auto_Size_State to FALSE
            Set TextColor to 4210688
            Set Location to 49 89
            Set Size to 10 54
            Set FontWeight to 800
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object frmPelaths is a FormSub

            //AB-StoreTopStart
                                
            //AB-StoreTopEnd

            Set Size to 13 85
            Set Location to 47 156
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                
            Set Prompt_Object to (sl100(Self))
            
            Procedure OnChange
                String s1 s2 s3 s4
                Get Value Of frmPelaths Item 0 to s1
                Move (Trim(s1))                to s1
                Clear Clients
                Move s1 to Clients.Client_ID
                Find Eq Clients By Index.6
                Set Value of frmPelathsName Item 0 to (Trim(Clients.Client_Name))
            End_Procedure
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmPelaths

        Object frmPelathsName is a FormSub
            Set Size to 13 220
            Set Location to 47 247
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // frmPelathsName

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 459
            Set Location to 103 7
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                    
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                integer irecnum ival inum
                integer isCheckedClients isCheckedCN isCheckedWcmoves isCheckedPmoves
                integer isCheckedCmoves isCheckedBarticle isCheckedBtnOrdH
                String  sLabel sPelaths sclient sname safm sdoy saddres sjob srespons sNeos sPalios
                number ncity narea
                string szipcode sphone sfax smobile saoh semail sidiot saddno sid sNeosName sPaliosName
                Integer iFs iInt iProblem i1 i2 i3 i4
                Get Label to sLabel
            
                Get Checked_State of ChkClients     to isCheckedClients
                Get Checked_State of ChkCN          to isCheckedCN
                Get Checked_State of ChkWcmoves     to isCheckedWcmoves
                Get Checked_State of ChkPmoves      to isCheckedPmoves
                Get Checked_State of ChkCmoves      to isCheckedCmoves
                Get Checked_State of ChkBarticle    to isCheckedBarticle
                Get Checked_State of ChkBtnOrdH     to isCheckedBtnOrdH
            
                Get Value Of frmPelaths     Item 0 to sPelaths
                Get Value Of frmPalios      Item 0 to sPalios
                Get Value Of frmPaliosName  Item 0 to sPaliosName
            
                Get Value Of frmNeos        Item 0 to sNeos
                Get Value Of frmNeosName    Item 0 to sNeosName
            
                Move (Trim(sPelaths ))  to sPelaths
                Move (Trim(sPalios  ))  to sPalios
                Move (Trim(sNeos    ))  to sNeos
            
            
                If (sPelaths='') Begin
                    Send Activate to frmPelaths
                    Send Stop_Box 'é èú¢·´û™ úÂ§ò† ¨ß¶Æ®ú‡´†°Ê™' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            
                If ((sNeos='') Or (sPalios='') ) Begin
                    Send Activate to frmPalios
                    Send Stop_Box 'ë¨£ß¢û®È©´ú ßò¢ò†Ê °ò† §‚¶ ìßúÁü¨§¶ è¢û®‡£È§' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            
                Integer iYes
                Get YesNo_Box "åò ú§û£ú®‡üúÂ ¶ ©¨ö°ú®°†£‚§¶™ èú¢·´û™ £ú ´¶§ §‚¶ ¨ßúÁü¨§¶\nåò ß®¶Æ‡®„©‡ ©´û§ ú§û£‚®‡©û ´‡§ úöö®ò≠È§?" to iYes
                If (iYes = MBR_NO) Procedure_Return
            
            
                Move 0 to iProblem
                Move (Trim(sNeos)) to sID // Mhpos kai to xexasoume
            
                Integer iWhat
                Move 0 to iWhat
            
                Clear Clients
                Move sPalios    to Clients.Presp_ID
                move sPelaths   to Clients.Client_ID
                Find EQ Clients by index.9
                If (Not(Found)) Begin
                    Send Stop_Box "Éú§ èú¢·´û™ £ú ´¶§ ©¨ö°ú°®†£‚§¶ ìßúÁü¨§¶"
                    Procedure_Return
                End
            
                Clear Clients
                Move sPalios    to Clients.Presp_ID
                move sPelaths   to Clients.Client_ID
                Find EQ Clients by index.9
                If (Found) Begin
                    Set Label to ('Clients  '+(String(iInt))+'/'+(String(sclient)))
            
                    lock
                    Add 1           to iInt
                    Move sPelaths   to sClient
            
                    //----------------------------------------------------------------
                    //----------------------------------------------------------------
            
                    If (isCheckedCN=1) Begin
                        Clear CN
                        Move sClient to CN.Client_ID
                        Find ge CN by index.4
                        While ((Found) and (sClient=CN.Client_id))
                            Move sNeos to CN.CN_Presp_ID
                            Saverecord CN
                            Find gt CN by Index.4
                        Loop
                    End
                    //----------------------------------------------------------------
                    //----------------------------------------------------------------
                    If (isCheckedCMoves=1) Begin
                        Clear Cmoves
                        Move sClient to Cmoves.Client_ID
                        Find GE Cmoves By Index.4
                        While ((Found) And (Cmoves.Client_ID=sClient))
                            Add 1 to iInt
                            Set Label to ('Cmoves  '+(String(iInt))+'/'+(String(sClient)))
            
                            //----------------------------------------------------------------
                            //----------------------------------------------------------------
                            If (Cmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Cmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID  <>Cmoves.SLS_ID    ) Or ;
                                         (CN.CN_CNT_ID  <>Cmoves.CNT_ID    ) Or ;
                                         (sNeos         <>Cmoves.presp_ID  ) Or ;
                                         (CN.Mhxanik_ID <>Cmoves.Mhxanik_ID))  Begin
            
                                        Move CN.CN_SLS_ID   to Cmoves.SLS_ID
                                        Move CN.CN_CNT_ID   to Cmoves.CNT_ID
                                        Move CN.Mhxanik_ID  to Cmoves.Mhxanik_ID
                                        Move sNeos          to Cmoves.presp_ID
            
                                        Saverecord Cmoves
                                    End
                                End
                            End
                            Find Gt Cmoves By Index.4
                        Loop
                    End
                    //----------------------------------------------------------------
                    //----------------------------------------------------------------
                    If (isCheckedWCMoves=1) Begin
                        Clear Wcmoves
                        Move sClient to Wcmoves.Client_ID
                        Find GE Wcmoves By Index.11
                        While ((Found) And (Wcmoves.Client_ID=sClient))
                            Add 1 to iInt
                            Set Label to ('Wcmoves  '+(String(iInt))+'/'+(String(sClient)))
            
                            //----------------------------------------------------------------
                            //----------------------------------------------------------------
                            If (Wcmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Wcmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID  <>Wcmoves.SLS_ID     ) Or ;
                                         (CN.CN_CNT_ID  <>Wcmoves.CNT_ID     ) Or ;
                                         (sNeos         <>Wcmoves.presp_ID   ) Or ;
                                         (CN.Mhxanik_ID <>Wcmoves.Mhxanik_ID))  Begin
                                       Move CN.CN_SLS_ID    to Wcmoves.SLS_ID
                                       Move CN.CN_CNT_ID    to Wcmoves.CNT_ID
                                       Move CN.Mhxanik_ID   to Wcmoves.Mhxanik_ID
                                       Move sNeos           to Wcmoves.presp_ID
                                       Saverecord Wcmoves
                                   End
                               End
                            End
                            Find Gt Wcmoves By Index.11
                        Loop
                    End
                    //----------------------------------------------------------------
                    //----------------------------------------------------------------
                    If (isCheckedPmoves=1) Begin
                        Move sClient to Pmoves.Client_ID
                        Find GE Pmoves By Index.6
            
                        While ((Found) And (Pmoves.Client_ID=sclient))
                            Add 1 to iInt
                            Set Label to ('Pmoves  '+(String(iInt))+'/'+(String(SCLIENT)))
            
                            //----------------------------------------------------------------
                            //----------------------------------------------------------------
                            If (Pmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Pmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID  <>Pmoves.SLS_ID    )    Or ;
                                         (CN.Mhxanik_ID <>Pmoves.Mhxanik_ID)    Or ;
                                         (CN.CN_CNT_ID  <>Pmoves.CNT_ID    )    Or ;
                                         (sNeos         <>Pmoves.presp_ID  ))  Begin
                                        Move CN.CN_SLS_ID   to Pmoves.SLS_ID
                                        Move CN.CN_CNT_ID   to Pmoves.CNT_ID
                                        Move CN.Mhxanik_ID  to Pmoves.Mhxanik_ID
                                        Move sNeos          to pmoves.presp_id
                                        Saverecord Pmoves
            
                                        Clear Particle
                                        Move Pmoves.Partl_Recr to Particle.Partl_Recr
                                        Find Eq Particle By Index.2
                                        If (Found) Begin
                                            Move CN.CN_SLS_ID   to Particle.SLS_ID
                                            Move CN.CN_CNT_ID   to Particle.CNT_ID
                                            MOVE sNeos          to Particle.presp_id
                                            Saverecord Particle
                                        End
            
                                    End
                                End
                            End
                            Find Gt Pmoves By Index.6
                        Loop
                    End
            
                    //----------------------------------------------------------------
                    //----------------------------------------------------------------
                    If (isCheckedBarticle=1) Begin
                        Clear Barticl
                        Move sClient to Barticl.Barticl_code1
                        Find GE Barticl By Index.5
                        While ((Found) And (Barticl.Barticl_code1=sClient))
                            Add 1 to iInt
                            Set Label to ('Barticl  '+(String(iInt))+'/'+(String(sClient)))
                            If (Barticl.CN_Code<>'') Begin
                                Clear CN
                                Move Barticl.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID  <>Barticl.SLS_ID  ) Or ;
                                         (sNeos         <>Barticl.presp_ID) Or ;
                                         (CN.CN_CNT_ID  <>Barticl.CNT_ID  ))  Begin
                                        Move CN.CN_SLS_ID   to Barticl.SLS_ID
                                        Move CN.CN_CNT_ID   to Barticl.CNT_ID
                                        Move sNeos          to Barticl.presp_ID
                                        Saverecord Barticl
                                    End
                                    Clear Bmove
                                    Move Barticl.Barticl_Recr to Bmove.Barticl_Recr
                                    Find GE Bmove By Index.3
                                    While ((Found) And (Bmove.Barticl_Recr=Barticl.Barticl_Recr))
                                        Move CN.CN_SLS_ID   to Bmove.SLS_ID
                                        Move CN.CN_CNT_ID   to Bmove.CNT_ID
                                        Move sNeos          to Bmove.presp_ID
                                        Saverecord Bmove
                                        Find Gt Bmove By Index.3
                                    Loop
                                End
                            End
                            Find Gt Barticl By Index.5
                        Loop
                    End
            
                    //----------------------------------------------------------------
                    //----------------------------------------------------------------
                    If (isCheckedBtnOrdH=1) Begin
                        clear Btnordh
                        move sClient to Btnordh.Client_ID
                        Find GE Btnordh by index.4
                        While ((Found) and (Btnordh.Client_ID = sClient))
                            Add 1 to iint
                            Set Label to ('Btnordh '+(String(iInt))+'/'+(String(sClient)))
                            move sNeos to btnordh.Presp_ID
                            Saverecord Btnordh
                            Find GT Btnordh by index.4
                        Loop
                    End
            
            
                    //----------------------------------------------------------------
                    If (isCheckedClients=1) Begin
                        Move sNeos to Clients.Presp_ID
                        Saverecord Clients
                    End
            
            
                    Unlock
            
                End
            
                Clear Clients
                Clear Pmoves
                Clear Particle
                Clear Barticl
                Clear BtnOrdH
                Clear Wcmoves
                Clear Cmoves
                Clear Bmove
                Clear CN
            
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object chkClients is a CheckBoxSub
            Set Label to "CLIENTS"
            Set Size to 10 47
            Set Location to 3 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // chkClients

        Object chkCN is a CheckBoxSub
            Set Label to "CN"
            Set Size to 10 27
            Set Location to 16 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // chkCN

        Object chkWcmoves is a CheckBoxSub
            Set Label to "WCMOVES"
            Set Size to 10 54
            Set Location to 29 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // chkWcmoves

        Object ChkPmoves is a CheckBoxSub
            Set Label to "PMOVES"
            Set Size to 10 47
            Set Location to 42 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // ChkPmoves

        Object ChkCmoves is a CheckBoxSub
            Set Label to "CMOVES"
            Set Size to 10 47
            Set Location to 55 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // ChkCmoves

        Object ChkBarticle is a CheckBoxSub
            Set Label to "BARTICLE"
            Set Size to 10 51
            Set Location to 67 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // ChkBarticle

        Object ChkBtnOrdH is a CheckBoxSub
            Set Label to "BTNORDH"
            Set Size to 10 53
            Set Location to 81 498
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // ChkBtnOrdH

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Ä≠„©´ú ´¶§ èú¢·´û °ú§Ê ö†ò §ò ´®‚•ú† ö†ò Ê¢¶¨™"
            Set Auto_Size_State to FALSE
            Set TextColor to clPurple
            Set Location to 62 155
            Set Size to 13 183
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4


        //AB-StoreStart
                    
        //AB-StoreEnd

    End_Object    // EnhPrespNew


    //AB-StoreStart
        
        
        
        
        
    //AB-StoreEnd

//AB/     End_Object    // prj
