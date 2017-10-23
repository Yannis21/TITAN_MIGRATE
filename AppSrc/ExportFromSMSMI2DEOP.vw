// L:\VDF14.1.Dev\TITAN_MIGRATE\AppSrc\ExportFromSMSMI2DEOP.vw
// ExportFromSMSMI2
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


Activate_View Activate_ExportFromSMSMI2DEOP for ExportFromSMSMI2DEOP

Object ExportFromSMSMI2DEOP is a dbView
    Set Location to 7 10
    Set Size to 122 411
    Set Label to "Ñ•òö‡ö„ ©´¶†ÆúÂ‡§ ÉÑéè"
    Set Border_Style to Border_Thick

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

        Set Label to "ÑçÄÇóÇÜ ÉÑÉéãÑåóå"
        Set Size to 20 391
        Set Location to 55 10
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
                Send Stop_Box "í¶ Ê§¶£ò ´¶¨ ò®úÂ¶¨ úÂ§ò† °ú§Ê" "ë≠·¢£ò 1002"
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
            File_Size MIORDH to iFS
            String sMess
        
            Clear MIORDH
            Find GE MIORDH.Recnum
            While (Found)
                Add 1 to iCnt
                Move (String(iCnt)+"/"+String(iFS)) to sMess
                Set Label to sMess  
                Send OutputMIOrdH
                Find GT MIORDH.Recnum
            Loop
        
            Close_Output channel 9
            Close_Output channel 8
            Close_Output channel 7
            Close_Output channel 6
            Set Label to sLabel
            Send Info_Box "Process Finished, the file is saved" "Information"
        End_Procedure // OnClick
        
        
        Procedure OutputMIOrdH
            String  sAADeop sDeli sMIOrdHRecr s1
            Integer iRecnum
        
            Move MIORDH.Recnum  to iRecnum
            Move MIORDH.AA_DEOP to sAADeop
            If (iRecnum<=0) Begin
                Send Stop_Box ("è®Êô¢û£ò £ú ´û§ ú§ú®ö„ úöö®ò≠„ ´¶¨ ÉÑéè: "+Trim(MIORDH.AA_DEOP)) "ë≠¢ò£ò 1101"
                Procedure_Return
            End
            Move ","                to sDeli
        
            //---
            Write   channel 9   '"'
            Write   channel 9   'YCQR'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column B  íÁß¶™ ë¨£ô¶¢òÂ¶¨
            Write   channel 9   '"'
            Write   channel 9   'GR02'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column C  é®öò§†©£Ê™ è‡¢„©ú‡§ Ñ¢¢·õò™
            Write   channel 9   '"'
            Write   channel 9   '03'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column D  âò§·¢† É†ò§¶£„™
            Write   channel 9   '"'
            Write   channel 9   '04'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column E  í£„£ò (Segment)
            Write   channel 9   '"'
            Write   channel 9   '???'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column F  Sales Office	
            Write   channel 9   '"'
            Write   channel 9   '???'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column G  Sales Group	
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.CLIENT_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column H  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ ßú¢·´û 	
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.CN_CODE))  // ??? 
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column I  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ ßò®ò¢„ß´û (‚®ö¶¨) 	
            Clear MICN
            Move MIORDH.CN_CODE to MICN.CN_CODE
            Find Eq MICN by Index.5
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.CN_SLS_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column J  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ è‡¢û´„	
            Clear MICLIENT
            Move MIORDH.CLIENT_ID to MICLIENT.CLIENT_ID
            Find Eq MICLIENT by Index.6
            Clear MIPRESP
            Move MICLIENT.PRESP_ID to MIPRESP.PRESP_ID
            Find EQ MIPRESP by Index.7
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIPRESP.PRESP_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column K  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ è¢û®‡´„	
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.CN_CNT_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column L  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ Ñ®ö¶¢·ô¶¨
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.MHXANIK_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column M  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ ãûÆò§†°¶Á	
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.CN_CODE))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column N  èò¢ò†Ê™ °Á®†¶™ °‡õ†°Ê™ Î®ö¶¨ (ìß¶-Î®ö¶¨)	
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.DEOP_DATE))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column O  à©ÆÁ™ ÄßÊ	
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.DEOP_LHXH))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column P  à©ÆÁ™ Î‡™	
            
            If (MICN.TROPOS_METAF="C&F") Move "CFR" to s1
            Else                         Move "FOB" to s1
            Write   channel 9   '"'
            Write   channel 9   s1
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Q  Ó®¶™ èò®·õ¶©û™	
            
            Write   channel 9   '"'
            Write   channel 9   (Trim(fsTropoiPlhromhsPelath(Self,Trim(MIORDH.TIMEOUT))))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column R  Ó®¶™ è¢û®‡£„™	
            
            Write   channel 9   '"'
            Write   channel 9   '???' // X - INCOMING CHECKS
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column S  í®Êß¶™ è¢û®‡£„™	
            
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.ELEIPH))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column T  Ñ¢¢ú†ß‚™ î¶®´Â¶ (©ú m3)
            
            Write   channel 9   '"'
            Write   channel 9   '???' // 111111111 (â‡õ†°Ê™ ë°¨®¶õ‚£ò´¶™)
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Y  Reference â‡õ†°Ê™ ì¢†°¶Á (Êß‡™ ‚Æú† ¶®†©´úÂ ©´ò migration ò®ÆúÂò ´¶¨ MM)
            
            Write   channel 9   '"'
            Write   channel 9   '???' // R001 - ã¶§·õò Ñ´.ë°¨®¶õ. Ä§´†£·Æú†ò™
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Z  Ñ®ö¶©´·©†¶ ßò®·õ¶©û™	
            
            Write   channel 9   '"'
            Write   channel 9   '???' // GR0101 - R001  0,1 - 10 km
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AA  ÖÈ§û	
            
            Write   channel 9   '"'
            Write   channel 9   '???' // ?Éú§ úÂ§ò† òß¶ ´ò Details ?
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AB  è¶©Ê´û´ò	
            
            Write   channel 9   '"'
            Write   channel 9   '???'  // ?Éú§ úÂ§ò† òß¶ ´ò Details ?
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AC  ã¶§·õò ã‚´®û©û™	
            
            Write   channel 9   '"'
            Write   channel 9   'EUR'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AD  åÊ£†©£ò
            // è®¶©üú´¶¨£ú ú£ú†™ ´¶ ÄÄ ÉÑéè ? 
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.AA_DEOP))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AE  

            //Write   Channel 9   sDeli
            //---
            Writeln channel 9
        
            //Send OutputPresp (Trim(sPrespID))
        End_Procedure

        //AB-StoreEnd
    End_Object    // Button5

    Object TextBox10 is a TextBox
        Set Label to "Ó§¶£ò ò®ÆúÂ¶¨"
        Set Auto_Size_State to False
        Set Location to 34 53
        Set Size to 10 55
        Set TypeFace to "MS Sans Serif"
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

End_Object // ExportFromSMSMI2DEOP


