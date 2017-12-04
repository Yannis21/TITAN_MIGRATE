//AB/ Project EnhSlsId
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhSlsId"
//AB/     Set ProjectFileName to "EnhSlsId.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhSlsId is a dbViewSubs
//     frmPelaths is a FormSub
//     chkCmoves is a CheckBoxSub
//     chkWcmoves is a CheckBoxSub
//     chkPmoves is a CheckBoxSub
//     chkBmoves is a CheckBoxSub
//     ButtonSub1 is a ButtonSub
//     frmApo is a cSyDateForm
//     frmEos is a cSyDateForm
//     chkCN is a CheckBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object chkBmoves
Register_Object chkCmoves
Register_Object chkCN
Register_Object chkPmoves
Register_Object chkWcmoves
Register_Object EnhSlsId
Register_Object frmApo
Register_Object frmEos
Register_Object frmPelaths


//AB/ AppBuild VIEW


//AB-StoreTopStart
                                
Use sl100.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use Form.Sub
Use Chkbox.Sub
Use Button.Sub
Use cSyDateForm.Pkg

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhSlsId FOR ;
;
Object EnhSlsId is a dbViewSubs

    //AB-StoreTopStart
                                                                                                                
    //AB-StoreTopEnd

    Set Label to "Ñ§û£ú®‡©û è‡¢û´È§/ìß.è¢û®/Ñ®ö¶¢/ãûÆò§. ©´ò ò®ÆúÂò °†§„©ú‡§"
    Set Size to 117 373
    Set Location to 14 28

    //AB-DDOStart


    //AB-DDOEnd

    Object frmPelaths is a FormSub
        Set Label to "èú¢·´û™"
        Set Size to 13 85
        Set Location to 9 142
        Set Label_Col_Offset to 7
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                        
        Set Prompt_Object to (sl100(Self))
        
        //AB-StoreEnd

    End_Object    // frmPelaths

    Object chkCmoves is a CheckBoxSub
        Set Label to "Cmoves"
        Set Size to 10 42
        Set Location to 60 79
        Set Checked_State to TRUE
    End_Object    // chkCmoves

    Object chkWcmoves is a CheckBoxSub
        Set Label to "Wcmoves"
        Set Size to 10 49
        Set Location to 60 135
        Set Checked_State to TRUE
    End_Object    // chkWcmoves

    Object chkPmoves is a CheckBoxSub
        Set Label to "Pmoves / Particle"
        Set Size to 10 73
        Set Location to 60 193
        Set Checked_State to TRUE
    End_Object    // chkPmoves

    Object chkBmoves is a CheckBoxSub
        Set Label to "Bmoves / Barticle"
        Set Size to 10 73
        Set Location to 60 275
        Set Checked_State to TRUE
    End_Object    // chkBmoves

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û"
        Set Size to 14 353
        Set Location to 79 7
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Label to 'Ñ§û£‚®‡©û'
        
        Procedure OnClick
            String  sLabel sPelaths
            Integer iFs iInt iProblem
            Integer i1 i2 i3 i4 i5
            Date dApo dEos
            Get Label to sLabel
        
            Get Value Of frmApo Item 0 to dApo
            Get Value Of frmEos Item 0 to dEos
            If ( ((dApo<>"") And (dEos="")) Or ((dApo="") And (dEos<>"")) )  Begin
                Send Stop_Box 'ãÂò £Ê§¶ û£ú®¶£û§Âò õú§ úß†´®‚ßú´ò† §ò úÂ§ò† °ú§„\nÜ °ò† ¶† 2 üò úÂ§ò† °ú§‚™, „ °ò† ¶† 2 ©¨£ß¢û®‡£‚§ú™' 'è¢û®¶≠¶®Âò'
                Procedure_Return
            End
        
            Get Value Of frmPelaths Item 0 to sPelaths
            If (sPelaths<>'') Begin
                Clear Clients
                Move sPelaths to Clients.Client_ID
                Find Eq Clients By Index.6
                If (Not(Found)) Begin
                    Set Value Of frmPelaths Item 0 to ''
                    Send Activate to frmPelaths
                    Send Stop_Box 'Ä§Áßò®°´¶™ ßú¢·´û™' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            End
        
            Get Checked_State Of chkCN      to i5
        
            Get Checked_State Of chkCmoves  to i1
            Get Checked_State Of chkWcmoves to i2
            Get Checked_State Of chkPmoves  to i3
            Get Checked_State Of chkBmoves  to i4
        
            Open Pmoves
            Open Cmoves
            Open Barticl
            Open Particle
            Open Bmove
            Open Wcmoves
            Open CN
        
            Move 0 to iProblem
        
        
            //--------------------------------
            // ----- PROSOXH MEGA THEMA ------
            //--------------------------------
            // SOS YANNIS 29/03/2017
            // PREPEI PROTA AP OLA NA ENHMEROTHOUN TA ERGA ME TON
            // TREXONTA YPEYTHYNO PLHROMON TON PELATON,
            // -- PRIN --  PROXORISEI TO PROGRAMMA STIS ENHMEROSEIS
            // TON ALLON ARXEION GIATI AYTA ENHMERONONTAI ME THN
            // SEIRA TOUS APO APO TA ERGA
            //--------------------------------
            If (i5) Begin
                Move 0 to iInt
                File_Size Clients to iFs
                Clear Clients
                Lock
                Find GE Clients.Recnum
                While (Found)
                    Add 1 to iInt
                    Set Label to ('Ñ§û£‚®‡©û ìß. è¢û®‡£È§... '+(String(iInt))+'/'+(String(iFS)))
        
                    Clear CN
                    Move Clients.Client_ID to CN.Client_ID
                    Find GE CN By Index.4
                    While ((Found) And (CN.Client_ID=Clients.Client_ID))
                        If ((Clients.Presp_ID<>"") And (Clients.Presp_ID<>CN.CN_Presp_ID)) Begin
                            Move Clients.Presp_ID to CN.CN_Presp_ID
                            Saverecord CN
                        End
                        Find GT CN By Index.4
                    Loop
                    Find GT Clients.Recnum
                Loop
                Unlock
            End
        
            If (i1) Begin
                // 1. Cmoves
                Integer iExittt
                Move 0 to iExittt
                Move 0 to iInt
                File_Size Cmoves to iFs
        
                If (sPelaths<>'') Begin
                    Clear Cmoves
                    Lock
                    Move sPelaths   to Cmoves.Client_ID
                    Move dApo       to Cmoves.Cmoves_Hmnia
                    Find GE Cmoves By Index.4
                    While ((Found) And (Cmoves.Client_ID=sPelaths) And (iExittt=0))
                        If ((dEos<>"") And (Cmoves.Cmoves_Hmnia>dEos)) Begin
                            Move 1 to iExittt
                        End
                        Else Begin
                            Add 1 to iInt
                            Set Label to ('Cmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Cmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Cmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Cmoves.SLS_ID) Or ;
                                         (CN.CN_CNT_ID <>Cmoves.CNT_ID) Or ;
                                         (CN.CN_presp_ID <>Cmoves.presp_ID) Or ;
                                         (CN.Mhxanik_ID<>Cmoves.Mhxanik_ID))  Begin
                                        Move CN.CN_SLS_ID  to Cmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Cmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Cmoves.Mhxanik_ID
                                        Move CN.cn_presp_id to Cmoves.presp_ID
                                        Saverecord Cmoves
                                    End
                                End
                            End
                        End
                        Find Gt Cmoves By Index.4
                    Loop
                    Unlock
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
                Else Begin
                    File_Size Cmoves to iFs
                    Move 0 to iInt
                    If (dApo<>"") Begin
                        Clear Cmoves
                        Lock
                        Move dApo to Cmoves.Cmoves_Hmnia
                        Find GE Cmoves By Index.3
                        While ((Found) And (Cmoves.Cmoves_Hmnia<=dEos))
                            Add 1 to iInt
                            Set Label to ('Cmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Cmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Cmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Cmoves.SLS_ID) Or ;
                                         (CN.CN_CNT_ID <>Cmoves.CNT_ID) Or ;
                                         (CN.CN_presp_ID <>Cmoves.presp_ID) Or ;
                                         (CN.Mhxanik_ID<>Cmoves.Mhxanik_ID))  Begin
                                        Move CN.CN_SLS_ID  to Cmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Cmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Cmoves.Mhxanik_ID
                                        Move CN.cn_presp_id to Cmoves.presp_ID
                                        Saverecord Cmoves
                                    End
                                End
                            End
                            Find GT Cmoves By Index.3
                        Loop
                        Unlock
                    End
                    Else Begin
                        Move 0 to iInt
                        Clear Cmoves
                        Lock
                        Find Gt Cmoves.Recnum
                        While (Found)
                            Add 1 to iInt
                            Set Label to ('Cmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Cmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Cmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Cmoves.SLS_ID) Or ;
                                         (CN.CN_CNT_ID <>Cmoves.CNT_ID) Or ;
                                         (CN.CN_presp_ID <>Cmoves.presp_ID) Or ;
                                         (CN.Mhxanik_ID<>Cmoves.Mhxanik_ID))  Begin
                                        Move CN.CN_SLS_ID  to Cmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Cmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Cmoves.Mhxanik_ID
                                        Move CN.cn_presp_id to Cmoves.presp_ID
                                        Saverecord Cmoves
                                    End
                                End
                            End
                            Find Gt Cmoves.Recnum
                        Loop
                        Unlock
                    End
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
            End
        
        
            If (i2) Begin
                // 2. Wcmoves
                If (sPelaths<>'') Begin
                    File_Size Wcmoves to iFs
                    Move 0 to iInt
                    Clear Wcmoves
                    Lock
                    Move sPelaths to Wcmoves.Client_ID
                    Find GE Wcmoves By Index.11
                    While ((Found) And (Wcmoves.Client_ID=sPelaths))
                        Add 1 to iInt
                        Set Label to ('Wcmoves  '+(String(iInt))+'/'+(String(iFS)))
                        If ((dApo<>"") And ((Wcmoves.Wcmove_Hmnia<dApo) Or (Wcmoves.Wcmove_Hmnia>dEos)) ) Begin
                        End
                        Else Begin
                            If (Wcmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Wcmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Wcmoves.SLS_ID) Or ;
                                         (CN.CN_CNT_ID <>Wcmoves.CNT_ID) Or ;
                                         (CN.CN_presp_ID <>Wcmoves.presp_ID) or;
                                         (CN.Mhxanik_ID<>Wcmoves.Mhxanik_ID))  Begin
                                        Move CN.CN_SLS_ID  to Wcmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Wcmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Wcmoves.Mhxanik_ID
                                        Move CN.cn_presp_id to wcmoves.presp_ID
                                        Saverecord Wcmoves
                                    End
                                End
                            End
                        End
                        Find Gt Wcmoves By Index.11
                    Loop
                    Unlock
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
                Else Begin
                    File_Size Wcmoves to iFs
                    Move 0 to iInt
        
                    If (dApo<>"") Begin
                        Clear Wcmoves
                        Lock
                        Move dApo to Wcmoves.Wcmove_Hmnia
                        Find GE Wcmoves By Index.9
                        While ((Found) And (Wcmoves.Wcmove_Hmnia<=dEos))
                            Add 1 to iInt
                            Set Label to ('Wcmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Wcmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Wcmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID   <>Wcmoves.SLS_ID) Or ;
                                         (CN.CN_CNT_ID   <>Wcmoves.CNT_ID) Or ;
                                         (CN.CN_presp_ID <>Wcmoves.presp_ID) or;
                                         (CN.Mhxanik_ID  <>Wcmoves.Mhxanik_ID))  Begin
                                        Move CN.CN_SLS_ID   to Wcmoves.SLS_ID
                                        Move CN.CN_CNT_ID   to Wcmoves.CNT_ID
                                        Move CN.Mhxanik_ID  to Wcmoves.Mhxanik_ID
                                        Move CN.cn_presp_id to wcmoves.presp_ID
                                        Saverecord Wcmoves
                                    End
                                End
                            End
                            Find Gt Wcmoves By Index.9
                        Loop
                        Unlock
                    End
                    Else Begin
                        Move 0 to iInt
                        Clear Wcmoves
                        Lock
                        Find GE Wcmoves.Recnum
                        While (Found)
                            Add 1 to iInt
                            Set Label to ('Wcmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Wcmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Wcmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Wcmoves.SLS_ID) Or ;
                                         (CN.CN_CNT_ID <>Wcmoves.CNT_ID) Or ;
                                         (CN.CN_presp_ID <>Wcmoves.presp_ID) or;
                                         (CN.Mhxanik_ID<>Wcmoves.Mhxanik_ID))  Begin
                                        Move CN.CN_SLS_ID  to Wcmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Wcmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Wcmoves.Mhxanik_ID
                                        Move CN.cn_presp_id to wcmoves.presp_ID
                                        Saverecord Wcmoves
                                    End
                                End
                            End
                            Find Gt Wcmoves.Recnum
                        Loop
                        Unlock
        
                    End
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
            End
        
        
            If (i3) Begin
                // 3. Pmoves
                If (sPelaths<>'') Begin
                    File_Size Pmoves to iFs
                    Move 0 to iInt
                    Clear Pmoves
                    Lock
                    Move sPelaths to Pmoves.Client_ID
                    Find GE Pmoves By Index.6
                    While ((Found) And (Pmoves.Client_ID=sPelaths))
                        Add 1 to iInt
                        Set Label to ('Pmoves  '+(String(iInt))+'/'+(String(iFS)))
                        If ((dApo<>"") And ((Pmoves.Partl_Hmnia<dApo) Or (Pmoves.Partl_Hmnia>dEos)) ) Begin
                        End
                        Else Begin
                            If (Pmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Pmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Pmoves.SLS_ID)     Or ;
                                         (CN.Mhxanik_ID<>Pmoves.Mhxanik_ID) Or ;
                                         (CN.CN_CNT_ID <>Pmoves.CNT_ID)     Or ;
                                         (CN.CN_presp_id <>Pmoves.presp_ID))  Begin
                                        Move CN.CN_SLS_ID  to Pmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Pmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Pmoves.Mhxanik_ID
                                        Move cn.cn_presp_id to pmoves.presp_id
                                        Saverecord Pmoves
                                        Clear Particle
                                        Move Pmoves.Partl_Recr to Particle.Partl_Recr
                                        Find Eq Particle By Index.2
                                        If (Found) Begin
                                            Move CN.CN_SLS_ID  to Particle.SLS_ID
                                            Move CN.CN_CNT_ID  to Particle.CNT_ID
                                            Saverecord Particle
                                        End
                                    End
                                End
                            End
                        End
                        Find Gt Pmoves By Index.6
                    Loop
                    Unlock
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
                Else Begin
                    File_Size Pmoves to iFs
                    Move 0 to iInt
        
                    If (dApo<>"") Begin
                        Clear Pmoves
                        Lock
                        Move dApo to Pmoves.Partl_Hmnia
                        Find GE Pmoves By Index.9
                        While ((Found) And (Pmoves.Partl_Hmnia<=dEos))
                            Add 1 to iInt
                            Set Label to ('Pmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Pmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Pmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Pmoves.SLS_ID)     Or ;
                                         (CN.Mhxanik_ID<>Pmoves.Mhxanik_ID) Or ;
                                         (CN.CN_CNT_ID <>Pmoves.CNT_ID)     Or ;
                                         (CN.CN_presp_id <>Pmoves.presp_ID))  Begin
                                        Move CN.CN_SLS_ID  to Pmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Pmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Pmoves.Mhxanik_ID
                                        Move cn.cn_presp_id to pmoves.presp_id
                                        Saverecord Pmoves
                                        Clear Particle
                                        Move Pmoves.Partl_Recr to Particle.Partl_Recr
                                        Find Eq Particle By Index.2
                                        If (Found) Begin
                                            Move CN.CN_SLS_ID  to Particle.SLS_ID
                                            Move CN.CN_CNT_ID  to Particle.CNT_ID
                                            Saverecord Particle
                                        End
                                    End
                                End
                            End
                            Find Gt Pmoves By Index.9
                        Loop
                        Unlock
                    End
                    Else Begin
                        Clear Pmoves
                        Lock
                        Find GE Pmoves.Recnum
                        While (Found)
                            Add 1 to iInt
                            Set Label to ('Pmoves  '+(String(iInt))+'/'+(String(iFS)))
                            If (Pmoves.CN_Code<>'') Begin
                                Clear CN
                                Move Pmoves.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID <>Pmoves.SLS_ID)     Or ;
                                         (CN.Mhxanik_ID<>Pmoves.Mhxanik_ID) Or ;
                                         (CN.CN_CNT_ID <>Pmoves.CNT_ID)     Or ;
                                         (CN.CN_presp_id <>Pmoves.presp_ID))  Begin
                                        Move CN.CN_SLS_ID  to Pmoves.SLS_ID
                                        Move CN.CN_CNT_ID  to Pmoves.CNT_ID
                                        Move CN.Mhxanik_ID to Pmoves.Mhxanik_ID
                                        Move cn.cn_presp_id to pmoves.presp_id
                                        Saverecord Pmoves
                                        Clear Particle
                                        Move Pmoves.Partl_Recr to Particle.Partl_Recr
                                        Find Eq Particle By Index.2
                                        If (Found) Begin
                                            Move CN.CN_SLS_ID  to Particle.SLS_ID
                                            Move CN.CN_CNT_ID  to Particle.CNT_ID
                                            Saverecord Particle
                                        End
                                    End
                                End
                            End
                            Find Gt Pmoves.Recnum
                        Loop
                        Unlock
                    End
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
            End
        
        
            If (i4) Begin
                // 4. Bmove
                If (sPelaths<>'') Begin
                    File_Size Barticl to iFs
                    Move 0 to iInt
                    If (dApo<>"") Begin
                        Clear barticl
                        Lock
                        Move sPelaths to Barticl.Barticl_code1
                        Find GE Barticl By Index.5
                        While ((Found) And (Barticl.Barticl_code1=sPelaths))
                            Add 1 to iInt
                            Set Label to ('Barticl  '+(String(iInt))+'/'+(String(iFS)))
        
                            If ((Barticl.Barticl_Hmnia<dApo) Or (Barticl.Barticl_Hmnia>dEos))  Begin
                            End
                            Else Begin
                                If (Barticl.CN_Code<>'') Begin
                                    Clear CN
                                    Move Barticl.CN_Code to CN.CN_Code
                                    Find Eq CN By Index.5
                                    If (Not(Found)) Add 1 to iProblem
                                    Else Begin
                                        If  ((CN.CN_SLS_ID   <>Barticl.SLS_ID) Or ;
                                             (CN.CN_presp_ID <>Barticl.presp_ID) or;
                                             (CN.CN_CNT_ID   <>Barticl.CNT_ID))  Begin
                                            Move CN.CN_SLS_ID   to Barticl.SLS_ID
                                            Move CN.CN_CNT_ID   to Barticl.CNT_ID
                                            Move CN.CN_presp_ID to Barticl.presp_ID
                                            Saverecord Barticl
                                        END
                                            Clear Bmove
                                            Move Barticl.Barticl_Recr to Bmove.Barticl_Recr
                                            Find GE Bmove By Index.3
                                            While ((Found) And (Bmove.Barticl_Recr=Barticl.Barticl_Recr))
                                                Move CN.CN_SLS_ID   to Bmove.SLS_ID
                                                Move CN.CN_CNT_ID   to Bmove.CNT_ID
                                                Move CN.CN_presp_ID to Bmove.presp_ID
                                                saverecord bmove
                                                Find GT Bmove By Index.3
                                            Loop
                                    End
                                End
                            End
                            Find Gt Barticl By Index.5
                        Loop
                        Unlock
                    End
                    Else Begin
                        Move 0 to iInt
                        Clear barticl
                        Lock
                        Move sPelaths to Barticl.Barticl_code1
                        Find GE Barticl By Index.5
                        While ((Found) And (Barticl.Barticl_code1=sPelaths))
                            Add 1 to iInt
                            Set Label to ('Barticl  '+(String(iInt))+'/'+(String(iFS)))
                            If (Barticl.CN_Code<>'') Begin
                                Clear CN
                                Move Barticl.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID   <>Barticl.SLS_ID) Or ;
                                         (CN.CN_presp_ID <>Barticl.presp_ID) or;
                                         (CN.CN_CNT_ID   <>Barticl.CNT_ID))  Begin
                                        Move CN.CN_SLS_ID   to Barticl.SLS_ID
                                        Move CN.CN_CNT_ID   to Barticl.CNT_ID
                                        Move CN.CN_presp_ID to Barticl.presp_ID
                                        Saverecord Barticl
                                    END
                                        Clear Bmove
                                        Move Barticl.Barticl_Recr to Bmove.Barticl_Recr
                                        Find Gt Bmove By Index.3
                                        While ((Found) And (Bmove.Barticl_Recr=Barticl.Barticl_Recr))
                                            Move CN.CN_SLS_ID   to Bmove.SLS_ID
                                            Move CN.CN_CNT_ID   to Bmove.CNT_ID
                                            Move CN.CN_presp_ID to Bmove.presp_ID
                                            saverecord bmove
                                            Find Gt Bmove By Index.3
                                        Loop
                                End
                            End
                            Find Gt Barticl By Index.5
                        Loop
                        Unlock
                    End
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
                Else Begin
                    File_Size Barticl to iFs
                    Move 0 to iInt
                    If (dApo<>"") Begin
                        Clear barticl
                        Lock
                        Move dApo to Barticl.Barticl_Hmnia
                        Find GE Barticl By Index.4
                        While ((Found) And (barticl.Barticl_Hmnia<=dEos))
                            Add 1 to iInt
                            Set Label to ('Barticl  '+(String(iInt))+'/'+(String(iFS)))
                            If (Barticl.CN_Code<>'') Begin
                                Clear CN
                                Move Barticl.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID   <>Barticl.SLS_ID) Or ;
                                         (CN.CN_presp_ID <>Barticl.presp_ID) or;
                                         (CN.CN_CNT_ID   <>Barticl.CNT_ID))  Begin
                                        Move CN.CN_SLS_ID   to Barticl.SLS_ID
                                        Move CN.CN_CNT_ID   to Barticl.CNT_ID
                                        Move CN.CN_presp_ID to Barticl.presp_ID
                                        Saverecord Barticl
                                    end
                                    Clear Bmove
                                    Move Barticl.Barticl_Recr to Bmove.Barticl_Recr
                                    Find Gt Bmove By Index.3
                                    While ((Found) And (Bmove.Barticl_Recr=Barticl.Barticl_Recr))
                                        Move CN.CN_SLS_ID   to Bmove.SLS_ID
                                        Move CN.CN_CNT_ID   to Bmove.CNT_ID
                                        Move CN.CN_presp_ID to Bmove.presp_ID
                                        saverecord bmove
                                        Find Gt Bmove By Index.3
                                    Loop
                                End
                            End
                            Find GT Barticl By Index.4
                        Loop
                        Unlock
                    End
                    Else begin
                        Clear barticl
                        Lock
                        Find GE Barticl.Recnum
                        While (Found)
                            Add 1 to iInt
                            Set Label to ('Barticl  '+(String(iInt))+'/'+(String(iFS)))
                            If (Barticl.CN_Code<>'') Begin
                                Clear CN
                                Move Barticl.CN_Code to CN.CN_Code
                                Find Eq CN By Index.5
                                If (Not(Found)) Add 1 to iProblem
                                Else Begin
                                    If  ((CN.CN_SLS_ID   <>Barticl.SLS_ID) Or ;
                                         (CN.CN_presp_ID <>Barticl.presp_ID) or;
                                         (CN.CN_CNT_ID   <>Barticl.CNT_ID))  Begin
                                        Move CN.CN_SLS_ID   to Barticl.SLS_ID
                                        Move CN.CN_CNT_ID   to Barticl.CNT_ID
                                        Move CN.CN_presp_ID to Barticl.presp_ID
                                        Saverecord Barticl
                                    end
                                    Clear Bmove
                                    Move Barticl.Barticl_Recr to Bmove.Barticl_Recr
                                    Find Gt Bmove By Index.3
                                    While ((Found) And (Bmove.Barticl_Recr=Barticl.Barticl_Recr))
                                        Move CN.CN_SLS_ID   to Bmove.SLS_ID
                                        Move CN.CN_CNT_ID   to Bmove.CNT_ID
                                        Move CN.CN_presp_ID to Bmove.presp_ID
                                        saverecord bmove
                                        Find Gt Bmove By Index.3
                                    Loop
                                End
                            End
                            Find GT Barticl.Recnum
                        Loop
                        Unlock
                    End
                    If (iProblem) Begin
                        Send Info_Box ('Ñ§´¶ßÂ©´û°ò§ '+(String(iProblem))+' ©≠·¢£ò´ò') 'è¢û®¶≠¶®Âò'
                        Move 0 to iProblem
                    End
                End
            End
            Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object frmApo is a cSyDateForm
        Set Label to "Äß¶"
        Set Size to 13 66
        Set Location to 34 95
        Set Label_Col_Offset to 5
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmApo

    Object frmEos is a cSyDateForm
        Set Label to "Ñ‡™"
        Set Size to 13 66
        Set Location to 33 197
        Set Label_Col_Offset to 5
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmEos

    Object chkCN is a CheckBoxSub
        Set Label to "CN Ñ®öò"
        Set Size to 10 43
        Set Location to 60 23
        Set Checked_State to TRUE
    End_Object    // chkCN


    //AB-StoreStart
                                                                                                                
    //AB-StoreEnd

CD_End_Object    // EnhSlsId


//AB-StoreStart
                                
//AB-StoreEnd

//AB/ End_Object    // prj
