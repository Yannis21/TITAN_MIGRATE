//AB/ Project Timer
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Timer"
//AB/     Set ProjectFileName to "Timer.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Timer is a dbViewSubS
//     frmTimeOut is a FormSub
//     frmExit is a FormSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     frmShow is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     frmAddress is a FormSub
//     frmUserName is a FormSub
//     frmPassword is a FormSub
//     frmDirectory is a FormSub
//     btn_Connect is a ButtonSub
//     oFtp is a OLEInet
//     TimerObj is a DFTimer

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object btn_Connect
Register_Object frmAddress
Register_Object frmDirectory
Register_Object frmExit
Register_Object frmPassword
Register_Object frmShow
Register_Object frmTimeOut
Register_Object frmUserName
Register_Object oFtp
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object Timer
Register_Object TimerObj


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open tmpSel

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Form.Sub
Use Button.Sub
Use Txtbox.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Timer FOR Timer

Object Timer is a dbViewSubS
    Set Label to "Test For Timer Use / New FTP (INET)"
    Set Size to 260 489
    Set Location to 6 8

    //AB-DDOStart


    //AB-DDOEnd

    Object frmTimeOut is a FormSub
        Set Size to 13 31
        Set Location to 17 119
        Set Label_Col_Offset to 2
    End_Object    // frmTimeOut

    Object frmExit is a FormSub
        Set Size to 13 31
        Set Location to 17 223
        Set Label_Col_Offset to 2
    End_Object    // frmExit

    Object ButtonSub1 is a ButtonSub
        Set Label to "Start Timer"
        Set Location to 38 26
        Set Focus_Mode to Pointer_Only

        //AB-StoreStart

        Procedure OnClick
            Send Start_Timer
        End_Procedure // OnClick

        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub
        Set Label to "Stop Timer"
        Set Location to 38 205
        Set Focus_Mode to Pointer_Only

        //AB-StoreStart
        Procedure OnClick
            Send Stop_Timer
        End_Procedure // OnClick

        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object frmShow is a FormSub
        Set Size to 13 119
        Set Location to 38 80
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmShow

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Timer Retries (milliseconds)"
        Set Location to 17 25
        Set Size to 10 86
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Timer Retries"
        Set Location to 17 171
        Set Size to 10 43
    End_Object    // TextBoxSub2

    Object frmAddress is a FormSub
        Set Label to "Ftp Address"
        Set Size to 13 262
        Set Location to 129 102
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "terminal3"

        //AB-StoreStart

        //AB-StoreEnd

    End_Object    // frmAddress

    Object frmUserName is a FormSub
        Set Label to "User Name"
        Set Size to 13 262
        Set Location to 145 102
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "administrator"
    End_Object    // frmUserName

    Object frmPassword is a FormSub
        Set Label to "User Password"
        Set Size to 13 262
        Set Location to 161 102
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Password_State Item 0 to TRUE
        Set Value Item 0 to "123"

        //AB-StoreStart

        Set Password_State to True

        //AB-StoreEnd

    End_Object    // frmPassword

    Object frmDirectory is a FormSub
        Set Label to "Remote Directory"
        Set Size to 13 262
        Set Location to 177 102
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "TrfTomeas"
    End_Object    // frmDirectory

    Object btn_Connect is a ButtonSub
        Set Label to "Transfer Selected Files"
        Set Size to 21 263
        Set Location to 193 103
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart

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
            Integer isOK
            String  sFtp sUser sPassword sDir sConnectString sConnectCommand
            String  sBranchSendPathFiles sBranchSendPathConf
            String  sSysfileFilesSendPath sFullFileName sFileName
            OLEVariant  rVal

            Clear Branch
            Move Syscurxr.Company_Code      to Branch.Company_Code
            Move Syscurxr.Branch_Code       to Branch.Branch_Code
            Find Eq Branch By Index.1

            Move Branch.SEND_PATH_FILES     to sBranchSendPathFiles
            Move Branch.SEND_PATH_CONF      to sBranchSendPathConf
            Move Sysfile.FILES_SEND_PATH    to sSysfileFilesSendPath

            Send Activate               to oFTP

            Get Value Of frmAddress     to sFtp
            Get Value Of frmUserName    to sUser
            Get Value Of frmPassword    to sPassword
            Get Value Of frmDirectory   to sDir

            Move (Trim(sFtp))           to sFtp
            Move (Trim(sUser))          to sUser
            Move (Trim(sPassword))      to sPassword
            Move (Trim(sDir))           to sDir

            EraseFile 'C:\Welcome.txt'

            Get fiFTPVerify to isOK

            If (isOK=1) Begin
                Move '' to sConnectCommand
                Move ("ftp:/"+"/"+sUser+":"+sPassword+"@"+sFtp+"/") to sConnectString
                Move ("Get Welcome.txt "+"c:\Welcome.txt")          to sConnectCommand
                Set InetRemoteHost Of oFTP to sFTP

                //SET InetDocument Of oFTP to 'autoexec.bat'
                //Send InetExecute to oFTP sConnectString  'LS' '' '' ''
                //Send InetExecute to oFTP sConnectString  'GET' '' '' ''//'welcome.txt c:\welcome.txt' ''
                 //sConnectCommand '' ''

                Send  InetExecute to oFTP sConnectString  'SEND ' 'c:\autoexec.bat \auto.bat' ''
                //Send  InetExecute to oFTP sConnectString  'SEND ' 'c:\autoexec.bat' ' auto.bat'

            End
            Else Begin
                If (isOK=(-1)) Begin
                    Send Info_Box "ƒœ¤ ™¨âŸž¡œ ¡á§¦ ˜ œ§ ¢œš£â¤ž œšš¨˜­ã"
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


    //AB-StoreStart
    Object oFtp is a OLEInet

        Procedure OnInetStateChanged Integer lState
            Integer iCode
            String sStr
            Case Begin
                Case (lState=1)
                        //
                    Case Break
                Case (lState=2)
                    Case Break
                Case (lState=3)
                    Case Break
                Case (lState=4)
                    Case Break
                Case (lState=5)
                    Case Break
                Case (lState=6)
                    Case Break
                Case (lState=7)
                    Case Break
                Case (lState=8)
                        Get InetResponseCode to iCode
                        //Get InetResponseInfo    to sStr
                        Get InetResponseInfo    to sStr
                    Case Break
                Case (lState=9)
                    Case Break
                Case (lState=10)
                    Case Break
                Case (lState=11)
                        Get InetResponseCode to iCode
                        //Get InetResponseInfo    to sStr
                        Get InetResponseInfo    to sStr

                    Case Break
                Case (lState=12)
                    Case Break
            Case End
        End_Procedure

    End_Object

    Object TimerObj Is A DFTimer
        Property Integer piEventFinished    Public  0
        Property Integer piAbortTimes       Public  0
        Property Integer piTimesCount       Public  0

        Set Auto_Start_State    to False
        Set Auto_Stop_State     to False

        Procedure OnTimer
            Integer iCount
            Get Value Of frmShow Item 0 to iCount
            Increment iCount
            Set Value Of frmShow Item 0 to iCount
            If (iCount=50) Send Stop_Timer
        End_Procedure

    End_Object

    Procedure Start_Timer
        Set Timeout             of (TimerObj(Self)) to (Value(frmTimeOut(Self),0))
        Set piTimesCount        of (TimerObj(Self)) to (Value(frmExit   (Self),0))
        Set Timer_Active_State  of (TimerObj(Self)) to True // Starts timer
    End_Procedure

    Procedure Stop_Timer
        Set Timer_Active_State of (TimerObj(Self)) to False // Stops Timer
    End_Procedure









    //AB-StoreEnd

End_Object    // Timer


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
