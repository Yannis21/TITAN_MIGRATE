// L:\VDF14.1.Dev\TITAN_MIGRATE\AppSrc\ExportDEOPNew1.vw
// ExportDEOPNew1
//

Use DFClient.pkg
Use DFEntry.pkg

Open MIClient
Open MICN
Open MICONSTR
Open MISalesm
Open MIMHXAN
Open MIPRESP
Open MICodtyp
Open MIcodema
Open MIORDH
Open MIORDD
Open MIAREAS
Open MICities
Open MITOWNS
Open MICOUNTR

Open MINOMOS
Open MIDHMOS
Open MIDRAST

// REMARKS With TOLIS 23/10/2017


Activate_View Activate_ExportDeopNew1 for ExportDEOPNew1
Object ExportDEOPNew1 is a dbView
    Set Location to 4 9
    Set Size to 122 411
    Set Label to "„¥˜šàšã ƒ„"
    Set Border_Style to Border_Thick
    Set Color to 13631219

    Open rptmp

    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get MSG_Activate_View to rVal

        Send IGNORE_ERROR to ERROR_INFO_OBJECT 4358
        Make_Directory "C:\TitanMig"
        Send TRAP_ERROR to ERROR_INFO_OBJECT 4358

        Procedure_Return rVal
    End_Procedure


    Object frmFileName is a Form

        //AB-StoreTopStart
        //AB-StoreTopEnd

        Set Size to 13 187
        Set Location to 33 112
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace item 0 to "MS Sans Serif"
        Set Value item 0 to "C:\TitanMig\SMSMI_DEOP_Header.csv"

        //AB-StoreStart

        Procedure Prompt
            Boolean bSave
            String sFileTitle sFileName
            Get Show_Dialog of (SaveAsDialog1(Self)) to bSave
            If (bSave) Begin
                Get File_Title of (SaveAsDialog1(Self)) to sFileTitle
                Get File_Name  of (SaveAsDialog1(Self)) to sFileName
                Set Value of frmFileName item 0 to sFileName
            End
        End_Procedure

        //AB-StoreEnd

    End_Object    // frmFileName

    Object Button5 is a Button

        //AB-StoreTopStart

        Property String psNotFoundClientDhmos Public ""
        Property String psNotFoundClientNomos Public ""
        Property String psNotFoundClientDrast Public ""
        Property String psNotFoundClientTrPlh Public ""

        Property String psNotFoundErgoDhmos Public ""
        Property String psNotFoundErgoNomos Public ""
        Property String psNotFoundErgoDrast Public ""
        Property String psNotFoundErgoTrPlh Public ""

        Property String psNotFoundPrespDhmos Public ""
        Property String psNotFoundPrespNomos Public ""
        Property String psNotFoundPrespDrast Public ""
        Property String psNotFoundPrespTrPlh Public ""

        Property String psNotFoundMhxanDhmos Public ""
        Property String psNotFoundMhxanNomos Public ""
        Property String psNotFoundMhxanDrast Public ""
        Property String psNotFoundMhxanTrPlh Public ""

        Property String psNotFoundConstrDhmos Public ""
        Property String psNotFoundConstrNomos Public ""
        Property String psNotFoundConstrDrast Public ""
        Property String psNotFoundConstrTrPlh Public ""

        Property String psNotFoundSalesDhmos Public ""
        Property String psNotFoundSalesNomos Public ""
        Property String psNotFoundSalesDrast Public ""
        Property String psNotFoundSalesTrPlh Public ""


        Function fsTropoiPlhromhsPelath String asOurCode Returns String
            String sTheirCode

            If      (asOurCode="K000") Move "G000" to sTheirCode
            Else If (asOurCode="K030") Move "G030" to sTheirCode
            Else If (asOurCode="K060") Move "G060" to sTheirCode
            Else If (asOurCode="K090") Move "G090" to sTheirCode
            Else If (asOurCode="K120") Move "G120" to sTheirCode
            Else If (asOurCode="K150") Move "G150" to sTheirCode
            Else If (asOurCode="K180") Move "G180" to sTheirCode
            Else If (asOurCode="K210") Move "G210" to sTheirCode
            Else If (asOurCode="K240") Move "G240" to sTheirCode
            Else If (asOurCode="K270") Move "G270" to sTheirCode
            Else If (asOurCode="K300") Move "G300" to sTheirCode
            Else If (asOurCode="K330") Move "G330" to sTheirCode
            Else If (asOurCode="K360") Move "G360" to sTheirCode
            Else Begin
                Set psNotFoundClientTrPlh to (Trim("*** (AW+BN) "+asOurCode))
                Move "ZZZZ" to sTheirCode
            End
            Function_Return sTheirCode
        End_Function


        //AB-StoreTopEnd

        Set Label to "„€‚—‚† ƒ„ƒ‹„Œ—Œ"
        Set Size to 20 391
        Set Location to 51 10
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight item 0 to 600
        Set Form_TypeFace item 0 to "MS Sans Serif"

        //AB-StoreStart

        Procedure OnClick
            String sFilename sLabel
            Integer bIsCreated
            Integer iWhat iVal
            Get Label to sLabel
            Get Value of frmFileName item 0 to sFilename
            If (Trim(sFilename)="") Begin
                Send Stop_Box "’¦ æ¤¦£˜ «¦¬ ˜¨œå¦¬ œå¤˜  ¡œ¤æ" "‘­á¢£˜ 1002"
                Procedure_Return
            End

            Direct_Output channel 9 sFilename

            String sFileName1
            Move "C:\TitanMig\SMSMI_DEOP_Details1.csv" to sFileName1
            Direct_Output channel 7 sFileName1

            String sFileName2
            Move "C:\TitanMig\SMSMI_DEOP_Details2.csv" to sFileName2
            Direct_Output channel 8 sFileName2

            String sFileName3
            Move "C:\TitanMig\SMSMI_DEOP_Details3.csv" to sFileName3
            Direct_Output channel 6 sFileName3

            Integer iCnt iFS
            Move 0 to iCnt
            File_Size MIClient to iFS
            String sMess

            Clear MIORDH
            Find GE MIORDH.Recnum
            While (Found)
                Add 1 to iCnt
                Move (String(iCnt)+"/"+String(iFS)) to sMess
                Set Label to sMess


                Send Output_Clients_Deop
                Send Output_All_DEOP

                Find GT MIORDH.Recnum
            Loop

            Close_Output channel 9
            Close_Output channel 8
            Close_Output channel 7
            Close_Output channel 6
            Set Label to sLabel
            Send Info_Box "Process Finished, the file is saved" "Information"
        End_Procedure // OnClick

        
        Procedure Output_All_DEOP
        End_Procedure
        
        Procedure Output_Clients_Deop
            
            String  sClientID sDeli sPrespID
            Integer iCheckAFM iRecnum
        
            Move MIClient.Recnum     to iRecnum
            Move MIClient.Client_ID  to sClientID
        
            Move ","                to sDeli
        
            Set psNotFoundClientDhmos to ""
            Set psNotFoundClientNomos to ""
            Set psNotFoundClientDrast to ""
            Set psNotFoundClientTrPlh to ""
        
            //---
            Write   channel 9   '"'
            Write   channel 9   'Y001'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
            Write   channel 9   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Presp_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
            Move (Trim(MIClient.Presp_ID)) to sPrespID
            Write   channel 9   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
            Write   channel 9   sDeli // End of Excel Column G  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
            Write   channel 9   sDeli // End of Excel Column H  ¨åœ«˜  ¦ œ¨š¦¢á™¦ª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
            Write   channel 9   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
            Write   channel 9   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
            Write   channel 9   '"'
            Write   channel 9   'GR02'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column K  ‰à› ¡æª „«˜ ¨å˜ª „¢¢á›˜ª
            Write   channel 9   '"'
            Write   channel 9   'GR02'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column L ¨š˜¤ ©£æª à¢ã©œà¤ „¢¢á›˜ª
            Write   channel 9   '"'
            Write   channel 9   '03'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column M ‰˜¤á¢  ƒ ˜¤¦£ãª
            Write   channel 9   '"'
            Write   channel 9   '04'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column N ’£ã£˜ (Segment)
            String s1 sLianikh
            If      (MIClient.Client_ptyppar='113')              Move "Z009" to s1
            Else If (MIClient.Client_Name contains "‰/")        Move "Z006" to s1
            Else If (MIClient.Client_Name contains "ƒ†‹‘ˆ")    Move "Z008" to s1
            Else                                                 Move "Z005" to s1
            Move s1 to sLianikh
            Write   channel 9   '"'
            Write   channel 9   (Trim(s1))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column O  „«˜ ¨ ¡ã ¤¦£ ¡ã ¦¤«æ««˜
            Write   channel 9   '"'
            Write   channel 9   (Trim(Left(MIClient.Client_Name,35)))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column P  î¤¦£˜ §œ¢á«
            Move "" to s1
            If (Trim(Mid(MIClient.Client_Name,35,36))<>"") Move ('"'+Trim(Mid(MIClient.Client_Name,35,36))+'"') to s1
            Write   channel 9   (Trim(s1))
            Write   channel 9   sDeli // End of Excel Column Q  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
            Move "" to s1
            If (Trim(Mid(MIClient.Client_Name,35,71))<>"") Move ('"'+Trim(Mid(MIClient.Client_Name,35,71))+'"') to s1
            Write   channel 9   (Trim(s1))
            Write   channel 9   sDeli // End of Excel Column R  ¢ã¨ª œ§à¤¬£å˜ §œ¢á«
            Write   channel 9   sDeli // End of Excel Column S
            Write   channel 9   sDeli // End of Excel Column T  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
            Write   channel 9   sDeli // End of Excel Column U  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« ã «å«¢¦ª œ«˜ ¨å˜ª - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_Address))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column V  ›æª §œ¢á«
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_add_no))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column W  €¨ Ÿ£æª
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_Zipcode))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column X  ’.‰.
            Move "" to s1
            Clear MIAreas
            Move MIClient.Client_Area to MIAreas.Area_id
            Find Eq MIAreas by Index.1
            Clear MIDHMOS
            Move (Trim(MIAreas.Area_Descr)) to MIDHMOS.Dhmos
            Find EQ MIDHMOS by Index.1
            If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
            Else Begin
                Set psNotFoundClientDhmos to ("*** (Y) "+Trim(MIAreas.Area_Descr))
                Move "ZZZZ"               to s1
            End
            Write   channel 9   '"'
            Write   channel 9   s1
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Y  ƒã£¦ª
            Move "GR" to s1
            String sIsGreece
            Move s1 to sIsGreece
            Write   channel 9   '"'
            Write   channel 9   (Trim(s1))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Z  •é¨˜
            Move "" to s1
            Clear MICities
            Move MIClient.Client_City_ID to MICities.City_id
            Find Eq MICities by Index.1
            Clear MINOMOS
            Move (Trim(MICities.City_Descr)) to MINOMOS.DESCR
            Find EQ MINOMOS by Index.2
            If (Found)  Move (Trim(MINOMOS.CODE)) to s1
            Else Begin
                Set psNotFoundClientNomos to ("*** (AA) "+Trim(MICities.City_Descr))
                Move "ZZZZ"               to s1
            End
            Write   channel 9   '"'
            Write   channel 9   s1
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AA Œ¦£æª
            Write   channel 9   sDeli // End of Excel Column AB ƒ£¦« ¡ã „¤æ««˜
            Write   channel 9   '"'
            Write   channel 9   'EL'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AC ‚¢é©©˜
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_Phone))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AD ’¢â­à¤¦ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ «¢œ­é¤à¤ ©«¦ sheet Communication)
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_Mobile))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AE "‰ ¤«æ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ ¡ ¤«é¤ ©«¦ sheet Communication)
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_Fax))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AF Fax §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ fax ©«¦ sheet Communication)
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_email))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AG Email §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ e-mail ©«¦ sheet Communication)
            Write   channel 9   sDeli // End of Excel Column AH ‘¬£§¢¨é¤œ«˜  ¦ reference ¡à› ¡æª §¨¦£Ÿœ¬«ã œá¤ ¦ §œ¢á«ª œå¤˜  ¡˜  §¨¦£Ÿœ¬«ãª
        
            Move "" to s1
//            Clear Codemast
//            Move "JOB"                  to Codemast.Type
//            Move MIClient.Client_Job    to Codemast.Code
//            Find Eq Codemast by Index.1
//            Clear MIDRAST
//            Move (Trim(Codemast.Description)) to MIDRAST.Descr
//            Find Eq MIDRAST by Index.2
//            If (Found) Move MIDRAST.Code to s1
//            Else Begin
//                Set psNotFoundClientDrast to ("*** (AI) "+Trim(Codemast.Description))
                Move "ZZZZ" to s1
//            End
            Write   channel 9   '"'
            Write   channel 9   s1
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AI ƒ¨˜©«¨ æ««˜ §œ¢á«
        
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIClient.Client_AFM))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AJ "€”‹ “§¦®¨œà« ¡æ š ˜ GR §œ¢á«œª
            Move ("EL"+Trim(MIClient.Client_AFM)) to s1
            Write   channel 9   '"'
            Write   channel 9   (Trim(s1))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AK EL+€”‹ “§¦®¨œà« ¡æ š ˜ §œ¢á«œª „¬¨à§˜ä¡ãª ë¤à©ª
            Write   channel 9   sDeli // End of Excel Column AL ƒ£¦« ¡ã „¤æ««˜
            Write   channel 9   sDeli // End of Excel Column AM Sales Office
            Write   channel 9   sDeli // End of Excel Column AN Sales Group
            Write   channel 9   sDeli // End of Excel Column AO „¨š¦¢á™¦ª / ‹®˜¤ ¡æª
            Write   channel 9   '"'
            Write   channel 9   'EUR'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AP Œæ£ ©£˜ §é¢©ª
            Write   channel 9   '"'
            Write   channel 9   '1'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AQ ¨¦©› ¦¨åœ  «¤ › ˜› ¡˜©å˜ « £¦›æ«©ª
            Write   channel 9   '"'
            Write   channel 9   '1'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AR ¨¦©› ¦¨åœ  «¤ ¦£á›˜ ©«˜« ©« ¡é¤ §œ¢á«
            Write   channel 9   '"'
            Write   channel 9   '11'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AS ‘¬¤Ÿã¡ ˜§¦©«¦¢ãª
            Write   channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª
            Write   channel 9   '"'
            Write   channel 9   'X'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AU ‘¬£§¢¨é¤œ«˜  œá¤  › ˜› ¡˜©å˜ « £¦›æ«©ª §¨˜š£˜«¦§¦ œå«˜  š ˜ «¦¤ §œ¢á«
            Write   channel 9   sDeli // End of Excel Column AV Incoterms
            Write   channel 9   '"'
            Write   channel 9   (Trim(fsTropoiPlhromhsPelath(Self,Trim(MIClient.Polh_recr))))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AW î¨¦  ¢¨à£ãª
            If (sLianikh="Z009")  Move "02" to s1
            Else                  Move "01" to s1
            Write   channel 9   '"'
            Write   channel 9   (Trim(s1))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column A• £˜›¦§¦å© š ˜ «¦¤ §¨¦©› ¦¨ ©£æ ¢¦š˜¨ ˜©£¦ç œ©æ›à¤
            Write   channel 9   '"'
            Write   channel 9   'GR'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AY •é¨˜ ­¦¨¦¢æš©ª
            Write   channel 9   '"'
            Write   channel 9   'MWST'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column A… ‰˜«š¦¨å˜ ­æ¨¦¬
            Write   channel 9   '"'
            Write   channel 9   '0'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column A ‰˜«š¦¨ ¦§¦å© ­æ¨¦¬
            Write   channel 9   sDeli // End of Excel Column B €¨. ”¦¨«šé¤
            Write   channel 9   sDeli // End of Excel Column C ¬Ÿ£æª ˜¨á›¦©ª
            Write   channel 9   sDeli // End of Excel Column D ’˜®ç««˜ „¡­æ¨«à©ª
            Write   channel 9   sDeli // End of Excel Column E „¢¢œ §âª ”¦¨«å¦
            Write   channel 9   sDeli // End of Excel Column F ‹âš ©« ¦©æ««˜ ˜¨á›¦©ª
            Write   channel 9   sDeli // End of Excel Column G ‰à› ¡æª ë¨š¦¬ œ¢á«
            Write   channel 9   sDeli // End of Excel Column H €¨. ê›œ ˜ª ë¨š¦¬
            Write   channel 9   sDeli // End of Excel Column I †£. ê›œ ˜ª ë¨š¦¬
            Write   channel 9   '"'
            Write   channel 9   '3000000000'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column J Š¦š˜¨ ˜©£æª ‘¬£­à¤å˜ª
            Write   channel 9   '"'
            Write   channel 9   'R02'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column K £˜›¦§¦å© §œ¢˜«é¤ š ˜ ©¡¦§¦çª cash flow
            Write   channel 9   sDeli // End of Excel Column L ƒ ˜©ç¤›œ© ‰œ¤«¨ ¡é¤ - “§¦¡˜«á©«£˜. ‘¬£§¢¨é¤œ«˜  š ˜ æ¢˜ «˜ â¨š˜ (header Ship - to) ¡˜  ¬§¦ â¨š˜ (ship - to)
            Write   channel 9   sDeli // End of Excel Column M ‹âŸ¦›¦ª §¢¨à£ãª ???
            Write   channel 9   '"'
            Write   channel 9   (Trim(fsTropoiPlhromhsPelath(Self,Trim(MIClient.Polh_recr))))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column N
            //---
            Write   channel 9   '"'
            Write   channel 9   (Trim(psNotFoundClientDhmos(Self)))
            Write   channel 9   '"'
            Write   channel 9   sDeli
        
            Write   channel 9   '"'
            Write   channel 9   (Trim(psNotFoundClientNomos(Self)))
            Write   channel 9   '"'
            Write   channel 9   sDeli
        
            Write   channel 9   '"'
            Write   channel 9   (Trim(psNotFoundClientTrPlh(Self)))
            Write   channel 9   '"'
            Write   channel 9   sDeli
        
            Write   channel 9   '"'
            Write   channel 9   (Trim(psNotFoundClientDrast(Self)))
            Write   channel 9   '"'
            //Write   Channel 9   sDeli
        
            //---
            Writeln channel 9
        
            Send OutputPresp (Trim(sPrespID))
        
            // Ta erga tha pane me ton kodiko pelath pou diavazoume kai oxi
            // me ton endexomeno kodiko pelath pou pro yphrxe bash AFM kai
            // tou opoiou xrhsimopoihsame ta stoixeia tou.
            // Theloume ta erga tou pelath me allo kodiko alla idio AFM
            // Na desoune ston proto kodiko pelath pou vrethike me ayto to AFM
            Send OutputCN    (Trim(sClientID))
        
            // Aparaithth epanatopothethsh sto geniko loop
            // ton pelaton bash recnum afou endexetai na allaxame
            // trexon recod pelath and to afm tou yparxei hdh se allo pelath
            Clear MIClient
            Move iRecnum to MIClient.Recnum
            Find Eq MIClient.Recnum
        
        End_Procedure
        
        
        
        Procedure OutputPresp String asPrespID
            String sPrespID s1
        
            Set psNotFoundPrespDhmos to ""
            Set psNotFoundPrespNomos to ""
            Set psNotFoundPrespDrast to ""
            Set psNotFoundPrespTrPlh to ""
        
            Clear MIPresp
            Move asPrespID to MIPresp.Presp_ID
            Find GE MIPresp by Index.7
            While ((Found) and (MIPresp.Presp_ID=asPrespID))
                String sDeli
                Move ","                to sDeli
                Move MIPresp.Presp_ID   to sPrespID
                //---
                Write   channel 9   '"'
                Write   channel 9   'Y012'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_ID))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                Write   channel 9   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                Write   channel 9   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   channel 9   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   channel 9   sDeli // End of Excel Column G  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   channel 9   sDeli // End of Excel Column H  ¨åœ«˜  ¦ œ¨š¦¢á™¦ª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                Write   channel 9   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                Write   channel 9   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
                Write   channel 9   '"'
                Write   channel 9   'GR02'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column K  ‰à› ¡æª „«˜ ¨å˜ª „¢¢á›˜ª
                Write   channel 9   '"'
                Write   channel 9   'GR02'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column L ¨š˜¤ ©£æª à¢ã©œà¤ „¢¢á›˜ª
                Write   channel 9   '"'
                Write   channel 9   '03'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column M ‰˜¤á¢  ƒ ˜¤¦£ãª
                Write   channel 9   '"'
                Write   channel 9   '04'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column N ’£ã£˜ (Segment)
                Write   channel 9   sDeli // End of Excel Column O  „«˜ ¨ ¡ã ¤¦£ ¡ã ¦¤«æ««˜
                Write   channel 9   '"'
                Write   channel 9   (Trim(Left(MIPresp.Presp_Name,35)))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column P  î¤¦£˜ “§. ¢¨
                Move "" to s1
                If (Trim(Mid(MIPresp.Presp_Name,35,36))<>"") Move ('"'+Trim(Mid(MIPresp.Presp_Name,35,36))+'"') to s1
                Write   channel 9   (Trim(s1))
                Write   channel 9   sDeli // End of Excel Column Q  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                Move "" to s1
                If (Trim(Mid(MIPresp.Presp_Name,35,71))<>"") Move ('"'+Trim(Mid(MIPresp.Presp_Name,35,71))+'"') to s1
                Write   channel 9   (Trim(s1))
                Write   channel 9   sDeli // End of Excel Column R  ¢ã¨ª œ§à¤¬£å˜ §œ¢á«
                Write   channel 9   sDeli // End of Excel Column S
                Write   channel 9   sDeli // End of Excel Column T  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   channel 9   sDeli // End of Excel Column U  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« ã «å«¢¦ª œ«˜ ¨å˜ª - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_Address))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column V  ›æª §œ¢á«
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_add_no))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column W  €¨ Ÿ£æª
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_Zipcode))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column X  ’.‰.
        
                Move "" to s1
                Clear MIAreas
                Move MIPresp.Presp_Area to MIAreas.Area_id
                Find Eq MIAreas by Index.1
                Clear MIDHMOS
                Move (Trim(MIAreas.Area_Descr)) to MIDHMOS.Dhmos
                Find EQ MIDHMOS by Index.1
                If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                Else Begin
                    Set psNotFoundPrespDhmos to ("*** (Y) "+Trim(MIAreas.Area_Descr))
                    Move "ZZZZ"              to s1
                End
                Write   channel 9   '"'
                Write   channel 9   s1
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column Y  ƒã£¦ª
        
                Move "GR" to s1
                String sIsGreece
                Move s1 to sIsGreece
                Write   channel 9   '"'
                Write   channel 9   (Trim(s1))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column Z  •é¨˜
        
        
                Move "" to s1
                Clear MICities
                Move MIPresp.Presp_City_ID to MICities.City_id
                Find Eq MICities by Index.1
                Clear MINOMOS
                Move (Trim(MICities.City_Descr)) to MINOMOS.DESCR
                Find EQ MINOMOS by Index.2
                If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                Else Begin
                    Set psNotFoundPrespNomos to ("*** (AA) "+Trim(MICities.City_Descr))
                    Move "ZZZZ"              to s1
                End
                Write   channel 9   '"'
                Write   channel 9   s1
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AA Œ¦£æª
                Write   channel 9   sDeli // End of Excel Column AB ƒ£¦« ¡ã „¤æ««˜
                Write   channel 9   '"'
                Write   channel 9   'EL'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AC ‚¢é©©˜
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_Phone))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AD ’¢â­à¤¦ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ «¢œ­é¤à¤ ©«¦ sheet Communication)
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_Mobile))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AE "‰ ¤«æ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ ¡ ¤«é¤ ©«¦ sheet Communication)
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_Fax))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AF Fax §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ fax ©«¦ sheet Communication)
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_email))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AG Email §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ e-mail ©«¦ sheet Communication)
                Write   channel 9   sDeli // End of Excel Column AH ‘¬£§¢¨é¤œ«˜  ¦ reference ¡à› ¡æª §¨¦£Ÿœ¬«ã œá¤ ¦ §œ¢á«ª œå¤˜  ¡˜  §¨¦£Ÿœ¬«ãª
        
                Move "" to s1
//                Clear Codemast
//                Move "JOB"              to Codemast.Type
//                Move MIPresp.Presp_Job to Codemast.Code
//                Find Eq Codemast by Index.1
//                Clear MIDRAST
//                Move (Trim(Codemast.Description)) to MIDRAST.Descr
//                Find Eq MIDRAST by Index.2
//                If (Found) Move MIDRAST.Code to s1
//                Else Begin
//                    Set psNotFoundPrespDrast to ("*** (AI) "+Trim(Codemast.Description))
                    Move "ZZZZ" to s1
//                End
                Write   channel 9   '"'
                Write   channel 9   s1
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AI ƒ¨˜©«¨ æ««˜ §œ¢á«
        
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIPresp.Presp_AFM))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AJ "€”‹ “§¦®¨œà« ¡æ š ˜ GR §œ¢á«œª
                Move ("EL"+Trim(MIPresp.Presp_AFM)) to s1
                Write   channel 9   '"'
                Write   channel 9   (Trim(s1))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AK EL+€”‹ “§¦®¨œà« ¡æ š ˜ §œ¢á«œª „¬¨à§˜ä¡ãª ë¤à©ª
                Write   channel 9   sDeli // End of Excel Column AL ƒ£¦« ¡ã „¤æ««˜
                Write   channel 9   sDeli // End of Excel Column AM Sales Office
                Write   channel 9   sDeli // End of Excel Column AN Sales Group
                Write   channel 9   sDeli // End of Excel Column AO „¨š¦¢á™¦ª / ‹®˜¤ ¡æª
                Write   channel 9   '"'
                Write   channel 9   'EUR'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AP Œæ£ ©£˜ §é¢©ª
                Write   channel 9   '"'
                Write   channel 9   '1'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AQ ¨¦©› ¦¨åœ  «¤ › ˜› ¡˜©å˜ « £¦›æ«©ª
                Write   channel 9   '"'
                Write   channel 9   '1'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AR ¨¦©› ¦¨åœ  «¤ ¦£á›˜ ©«˜« ©« ¡é¤ §œ¢á«
                Write   channel 9   '"'
                Write   channel 9   '11'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AS ‘¬¤Ÿã¡ ˜§¦©«¦¢ãª
                Write   channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª
                Write   channel 9   sDeli // End of Excel Column AU ‘¬£§¢¨é¤œ«˜  œá¤  › ˜› ¡˜©å˜ « £¦›æ«©ª §¨˜š£˜«¦§¦ œå«˜  š ˜ «¦¤ §œ¢á«
                Write   channel 9   sDeli // End of Excel Column AV Incoterms
                Write   channel 9   sDeli // End of Excel Column AW î¨¦  ¢¨à£ãª
                Write   channel 9   sDeli // End of Excel Column A• £˜›¦§¦å© š ˜ «¦¤ §¨¦©› ¦¨ ©£æ ¢¦š˜¨ ˜©£¦ç œ©æ›à¤
                Write   channel 9   '"'
                Write   channel 9   'GR'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AY •é¨˜ ­¦¨¦¢æš©ª
                Write   channel 9   '"'
                Write   channel 9   'MWST'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column A… ‰˜«š¦¨å˜ ­æ¨¦¬
                Write   channel 9   '"'
                Write   channel 9   '0'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column A ‰˜«š¦¨ ¦§¦å© ­æ¨¦¬
                Write   channel 9   sDeli // End of Excel Column B €¨. ”¦¨«šé¤
                Write   channel 9   sDeli // End of Excel Column C ¬Ÿ£æª ˜¨á›¦©ª
                Write   channel 9   sDeli // End of Excel Column D ’˜®ç««˜ „¡­æ¨«à©ª
                Write   channel 9   sDeli // End of Excel Column E „¢¢œ §âª ”¦¨«å¦
                Write   channel 9   sDeli // End of Excel Column F ‹âš ©« ¦©æ««˜ ˜¨á›¦©ª
                Write   channel 9   sDeli // End of Excel Column G ‰à› ¡æª ë¨š¦¬ œ¢á«
                Write   channel 9   sDeli // End of Excel Column H €¨. ê›œ ˜ª ë¨š¦¬
                Write   channel 9   sDeli // End of Excel Column I †£. ê›œ ˜ª ë¨š¦¬
                Write   channel 9   '"'
                Write   channel 9   '3000000000'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column J Š¦š˜¨ ˜©£æª ‘¬£­à¤å˜ª
                Write   channel 9   '"'
                Write   channel 9   'R02'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column K £˜›¦§¦å© §œ¢˜«é¤ š ˜ ©¡¦§¦çª cash flow
                Write   channel 9   sDeli // End of Excel Column L ƒ ˜©ç¤›œ© ‰œ¤«¨ ¡é¤ - “§¦¡˜«á©«£˜. ‘¬£§¢¨é¤œ«˜  š ˜ æ¢˜ «˜ â¨š˜ (header Ship - to) ¡˜  ¬§¦ â¨š˜ (ship - to)
                Write   channel 9   sDeli // End of Excel Column M ‹âŸ¦›¦ª §¢¨à£ãª
                Write   channel 9   sDeli // End of Excel Column N Terms of Payment
                //---
        
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundPrespDhmos(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli
        
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundPrespNomos(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli
        
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundPrespTrPlh(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli
        
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundPrespDrast(Self)))
                Write   channel 9   '"'
                //Write   Channel 9   sDeli
        
                //---
                Writeln channel 9
        
                Find GT MIPresp by Index.7
        
            Loop
        End_Procedure
        
        
        Procedure OutputCN String asClientID
        
            String sSLS sCNT sMHX
        
            Clear MICN
            Move asClientID to MICN.Client_ID
            Find GE MICN by Index.4 // Client_ID+CN_Code
            While ((Found) and (MICN.Client_ID=asClientID))
        
                Set psNotFoundErgoDhmos to ""
                Set psNotFoundErgoNomos to ""
                Set psNotFoundErgoDrast to ""
                Set psNotFoundErgoTrPlh to ""
    
                String sDeli
                Move "," to sDeli
                //---
                Write   channel 9   '"'
                Write   channel 9   'Y005'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_Code))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª „¨š¦¬
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.Client_ID))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column D  ‰à›. œ¢á«
                Write   channel 9   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   channel 9   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   channel 9   sDeli // End of Excel Column G  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
    
                Clear MIConstr
                Move MICN.CN_Cnt_Recr to MIConstr.Cnt_Recr
                Find Eq MIConstr by Index.2
                Write   channel 9   '"'
                Write   channel 9   (Trim(MIConstr.Cnt_ID))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column H  ¨åœ«˜  ¦ œ¨š¦¢á™¦ª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
    
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.Mhxanik_ID))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
    
                Clear MISalesm
                Move MICN.CN_Sls_Recr to MISalesm.Sls_Recr
                Find Eq MISalesm by Index.2
                Write   channel 9   '"'
                Write   channel 9   (Trim(MISalesm.Sls_ID))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
    
                Move (Trim(MISalesm.Sls_ID))    to sSLS
                Move (Trim(MIConstr.Cnt_ID))    to sCNT
                Move (Trim(MICN.Mhxanik_ID))    to sMHX
    
    
                Write   channel 9   '"'
                Write   channel 9   'GR02'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column K  ‰à› ¡æª „«˜ ¨å˜ª „¢¢á›˜ª
                Write   channel 9   '"'
                Write   channel 9   'GR02'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column L ¨š˜¤ ©£æª à¢ã©œà¤ „¢¢á›˜ª
                Write   channel 9   '"'
                Write   channel 9   '03'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column M ‰˜¤á¢  ƒ ˜¤¦£ãª
                Write   channel 9   '"'
                Write   channel 9   '04'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column N ’£ã£˜ (Segment)
                Write   channel 9   sDeli // End of Excel Column O  „«˜ ¨ ¡ã ¤¦£ ¡ã ¦¤«æ««˜
                Write   channel 9   '"'
                Write   channel 9   (Trim(Left(MICN.CN_Descr,35)))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column P  œ¨ š¨˜­ „¨š¦¬
                String s1
                Move "" to s1
                If (Trim(Mid(MICN.CN_Descr,35,36))<>"") Move ('"'+Trim(Mid(MICN.CN_Descr,35,36))+'"') to s1
                Write   channel 9   (Trim(s1))
                Write   channel 9   sDeli // End of Excel Column Q  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                Move "" to s1
                If (Trim(Mid(MICN.CN_Descr,35,71))<>"") Move ('"'+Trim(Mid(MICN.CN_Descr,35,71))+'"') to s1
                Write   channel 9   (Trim(s1))
                Write   channel 9   sDeli // End of Excel Column R  ¢ã¨ª œ§à¤¬£å˜ §œ¢á«
                Write   channel 9   sDeli // End of Excel Column S
                Write   channel 9   sDeli // End of Excel Column T  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   channel 9   sDeli // End of Excel Column U  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« ã «å«¢¦ª œ«˜ ¨å˜ª - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_Address))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column V  ›æª §œ¢á«
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_add_no))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column W  €¨ Ÿ£æª
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_Zipcode))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column X  ’.‰.
    
                Move "" to s1
                Clear MIAreas
                Move MICN.CN_Area to MIAreas.Area_id
                Find Eq MIAreas by Index.1
                Clear MIDHMOS
                Move (Trim(MIAreas.Area_Descr)) to MIDHMOS.Dhmos
                Find EQ MIDHMOS by Index.1
                If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                Else Begin
                    Set psNotFoundErgoDhmos to ("*** (Y) "+Trim(MIAreas.Area_Descr))
                    Move "ZZZZ"             to s1
                End
                Write   channel 9   '"'
                Write   channel 9   s1
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column Y  ƒã£¦ª
    
                Move "GR" to s1
                String sIsGreece
                Move s1 to sIsGreece
                Write   channel 9   '"'
                Write   channel 9   (Trim(s1))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column Z  •é¨˜
    
                Move "" to s1
                Clear MICities
                Move MICN.CN_City to MICities.City_id
                Find Eq MICities by Index.1
                Clear MINOMOS
                Move (Trim(MICities.City_Descr)) to MINOMOS.DESCR
                Find EQ MINOMOS by Index.2
                If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                Else Begin
                    Set psNotFoundErgoNomos to ("*** (AA) "+Trim(MICities.City_Descr))
                    Move "ZZZZ"             to s1
                End
                Write   channel 9   '"'
                Write   channel 9   s1
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AA Œ¦£æª
                Write   channel 9   sDeli // End of Excel Column AB ƒ£¦« ¡ã „¤æ««˜
                Write   channel 9   sDeli // End of Excel Column AC ‚¢é©©˜
                Write   channel 9   sDeli // End of Excel Column AD ’¢â­à¤¦ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ «¢œ­é¤à¤ ©«¦ sheet Communication)
                Write   channel 9   sDeli // End of Excel Column AE "‰ ¤«æ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ ¡ ¤«é¤ ©«¦ sheet Communication)
                Write   channel 9   sDeli // End of Excel Column AF Fax §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ fax ©«¦ sheet Communication)
                Write   channel 9   sDeli // End of Excel Column AG Email §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ e-mail ©«¦ sheet Communication)
                Write   channel 9   sDeli // End of Excel Column AH ‘¬£§¢¨é¤œ«˜  ¦ reference ¡à› ¡æª §¨¦£Ÿœ¬«ã œá¤ ¦ §œ¢á«ª œå¤˜  ¡˜  §¨¦£Ÿœ¬«ãª
                Write   channel 9   sDeli // End of Excel Column AI ƒ¨˜©«¨ æ««˜ §œ¢á«
                Write   channel 9   sDeli // End of Excel Column AJ "€”‹ “§¦®¨œà« ¡æ š ˜ GR §œ¢á«œª
                Write   channel 9   sDeli // End of Excel Column AK EL+€”‹ “§¦®¨œà« ¡æ š ˜ §œ¢á«œª „¬¨à§˜ä¡ãª ë¤à©ª
                Write   channel 9   sDeli // End of Excel Column AL ƒ£¦« ¡ã „¤æ««˜

//                Write   channel 9   '"'
//                Write   channel 9   "" //(Trim(Branch.Branch_Resp))   
//                Write   channel 9   '"'
//                Write   channel 9   sDeli // End of Excel Column AM Sales Office
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_PUMPID))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AM Sales Office

                Write   channel 9   '"'
                Write   channel 9   "" //(Trim(Branch.Branch_Bitmap))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AN Sales Group
                Write   channel 9   sDeli // End of Excel Column AO Customer Group „¨š¦¢á™¦ª / ‹®˜¤ ¡æª
                Write   channel 9   '"'
                Write   channel 9   'EUR'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AP Œæ£ ©£˜ §é¢©ª
                Write   channel 9   '"'
                Write   channel 9   '1'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AQ ¨¦©› ¦¨åœ  «¤ › ˜› ¡˜©å˜ « £¦›æ«©ª
                Write   channel 9   '"'
                Write   channel 9   '1'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AR ¨¦©› ¦¨åœ  «¤ ¦£á›˜ ©«˜« ©« ¡é¤ §œ¢á«
                Write   channel 9   '"'
                Write   channel 9   '11'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AS ‘¬¤Ÿã¡ ˜§¦©«¦¢ãª

//                Write   channel 9   '"'
//                Write   channel 9   ""  //(Trim(Branch.Branch_Email))
//                Write   channel 9   '"'
//                Write   channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_PUMPLICENSE))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª

                Write   channel 9   '"'
                Write   channel 9   'X'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AU ‘¬£§¢¨é¤œ«˜  œá¤  › ˜› ¡˜©å˜ « £¦›æ«©ª §¨˜š£˜«¦§¦ œå«˜  š ˜ «¦¤ §œ¢á«
                Write   channel 9   sDeli // End of Excel Column AV Incoterms
                Write   channel 9   sDeli // End of Excel Column AW î¨¦  ¢¨à£ãª
                Write   channel 9   sDeli // End of Excel Column A• £˜›¦§¦å© š ˜ «¦¤ §¨¦©› ¦¨ ©£æ ¢¦š˜¨ ˜©£¦ç œ©æ›à¤
                Write   channel 9   '"'
                Write   channel 9   'GR'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column AY •é¨˜ ­¦¨¦¢æš©ª
                Write   channel 9   '"'
                Write   channel 9   'MWST'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column A… ‰˜«š¦¨å˜ ­æ¨¦¬
                Write   channel 9   '"'
                Write   channel 9   '0'
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column A ‰˜«š¦¨ ¦§¦å© ­æ¨¦¬
                Write   channel 9   sDeli // End of Excel Column B €¨. ”¦¨«šé¤
                Write   channel 9   sDeli // End of Excel Column C ¬Ÿ£æª ˜¨á›¦©ª
                Write   channel 9   sDeli // End of Excel Column D ’˜®ç««˜ „¡­æ¨«à©ª
    
                Move "" to s1
//                Date dHm
//                Move "31/12/2100" to dHm
//                Clear BtnOrdH
//                Move asClientID     to BtnOrdH.Client_ID
//                Move MICN.CN_Code   to BtnOrdH.CN_Code
//                Move dHm            to BtnOrdH.Deop_Lhxh
//                Move "ZZZZZZZZZZ"   to BtnOrdH.AA_Deop
//                Move "ZZZZZZZZZZ"   to BtnOrdH.Recr
//                Find LE BtnOrdH by Index.6
//                If ((Found) and (BtnOrdH.Client_ID=asClientID) and (BtnOrdH.CN_Code=MICN.CN_Code)) Begin
//                    Move ('"'+String(Btnordh.Eleiph)+'"') to s1
//                End
                Write   channel 9   (Trim(s1))
                Write   channel 9   sDeli // End of Excel Column E „¢¢œ §âª ”¦¨«å¦
    
                Write   channel 9   sDeli // End of Excel Column F ‹âš ©« ¦©æ««˜ ˜¨á›¦©ª
                Write   channel 9   sDeli // End of Excel Column G ‰à› ¡æª ë¨š¦¬ œ¢á«
                Write   channel 9   sDeli // End of Excel Column H €¨. ê›œ ˜ª ë¨š¦¬
                Write   channel 9   sDeli // End of Excel Column I †£. ê›œ ˜ª ë¨š¦¬
                Write   channel 9   sDeli // End of Excel Column J Š¦š˜¨ ˜©£æª ‘¬£­à¤å˜ª
                Write   channel 9   sDeli // End of Excel Column K £˜›¦§¦å© §œ¢˜«é¤ š ˜ ©¡¦§¦çª cash flow
                Write   channel 9   sDeli // End of Excel Column L ƒ ˜©ç¤›œ© ‰œ¤«¨ ¡é¤ - “§¦¡˜«á©«£˜. ‘¬£§¢¨é¤œ«˜  š ˜ æ¢˜ «˜ â¨š˜ (header Ship - to) ¡˜  ¬§¦ â¨š˜ (ship - to)
                Write   channel 9   sDeli // End of Excel Column M ‹âŸ¦›¦ª §¢¨à£ãª ???
                Write   channel 9   sDeli // End of Excel Column N
                //---
    
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundErgoDhmos(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column O
    
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundErgoNomos(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column P
    
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundErgoTrPlh(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli // End of Excel Column Q
    
                Write   channel 9   '"'
                Write   channel 9   (Trim(psNotFoundErgoDrast(Self)))
                Write   channel 9   '"'
                Write   channel 9   sDeli  // End of Excel Column R

                // 05/09/2017 ADDED CN Trigonikh Paradosh Details from CN
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_EXFD1))
                Write   channel 9   '"'
                Write   channel 9   sDeli   // End of Excel Column S
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_EXFD2))
                Write   channel 9   '"'
                Write   channel 9   sDeli  // End of Excel Column T
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_EXFD3))
                Write   channel 9   '"'
                Write   channel 9   sDeli  // End of Excel Column U
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_EXFD4))
                Write   channel 9   '"'
                Write   channel 9   sDeli  // End of Excel Column V
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_EXFD5))
                Write   channel 9   '"'
                Write   channel 9   sDeli  // End of Excel Column W
                Write   channel 9   '"'
                Write   channel 9   (Trim(MICN.CN_EXFD6))
                Write   channel 9   '"'     // End of Excel Column X
                //Write   channel 9   sDeli  
                //---
                Writeln channel 9
    
                Send Output_Others
        
                Find GT MICN by Index.4 // Client_ID+CN_Code
            Loop
        End_Procedure
        
        
        Procedure Output_Others
            String sDeli s1
            Move "," to sDeli
        
            Set psNotFoundMhxanDhmos to ""
            Set psNotFoundMhxanNomos to ""
            Set psNotFoundMhxanDrast to ""
            Set psNotFoundMhxanTrPlh to ""
        
            Set psNotFoundConstrDhmos to ""
            Set psNotFoundConstrNomos to ""
            Set psNotFoundConstrDrast to ""
            Set psNotFoundConstrTrPlh to ""
        
            Set psNotFoundSalesDhmos to ""
            Set psNotFoundSalesNomos to ""
            Set psNotFoundSalesDrast to ""
            Set psNotFoundSalesTrPlh to ""
        
            If (MICN.Mhxanik_ID<>"") Begin
                Clear MIMhxan
                Move MICN.Mhxanik_ID to MIMhxan.Mhx_ID
                Find Eq MIMhxan by Index.4
                If (Found) Begin
                    Clear tmpPagia
                    Move "02"           to tmpPagia.Company_Code
                    Move MICN.Mhxanik_ID  to tmpPagia.Pagia_Code
                    Find Eq tmpPagia by Index.1
                    If (not(Found)) Begin
                        SaveRecord tmpPagia
                        //---
                        Write   channel 7   '"'
                        Write   channel 7   '02'
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_ID))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                        Write   channel 7   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                        Write   channel 7   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                        Write   channel 7   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(Left(MIMhxan.Mhx_Name,35)))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column G  î¤¦£˜ “§. ¢¨
                        Move "" to s1
                        If (Trim(Mid(MIMhxan.Mhx_Name,35,36))<>"") Move ('"'+Trim(Mid(MIMhxan.Mhx_Name,35,36))+'"') to s1
                        Write   channel 7   (Trim(s1))
                        Write   channel 7   sDeli // End of Excel Column H  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                        Write   channel 7   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                        Write   channel 7   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_Address))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column K  ›æª §œ¢á«
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_add_no))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column L  €¨ Ÿ£æª
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_Zipcode))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column M  ’.‰.
        
                        Move "" to s1
                        Clear MIAreas
                        Move MIMhxan.Mhx_Area to MIAreas.Area_id
                        Find Eq MIAreas by Index.1
                        Clear MIDHMOS
                        Move (Trim(MIAreas.Area_Descr)) to MIDHMOS.Dhmos
                        Find EQ MIDHMOS by Index.1
                        If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                        Else Begin
                            Set psNotFoundMhxanDhmos to ("*** (N) "+Trim(MIAreas.Area_Descr))
                            Move "ZZZZ"              to s1
                        End
                        Write   channel 7   '"'
                        Write   channel 7   s1
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column N  ƒã£¦ª
        
                        Move "GR" to s1
                        String sIsGreece
                        Move s1 to sIsGreece
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(s1))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column O  •é¨˜
        
        
                        Move "" to s1
                        Clear MICities
                        Move MIMhxan.Mhx_City to MICities.City_id
                        Find Eq MICities by Index.1
                        Clear MINOMOS
                        Move (Trim(MICities.City_Descr)) to MINOMOS.DESCR
                        Find EQ MINOMOS by Index.2
                        If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                        Else Begin
                            Set psNotFoundMhxanNomos to ("*** (P) "+Trim(MICities.City_Descr))
                            Move "ZZZZ"              to s1
                        End
                        Write   channel 7   '"'
                        Write   channel 7   s1
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column P
                        Write   channel 7   sDeli // End of Excel Column Q
                        Write   channel 7   sDeli // End of Excel Column R
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_Phone))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column S
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_Mobile))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column T
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_Fax))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column U
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_Email))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column V
                        Write   channel 7   sDeli // End of Excel Column W
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(MIMhxan.Mhx_AFM))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column X
                        Write   channel 7   '"'
                        Write   channel 7   ("EL"+Trim(MIMhxan.Mhx_AFM))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli // End of Excel Column Y
                        Write   channel 7   sDeli // End of Excel Column Z
                        Write   channel 7   sDeli // End of Excel Column AA
                        //---
        
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(psNotFoundMhxanDhmos(Self)))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli
        
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(psNotFoundMhxanNomos(Self)))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli
        
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(psNotFoundMhxanTrPlh(Self)))
                        Write   channel 7   '"'
                        Write   channel 7   sDeli
        
                        Write   channel 7   '"'
                        Write   channel 7   (Trim(psNotFoundMhxanDrast(Self)))
                        Write   channel 7   '"'
                        //Write   Channel 7   sDeli
        
                        //---
                        Writeln channel 7
                    End // If not found tmpPagia
                End // If (Found) Begin
            End // If (MICN.Mhxanik_ID<>"") Begin
        
        
        
            If (MICN.CN_CNT_ID<>"") Begin
                Clear MIConstr
                Move MICN.CN_CNT_ID to MIConstr.CNT_ID
                Find Eq MIConstr by Index.5
                If (Found) Begin
                    //---
                    Clear tmpPagia
                    Move "03"           to tmpPagia.Company_Code
                    Move MICN.CN_CNT_ID   to tmpPagia.Pagia_Code
                    Find Eq tmpPagia by Index.1
                    If (not(Found)) Begin
                        SaveRecord tmpPagia
                        //---
                        Write   channel 8   '"'
                        Write   channel 8   '03'
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_ID))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                        Write   channel 8   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                        Write   channel 8   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                        Write   channel 8   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(Left(MIConstr.CNT_Name,35)))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column G  î¤¦£˜ “§. ¢¨
                        Move "" to s1
                        If (Trim(Mid(MIConstr.CNT_Name,35,36))<>"") Move ('"'+Trim(Mid(MIConstr.CNT_Name,35,36))+'"') to s1
                        Write   channel 8   (Trim(s1))
                        Write   channel 8   sDeli // End of Excel Column H  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                        Write   channel 8   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                        Write   channel 8   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_Address))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column K  ›æª §œ¢á«
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_add_no))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column L  €¨ Ÿ£æª
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_Zipcode))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column M  ’.‰.
        
                        Move "" to s1
                        Clear MIAreas
                        Move MIConstr.CNT_Area to MIAreas.Area_id
                        Find Eq MIAreas by Index.1
                        Clear MIDHMOS
                        Move (Trim(MIAreas.Area_Descr)) to MIDHMOS.Dhmos
                        Find EQ MIDHMOS by Index.1
                        If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                        Else Begin
                            Set psNotFoundConstrDhmos to ("*** (N) "+Trim(MIAreas.Area_Descr))
                            Move "ZZZZ"              to s1
                        End
                        Write   channel 8   '"'
                        Write   channel 8   s1
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column N  ƒã£¦ª
        
                        Move "GR" to s1
                        Move s1 to sIsGreece
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(s1))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column O  •é¨˜
        
                        Move "" to s1
                        Clear MICities
                        Move MIConstr.CNT_City to MICities.City_id
                        Find Eq MICities by Index.1
                        Clear MINOMOS
                        Move (Trim(MICities.City_Descr)) to MINOMOS.DESCR
                        Find EQ MINOMOS by Index.2
                        If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                        Else Begin
                            Set psNotFoundConstrNomos to ("*** (P) "+Trim(MICities.City_Descr))
                            Move "ZZZZ"              to s1
                        End
                        Write   channel 8   '"'
                        Write   channel 8   s1
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column P
                        Write   channel 8   sDeli // End of Excel Column Q
                        Write   channel 8   sDeli // End of Excel Column R
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_Phone))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column S
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_Mobile))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column T
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_Fax))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column U
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_Email))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column V
                        Write   channel 8   sDeli // End of Excel Column W
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(MIConstr.CNT_AFM))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column X
                        Write   channel 8   '"'
                        Write   channel 8   ("EL"+Trim(MIConstr.CNT_AFM))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli // End of Excel Column Y
                        Write   channel 8   sDeli // End of Excel Column Z
                        Write   channel 8   sDeli // End of Excel Column AA
                        //---
        
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(psNotFoundConstrDhmos(Self)))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli
        
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(psNotFoundConstrNomos(Self)))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli
        
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(psNotFoundConstrTrPlh(Self)))
                        Write   channel 8   '"'
                        Write   channel 8   sDeli
        
                        Write   channel 8   '"'
                        Write   channel 8   (Trim(psNotFoundConstrDrast(Self)))
                        Write   channel 8   '"'
                        //Write   Channel 8   sDeli
        
                        //---
                        Writeln channel 8
                    End // If not found tmpPagia
                End // If (Found) Begin
            End // If (MICN.CN_CNT_ID<>"") Begin
        
        
        
            If (MICN.CN_SLS_ID<>"") Begin
                Clear MISalesm
                Move MICN.CN_SLS_ID to MISalesm.SLS_ID
                Find Eq MISalesm by Index.4
                If (Found) Begin
                    //---
                    Clear tmpPagia
                    Move "04"           to tmpPagia.Company_Code
                    Move MICN.CN_SLS_ID   to tmpPagia.Pagia_Code
                    Find Eq tmpPagia by Index.1
                    If (not(Found)) Begin
                        SaveRecord tmpPagia
                        //---
                        Write   channel 6   '"'
                        Write   channel 6   '04'
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_ID))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                        Write   channel 6   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                        Write   channel 6   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                        Write   channel 6   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(Left(MISalesm.SLS_Name,35)))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column G  î¤¦£˜ “§. ¢¨
                        Move "" to s1
                        If (Trim(Mid(MISalesm.SLS_Name,35,36))<>"") Move ('"'+Trim(Mid(MISalesm.SLS_Name,35,36))+'"') to s1
                        Write   channel 6   (Trim(s1))
                        Write   channel 6   sDeli // End of Excel Column H  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                        Write   channel 6   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                        Write   channel 6   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_Address))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column K  ›æª §œ¢á«
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_add_no))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column L  €¨ Ÿ£æª
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_Zipcode))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column M  ’.‰.
        
                        Move "" to s1
                        Clear MIAreas
                        Move MISalesm.SLS_Area to MIAreas.Area_id
                        Find Eq MIAreas by Index.1
                        Clear MIDHMOS
                        Move (Trim(MIAreas.Area_Descr)) to MIDHMOS.Dhmos
                        Find EQ MIDHMOS by Index.1
                        If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                        Else Begin
                            Set psNotFoundSalesDhmos to ("*** (N) "+Trim(MIAreas.Area_Descr))
                            Move "ZZZZ"              to s1
                        End
                        Write   channel 6   '"'
                        Write   channel 6   s1
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column N  ƒã£¦ª
        
                        Move "GR" to s1
                        Move s1 to sIsGreece
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(s1))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column O  •é¨˜
        
                        Move "" to s1
                        Clear MICities
                        Move MISalesm.SLS_City to MICities.City_id
                        Find Eq MICities by Index.1
                        Clear MINOMOS
                        Move (Trim(MICities.City_Descr)) to MINOMOS.DESCR
                        Find EQ MINOMOS by Index.2
                        If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                        Else Begin
                            Set psNotFoundSalesNomos to ("*** (P) "+Trim(MICities.City_Descr))
                            Move "ZZZZ"              to s1
                        End
                        Write   channel 6   '"'
                        Write   channel 6   s1
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column P
                        Write   channel 6   sDeli // End of Excel Column Q
                        Write   channel 6   sDeli // End of Excel Column R
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_Phone))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column S
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_Mobile))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column T
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_Fax))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column U
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_Email))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column V
                        Write   channel 6   sDeli // End of Excel Column W
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(MISalesm.SLS_AFM))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column X
                        Write   channel 6   '"'
                        Write   channel 6   ("EL"+Trim(MISalesm.SLS_AFM))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli // End of Excel Column Y
                        Write   channel 6   sDeli // End of Excel Column Z
                        Write   channel 6   sDeli // End of Excel Column AA
                        //---
        
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(psNotFoundSalesDhmos(Self)))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli
        
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(psNotFoundSalesNomos(Self)))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli
        
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(psNotFoundSalesTrPlh(Self)))
                        Write   channel 6   '"'
                        Write   channel 6   sDeli
        
                        Write   channel 6   '"'
                        Write   channel 6   (Trim(psNotFoundSalesDrast(Self)))
                        Write   channel 6   '"'
                        //Write   Channel 6   sDeli
        
                        //---
                        Writeln channel 6
                    End // If not found tmpPagia
                End // If (Found) Begin
            End // If (MICN.CN_SLS_ID<>"") Begin
        
        
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Button5
    Object TextBox10 is a TextBox
        Set Label to "î¤¦£˜ ˜¨®œå¦¬"
        Set Auto_Size_State to False
        Set Location to 34 53
        Set Size to 10 55
        Set TypeFace to "MS Sans Serif"
        Set Color to 13631219
    End_Object    // TextBox10

    Object SaveAsDialog1 is a SaveAsDialog
        Set Location to 292 33

        //AB-StoreStart
        //Show_Dialog is a predefined function method in the SaveAsDialog class
        //get Show_Dialog to an integer variable to call the SaveAsDialog
        //
        //DoCallSaveAsDialog is NOT a predefined method in the SaveAsDialog class
        //DoCallSaveAsDialog it is just used an example
        //you can send DoCallSaveAsDialog from another object, such as a button
        //
        //Procedure DoCallSaveAsDialog
        //    integer iVoid
        //    get Show_Dialog of SaveAsDialog1 to iVoid
        //End_Procedure  // DoCallSaveAsDialog
        //AB-StoreEnd

    End_Object    // SaveAsDialog1

End_Object
