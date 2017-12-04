//AB/ Project CompareTP
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "CompareTP"
//AB/         Set ProjectFileName to "CompareTP.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   CompareTP is a dbViewSub
//     btn1 is a ButtonSub
//     Txt1 is a TextBoxSub
//     btn2 is a ButtonSub
//     chkEnerga is a CheckBoxSub
//     Txt1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     frmYearFrom is a SpinFormSub
//     Rpt1_Report is a CrystalReportSubSQL

// Register all objects
Register_Object btn1
Register_Object btn2
Register_Object CompareTP
Register_Object chkEnerga
Register_Object frmYearFrom
Register_Object Rpt1_Report
Register_Object TextBoxSub2
Register_Object Txt1


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub
    Use Txtbox.Sub
    Use Chkbox.Sub
    Use Spnfrm.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_CompareTP FOR ;
    ;
    Object CompareTP is a dbViewSub

        //AB-StoreTopStart
        
        
        //AB-StoreTopEnd

        Set Label to "„¡«ç§à©ž „¢âš®¦¬ Œâà¤ î¨à¤ ¢ž¨à£ãª"
        Set Size to 142 336
        Set Location to 9 13

        //AB-DDOStart


        //AB-DDOEnd

        Object btn1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "„§œ¥œ¨š˜©å˜"
            Set Bitmap to "Print17.bmp"
            Set Size to 30 35
            Set Location to 84 124
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set tooltipvalue to "„¡«ç§à©ž î¨à¤ ¢ž¨à£ãª œ¢˜«é¤ ¡˜  ƒ„Ž £œ œ§œ¥œ¨š˜©å˜ "
            
            Procedure OnClick
                String  sLabel sMess sClientOldTP sCNOldTP
                Date    dLast dFrom  dHM
                Integer iFS iCount isChecked iY
            
                Get Value Of frmYearFrom Item 0 to iY
            
                Set Enabled_State to False
                Get Label to sLabel
            
                Get Checked_State Of chkEnerga to isChecked
            
                File_Size Clients to iFS
                Move "31/12/2150" to dLast
            
                Sysdate dFrom
                Subtract 31 from dFrom
            
                Zerofile Tmplg
            
                Clear Clients
                Find GE Clients.Recnum
                While (Found)
                    Add 1 to iCount
                    If (Mod(iCount,5)=0) Begin
                        Move ("„§œ¥œ¨šá¦£˜  œšš¨˜­ã  -->  "+String(iCount)+" / "+String(iFS)) to sMess
                        Set Label of Txt1 to (Trim(sMess))
                    End
            
                    Clear CN
                    Move Clients.Client_ID  to CN.Client_ID
                    Find GE CN By Index.4
                    While ((Found) And (Clients.Client_ID=CN.Client_ID))
            
                        Clear BtnOrdH
                        Move Clients.Client_ID  to BtnOrdH.Client_ID
                        Move CN.CN_Code         to BtnOrdH.CN_Code
                        Move dLast              to BtnOrdH.Deop_Lhxh
                        Move "—————————————"    to BtnOrdH.AA_Deop
                        Move "—————————————"    to BtnOrdH.Recr
                        Find LE BtnOrdH By Index.6
                        If ((Found) And (CN.Client_ID=BtnOrdH.Client_ID) And (CN.CN_Code=BtnOrdH.CN_Code)) Begin
            
                            If ( (isChecked=0) Or ((isChecked=1) And (BtnOrdH.Deop_Active=0) And (BtnOrdH.Deop_Lhxh>=dFrom)  And (BtnOrdH.VYear>=iY)) ) Begin
            
                                Clear Tmplg
            
                                Move (Trim(Clients.Client_ID))                          to Tmplg.Gmove_Aitiol
                                Move (Trim(Clients.Client_Name))                        to Tmplg.Baxio_Code_In
                                Move (Trim(Clients.Polh_Recr))                          to Tmplg.Gplan_Recr
                                Move (String(Clients.HPAL)+"/"+String(Clients.HPSO))    to sClientOldTP
            
                                Clear TPClient
                                Move Clients.Client_ID  to TPClient.Client_ID
                                Move 1                  to TPClient.Baxiokat_Code
                                Find GE TPClient By Index.1
                                If ((Found) And (Clients.Client_ID=TPClient.Client_ID) And (TPClient.Baxiokat_Code=1)) Begin
                                    Move (String(TPClient.Xarhtos_Meres)+"/"+String(TPClient.Plhroteo_Meres)) to sClientOldTP
                                End
            
                                Move sClientOldTP                                   to Tmplg.Gmove_A_Code
                                Move ""                                             to sCNOldTP
            
                                Move (Trim(CN.CN_Code))                             to Tmplg.Baxio_Code_Out
                                Move (Trim(CN.CN_Address))                          to Tmplg.String4
            
                                Clear TPErga
                                Move CN.CN_Code to TPErga.CN_Code
                                Move 1          to TPErga.Baxiokat_Code
                                Find GE TPErga By Index.1
                                If ((Found) And (CN.CN_Code=TPErga.CN_Code) And (TPErga.Baxiokat_Code=1)) Begin
                                    Move (String(TPErga.Xarhtos_Meres)+"/"+String(TPErga.Plhroteo_Meres)) to sCNOldTP
                                End
                                Move sCNOldTP                                       to Tmplg.Gmove_KK
            
                                Move BtnOrdH.AA_Deop                                to Tmplg.Gplan_Code
                                Move (Trim(BtnOrdH.TimeOut))                        to Tmplg.Gmove_SC_Code2
                                Move BtnOrdH.Deop_Date                              to Tmplg.Garticl_Hmnia
                                Move BtnOrdH.Deop_Lhxh                              to Tmplg.Gmove_Dlixis
            
                                Saverecord Tmplg
                            End // If ( (isChecked=0) Or ((isChecked=1) && (BtnOrdH.Deop_Active=0) && (BtnOrdH.Deop_Lhxh>=dFrom)) )
                        End // If ((Found) And (CN.Client_ID=BtnOrdH.Client_ID) And (CN.CN_Code=BtnOrdH.CN_Code))
                        Find GT CN By Index.4
                    Loop
                    Find GT Clients.Recnum
                Loop
            
                File_Size Tmplg to iFS
                Set Enabled_State Of Btn2 to (iFS>0)
            
                Set Label of Txt1 to ""
                Set Label to sLabel
                Set Enabled_State to True
            
                Send RunRpt1Report to (Rpt1_Report(Self))
            
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btn1

        Object Txt1 is a TextBoxSub
            Set Auto_Size_State to FALSE
            Set TextColor to clPurple
            Set Location to 11 3
            Set Size to 14 279
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // Txt1

        Object btn2 is a ButtonSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Set Label to "„§œ¥œ¨š˜©å˜"
            Set Bitmap to "Printer1.bmp"
            Set Size to 30 35
            Set Location to 84 172
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                        
            Set tooltipvalue to "„¡«ç§à©ž î¨à¤ ¢ž¨à£ãª œ¢˜«é¤ ¡˜  ƒ„Ž ®à¨åª œ§œ¥œ¨š˜©å˜ "
            
            Procedure OnClick
                Integer iFS
                File_Size Tmplg to iFS
                If (iFS>0) Send RunRpt1Report to (Rpt1_Report(Self))
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btn2

        Object chkEnerga is a CheckBoxSub
            Set Size to 13 9
            Set Location to 46 43
            Set Checked_State to TRUE
            Set Focus_Mode to Pointer_Only
        End_Object    // chkEnerga

        Object Txt1 is a TextBoxSub
            Set Label to "‹æ¤¦ «˜ «œ¢œ¬«˜å˜ œ¤œ¨šá ƒ„Ž ˜¤˜ §œ¢á«ž ¡˜  £œ ž£œ¨¦£ž¤å˜ ¢ã¥žª £œ«˜šœ¤â©«œ¨ž «¦¬ §¨¦žš¦ç£œ¤¦¬ £ã¤˜ ¡˜  £§¨¦ª"
            Set Auto_Size_State to FALSE
            Set Location to 36 65
            Set Size to 17 217
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // Txt1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "¡˜  £œ â«¦ª ›ž£ ¦¬¨šå˜ª >= «¦¬ "
            Set Auto_Size_State to FALSE
            Set Location to 58 65
            Set Size to 10 108
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object frmYearFrom is a SpinFormSub
            Set Size to 13 52
            Set Location to 56 175
            Set Maximum_Position to 2150
            Set Minimum_Position to 2000
        End_Object    // frmYearFrom


        //AB-StoreStart
        
        Object Rpt1_Report is a CrystalReportSubSQL
            Property Integer ReportReady Public False
        
            Procedure RunRpt1Report
                Send Cursor_Wait To (Cursor_Control(Self))
                Set Output_Destination  To PRINT_TO_WINDOW
                Send Run_report
                Send Cursor_Ready To (Cursor_Control(Self))
                If (ReportReady(Self)) Send Info_box "† œ¡«ç§à©ž œå¤˜  â«¦ £ž" "¢ž¨¦­¦¨å˜"
            End_procedure // RunRpt1Report
        
        
            Set Report_Name to "rCompareTP.rpt"
            Set Report_View_id To (Parent(Self))
        
            set WindowStyle to (WS_VISIBLE ior WS_THICKFRAME ior ;
                                WS_SYSMENU ior WS_MAXIMIZEBOX ior ;
                                WS_MINIMIZEBOX ior WS_MAXIMIZE)
        
             Procedure OnStartPrinting
                String  FileName
                Integer FileType Destination
        
                If Destination EQ WQL_PRINT_TO_WINDOW   Set ReportReady To False
                Else                                    Set ReportReady To True
        
             End_procedure // OnStartPrinting
        
             Procedure OnStopPrinting
                  Set ZoomPreviewWindow to PE_ZOOM_FULL_SIZE
             End_procedure // OnStopPrinting
        
        End_Object // Rpt1_Report
        
        
        Procedure Activate_View Returns Integer
            Integer rVal iFS iY
            Forward Get Msg_Activate_View to rVal
            Move SyscurXr.Year_Year to iY
            Subtract 1 from iY
            Set Value Of frmYearFrom Item 0 to iY
            Open Tmplg Mode DF_EXCLUSIVE
            File_Size Tmplg to iFS
            Set Enabled_State Of Btn2 to (iFS>0)
            Procedure_Return rVal
        End_Procedure
        
        Procedure Request_Cancel
            Close Tmplg
            Open Tmplg Mode DF_SHARE
            Forward Send Request_Cancel
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    CD_End_Object    // CompareTP

//AB/     End_Object    // prj
