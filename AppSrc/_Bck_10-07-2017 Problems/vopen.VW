//AB/ Project vopen
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vopen"
//AB/         Set ProjectFileName to "vopen.VW"

// Project Object Structure
//   vopen is a dbViewSub
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
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
//     frmApo is a cSyDateForm
//     frmEos is a cSyDateForm
//     gtypkin_code is a Form
//     Gtypkin_descr is a FormSub
//     btnStart is a ButtonSub
//     fopen is a CheckBoxSub
//     fclose is a CheckBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object btnStart
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object Fpa_DD
Register_Object fclose
Register_Object fopen
Register_Object frmApo
Register_Object frmEos
Register_Object Gtypkin_descr
Register_Object gtypkin_code
Register_Object Item_DD
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Pmoves_DD
Register_Object Ptyppar_DD
Register_Object Towns_DD
Register_Object Units_DD
Register_Object vopen
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Use bpencmvs.dg
    use sl012.sl
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use cSyDateForm.Pkg
    Use Form.Sub
    Use Button.Sub
    Use Chkbox.Sub

    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
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

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vopen FOR vopen

    Object vopen is a dbViewSub

        //AB-StoreTopStart

        Property Date       pdApo               Public ''
        Property Date       pdEos               Public ''
        property string     psrecr              Public ''
        Property String     psAitiolToCopy      Public ''
        Property string     psgmoveaitiol       public ''
        Property String     psPreviousCurr      Public ''
        Property String     psBranch            Public ''
        Property String     psCounter           Public ''
        Property String     psInitial           Public ''
        Property String     psPrevious          Public ''
        Property String     psInitRecr          Public ''
        Property String     psXrPi              Public ''
        Property String     psGarticlRecr       Public ''
        Property String     psGmoveRecr         Public ''
        Property String     psbranchcode        Public ''
        Property String     psgplancode         Public ''
        Property String     psaitiol            Public ''
        Property Integer    piSfalma            Public  0
        Property Integer    piProtypoArthro     Public  0
        Property Integer    piCounter           Public  0
        Property Integer    piExitIsOk          Public  0
        Property integer    piBhmaedit          Public  0
        Property Integer    piCnt               Public  0
        Property integer    piBhma              Public  0
        Property Number     pnPoso              Public  0
        Property Integer    piFirstGplanRecnum  Public  0
        Property number     pnxreosh            Public  0
        Property number     pnpistosh           Public  0
        property integer    piTxtID             public  0
        Property Integer    piVgaleLastParath   Public  0


        //AB-StoreTopEnd

        Set Label to "Ä§òõ®¶£†°Ê ò§¶†ö£ò-°¢úÂ©†£¶ ßò®ò©´ò´†°È§"
        Set Size to 157 352
        Set Location to 6 7
        Set Color to 10928895

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD

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

        Object Nomisma_DD is a Nomisma_DataDictionary
        End_Object    // Nomisma_DD

        Object Particle_DD is a Particle_DataDictionary
            Set DDO_Server to (Clients_DD(self))
            Set DDO_Server to (Ptyppar_DD(self))
            Set DDO_Server to (Nomisma_DD(self))
        End_Object    // Particle_DD

        Object Wapokat_DD is a Wapokat_DataDictionary
        End_Object    // Wapokat_DD

        Object Wapomast_DD is a Wapomast_DataDictionary
            Set DDO_Server to (Wapokat_DD(self))
        End_Object    // Wapomast_DD

        Object Wax_DD is a Wax_DataDictionary
            Set DDO_Server to (Wapomast_DD(self))
        End_Object    // Wax_DD

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))
        End_Object    // Item_DD

        Object Witemx_DD is a Witemx_DataDictionary
            Set DDO_Server to (Item_DD(self))
        End_Object    // Witemx_DD

        Object Pmoves_DD is a Pmoves_DataDictionary
            Set DDO_Server to (Wax_DD(self))
            Set DDO_Server to (Witemx_DD(self))
            Set DDO_Server to (Particle_DD(self))
            Set Constrain_File to Particle.File_Number
        End_Object    // Pmoves_DD

        Set Main_DD to (Particle_DD(self))
        Set Server to (Particle_DD(self))

        //AB-DDOEnd

        Object frmApo is a cSyDateForm
            Set Label to "ÄßÊ Ü£/§Âò"
            Set Size to 13 66
            Set Location to 18 74
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmApo

        Object frmEos is a cSyDateForm
            Set Label to "ÑÈ™ Ü£/§Âò"
            Set Size to 13 66
            Set Location to 18 214
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmEos

        Object gtypkin_code is a Form
            Set Label to "èò®ò©´ò´†°Ê"
            Set Size to 14 67
            Set Location to 46 73
            Set Label_Col_Offset to 5
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (sl012(Current_object))
            procedure onchange
                  string scode
                  get value item 0 to scode
                  clear ptyppar
                  move syscurxr.company_code to ptyppar.company_code
                  move syscurxr.branch_code to ptyppar.branch_code
                  move scode                 to ptyppar.ptyppar_code
                  find eq ptyppar by index.1
                  if (found=1);
                    set value of gtypkin_descr to ptyppar.ptyppar_descr
            end_procedure


            //AB-StoreEnd

        End_Object    // gtypkin_code

        Object Gtypkin_descr is a FormSub
            Set Size to 13 129
            Set Location to 47 152
            Set Color to 10928895
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // Gtypkin_descr

        Object btnStart is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 158
            Set Location to 124 94
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure OnClick
                String  sRecr  spar
                Date    dApo1 dEos1 dHmnia1
                Integer iHmgio iErrorObjID iSfalma iFileExists iopen iclose
                Integer isClosed isFinal iRec  iUseAL Igtypkin ierr
                Number  nXre nPis
                Get Value Of Gtypkin_code Item 0 to spar
                Get Value Of frmApo Item 0 to dApo1
                Get Value Of frmEos Item 0 to dEos1
                If ((dApo1='') Or (dEos1='') Or (dApo1>dEos1)) Begin
                    Send Stop_Box 'äò§üò©£‚§ú™ Ü£ú®¶£û§Âú™' 'ë≠·¢£ò 1001'
                    Procedure_Return
                End
                Get Checked_State Of fopen to iopen
                Get Checked_State Of fclose to iclose

                Set Button_State    of (Wait(Self)) to False
                Set BarVisibleState of (Wait(Self)) to '' False
                Send Popup                          to (Wait(Self))

                Clear particle
                Move dApo1                   to particle.partl_Hmnia
                Find Gt Particle By Index.3
                While ((Found=1) And (particle.partl_Hmnia<=dEos1))
                    move particle.partl_recr to srecr
                    Send UpdateWait to (Wait(Self))  ('Ñßú•ú®öò©Âò èò®ò©´ò´†°È§  '+(String(particle.Recnum))+' - '+String(particle.partl_Hmnia))
                    if (spar<>'') begin
                        if ((iopen=1) and (particle.partl_ekleise='1')) goto Synexeia_Edo97
                        if ((iclose=1) and (particle.partl_ekleise='')) goto Synexeia_Edo97
                            if (particle.ptyppar_code<>spar) goto  Synexeia_Edo97
                            Set piTxtID         Of (bpEnCmvs(Self)) to (piTxtID(Self))
                      //      Set psTxt           Of (bpEnCmvs(Self)) to (psTxt(Self))
                            Set pifromtim       Of (bpEnCmvs(Self)) to 1
                            Set psParticleRecr  Of (bpEnCmvs(Self)) to srecr
                            Set piParticleID    Of (bpEnCmvs(Self)) to (vopen(Self))
                            Set psModule        Of (bpEnCmvs(Self)) to particle.partl_module
                            Send DoProcess                          to (bpEnCmvs(Self))
                            Get piLathos        Of (bpEnCmvs(Self)) to iErr
                            If (iErr) error 8008 '__ù_Í___ _Í_ˇ_†_____ ______ö_. _Í_____ _______ˇ_†_ !'
                            Set pifromtim       Of (bpEnCmvs(Self)) to 0

                    end
                    else begin
                            if ((iopen=1) and (particle.partl_ekleise='1')) goto Synexeia_Edo97
                            if ((iclose=1) and (particle.partl_ekleise='')) goto Synexeia_Edo97

                            Set piTxtID         Of (bpEnCmvs(Self)) to (piTxtID(Self))
                         //   Set psTxt           Of (bpEnCmvs(Self)) to (psTxt(Self))
                            Set pifromtim       Of (bpEnCmvs(Self)) to 1
                            Set psParticleRecr  Of (bpEnCmvs(Self)) to srecr
                            Set piParticleID    Of (bpEnCmvs(Self)) to (vopen(Self))
                            Set psModule        Of (bpEnCmvs(Self)) to particle.partl_module
                            Send DoProcess                          to (bpEnCmvs(Self))
                            Get piLathos        Of (bpEnCmvs(Self)) to iErr
                            If (iErr) error 8008 '__ù_Í___ _Í_ˇ_†_____ ______ö_. _Í_____ _______ˇ_†_ !'
                            Set pifromtim       Of (bpEnCmvs(Self)) to 0
                            //showln particle.recnum


                    end


                    Synexeia_Edo97:
                    Find Gt particle By Index.3
                Loop

                If (Wait(Self)<>0) Send Deactivate to (Wait(Self))

                Send Info_Box 'Ü õ†òõ†°ò©Âò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
            End_Procedure // OnClick

















            //AB-StoreEnd

        End_Object    // btnStart

        Object fopen is a CheckBoxSub
            Set Label to "â¢úÂ©ú ´ò ò§¶†Æ´· "
            Set Size to 10 79
            Set Location to 79 34
        End_Object    // fopen

        Object fclose is a CheckBoxSub
            Set Label to "Ä§¶†•ú ´ò °¢ú†©´·"
            Set Size to 12 75
            Set Location to 92 34
        End_Object    // fclose


        //AB-StoreStart


        //AB-StoreEnd

    End_Object    // vopen


    //AB-StoreStart



    //AB-StoreEnd

//AB/     End_Object    // prj
