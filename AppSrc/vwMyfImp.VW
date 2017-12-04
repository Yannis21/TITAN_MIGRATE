//AB/ Project vwMyfImp
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwMyfImp"
//AB/     Set ProjectFileName to "vwMyfImp.VW"

// Project Object Structure
//   vwMyfImp is a dbViewSubS
//     Gplan_DD is a DataDictionary
//     TextBoxSub2 is a TextBoxSub
//     frmYear is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     frmFileName is a FormSub
//     oOpenFile is a OpenDialog
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object frmFileName
Register_Object frmYear
Register_Object Gplan_DD
Register_Object oOpenFile
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object vwMyfImp


//AB/ AppBuild VIEW


//AB-StoreTopStart
                    
Open tmpSel
Open HmerProg
Open Btnemp
Open Sysrecc
Use TranLock

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use Form.Sub
Use Button.Sub

Use GPLAN.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_vwMyfImp FOR ;
;
Object vwMyfImp is a dbViewSubS

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
    
    
    //AB-StoreTopEnd

    Set Label to "Ñ†©òö‡ö„ Ä§ò¢¨´†°È§ Ñöö®ò≠È§ ãìî òß¶ ASCII ò®ÆúÂ¶"
    Set Size to 86 399
    Set Location to 9 7

    //AB-DDOStart

    Object Gplan_DD is a Gplan_DataDictionary
    End_Object    // Gplan_DD

    Set Main_DD to (Gplan_DD(self))
    Set Server to (Gplan_DD(self))

    //AB-DDOEnd

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Ñ´¶™ ãìî"
        Set Location to 7 61
        Set Size to 10 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object frmYear is a FormSub
        Set Size to 13 85
        Set Location to 7 104
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmYear

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ñß†¢¶ö„ ò®ÆúÂ¶¨"
        Set Location to 31 6
        Set Size to 10 55
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object frmFileName is a FormSub
        Set Size to 13 321
        Set Location to 30 64
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                    
        Procedure Prompt
            String  sFileName
            Integer bOpen
            Get Show_Dialog of oOpenFile To bOpen
            If bOpen Begin
                Get File_Name of oOpenFile to sFileName
                If (Trim(sFileName)<>'') Set Value Item 0 to sFileName
            End
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // frmFileName

    Object oOpenFile is a OpenDialog

        //AB-StoreTopStart
                                    
        //AB-StoreTopEnd

        Set Location to 49 365

        //AB-StoreStart
                                    
        Set Filter_String   to 'Ä®ÆúÂò ãìî|IL*.*|Ä®ÆúÂò ãìî|IL*.*'
        Set Initial_Folder  to 'C:\'
        Set Filter_Index    to 1
        
        
        //AB-StoreEnd

    End_Object    // oOpenFile

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„"
        Set Size to 14 207
        Set Location to 51 94
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            Integer iFileRetreived iMetr iRecnum isFound iStat
            Integer iID iMet iFileExists liBathmos iYear
            String  sFile sCN sLabel sLine lsSearchCode
            String  s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12
            Number  n11 n12
        
            Get Label to sLabel
        
            Get Value Of frmYear     Item 0 to iYear
            If ((iYear<2004) Or (iYear>2100)) Begin
                Send Stop_Box 'äò§üò©£‚§¶ ‚´¶™ ãìî' 'ë≠·¢£ò 1001'
                Procedure_Return
            End
        
        
            Get Value Of frmFileName Item 0 to sFile
            Move (Trim(sFile))              to sFile
        
            If (sFile='') Begin
                Send Stop_Box 'Éú§ úß†¢‚•ò´ú ò®ÆúÂ¶' 'è¢û®¶≠¶®Âò'
                Procedure_Return
            End
        
            Get Get_File_Exists sFile       to iFileExists
            If (NOT(iFileExists)) Begin
                Send Stop_Box "Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶" 'è¢û®¶≠¶®Âò'
                Procedure_Return
            End
        
            /////////////////////////////////////////////////////////////////
            // Epexergasia Pistotikon
            /////////////////////////////////////////////////////////////////
            If (Right(sFile,3)='PIS') Begin
              // Read ascii file
                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Read    Channel 9 sLine
                If (Seqeof) Begin
                    Send Info_Box 'í¶ ò®ÆúÂ¶ õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
                While (NOT(Seqeof))
                    Move (Trim(sLine))       to sLine
                    Move (Mid(sLine,01, 01)) to  s1 // Kodikos eggrafhs p.x 1.2.3.4...
                    Move (Mid(sLine,05, 02)) to  s2 // a/a eggrafhs
                    Move (Mid(sLine,09, 07)) to  s3 // AFM
                    Move (Mid(sLine,27, 16)) to  s4 // Eponymia Forea
                    Move (Mid(sLine,15, 43)) to  s5 // Epagglema
                    Move (Mid(sLine,01, 58)) to  s6 // Ypoxreos
                    Move (Mid(sLine,10, 59)) to  s7 // Polh
                    Move (Mid(sLine,16, 69)) to  s8 // Odos
                    Move (Mid(sLine,03, 85)) to  s9 // Arithmos
                    Move (Mid(sLine,05, 88)) to s10 // TK
                    Move (Mid(sLine,07, 93)) to s11 // Plhthos
                    Move (Mid(sLine,16,100)) to s12 // Axia
        
                    If (Left(sLine,1)='2') Begin
                        Set Label to ('Ñ§û£‚®‡©û è†©´‡´†°È§ èú¢ò´È§  '+Trim(s2))
                        Move s11 to n11
                        Move s12 to n12
                        Clear tmpMyf
                        Move iYear  to tmpMyf.Myf_Year
                        Move '01'   to tmpMyf.Module
                        Move -2     to tmpMyf.Typos_Record
                        Move  s3    to tmpMyf.Afm
                        Find Eq tmpMyf By Index.6
                        If (Not(Found)) Begin
                            Move  s4    to tmpMyf.Client_Name
                            Move  s5    to tmpMyf.Job
                            Move  s6    to tmpMyf.Ypoxreos
                            Move  s7    to tmpMyf.Polh
                            Move  s8    to tmpMyf.Odos
                            Move  s9    to tmpMyf.Arithmos
                            Move s10    to tmpMyf.TK
                            Move n11    to tmpMyf.Plhthos
                            Move n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                        End
                        Else Begin
                            Reread tmpMyf
                            Add n11    to tmpMyf.Plhthos
                            Add n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                            Unlock
                        End
                    End
                    Else If (Left(sLine,1)='4') Begin
                        Set Label to ('Ñ§û£‚®‡©û è†©´‡´†°È§ è®¶£ûüú¨´È§  '+Trim(s2))
                        Move s11 to n11
                        Move s12 to n12
                        Clear tmpMyf
                        Move iYear  to tmpMyf.Myf_Year
                        Move '02'   to tmpMyf.Module
                        Move -4     to tmpMyf.Typos_Record
                        Move  s3    to tmpMyf.Afm
                        Find Eq tmpMyf By Index.6
                        If (Not(Found)) Begin
                            Move  s4    to tmpMyf.Client_Name
                            Move  s5    to tmpMyf.Job
                            Move  s6    to tmpMyf.Ypoxreos
                            Move  s7    to tmpMyf.Polh
                            Move  s8    to tmpMyf.Odos
                            Move  s9    to tmpMyf.Arithmos
                            Move s10    to tmpMyf.TK
                            Move n11    to tmpMyf.Plhthos
                            Move n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                        End
                        Else Begin
                            Reread tmpMyf
                            Add n11    to tmpMyf.Plhthos
                            Add n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                            Unlock
                        End
                    End
                    Read    Channel 9 sLine
                    Readln  Channel 9
                Loop
            End
            Else Begin
            /////////////////////////////////////////////////////////////////
            // Epexergasia Xreostikon
            /////////////////////////////////////////////////////////////////
              // Read ascii file
                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Read    Channel 9 sLine
                If (Seqeof) Begin
                    Send Info_Box 'í¶ ò®ÆúÂ¶ õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
                While (NOT(Seqeof))
                    Move (Trim(sLine))       to sLine
                    Move (Mid(sLine,01, 01)) to  s1 // Kodikos eggrafhs p.x 1.2.3.4...
                    Move (Mid(sLine,05, 02)) to  s2 // a/a eggrafhs
                    Move (Mid(sLine,09, 07)) to  s3 // AFM
                    Move (Mid(sLine,27, 16)) to  s4 // Eponymia Forea
                    Move (Mid(sLine,15, 43)) to  s5 // Epagglema
                    Move (Mid(sLine,01, 58)) to  s6 // Ypoxreos
                    Move (Mid(sLine,10, 59)) to  s7 // Polh
                    Move (Mid(sLine,16, 69)) to  s8 // Odos
                    Move (Mid(sLine,03, 85)) to  s9 // Arithmos
                    Move (Mid(sLine,05, 88)) to s10 // TK
                    Move (Mid(sLine,07, 93)) to s11 // Plhthos
                    Move (Mid(sLine,16,100)) to s12 // Axia
        
                    If (Left(sLine,1)='2') Begin
                        Set Label to ('Ñ§û£‚®‡©û è†©´‡´†°È§ èú¢ò´È§  '+Trim(s2))
                        Move s11 to n11
                        Move s12 to n12
                        Clear tmpMyf
                        Move iYear  to tmpMyf.Myf_Year
                        Move '01'   to tmpMyf.Module
                        Move  2     to tmpMyf.Typos_Record
                        Move  s3    to tmpMyf.Afm
                        Find Eq tmpMyf By Index.6
                        If (Not(Found)) Begin
                            Move  s4    to tmpMyf.Client_Name
                            Move  s5    to tmpMyf.Job
                            Move  s6    to tmpMyf.Ypoxreos
                            Move  s7    to tmpMyf.Polh
                            Move  s8    to tmpMyf.Odos
                            Move  s9    to tmpMyf.Arithmos
                            Move s10    to tmpMyf.TK
                            Move n11    to tmpMyf.Plhthos
                            Move n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                        End
                        Else Begin
                            Reread tmpMyf
                            Add n11    to tmpMyf.Plhthos
                            Add n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                            Unlock
                        End
                    End
                    Else If (Left(sLine,1)='4') Begin
                        Set Label to ('Ñ§û£‚®‡©û è†©´‡´†°È§ è®¶£ûüú¨´È§  '+Trim(s2))
                        Move s11 to n11
                        Move s12 to n12
                        Clear tmpMyf
                        Move iYear  to tmpMyf.Myf_Year
                        Move '02'   to tmpMyf.Module
                        Move  4     to tmpMyf.Typos_Record
                        Move  s3    to tmpMyf.Afm
                        Find Eq tmpMyf By Index.6
                        If (Not(Found)) Begin
                            Move  s4    to tmpMyf.Client_Name
                            Move  s5    to tmpMyf.Job
                            Move  s6    to tmpMyf.Ypoxreos
                            Move  s7    to tmpMyf.Polh
                            Move  s8    to tmpMyf.Odos
                            Move  s9    to tmpMyf.Arithmos
                            Move s10    to tmpMyf.TK
                            Move n11    to tmpMyf.Plhthos
                            Move n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                        End
                        Else Begin
                            Reread tmpMyf
                            Add n11    to tmpMyf.Plhthos
                            Add n12    to tmpMyf.Axia
                            Saverecord tmpMyf
                            Unlock
                        End
                    End
                    Read    Channel 9 sLine
                    Readln  Channel 9
                Loop
            End
        
            Send Info_Box 'Ü ú†©òö‡ö„ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
    //AB-StoreEnd

CD_End_Object    // vwMyfImp

//AB/ End_Object    // prj
