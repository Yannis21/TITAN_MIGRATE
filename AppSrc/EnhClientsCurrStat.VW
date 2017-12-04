//AB/ Project EnhClientsCurrStat
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhClientsCurrStat"
//AB/         Set ProjectFileName to "EnhClientsCurrStat.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhClientsCurrStat is a dbViewSubs
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//       TextBoxSub7 is a TextBoxSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub11 is a TextBoxSub
//     HmniaLastXRPI is a cSyDateForm
//     HmniaClientHmnia is a cSyDateForm
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhClientsCurrStat
Register_Object HmniaClientHmnia
Register_Object HmniaLastXRPI
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object TextBoxSub1
Register_Object TextBoxSub11
Register_Object TextBoxSub2
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Open tmpMyf
    Open Clients
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use Txtbox.Sub
    Use Rgroup.Sub
    Use Radio.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnhClientsCurrStat FOR ;
    ;
    Object EnhClientsCurrStat is a dbViewSubs

        //AB-StoreTopStart
                                
        Property Integer piWhat Public 0
        
        
        //AB-StoreTopEnd

        Set Label to "„¤£â¨à© †€Š/†‘ ‚œ­¬¨œª SAP š ˜ æ¢¦¬ª «¦¬ª œ¢á«œª"
        Set Size to 166 425
        Set Location to 8 13
        Set Color to 11454975

        //AB-DDOStart


        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "†£/¤å˜ €¤¦åš£˜«¦ª œ¢á«  >="
            Set Color to 11454975
            Set Location to 81 209
            Set Size to 21 105
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "†£/¤å˜ ’œ¢œ¬«˜å˜ª •¨âà©ª ã å©«à©ª >="
            Set Color to 11454975
            Set Location to 81 21
            Set Size to 21 85
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object RadioGroupSub1 is a RadioGroupSub
            Set Size to 62 389
            Set Location to 1 16
            Set Color to 11454975
            Object Radio1 is a RadioSub
                Set Label to "”ç¢˜¥ «¨â®¦¬©˜ª ¡˜«á©«˜©ª œ¢˜«é¤ (¨¦ «¦¬ 1¦¬ ‹˜ ¡¦ç Export šœ­¬¨é¤ SAP)"
                Set Size to 10 323
                Set Location to 12 35
                Set Color to 11454975
                Set TextColor to clWhite
                Set Auto_Size_State to FALSE
            End_Object    // Radio1

            Object Radio2 is a RadioSub
                Set Label to "‹›œ¤ ©£æª §œ›åà¤ Status ¡˜  SAP_Hmnia ©«¦ Clients"
                Set Size to 10 310
                Set Location to 26 35
                Set Color to 11454975
                Set Auto_Size_State to FALSE
            End_Object    // Radio2

            Object TextBoxSub7 is a TextBoxSub
                Set Label to "1."
                Set Color to 11454975
                Set FontSize to 16 0
                Set Location to 10 13
                Set Size to 9 10
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub7

            Object TextBoxSub8 is a TextBoxSub
                Set Label to "2."
                Set Color to 11454975
                Set FontSize to 16 0
                Set Location to 25 13
                Set Size to 9 7
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub8

            Object TextBoxSub9 is a TextBoxSub
                Set Label to "3."
                Set Color to 11454975
                Set FontSize to 16 0
                Set Location to 41 13
                Set Size to 9 7
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub9

            Object TextBoxSub11 is a TextBoxSub
                Set Label to "’¨â®¦¬£œ ‚â­¬¨œª SAP"
                Set Auto_Size_State to FALSE
                Set Color to 5869567
                Set Location to 40 36
                Set Size to 13 261
                Set FontWeight to 600
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub11


            //AB-StoreStart
                                                        
            Procedure Notify_Select_State integer iToItem integer iFromItem
                Set piWhat to iToItem
            End_Procedure
            
            // If you set Current_radio you must set this after the
            // radio objects have been created AND after Notify_select_State has been
            // created. i.e. Set in bottom-code at end!!
            //Set Current_Radio to 0
            
            
            //AB-StoreEnd

        End_Object    // RadioGroupSub1

        Object HmniaLastXRPI is a cSyDateForm
            Set Size to 13 66
            Set Location to 84 111
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // HmniaLastXRPI

        Object HmniaClientHmnia is a cSyDateForm
            Set Size to 13 66
            Set Location to 84 317
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // HmniaClientHmnia

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "„§œ¥œ¨š˜©å˜"
            Set Size to 14 376
            Set Location to 121 22
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to '„¤£â¨à©'
            
            Procedure OnClick
                String  sLabel sMess
                date ddate dHmniaXrPi dHmniaClientHmnia
                integer isap iyear iWhat iYES
            
                Get Label to sLabel
            
                Get Value Of HmniaLastXRPI      Item 0 to dHmniaXrPi
                Get Value Of HmniaClientHmnia   Item 0 to dHmniaClientHmnia
            
                Get piWhat to iWhat
                If (iWhat=0) Begin
                    Get YesNO_Box "‡â¢œ«œ ¤˜ ­¬¢á¥œ«œ æ¢œª « ª £œ¨¦£¤åœª SAP «à¤ œ¢˜«é¤ ?" to iYES
                    If (iYES=MBR_NO) Procedure_Return
                    Get YesNO_Box "ƒ„Œ §¨â§œ  ¤˜ â®œ«œ ã› «¨â¥œ  « ª ‚â­¬¨œª\nš ˜ æ¢¦¬ª «¦¬ª œ¢á«œª ˜¢¢ éª Ÿ˜ ®á©œ«œ «˜ status\n¨â§œ  ¤˜ œå©˜©«œ ˆŒ «¤ 1 œ¥˜šàšã. Œ€ ‘“Œ„•ˆ‘— ?" to iYES
                    If (iYES=MBR_NO) Procedure_Return
                End
                Else If (iWhat=1) Begin
                    Get YesNO_Box "‡â¢œ«œ ¤˜ ¡˜Ÿ˜¨å©œ«œ « ª £œ¨¦£¤åœª SAP «à¤ œ¢˜«é¤ ?" to iYES
                    If (iYES=MBR_NO) Procedure_Return
                    Get YesNO_Box "¨â§œ  ¤˜ â®œ  ã› «¨â¥œ  «¤ › ˜› ¡˜©å˜ ­ç¢˜¥ª ©«¦ §¨¦š¦ç£œ¤¦ ™ã£˜\nŒ€ ‘“Œ„•ˆ‘— ?" to iYES
                    If (iYES=MBR_NO) Procedure_Return
                End
            //    Else If (iWhat=2) Begin
            //        Get YesNO_Box "‡â¢œ«œ ¤˜ œ§˜¤˜­â¨œ«œ æ¢œª « ª £œ¨¦£¤åœª SAP «à¤ œ¢˜«é¤ ?" to iYES
            //        If (iYES=MBR_NO) Procedure_Return
            //        Get YesNO_Box "¨â§œ  ¤˜ â®œ  ã› «¨â¥œ   › ˜› ¡˜©å˜ œ¤£â¨à©ª †€Š †‘\nš ˜ æ¢¦¬ª «¦¬ª œ¢á«œª ¡˜  ¤˜ â®œ  ™šœ  «¦ SAP ˜¢¢ éª Ÿ˜ ®á©œ«œ «˜ status\nŒ€ ‘“Œ„•ˆ‘— ?" to iYES
            //        If (iYES=MBR_NO) Procedure_Return
            //    End
            
            
                If (iWhat=0) Begin    // FYLAJH STOIXEION
            
                    Direct_Output Channel 8 "C:\DNS_TMP\#CLIENTS_SAP_SETTINGS.TXT"
            
                    Clear tmpMyf
                    Find GT tmpMyf By Index.5
                    While (Found)
                        Set Label to ("Deleting od temp records..... "+String(tmpMyf.Recnum))
                        Delete tmpMyf
                        Find GT tmpMyf By Index.5
                    Loop
            
            
                    Clear clients
                    Find Gt Clients.recnum
                    While (Found)
                       Set Label to clients.client_id
                       move 0 to isap
            
                        Write    Channel 8 (Trim(Clients.Client_ID))
                        Write    Channel 8 ","
                        Write    Channel 8 (Trim(Clients.Client_Name))
                        Write    Channel 8 ","
                        Write    Channel 8 (Trim(ToANSI(Clients.Client_Name)))
                        Write    Channel 8 ","
                        Write    Channel 8 (Trim(Clients.Status))
                        Write    Channel 8 ","
                        Write    Channel 8 (Trim(Clients.Sap_Hmnia))
                        Writeln  Channel 8
            
                       if (clients.client_id='') goto next_read
            
                       If ((dHmniaXrPi<>"") And (Clients.Last_Xreosh<>"") And ;
                            (Clients.Last_Xreosh<dHmniaXrPi)) goto next_read
            
                       If ((dHmniaXrPi<>"") And (Clients.Last_Pistosh<>"") And ;
                            (Clients.Last_Pistosh<dHmniaXrPi)) goto next_read
            
                       If ((dHmniaClientHmnia<>"") And (clients.client_hmnia<>"") And ;
                            (Clients.client_hmnia<dHmniaClientHmnia)) goto next_read321
            
                       Clear tmpMYF
                       Move Clients.Client_ID   to tmpMyf.Client_ID
                       Move Clients.Client_Name to tmpMyf.Client_Name
                       Move Clients.Recnum      to tmpMyf.AFM
                       //String sID
                       //Move (Right(Clients.Client_ID,7))    to sID
                       //Move (Replaces(".",sID,""))          to sID
                       //Move (Trim(sID))                     to tmpMyf.AFM
            
                       Move Clients.Status      to tmpMyf.TK
                       Move Clients.Sap_Hmnia   to tmpMyf.Branch_Code
            
                       Saverecord tmpMyf
            
                       next_read321:
                       Find Gt clients.recnum
                    Loop
            
                    Close_Output Channel 8
            
                End // If (iWhat=0) Begin   // FYLAJH STOIXEION
            
                Else If (iWhat=1) Begin     // KATHARISMOS Pedion Clients
                    Clear clients
                    Find GE Clients.recnum
                    While (Found)
                       Set Label to clients.client_id
                       move 0 to isap
            
            
                       if (clients.client_id='') goto next_read322
            
            
                       If ((dHmniaXrPi<>"") And (Clients.Last_Xreosh<>"") And ;
                            (Clients.Last_Xreosh<dHmniaXrPi)) goto next_read
            
            
                       If ((dHmniaXrPi<>"") And (Clients.Last_Pistosh<>"") And ;
                            (Clients.Last_Pistosh<dHmniaXrPi)) goto next_read
            
            
                       If ((dHmniaClientHmnia<>"") And (clients.client_hmnia<>"") And ;
                            (Clients.client_hmnia<dHmniaClientHmnia)) goto next_read321
            
            
            
                       Reread Clients
            
            
            //-----------------
            //----------------
            // SOS PROSOXH 29/03/2016
            // Prepei na doume an vazoume "" h 1 h 2 h 3 sto status
                       Move "1"             to Clients.Status  // 0=New, 1=Changed
                       Move '01/01/1753'    to Clients.SAP_Hmnia //dNullHmnia
                       //Move ""              to Clients.Sap_Hmnia
            //-----------------
            //-----------------
            
                       Saverecord Clients
                       Unlock
            
                       next_read322:
                       Find Gt Clients.recnum
                    Loop
                End
            //    Else If (iWhat=2) Begin     // EPANAFORA STOIXEION
            
            //        Clear tmpMyf
            //        Find GE tmpMyf.Recnum
            //        While (Found)
            //            Set Label to tmpMyf.client_id
            
            //            Clear clients
            //            Move (Trim(tmpMyf.Client_ID)) to Clients.Client_ID
            //            Find Eq Clients By Index.6
            //            If (Found) Begin
            //                Reread Clients
            //                Move tmpMyf.TK           to   Clients.Status
            //                Move tmpMyf.Branch_Code  to   Clients.Sap_Hmnia
            //                Saverecord Clients
            //                Unlock
            //            End
            
            //           Find Gt tmpMyf.recnum
            //        Loop
            //    End // If (iWhat=1) Begin    // EPANAFORA STOIXEION
            
                Set Label to sLabel
                Open tmpMyf DF_SHARE
            
                Send Info_Box '† œ¤£â¨à© «œ¢œåà©œ œ§ «¬®éª' '¢¨¦­¦¨å˜'
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                                
                                
                                
                                
                                
        //AB-StoreEnd

    CD_End_Object    // EnhClientsCurrStat


    //AB-StoreStart
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
