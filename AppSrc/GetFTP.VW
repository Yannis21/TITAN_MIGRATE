//AB/ Project GetFTP
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GetFTP"
//AB/         Set ProjectFileName to "GetFTP.VW"

// Project Object Structure
//   GetFTP is a dbViewSubS
//     Tmpsel_DD is a DataDictionary
//     frmAddress is a FormSub
//     frmUserName is a FormSub
//     frmPassword is a FormSub
//     frmDirectory is a FormSub
//     btn_Connect is a ButtonSub
//       TimerObj is a DFTimer
//     oStatusForm is a EditSub
//     btnSelectFolder is a ButtonSub
//     FormSub1 is a FormSub
//     BtnFillList is a ButtonSub
//     dbGridSub1 is a dbGridSub
//     txtSel is a TextBoxSub
//     txtCount is a TextBoxSub
//     btn_Select is a ButtonSub
//     btnDel is a ButtonSub
//     frmMessage is a FormSub
//     HmApo is a cSyDateForm
//     HmEos is a cSyDateForm
//     ButtonSub1 is a ButtonSub
//       TimerObj2 is a DFTimer
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     oDirectoryPicker is a OLEDPDlg
//     oRecursiveFileFinder is a OLExfind
//     MyRas is a OLERasXCom
//     Tmpsel_DD2 is a Tmpsel_DataDictionary
//     oInternetErrorArray is a Array

// Register all objects
Register_Object BtnFillList
Register_Object ButtonSub1
Register_Object btn_Connect
Register_Object btn_Select
Register_Object btnDel
Register_Object btnSelectFolder
Register_Object dbGridSub1
Register_Object FormSub1
Register_Object frmAddress
Register_Object frmDirectory
Register_Object frmMessage
Register_Object frmPassword
Register_Object frmUserName
Register_Object GetFTP
Register_Object HmApo
Register_Object HmEos
Register_Object MyRas
Register_Object oDirectoryPicker
Register_Object oInternetErrorArray
Register_Object oRecursiveFileFinder
Register_Object oStatusForm
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TimerObj
Register_Object TimerObj2
Register_Object Tmpsel_DD
Register_Object Tmpsel_DD2
Register_Object txtCount
Register_Object txtSel


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open tmpSel
    Open HmerProg
    Open Btnemp
    Open Sysrecc

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Button.Sub
    Use Edit.Sub
    Use dbGrid.Sub
    Use Txtbox.Sub
    Use cSyDateForm.Pkg

    Use tmpSel.DD

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_GetFTP FOR ;
    ;
    Object GetFTP is a dbViewSubS

        //AB-StoreTopStart
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

        Property Integer    piErrorOccured          Public  0


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
        Register_Object     oRecursiveFileFinder
        Register_Object     oDirectoryPicker
        Register_Object     Tmpsel_DD2
        Register_Object     MyRas

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


        //AB-StoreTopEnd

        Set Label to "ãú´ò≠¶®· Ä®ÆúÂ‡§ £‚©‡ FTP"
        Set Size to 287 472
        Set Location to 2 3

        //AB-DDOStart

        Object Tmpsel_DD is a Tmpsel_DataDictionary
        End_Object    // Tmpsel_DD

        Set Main_DD to (Tmpsel_DD(self))
        Set Server to (Tmpsel_DD(self))

        //AB-DDOEnd

        Object frmAddress is a FormSub
            Set Label to "É†úÁü¨§©û FTP"
            Set Size to 13 195
            Set Location to 192 3
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "protem-dykp9j04"

            //AB-StoreStart

            //AB-StoreEnd

        End_Object    // frmAddress

        Object frmUserName is a FormSub
            Set Label to "ï®„©´û™"
            Set Size to 13 195
            Set Location to 206 3
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "tolhs3"
        End_Object    // frmUserName

        Object frmPassword is a FormSub
            Set Label to "â‡õ†°Ê™"
            Set Size to 13 195
            Set Location to 220 3
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Password_State Item 0 to TRUE
            Set Value Item 0 to "MATI11"

            //AB-StoreStart

            Set Password_State to True

            //AB-StoreEnd

        End_Object    // frmPassword

        Object frmDirectory is a FormSub
            Set Label to "î·°ú¢¢¶™"
            Set Size to 13 195
            Set Location to 234 3
            Set Label_Col_Offset to 10
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "TrfTomeas/"
        End_Object    // frmDirectory

        Object btn_Connect is a ButtonSub
            Set Label to "ãú´ò≠¶®· úß†¢úö£‚§‡§ ò®ÆúÂ‡§"
            Set Size to 16 195
            Set Location to 255 3
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Object TimerObj Is A DFTimer

                Property Integer piForesCount   Public  0
                Property String  psRemFile   Public ''
                Property String  psLocFile    Public ''

                Set Auto_Start_State    to False
                Set Auto_Stop_State     to False

                Procedure OnTimer
                    Integer iCount rVal
                    Get piForesCount to iCount
                    send AddInfo to (oStatusForm (Self)) ("èú®†£‚§‡ ¢„Øû ò®ÆúÂ¶¨ "*(Trim(psRemFile(Self)))-"...")
                    Increment iCount
                    Get fiGetFile Of GetFTP (psRemFile(Self)) (psLocFile(Self)) 0 1 to rVal
                    If (Not(rVal)) Begin
                        Set piFileRetreived to 1
                        Send Stop_Timer
                    End
                    Set piForesCount to iCount
                    If (iCount>(piFtpTimesExit(Self))) Send Stop_Timer
                End_Procedure

            End_Object

            Procedure Start_Timer String asRemoteFile String asLocalFile
                Set piFileRetreived                         to 0
                Set piForesCount        of (TimerObj(Self)) to 0
                Set psRemFile           of (TimerObj(Self)) to (Trim(asRemoteFile))
                Set psLocFile           of (TimerObj(Self)) to (Trim(asLocalFile))
                Set Timeout             of (TimerObj(Self)) to (piFtpSecondsRetry(Self)*1000)
                Set Timer_Active_State  of (TimerObj(Self)) to True // Starts timer
            End_Procedure

            Procedure Stop_Timer
                Integer iFileRetreived iMetr iRecnum
                String  sFile
                Set Timer_Active_State of (TimerObj(Self)) to False // Stops Timer
                // Check property set by timer if zrok.txt is received
                Get piFileRetreived to iFileRetreived
                If (Not(iFileRetreived)) Begin
                    Send Info_Box 'Éú§ ú¢„≠üú† ´¶ ò®ÆúÂ¶ úß†ôúôòÂ‡©û™' 'è¢û®¶≠¶®Âò'
                    If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect  Of MyRas
                    Procedure_Return
                End
                Get psLocFile Of TimerObj   to sFile
                Move (Trim(sFile))          to sFile
                send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶ ú¢„≠üú† - "*sFile-" - ...")
                // Read zrok.txt and flag Hmerprog for all recnums
                // in zrok.txt that records were correctly sent
                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Readln Channel 9 iRecnum
                If (Seqeof) Begin
                    Send Info_Box 'í¶ ò®ÆúÂ¶ zrok.txt õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
                While (NOT(Seqeof))
                    Add 1 to iMetr
                    send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û è®¶ö®ò££ò´†©£¶Á " + String(iMetr)+ " ...")
                    Clear HmerProg
                    Move iRecnum to HmerProg.Recnum
                    Find Eq HmerProg.Recnum
                    If (Found) Begin
                        Reread HmerProg
                        Move 1 to HmerProg.Sent
                        Saverecord Hmerprog
                        Unlock
                    End
                    Readln Channel 9 iRecnum
                Loop
                Send Info_Box 'Ü òß¶©´¶¢„ °ò† û ¢„Øû ¶¢¶°¢û®Èüû°ò§' 'è¢û®¶≠¶®Âò'
                Send Delete_Data    to oStatusForm
                Set Value of frmMessage Item 0 to ''
                Send Paint          to oStatusForm
                Send KeyAction to btn_Select
            End_Procedure

            Function fiFTPVerify Returns Integer
                String  sFtp sUser sPassword sDir
                Get Value Of frmAddress     to sFtp
                Get Value Of frmUserName    to sUser
                Get Value Of frmPassword    to sPassword
                Get Value Of frmDirectory   to sDir
                Move (Trim(sFtp))           to sFtp
                Move (Trim(sUser))          to sUser
                Move (Trim(sPassword))      to sPassword
                Move (Trim(sDir))           to sDir
                Clear TmpSel
                Move '1' to TmpSel.Is_Selected
                Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                If ((Found=1) And (TmpSel.Is_Selected='1')) Begin
                    If ((sFtp<>'')      And (sUser<>'') And ;
                        (sPassword<>'') And (sDir<>'')) Function_Return 1
                    Else Begin
                        Function_Return 0
                    End
                End
                Else Function_Return -1
            End_Function

            Procedure OnClick
                Integer isOK rVal iMetr iRecnum iFileRetreived
                String  sFtp sUser sPassword sDir sConnectString sConnectCommand
                String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
                String  sSysfileFilesSendPath sFullFileName sFileName sStr
                Integer isConnected iSelectCount iInt iSelRec iErr iClientId iObj

                Set Value of frmMessage Item 0 to ''
                Send Delete_Data    to oStatusForm
                Send Paint          to oStatusForm

                Clear Branch
                Move Syscurxr.Company_Code      to Branch.Company_Code
                Move Syscurxr.Branch_Code       to Branch.Branch_Code
                Find Eq Branch By Index.1

                Move Branch.SEND_PATH_FILES     to sBranchSendPathFiles
                Move Branch.SEND_PATH_CONF      to sBranchSendPathConf
                Move Sysfile.FILES_SEND_PATH    to sSysfileFilesSendPath

                Get Value Of frmAddress     to sFtp
                Get Value Of frmUserName    to sUser
                Get Value Of frmPassword    to sPassword
                Get Value Of frmDirectory   to sDir

                Move (Trim(sFtp))           to sFtp
                Move (Trim(sUser))          to sUser
                Move (Trim(sPassword))      to sPassword
                Move (Trim(sDir))           to sDir

                Move sSysfileFilesSendPath  to sLocalFile
                Move (Trim(sLocalFile))     to sLocalFile
                Append sLocalFile 'zsok.txt'
                Move (Trim(sLocalFile)) to sLocalFile
                EraseFile sLocalFile

                Move sSysfileFilesSendPath  to sLocalFile
                Move (Trim(sLocalFile))     to sLocalFile
                Append sLocalFile 'zsendd.txt'
                EraseFile sLocalFile

                Move sSysfileFilesSendPath  to sLocalFile
                Move (Trim(sLocalFile))     to sLocalFile
                Append sLocalFile 'Vinter.txt'
                EraseFile sLocalFile

                EraseFile 'C:\Welcome.txt'
                Send Delete_Data    to oStatusForm
                Set Value of frmMessage Item 0 to ''

                Get fiFTPVerify to isOK

                If (isOK=1) Begin

                    If (psBranchPhone(self)<>'') Send OpenDialUp Of MyRas
                    Get piErrorOccured to iErr
                    If (iErr) Begin
                        Send CloseDialUp Of MyRas
                        Procedure_Return
                    End

                    //Send OpenDialUp                 Of MyRas
                    //Send RasXComConnect             Of MyRas

                    Move '' to sConnectCommand
                    Move '' to sConnectString

                    send AddInfo to (oStatusForm (Self)) ("ëÁ§õú©û "*sFtp-"...")

                    // Connect to ftp site
                    if (trim(sFtp)<>'') begin
                        if ( sUser<>"") begin
                           Move (dvInternetConnect(sFtp,sUser,sPassword,0)) to rVal
                        end
                        else move (dvInternetConnect(sFtp,"","",0)) to rVal //anonymous login
                    end
                    if rVal begin
                        send ShowInternetErrorMessage rVal
                        If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                        //Send RasXComDisConnect Of MyRas
                        procedure_return
                    end

                    Move 'Welcome.txt'      to sRemoteFile
                    Move 'C:\Welcome.txt'   to sLocalFile
                    Get fiGetFile Of GetFTP sRemoteFile sLocalFile 0 1 to rVal
                    If (rVal) Begin
                        Send ShowInternetErrorMessage rVal
                        If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                        //Send RasXComDisConnect Of MyRas
                        Procedure_Return
                    End

                    Direct_Input    Channel 9 sLocalFile
                    Readln          Channel 9 sStr
                    Close_Input     Channel 9
                    Set Value of frmMessage Item 0 to (Trim(sStr))

                    Move 0 to iInt
                    Move 0 to iSelectCount
                    Clear TmpSel
                    Move '1' to TmpSel.Is_Selected
                    Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                    While ((Found=1) And (TmpSel.Is_Selected='1'))
                        Add 1 to iSelectCount
                        Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                    Loop

                    If (iSelectCount>0) Begin
                        Clear TmpSel
                        Move '1' to TmpSel.Is_Selected
                        Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                        While ((Found=1) And (TmpSel.Is_Selected='1'))
                            Move (Trim(TmpSel.Full_Path_Name))                  to sFullFileName
                            Move (Trim(fsReturnFileFromPath(sFullFileName)))    to sFileName
                            Move sFullFileName  to sLocalFile
                            Move sFileName      to sRemoteFile
            //                Insert '/' in sRemoteFile   at 1
                            Insert sDir in sRemoteFile  at 1
                            Get fiSendFile Of GetFTP sLocalFile sRemoteFile 1 to rVal
                            If (rVal) Begin
                                Send ShowInternetErrorMessage rVal
                                If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                                //Send RasXComDisConnect Of MyRas
                                Procedure_Return
                            End
                            Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                        Loop

                        // Prepare zsok.txt filename
                        Move sSysfileFilesSendPath                  to sLocalFile
                        Move (Trim(sLocalFile))                     to sLocalFile
                        Append sLocalFile 'zsok.txt'
                        Move (Trim(sLocalFile))                     to sLocalFile

                        Move (Trim(sBranchSendPathConf)+'zsok.txt') to sRemoteFile

                        // Create zsok.txt file
                        Direct_Output   Channel 9 sLocalFile
                        Write           Channel 9 '1234'
                        Writeln         Channel 9
                        Close_Output    Channel 9

                        // Send zsok.txt file
                        Get fiSendFile Of GetFTP sLocalFile sRemoteFile 1 to rVal
                        If (rVal) Begin
                            Send ShowInternetErrorMessage rVal
                            If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                            //Send RasXComDisConnect Of MyRas
                            Procedure_Return
                        End

                        // Prepare zrok.txt filename
                        Move (Trim(sSysfileFilesSendPath))  to sLocalFile
                        Append sLocalFile 'zrok.txt'
                        Move (Trim(sBranchSendPathConf)+'zrok.txt') to sRemoteFile

                        // Delete previous local zrok.txt
                        EraseFile sLocalFile

                        // Call timer event to bring zrok.txt file
                        // Program flow control continues in Stop_Timer
                        Send Start_Timer sRemoteFile sLocalFile

                    End
                    Else Begin
                        Send Info_Box 'Éú§ ô®‚üû°ú ò®ÆúÂ¶ ß®¶™ òß¶©´¶¢„'
                        If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                        //Send RasXComDisConnect Of MyRas
                        Procedure_Return
                    End
                End
                Else Begin
                    If (isOK=(-1)) Begin
                        Send Info_Box "Éú§ ô®‚üû°ú °·ß¶†ò úß†¢úö£‚§û úöö®ò≠„"
                    End
                    Else If (sFtp='') Begin
                        Send Info_Box "FTP Address field is empty"
                        Send Activate to frmAddress
                    End
                    Else If (sUser='') Begin
                        Send Info_Box "User field is empty"
                        Send Activate to frmUserName
                    End
                    Else If (sPassword='') Begin
                        Send Info_Box "Password field is empty"
                        Send Activate to frmPassword
                    End
                    Else If (sDir='') Begin
                        Send Info_Box "Directory field is empty"
                        Send Activate to frmDirectory
                    End
                End
            End_Procedure // OnClick

















            //AB-StoreEnd

        End_Object    // btn_Connect

        Object oStatusForm is a editSub
            Set Size to 28 254
            Set Location to 191 210
            Set Color to clBtnFace
            Set Enabled_State to FALSE
            Set Read_Only_State to TRUE

            //AB-StoreStart

            Procedure AddInfo string sInfo
                Send beginning_of_data
            //    ifnot ( character(13) ) in sInfo ;
            //        append sInfo ( character(13) ) ( character(10) )
                append sInfo (character(13)+character(10))
                send insert sInfo
                send paint
            End_Procedure


            //AB-StoreEnd

        End_Object    // oStatusForm

        Object btnSelectFolder is a ButtonSub

            //AB-StoreTopStart


            //AB-StoreTopEnd

            Set Label to "Ñß†¢¶ö„ ≠ò°‚¢¢¶¨"
            Set Size to 14 80
            Set Location to 172 245
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            //Set Visible_State to False


            Procedure OnClick
                Integer iInt
                String sStr sStr2
                //Send Activate to oDirectoryPicker
                SET DPDlgPath Of oDirectoryPicker to (ToAnsi(fsGetLastDir()))
                Move (DPDlgShow(oDirectoryPicker(Self)))  to sStr
                GET DPDlgPath Of (oDirectoryPicker(Self)) to sStr2  // Full Path
                Move (Trim(sStr2)) to sStr2
                Set piCount                     to 0
                If (sStr2<>'')  Begin
                    Set Value Of FormSub1 Item 0 to (Uppercase(TOOEM(sStr2)))

                    Clear TmpSel
                    Find Gt Tmpsel.recnum
                    While (Found=1)
                        Delete TmpSel
                        Find Gt Tmpsel.recnum
                    Loop

                    Get fiPutLastDir (TOOEM(sStr2)) to iInt
                    Send KeyAction                  to btnFillList
                End
                Else Set Value Of FormSub1 Item 0 to ''
            End_Procedure // OnClick











            //AB-StoreEnd

        End_Object    // btnSelectFolder

        Object FormSub1 is a FormSub
            Set Size to 13 157
            Set Location to 2 306
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_FontHeight Item 0 to 14
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "Arial"
            Set Implicit_Shadow_State to TRUE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart

            Set Visible_State to False





            //AB-StoreEnd

        End_Object    // FormSub1

        Object BtnFillList is a ButtonSub
            Set Label to "Fill List With all Multimedia Files"
            Set Size to 14 37
            Set Location to 158 336
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Set Visible_State to False

            Procedure OnClick
                Integer isRecursive iInt
                String sExt sFrom

                Send Cursor_Wait to (Cursor_Control(Self))

                Move (Uppercase(Value(FormSub1(Self),0)))   to sFrom
                Move (Trim(sFrom))                          to sFrom

                If ((Uppercase(Left(sFrom,2))='A:') Or ((sFrom<>'') And (Length(sFrom)>3))) Begin
                    Move '*.*' to sExt
                    Set xfindSearchString          Of oRecursiveFileFinder   to (Trim(sExt))
                    Set xfindSearchFrom            Of oRecursiveFileFinder   to sFrom
                    Set xfindSearchSubDirs         Of oRecursiveFileFinder   to (isRecursive)
                    Send xfindStartSearching       to oRecursiveFileFinder
                End
                Send Beginning_Of_Data to dbGridSub1
                Send Cursor_Ready to (Cursor_Control(Self))
            End_Procedure // OnClick


























            //AB-StoreEnd

        End_Object    // BtnFillList

        Object dbGridSub1 is a dbGridSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Main_File to Tmpsel.File_Number
            Set Ordering to 1
            Set Size to 161 458
            Set Location to 5 5
            Set Wrap_State to TRUE
            Set No_Create_State to TRUE
            Set No_Delete_State to TRUE
            Set Validate_Mode to Validate_Default

            Begin_Row
                Entry_Item Tmpsel.Is_selected
                Entry_Item Tmpsel.Pathname
                Entry_Item Tmpsel.Filename
                Entry_Item Tmpsel.Extension
                Entry_Item Tmpsel.Full_path_name
            End_Row

            Set Form_Width    item 0 to 14
            Set Header_Label  item 0 to "Ñ"
            Set Column_Checkbox_State  item 0 to True

            Set Form_Width    item 1 to 129
            Set Header_Label  item 1 to "î·°ú¢¢¶™"

            Set Form_Width    item 2 to 65
            Set Header_Label  item 2 to "Ä®ÆúÂ¶"

            Set Form_Width    item 3 to 32
            Set Header_Label  item 3 to "ïò®"

            Set Form_Width    item 4 to 211
            Set Header_Label  item 4 to "è¢„®ú™ Ê§¶£ò"


            //AB-StoreStart

            set currentrowcolor  to 11468799
            set currentcellcolor to 11468799

            Procedure Find_Poses
                Local Number cCount iFs
                File_Size tmpSel to iFs
                If (iFs) Begin
                    Move 0 to cCount
                    Clear TmpSel
                    Move '1' to TmpSel.Is_Selected
                    Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                    While ((Found=1) And (TmpSel.Is_Selected='1'))
                        Add 1 to cCount
                        Find Gt TmpSel By Index.2 // TmpSel:Index.2:Is_Selected+Full_Path_Name
                    Loop
                    If (cCount) Set Label Of btn_Select to ("Deselect all "+(String(cCount))+" File(s)")
                    Else        Set Label Of btn_Select to ("Select all "  +(String(iFs))   +" File(s)")
                End
            End_Procedure

            Procedure Select_Toggling Integer i1 Integer i2
                Local integer cCount bState iBase iFs
                Local integer iCol
                Forward Send Select_Toggling i1 i2
                If (Should_Save(TmpSel_DD(Self))) Send Request_Save to TmpSel_DD
                Send Find_Poses
            End_Procedure

            Procedure Entry_Display Integer i1 Integer i2
                Integer iBase iInt iRec
                String sStr
                Forward Send Entry_Display i1 i2
                //Send Find_Poses
            End_Procedure



























            //AB-StoreEnd

        End_Object    // dbGridSub1

        Object txtSel is a TextBoxSub
            Set Label to "Ñß†¢úö£‚§ò"
            Set Location to 172 4
            Set Size to 10 39
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
        End_Object    // txtSel

        Object txtCount is a TextBoxSub
            Set Label to "label"
            Set Location to 172 48
            Set Size to 10 18
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"

            //AB-StoreStart
            Set Label to ''
            //AB-StoreEnd

        End_Object    // txtCount

        Object btn_Select is a ButtonSub
            Set Label to "Ñß†¢¶ö„ Ê¢‡§"
            Set Size to 14 77
            Set Location to 172 136
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Focus_Mode to Pointer_Only

            Procedure Select_All
                Integer cCount
                Number iFs
                File_Size tmpSel to iFs
                Set Dynamic_Update_State to False
                Send Clear  to Tmpsel_DD2
                Send Find   to tmpSel_DD2 gt 1
                While (Found=1)
                    If (tmpSel.Is_Selected<>'1') Begin
                        Set Field_Changed_Value Of TmpSel_DD2 Field Tmpsel.Is_selected to '1'
                        Send Request_Save to Tmpsel_DD2
                    End
                    Send Find to tmpSel_DD2 gt 1
                Loop
                Set Dynamic_Update_State to True
                Set Label Of btn_Select to ("Deselect all "+(String(iFS))+" File(s)")
            End_procedure

            Procedure DeSelect_All
                Integer iFs
                File_Size tmpSel to iFs
                Set Dynamic_Update_State to False
                Send Clear  to Tmpsel_DD2
                Send Find   to tmpSel_DD2 gt 1
                While (Found=1)
                    If (tmpSel.Is_Selected<>'') Begin
                        Set Field_Changed_Value Of TmpSel_DD2 Field Tmpsel.Is_selected to ''
                        Send Request_Save to Tmpsel_DD2
                    End
                    Send Find to tmpSel_DD2 gt 1
                Loop
                Set Dynamic_Update_State to True
                Set Label Of btn_Select to ("Select all "+(String(iFs))+" File(s)")
            End_procedure


            Procedure OnClick
                Integer iSelectCount iItemCount
                Get Select_Count    Of dbGridSub1 to iSelectCount
                If (iSelectCount)   Send Deselect_All
                Else                Send Select_All
                Send Beginning_Of_Data to dbGridSub1 True
            End_Procedure // OnClick











            //AB-StoreEnd

        End_Object    // btn_Select

        Object btnDel is a ButtonSub
            Set Label to "É†òö®ò≠„ ò®ÆúÂ‡§"
            Set Size to 14 76
            Set Location to 172 386
            Set Focus_Mode to Pointer_Only

            //AB-StoreStart
            Procedure OnClick
                Zerofile tmpsel
            End_Procedure // OnClick



            //AB-StoreEnd

        End_Object    // btnDel

        Object frmMessage is a FormSub
            Set Size to 13 252
            Set Location to 256 210
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // frmMessage

        Object HmApo is a cSyDateForm
            Set Size to 13 66
            Set Location to 229 210
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
        End_Object    // HmApo

        Object HmEos is a cSyDateForm
            Set Size to 13 66
            Set Location to 229 294
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"
        End_Object    // HmEos

        Object ButtonSub1 is a ButtonSub
            Set Label to "Ñ†©òö‡ö„ èò®ò©´ò´†°È§"
            Set Size to 14 95
            Set Location to 229 364

            //AB-StoreStart

            Object TimerObj2 Is A DFTimer

                Property Integer piForesCount   Public  0
                Property String  psRemFile2     Public ''
                Property String  psLocFile2     Public ''

                Set Auto_Start_State    to False
                Set Auto_Stop_State     to False

                Procedure OnTimer
                    Integer iCount rVal
                    Get piForesCount to iCount
                    send AddInfo to (oStatusForm (Self)) ("èú®†£‚§‡ ¢„Øû  "*(Trim(psRemFile2(Self)))-"...")
                    Increment iCount
                    Get fiGetFile Of GetFTP (psRemFile2(Self)) (psLocFile2(Self)) 0 1 to rVal
                    If (Not(rVal)) Begin
                        Set piFileRetreived to 1
                        Send Stop_Timer2
                    End
                    Set piForesCount to iCount
                    If (iCount>(piFtpTimesExit(Self))) Send Stop_Timer2
                End_Procedure

            End_Object

            Procedure Start_Timer2 String asRemoteFile String asLocalFile
                Set piFileRetreived                          to 0
                Set piForesCount        of (TimerObj2(Self)) to 0
                Set psRemFile2          of (TimerObj2(Self)) to (Trim(asRemoteFile))
                Set psLocFile2          of (TimerObj2(Self)) to (Trim(asLocalFile))
                EraseFile asLocalFile
                Set Timeout             of (TimerObj2(Self)) to (piFtpSecondsRetry(Self)*1000)
                Set Timer_Active_State  of (TimerObj2(Self)) to True // Starts timer
            End_Procedure

            Procedure Stop_Timer2
                Integer iFileRetreived iMetr iRecnum isFound
                Integer iID iMet iFileExists
                String  sFile
                // File Vinter fields (Comma delimited)
                String sVcompany sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime
                String sVqty sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode
                String sVclientCode sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAp

                Set Timer_Active_State of (TimerObj2(Self)) to False // Stops Timer

                // Check property set by timer2 if Vinter.txt is received
                Get piFileRetreived to iFileRetreived
                If (Not(iFileRetreived)) Begin
                    Send Info_Box 'Éú§ ú¢„≠üú† ´¶ ò®ÆúÂ¶ ßò®ò©´ò´†°È§' 'è¢û®¶≠¶®Âò'
                    If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect  Of MyRas
                    Procedure_Return
                End
                Get psLocFile2 Of TimerObj2 to sFile
                Move (Trim(sFile))          to sFile

                Get Get_File_Exists sFile   To iFileExists
                If (NOT(iFileExists)) Begin
                    Send Stop_Box "Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶ zbnemp.txt"
                    Procedure_Return
                End

                send AddInfo to (oStatusForm (Self)) ("í¶ ò®ÆúÂ¶ ú¢„≠üú† "*sFile-" ...")

                Goto ExitRoot

                Send ChangeAllFileModes DF_Filemode_ReadOnly
                Set_Attribute DF_File_Mode Of Btnemp.File_Number    to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Sysrecc.File_Number   to DF_Filemode_Default

                Indicate Err False
                BEGIN_TRANSACTION
                    Reread
                    Move Error_Object_ID to iID

                    // Read Vinter.txt and make btnemp records
                    Direct_Input Channel 9 sFile
                    Move 0 to iMetr
                    Read    Channel 9 sVcompany sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime sVqty
                    Read    Channel 9 sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode sVclientCode
                    Read    Channel 9 sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAP
                    Readln  Channel 9
                    If (Seqeof) Begin
                        Send Info_Box 'í¶ ò®ÆúÂ¶ Vinter.txt õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                        Abort_Transaction
                        Goto EnhProg
                    End

                    While (NOT(Seqeof))
                        Add 1 to iMet

                        send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û ßò®ò©´ò´†°¶Á " + String(iMet)+ "  ...")

                        Clear btnemp
                        Move (Trim(sVcompany))         to Btnemp.Vcompany
                        Move (Trim(sVsite   ))         to Btnemp.Vsite
                        Move (Trim(sVdate   ))         to Btnemp.Vdate
                        Move (Trim(sVvoucher))         to Btnemp.Vvoucher
                        Move (Trim(sVseries ))         to Btnemp.Vseries
                        Move (Trim(sVsn     ))         to Btnemp.Vsn
                        Move (Trim(sVrow    ))         to Btnemp.Vrow
                        Find Eq btnemp by index.1

                        If (Found) Begin
                            // Record is found.
                            // Check Pms_Recr. If '0' then move fields
                            // else don't touch.
                            If (Trim(Btnemp.Pms_Recr)='0') Begin
                                Reread Btnemp
                                Move (Trim(sVtime      ))   to Btnemp.Vtime
                                Move (Trim(sVqty       ))   to Btnemp.Vqty
                                Move (Trim(sVprodCode  ))   to Btnemp.VprodCode
                                Move (Trim(sVorderPrice))   to Btnemp.VorderPrice
                                Move (Trim(sVpumpID    ))   to Btnemp.VpumbID
                                Move (Trim(sVcarCode   ))   to Btnemp.Vcarcode
                                Move (Trim(sVconsCode  ))   to Btnemp.VconsCode
                                Move (Trim(sVclientCode))   to Btnemp.VclientCode
                                Move (Trim(sVlatCode   ))   to Btnemp.VlatCode
                                Move (Trim(sVsiteEmf   ))   to Btnemp.Vsiteemf
                                Move (Trim(sVqty2      ))   to Btnemp.Vqty2
                                Move (Trim(sTim        ))   to Btnemp.Tim
                                Move (Trim(sOffer_ID   ))   to Btnemp.Offer_ID
                                Move (Trim(sWapomast   ))   to Btnemp.Wapomast
                                Move (Trim(sAp         ))   to Btnemp.AP
                                Saverecord Btnemp
                                Unlock
                            End
                        End
                        Else Begin
                            Move (Sysrecc.Btnemp_Rec0+1)    To Btnemp.Btnemp_Rec0
                            Reread Sysrecc
                            Move (Sysrecc.Btnemp_Rec0+1)    To Sysrecc.Btnemp_Rec0
                            Saverecord Sysrecc
                            Unlock
                            Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                            (Trim(String(btnemp.btnemp_Rec0)))))) ;
                                                            to btnemp.btnemp_Recr
                            Move (Trim(sVtime      ))       to Btnemp.Vtime
                            Move (Trim(sVqty       ))       to Btnemp.Vqty
                            Move (Trim(sVprodCode  ))       to Btnemp.VprodCode
                            Move (Trim(sVorderPrice))       to Btnemp.VorderPrice
                            Move (Trim(sVpumpID    ))       to Btnemp.VpumbID
                            Move (Trim(sVcarCode   ))       to Btnemp.Vcarcode
                            Move (Trim(sVconsCode  ))       to Btnemp.VconsCode
                            Move (Trim(sVclientCode))       to Btnemp.VclientCode
                            Move (Trim(sVlatCode   ))       to Btnemp.VlatCode
                            Move (Trim(sVsiteEmf   ))       to Btnemp.Vsiteemf
                            Move (Trim(sVqty2      ))       to Btnemp.Vqty2
                            Move (Trim(sTim        ))       to Btnemp.Tim
                            Move (Trim(sOffer_ID   ))       to Btnemp.Offer_ID
                            Move (Trim(sWapomast   ))       to Btnemp.Wapomast
                            Move (Trim(sAp         ))       to Btnemp.AP
                            Saverecord Btnemp
                        End
                        Read    Channel 9 sVcompany sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime sVqty
                        Read    Channel 9 sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode sVclientCode
                        Read    Channel 9 sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAP
                        Readln  Channel 9
                    Loop

                END_TRANSACTION
                EnhProg:
                Move iID to Error_Object_ID
                UnLock
                Send ChangeAllFileModes DF_Filemode_Default
                If (Err) Begin
                    Send Stop_Box 'èò®¶¨©†·©´û°ò§ ©≠·¢£ò´ò °ò´· ´û§ õ†òõ†°ò©Âò\núöö®ò≠„™ ´‡§ ßò®ò©´ò´†°È§ ©´¶ ò®ÆúÂ¶ BTNEMP\nÜ õ†òõ†°ò©Âò ò°¨®Èüû°ú ú§´ú¢È™.' ('ë≠·¢£ò '+String(Err))
                End
                Else Begin
                    Send Info_Box 'Ü ¢„Øû ßò®ò©´ò´†°È§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                    Send Delete_Data    to oStatusForm
                    Set Value of frmMessage Item 0 to ''
                    Send Paint          to oStatusForm
                End

                ExitRoot:
                    Send Info_Box 'Ü ¢„Øû ßò®ò©´ò´†°È§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                    Send Delete_Data    to oStatusForm
                    Set Value of frmMessage Item 0 to ''
                    Send Paint          to oStatusForm

            End_Procedure

            Procedure OnClick
                Integer rVal
                Date    dApo dEos
                String  sPhone sName sPassw sDomain
                String  sFtp sUser sPassword sDir sConnectString sConnectCommand
                String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
                String  sSysfileFilesSendPath sFullFileName sFileName

                Get Value Of HmApo item 0 to dApo
                Get Value Of HmEos item 0 to dEos
                If (dApo='')    Sysdate dApo
                If (dEos='')    Move '31/12/2100' to dEos
                If (dApo>dEos) Begin
                    Send Stop_Box 'äò§üò©£‚§ú™ û£ú®¶£û§Âú™' 'Ä°Á®‡©û õ†òõ†°ò©Âò™'
                    Send Activate to HmApo
                    Procedure_Return
                End

                Get psBranchSendPathFiles       to sBranchSendPathFiles
                Get psBranchSendPathConf        to sBranchSendPathConf
                Get psSysfileFilesSendPath      to sSysfileFilesSendPath

                Move (Trim(sBranchSendPathFiles ))  to sBranchSendPathFiles
                Move (Trim(sBranchSendPathConf  ))  to sBranchSendPathConf
                Move (Trim(sSysfileFilesSendPath))  to sSysfileFilesSendPath

                Get Value Of frmAddress     to sFtp
                Get Value Of frmUserName    to sUser
                Get Value Of frmPassword    to sPassword
                Get Value Of frmDirectory   to sDir
                Move (Trim(sFtp))           to sFtp
                Move (Trim(sUser))          to sUser
                Move (Trim(sPassword))      to sPassword
                Move (Trim(sDir))           to sDir

                // Connect to ftp site
                if (trim(sFtp)<>'') begin
                    if ( sUser<>"") begin
                       Move (dvInternetConnect(sFtp,sUser,sPassword,0)) to rVal
                    end
                    else move (dvInternetConnect(sFtp,"","",0)) to rVal //anonymous login
                end
                if rVal begin
                    send ShowInternetErrorMessage rVal
                    If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect Of MyRas
                    procedure_return
                end

                // Prepare zsendd.txt filename
                Move (Trim(sSysfileFilesSendPath)+'zsendd.txt') to sLocalFile
                Move (Trim(sDir)                 +'zsendd.txt') to sRemoteFile

                // Create zsendd.txt file
                Direct_Output   Channel 9 sLocalFile
                Write           Channel 9 dApo
                Writeln         Channel 9
                Write           Channel 9 dEos
                Writeln         Channel 9
                Close_Output    Channel 9

                // Send zsendd.txt file
                Get fiSendFile Of GetFTP sLocalFile sRemoteFile 1 to rVal
                If (rVal) Begin
                    Send ShowInternetErrorMessage rVal
                    If (psBranchPhone(self)<>'') Send CloseDialUp Of MyRas
                    //Send RasXComDisConnect Of MyRas
                    Procedure_Return
                End

                // Prepare Receive for Vinter.txt filename
                Move (Trim(sSysfileFilesSendPath)+'Vinter.txt') to sLocalFile
                Move (Trim(sDir)                 +'Vinter.txt') to sRemoteFile

                Send Start_Timer2 sRemoteFile sLocalFile

            End_Procedure // OnClick


















            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "ëÁ§õú©û ©´¶§ ¨ß¶¢¶ö†©´„"
            Set Location to 246 210
            Set Size to 10 94
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "É.Äè Ü£/§Âò òß¶"
            Set Location to 219 210
            Set Size to 10 61
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "É.Äè Ü£/§Âò ú‡™"
            Set Location to 219 294
            Set Size to 10 59
        End_Object    // TextBoxSub3


        //AB-StoreStart

        Object oDirectoryPicker is a OLEDPDlg
            Set Size            to 0 0
            Set Location        to 0 0
            Set Visible_State   to False
            Procedure Activate
                Forward Send Activate
                Set Location    to 1 1
                Set Size        to 190 190
                SET DPDlgRoot   to 0
                //  0=Desktop
                //  1=Control Panel
                //  2=Desktop Directory
                //  3=My Computer
                //  4=Font Directory
                //  5=Network Neighborhood
                //  6=Printers
                //  7=Programs
                //  8=Recent
                //  9=Recycle Bin
                // 10=Send To
                // 11=Start Menu
                // 12=Start Up
                // 13=Templates
                // 14=Custom Root
            End_procedure
        End_Object

        Object oRecursiveFileFinder is a OLExfind
            Set Size            to 0 0
            Set Location        to 0 0
            Set Visible_State   to False
            Procedure OnxfindFoundFile
                Integer iCount
                String sStr sPath sFile
                Get xfindFileName                       to sStr
                Move (Trim(UpperCase(sStr)))            to sStr
                Get fsReturnFileFromPath        sStr    to sFile
                Move (Trim(UpperCase(sFile)))           to sFile
                Get fsReturnDirectoriesFromPath sStr    to sPath
                Move (Trim(UpperCase(sPath)))           to sPath
                Clear TmpSel
                Move sStr to TmpSel.Full_Path_Name
                Find eq TmpSel By Index.1
                If (Not(Found)) Begin
                    Move (UpperCase(fsVresExt(Trim(sFile)))) to TmpSel.EXTENSION
                    Move (Trim(sFile))                              to TmpSel.FILENAME
                    Move (Trim(sPath))                              to TmpSel.PATHNAME
                    Saverecord TmpSel
                End
                Set piCount to (piCount(Self)+1)
                Set Label of txtCount to (piCount(Self))
            End_procedure
        End_Object

        Object MyRas is a OLERasXCom

            Procedure OpenDialUp
                Integer isConnected iState
                Get RasXComEntryConnected to isConnected
                If (Not(isConnected)) Begin
                    Send RasXComConnect
                    Get RasXComEntryConnected to isConnected
                    If (Not(isConnected)) Begin
                        Set piErrorOccured to True
                        Send Stop_Box 'Éú§ £ß¶®È §ò ò§¶Â•‡ ´û§ ö®ò££„' 'è¢û®¶≠¶®Âò'
                        Procedure_Return
                    End
                End
            End_Procedure

            Procedure CloseDialUp
                Send RasXComDisconnect
            End_Procedure

            Procedure RasXComDone OLE_MethodsEnum lLastMethod Integer lErrorCode String lErrorString
                Integer iState
                Get RasXComState to iState
                If (iState = 8192) Begin
                    // Connected
                    // Disable  Button Connect
                    // Enable   Button Disconnect
                End
                Else If (iState = 8193) Begin
                    // Not connected
                    // Disable  Button Disconnect
                    // Enable   Button Connect
                End
            End_Procedure

            Procedure RasXComStateChanged Integer lNewState Integer lOldState
            End_Procedure

        End_Object

        //Object MyRasNotify is a OLEIRasXComNotify
        //    Procedure IRasXComNotifyDone LPDispatch lPackageObject OLE_MethodsEnum lLastMethod Integer lErrorCode String lErrorString
        //        Integer iState
        //        Forward Send IRasXComNotifyDone lPackageObject lLastMethod lErrorCode lErrorString
        //        Get RasXComState Of MyRas to iState
        //        If (iState = 8192) Begin
        //            // Connected
        //            // Disable  Button Connect
        //            // Enable   Button Disconnect
        //        End
        //        Else If (iState = 8193) Begin
        //            // Not connected
        //            // Disable  Button Disconnect
        //            // Enable   Button Connect
        //        End
        //    End_Procedure

        //// Fired when the control's internal state changes.
        //    Procedure IRasXComNotifyStateChanged LPDispatch lPackageObject Integer lNewState Integer lOldState
        //        Forward Send IRasXComNotifyStateChanged lPackageObject lNewState lOldState
        //    End_Procedure

        //End_Object

        Object Tmpsel_DD2 is a Tmpsel_DataDictionary
        End_Object

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

        Procedure Activating
            local integer iRetVal
            String  sPhone sName sPassw sDomain
            String  sFtp sUser sPassword sDir sConnectString sConnectCommand
            String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
            String  sSysfileFilesSendPath sFullFileName sFileName
            send InitializeErrorArray           to (oInternetErrorArray(Self))
            move (dvInternetAttemptConnect())   to iRetVal //attempt a connect to the internet
            move (dvInternetOpen())             to iRetVal //initialize internet functions

            forward send activating

            Clear Branch
            Move Syscurxr.Company_Code      to Branch.Company_Code
            Move Syscurxr.Branch_Code       to Branch.Branch_Code
            Find Eq Branch By Index.1
            Set psBranchPhone               to (Trim(Branch.Send_Phone))
            Set psBranchSendPathFiles       to (Trim(Branch.Send_Path_Files))
            Set psBranchSendPathConf        to (Trim(Branch.Send_Path_Conf))

            Set psSysfileFilesSendPath      to (Trim(Sysfile.Files_Send_Path))
            Set piFtpSecondsRetry           to Branch.Ftp_Sec_Retry
            Set piFtpTimesExit              to Branch.Ftp_Sec_Exit

            Move (Trim(Branch.SEND_PATH_FILES))  to sBranchSendPathFiles
            Move (Trim(Branch.SEND_PATH_CONF))   to sBranchSendPathConf
            Move (Trim(Sysfile.FILES_SEND_PATH)) to sSysfileFilesSendPath

            Move (Trim(sSysfileFilesSendPath))   to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zsok.txt'
            Move (Trim(sLocalFile))     to sLocalFile

            Move (Trim(sSysfileFilesSendPath))   to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zsok.txt'
            Move (Trim(sLocalFile)) to sLocalFile
            EraseFile sLocalFile

            Move (Trim(sSysfileFilesSendPath))   to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zsendd.txt'
            Move (Trim(sLocalFile))     to sLocalFile
            EraseFile sLocalFile

            Move (Trim(sSysfileFilesSendPath))   to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zbtnemp.txt'
            Move (Trim(sLocalFile))     to sLocalFile
            EraseFile sLocalFile

            EraseFile 'C:\Welcome.txt'

            Move (Trim(sSysfileFilesSendPath))  to sLocalFile
            Move (Trim(sLocalFile))     to sLocalFile
            Append sLocalFile 'zrok.txt'
            Move (Trim(sBranchSendPathConf)+'zrok.txt') to sRemoteFile
            Move (Trim(sLocalFile))     to sLocalFile
            EraseFile sLocalFile
        End_Procedure

        Procedure Activate_View Returns Integer
            Integer rVal iInt iVariant
            Date    dHmnia
            String  sPhone sName sPassw sDomain
            String  sFtp sUser sPassword sDir sConnectString sConnectCommand
            String  sBranchSendPathFiles sBranchSendPathConf sLocalFile sRemoteFile
            String  sSysfileFilesSendPath sFullFileName sFileName
            Olevariant  vVariant

            Forward Get Msg_Activate_View to rVal
            reread sysfile
            unlock

            Sysdate dHmnia
            Set Value Of HmApo Item 0 to dHmnia
            Set Value Of HmEos Item 0 to dHmnia

            Send Activate to oDirectoryPicker
            Clear Branch
            Move Syscurxr.Company_Code      to Branch.Company_Code
            Move Syscurxr.Branch_Code       to Branch.Branch_Code
            Find Eq Branch By Index.1
            Set psBranchPhone               to (Trim(Branch.Send_Phone))
            Set psBranchSendPathFiles       to (Trim(Branch.Send_Path_Files))
            Set psBranchSendPathConf        to (Trim(Branch.Send_Path_Conf))
            Set psSysfileFilesSendPath      to (Trim(Sysfile.Files_Send_Path))
            Set piFtpSecondsRetry           to Branch.Ftp_Sec_Retry
            Set piFtpTimesExit              to Branch.Ftp_Sec_Exit
            Move (Trim(Branch.Send_Phone))  to sPhone
            Move (Trim(Branch.Ras_Name))    to sName
            Move (Trim(Branch.Ras_Passw))   to sPassw
            Move (Trim(Branch.Ras_Domain))  to sDomain

            If (sPhone) Begin
                Send CreateDispatch             Of MyRas
                Set RasXComLicenseKey           Of MyRas        to 'KL0A-GXLN86QQPKJB'
            //    Get RasXComNotificationObject   Of MyRas        to vVariant
            //    GetOleVariantValue              Of vVariant     to iVariant
            //    Send AttachDispatch             Of MyRasNotify     iVariant

                //-------- Connection Parameters --------//
                SET RasXComPhoneNumber          Of MyRas        to (Trim(sPhone))
                SET RasXComLogonName            Of MyRas        to (Trim(sName))
                SET RasXComLogonPassword        Of MyRas        to (Trim(sPassw))
                SET RasXComDomain               Of MyRas        to (Trim(sDomain))

                /////////////Send RasXComConnect             Of MyRas
                //-------- Connection Parameters --------//
            End

            SET DPDlgPath Of oDirectoryPicker to (Trim(Sysfile.Files_Send_Path))

            ZeroFile TMPSEL
            If (Value(frmAddress  (Self),0)='')    Set Value Of frmAddress     Item 0 to (Trim(sDomain))
            If (Value(frmUserName (Self),0)='')    Set Value Of frmUserName    Item 0 to (Trim(sName))
            If (Value(frmPassword (Self),0)='')    Set Value Of frmPassword    Item 0 to (Trim(sPassw))
        //        If (Value(frmAddress  (Self),0)='')    Set Value Of frmAddress     Item 0 to (fsGetLastAddress  (Self))
        //        If (Value(frmUserName (Self),0)='')    Set Value Of frmUserName    Item 0 to (fsGetLastUser     (Self))
        //        If (Value(frmPassword (Self),0)='')    Set Value Of frmPassword    Item 0 to (fsGetLastPassword (Self))
            Set Label Of txtCount to (Select_Count(dbGridSub1(Self)))
            Set Value Of FormSub1       Item 0 to (Trim(Sysfile.Files_Send_Path))
            Set Value Of frmDirectory   Item 0 to (Trim(Sysfile.Files_Send_Path))

            Send KeyAction  to btnFillList
            Send KeyAction  to Btn_Select
            Send Delete_Data    to oStatusForm
            Send Paint          to oStatusForm
            Set Value of frmMessage Item 0 to ''
            Procedure_Return rVal
        End_Procedure

        Procedure Close_Panel
            Integer iInt
            If (psBranchPhone(self)<>'') Begin
                Send RasXComDisConnect  Of MyRas
                Send ReleaseDispatch    Of MyRas
            //    Send ReleaseDispatch    Of MyRasNotify
            End
            Forward Send Close_Panel
        //    If (Value(frmAddress(Self),0)<>'')      Move (fiPutLastAddress  (Self,(Value(frmAddress  (Self),0))))   to iInt
        //    If (Value(frmUserName(Self),0)<>'')     Move (fiPutLastUser     (Self,(Value(frmUserName (Self),0))))   to iInt
        //    //Move (fiPutLastPassword (Self,(Value(frmPassword (Self),0))))   to iInt
        //    If (Value(frmDirectory(Self),0)<>'')    Move (fiPutLastDirectory(Self,(Value(frmDirectory(Self),0))))   to iInt
        End_procedure































        //AB-StoreEnd

    CD_End_Object    // GetFTP

//AB/     End_Object    // prj
