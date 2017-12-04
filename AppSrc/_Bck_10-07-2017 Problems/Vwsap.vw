//AB/ Project Vwsap
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Vwsap"
//AB/         Set ProjectFileName to "Vwsap.vw"
//AB/         Set GenerateFileName to "Vwsap.vw"

// Project Object Structure
//   Vwsap is a dbView
//     oInternetErrorArray is a Array
//     Tmpsap_DD is a DataDictionary
//     frmPassw is a FormSub
//     frmHmnia is a cSyDateForm
//     btnDelete is a ButtonSub
//     btnSend is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     The_Table is a dbGrid
//     btnMess is a ButtonSub
//     TextBoxSub2 is a TextBoxSub
//     frmAddress is a FormSub
//     frmConn is a FormSub
//     frmUserName is a FormSub
//     frmPassword is a FormSub
//     frmDirectory is a FormSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     frmMessage is a FormSub
//     oStatusForm is a EditSub
//     RadioGroup1 is a RadioGroup
//       Radio1 is a Radio
//       Radio2 is a Radio
//     frmAddRemoveHmniaApo is a cSyDateForm
//     frmAddRemoveHmniaEos is a cSyDateForm
//     Button1 is a Button

// Register all objects
Register_Object Button1
Register_Object btnDelete
Register_Object btnMess
Register_Object btnSend
Register_Object frmAddRemoveHmniaApo
Register_Object frmAddRemoveHmniaEos
Register_Object frmAddress
Register_Object frmConn
Register_Object frmDirectory
Register_Object frmHmnia
Register_Object frmMessage
Register_Object frmPassw
Register_Object frmPassword
Register_Object frmUserName
Register_Object oInternetErrorArray
Register_Object oStatusForm
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroup1
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object The_Table
Register_Object Tmpsap_DD
Register_Object Vwsap


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    Open Particle
    Open Cmoves
    Open wcmoves
    Open WitemxTr
    Open ItemTehn
    Use Keimeno.dg
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Form.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub
    Use Txtbox.Sub
    Use Edit.Sub

    Use TMPSAP.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Vwsap FOR Vwsap

    Object Vwsap is a dbView

        //AB-StoreTopStart
        Property Integer    piWhat                  Public  0
        
        Property Integer    piCount                 Public  0
        Property String     psBranchPhone           Public ''
        Property String     psSysfileFilesSendPath  Public ''
        Property String     psBranchSendPathFiles   Public ''
        Property String     psBranchSendPathConf    Public ''
        Property Integer    piFtpSecondsRetry       Public  0
        Property Integer    piFtpTimesExit          Public  0
        Property Integer    piReceivedOK            Public  0
        Property Integer    piTimesCount            Public  0
        Property Integer    piFileRetreived         Public  0
        Property Integer    piFromProgrammatismo    Public  0
        Property Integer    piErrorOccured          Public  0
        Property String     psBranchRecr            Public ''
        property Integer    bConnectionStatus       public False
        
        External_Function32 WNetGetUser "WNetGetUserA" MPR.DLL ;
            Pointer lpName Pointer lpUser_Name Pointer lpLength Returns DWord
        
        Function Network_User_Name Returns String
            Local String sName sLength
            Local Pointer lpName_Addr lpLength_Addr
            Local Integer iRetval
            Movestr (Repeat (Character (0), 255)) To sName
            GetAddress Of sName To lpName_Addr
            Movestr (DwordToBytes (255)) To sLength
            GetAddress Of sLength To lpLength_Addr
            Moveint (WNetGetUser (0, lpName_Addr, lpLength_Addr)) To iRetval
            If iRetval Eq 0 Function_Return (CString (sName))
            Else Function_Return "User Unknown"
        End_Function // Network_User_Name
        
        Function fsVresEggrafh String asFileName returns Integer
            Integer rVal
            Move (UpperCase(asFileName)) to asFileName
            Move (Trim(asFileName)) to asFileName
            Function_Return rVal
        End_Procedure
        
        Function fsVresExt String asFileName Returns String
            String rVal
            Integer iPos iLen
            Move (UpperCase(asFileName)) to asFileName
            Move (Trim(asFileName)) to asFileName
            Move 0 to iPos
            For iLen from 1 to (length(asFileName))
                If (Mid(asFileName,1,iLen)='.') Move iLen to iPos
            Loop
            If (Not(iPos)) Function_Return ''
            Move (Right(asFileName,(Length(asFileName)-iPos))) to rVal
            Move (Trim(rVal)) to rVal
            Function_Return rVal
        End_Function
        
        Set Verify_Exit_Msg         to Get_No_Confirmation
        Set Verify_Save_Msg         to Get_No_Confirmation
        Set Verify_Data_Loss_Msg    to Get_No_Confirmation
        
        Register_Object     oInternetErrorArray
        Register_Procedure  ShowInternetErrorMessage integer iInetError
        
        Function fiCloseDialup Returns Integer
            Integer rVal iStat
            If (psBranchPhone(self)<>'') Begin
                If (bConnectionStatus(Self)) begin
                   Move (dvInternetHangup())    to iStat
                   If iStat Eq 0 Begin
                        Set bConnectionStatus   to False
                        Move 1 to rVal
                   End
                   Else Begin
                        Move 0 to rVal
                        Send Info_Box "Éú§ £ß¶®È §ò °¢úÂ©‡ ´û§ ö®ò££„" "è¢û®¶≠¶®Âò"
                   End
                End
                Else Move 1 to rVal
            End
            Else Move 1 to rVal
            Function_Return rVal
        End_Function
        
        Function fiGetFile String asRemoteFile String asLocalFile Integer aiCancelIfExist Integer aiType Returns Integer
            // aiCancelIfExist  =0 Overwrites local file if already exists
            // aiCancelIfExist  =1 Cancel transfer if local file already exists
            // aiType           =0 ASCII transfer method (Control and formatting
            //                     information is converted to local equivalents.
            //                  =1 BINARY transfer method. The file is
            //                     transferred exactly as it exists with no changes.
            Integer iRetVal
            send AddInfo to (oStatusForm(Self)) ;
                ("ä„Øû"*asRemoteFile*"©ú"*asLocalFile-"...")
            move ( dvFtpGetFile (asRemoteFile,asLocalFile,0,1)) to iRetVal
            if iRetVal begin
                Function_Return iRetVal
            end
            send AddInfo to (oStatusForm(Self)) ("í¶ ò®ÆúÂ¶"*asRemoteFile*"ú¢„≠üú†")
            Function_Return 0
        End_Function
        
        Function fiSendFile String asLocalFile String asRemoteFile Integer aiMode Returns Integer
            // aiType           =0 ASCII transfer method (Control and formatting
            //                     information is converted to local equivalents.
            //                  =1 BINARY transfer method. The file is
            //                     transferred exactly as it exists with no changes.
            Integer iRetVal
            send AddInfo to (oStatusForm(Self)) ;
                ("Äß¶©´¶¢„ ò®ÆúÂ¶¨ "*asLocalFile*"©ú"*asRemoteFile-"...")
            move (dvFtpPutFile(asLocalFile,asRemoteFile,1)) to iRetVal
            if iRetVal begin
                Function_Return iRetVal
            end
            send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶"*asLocalFile*"ú©´·¢ú†")
            Function_Return 0
        End_Function
        
        
        Procedure ShowInternetErrorMessage integer iInetError
            local string sMsg
            move (dvGetServerMsg()) to sMsg
            if (trim(sMsg)) eq "" get array_value of (oInternetErrorArray(Self)) ;
                item (iInetError - 12000) to sMsg
            send AddInfo to (oStatusForm(Self)) ("Error:"*sMsg) true
        End_Procedure
        
        Object oInternetErrorArray is an Array
            Procedure InitializeErrorArray
                set array_value item 1   to "out of handles"
                set array_value item 2   to "timeout"
                set array_value item 3   to "extended error"
                set array_value item 4   to "internal error"
                set array_value item 5   to "invalid url"
                set array_value item 6   to "unrecognized scheme"
                set array_value item 7   to "name not resolved"
                set array_value item 8   to "protocol not found"
                set array_value item 9   to "invalid option"
                set array_value item 10  to "bad option length"
                set array_value item 11  to "option not settable"
                set array_value item 12  to "shutdown"
                set array_value item 13  to "incorrect user name"
                set array_value item 14  to "incorrect password"
                set array_value item 15  to "login failure"
                set array_value item 16  to "invalid operation"
                set array_value item 17  to "operation cancelled"
                set array_value item 18  to "incorrect handle type"
                set array_value item 19  to "incorrect handle state"
                set array_value item 20  to "not proxy request"
                set array_value item 21  to "registry value not found"
                set array_value item 22  to "bad registry parameter"
                set array_value item 23  to "no direct access"
                set array_value item 24  to "no context"
                set array_value item 25  to "no callback"
                set array_value item 26  to "request pending"
                set array_value item 27  to "incorrect format"
                set array_value item 28  to "item not found"
                set array_value item 29  to "cannot connect"
                set array_value item 30  to "connection aborted"
                set array_value item 31  to "connection reset"
                set array_value item 32  to "force retry"
                set array_value item 33  to "invalid proxy request"
                set array_value item 34  to "need ui"
                set array_value item 36  to "handle exists"
                set array_value item 37  to "sec cert date invalid"
                set array_value item 38  to "sec cert cn invalid"
                set array_value item 39  to "http to https on redir"
                set array_value item 40  to "https to http on_redir"
                set array_value item 41  to "mixed security"
                set array_value item 42  to "chg post is non secure"
                set array_value item 43  to "post is non_secure"
                set array_value item 44  to "client auth cert needed"
                set array_value item 45  to "invalid ca"
                set array_value item 46  to "client auth not setup"
                set array_value item 47  to "async thread failed"
                set array_value item 48  to "redirect scheme change"
                set array_value item 49  to "dialog pending"
                set array_value item 50  to "retry dialog"
                set array_value item 110 to "ftp transfer in progress"
                set array_value item 111 to "ftp dropped"
                set array_value item 112 to "ftp no passive mode"
                set array_value item 157 to "security channel error"
                set array_value item 158 to "unable to cache file"
                set array_value item 159 to "tcpip not installed"
                set array_value item 163 to "disconnected"
                set array_value item 164 to "server unreachable"
                set array_value item 165 to "proxy server unreachable"
            End_Procedure
        End_Object
        
        
        
        
        //////////////////////////////////////////////////////
        
        Register_Function Validate_Password Returns Integer
        Register_Function fisapok Returns Integer
        
        Property Integer piLathi Public 0
        
        //AB-StoreTopEnd

        Set Label to "èò®òÆü‚§´ò Ä®ÆúÂò ëÄè"
        Set Size to 316 521
        Set Location to 6 9

        //AB-DDOStart

        Object Tmpsap_DD is a Tmpsap_DataDictionary

            //AB-StoreTopStart
                                                    
            //AB-StoreTopEnd


            //AB-StoreStart
                                                    
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // Tmpsap_DD

        Set Main_DD to (Tmpsap_DD(self))
        Set Server to (Tmpsap_DD(self))

        //AB-DDOEnd

        Object frmPassw is a FormSub

            //AB-StoreTopStart
                                    
            // 'PROTEM PIS'
            
            //AB-StoreTopEnd

            Set Size to 13 85
            Set Location to 29 200
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Password_State Item 0 to TRUE

            //AB-StoreStart
                                    
            Procedure OnChange
                Integer isValid
                Move (Validate_Password(Self))  to isValid
                Set Enabled_State Of btnDelete  to (isValid=1)
                Set Enabled_State Of btnSend    to (isValid=1)
            
                If (isValid=1) Begin
                    Set Enabled_State Of frmHmnia               to True
                    Set Enabled_State Of frmAddRemoveHmniaApo   to True
                    Set Enabled_State Of frmAddRemoveHmniaEos   to True
                    Set Enabled_State Of RadioGroup1            to True
                    Set Enabled_State Of Button1                to True
                End
                Else Begin
                    Set Value Of frmHmnia               Item 0 to ''
                    Set Value Of frmAddRemoveHmniaApo   Item 0 to ''
                    Set Value Of frmAddRemoveHmniaEos   Item 0 to ''
                    Set Enabled_State Of frmHmnia to False
                    Set Enabled_State Of frmAddRemoveHmniaApo   to False
                    Set Enabled_State Of frmAddRemoveHmniaEos   to False
                    Set Enabled_State Of RadioGroup1            to False
                    Set Enabled_State Of Button1                to False
                End
            
            End_Procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmPassw

        Object frmHmnia is a cSyDateForm
            Set Size to 13 66
            Set Location to 28 310
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmHmnia

        Object btnDelete is a ButtonSub

            //AB-StoreTopStart
                                                    
            //AB-StoreTopEnd

            Set Label to "Ä§òÂ®ú©û Ç‚≠¨®ò™"
            Set Size to 14 94
            Set Location to 26 417
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                    
                                                    
            //Procedure Anoixe_Hmeromhnies Date adHmnia
            //    String sComp sBranch
            //    clear Branch
            //    move SysCurXR.Company_Code to Branch.Company_Code
            //    Find GE Branch By Index.1
            //    While ((Found) And (Branch.Company_Code=SysCurXR.Company_Code))
            //        Reread Branch
            //        If (Branch.Date_Locked   =adHmnia) Move (adHmnia-1) to Branch.Date_Locked
            //        If (Branch.Last_Hmnia_Ekt=adHmnia) Move (adHmnia-1) to Branch.Last_Hmnia_Ekt
            //        Saverecord branch
            //        Unlock
            //        Find GT Branch By Index.1
            //    Loop
            //End_Procedure
            
            
            Procedure OnClick
                Integer iID iErr iYes iInt
                Date    dHmnia
                String  sMess
                Get Value Of frmHmnia Item 0 to dHmnia
                If (dHmnia='') Begin
                    Send Stop_Box 'Ü£ú®¶£û§Âò °ú§„' 'ë≠·¢£ò 5555'
                    Procedure_Return
                End
            
                Get fisapok Of vwSap dHmnia to iInt
            
                // 1. Elegxos an yparxei progenesterh hmeromhnia anoixth
                //If (iInt=1) Send Stop_Box 'ìß·®Æú† ß®¶öú§‚©´ú®û û£ú®¶£û§Âò ò§¶†Æ´„' 'ë≠·¢£ò 4001'
                // 2. Elegxos an yparxei h sygkekrimenh hmeromhnia kai einai kleidomenh
                //If (iInt=2) Send Stop_Box 'ìß·®Æú† „õû û û£ú®¶£û§Âò °ò† úÂ§ò† °¢ú†õ‡£‚§û' 'ë≠·¢£ò 4002'
                // 3. Elegxos an yparxei epomenh hmeromhnia
                If (iInt=4) Send Stop_Box 'ìß·®Æú† £ú´òöú§‚©´ú®û û£ú®¶£û§Âò ©´¶ ò®ÆúÂ¶' 'ë≠·¢£ò 4004'
                // 4. Elegxos an exei trexei h prohgoumenh hmera
                If (iInt=3) Send Stop_Box 'è®¶°Áß´ú† õ†ò≠¶®· û£ú®¶£û§†È§ > 1' 'ë≠·¢£ò 4003'
            
                If (iInt<>0) Procedure_Return
            
                Move ('åò ú¢ú¨üú®È©‡ Ê¢ú™ ´†™ úöö®ò≠‚™ ß¶¨ úÆ¶¨§ ©´ò¢úÂ ©´¶ ëÄè £ú û£ú®/§Âò '+String(dHmnia)+' ?') to sMess
                Get YesNo_Box sMess to iYes
                If (iYes=MBR_NO) Procedure_Return
            
                Indicate Err False
                Move Error_Object_ID to iID
            
                Send ChangeAllFileModes DF_Filemode_ReadOnly
                Set_Attribute DF_File_Mode Of tmpSap.File_Number    To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Particle.File_Number  To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Cmoves.File_Number    To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Wcmoves.File_Number   To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of WitemxTr.File_Number  To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of ItemTehn.File_Number  To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Clients.File_Number   To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Company.File_Number   To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Branch.File_Number    To DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Btnemp.File_Number    To DF_Filemode_Default
            
                Begin_Transaction
                    Send Eleyterose_Kinhseis_Sap dHmnia
                    Clear tmpSap
                    Move dHmnia to tmpSap.Date
                    Find Eq tmpSap By Index.1
                    If (Not(Found)) Error 5000
                    Delete tmpSap
                    Move (Err) to iErr
                    If (iErr<>0) Error 5006
            //--------
            // Telika eipame na mhn anoixoume tis hmeromhnies kleidomatos
            // parastatikon kai oristikopoihshs axiografon giati mporei na
            // mhn prepei. An xreiastei, tha pame apo tis epimerous piso
            // portes na ta anoixoume
            //        Send Anoixe_Hmeromhnies dHmnia
            //        Move (Err) to iErr
            //        If (iErr<>0) Error 5007
            //--------
                    Send Beginning_Of_Data to The_Table True
                End_Transaction
            
                Unlock
                If (Err) Begin
                    Send Stop_Box 'é† úöö®ò≠‚™ ÉÑå ú¢ú¨üú®Èüû°ò§ ¢Êö‡ ©≠·¢£ò´¶™' ('ë≠·¢£ò '+(String(iErr)))
                End
            
                Send ChangeAllFileModes DF_Filemode_Default
                Move iID to  Error_Object_ID
            End_Procedure // OnClick
            
            Procedure Eleyterose_Kinhseis_Sap Date adHmnia
                Integer iID iErr inum
                Date dNullHmnia
                Move '01/01/1753' to dNullHmnia
            
                // Clients
                Clear Clients
                Move adHmnia to Clients.Sap_Hmnia
                Find Gt Clients By index.11
                While ((Found) And (Clients.Sap_Hmnia=adHmnia))
                    Set Label Of btnMess    to ('èú¢·´ú™ '+String(Clients.Recnum))
                    Move dNullHmnia         to Clients.Sap_Hmnia
                    if (clients.status = '3') move '1' to clients.status
                    else if (clients.status = '2') move '' to clients.status
                    Saverecord Clients
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5001
                    Clear Clients
                    Move adHmnia            to Clients.Sap_Hmnia
                    Find Gt Clients By Index.11
                Loop
            
                // Particle
                Clear Particle
                Move adHmnia to Particle.Sap_Hmnia
                Find Gt Particle By 17
                While ((Found) And (Particle.Sap_Hmnia=adHmnia))
                    //Reread Particle
                    Set Label Of btnMess    to ('èò®ò©´ò´†°· '+String(Particle.Recnum))
                    Move dNullHmnia         to Particle.Sap_Hmnia
                    Saverecord Particle
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5001
                    Clear Particle
                    Move adHmnia            to Particle.Sap_Hmnia
                    Find Gt Particle By 17
                Loop
            
                // Cmoves
                Clear Cmoves
                Move adHmnia to Cmoves.Sap_Hmnia
                Find Gt Cmoves By 16
                While ((Found) And (Cmoves.Sap_Hmnia=adHmnia))
                    //Reread Cmoves
                    Set Label Of btnMess    to ('â†§„©ú†™ èú¢ò´È§ '+String(Cmoves.Recnum))
                    Move dNullHmnia to Cmoves.Sap_Hmnia
                    Saverecord Cmoves
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5002
                    Clear Cmoves
                    Move adHmnia to Cmoves.Sap_Hmnia
                    Find Gt Cmoves By 16
                Loop
            
                // wcmoves
                Clear wcmoves
                Move adHmnia to wcmoves.Sap_Hmnia
                Find Gt wcmoves By 16
                While ((Found) And (wcmoves.Sap_Hmnia=adHmnia))
                    //Reread wcmoves
                    Set Label Of btnMess    to ('â†§„©ú†™ Äß¶üû°È§ '+String(wcmoves.Recnum))
                    Move dNullHmnia to wcmoves.Sap_Hmnia
                    Saverecord wcmoves
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5003
                    Clear wcmoves
                    Move adHmnia to wcmoves.Sap_Hmnia
                    Find Gt wcmoves By 16
                Loop
            
                // WitemxTr
                Clear WitemxTr
                Move adHmnia to WitemxTr.Sap_Hmnia
                Find Gt WitemxTr By Index.4
                While ((Found) And (WitemxTr.Sap_Hmnia=adHmnia))
                    //Reread WitemxTr
                    Set Label Of btnMess    to ('â†§„©ú†™ É†ò°†§„©ú‡§ '+String(WitemxTr.Recnum))
                    Move dNullHmnia to WitemxTr.Sap_Hmnia
                    Saverecord WitemxTr
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5004
                    Clear WitemxTr
                    Move adHmnia to WitemxTr.Sap_Hmnia
                    Find Gt WitemxTr By Index.4
                Loop
            
                // ItemTehn
                Clear ItemTehn
                Move adHmnia to ItemTehn.Sap_Hmnia
                Find Gt ItemTehn By Index.4
                While ((Found) And (ItemTehn.Sap_Hmnia=adHmnia))
                    //Reread ItemTehn
                    Set Label Of btnMess    to ('â†§„©ú†™ è®¶õ†òö®ò≠È§ '+String(ItemTehn.Recnum))
                    Move dNullHmnia to ItemTehn.Sap_Hmnia
                    Saverecord ItemTehn
                    //Unlock
                    Move (Err) to iErr
                    If (iErr<>0) Error 5005
                    Clear ItemTehn
                    Move adHmnia to ItemTehn.Sap_Hmnia
                    Find Gt ItemTehn By Index.4
                Loop
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnDelete

        Object btnSend is a ButtonSub

            //AB-StoreTopStart
                                                    
            //AB-StoreTopEnd

            Set Label to "Äß¶©´¶¢„ Ä®ÆúÂ‡§ ASCII"
            Set Size to 14 94
            Set Location to 52 302
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                    
            Procedure OnClick
                Date    dHmnia
                Integer iYear iMonth iDay iYes iCount iFileExist
                String  sYear sMonth sDay sHmnia sCode
                String  sFile1 sFile2 sFile3 sFile4 sFile5 sFile6
                // Panta 6 arxeia to onoma ton opoion apoteleitai apo 15 psifia kai einai sto C:\ (Root)
                // 4 xar    Kodikos Etairias    =   Company.Company_C_Code0
                // 3 xar    Kodikos Arxeiou     =   FI1 /FI2 / FI3 / MM1 / PP1 / PP2
                // 4 xar    Etos                =   Data Entry Othonis = Hmeromhnia Apostolhs/Kleisimatos
                // 2 xar    Mhnas               =   Data Entry Othonis = Hmeromhnia Apostolhs/Kleisimatos
                // 2 xar    Hmera               =   Data Entry Othonis = Hmeromhnia Apostolhs/Kleisimatos
            
                // Ftiaxnoume ta onomata ton 6 arxeion pou perimenoume na vroume
                Clear Company
                Move SyscurXR.Company_Code to Company.Company_Code
                Find Eq Company By Index.1
                If (Not(Found)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ò§ ´ò ©´¶†ÆúÂò ´û™ ú´ò†®Âò™' 'ë≠·¢£ò 1001'
                    Procedure_Return
                End
                If (Trim(Company.Company_C_Code0)='') Begin
                    Send Stop_Box 'Éú§ ¨ß·®Æú† °‡õ†°Ê™ ëÄè\n©´ò ©´¶†ÆúÂò ´û™ ú´ò†®Âò™\n(Company.Company_C_Code0)' 'ë≠·¢£ò 1002'
                    Procedure_Return
                End
            
                Move (Trim(Company.Company_C_Code0)) to sCode
                Move (Trim(sCode))  to sCode
                If (Length(sCode)<>4) Begin
                    Send Stop_Box 'é °‡õ†°Ê™ ëÄè õú§ úÂ§ò† 4 Ø„≠†¶™\n©´ò ©´¶†ÆúÂò ´û™ ú´ò†®Âò™\n(Company.Company_C_Code0)' 'ë≠·¢£ò 1003'
                    Procedure_Return
                End
            
                Get Value Of frmHmnia Item 0 to dHmnia
                If (dHmnia='') Begin
                    Send Stop_Box 'Éú§ ß¢û°´¶¢¶ö„©ò´ú û£ú®¶£û§Âò òß¶©´¶¢„™' 'ë≠·¢£ò 1004'
                    Procedure_Return
                End
            
                Clear tmpSap
                Move dHmnia to tmpSap.Date
                Find Eq tmpSap By Index.1
                If (Not(Found)) Begin
                    Send Stop_Box 'Ä§Áßò®°´û û£ú®¶£û§Âò òß¶©´¶¢„™\n©´¶ ß®¶©‡®†§Ê ò®ÆúÂ¶ tmpSap' 'ë≠·¢£ò 1005'
                    Procedure_Return
                End
                If (tmpSap.Kleidomeno<>1) Begin
                    Send Stop_Box 'Ü û£ú®¶£û§Âò ß¶¨ ùû´„©ò´ú ÉÑå ‚Æú† °¢ú†õ‡üúÂ.' 'ë≠·¢£ò 1006'
                    Procedure_Return
                End
                If (tmpSap.Apestalei=1) Begin
                    Get YesNo_Box 'Ü û£ú®¶£û§Âò ß¶¨ ùû´„©ò´ú ‚Æú† „õû òß¶©´ò¢úÂ\nåò ©´ò¢úÂ ú° §‚¶¨ ?' to iYes
                    If (iYes=MBR_NO) Procedure_Return
                End
                Move (TheYearSegment (dHmnia)) to iYear
                Move (TheMonthSegment(dHmnia)) to iMonth
                Move (TheDaySegment  (dHmnia)) to iDay
                Move iYear  to sYear
                Move iMonth to sMonth
                Move iDay   to sDay
                If (Length(iMonth)=1) Insert '0' in sMonth  at 1
                If (Length(iDay  )=1) Insert '0' in sDay    at 1
                Move (Trim(sMonth)) to sMonth
                Move (Trim(sDay))   to sDay
                If ((Length(sMonth)<>2) Or (Length(sDay)<>2)) Begin
                    Send Stop_Box 'è®¶°Áß´ú† ß®Êô¢û£ò ©´¶§ £„§ò „ ©´û§ û£‚®ò' 'ë≠·¢£ò 1007'
                    Procedure_Return
                End
                Move ('C:\'+Trim(sCode)+'FI1'+Trim(sYear)+Trim(sMonth)+Trim(sDay)+'.txt') to sFile1
                Move ('C:\'+Trim(sCode)+'FI2'+Trim(sYear)+Trim(sMonth)+Trim(sDay)+'.txt') to sFile2
                Move ('C:\'+Trim(sCode)+'FI3'+Trim(sYear)+Trim(sMonth)+Trim(sDay)+'.txt') to sFile3
                Move ('C:\'+Trim(sCode)+'MM1'+Trim(sYear)+Trim(sMonth)+Trim(sDay)+'.txt') to sFile4
                Move ('C:\'+Trim(sCode)+'PP1'+Trim(sYear)+Trim(sMonth)+Trim(sDay)+'.txt') to sFile5
                Move ('C:\'+Trim(sCode)+'PP2'+Trim(sYear)+Trim(sMonth)+Trim(sDay)+'.txt') to sFile6
            
                Get Get_File_Exists sFile1 to iFileExist
                If (Not(iFileExist)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ FI1' 'ë≠·¢£ò 1008'
                    Procedure_Return
                End
                Get Get_File_Exists sFile2 to iFileExist
                If (Not(iFileExist)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ FI2' 'ë≠·¢£ò 1009'
                    Procedure_Return
                End
                Get Get_File_Exists sFile3 to iFileExist
                If (Not(iFileExist)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ FI3' 'ë≠·¢£ò 1010'
                    Procedure_Return
                End
                Get Get_File_Exists sFile4 to iFileExist
                If (Not(iFileExist)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ MM1' 'ë≠·¢£ò 1011'
                    Procedure_Return
                End
                Get Get_File_Exists sFile5 to iFileExist
                If (Not(iFileExist)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ PP1' 'ë≠·¢£ò 1012'
                    Procedure_Return
                End
                Get Get_File_Exists sFile6 to iFileExist
                If (Not(iFileExist)) Begin
                    Send Stop_Box 'Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ PP2' 'ë≠·¢£ò 1013'
                    Procedure_Return
                End
            
                Send Info_Box 'ALL FILES OK' 'INFO'
            
            
            End_Procedure // OnClick
            
            
            
            //Object TimerObj Is A DFTimer
            
            //    Property Integer piForesCount   Public  0
            //    Property String  psRemFile   Public ''
            //    Property String  psLocFile    Public ''
            
            //    Set Auto_Start_State    to False
            //    Set Auto_Stop_State     to False
            
            //    Procedure OnTimer
            //        Integer iCount rVal
            //        Get piForesCount to iCount
            //        // Anamonh gia arxeio epibebaioshs
            //        send AddInfo to (oStatusForm (Self)) ("èú®†£‚§‡ ¢„Øû ò®ÆúÂ¶¨ "*(Trim(psRemFile(Self)))-"...")
            //        Increment iCount
            //        Get fiGetFile Of FtpView (psRemFile(Self)) (psLocFile(Self)) 0 1 to rVal
            //        If (Not(rVal)) Begin
            //            Set piFileRetreived to 1
            //            Send Stop_Timer
            //        End
            //        Set piForesCount to iCount
            //        If (iCount>(piFtpTimesExit(Self))) Send Stop_Timer
            //    End_Procedure
            
            //End_Object
            
            //Procedure Start_Timer String asRemoteFile String asLocalFile
            //    Set piFileRetreived                         to 0
            //    Set piForesCount        of (TimerObj(Self)) to 0
            //    Set psRemFile           of (TimerObj(Self)) to (Trim(asRemoteFile))
            //    Set psLocFile           of (TimerObj(Self)) to (Trim(asLocalFile))
            //    Set Timeout             of (TimerObj(Self)) to (piFtpSecondsRetry(Self)*1000)
            //    Set Timer_Active_State  of (TimerObj(Self)) to True // Starts timer
            //End_Procedure
            
            
            //Procedure Stop_Timer
            //    Integer iFileRetreived iMetr iRecnum iStat
            //    String  sFile
            //    Date    dHmnia dHmnia2
            
            //    Get Value Of frmHmnia Item 0 to dHmnia2
            //    Set Timer_Active_State of (TimerObj(Self)) to False // Stops Timer
            //    // Check property set by timer if zrok.txt is received
            
            //    Get fiCloseDialup   to iStat
            
            //    Get piFileRetreived to iFileRetreived
            
            //    If (Not(iFileRetreived)) Begin
            //        Send Info_Box 'Éú§ ú¢„≠üú† ´¶ ò®ÆúÂ¶ úß†ôúôòÂ‡©û™' 'è¢û®¶≠¶®Âò'
            //        Procedure_Return
            //    End
            //    Get psLocFile Of TimerObj   to sFile
            //    Move (Trim(sFile))          to sFile
            //    send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶ ú¢„≠üú† - "*sFile-" - ...")
            //    // Read zrok.txt and flag Hmerprog for all recnums
            //    // in zrok.txt that records were correctly sent
            //    Direct_Input Channel 9 sFile
            //    Move 0 to iMetr
            //    Readln Channel 9 dHmnia
            //    If (Seqeof) Begin
            //        Send Info_Box 'í¶ ò®ÆúÂ¶ zrok.txt õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
            //        Procedure_Return
            //    End
            
            //    If (dHmnia=dHmnia2) Begin
            
            //        Send Info_Box 'Ü òß¶©´¶¢„ °ò† û ¢„Øû ¶¢¶°¢û®Èüû°ò§' 'è¢û®¶≠¶®Âò'
            //    End
            
            //    Send Delete_Data    to oStatusForm
            //    Set Value of frmMessage Item 0 to ''
            //    Send Paint          to oStatusForm
            //    Send KeyAction to btn_Select
            //End_Procedure
            
            
            
            
            
            
            ////    Integer isOK rVal iMetr iRecnum iFileRetreived isAvailable iStat
            ////    String  sFtp sUser sPassword sDir sConnectString sConnectCommand
            ////    String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
            ////    String  sSysfileFilesSendPath sFullFileName sFileName sStr
            ////    Integer isConnected iSelectCount iInt iSelRec iErr iClientId iObj
            
            ////    Set Value of frmMessage Item 0 to ''
            ////    Send Delete_Data    to oStatusForm
            ////    Send Paint          to oStatusForm
            
            ////    Clear Branch
            ////    Move Syscurxr.Company_Code      to Branch.Company_Code
            ////    Move Syscurxr.Branch_Code       to Branch.Branch_Code
            ////    Find Eq Branch By Index.1
            
            ////    Move Branch.SEND_PATH_FILES     to sBranchSendPathFiles
            ////    Move Branch.SEND_PATH_CONF      to sBranchSendPathConf
            ////    Move Sysfile.FILES_SEND_PATH    to sSysfileFilesSendPath
            
            ////    Get Value Of frmAddress     to sFtp
            ////    Get Value Of frmUserName    to sUser
            ////    Get Value Of frmPassword    to sPassword
            ////    Get Value Of frmDirectory   to sDir
            
            ////    Move (Trim(sFtp))           to sFtp
            ////    Move (Trim(sUser))          to sUser
            ////    Move (Trim(sPassword))      to sPassword
            ////    Move (Trim(sDir))           to sDir
            
            ////    Move sSysfileFilesSendPath  to sLocalFile
            ////    Move (Trim(sLocalFile))     to sLocalFile
            ////    Append sLocalFile 'zsok.txt'
            ////    Move (Trim(sLocalFile)) to sLocalFile
            ////    EraseFile sLocalFile
            
            ////    Move sSysfileFilesSendPath  to sLocalFile
            ////    Move (Trim(sLocalFile))     to sLocalFile
            ////    Append sLocalFile 'zsendd.txt'
            ////    EraseFile sLocalFile
            
            ////    Move sSysfileFilesSendPath  to sLocalFile
            ////    Move (Trim(sLocalFile))     to sLocalFile
            ////    Append sLocalFile 'zbtnemp.txt'
            ////    EraseFile sLocalFile
            
            ////    EraseFile 'C:\Welcome.txt'
            ////    Send Delete_Data    to oStatusForm
            ////    Set Value of frmMessage Item 0 to ''
            
            ////    Get fiFTPVerify to isOK
            
            ////    If (isOK=1) Begin
            
            //////////////////////////////////////////////////////////////////////
            ////        If (psBranchPhone(self)<>'') Begin
            
            ////           set bConnectionStatus to FALSE
            
            ////           //first get the connect state of the local system
            ////           move (dvInternetGetConnectedState()) to iStat
            
            //////           if iStat eq 1 begin
            //////              send Info_Box "You have already a connection to the Internet by modem." "dvdialer"
            //////              procedure_return
            //////           end
            //////           if iStat eq 2 begin
            //////              send Info_Box "You are connected to the Internet by a LAN." "dvdialer"
            //////              procedure_return
            //////           end
            //////           if iStat eq 3 begin
            //////              send Info_Box "You are connected to the Internet by a through a proxy server." "dvdialer"
            //////              procedure_return
            //////           end
            
            ////           if iStat eq 4 begin
            ////              send Info_Box "í¶ modem úÂ§ò† òßò©Æ¶¢û£‚§¶." "è¢û®¶≠¶®Âò"
            ////              procedure_return
            ////           end
            
            ////           If iStat eq 0 begin
            ////              // there is no Internet connection and the modem is not busy, so let's dial...
            ////              // phonebook entry this would be something like this
            ////              // move (dvInternetAutodial()) to iStat
            ////              move (dvInternetDial((psBranchPhone(self)))) to iStat
            
            ////              If iStat eq 0 set bConnectionStatus to True
            ////              Else Begin
            ////                 Send Info_Box "Ü ©Á§õú©û õú§ £ß¶®úÂ §ò ¶¢¶°¢û®‡üúÂ" "è¢û®¶≠¶®Âò"
            ////                 Procedure_Return
            ////              End
            ////           End
            
            ///////////////////////
            //////            Send OpenDialUp Of MyRas
            //////            Get RasXComRASAvailable Of MyRas to isAvailable
            //////            Get RasXComStateString  Of MyRas to sStr
            //////            Pause 24 00 '*' (Trim(sStr)) '*'
            //////            If (Not(isAvailable)) Begin
            //////                Send Stop_Box 'Ras Connection Not Available'
            //////                Procedure_Return
            //////            End
            ///////////////////////
            ////        End
            //////////////////////////////////////////////////////////////////////
            
            
            //////        Get piErrorOccured to iErr
            //////        If (iErr) Begin
            //////            If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
            //////            Procedure_Return
            //////        End
            ////        //Send OpenDialUp                 Of MyRas
            ////        //Send RasXComConnect             Of MyRas
            
            ////        Move '' to sConnectCommand
            ////        Move '' to sConnectString
            
            ////        send AddInfo to (oStatusForm (Self)) ("ëÁ§õú©û "*sFtp-"...")
            
            ////        // Connect to ftp site
            ////        if (trim(sFtp)<>'') begin
            ////            if ( sUser<>"") begin
            ////               Move (dvInternetConnect(sFtp,sUser,sPassword,0)) to rVal
            ////            end
            ////            else move (dvInternetConnect(sFtp,"","",0)) to rVal //anonymous login
            ////        end
            ////        if rVal begin
            ////            send ShowInternetErrorMessage rVal
            ////            Get fiCloseDialup to iStat
            ////            procedure_return
            ////        end
            
            
            
            
            
            ////        Move 'Welcome.txt'      to sRemoteFile
            ////        Move 'C:\Welcome.txt'   to sLocalFile
            ////        Get fiGetFile Of FtpView sRemoteFile sLocalFile 0 1 to rVal
            ////        If (rVal) Begin
            ////            Send ShowInternetErrorMessage rVal
            ////            Get fiCloseDialup to iStat
            ////            //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
            ////            //Send RasXComDisConnect Of MyRas
            ////            Procedure_Return
            ////        End
            
            ////        Direct_Input    Channel 9 sLocalFile
            ////        Readln          Channel 9 sStr
            ////        Close_Input     Channel 9
            ////        Set Value of frmMessage Item 0 to (Trim(sStr))
            
            ////        Move 0 to iInt
            ////        Move 0 to iSelectCount
            ////        Clear TmpSel
            ////        Move '1' to TmpSel.Is_Selected
            ////        Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
            ////        While ((Found=1) And (TmpSel.Is_Selected='1'))
            ////            Add 1 to iSelectCount
            ////            Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
            ////        Loop
            
            ////        If (iSelectCount>0) Begin
            ////            Clear TmpSel
            ////            Move '1' to TmpSel.Is_Selected
            ////            Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
            ////            While ((Found=1) And (TmpSel.Is_Selected='1'))
            ////                Move (Trim(TmpSel.Full_Path_Name))                  to sFullFileName
            ////                Move (Trim(fsReturnFileFromPath(sFullFileName)))    to sFileName
            ////                Move sFullFileName  to sLocalFile
            ////                Move sFileName      to sRemoteFile
            //////                Insert '/' in sRemoteFile   at 1
            ////                Insert sDir in sRemoteFile  at 1
            ////                Get fiSendFile Of FtpView sLocalFile sRemoteFile 1 to rVal
            ////                If (rVal) Begin
            ////                    Send ShowInternetErrorMessage rVal
            ////                    Get fiCloseDialup to iStat
            ////                    //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
            ////                    //Send RasXComDisConnect Of MyRas
            ////                    Procedure_Return
            ////                End
            ////                Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
            ////            Loop
            
            ////            // Prepare zsok.txt filename
            ////            Move sSysfileFilesSendPath                  to sLocalFile
            ////            Move (Trim(sLocalFile))                     to sLocalFile
            ////            Append sLocalFile 'zsok.txt'
            ////            Move (Trim(sLocalFile))                     to sLocalFile
            
            ////            Move (Trim(sBranchSendPathConf)+'zsok.txt') to sRemoteFile
            
            ////            // Create zsok.txt file
            ////            Direct_Output   Channel 9 sLocalFile
            ////            Write           Channel 9 '1234'
            ////            Writeln         Channel 9
            ////            Close_Output    Channel 9
            
            ////            // Send zsok.txt file
            ////            Get fiSendFile Of FtpView sLocalFile sRemoteFile 1 to rVal
            ////            If (rVal) Begin
            ////                Send ShowInternetErrorMessage rVal
            ////                Get fiCloseDialup to iStat
            ////                //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
            ////                //Send RasXComDisConnect Of MyRas
            ////                Procedure_Return
            ////            End
            
            ////            // Prepare zrok.txt filename
            ////            Move (Trim(sSysfileFilesSendPath))  to sLocalFile
            ////            Append sLocalFile 'zrok.txt'
            ////            Move (Trim(sBranchSendPathConf)+'zrok.txt') to sRemoteFile
            
            ////            // Delete previous local zrok.txt
            ////            EraseFile sLocalFile
            
            ////            // Call timer event to bring zrok.txt file
            ////            // Program flow control continues in Stop_Timer
            ////            Send Start_Timer sRemoteFile sLocalFile
            
            ////        End
            ////        Else Begin
            ////            Send Info_Box 'Éú§ ô®‚üû°ú ò®ÆúÂ¶ ß®¶™ òß¶©´¶¢„'
            ////            Get fiCloseDialup to iStat
            ////            //If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
            ////            //Send RasXComDisConnect Of MyRas
            ////            Procedure_Return
            ////        End
            ////    End
            ////    Else Begin
            ////        If (isOK=(-1)) Begin
            ////            Send Info_Box "Éú§ ô®‚üû°ú °·ß¶†ò úß†¢úö£‚§û úöö®ò≠„"
            ////        End
            ////        Else If (sFtp='') Begin
            ////            Send Info_Box "FTP Address field is empty"
            ////            Send Activate to frmAddress
            ////        End
            ////        Else If (sUser='') Begin
            ////            Send Info_Box "User field is empty"
            ////            Send Activate to frmUserName
            ////        End
            ////        Else If (sPassword='') Begin
            ////            Send Info_Box "Password field is empty"
            ////            Send Activate to frmPassword
            ////        End
            ////        Else If (sDir='') Begin
            ////            Send Info_Box "Directory field is empty"
            ////            Send Activate to frmDirectory
            ////        End
            ////    End
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnSend

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ Ñ§ú®ö¶ß¶Âû©û™ É†òõ†°ò©Âò™ Äß¶©´¶¢„™ && Ä§òÂ®ú©û™"
            Set TextColor to 2577645
            Set Location to 2 200
            Set Size to 25 84
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object The_Table is a dbGrid

            //AB-StoreTopStart
                                                    
            //AB-StoreTopEnd

            Set Main_File to Tmpsap.File_Number
            Set Ordering to 1
            Set Size to 258 188
            Set Location to 2 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Tmpsap.Kleidomeno
                Entry_Item Tmpsap.Date
                Entry_Item Tmpsap.Apestalei
            End_Row

            Set Form_Width    item 0 to 56
            Set Header_Label  item 0 to "K¢ú†õ‡£‚§û"
            Set Column_Checkbox_State  item 0 to True
            
            Set Form_Width    item 1 to 78
            Set Header_Label  item 1 to "Ü£/§Âò Ñöö®ò≠È§"
            
            Set Form_Width    item 2 to 48
            Set Header_Label  item 2 to "Äß¶©´¶¢„"
            Set Column_Checkbox_State  item 2 to True
            

            //AB-StoreStart
                                                    
            Set Column_Option Item 0 to NoEnter True
            Set Column_Option Item 1 to NoPut   True
            //Set Column_Option Item 2 to NoEnter True
            
            //Procedure Item_Change Integer FromI Integer ToI Returns Integer
            //    Integer iCol rVal isValid
            //    Date    dHmnia
            //    Forward Get Msg_Item_Change Fromi toi to rVal
            //    If (Current_Record(tmpSap_DD(Self))) Begin
            //        Get Field_Current_Value Of tmpSap_DD Field tmpSap.Date to dHmnia
            //        If (Validate_Password(vwSap(Self))=1)   Set Value Of frmHmnia Item 0 to dHmnia
            //        Else                                    Set Value Of frmHmnia Item 0 to ''
            //    End
            //    Else Set Value Of frmHmnia Item 0 to ''
            //    Procedure_return rVal
            //End_Procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object btnMess is a ButtonSub
            Set Size to 14 311
            Set Location to 246 201
            Set Border_Style to Border_StaticEdge
            Set Focus_Mode to No_Activate
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
            
            End_Procedure // OnClick
            //AB-StoreEnd

        End_Object    // btnMess

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ü£ú®¶£û§Âò Ñ®öò©Âò™ Ñöö®ò≠È§ ëÄè"
            Set TextColor to 10056008
            Set Location to 10 311
            Set Size to 17 75
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object frmAddress is a FormSub
            Set Size to 13 98
            Set Location to 70 201
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                    
            //AB-StoreEnd

        End_Object    // frmAddress

        Object frmConn is a FormSub
            Set Size to 13 98
            Set Location to 70 297
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                    
            Procedure OnChange
                String sStr
                Get Value Item 0 to sStr
                Set psBranchPhone to (Trim(sStr))
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // frmConn

        Object frmUserName is a FormSub
            Set Size to 13 195
            Set Location to 84 201
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmUserName

        Object frmPassword is a FormSub
            Set Size to 13 195
            Set Location to 98 201
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Password_State Item 0 to TRUE

            //AB-StoreStart
                                                    
            Set Password_State to True
            
            //AB-StoreEnd

        End_Object    // frmPassword

        Object frmDirectory is a FormSub
            Set Size to 13 195
            Set Location to 113 201
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmDirectory

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "É†úÁü¨§©û FTP"
            Set Location to 56 201
            Set Size to 10 55
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "ëÁ§õú©û ©´¶§ ¨ß¶¢¶ö†©´„"
            Set Location to 201 201
            Set Size to 10 94
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object frmMessage is a FormSub
            Set Size to 13 311
            Set Location to 213 201
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // frmMessage

        Object oStatusForm is a editSub
            Set Size to 61 311
            Set Location to 130 201
            Set Color to clBtnFace
            Set Enabled_State to FALSE
            Set Read_Only_State to TRUE

            //AB-StoreStart
                                                    
            Procedure AddInfo string sInfo
                Send beginning_of_data
                append sInfo (character(13)+character(10))
                send insert sInfo
                send paint
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // oStatusForm

        Object RadioGroup1 is a RadioGroup
            Set Size to 28 227
            Set Location to 266 6
            Object Radio1 is a Radio
                Set Label to "É†òö®ò≠„ Ü£ú®¶£û§†È§"
                Set Size to 10 99
                Set Location to 12 7
            End_Object    // Radio1

            Object Radio2 is a Radio
                Set Label to "Éû£†¶¨®öÂò Ü£ú®¶£û§†È§"
                Set Size to 10 106
                Set Location to 12 112
            End_Object    // Radio2


            //AB-StoreStart
                                            
            Procedure Notify_Select_State integer iToItem integer iFromItem
                //for augmentation
                Set piWhat to itoItem
            End_Procedure
            
            // If you set Current_radio you must set this after the
            // radio objects have been created AND after Notify_select_State has been
            // created. i.e. Set in bottom-code at end!!
            //Set Current_Radio to 0
            
            
            
            //AB-StoreEnd

        End_Object    // RadioGroup1

        Object frmAddRemoveHmniaApo is a cSyDateForm
            Set Label to "Äß¶"
            Set Size to 13 66
            Set Location to 276 274
            Set Label_Col_Offset to 5
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmAddRemoveHmniaApo

        Object frmAddRemoveHmniaEos is a cSyDateForm
            Set Label to "Ñ‡™"
            Set Size to 13 66
            Set Location to 276 366
            Set Label_Col_Offset to 5
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmAddRemoveHmniaEos

        Object Button1 is a Button

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñßú•ú®öò©Âò"
            Set Location to 275 449

            //AB-StoreStart
            
            Procedure OnClick
                Integer iWhat
                Date dApo dEos dHmnia
                Move (piWhat(Self)) to iWhat
                Get Value Of frmAddRemoveHmniaApo Item 0 to dApo
                Get Value Of frmAddRemoveHmniaEos Item 0 to dEos
            
                If ((dApo="") Or (dEos="") Or (dApo>dEos)) Begin
                    Send Stop_Box "âú§‚™ „ ú©≠ò¢£‚§ú™ û£ú®¶£û§Âú™"
                    Procedure_Return
                End
            
                Set Dynamic_Update_State Of The_Table to false
            
                If (iWhat=0) Begin
                    Clear TmpSap
                    Move dApo to TmpSap.Date
                    Find GE TmpSap By Index.1
                    While ((Found) And (TmpSap.Date<=dEos))
                        Delete TmpSap
                        Find GT TmpSap By Index.1
                    Loop
                End
                Else Begin
                    Move dApo to dHmnia
                    While (dHmnia<=dEos)
                        Clear TmpSap
                        Move dHmnia to TmpSap.Date
                        Find Eq TmpSap By Index.1
                        If (Not(Found)) Begin
                            Clear TmpSap
                            Move dHmnia to TmpSap.Date
                            Move 1      to TmpSap.Kleidomeno
                            Saverecord TmpSap
                        End
                        Add 1 to dHmnia
                    Loop
                End
                Set Dynamic_Update_State Of The_Table to True
                Send Rebuild_Constraints Of (TmpSap_DD(Self))
                Send End_Of_Data Of (The_Table(Self)) true
                Send Info_Box "Ü õ†òõ†°ò©Âò ¶¢¶°¢û®Èüû°ú"
            End_Procedure // OnClick
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Button1


        //AB-StoreStart
                            
                            
        Function fisapok Date adHmnia Returns Integer
            Integer iDay iDiff
            // Kaleitai kata thn fash mazematos ton eggrafon, prin ftiaxtoun ta ascii arxeia
            // Den yparxei eggrafh gia thn hmeromhnia ayth sto tmpSap arxeio
        
        //    // 1. Elegxos an yparxei progenesterh hmeromhnia anoixth
        //    Clear tmpSap
        //    Find GT tmpSap By Index.4
        //    If ((Found) And (tmpSap.Kleidomeno=0) And (tmpSap.Date<adHmnia)) Function_Return 1
        
        //    // 2. Elegxos an yparxei h sygkekrimenh hmeromhnia kai einai kleidomenh
        //    Clear tmpSap
        //    Move adHmnia to tmpSap.Date
        //    Find Eq tmpSap By Index.1
        //    If ((Found) And (tmpSap.Kleidomeno=1)) Function_Return 2
        
            // 3. Elegxos an yparxei epomenh hmeromhnia
            Clear tmpSap
            Move adHmnia to tmpSap.Date
            Find Gt tmpSap By Index.1
            If (Found) Function_Return 4
        
            // 4. Elegxos an exei trexei h prohgoumenh hmera
            Clear tmpSap
            Move adHmnia to tmpSap.Date
            Find LT tmpSap By Index.1
            If (Found) Begin
                If ((adHmnia-tmpSap.Date) <>1) Function_Return 3
            End
        
            Function_Return 0
        End_Function
        
        Procedure Deixe_Ta_Anoixta
            Integer liLathi
            Set piLathi to 0
            send Delete_Data to (EditSub1(Keimeno(Self)))
            send read to (EditSub1(Keimeno(Self))) "C:\OpenSap.log"
            Send popup to (Keimeno(Self))
        End_Procedure
        
        Procedure Activate_View Returns Integer
            Integer rVal iCount
            String  sMess
            Move '' to sMess
            Forward Get Msg_Activate_View to rVal
            Set Value Of frmPassw   Item 0  to ''
            Set Value Of frmHmnia   Item 0  to ''
            Set Label Of btnMess            to ''
            Set piLathi             to 0
            Move 0 to iCount
            Direct_Output Channel 7 "C:\OpenSap.log"
            Writeln Channel 7 '---------------------------------------------------------'
            Writeln Channel 7 'èêéëéïÜ - Ä§¶†Æ´‚™ Ü£ú®¶£û§Âú™'
            Writeln Channel 7 '---------------------------------------------------------'
            Writeln Channel 7 '                              '
            Clear tmpSap
            Move 0 to tmpSap.Kleidomeno
            Find GT tmpSap By index.4
            While ((Found) And (tmpSap.Kleidomeno=0))
                Add 1 to iCount
                Writeln Channel 7 tmpSap.Date
                Find GT tmpSap By index.4
            Loop
            Close_Output Channel 7
        
            If (iCount<>0) Send Deixe_Ta_Anoixta
            Else EraseFile "C:\OpenSap.log"
        
            Procedure_Return rVal
        End_Procedure
        
        
        Function Validate_Password Returns Integer
            String sPassw
            Get Value Of frmPassw Item 0 to sPassw
            Set Enabled_State Of btnDelete  to (Trim(Uppercase(sPassw))='PROTEM PIS')
            Set Enabled_State Of btnSend    to (Trim(Uppercase(sPassw))='PROTEM PIS')
            If (Trim(Uppercase(sPassw))='PROTEM PIS') Begin
                Set Enabled_State Of frmHmnia to True
                Function_Return 1
            End
            Else Begin
                Set Value Of frmHmnia Item 0 to ''
                Set Enabled_State Of frmHmnia to False
                Function_Return 0
            End
        End_Function
        
        
        
        
        //AB-StoreEnd

    End_Object    // Vwsap


    //AB-StoreStart
            
            
            
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
