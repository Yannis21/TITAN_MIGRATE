//AB/ Project Data Entry View
//AB/ Object prj is a View_Project
//AB/     Set Size to 230 325

//Open SYSCURXR
//Open COMPANY

Use File_dlg.pkg
Use cComDPDLG.pkg
Use cComXFIND.pkg

Activate_View Activate_Utf_View for Utf_View

Object Utf_View is a dbView

    Set Border_Style to Border_Thick
    Set Size to 121 508
    Set Location     to 9 9

    Property Integer piChoice public 0

    Procedure Activate_View Returns Integer
        Integer rVal
        String  sFolderInitial
        Set Label to "ãú´ò´®¶ß„ ©ú UTF-8 (v4.8.4 - 02/12/2013)" 
//        Get Value of FormSub10 item 0 to sFolderInitial
//        If (Trim(sFolderInitial)="") Begin
//            Clear Company
//            Move SyscurXR.Company_Code to Company.Company_Code
//            Find Eq Company by Index.1
//            Set Value of FormSub10 item 0 to (Trim(Company.Sap_Path))
//        End

        If (gviSkipHmniaCheck=1) Begin
             Set Current_Radio of oDbradiogroupSub1 to 1
             Set Value of frmFileName item 0 to (Uppercase(Trim(gvsSapPath)))
        End
        Else Begin
            Set Current_Radio of oDbradiogroupSub1 to 0
        End

        Set Value of FormSub10 item 0 to (Uppercase(Trim(gvsSapPath)))
        
        Forward Get Msg_Activate_View to rVal

        If (gviSkipHmniaCheck=1) Begin
            Send Onclick of btnSub1
        End

        Procedure_Return rVal
    End_Procedure

    Function fsReturnFileFromPath String asFullPath Returns String
        String rVal lsDirSep
        Integer iPos iMet iLen iCnt
        Move (Trim(asFullPath))                 to rVal
        Move (Sysconf(SYSCONF_DIR_SEPARATOR))   to lsDirSep
        If (rVal contains lsDirSep) Begin
            Move (Length(rVal)) to iLen
            Move iLen to iCnt
            While iCnt Gt 0
                If (Mid(rVal,1,iCnt)=lsDirSep) Begin
                    If (iCnt=iLen) Function_Return asFullPath
                    Else Function_Return (Right(rVal,(iLen-iCnt)))
                End
                Decrement iCnt
            End // While iCnt Gt 0
        End
        Else  Function_Return (Trim(asFullPath))
        Function_Return rVal
    End_Function


    Function fsReadRegistryUTFfolder Returns String
        String rVal lsCurrentWksp
        Get_Profile_String "WorkSpaces" "CurrentWorkspace" to lsCurrentWksp
        If (lsCurrentWksp="") Get psWorkspaceName of (phoWorkspace(ghoApplication)) to lsCurrentWksp
        Insert "WorkSpaces\" in lsCurrentWksp At 1
        Append lsCurrentWksp "\UTF"
        Get_Profile_String lsCurrentWksp "ContainingFolder"  to rVal
        Function_Return (Trim(rVal))
    End_Function
    
    Function fsWriteRegistryUTFfolder String asPathToWrite Returns Integer
        Integer rVal
        String  lsCurrentWksp
        Get_Profile_String "WorkSpaces" "CurrentWorkspace" to lsCurrentWksp
        If (lsCurrentWksp="") Get psWorkspaceName of (phoWorkspace(ghoApplication)) to lsCurrentWksp
        Insert "WorkSpaces\" in lsCurrentWksp At 1
        Append lsCurrentWksp "\UTF"
        Set_Profile_String lsCurrentWksp "ContainingFolder"  to (Trim(asPathToWrite))
        Function_Return rVal
    End_Function

    Function fsReturnDirectoriesFromPath String asFullPath Returns String
        String rVal lsDirSep
        Integer iPos iMet iLen iCnt
        Move (Trim(asFullPath))                 to rVal
        Move (SysConf(SYSCOnF_DIR_SEPARATOR))   to lsDirSep
        If (rVal contains lsDirSep) Begin
            Move (Length(rVal)) to iLen
            Move iLen to iCnt
            While iCnt gt 0
                If (Mid(rVal,1,iCnt)=lsDirSep) Function_Return (Left(rVal,iCnt))
                Decrement iCnt
            End // While iCnt Gt 0
        End
        Function_Return rVal
    End_Function


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

    Object FormSub10 is a Form
        Set Size to 13 382
        Set Location to 57 111
        Set Label_Col_Offset to 2
        Set Form_FontHeight item 0 to 14
        Set Form_FontWeight item 0 to 600
        Set Form_TypeFace item 0 to "Arial"
        Set Color to 15794160
    End_Object    // FormSub1

    Object btnSelectFolder is a Button
        Set Label to "Ñß†¢¶ö„ ≠ò°‚¢¢¶¨"
        Set Size to 14 85
        Set Location to 56 20
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace item 0 to "MS Sans Serif"

        Procedure OnClick
            Integer iInt
            String sStr sStr2 sFolder
            
            Set ComBrowseForComputer    of oDirectoryPicker to True

            Move (Trim(gvsSapPath))                                     to sFolder
            If (Trim(sFolder)="") Move (fsReadRegistryUTFfolder(Self))  to sFolder
            Move (Trim(sFolder))                    to sFolder
            If (sFolder="") Move "C:\"              to sFolder
            Set ComPath     of oDirectoryPicker     to sFolder
            Get ComShow     of oDirectoryPicker     to sStr
            
            Get ComPath of oDirectoryPicker         to sStr2  // Full Path
            Move (Trim(sStr2))                      to sStr2
            If (sStr2<>'')  Set Value of FormSub10 item 0 to (Uppercase(TOOEM(sStr2)))
            Else            Set Value of FormSub10 item 0 to ''
        End_Procedure // OnClick

    End_Object    // btnSelectFolder

    Object frmFileName is a Form

        Set Label to "Ñß†¢¶ö„ Ä®ÆúÂ¶¨"
        Set Size to 13 384
        Set Location to 57 111
        Set Label_Col_Offset to 20
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace item 0 to "MS Sans Serif"
        Set Label_Row_Offset to 4
        Set Color to 13303807

        Procedure Prompt
            String  sFileName sFolder
            Integer bOpen
            Get Show_Dialog of oOpenDialog1 to bOpen
            If bOpen Begin
                Get File_Name of oOpenDialog1 to sFileName
                If (Trim(sFileName)<>'') Set Value item 0 to sFileName
            End
        
        End_Procedure
        
        Procedure OnChange000
            String sVal
            Get Value item 0 to sVal
            Move (Trim(sVal)) to sVal
            //Set psFileName to sVal
        End_Procedure

    End_Object    // frmFileName

    Object oDbradiogroupSub1 is a Dbradiogroup
        Set Location to 2 173
    
        Set Size to 40 163
    
        Object Radio1 is a Radio
            Set Auto_Size_State to False
            Set Label to "Ñß†¢¶ö„ è¶¢¢òß¢È§ Ä®ÆúÂ‡§ òß¶ î·°ú¢¶"
            Set Size to 10 151
            Set Location to 10 5
        End_Object    // Radio1
    
        Object Radio2 is a Radio
            Set Auto_Size_State to False
            Set Label to "Ñß†¢¶ö„ £ú£¶§‡£‚§¶¨ Ä®ÆúÂ¶¨"
            Set Size to 10 145
            Set Location to 25 5
        End_Object    // Radio2

        Procedure Notify_Select_State Integer iToItem Integer iFromItem
            Set piChoice to iToItem

            Set Visible_State of btnSelectFolder    to (iToItem=0)
            Set Visible_State of FormSub10          to (iToItem=0)
            Set Visible_State of frmFileName        to (iToItem=1)
            
            Set Enabled_State of btnSelectFolder    to (iToItem=0)
            Set Enabled_State of FormSub10          to (iToItem=0)
            Set Enabled_State of frmFileName        to (iToItem=1)

        End_Procedure

    
    End_Object

    Object chkOEM is a Checkbox
        Set Size to 10 50
        Set Location to 79 191
        Set Label to "ï®„©û OEM"
        
        Set Checked_State to True
        
        Set Enabled_State to False
    End_Object

    Object chkANSI is a Checkbox
        Set Size to 10 50
        Set Location to 79 263
        Set Label to "ï®„©û ANSI"
        Set Enabled_State to False
    End_Object

    Object btnSub1 is a Button
        Set Size to 20 367
        Set Location to 97 71
        Set Label to "Ñßú•ú®öò©Âò °ò† £ú´ò´®¶ß„ ´‡§ Ä®ÆúÂ‡§ òß¶ OEM ©ú UTF-8"

        Procedure OnClick
            String  sFileName sFileNameUTF sFileNameOEM sStr1 sStr2 sStr3
            String  sLineIn sLineOut sExt sFrom sFilesFolder
            Address aString sLabel
            Integer iChoice iInt
            
            Get piChoice    to iChoice
            Get Label       to sLabel

            If (iChoice=0) Begin

                Get Value of FormSub10 item 0 to sFilesFolder
                If (Trim(sFilesFolder)="") Procedure_Return
                
                If (gviSkipHmniaCheck<>1) Move '*.txt' to sExt
                //Else                      Move '*.PUM' to sExt
                
                Set ComSearchString          of oRecursiveFileFinder   to (Trim(sExt))
                Set ComSearchFrom            of oRecursiveFileFinder   to sFilesFolder
                Set ComSearchSubDirs         of oRecursiveFileFinder   to 0
                Send ComStartSearching       to oRecursiveFileFinder
                
                If (gviSkipHmniaCheck<>1) Move (fsWriteRegistryUTFfolder(Self,(Trim(sFilesFolder)))) to iInt
            End
            Else Begin
                Get Value of frmFileName item 0 to sFileName
                Move (Trim(sFileName))          to sFileName

                If (Trim(sFileName)="") Begin
                    Send Stop_Box ("í¶ ò®ÆúÂ¶ ["+(Trim(sFileName))+"] õú§ ô®‚üû°ú")  "ë≠·¢£ò 1001"
                    Procedure_Return
                End 
                
                String sFolder
                Move (fsReturnDirectoriesFromPath(Self,sFileName))      to sFolder
                If (gviSkipHmniaCheck<>1) Move (fsWriteRegistryUTFfolder(Self,(Trim(sFolder))))   to iInt

                Move (Trim(sFileName)+".UTF8") to sFileNameUTF

                Direct_Input    channel 6 sFileName
                Direct_Output   channel 7 sFileNameUTF

                Readln channel 6 sLineIn
                While (not(SeqEof))
                    If (Trim(sLineIn)<>'') Begin
                        //  Move (ToOEM          (sLineIn)) to sLineIn
                        If (gviSkipHmniaCheck<>1) Begin
                            Move (ToOEM          (sLineIn)) to sLineIn
                        End
                        Move (OemToUtf8String(sLineIn)) to sLineOut
                        Writeln channel 7 sLineOut
                        
                    End
                    Readln channel 6 sLineIn
                Loop
                Close_Input  channel 6
                Close_Output channel 7

                //If (gviSkipHmniaCheck<>1) Begin
                    EraseFile sFileName

                    Move (Trim(sFileNameUTF)) to sStr1
                    
                    // Replace it with the new utf but as a txt by removing the .UTF at the end

                    Move (Replace(".UTF8",sStr1,"")) to sStr2

                    // Find the file name only without the full path for the rename command
                    // which does not want the full path name for the new name because it 
                    // uses the path from the initial file we want to rename
                    Move (Trim(fsReturnFileFromPath(Self,sStr2))) to sStr3
                    //
                    RenameFile sFileNameUTF to sStr3
                //End
                //Else Begin   
                //    EraseFile sFileName
                //    Move (Trim(sFileNameUTF)) to sStr1
                //    Move (Replace(".UTF8",sStr1,"")) to sStr2
                //    // Find the file name only without the full path for the rename command
                //    // which does not want the full path name for the new name because it 
                //    // uses the path from the initial file we want to rename
                //    Move (Trim(fsReturnFileFromPath(Self,sStr2))) to sStr3
                //End
            End

            Set Label to sLabel
            String sNewMess ss100
            Move "" to ss100
            
            If (gviSkipHmniaCheck=1) Move sStr2 to ss100
            
            Else If (iChoice=0) Get Value of FormSub10   item 0 to ss100
            Else                Get Value of frmFileName item 0 to ss100

            Move (Trim(ss100)) to ss100        
                
            Move ("Ü ú•òö‡ö„ ¶¢¶°¢û®Èüû°ú, üò ô®úÂ´ú ´ò ò®ÆúÂò ©´¶ "+ss100) to sNewMess
            
            If (gviSkipHmniaCheck<>1) Send Info_Box sNewMess "è¢û®¶≠¶®Âò"
            
            If (gviSkipHmniaCheck=1) Begin
                Send Request_Cancel of Utf_View
                Send Exit_Application
            End
            
        End_Procedure // OnClick

    End_Object

    Object oOpenDialog1 is a OpenDialog

        String sFold sFil
        Move (Trim(gvsSapPath)) to sFil
        
        Set Dialog_Caption to 'Select a Text file to Convert'
        Set Filter_String  to 'Text|*.txt;*.csv'
        
        If (gviSkipHmniaCheck=1) Move (fsReturnDirectoriesFromPath(Self,sFil)) to sFold

        Set Initial_Folder to (Trim(sFold))

    End_Object    // oOpenDialog1

    Object oDirectoryPicker is a cComDPDlg
        Set Size            to 0 0
        Set Location        to 0 0
        Set Visible_State   to False
        
        Procedure Activate
            Forward Send Activate
            Set Location    to 1 1
            Set Size        to 190 190
            Set ComRoot   to 3
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
        End_Procedure
    End_Object

    Object oRecursiveFileFinder is a cComXfind
        Set Size            to 0 0
        Set Location        to 0 0
        Set Visible_State   to False


        Procedure OnComFoundFile
            String  sFileName sFileNameUTF sFileNameOEM sStr sPath sFile
            String  sLineIn sLineOut sExt sFrom sFilesFolder sSapDate
            Address aString
            Integer iCount iOEM iANSI iTxtSize iUTFSize

            Get Checked_State of chkOEM  to iOEM
            Get Checked_State of chkANSI to iANSI

            Get ComFileName  to sFileName
            Move gvsSapHmnia to sSapDate

            If (gviSkipHmniaCheck=1) Begin
                Move (Trim(sFileName)+".UTF8")  to sFileNameUTF
                Direct_Input    channel 6 sFileName
                Get_Channel_Size 6 to iTXTSize
                Direct_Output   channel 7 sFileNameUTF
                Readln channel 6 sLineIn
                While (not(SeqEof))
                    If (Trim(sLineIn)<>'') Begin
                        If      (iOEM =1) Move (ToOEM (sLineIn)) to sLineIn
                        Else If (iANSI=1) Move (ToANSI(sLineIn)) to sLineIn
                        Set Label of btnSub1 to (Trim(Left(sLineIn,30)))
                        Move (OemToUtf8String(sLineIn))          to sLineOut
                        Writeln channel 7 sLineOut
                    End
                    Readln channel 6 sLineIn
                Loop
                Get_Channel_Size 7 to iUTFSize
                Close_Output channel 6
                Close_Output channel 7
    
                If (iTXTSize>iUTFSize) Begin
                    Send Info_Box ("Ñ£≠ò§Âùú´ò† ß®Êô¢û£ò ©´¶ ò®ÆúÂ¶ ß¶¨ ßò®·Æüû°ú\n"+trim(sFileName)) 'èêéëéïÜ'
                End
                
                // Éú™ ò§ ´‡®ò Æ®ú†òùú´ò† §ò ö†§ú† ´¶ ò®Æú†¶ rename òß¶ .UTF8 ©ú .TXT
                //Else Begin
                //    String sStr1 sStr2 sStr3
                //
                //    // Delete the old txt FI output
                //    EraseFile sFileName
                //    
                //    Move (Trim(sFileNameUTF))       to sStr1
                //    // Replace it with the new utf but as a txt by removing the .UTF at the end
                //    Move (Replace(".UTF8",sStr1,"")) to sStr2
                //    // Find the file name only without the full path for the rename command
                //    // which does not want the full path name for the new name because it 
                //    // uses the path from the initial file we want to rename
                //    Move (Trim(fsReturnFileFromPath(Self,sStr2))) to sStr3
                //    //
                //    RenameFile sFileNameUTF to sStr3
                //    //
                //End
            End
            Else If (sFileName contains sSapDate) Begin
            
                Move (Trim(sFileName)+".UTF8")  to sFileNameUTF
    
                Direct_Input    channel 6 sFileName
                
                Get_Channel_Size 6 to iTXTSize
    
                Direct_Output   channel 7 sFileNameUTF
                Readln channel 6 sLineIn
                While (not(SeqEof))
                    If (Trim(sLineIn)<>'') Begin
                        If      (iOEM =1) Move (ToOEM (sLineIn)) to sLineIn
                        Else If (iANSI=1) Move (ToANSI(sLineIn)) to sLineIn
                        Set Label of btnSub1 to (Trim(Left(sLineIn,30)))
                        Move (OemToUtf8String(sLineIn))          to sLineOut
                        Writeln channel 7 sLineOut
                    End
                    Readln channel 6 sLineIn
                Loop
                Get_Channel_Size 7 to iUTFSize
                
                Close_Output channel 6
                Close_Output channel 7
    
                //Direct_Input channel 7
                //Get_Channel_Size 7 to iUTFSize
                //Close_Input channel 7 
                
                If (iTXTSize>iUTFSize) Begin
                    Send Info_Box ("Ñ£≠ò§Âùú´ò† ß®Êô¢û£ò ©´ò ßò®òÆü‚§´ò ò®ÆúÂò\n"+trim(sFileName)) 'èêéëéïÜ'
                End
                Else Begin
                    String sStr1 sStr2 sStr3
    
                    // Delete the old txt FI output
                    EraseFile sFileName
                    
                    Move (Trim(sFileNameUTF))       to sStr1
                    // Replace it with the new utf but as a txt by removing the .UTF at the end
                    Move (Replace(".UTF8",sStr1,"")) to sStr2
                    // Find the file name only without the full path for the rename command
                    // which does not want the full path name for the new name because it 
                    // uses the path from the initial file we want to rename
                    Move (Trim(fsReturnFileFromPath(Self,sStr2))) to sStr3
                    //
                    RenameFile sFileNameUTF to sStr3
                    //
                End
            End //If (sFileName contains sSapDate) Begin
        End_Procedure

    End_Object

End_Object

//AB/ End_Object    // prj