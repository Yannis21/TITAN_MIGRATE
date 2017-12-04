//AB/ Project enhsap
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "enhsap"
//AB/         Set ProjectFileName to "enhsap.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   enhsap is a dbViewSubS
//     frmPelaths is a FormSub
//     CheckBoxSub1 is a CheckBoxSub
//     CheckBoxSub3 is a CheckBoxSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     CheckBoxSub4 is a CheckBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object CheckBoxSub1
Register_Object CheckBoxSub3
Register_Object CheckBoxSub4
Register_Object enhsap
Register_Object frmPelaths
Register_Object TextBoxSub1


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                
                
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Form.Sub
    Use Chkbox.Sub
    Use Button.Sub
    Use Txtbox.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_enhsap FOR ;
    ;
    Object enhsap is a dbViewSubS

        //AB-StoreTopStart
                                                                                                                
        //AB-StoreTopEnd

        Set Label to "Ñ§û£ú®‡©û °†§„©ú‡§ SAP export"
        Set Size to 89 289
        Set Location to 4 7

        //AB-DDOStart


        //AB-DDOEnd

        Object frmPelaths is a FormSub
            Set Size to 13 85
            Set Location to 9 100
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmPelaths

        Object CheckBoxSub1 is a CheckBoxSub
            Set Label to "Cmoves"
            Set Size to 10 42
            Set Location to 30 10
            Set Checked_State to TRUE
        End_Object    // CheckBoxSub1

        Object CheckBoxSub3 is a CheckBoxSub
            Set Label to "Particle"
            Set Size to 10 40
            Set Location to 30 63
            Set Checked_State to TRUE
        End_Object    // CheckBoxSub3

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 265
            Set Location to 49 10
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£‚®‡©û'
            
            Procedure OnClick
                String  sLabel sPelaths
                Integer iFs iInt iProblem
                Integer i1 i2 i3 i4
                Get Label to sLabel
                date ddate dhmnia
                Get Value Of frmPelaths Item 0 to ddate
                move ddate to dhmnia
                move (ddate+1) to ddate
                Get Checked_State Of CheckBoxSub1 to i1
                Get Checked_State Of CheckBoxSub3 to i3
                Get Checked_State Of CheckBoxSub4 to i4
                Open Cmoves
                Open Particle
                Open Wcmoves
            
                Move 0 to iProblem
            
            
                If (i1) Begin
                    // 1. Cmoves
                    If (Dhmnia<>'') Begin
            
                        Clear Cmoves
                        Lock
                        Move ddate to Cmoves.Cmoves_hmnia
                        Find lt Cmoves By Index.3
                        While ((Found) And (Cmoves.Cmoves_hmnia lt ddate))
            
                            Add 1 to iInt
                            if (cmoves.sap_hmnia > '01/01/1980') goto ncmoves
            
                            move dhmnia to cmoves.sap_hmnia
                            Saverecord Cmoves
                            ncmoves:
                            Set Label to ('Cmoves  '+(String(iInt))+'/'+(String(cmoves.cmoves_hmnia)))
                            Find lt Cmoves By Index.3
                        Loop
                        Unlock
                    end
                End
            
            
            
                If (i3) Begin
                    // 3. Particle
                   If (Dhmnia<>'') Begin
                        Clear particle
                    //    Lock
                        Move ddate to particle.partl_hmnia
                        Find lt particle By Index.3
                        While ((Found) And (particle.partl_hmnia<=ddate))
                            Add 1 to iInt
                            if (particle.sap_hmnia > '01/01/1980') goto npmoves
            
                            move dhmnia to particle.sap_hmnia
                            Saverecord particle
                            npmoves:
                            Set Label to ('Particle '+(String(iInt))+'/'+(String(particle.partl_hmnia)))
                            Find lt particle By Index.3
                        Loop
                    //    Unlock
                   end
                end
            
                If (i4) Begin
                    // 3. Wcmoves
                   If (DDATE<>'') Begin
                        date dmera
                        move '01/01/1753' to dmera
                        Clear Wcmoves
                        Lock
                        Move ddate to wcmoves.wcmove_hmnia
                        Find le wcmoves By Index.3
                        While ((Found) And (wcmoves.wcmove_hmnia<=ddate))
                           // Add 1 to iInt
                            if (wcmoves.wcmove_hmnia>'01/09/2004') begin
                                Set Label to ('Wcmoves '+(String(wcmoves.recnum))+'/'+(String(wcmoves.wcmove_hmnia)))
                                move dmera to wcmoves.sap_hmnia
                                Saverecord wcmoves
                            end
                            Find lt wcmoves By Index.3
                        Loop
                        Unlock
                   end
                end
            
            
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "â¢úÂ©†£¶ úöö®ò≠È§ ÑÈ™"
            Set Location to 9 5
            Set Size to 10 87
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object CheckBoxSub4 is a CheckBoxSub
            Set Label to "Wcmoves"
            Set Size to 10 49
            Set Location to 30 111
            Set Checked_State to TRUE
        End_Object    // CheckBoxSub4


        //AB-StoreStart
                                                                                                                
        //AB-StoreEnd

    CD_End_Object    // enhsap


    //AB-StoreStart
                
                
    //AB-StoreEnd

//AB/     End_Object    // prj
