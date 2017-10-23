
Use DBVIEW.SUB

//AB/ Project Data Entry View
//AB/ Object prj is a View_Project
//AB/     Set Size to 230 325

//Open SYSCURXR
//Open COMPANY

Use File_dlg.pkg
Use cComDPDLG.pkg
Use cComXFIND.pkg
Use BUTTON.Sub
Use Windows.pkg


Open Clients
Open CN
Open CONSTRCT
Open Salesmen
Open MHXANIK
Open PAYRESP
Open CODEMAST 
Open CODETYPE
Open BTNORDH
Open BTNORDD
Open AREAS
Open CITIES
Open TOWNS
Open COUNTRY

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
Open MICITIES
Open MITOWNS
Open MICOUNTR




Activate_View Activate_Migrate101 for Migrate101

Object Migrate101 is a dbView

    Set Border_Style to Border_Thick
    Set Size to 107 404
    Set Location to 9 5

    Property Integer piChoice public 0

    Set Label to "Äß¶©´¶¢„ £ò®°ò®†©£‚§‡§ Ñöö®ò≠È§ òß¶ ã¶§·õò ©´û§ Ñ§¶ß¶†û£‚§û Å·©û"

    Procedure Activate_View Returns Integer
        Integer rVal
        String  sFolderInitial

        Forward Get Msg_Activate_View to rVal

        Open tmplg
        Open tmpPagia
        
        Open tmpPagia Mode DF_EXCLUSIVE
        ZeroFile tmpPagia
        Open tmpPagia Mode DF_SHARE
        
        Open tmplg Mode DF_EXCLUSIVE
        ZeroFile tmplg
        Open tmplg Mode DF_SHARE

        Procedure_Return rVal
    End_Procedure



    Use chartranslate.pkg

    Function Utf8ToOemString Global String sUtf8String Returns String
        Address aString
        String sOemString
        Boolean bVoid
        //Move (Utf8ToOemBuffer(sUtf8String, CStringLength(sUtf8String))) to aString
        Move (Utf8ToOemBuffer(AddressOf(sUtf8String), CStringLength(sUtf8String))) to aString
        Move aString to sOemString
        Move (Free(aString)) to bVoid
        Function_Return sOemString
    End_Function

    Function OemToUtf8String Global String sUtf8String Returns String
        Address aString
        String sOemString
        Boolean bVoid
        //Move (OemToUtf8Buffer(sUtf8String, CStringLength(sUtf8String))) to aString
        Move (OemToUtf8Buffer(AddressOf(sUtf8String), CStringLength(sUtf8String))) to aString
        Move aString to sOemString
        Move (Free(aString)) to bVoid
        Function_Return sOemString
    End_Function

//    Object btnSub1 is a Button
//        Set Size to 20 383
//        Set Location to 87 8
//        Set Label to "Ñßú•ú®öò©Âò 1"
//        
//        Set Visible_State to False
//        Set Enabled_State to False
//        
//        Procedure OnClick
//            Integer iFileNumber iFields iField_Type
//            String  sFullName sFileName sStr sPedio sLabel sName
//
//            Get Label to sLabel
//
//            Move Clients.File_Number to iFileNumber
//            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
//            Clear Clients
//            Move 1 to Clients.EXPORTFLAG
//            Find GE Clients by Index.12
//            While ((Found) and (Clients.EXPORTFLAG=1))
//                Set Label to ("Updating Clients.... "+Trim(Clients.Client_ID))
//                
//                String sClientCode sClientPresp
//                Move Clients.CLIENT_ID to sClientCode
//                
//                Clear MICLIENT
//                Move Clients.CLIENT_AFM to MIClient.CLIENT_AFM
//                Find GE MICLIENT by Index.8
//                If ((Found) and (MIClient.CLIENT_AFM=Clients.CLIENT_AFM)) Begin
//                    Move MIClient.CLIENT_ID to sClientCode
//                    Move MIClient.PRESP_ID  to sClientPresp
//                End
//                Else Begin
//                    Clear MIClient
//                    For FieldIndex from 0 to iFields
//                        Move (Trim(Clients.Recnum&)) to MIClient.Recnum&
//                    Loop
//                    SaveRecord MIClient
//                    Move Clients.CLIENT_ID to sClientCode
//                    Move Clients.PRESP_ID  to sClientPresp
//                End
//
//
//
//
//
//                Find GT Clients by Index.12
//            Loop
//
//            
////            Move CN.File_Number to iFileNumber
////            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
////            Clear CN
////            Move 1 to CN.EXPORTFLAG
////            Find GE CN by Index.9
////            While ((Found) and (CN.EXPORTFLAG=1))
////                Set Label to ("Updating CN.... "+Trim(CN.CN_Code))
////                Clear MICN
////                For FieldIndex from 0 to iFields
////                    Get_Attribute DF_FIELD_NAME of iFileNumber FieldIndex to sName
////                    //Showln (String(FieldIndex)) "   " (Trim(sName)) "    "  (Trim(CN.Recnum&))
////                    Move (Trim(CN.Recnum&)) to MICN.Recnum&
////                Loop
////                SaveRecord MICN
////                Find GT CN by Index.9
////            Loop
//
//            Move CN.File_Number to iFileNumber
//            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
//            Clear CN
//            Find GE CN.Recnum
//            While (Found) 
//                Set Label to ("Updating CN.... "+Trim(CN.CN_Code))
//                If (CN.EXPORTFLAG=1) Begin
//                    Clear MICN
//                    For FieldIndex from 0 to iFields
//                        Get_Attribute DF_FIELD_NAME of iFileNumber FieldIndex to sName
//                        Move (Trim(CN.Recnum&)) to MICN.Recnum&
//                    Loop
//                    SaveRecord MICN
//                End
//                Find GT CN.Recnum
//            Loop
//
//
//
//            Move Constrct.File_Number to iFileNumber
//            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
//            Clear Constrct
//            Move 1 to Constrct.EXPORTFLAG
//            Find GE Constrct by Index.6
//            While ((Found) and (Constrct.EXPORTFLAG=1))
//                Set Label to ("Updating Constrct.... "+Trim(Constrct.CNT_ID))
//                Clear MIConstr
//                For FieldIndex from 0 to iFields
//                    Move (Trim(Constrct.Recnum&)) to MIConstr.Recnum&
//                Loop
//                SaveRecord MIConstr
//                Find GT Constrct by Index.6
//            Loop
//
//
//            Move Mhxanik.File_Number to iFileNumber
//            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
//            Clear Mhxanik
//            Move 1 to Mhxanik.EXPORTFLAG
//            Find GE Mhxanik by Index.5
//            While ((Found) and (Mhxanik.EXPORTFLAG=1))
//                Set Label to ("Updating Mhxanik.... "+Trim(Mhxanik.Mhx_ID))
//                Clear MIMhxan
//                For FieldIndex from 0 to iFields
//                    Move (Trim(Mhxanik.Recnum&)) to MIMhxan.Recnum&
//                Loop
//                SaveRecord MIMhxan
//                Find GT Mhxanik by Index.5
//            Loop
//
//
//            Move Payresp.File_Number to iFileNumber
//            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
//            Clear Payresp
//            Move 1 to Payresp.EXPORTFLAG
//            Find GE Payresp by Index.9
//            While ((Found) and (Payresp.EXPORTFLAG=1))
//                Set Label to ("Updating Payresp.... "+Trim(Payresp.Presp_ID))
//                Clear MIPresp
//                For FieldIndex from 0 to iFields
//                    Move (Trim(Payresp.Recnum&)) to MIPresp.Recnum&
//                Loop
//                SaveRecord MIPresp
//                Find GT Payresp by Index.9
//            Loop
//
//
//            Move Salesmen.File_Number to iFileNumber
//            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
//            Clear Salesmen
//            Move 1 to Salesmen.EXPORTFLAG
//            Find GE Salesmen by Index.5
//            While ((Found) and (Salesmen.EXPORTFLAG=1))
//                Set Label to ("Updating Salesmen.... "+Trim(Salesmen.SLS_ID))
//                Clear MISalesm
//                For FieldIndex from 0 to iFields
//                    Move (Trim(Salesmen.Recnum&)) to MISalesm.Recnum&
//                Loop
//                SaveRecord MISalesm
//                Find GT Salesmen by Index.5
//            Loop
//
//
//        End_Procedure // OnClick
//
//    End_Object

    Object oButtonSub1 is a ButtonSub
        Set Size to 14 171
        Set Location to 86 106
        Set Label to "Clear all data in Master DB SMSMI"
            //AB-StoreStart
            Procedure OnClick
                Open MIClient   Mode DF_EXCLUSIVE
                Open MICN       Mode DF_EXCLUSIVE
                Open MICONSTR   Mode DF_EXCLUSIVE
                Open MISalesm   Mode DF_EXCLUSIVE
                Open MIMHXAN    Mode DF_EXCLUSIVE
                Open MIPRESP    Mode DF_EXCLUSIVE
                
                ZeroFile MICLIENT
                ZeroFile MICN
                ZeroFile MIConstr
                ZeroFile MISalesm
                ZeroFile MIMhxan
                ZeroFile MIPresp
    
                Open MIClient   Mode DF_SHARE
                Open MICN       Mode DF_SHARE
                Open MICONSTR   Mode DF_SHARE
                Open MISalesm   Mode DF_SHARE
                Open MIMHXAN    Mode DF_SHARE
                Open MIPRESP    Mode DF_SHARE
            End_Procedure // OnClick
            //AB-StoreEnd
    End_Object


    //////////////////////////////////
    // NEW BUTTON Yannis 26/07/2017 //
    //////////////////////////////////
    Object btnSub2 is a Button
        Set Size to 20 383
        Set Location to 54 9
        Set Label to "Äß¶©´¶¢„"


        Procedure OnClick
            String sFilename sLabel sClientCode sClientRecr 
            Integer bIsCreated
            Integer iWhat iVal
            Get Label to sLabel
        
            Integer iCnt iFS iExportFlag iRecn
            Move 0 to iCnt
            File_Size Clients to iFS
            String sMess sExportStatus 
            Date dExportDate
            
            Integer isChecked
            Get Checked_State of chkClients to isChecked
            
            If (isChecked) Begin
                Clear Clients
            
                Move 1 to Clients.ExportFlag
                Find GE Clients by Index.12
                While ((Found) and (Clients.ExportFlag=1))
                    Add 1 to iCnt
                    // Keep values
                    Move Clients.EXPORTFLAG     to iExportFlag
                    Move Clients.EXPORTSTATUS   to sExportStatus
                    Move Clients.EXPORTDATE     to dExportDate
                    Move Clients.Recnum         to iRecn
                    //                
                    Move ("Clients... "+String(iCnt)) to sMess
                    Set Label to sMess
            
                    Send CopyClients
    
                    // Restore values
                    Clear Clients
                    Move iExportFlag    to Clients.EXPORTFLAG
                    Move sExportStatus  to Clients.EXPORTSTATUS
                    Move dExportDate    to Clients.EXPORTDATE
                    Move iRecn          to Clients.Recnum
                    //                
    
                    Find GT Clients by Index.12
                Loop
            End // If (isChecked) chkClients
            
            Get Checked_State of chkCN to isChecked
            If (isChecked) Begin
                Move 0 to iCnt
                Clear CN
                //Move 1 to CN.ExportFlag
                //Find GE CN by Index.9
                //While ((Found) and (CN.ExportFlag=1))
                //Move 1 to CN.ExportFlag
                Find GE CN.Recnum
                //While ((Found) and (CN.ExportFlag=1))
                While (Found)
                    If (CN.ExportFlag=1) Begin
                    
                        Add 1 to iCnt
                        // Keep values
                        Move CN.EXPORTFLAG     to iExportFlag
                        Move CN.EXPORTSTATUS   to sExportStatus
                        Move CN.EXPORTDATE     to dExportDate
                        Move CN.Recnum         to iRecn
                        //                
                        Move ("CN... "+String(iCnt)) to sMess
                        Set Label to sMess
                
                        Clear CLIENTS
                        Move CN.CLIENT_ID to Clients.CLIENT_ID
                        Find Eq CLIENTS by Index.6
                        Clear MICLient
                        Move Clients.CLIENT_AFM to MIClient.CLIENT_AFM
                        Find GE MICLIENT by Index.8
                        
                        Integer iSkip
                        Move 0 to iSkip
                        
                        If (not ((Found) and (MIClient.CLIENT_AFM=Clients.CLIENT_AFM)) ) Begin
                            Showln "SKIPPING CN = " CN.CN_CODE "  Not Found MIClient AFM = " Clients.CLIENT_AFM  "  Client ID = " Clients.CLIENT_ID
                            //Send Stop_Box ("Found CN = "+CN.CN_CODE+"  But not MIClient AFM = "+Clients.CLIENT_AFM) "Error 3001"
                            //Procedure_Return
                            Move 1 to iSkip
                        End
                        Move MICLient.CLient_ID to sClientCode
        
                        If (iSkip=0) Send CopyERGA CN.CN_Code MIClient.CLIENT_ID MIClient.CLIENT_RECR
        
                        // Restore values
                        Clear CN
                        Move iExportFlag    to CN.EXPORTFLAG
                        Move sExportStatus  to CN.EXPORTSTATUS
                        Move dExportDate    to CN.EXPORTDATE
                        Move iRecn          to CN.Recnum
                        //                
                    End
                    Find GT CN.Recnum
                    //Find GT CN by Index.9
                Loop
            End // If (isChecked) chkCN

            Set Label to sLabel
            Send Info_Box "Process Finished" "Information"
        End_Procedure // OnClick
        
        
        Procedure CopyClients
            String  sClientID sDeli sPrespID sLabel sAFM sClientCode sClientPresp
            Integer iCheckAFM iRecnum isFound

            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr sPedio sName

            Get Label to sLabel

            //========================
            // Tsekaroyme ton Pelath
            Move Clients.Recnum to iRecnum
            If (iRecnum=0) Begin
                Send Stop_Box "ë¶ôò®Ê è®Êô¢û£ò Ñßú•ú®öò©Âò™" "ë≠·¢£ò 6900"
                Procedure_Return
            End
            
            Move Clients.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear MIClient
            Move Clients.Client_AFM to MIClient.Client_AFM
            Find GE MICLIENT by Index.8
            If ((Found) and (MIClient.Client_AFM=Clients.Client_AFM)) Begin
                // An yparxei pelaths me idio AFM pou epexergasthkame
                // prohgoymena tote that xrhsimopoihsoume ta stoixeia
                // aytou tou pelath, kai s' ayton tha desoume kai ta erga
                Move MIClient.CLIENT_ID to sClientCode
                Move MIClient.PRESP_ID  to sClientPresp
                //
                //
            End
            Else Begin
                // An DEN yparxei pelaths me idio AFM tote ton anoigoyme
                Clear MIClient
                For FieldIndex from 0 to iFields
                    Move (Trim(Clients.Recnum&)) to MIClient.Recnum&
                Loop
                SaveRecord MIClient
                Move MIClient.CLIENT_ID to sClientCode
                Move MIClient.PRESP_ID  to sClientPresp
            End
             
            Move 0 to isFound
            Move Payresp.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear Payresp
            Move sClientPresp to Payresp.PRESP_ID
            Find EQ Payresp by Index.7
            If (Found) Begin
                Clear MIPresp
                Move sClientPresp to MIPresp.PRESP_ID
                Find EQ MIPresp by Index.7
                If (Found) Move 1 to isFound
                If (isFound=1) Reread MIPRESP
                For FieldIndex from 0 to iFields
                    Move (Trim(Payresp.Recnum&)) to MIPresp.Recnum&
                Loop
                SaveRecord MIPresp
                If (isFound) Unlock
            End
        
            // Aparaithth epanatopothethsh sto geniko loop
            // ton pelaton bash recnum afou endexetai na allaxame
            // trexon recod pelath and to afm tou yparxei hdh se allo pelath
            Clear Clients
            Move iRecnum to Clients.Recnum
            Find Eq Clients.Recnum
            
            Integer isChecked
            Get Checked_State of chkUnmark to isChecked
            If (isChecked) Begin
                Reread CLIENTS
                Move 0      to Clients.EXPORTFLAG
                Move "SENT" to Clients.EXPORTSTATUS
                Sysdate        Clients.EXPORTDATE
                SaveRecord CLIENTS
                Unlock
            End
        End_Procedure
        
        
        Procedure CopyERGA String asCNCode String asActualClientID String asActualClientRecr
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr sPedio sLabel sName
        
            String sSLS sCNT sMHX
        
            Integer isFound
            Move 0 to isFound
            
            Clear CN
            Move asCNCode to CN.CN_CODE
            Find EQ CN by Index.5
            If ((Found) and (CN.EXPORTFLAG=1)) Begin
                Clear MICLIENT
                Move asActualClientID to MIClient.CLIENT_ID
                Find Eq MICLIENT by Index.6
                If (not(Found)) Begin
                    Send Stop_Box ("Found CN = "+CN.CN_CODE+"  But MIClient ID is UNKNOWN ID = "+asActualClientID) "Error 5021"
                    Procedure_Return
                End
            End
            Else Begin
                Send Stop_Box ("CANNOT FIND CN = "+asCNCode) "Error 3003"
                Procedure_Return
            End

            //--------
            // Check if we need to edit existing record
            //--------
            Move CN.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            
            Clear MICN
            Move asCNCode to MICN.CN_CODE
            Find Eq MICN by Index.5
            If (Found) Begin
                Reread MICN
                For FieldIndex from 0 to iFields
                    //Get_Attribute DF_FIELD_NAME of iFileNumber FieldIndex to sName
                    //Showln (String(FieldIndex)) "   " (Trim(sName)) "    "  (Trim(CN.Recnum&))
                    Move (Trim(CN.Recnum&)) to MICN.Recnum&
                Loop
                Move asActualClientID   to MICN.CLIENT_ID
                Move asActualClientRecr to MICN.CLIENT_RECR
                SaveRecord MICN
                Unlock
            End
            Else Begin
                Clear MICN
                For FieldIndex from 0 to iFields
                    //Get_Attribute DF_FIELD_NAME of iFileNumber FieldIndex to sName
                    //Showln (String(FieldIndex)) "   " (Trim(sName)) "    "  (Trim(CN.Recnum&))
                    Move (Trim(CN.Recnum&)) to MICN.Recnum&
                Loop
                Move asActualClientID   to MICN.CLIENT_ID
                Move asActualClientRecr to MICN.CLIENT_RECR
                SaveRecord MICN
            End

            Integer isChecked
            Get Checked_State of chkUnmark to isChecked
            If (isChecked) Begin
                Reread CN
                Move 0      to CN.EXPORTFLAG
                Move "SENT" to CN.EXPORTSTATUS
                Sysdate        CN.EXPORTDATE
                SaveRecord CN
                Unlock
            End

            Move 0 to isFound
            Move Constrct.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear Constrct
            Move CN.CN_CNT_ID to Constrct.CNT_ID
            Find EQ Constrct by Index.5
            If (Found) Begin
                Clear MIConstr
                Move Constrct.CNT_ID to MIConstr.CNT_ID
                Find EQ MIConstr by Index.5
                If (Found) Move 1 to isFound
                If (isFound=1) Reread MIConstr
                For FieldIndex from 0 to iFields
                    Move (Trim(Constrct.Recnum&)) to MIConstr.Recnum&
                Loop
                SaveRecord MIConstr
                If (isFound) Unlock
            End
         
            Move 0 to isFound
            Move Mhxanik.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear Mhxanik
            Move CN.MHXANIK_ID to Mhxanik.MHX_ID
            Find EQ Mhxanik by Index.4
            If (Found) Begin
                Clear MIMHXAN
                Move Mhxanik.MHX_ID to MIMhxan.MHX_ID
                Find EQ MIMhxan by Index.4
                If (Found) Move 1 to isFound
                If (isFound=1) Reread MIMhxan
                For FieldIndex from 0 to iFields
                    Move (Trim(Mhxanik.Recnum&)) to MIMhxan.Recnum&
                Loop
                SaveRecord MIMhxan
                If (isFound) Unlock
            End
         
            Move 0 to isFound
            Move Salesmen.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear Salesmen
            Move CN.CN_SLS_ID to Salesmen.SLS_ID
            Find EQ Salesmen by Index.4
            If (Found) Begin
                Clear MISalesm
                Move Salesmen.SLS_ID to MISalesm.SLS_ID
                Find EQ MISalesm by Index.4
                If (Found) Move 1 to isFound
                If (isFound=1) Reread MISalesm
                For FieldIndex from 0 to iFields
                    Move (Trim(Salesmen.Recnum&)) to MISalesm.Recnum&
                Loop
                SaveRecord MISalesm
                If (isFound) Unlock
            End
        End_Procedure
    End_Object

    Object btnTestRW is a Button  
        Set Size to 20 383
        Set Location to 121 9
        Set Label to "Read Clients SMS Server PIS2003  >>  Write CLients Server PISDEV"
        
        Set Visible_State to False
        Set Enabled_State to False
        
        Procedure OnClick
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr sPedio sLabel sName

            Get Label to sLabel

//            Clear MICLIENT
//            Find GE MICLIENT by Index.1
//            While (Found)
//                Set Label to ("Deleting Old MiClient records... "+Trim(MiClient.CLIENT_NAME))
//                Delete MICLIENT
//                Find GT MICLIENT by Index.1
//            Loop
    
            Move Clients.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear Clients
            Move 1 to Clients.EXPORTFLAG
            Find GE Clients by Index.12
            While ((Found) and (Clients.EXPORTFLAG=1))
                Set Label to ("Updating Clients.... "+Trim(Clients.Client_ID))
                
                String sClientCode sClientPresp
                Move Clients.CLIENT_ID to sClientCode
                
                Clear MICLIENT
                Move Clients.CLIENT_AFM to MIClient.CLIENT_AFM
                Find GE MICLIENT by Index.8
                If ((Found) and (MIClient.CLIENT_AFM=Clients.CLIENT_AFM)) Begin
                    Move MIClient.CLIENT_ID to sClientCode
                    Move MIClient.PRESP_ID  to sClientPresp
                End
                Else Begin
                    Clear MIClient
                    For FieldIndex from 0 to iFields
                        Move (Trim(Clients.Recnum&)) to MIClient.Recnum&
                    Loop
                    SaveRecord MIClient
                    Move Clients.CLIENT_ID to sClientCode
                    Move Clients.PRESP_ID  to sClientPresp
                End
                Find GT Clients by Index.12
            Loop

            Set Label to sLabel

        End_Procedure // OnClick

    End_Object

    Object chkUnmark is a CheckBox
        Set Size to 10 11
        Set Location to 7 126
        Set Checked_State to True
        Set Label to "•ú£·°ò®û©ú úßú•ú®öò©£‚§ú™ úöö®ò≠‚™"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkClients is a CheckBox
        Set Size to 10 50
        Set Location to 22 126
        Set Label to "Ñßú•ú®öò©Âò èú¢ò´È§"
        Set Checked_State to True
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkCN is a CheckBox
        Set Size to 10 50
        Set Location to 36 126
        Set Label to "Ñßú•ú®öò©Âò Î®ö‡§"
        Set Checked_State to True
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

End_Object

//AB/ End_Object    // prj
