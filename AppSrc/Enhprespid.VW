//AB/ Project Enhprespid:enhmerosh pelaton me ypeyuyno
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Enhprespid:enhmerosh pelaton me ypeyuyno"
//AB/         Set ProjectFileName to "Enhprespid.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Enhprespid is a dbViewSubs
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     frmPelaths is a FormSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Country_DD
Register_Object Enhprespid
Register_Object frmPelaths
Register_Object Payresp_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                                            
    Use sl111.sl
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Button.Sub
    Use Txtbox.Sub

    Use COUNTRY.DD
    Use TOWNS.DD
    Use PAYRESP.DD
    Use AREAS.DD
    Use CITIES.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Enhprespid FOR ;
    ;
    Object Enhprespid is a dbViewSubs

        //AB-StoreTopStart
                                                            
        //AB-StoreTopEnd

        Set Label to "Ä¢¢òö„ ´¶¨ ¨ßú¨üÁ§¶¨ (ö†ò °·üú ßú¢·´û) £ú §‚¶ ß¶¨ üò õû£†¶¨®öûüúÂ òß¶ ´ò ©´¶†ÆúÂò °·üú ßú¢·´û"
        Set Size to 89 465
        Set Location to 8 9

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

        Object frmPelaths is a FormSub
            Set Size to 13 85
            Set Location to 43 8
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                            
            Set Prompt_Object to (sl111(Self))
            
            
            //AB-StoreEnd

        End_Object    // frmPelaths

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 313
            Set Location to 42 107
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            open clients
            open cmoves
            Open Pmoves
            Open Barticl
            Open Particle
            Open Bmove
            Open Wcmoves
            open cn
            open btnordh
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                integer irecnum ival inum
                String  sLabel sPelaths sclient sname safm sdoy saddres sjob srespons
                number ncity narea
                string szipcode sphone sfax smobile saoh semail sidiot saddno sid
                Integer iFs iInt iProblem i1 i2 i3 i4
                Get Label to sLabel
            
                Get Value Of frmPelaths Item 0 to sPelaths
                If (sPelaths<>'') Begin
                    Clear Payresp
                    Move sPelaths to payresp.presp_ID
                    Find Eq Payresp By Index.7
                    If (Not(Found)) Begin
                        Set Value Of frmPelaths Item 0 to ''
                        Send Activate to frmPelaths
                        Send Stop_Box 'Ä§Áßò®°´¶™ ìßúÁü¨§¶™ è¢û®‡£È§' 'è¢û®¶≠¶®Âò'
                        Procedure_Return
                    End
                End
            
                Move 0 to iProblem
            
            
                Clear Clients
            //    Lock
                Move sPelaths to Clients.presp_id
                move ''       to clients.client_id
                Find gt Clients by index.9
                While ((Found) And (Clients.presp_ID=sPelaths))
                   lock
                   Add 1 to iInt
                   move clients.client_id to sclient
                   Set Label to ('Clients  '+(String(iInt))+'/'+(String(sclient)))
                   move clients.client_name     to sname
                   move clients.client_afm      to safm
                   move clients.client_doy      to sdoy
                   move clients.client_address  to saddres
                   move clients.client_city_id  to ncity
                   move clients.client_area     to narea
                   move clients.client_job      to sjob
                   move clients.client_respons  to srespons
                   move clients.client_zipcode  to szipcode
                   move clients.client_phone    to sphone
                   move clients.client_fax      to sfax
                   move clients.client_mobile   to smobile
                   move clients.client_aoh      to saoh
                   move clients.client_email    to semail
                   move clients.client_idiot    to sidiot
                   move clients.client_add_no   to saddno
            
                   send clear to payresp_dd
                   set field_changed_value of payresp_dd field payresp.presp_name     to sname
                   set field_changed_value of payresp_dd field payresp.presp_afm      to safm
                   set field_changed_value of payresp_dd field payresp.presp_doy      to sdoy
                   set field_changed_value of payresp_dd field payresp.presp_address  to saddres
                   set field_changed_value of payresp_dd field payresp.presp_city_id  to ncity
                   set field_changed_value of payresp_dd field payresp.presp_area     to narea
                   set field_changed_value of payresp_dd field payresp.presp_job      to sjob
                   set field_changed_value of payresp_dd field payresp.presp_respons  to srespons
                   set field_changed_value of payresp_dd field payresp.presp_zipcode  to szipcode
                   set field_changed_value of payresp_dd field payresp.presp_phone    to sphone
                   set field_changed_value of payresp_dd field payresp.presp_fax      to sfax
                   set field_changed_value of payresp_dd field payresp.presp_mobile   to smobile
                   set field_changed_value of payresp_dd field payresp.presp_aoh      to saoh
                   set field_changed_value of payresp_dd field payresp.presp_email    to semail
                   set field_changed_value of payresp_dd field payresp.presp_add_no   to saddno
                   move ncity to iVal
                   Move (fiTownIDFromCity(iVal)) to ival
                   Set Field_Changed_Value Of payresp_DD Field payresp.presp_Nomos to iVal
                   Move (fiCountryIDFromTown(iVal)) to ival
                   Set Field_Changed_Value Of payresp_DD Field payresp.presp_Xora to iVal
                   send request_save to payresp_dd
            
                   get Field_Current_Value Of payresp_DD Field payresp.presp_id to sid
                   move sid to clients.presp_id
                   saverecord clients
            
                   clear cn
                   move sclient to cn.client_id
                   find gt cn by index.4
                   while ((found) and (sclient=cn.client_id))
                         move sid to cn.cn_presp_id
                         saverecord cn
                         find gt cn by index.4
                   Loop
            
                   Clear Cmoves
                   Move sclient to Cmoves.Client_ID
                   Find Gt Cmoves By Index.4
                   While ((Found) And (Cmoves.Client_ID=sclient))
                       Add 1 to iInt
                       Set Label to ('Cmoves  '+(String(iInt))+'/'+(String(SCLIENT)))
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
                                Move sid to Cmoves.presp_ID
                                Saverecord Cmoves
                            End
                          End
                       End
                       Find Gt Cmoves By Index.4
                   Loop
            
                   Clear Wcmoves
                   Move sclient to Wcmoves.Client_ID
                   Find Gt Wcmoves By Index.11
                   While ((Found) And (Wcmoves.Client_ID=sclient))
                       Add 1 to iInt
                       Set Label to ('Wcmoves  '+(String(iInt))+'/'+(String(SCLIENT)))
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
                       Find Gt Wcmoves By Index.11
                   Loop
            
                   Move sclient to Pmoves.Client_ID
                   Find Gt Pmoves By Index.6
                   While ((Found) And (Pmoves.Client_ID=sclient))
                        Add 1 to iInt
                        Set Label to ('Pmoves  '+(String(iInt))+'/'+(String(SCLIENT)))
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
            //                            Clear Particle
            //                            Move Pmoves.Partl_Recr to Particle.Partl_Recr
            //                            Find Eq Particle By Index.2
            //                            If (Found) Begin
            //                                Move CN.CN_SLS_ID  to Particle.SLS_ID
            //                                Move CN.CN_CNT_ID  to Particle.CNT_ID
            //                                MOVE cn.cn_presp_id to Particle.presp_id
            //                                Saverecord Particle
            //                            End
                                End
                            End
                        End
                        Find Gt Pmoves By Index.6
                    Loop
            
                    Clear barticl
                    Move sclient to Barticl.Barticl_code1
                    Find Gt Barticl By Index.5
                    While ((Found) And (Barticl.Barticl_code1=sclient))
                        Add 1 to iInt
                        Set Label to ('Barticl  '+(String(iInt))+'/'+(String(SCLIENT)))
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
            
                    clear btnordh
                    move sclient to btnordh.client_id
                    find gt btnordh by index.4
                    while ((found) and (btnordh.client_id = sclient))
                        add 1 to iint
                        Set Label to ('Btnordh '+(String(iInt))+'/'+(String(SCLIENT)))
                        move sID to btnordh.presp_id
                        saverecord btnordh
                        find gt btnordh by index.4
                    Loop
            
                   Unlock
                   clear clients
                   move spelaths to clients.presp_id
                   Find gt Clients by index.9
                Loop
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "ÉÈ©´ú ´¶§ °‡õ†°Ê ¨ßúÁü¨§¶ ß¢û®‡£È§ ß¶¨ ü‚¢ú´ú §ò ò§´†°ò´ò©´òüúÂ. áò ô®ú† Ê¢¶¨™ ´¶¨™ ßú¢·´ú™ £ú ò¨´Ê§ ´¶§ ßò¢†Ê °‡õ†°Ê ¨ßú¨üÁ§¶¨, üò ≠´†·•ú† §‚¶ ¨ßúÁü¨§¶ £ú ´ò ©´¶†ÆúÂò ´¶¨ ßú¢·´û, °ò† üò ú§û£ú®È©ú†"
            Set Location to 4 6
            Set Size to 28 343
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ê¢ò ´ò ©Æú´†°· ò®ÆúÂò £ú ´¶§ °‡õ†°Ê ´¶¨ §‚¶¨ ¨ßú¨üÁ§¶¨ ö†ò °·üú ßú¢·´û."
            Set Location to 20 56
            Set Size to 10 331
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2


        //AB-StoreStart
                                                            
        //AB-StoreEnd

    CD_End_Object    // Enhprespid


    //AB-StoreStart
                                                            
                                                            
    //AB-StoreEnd

//AB/     End_Object    // prj
