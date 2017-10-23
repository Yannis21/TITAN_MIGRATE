
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

//
//Open Sysfile
//Open Clients
//Open CN
//Open CONSTRCT
//Open Salesmen
//Open MHXANIK
//Open PAYRESP
//Open CODEMAST
//Open CODETYPE
//Open BTNORDH
//Open BTNORDD
//Open AREAS
//Open CITIES
//Open TOWNS
//Open COUNTRY
//Open CNZONES
//Open BRZONES
//Open ZONES
//
//Open MIClient
//Open MICN
//Open MICONSTR
//Open MISalesm
//Open MIMHXAN
//Open MIPRESP
//Open MICodtyp
//Open MIcodema
//Open MIORDH
//Open MIORDD
//Open MIAREAS
//Open MICITIES
//Open MITOWNS
//Open MICOUNTR
//

Activate_View Activate_MI_Migrate_Send_Data_To_Master for MI_Migrate_Send_Data_To_Master

Object MI_Migrate_Send_Data_To_Master is a dbView

    Set Border_Style to Border_Thick
    Set Size to 219 404
    Set Location to 15 14

    Property Integer piChoice public 0

    On_Key Key_Alt+Key_O Send OpenMe

    Set Label to "Äß¶©´¶¢„ £ò®°ò®†©£‚§‡§ Ñöö®ò≠È§ òß¶ ã¶§·õò ©´û§ Ñ§¶ß¶†û£‚§û Å·©û"

    Procedure OpenMe
        Integer iState
        Get Visible_State of frmJSBD        to iState
        Set Visible_State of frmJSBD        to (1-iState)
        Set Enabled_State of frmJSBD        to (1-iState)
        //Set Visible_State of btnDelSMSMI    to (1-iState)
        //Set Enabled_State of btnDelSMSMI    to (1-iState)
    End_Procedure

    Function Check_Afm Global String Afm_Num Returns Integer
        Integer iii Num1 Num2
        Move (Trim(Afm_Num)) to Afm_Num
        For iii from 1 to (Length(Trim(Afm_Num)))
            If not (Mid(Afm_Num,1,iii)) In  "0123456789" Function_Return 3
        Loop
        Move (Right(Afm_Num,1)) to Num2
        If (Length(Afm_Num)<>9) Function_Return 2
        Move 0 to Num1
        For iii from 1 to 8
            Add ((Mid(Afm_Num,1,iii)) * (2 ^ (9 - iii))) to Num1
        Loop
        Move (Mod(Num1,11)) to Num1
        If (Num1=10) Move 0 to Num1
        If (Num1=Num2)  Function_Return 0
        Else            Function_Return 1
    End_Function

    //============
    Function Write_City String asCityDescr Returns Integer
        Integer rVal
        Clear MICities
        Move 9999 to MICities.City_ID
        Find LE MICities by Index.1
        If (Found) Move (MICities.City_ID+1)    to rVal
        Else       Move 1                       to rVal
        Clear MICities
        Move rVal           to MICities.CITY_ID
        Move asCityDescr    to MICities.CITY_DESCR
        SaveRecord MICities
        Function_Return rVal
    End_Function

    Function Write_Area String asAreaDescr Returns Integer
        Integer rVal
        Clear MIAreas
        Move 9999 to MIAreas.Area_ID
        Find LE MIAreas by Index.1
        If (Found) Move (MIAreas.Area_ID+1) to rVal
        Else       Move 1                   to rVal
        Clear MIAREAS
        Move rVal           to MIAreas.AREA_ID
        Move asAreaDescr    to MIAreas.AREA_DESCR
        SaveRecord MIAreas
        Function_Return rVal
    End_Function
    //============






    Procedure Activate_View Returns Integer
        Integer rVal
        String  sFolderInitial

        Set Value of frmJSBD to ""
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

    Object btnDelSMSMI is a ButtonSub
        Set Size to 14 171
        Set Location to 198 151
        Set Label to "Clear all data in Master DB SMSMI"

        Set Enabled_State to False
        Set Visible_State to False

            //AB-StoreStart
            Procedure OnClick
                Open MIClient   Mode DF_EXCLUSIVE
                Open MICN       Mode DF_EXCLUSIVE
                Open MICONSTR   Mode DF_EXCLUSIVE
                Open MISalesm   Mode DF_EXCLUSIVE
                Open MIMHXAN    Mode DF_EXCLUSIVE
                Open MIPRESP    Mode DF_EXCLUSIVE
                Open MICodtyp   Mode DF_EXCLUSIVE
                Open MIcodema   Mode DF_EXCLUSIVE
                Open MIORDH     Mode DF_EXCLUSIVE
                Open MIORDD     Mode DF_EXCLUSIVE
                Open MIAREAS    Mode DF_EXCLUSIVE
                Open MICITIES   Mode DF_EXCLUSIVE
                Open MITOWNS    Mode DF_EXCLUSIVE
                Open MICOUNTR   Mode DF_EXCLUSIVE

                ZeroFile MIClient
                ZeroFile MICN
                ZeroFile MICONSTR
                ZeroFile MISalesm
                ZeroFile MIMHXAN
                ZeroFile MIPRESP
                ZeroFile MICodtyp
                ZeroFile MIcodema
                ZeroFile MIORDH
                ZeroFile MIORDD
                ZeroFile MIAREAS
                ZeroFile MICITIES
                ZeroFile MITOWNS
                ZeroFile MICOUNTR

                Open MIClient   Mode DF_SHARE
                Open MICN       Mode DF_SHARE
                Open MICONSTR   Mode DF_SHARE
                Open MISalesm   Mode DF_SHARE
                Open MIMHXAN    Mode DF_SHARE
                Open MIPRESP    Mode DF_SHARE
                Open MICodtyp   Mode DF_SHARE
                Open MIcodema   Mode DF_SHARE
                Open MIORDH     Mode DF_SHARE
                Open MIORDD     Mode DF_SHARE
                Open MIAREAS    Mode DF_SHARE
                Open MICITIES   Mode DF_SHARE
                Open MITOWNS    Mode DF_SHARE
                Open MICOUNTR   Mode DF_SHARE
            End_Procedure // OnClick
            //AB-StoreEnd
    End_Object


    //////////////////////////////////
    // NEW BUTTON Yannis 26/07/2017 //
    //////////////////////////////////
    Object btnSub2 is a Button
        Set Size to 20 383
        Set Location to 175 13
        Set Label to "Äß¶©´¶¢„"


        Procedure OnClick
            String sFilename sLabel sClientCode sClientRecr sClientAFM
            Integer bIsCreated
            Integer iWhat iVal
            Get Label to sLabel

            Integer iCnt iFS iExportFlag iRecn
            Move 0 to iCnt
            File_Size Clients to iFS
            String sMess sExportStatus
            Date dExportDate

            Integer isChecked
            Integer iCheckAFM iChkNines iChkZeroes iChkBlanks iChkStars
            String  Zeroes Stars Nines
			Integer isGood


            
            // Yannis 16/10/20017
            // Allaxame seira epexergasias bazontas prota ta erga giati an epexergastoume
            // prota ton pekath kai to flag ta xemarkaristei einai energo, tote ta erga 
            // den tha pernagane giati kai ayta exetazoun an o pelaths einai markarismenos
            // gia na antigrafoun h oxi. Opote epexergazomaste prota ta erga (kai ta xemarkaroume)
            // prin to kanoume ayti stous pelates.
            File_Size CN to iFS
            Get Checked_State of chkCN to isChecked
            If (isChecked) Begin
                Move 0 to iCnt
                Clear CN
                Find GE CN.Recnum
                While (Found)
                    If (CN.ExportFlag=1) Begin
                        Add 1 to iCnt
                        //Move ("CN... "+String(iCnt)) to sMess
                        Move ("CN - Ñ®öò... "+String(iCnt)+" / "+String(iFS)) to sMess
                        Set Label to sMess

                        Clear CLIENTS
                        Move CN.CLIENT_ID to Clients.CLIENT_ID
                        Find Eq CLIENTS by Index.6
                        If (not(Found)) Begin
                            Move ("ë¶ôò®Ê ë≠·¢£ò ãÜ ÑÁ®ú©û èú¢·´û £‚©‡ Ñ®ö¶¨  CN.Client_ID="+CN.CLIENT_ID+"   CN="+CN.CN_CODE) to sMess
                            Send Stop_Box sMess "ë≠·¢£ò 8005"
                            Procedure_Return
                        End
                        Move Clients.CLIENT_ID      to sClientCode
                        Move Clients.CLIENT_RECR    to sClientRecr
                        Move Clients.CLIENT_AFM     to sClientAFM
                        Move CN.RECNUM              to iRecn

                        Integer iNoClientAllowed iNoCopy
                        Move 0 to iNoCopy
                        Get Checked_State of chkCNnoClient to iNoClientAllowed

                        If ( (iNoClientAllowed=0) and (Clients.EXPORTFLAG=0) ) Move 1 to iNoCopy

                        If (iNoCopy=0) Send CopyERGA CN.CN_Code sClientCode sClientRecr sClientAFM

                        Clear CN
                        Move iRecn to CN.RECNUM
                    End
                    Find GT CN.Recnum
                Loop
            End // If (isChecked) chkCN




            Get Checked_State of chkClients to isChecked

			Get Checked_State of ChkAFM 	to iCheckAFM
			Get Checked_State of chkNines   to iChkNines
			Get Checked_State of chkZeroes  to iChkZeroes
			Get Checked_State of chkStars   to iChkStars
			Get Checked_State of chkBlanks  to iChkBlanks

            Move "000000"   to Zeroes
            Move "*"        to Stars
            Move "999999"   to Nines

            File_Size Clients to iFS
            String sCountMess

            If (isChecked) Begin
                Clear Clients
                Find GE Clients.Recnum
                While (Found)
                    Add 1 to iCnt
                    Move ("Clients... "+String(iCnt)+" / "+String(iFS)) to sMess
                    Set Label to sMess
                    If (Clients.ExportFlag=1) Begin
            			Move 1 to isGood
            			If ((iCheckAFM =1) and (Check_AFM(Clients.Client_Afm)=0   )) Move 0 to isGood
            			If ((iChkZeroes=1) and (Clients.Client_AFM contains Zeroes)) Move 0 to isGood
            			If ((iChkNines =1) and (Clients.Client_AFM contains Nines )) Move 0 to isGood
            			If ((iChkStars =1) and (Clients.Client_AFM contains Stars )) Move 0 to isGood
            			If ((iChkBlanks=1) and (Trim(Clients.Client_AFM)=""       )) Move 0 to isGood
                        If (isGood=1) Send CopyClients Clients.RECNUM
                    End // If (Clients.ExportFlag=1) Begin
                    Find GT Clients.Recnum
                Loop
            End // If (isChecked) chkClients

            Set Label to sLabel
            Send Info_Box "Process Finished" "Information"
        End_Procedure // OnClick


        Procedure CopyClients Integer aiRecnum
            String  sClientID sDeli sPrespID sLabel sAFM sClientCode sClientPresp
            Integer iCheckAFM iRecnum isFound iCountFound iCountNew ichkDebug iSKIPALL

            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr sPedio sName

            Get Label to sLabel

            Clear Clients
            Move aiRecnum to Clients.Recnum
            Find Eq Clients.Recnum
            If (not(Found)) Begin
                Send Stop_Box "è®¶ô¢û£ò ©¶ôò®¶ ©´û§ úÁ®ú©û èú¢·´û" "ë≠·¢£ò 8860"
                Procedure_Return
            End

            //========================
            // Tsekaroyme ton Pelath
            Move Clients.CLIENT_ID  to sClientCode
            Move Clients.PRESP_ID   to sClientPresp
            Move aiRecnum           to iRecnum

            Integer isChecked
            Move 0 to iSKIPALL
            Move 0 to isFound
            Get Checked_State of chkClientsEdit to isChecked
            Get Checked_State of chkDebug       to ichkDebug

            Move Clients.File_Number to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
            Clear MIClient
            Move Clients.Client_AFM to MIClient.Client_AFM
            Find GE MICLIENT by Index.8
            If ((Found) and (MIClient.Client_AFM=Clients.Client_AFM)) Begin
                If (not(Checked_State(chkClientsEdit(Self)))) Move 1 to iSKIPALL //Procedure_Return
                If (isChecked=0) Move 1 to iSKIPALL //Procedure_Return

                Move Clients.CLIENT_ID to sClientCode
                Move Clients.PRESP_ID  to sClientPresp

                If ((Clients.Client_ID<>MICLIENT.CLIENT_ID) And (iSKIPALL=0)) Begin
                    Showln "é èú¢·´û™ " Clients.Client_Id "  " (ToAnsi(Trim(Clients.Client_Name))) ;
                        "  ô®‚üû°ú ô·©û Äîã ©´¶§ °‡õ†°Ê " MIClient.CLIENT_ID "  ©´¶ Ê§¶£ò " (ToAnsi(Trim(MIClient.Client_Name))) ;
                        "  °¶†§Ê Äîã = " Clients.Client_AFM
                    Reread MICLIENT
                    For FieldIndex from 0 to iFields
                        Move (Trim(Clients.Recnum&)) to MIClient.Recnum&
                    Loop
                    SaveRecord MIClient
                    Unlock
                    Move MIClient.CLIENT_ID to sClientCode
                    Move MIClient.PRESP_ID  to sClientPresp

                    Reread CLIENTS
                    Move "SENT" to Clients.EXPORTSTATUS
                    Sysdate        Clients.EXPORTDATE
                    SaveRecord CLIENTS
                    
                End
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

                Reread CLIENTS
                Move "SENT" to Clients.EXPORTSTATUS
                Sysdate        Clients.EXPORTDATE
                SaveRecord CLIENTS
            End

            //--------------------------------------------------
            //---- AREAS & CITIES (+Cities have TOWNS & COUNTRY)
            //--------------------------------------------------

            Integer iCityID iAreaID iTownID iCountryID iNewID
            String sCityDescr sAreaDescr sTownDescr sCountryDescr
            Move 0 to isFound
            Clear Areas
            Move Clients.Client_Area to Areas.AREA_ID
            Find EQ Areas by Index.1
            If (Found) Begin
                Clear MIAreas
                Move Areas.Area_DESCR to MIAreas.Area_DESCR
                Find GE MIAreas by Index.2
                If (not((Found) and (MIAreas.Area_DESCR=Areas.Area_DESCR))) Begin
                    Move (Write_Area(Self,Areas.AREA_DESCR)) to iAreaID
                End
                Else Move MIAreas.AREA_ID to iAreaID
                If (MiCLient.CLIENT_AREA<>iAreaID) Begin
                    Reread MICLIENT
                    Move iAreaID to MiCLient.CLIENT_AREA
                    SaveRecord MICLIENT
                    Unlock
                End
            End

            Clear Cities
            Move Clients.CLIENT_CITY_ID to Cities.City_ID
            Find EQ Cities by Index.1
            If (Found) Begin
                Clear MICities
                Move Cities.CITY_DESCR to MICities.City_DESCR
                Find GE MICities by Index.2
                If (not((Found) and (MICities.City_DESCR=Cities.CITY_DESCR))) Begin
                    Move (Write_City(Self,Cities.City_DESCR)) to iCityID
                End
                Else Move MICities.City_ID to iCityID
                If (MiCLient.CLIENT_City_ID<>iCityID) Begin
                    Reread MICLIENT
                    Move iCityID to MiCLient.CLIENT_City_ID
                    SaveRecord MICLIENT
                    Unlock
                End
            End
            //--------------------------------------------------
            //--------------------------------------------------
            Move 0 to isFound
            Move 0 to iSKIPALL
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
                If ((isFound=1) and (isChecked=0)) Begin
                    Move 1 to iSKIPALL //Procedure_Return
                End
                If (iSKIPALL=0) Begin
                    If (isFound=1) Reread MIPRESP
                    For FieldIndex from 0 to iFields
                        Move (Trim(Payresp.Recnum&)) to MIPresp.Recnum&
                    Loop
                    SaveRecord MIPresp
                    If (isFound) Unlock
                End
            End

            //// Aparaithth epanatopothethsh sto geniko loop
            //// ton pelaton bash recnum afou endexetai na allaxame
            //// trexon recod pelath and to afm tou yparxei hdh se allo pelath
            //Clear Clients
            //Move iRecnum to Clients.Recnum
            //Find Eq Clients.Recnum

            Move 0 to isChecked
            Get Checked_State of chkUnmark to isChecked
            If (isChecked>0) Begin
                Reread CLIENTS
                Move 0      to Clients.EXPORTFLAG
//                Move "SENT" to Clients.EXPORTSTATUS
//                Sysdate        Clients.EXPORTDATE
                SaveRecord CLIENTS
                Unlock
            End
        End_Procedure


        Procedure CopyERGA String asCNCode String asClientID String asClientRecr String asClientAFM
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr sPedio sLabel sName

            String sSLS sCNT sMHX

            Integer isFound ByPass ichkCNnoClient ichkDebug iSKIPALL

            Move 0 to isFound
            Move 0 to ByPass
            Move 0 to iSKIPALL

            Get Checked_State of chkCNnoClient  to ichkCNnoClient
            Get Checked_State of chkDebug       to ichkDebug

            Clear CN
            Move asCNCode to CN.CN_CODE
            Find EQ CN by Index.5
            If (not(Found)) Begin
                Send Stop_Box ("è®¶ô¢û£ò ©¶ôò®¶ ©´û§ SMS - úÁ®ú©û Î®ö¶¨ ß®¶™ ò§´†ö®ò≠„ = "+asCNCode) "ë≠·¢£ò 9860"
                Procedure_Return
            End
            Clear CLIENTS
            Move CN.CLIENT_ID to Clients.CLIENT_ID
            Find Eq CLIENTS by Index.6

            Integer iNoClientAllowed iNoCopy
            Move 0 to iNoCopy
            Get Checked_State of chkCNnoClient to iNoClientAllowed

            If ((iNoClientAllowed=0) and (Clients.EXPORTFLAG=0)) Move 1 to iNoCopy

            If (iNoCopy=0) Begin

                If (ichkDebug) Showln "SMS Client ID =" asClientID "   SMS Client_Recr = " asClientRecr "   SMS Client AFM = " asClientAFM "   SMS ERGO = " asCNCode

                Clear MICLIENT
                Move asClientAFM to MICLIENT.CLIENT_AFM
                Find GE MICLIENT by Index.8
                If ((Found) and (MIClient.CLIENT_AFM=Clients.CLIENT_AFM)) Begin
                    Move MIClient.CLIENT_ID      to asClientID
                    Move MIClient.CLIENT_RECR    to asClientRecr
                    If (ichkDebug) Showln "FOUND Client in SMSMI By AFM"
                End
                Else Begin
                    // Exoume energo record Clients apo thn SMS
                    If (Clients.Recnum<=0) Begin
                        Send Stop_Box "PROBLEM... NO CURRENT CLIENTS RECORD FROM SMS" "Error 3251"
                        Procedure_Return
                    End
                    Clear MIClient
                    Move asClientID to MIClient.CLIENT_ID
                    Find Eq MICLIENT by Index.6
                    If (not(Found)) Begin
                        If (ichkDebug) Begin
                            Showln "NOT FOUND Client in SMSMI By AFM or ID "
                            Showln "Å®‚üû°ú Î®ö¶ £ò®°ò®†©£‚§¶ Æ‡®Â™ §ò ß®¶¨ß·®Æú† ¶ èú¢·´û™ ©´û§ ú§¶ß¶†û£‚§û ô·©û (èú¢·´û™="  asClientID "  Î®ö¶=" CN.CN_CODE
                        End
                        If (ichkCNnoClient=1) Begin
                            If (ichkDebug) Showln "áò ò§¶†Æ´úÂ ´È®ò ¶ èú¢·´û™ ò¨´Ê£ò´ò"
                            Send CopyClients Clients.RECNUM
                        End
                    End
                End


                //--------
                // Check if we need to edit existing record
                //--------
                Move CN.File_Number to iFileNumber
                Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFields
                Move 0 to iSKIPALL
                Move 0 to isFound

                Clear MICN
                Move asCNCode to MICN.CN_CODE
                Find Eq MICN by Index.5
                If (Found) Move 1 to isFound

                If ((isFound) and (not(Checked_State(chkCNEdit(Self))))) Move 1 to iSKIPALL //Procedure_Return

                Integer isChecked
                Get Checked_State of chkCNEdit to isChecked
                If ((isFound) and (isChecked=0)) Move 1 to iSKIPALL  //Procedure_Return

                If (iSKIPALL=0) Begin
                    If (isFound) Reread MICN
                    For FieldIndex from 0 to iFields
                        Move (Trim(CN.Recnum&)) to MICN.Recnum&
                    Loop
                    Move asClientID   to MICN.CLIENT_ID
                    Move asClientRecr to MICN.CLIENT_RECR

                    Clear CNZONES
                    Move CN.CN_CODE to CNZONES.CN_CODE
                    Find GE CNZONES by Index.1
                    If ((Found=1) and (CN.CN_CODE=CNZONES.CN_CODE)) Begin

                        Clear BRZONES
                        Move CNZONES.BRZONE_RECR to BRZONES.BRZONE_RECR
                        Find Eq BRZONES by Index.2

                        Clear ZONES
                        Move BRZONES.ZONE_ID to Zones.ZONE_ID
                        Find Eq ZONES by Index.1

                        Move (Trim(Zones.ZONE_DESCR))   to MICN.CN_VDETAILS
                        Move Zones.ZONE_ID              to MICN.CN_CLIENTMATCH  // MICN.CN_PUMPLICENSE
                        Move Brzones.BRZONE_RECR        to MICN.CN_ZONE

                    End
                    SaveRecord MICN
                    If (isFound) Unlock

                    Reread CN
                    Move "SENT" to CN.EXPORTSTATUS
                    Sysdate        CN.EXPORTDATE
                    SaveRecord CN
                    
                    //--------------------------------------------------
                    //---- AREAS & CITIES (+Cities have TOWNS & COUNTRY)
                    //--------------------------------------------------
                        Move 0 to isFound
                        Integer iAreaID iCityID
                        Clear Areas
                        Move CN.CN_Area to Areas.AREA_ID
                        Find EQ Areas by Index.1
                        If (Found) Begin
                            Clear MIAreas
                            Move Areas.AREA_DESCR to MIAreas.Area_DESCR
                            Find GE MIAreas by Index.2
                            If (not((Found) and (MIAreas.Area_DESCR=Areas.AREA_DESCR))) Begin
                                Move (Write_Area(Self,Areas.AREA_DESCR)) to iAreaID
                            End
                            Else Move MIAreas.AREA_ID to iAreaID
                            If (MiCN.CN_AREA<>iAreaID) Begin
                                Reread MICN
                                Move iAreaID to MiCN.CN_AREA
                                SaveRecord MICN
                                Unlock
                            End
                        End

                        Clear Cities
                        Move CN.CN_CITY to Cities.City_ID
                        Find EQ Cities by Index.1
                        If (Found) Begin
                            Clear MICities
                            Move Cities.City_DESCR to MICities.City_DESCR
                            Find GE MICities by Index.2
                            If (not((Found) and (MICities.City_DESCR=Cities.City_DESCR))) Begin
                                Move (Write_City(Self,Cities.City_DESCR)) to iCityID
                            End
                            Else Move MICities.City_ID to iCityID
                            If (MiCN.CN_CITY<>iCityID) Begin
                                Reread MICN
                                Move iCityID to MiCN.CN_CITY
                                SaveRecord MICN
                                Unlock
                            End
                        End

                    //--------------------------------------------------
                    //--------------------------------------------------
                    Move 0 to isChecked
                    Get Checked_State of chkUnmark to isChecked
                    If (isChecked>0) Begin
                        Reread CN
                        Move 0      to CN.EXPORTFLAG
                        Move 1      to CN.POLH_RECR
//                        Move "SENT" to CN.EXPORTSTATUS
//                        Sysdate        CN.EXPORTDATE
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
                        If ((isFound) and (not(Checked_State(chkCNEdit(Self))))) Begin
                        End
                        Else Begin
                            If (isFound=1) Reread MIConstr
                            For FieldIndex from 0 to iFields
                                Move (Trim(Constrct.Recnum&)) to MIConstr.Recnum&
                            Loop
                            SaveRecord MIConstr
                            If (isFound) Unlock
                            //--------------------------------------------------
                            //---- AREAS & CITIES (+Cities have TOWNS & COUNTRY)
                            //--------------------------------------------------
                            //Integer iCityID iAreaID iTownID iCountryID iNewID
                            //String sCityDescr sAreaDescr sTownDescr sCountryDescr
                            Move 0 to isFound
                            Clear Areas
                            Move Constrct.CNT_AREA to Areas.AREA_ID
                            Find EQ Areas by Index.1
                            If (Found) Begin
                                Clear MIAreas
                                Move Areas.Area_DESCR to MIAreas.Area_DESCR
                                Find GE MIAreas by Index.2
                                If (not((Found) and (MIAreas.Area_DESCR=Areas.Area_DESCR))) Begin
                                    Move (Write_Area(Self,Areas.AREA_DESCR)) to iAreaID
                                End
                                Else Move MIAreas.AREA_ID to iAreaID
                                If (MIConstr.CNT_AREA<>iAreaID) Begin
                                    Reread MIConstr
                                    Move iAreaID to MIConstr.CNT_AREA
                                    SaveRecord MIConstr
                                    Unlock
                                End
                            End

                            Clear Cities
                            Move Constrct.CNT_CITY to Cities.City_ID
                            Find EQ Cities by Index.1
                            If (Found) Begin
                                Clear MICities
                                Move Cities.CITY_DESCR to MICities.City_DESCR
                                Find GE MICities by Index.2
                                If (not((Found) and (MICities.City_DESCR=Cities.CITY_DESCR))) Begin
                                    Move (Write_City(Self,Cities.City_DESCR)) to iCityID
                                End
                                Else Move MICities.City_ID to iCityID
                                If (MIConstr.CNT_CITY<>iCityID) Begin
                                    Reread MIConstr
                                    Move iCityID to MIConstr.CNT_CITY
                                    SaveRecord MIConstr
                                    Unlock
                                End
                            End
                            //--------------------------------------------------
                            //--------------------------------------------------
                        End
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
                        If ((isFound) and (not(Checked_State(chkCNEdit(Self))))) Begin
                        End
                        Else Begin
                            If (isFound=1) Reread MIMhxan
                            For FieldIndex from 0 to iFields
                                Move (Trim(Mhxanik.Recnum&)) to MIMhxan.Recnum&
                            Loop
                            SaveRecord MIMhxan
                            If (isFound) Unlock
                            //--------------------------------------------------
                            //---- AREAS & CITIES (+Cities have TOWNS & COUNTRY)
                            //--------------------------------------------------
                            //Integer iCityID iAreaID iTownID iCountryID iNewID
                            //String sCityDescr sAreaDescr sTownDescr sCountryDescr
                            Move 0 to isFound
                            Clear Areas
                            Move Mhxanik.MHX_AREA to Areas.AREA_ID
                            Find EQ Areas by Index.1
                            If (Found) Begin
                                Clear MIAreas
                                Move Areas.Area_DESCR to MIAreas.Area_DESCR
                                Find GE MIAreas by Index.2
                                If (not((Found) and (MIAreas.Area_DESCR=Areas.Area_DESCR))) Begin
                                    Move (Write_Area(Self,Areas.AREA_DESCR)) to iAreaID
                                End
                                Else Move MIAreas.AREA_ID to iAreaID
                                If (MIMhxan.MHX_AREA<>iAreaID) Begin
                                    Reread MIMhxan
                                    Move iAreaID to MIMhxan.MHX_AREA
                                    SaveRecord MIMhxan
                                    Unlock
                                End
                            End

                            Clear Cities
                            Move Mhxanik.MHX_CITY to Cities.City_ID
                            Find EQ Cities by Index.1
                            If (Found) Begin
                                Clear MICities
                                Move Cities.CITY_DESCR to MICities.City_DESCR
                                Find GE MICities by Index.2
                                If (not((Found) and (MICities.City_DESCR=Cities.CITY_DESCR))) Begin
                                    Move (Write_City(Self,Cities.City_DESCR)) to iCityID
                                End
                                Else Move MICities.City_ID to iCityID
                                If (MIMhxan.MHX_CITY<>iCityID) Begin
                                    Reread MIMhxan
                                    Move iCityID to MIMhxan.MHX_City
                                    SaveRecord MIMhxan
                                    Unlock
                                End
                            End
                            //--------------------------------------------------
                            //--------------------------------------------------
                        End
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
                        If ((isFound) and (not(Checked_State(chkCNEdit(Self))))) Begin
                        End
                        Else Begin
                            If (isFound=1) Reread MISalesm
                            For FieldIndex from 0 to iFields
                                Move (Trim(Salesmen.Recnum&)) to MISalesm.Recnum&
                            Loop
                            SaveRecord MISalesm
                            If (isFound) Unlock

                            //--------------------------------------------------
                            //---- AREAS & CITIES (+Cities have TOWNS & COUNTRY)
                            //--------------------------------------------------
                            //Integer iCityID iAreaID iTownID iCountryID iNewID
                            //String sCityDescr sAreaDescr sTownDescr sCountryDescr
                            Move 0 to isFound
                            Clear Areas
                            Move Salesmen.SLS_AREA to Areas.AREA_ID
                            Find EQ Areas by Index.1
                            If (Found) Begin
                                Clear MIAreas
                                Move Areas.Area_DESCR to MIAreas.Area_DESCR
                                Find GE MIAreas by Index.2
                                If (not((Found) and (MIAreas.Area_DESCR=Areas.Area_DESCR))) Begin
                                    Move (Write_Area(Self,Areas.AREA_DESCR)) to iAreaID
                                End
                                Else Move MIAreas.AREA_ID to iAreaID
                                If (MISalesm.SLS_AREA<>iAreaID) Begin
                                    Reread MISalesm
                                    Move iAreaID to MISalesm.SLS_AREA
                                    SaveRecord MISalesm
                                    Unlock
                                End
                            End

                            Clear Cities
                            Move Salesmen.SLS_CITY to Cities.City_ID
                            Find EQ Cities by Index.1
                            If (Found) Begin
                                Clear MICities
                                Move Cities.CITY_DESCR to MICities.City_DESCR
                                Find GE MICities by Index.2
                                If (not((Found) and (MICities.City_DESCR=Cities.CITY_DESCR))) Begin
                                    Move (Write_City(Self,Cities.City_DESCR)) to iCityID
                                End
                                Else Move MICities.City_ID to iCityID
                                If (MISalesm.SLS_CITY<>iCityID) Begin
                                    Reread MISalesm
                                    Move iCityID to MISalesm.SLS_CITY
                                    SaveRecord MISalesm
                                    Unlock
                                End
                            End
                            //--------------------------------------------------
                        End
                    End // If (Found) Begin
                End // If (iSKIPALL=0) Begin
            End // If (iNoCopy=0) Begin
        End_Procedure
    End_Object

    Object chkUnmark is a CheckBox
        Set Size to 10 11
        Set Location to 9 62
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
        Set Location to 33 62
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
        Set Location to 33 233
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

    Object frmJSBD is a Form
        Set Size to 13 70
        Set Location to 198 75
        Set Label_Col_Offset to 25
        Set Password_State to True
        Set Label_Row_Offset to 1

        Set Enabled_State to False
        Set Visible_State to False

        //AB-StoreStart
        Procedure OnChange
            String sStr
            Get Value item 0 to sStr
            Set Enabled_State of btnDelSMSMI  to (sStr="05091960")
            Set Visible_State of btnDelSMSMI  to (sStr="05091960")
        End_Procedure
        //AB-StoreEnd

    End_Object

    Object chkClientsEdit is a CheckBox
        Set Size to 10 50
        Set Location to 47 62
        Set Label to "ÑßÂ´®úØú EDIT ©´¶¨™ èÑäÄíÑë"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkCNEdit is a CheckBox
        Set Size to 10 50
        Set Location to 47 233
        Set Label to "ÑßÂ´®úØú EDIT ©´ò ÑêÇÄ"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkAFM is a CheckBox
        Set Size to 10 50
        Set Location to 99 93
        Set Label to "Ñ†©òö‡ö„ ô·©û Äîã ö†ò èú¢·´ú™ £ú Valid Äîã"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkNines is a CheckBox
        Set Size to 10 50
        Set Location to 115 93
        Set Label to "Äîã - Ñ•òÂ®ú©ú 999999"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkZeroes is a CheckBox
        Set Size to 10 50
        Set Location to 115 203
        Set Label to "Äîã - Ñ•òÂ®ú©ú 000000"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkStars is a CheckBox
        Set Size to 10 50
        Set Location to 131 93
        Set Label to "Äîã - Ñ•òÂ®ú©ú *"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkBlanks is a CheckBox
        Set Size to 10 50
        Set Location to 131 203
        Set Label to "Äîã - Ñ•òÂ®ú©ú °ú§·"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object chkCNnoClient is a CheckBox
        Set Size to 10 50
        Set Location to 61 233
        Set Label to "ÑßÂ´®úØú ÑêÇÄ Æ‡®Â™ §ò ‚Æú† ô®úüúÂ èú¢·´û™"
        //AB-StoreStart
        //Fires whenever the value of the control is changed
        //Procedure OnChange
        //    Boolean bChecked
        //
        //    Get Checked_State To bChecked
        //End_Procedure // OnChange
        //AB-StoreEnd
    End_Object

    Object oTextBox1 is a TextBox
        Set Size to 50 10
        Set Location to 70 243
        Set Label to "(áò ò§¶†Æ´úÂ ¶ èú¢·´û™ úò§ Æ®ú†ò©´úÂ)"
        Set TextColor to 2425272
    End_Object

    Object chkDebug is a CheckBox
        Set Size to 10 50
        Set Location to 161 145
        Set Label to "Åö·¢ú ãû§Á£ò´ò ©´û§ ¶üÊ§û"
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
