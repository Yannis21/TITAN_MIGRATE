//AB/ Project enhcnzones:particle + pmovesme zones
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "enhcnzones:particle + pmovesme zones"
//AB/         Set ProjectFileName to "enhcnzones.VW"

// Project Object Structure
//   enhcnzones is a dbViewSubS
//     ButtonSub1 is a ButtonSub
//     FCP_ProgressBar1 is a FCP_ProgressBar
//     Frmapo is a FormSub
//     frmeos is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     F_CODE_APO is a FormSub
//     FormSub1 is a FormSub
//     Textbox1 is a Textbox
//     Fergo is a Form
//     Form2 is a Form
//     Textbox2 is a Textbox

// Register all objects
Register_Object ButtonSub1
Register_Object enhcnzones
Register_Object F_CODE_APO
Register_Object FCP_ProgressBar1
Register_Object Fergo
Register_Object Form2
Register_Object FormSub1
Register_Object Frmapo
Register_Object frmeos
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object Textbox1
Register_Object Textbox2


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open particle
    Open pmoves
    Open Cnzones
    Use Fcp.pkg
    Use FCP_ProgressBar
    Use Keimeno.dg
    open branch
    use sl041.sl
    open gmove
    Open sysrecg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub
    Use FCP_ProgressBar.PKG
    Use Form.Sub
    Use Txtbox.Sub
    Use DFAllEnt.pkg

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_enhcnzones FOR enhcnzones

    Object enhcnzones is a dbViewSubS

        //AB-StoreTopStart
        property string psClientID public ''
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û â†§„©ú‡§ èò®ò©´ò´†°È§ £ú ÖÈ§ú™"
        Set Size to 126 425
        Set Location to 5 7

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 181
            Set Location to 88 115
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Set Label to 'Ñ§û£‚®‡©û'

            Procedure OnClick
                Integer iCount iFS isFound iNotFound iFileExists ihour imin  ilen
                String  sLabel sErgo sRecr sbrrecr szone sclient scn suser stext  shmer  smin
                date dfrom dto ddate
                Get Label to sLabel

                move 0 to ifs
                sysdate4 ddate ihour imin
                move ddate to shmer
                Get fsLoginUserID to sUser
                Set piMinimum   Of FCP_ProgressBar1 to 1

                Set piAdvanceBy Of FCP_ProgressBar1 to 1
                get value of f_code_apo to sclient
                get value of fergo      to sergo
                Get Get_File_Exists 'C:\Sfalmata.txt' To iFileExists
                If (iFileExists) EraseFile 'C:\Sfalmata.txt'
                get value of frmapo item 0 to dfrom
                get value of frmeos item 0 to dto
                if ((dfrom='') or (dto='')) begin
                    send info_box 'Ü£/§Âú™ Äßò®òÂ´û´ò ©¨£ß¢û®‡£‚§ú™' 'è¢û®¶≠¶®Âò'
                    procedure_return
                End
                if ((dfrom=>syscurxr.year_xrhshfrom) and (dto<=syscurxr.year_xrhshto)) begin
                end
                else begin
                    send info_box 'Ü£/§Âú™ Ñ°´Ê™ ¶®Â‡§ Æ®„©û™' 'è¢û®¶≠¶®Âò'
                    procedure_return
                End
                if ((sergo='') or (sclient='')) begin
                    send info_box 'èú¢·´û™ °ò† Ñ®ö¶ Äßò®òÂ´û´ò !!' 'è¢û®¶≠¶®Âò'
                    procedure_return
                End

                Clear particle
                move syscurxr.company_code to particle.company_code
                move syscurxr.branch_code  to particle.branch_code
                move syscurxr.year_year    to particle.year_year
                move sclient               to particle.client_id
                move dfrom                 to particle.partl_hmnia

                find gt particle by index.13
                While ((Found) and (particle.company_code=syscurxr.company_code) and;
                                   (particle.branch_code=syscurxr.branch_code)   and;
                                   (particle.year_year=syscurxr.year_year)       and;
                                   (particle.client_id=sclient)                  and;
                                   (particle.partl_hmnia ge dfrom)                and;
                                   (particle.partl_hmnia le dto))
                        if ((particle.ptyppar_code='099') and (particle.cn_code=sergo)) add 1 to ifs
                        set label of buttonsub1 to (trim(sergo))
                        find gt particle by index.13
                Loop
                set label of buttonsub1 to slabel
                Set piMaximum   Of FCP_ProgressBar1 to iFS
                clear branch
                move syscurxr.company_code to branch.company_code
                move syscurxr.branch_code  to branch.branch_code
                find eq branch by index.1
                if (not(found)) begin
                    send info_box 'è®Êô¢û£ò £ú ´¶ ìß¶°ò´·©´û£ò' 'è¢û®¶≠¶®Âò'
                    procedure_return
                End

                move branch.branch_recr to sbrrecr
                Move 0 to iNotFound
                begin_transaction
                Clear particle
                move syscurxr.company_code to particle.company_code
                move syscurxr.branch_code  to particle.branch_code
                move syscurxr.year_year    to particle.year_year
                move sclient               to particle.client_id
                move dfrom                 to particle.partl_hmnia
                find gt particle by index.13
                While ((Found) and (particle.company_code=syscurxr.company_code) and;
                                   (particle.branch_code=syscurxr.branch_code)   and;
                                   (particle.year_year=syscurxr.year_year)       and;
                                   (particle.client_id=sclient)                  and;
                                   (particle.partl_hmnia ge dfrom)               and;
                                   (particle.partl_hmnia le dto))

                    if (particle.ptyppar_code<>'099') goto next_cnzones
                    if (particle.cn_code<>sergo)      goto next_cnzones
                    move particle.partl_recr to srecr
                    move particle.cn_code to scn
                    Send DoAdvance Of FCP_ProgressBar1
                    Add 1 to iCOunt
                    Set Label to (String(iCount)+'/'+String(iFS))
                    Move 0  to isFound
                    clear cnzones
                    move '' to szone
                    move scn    to cnzones.cn_code
                    move sbrrecr  to cnzones.branch_recr
                    find eq cnzones by index.3
                    If (found) Begin
                        move cnzones.zone_id to szone
                        move szone to particle.zone_id
                        saverecord particle
                        clear pmoves
                        move srecr to pmoves.partl_recr
                        Find Gt pmoves By Index.3
                        While ((Found) And (Pmoves.partl_recr=srecr))

                            clear gmove
                            reread sysrecg
                            move (sysrecg.gmove_rec0+1) to sysrecg.gmove_rec0
                            saverecord sysrecg
                            unlock

                            move sysrecg.gmove_rec0     to gmove.gmove_rec0
                            Move (Append('',((Trim(SysCurxr.Branch_Site))+;
                                     (Trim(String(Gmove.Gmove_Rec0)))))) to Gmove.Gmove_Recr

                            move syscurxr.company_code  to gmove.company_code
                            move syscurxr.branch_code   to gmove.branch_code
                            move syscurxr.year_year     to gmove.year_year
                            move 65                     to gmove.gtypkin_code//brzones arxeio
                            move suser                  to gmove.gplan_code
                            move ddate                  to gmove.garticl_hmnia
                            move imin to smin
                            move (trim(smin)) to smin
                            Move (Length(smin))    to iLen
                            If (ilen=1)  insert '0' in smin at 1

                            move (string(ihour)+":" +smin) to gmove.gmove_a_code
                            move '' to stext
                            move (Append(('ÄßÊ ÖÈ§û ' + (trim(pmoves.zone)) + ' ëú ' + (trim(szone)) + ' íû§ '+ shmer +' ' + (trim(gmove.gmove_a_code)) + ' User= ' + (trim(sUSER))),Stext)) to stext
                            move (trim(stext)) to gmove.gmove_aitiol
                            move pmoves.pms_recr to gmove.garticl_recr
                            move pmoves.partl_no to gmove.garticl_no
                            move scn             to gmove.gplan_recr
                            saverecord gmove

                            move szone to pmoves.zone
                            saverecord pmoves

                            Find Gt pmoves By Index.3
                        Loop
                    end
                    next_cnzones:
                    Find Gt particle By Index.13
                Loop
            End_transaction
            unLock


                Get Get_File_Exists 'C:\Sfalmata.txt' To iFileExists
                If (iFileExists) Begin
                    send Delete_Data    to (EditSub1(Keimeno(Self)))
                    send read           to (EditSub1(Keimeno(Self))) "C:\Sfalmata.txt"
                    Send popup          to (Keimeno(Self))
                End
                Else Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
                move 0 to ifs
                Set Label to sLabel
            End_Procedure // OnClick






































            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object FCP_ProgressBar1 is a FCP_ProgressBar
            Set Size to 93 18
            Set Location to 7 11

            //AB-StoreStart

            Set piBarColor1 to clAqua
            Set pbPercent   to True
            Set pbSmooth    to true
            Set pbVertical  to True




            //AB-StoreEnd

        End_Object    // FCP_ProgressBar1

        Object Frmapo is a FormSub
            Set Size to 13 59
            Set Location to 10 117
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Frmapo

        Object frmeos is a FormSub
            Set Size to 13 63
            Set Location to 12 224
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmeos

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ü£/§Âò òßÊ"
            Set Location to 11 71
            Set Size to 10 43
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ü£/§Âò úÈ™"
            Set Location to 12 181
            Set Size to 10 42
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object F_CODE_APO is a FormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Size to 13 63
            Set Location to 28 117
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (SL100(Current_object))

            procedure onchange
                string sclient
                get value item 0 to sclient
                set psclientid to sclient
                Move (fsclient(Self,sclient)) to sclient
                set value of (formsub1(self)) to sclient

            end_procedure


            procedure prompt
                Set psModule Of (sl100(Self)) to '01'
                Forward Send Prompt
            end_procedure
















            //AB-StoreEnd

        End_Object    // F_CODE_APO

        Object FormSub1 is a FormSub
            Set Size to 13 155
            Set Location to 28 224
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub1

        Object Textbox1 is a Textbox
            Set Label to "Ñ®ö¶"
            Set Location to 46 73
            Set Size to 10 21
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object Fergo is a Form
            Set Size to 13 63
            Set Location to 45 117
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            Set Prompt_Object to (SL041(Current_object))
            Procedure Prompt
                Set FragmaClient_ID Of (sl041(self)) to (psClientID(Self))
                Forward Send Prompt
                Set FragmaClient_ID Of (sl041(self)) to ''
            end_Procedure

            procedure onchange
                string scode sdescr
                get value item 0 to scode
                move (fscndescr(self,scode)) to sdescr
                set value of form2 to sdescr
            end_procedure




            //AB-StoreEnd

        End_Object    // Fergo

        Object Form2 is a Form
            Set Size to 13 155
            Set Location to 45 224

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // Form2

        Object Textbox2 is a Textbox
            Set Label to "èú¢·´û™"
            Set Location to 28 73
            Set Size to 12 29
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox2


        //AB-StoreStart


        //AB-StoreEnd

    End_Object    // enhcnzones


    //AB-StoreStart






    //AB-StoreEnd

//AB/     End_Object    // prj
