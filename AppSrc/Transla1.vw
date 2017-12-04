//AB/ Project Transla1
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Transla1"
//AB/         Set ProjectFileName to "Transla1.vw"

// Project Object Structure
//   Transla1 is a dbViewSubS
//     Translat_DD is a DataDictionary
//     frmPath is a FormSub
//     frmFile is a FormSub
//     frmShowFile is a TextBoxSub
//     btnWrite is a ButtonSub
//     frmLine is a TextBoxSub
//     frmFound is a TextBoxSub
//     chkZero is a CheckBoxSub
//     btnReplace is a ButtonSub
//     frmPathTO is a FormSub
//     btnMake is a ButtonSub
//     frmPathMake is a FormSub
//     btnMakeTxt is a ButtonSub
//     frmFilter is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub

// Register all objects
Register_Object btnMake
Register_Object btnMakeTxt
Register_Object btnReplace
Register_Object btnWrite
Register_Object chkZero
Register_Object frmFile
Register_Object frmFilter
Register_Object frmFound
Register_Object frmLine
Register_Object frmPath
Register_Object frmPathMake
Register_Object frmPathTO
Register_Object frmShowFile
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object Transla1
Register_Object Translat_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Open Translat
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Txtbox.Sub
    Use Button.Sub
    Use Chkbox.Sub

    Use Translat.dd
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Transla1 FOR ;
    ;
    Object Transla1 is a dbViewSubS

        //AB-StoreTopStart
        Property Integer piTotalFound Public 0
        
        //AB-StoreTopEnd

        Set Label to "Translation"
        Set Size to 282 362
        Set Location to 2 6

        //AB-DDOStart

        Object Translat_DD is a Translat_DataDictionary
        End_Object    // Translat_DD

        Set Main_DD to (Translat_DD(self))
        Set Server to (Translat_DD(self))

        //AB-DDOEnd

        Object frmPath is a FormSub
            Set Label to "Full Path With Trailing '\'"
            Set Size to 13 182
            Set Location to 7 94
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "C:\Vdf6\Develop\Empor\AppSrc\"
        End_Object    // frmPath

        Object frmFile is a FormSub
            Set Label to "File to Read FILES From"
            Set Size to 13 182
            Set Location to 23 94
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "ReadFile.tra"
        End_Object    // frmFile

        Object frmShowFile is a TextBoxSub
            Set Label to "Now reading"
            Set Location to 64 93
            Set Size to 13 182
            Set TypeFace to "MS Sans Serif"

            //AB-StoreStart
            Set Label to ''
            
            //AB-StoreEnd

        End_Object    // frmShowFile

        Object btnWrite is a ButtonSub
            Set Label to "Make Tranlat.Dat File From Labels Inside Our Code"
            Set Size to 18 290
            Set Location to 153 5
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                        
            Procedure Translate_The_File String asFullPathFilename String asPath
                Set_Argument_Size 2048
            
                String  sLine  sSave
                Integer iFound iLine pos1 pos2 pos3 pos4 iii iMhkos
            
                Move (Trim(asFullPathFilename)) to asFullPathFilename
            
                Direct_Input Channel 2 asFullPathFilename
            
                If (Seqeof=1) Begin
                    Writeln Channel 8 asFullPathFileName
                    Procedure_Return
                End
            
                Readln Channel 2 sLine
                While (NOT(Seqeof))
                    Get piTotalFound                to iFound
                    Add 1                           to iLine
                    If "set label to" in (lowercase(sLine)) Begin
                        Add 1 to iFound
                        Move (Right(sLine, (Length(sLine)-((Pos("to",(LowerCase(sLine))))+2)) )) to sSave
                        if ((ssave contains 'tz.') or ; 
                            (ssave contains 'ts.') or ; 
                            (ssave contains 'tts.') or ; 
                            (Length(Trim(sSave))<2)) Begin
                        End
                        Else Begin
                            Clear Translat
                            Move sSave to Translat.Lang_Greek
                            Find Eq Translat By Index.1
                            If (NOT(Found)) Saverecord Translat
                            Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                        End
                    End
                    Else If "set header_label" in (lowercase(sLine)) Begin
                        Add 1 to iFound
                        Move (Right(sLine, (Length(sLine)-((Pos("to",(LowerCase(sLine))))+2)) )) to sSave
                        if ((ssave contains 'tz.') or ; 
                            (ssave contains 'ts.') or ; 
                            (ssave contains 'tts.') or ; 
                            (Length(Trim(sSave))<2)) Begin
                        End
                        Else Begin
                            Clear Translat
                            Move sSave to Translat.Lang_Greek
                            Find Eq Translat By Index.1
                            If (NOT(Found)) Saverecord Translat
                            Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                        End
                    End
                    Else If "set label of" in (lowercase(sLine)) Begin
                        Add 1 to iFound
                        Move (Right(sLine, (Length(sLine)-((Pos("to",(LowerCase(sLine))))+2)) )) to sSave
                        if ((ssave contains 'tz.') or ; 
                            (ssave contains 'ts.') or ; 
                            (ssave contains 'tts.') or ; 
                            (Length(Trim(sSave))<2)) Begin
                        End
                        Else Begin
                            Clear Translat
                            Move sSave to Translat.Lang_Greek
                            Find Eq Translat By Index.1
                            If (NOT(Found)) Saverecord Translat
                            Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                        End
                    End
                    Else Begin
                        Move 0 to pos1
                        Move 0 to pos2
                        Move 0 to pos3
                        Move 0 to pos4
                        If "'" in sLine Begin
                            For iii From 1 to (length(sline))
                                If (mid(sline,1,iii)="'") Begin
                                            If (pos1=0) Move iii to pos1
                                    Else If (pos2=0) Move iii to pos2
                                    Else If (pos3=0) Move iii to pos3
                                    Else If (pos4=0) Move iii to pos4
                                End
                            Loop
                            If (pos2<>0) Begin
                                Add 1 to iFound
                                Move (mid(sLine,(pos2-pos1+1),pos1)) to sSave
                                if ((ssave contains 'tz.') or ; 
                                    (ssave contains 'ts.') or ; 
                                    (ssave contains 'tts.') or ; 
                                    (Length(Trim(sSave))<2)) Begin
                                End
                                Else Begin
                                    If (Ascii((Mid(sSave,1,2))) > 127)    Begin
                                        Clear Translat
                                        Move sSave to Translat.Lang_Greek
                                        Find Eq Translat By Index.1
                                        If (NOT(Found)) Saverecord Translat
                                        Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                                        If (pos4<>0) Begin
                                            Add 1 to iFound
                                            Move (mid(sLine,(pos4-pos3+1),pos3)) to sSave
                                            if ((ssave contains 'tz.') or ; 
                                                (ssave contains 'ts.') or ; 
                                                (ssave contains 'tts.') or ; 
                                                (Length(Trim(sSave))<2)) Begin
                                            End
                                            Else Begin
                                                If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                                    Clear Translat
                                                    Move sSave to Translat.Lang_Greek
                                                    Find Eq Translat By Index.1
                                                    If (NOT(Found)) Saverecord Translat
                                                    Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                                                End
                                            End
                                        End
                                    End
                                End
                            End
                        End
                        Move 0 to pos1
                        Move 0 to pos2
                        Move 0 to pos3
                        Move 0 to pos4
                        If '"' in sLine Begin
                            For iii From 1 to (length(sline))
                                If (mid(sline,1,iii)='"') Begin
                                            If (pos1=0) Move iii to pos1
                                    Else If (pos2=0) Move iii to pos2
                                    Else If (pos3=0) Move iii to pos3
                                    Else If (pos4=0) Move iii to pos4
                                End
                            Loop
                            If (pos2<>0) Begin
                                Add 1 to iFound
                                Move (mid(sLine,(pos2-pos1+1),pos1)) to sSave
                                if ((ssave contains 'tz.') or ; 
                                    (ssave contains 'ts.') or ; 
                                    (ssave contains 'tts.') or ; 
                                    (Length(Trim(sSave))<2)) Begin
                                End
                                Else Begin
                                    If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                        Clear Translat
                                        Move sSave to Translat.Lang_Greek
                                        Find Eq Translat By Index.1
                                        If (NOT(Found)) Saverecord Translat
                                        Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                                        If (pos4<>0) Begin
                                            Add 1 to iFound
                                            Move (mid(sLine,(pos4-pos3+1),pos3)) to sSave
                                            if ((ssave contains 'tz.') or ; 
                                                (ssave contains 'ts.') or ; 
                                                (ssave contains 'tts.') or ; 
                                                (Length(Trim(sSave))<2)) Begin
                                            End
                                            Else Begin
                                                If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                                    Clear Translat
                                                    Move sSave to Translat.Lang_Greek
                                                    Find Eq Translat By Index.1
                                                    If (NOT(Found)) Saverecord Translat
                                                    Writeln Channel 9 asFullPathFilename '     ' 'Line=' iLine '      ' sSave
                                                End
                                            End
                                        End
                                    End
                                End
                            End
                        End
                    End
                    Set piTotalFound        to iFound
                    Set Label Of frmFound   to ("Found "+(String(iFound)))
                    Set Label Of frmLine    to ("Line " +(String(iLine)))
                    Readln Channel 2 sLine
                Loop
                Close_Input Channel 2
                Set_Argument_Size 256
            End_Procedure
            
            Procedure OnClick
                Set_Argument_Size 2048
                String sFileFrom sPathFrom sInputFileAll sInputFile sFullPath
                Integer iCount iZero
            
                Set piTotalFound to 0
                Set Enabled_State to False
            
                Get Checked_State Of chkZero to iZero
                If (iZero) Begin
                    //////////////////////////////////ZeroFile Translat
                End
            
                Move (Value(frmPath(Self),0))   to sPathFrom
                Move (Value(frmFile(Self),0))   to sFileFrom
                Move (Trim(sPathFrom))          to sPathFrom
                Move (Trim(sFileFrom))          to sFileFrom
            
                Move (sPathFrom-sFileFrom)      to sInputFileAll
            
                Direct_Output Channel 9 (sPathFrom-"Translat.Txt")
                Direct_Output Channel 8 (sPathFrom-"F_not_Op.Txt")
            
                Direct_Input Channel 1  sInputFileAll
                If (Seqeof=1) Begin
                    Send Stop_Box "Cannot Find Ascii File Containing the files to translate" "Error"
                    Set Enabled_State to True
                    Procedure_Return
                End
            
                Readln Channel 1 sInputFile
                While (NOT(Seqeof))
                    Move (Trim(sInputFile))         to sInputFile
                    If (sInputFile<>'') Begin
                        Move ''                     to sFullPath
                        Move (sPathFrom-sInputFile) to sFullPath
                        Move (Trim(sFullPath))      to sFullPath
                        Set Label Of frmShowFile    to sFullPath
                        Send Translate_The_File sFullPath sPathFrom
                    End
                    Readln Channel 1 sInputFile
                Loop
                Set Label Of frmShowFile    to ''
                Set Label Of frmLine        to ''
                Set Label Of frmFound       to ''
                Close_Input  Channel 1
                Close_Output Channel 9
                Close_Output Channel 8
                Set Enabled_State to True
                Send Info_Box "Translation Process Is Finished" "Information"
                Set_Argument_Size 256
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // btnWrite

        Object frmLine is a TextBoxSub
            Set Label to "Line"
            Set Location to 76 93
            Set Size to 13 53
            Set TypeFace to "MS Sans Serif"

            //AB-StoreStart
            Set Label to ''
            
            //AB-StoreEnd

        End_Object    // frmLine

        Object frmFound is a TextBoxSub
            Set Label to "Found"
            Set Location to 76 153
            Set Size to 13 53
            Set TypeFace to "MS Sans Serif"

            //AB-StoreStart
            Set Label to ''
            
            //AB-StoreEnd

        End_Object    // frmFound

        Object chkZero is a CheckBoxSub
            Set Label to "ZeroFile Translat File First"
            Set Size to 10 97
            Set Location to 140 5
        End_Object    // chkZero

        Object btnReplace is a ButtonSub
            Set Label to "Create New SOURCE CODE Files In The Above Directory"
            Set Size to 18 290
            Set Location to 198 5
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                        
            Procedure Replace_The_File String asFullPathFilename String asPath String asPathTO
                Set_Argument_Size 2048
                String  sLine  sSave sOutputFile
                Integer iFound iLine iii pos1 pos2 pos3 pos4
                Move (Trim(asFullPathFilename)) to asFullPathFilename
                Move (Trim(asPath))             to asPath
                Move (Trim(asPathTO))           to asPathTO
            
                Move (Replace(asPath,asFullPathFilename,asPathTo)) to sOutputFile
            
                Direct_Input    Channel 2 asFullPathFilename
                Direct_Output   Channel 3 sOutputFile
            
                Readln Channel 2 sLine
                While (NOT(Seqeof))
                    Get piTotalFound                to iFound
                    Add 1                           to iLine
            
                    If "set label to" in (lowercase(sLine)) Begin
                        Move (Right(sLine, (Length(sLine)-((Pos("to",(LowerCase(sLine))))+2)) )) to sSave
                        if ((ssave contains 'tz.') or ; 
                            (ssave contains 'ts.') or ; 
                            (ssave contains 'tts.') or ; 
                            (Length(Trim(sSave))<2)) Begin
                        End
                        Else Begin
                            Clear Translat
                            Move sSave to Translat.Lang_Greek
                            Find Eq Translat By Index.1
                            If (Found) Begin
                                If (Trim(Translat.Lang_Code)<>'') Begin
                                    Add 1 to iFound
                                    Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                End
                            End
                        End
                    End
                    Else If "set header_label" in (lowercase(sLine)) Begin
                        Move (Right(sLine, (Length(sLine)-((Pos("to",(LowerCase(sLine))))+2)) )) to sSave
                        if ((ssave contains 'tz.') or ; 
                            (ssave contains 'ts.') or ; 
                            (ssave contains 'tts.') or ; 
                            (Length(Trim(sSave))<2)) Begin
                        End
                        Else Begin
                            Clear Translat
                            Move sSave to Translat.Lang_Greek
                            Find Eq Translat By Index.1
                            If (Found) Begin
                                If (Trim(Translat.Lang_Code)<>'') Begin
                                    Add 1 to iFound
                                    Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                End
                            End
                        End
                    End
                    Else If "set label of" in (lowercase(sLine)) Begin
                        Move (Right(sLine, (Length(sLine)-((Pos("to",(LowerCase(sLine))))+2)) )) to sSave
                        if ((ssave contains 'tz.') or ; 
                            (ssave contains 'ts.') or ; 
                            (ssave contains 'tts.') or ; 
                            (Length(Trim(sSave))<2)) Begin
                        End
                        Else Begin
                            Clear Translat
                            Move sSave to Translat.Lang_Greek
                            Find Eq Translat By Index.1
                            If (Found) Begin
                                If (Trim(Translat.Lang_Code)<>'') Begin
                                    Add 1 to iFound
                                    Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                End
                            End
                        End
                    End
                    Else Begin
                        Move 0 to pos1
                        Move 0 to pos2
                        Move 0 to pos3
                        Move 0 to pos4
                        If "'" in sLine Begin
                            For iii From 1 to (length(sline))
                                If (mid(sline,1,iii)="'") Begin
                                            If (pos1=0) Move iii to pos1
                                    Else If (pos2=0) Move iii to pos2
                                    Else If (pos3=0) Move iii to pos3
                                    Else If (pos4=0) Move iii to pos4
                                End
                            Loop
                            If (pos2<>0) Begin
                                Add 1 to iFound
                                Move (mid(sLine,(pos2-pos1+1),pos1)) to sSave
                                if ((ssave contains 'tz.') or ; 
                                    (ssave contains 'ts.') or ; 
                                    (ssave contains 'tts.') or ; 
                                    (Length(Trim(sSave))<2)) Begin
                                End
                                Else Begin
                                    If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                        Clear Translat
                                        Move sSave to Translat.Lang_Greek
                                        Find Eq Translat By Index.1
                                        If (Found) Begin
                                            If (Trim(Translat.Lang_Code)<>'') Begin
                                                Add 1 to iFound
                                                Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                            End
                                        End
                                        If (pos4<>0) Begin
                                            Add 1 to iFound
                                            Move (mid(sLine,(pos4-pos3+1),pos3)) to sSave
                                            if ((ssave contains 'tz.') or ; 
                                                (ssave contains 'ts.') or ; 
                                                (ssave contains 'tts.') or ; 
                                                (Length(Trim(sSave))<2)) Begin
                                            End
                                            Else Begin
                                                If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                                    Clear Translat
                                                    Move sSave to Translat.Lang_Greek
                                                    Find Eq Translat By Index.1
                                                    If (Found) Begin
                                                        If (Trim(Translat.Lang_Code)<>'') Begin
                                                            Add 1 to iFound
                                                            Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                                        End
                                                    End
                                                End
                                            End
                                        End
                                    End
                                End
                            End
                        End
                        Move 0 to pos1
                        Move 0 to pos2
                        Move 0 to pos3
                        Move 0 to pos4
                        If '"' in sLine Begin
                            For iii From 1 to (length(sline))
                                If (mid(sline,1,iii)='"') Begin
                                            If (pos1=0) Move iii to pos1
                                    Else If (pos2=0) Move iii to pos2
                                    Else If (pos3=0) Move iii to pos3
                                    Else If (pos4=0) Move iii to pos4
                                End
                            Loop
                            If (pos2<>0) Begin
                                Add 1 to iFound
                                Move (mid(sLine,(pos2-pos1+1),pos1)) to sSave
                                if ((ssave contains 'tz.') or ; 
                                    (ssave contains 'ts.') or ; 
                                    (ssave contains 'tts.') or ; 
                                    (Length(Trim(sSave))<2)) Begin
                                End
                                Else Begin
                                    If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                        Clear Translat
                                        Move sSave to Translat.Lang_Greek
                                        Find Eq Translat By Index.1
                                        If (Found) Begin
                                            If (Trim(Translat.Lang_Code)<>'') Begin
                                                Add 1 to iFound
                                                Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                            End
                                        End
                                    End
                                    If (pos4<>0) Begin
                                        Add 1 to iFound
                                        Move (mid(sLine,(pos4-pos3+1),pos3)) to sSave
                                        if ((ssave contains 'tz.') or ; 
                                            (ssave contains 'ts.') or ; 
                                            (ssave contains 'tts.') or ; 
                                            (Length(Trim(sSave))<2)) Begin
                                        End
                                        Else Begin
                                            If (Ascii((Mid(sSave,1,2))) > 127) Begin
                                                Clear Translat
                                                Move sSave to Translat.Lang_Greek
                                                Find Eq Translat By Index.1
                                                If (Found) Begin
                                                    If (Trim(Translat.Lang_Code)<>'') Begin
                                                        Add 1 to iFound
                                                        Move (Replace(sSave,sLine,(Trim(Translat.Lang_Code)))) to sLine
                                                    End
                                                End
                                            End
                                        End
                                    End
                                End
                            End
                        End
                    End
            
                    Set piTotalFound        to iFound
                    Set Label Of frmFound   to ("Found "+(String(iFound)))
                    Set Label Of frmLine    to ("Line " +(String(iLine)))
                    Writeln Channel 3 sLine
                    Readln Channel 2 sLine
                Loop
                Close_Input     Channel 2
                Close_Output    Channel 3
                Set_Argument_Size 256
            End_Procedure
            
            Procedure OnClick
                Set_Argument_Size 2048
                String sFileFrom sPathFrom sInputFileAll sInputFile sFullPath  sPathTO
                Integer iCount iReplace
            
                Set piTotalFound to 0
                Set Enabled_State to False
            
            
                Move (Value(frmPath(Self),0))   to sPathFrom
                Move (Value(frmFile(Self),0))   to sFileFrom
                Move (Value(frmPathTO(Self),0)) to sPathTO
                Move (Trim(sPathFrom))          to sPathFrom
                Move (Trim(sFileFrom))          to sFileFrom
                Move (Trim(sPathTO))            to sPathTO
            
                Move (sPathFrom-sFileFrom)      to sInputFileAll
            
                Direct_Input Channel 1  sInputFileAll
                If (Seqeof=1) Begin
                    Send Stop_Box "Cannot Find Ascii File Containing the files to translate" "Error"
                    Set Enabled_State to True
                    Procedure_Return
                End
            
                Readln Channel 1 sInputFile
                While (NOT(Seqeof))
                    Move (Trim(sInputFile))         to sInputFile
                    If (sInputFile<>'') Begin
                        Move ''                     to sFullPath
                        Move (sPathFrom-sInputFile) to sFullPath
                        Move (Trim(sFullPath))      to sFullPath
                        Set Label Of frmShowFile    to sFullPath
                        Send Replace_The_File sFullPath sPathFrom sPathTO
                    End
                    Readln Channel 1 sInputFile
                Loop
                Set Label Of frmShowFile    to ''
                Set Label Of frmLine        to ''
                Set Label Of frmFound       to ''
                Close_Input  Channel 1
                Set Enabled_State to True
                Send Info_Box "Replacement Process Is Finished" "Information"
                Set_Argument_Size 256
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // btnReplace

        Object frmPathTO is a FormSub
            Set Label to "Full Path With Trailing '\'"
            Set Size to 13 182
            Set Location to 183 97
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "C:\Vdf6\Develop\Empor\AppSrc2\"
        End_Object    // frmPathTO

        Object btnMake is a ButtonSub
            Set Label to "Create Needed Translat.Utl File In The Above Directory"
            Set Size to 18 290
            Set Location to 244 5
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                        
            Procedure OnClick
                Set_Argument_Size 2048
                String sFileFrom sPathFrom sOutputFile
                String sPath sFullPath  sPathTO
                Integer iCount iReplace
            
                Set piTotalFound to 0
                Set Enabled_State to False
            
                Move (Value(frmPathMake(Self),0))   to sPath
                Move (Trim(sPath))                  to sPath
                Move (sPath-"Translat.Utl")         to sOutputFile
            
                Direct_Output Channel 1  sOutputFile
            
                // Proto Paso gia Ellhnika
                Writeln Channel 1 "#IF LNG_DEFAULT=LNG_GREEK"
                Clear Translat
                Find Gt Translat By Index.2
                While (Found=1)
                    If (Trim(Translat.Lang_Code)<>'') Begin
                        Add 1 to iCount
                        Set Label Of frmFound to iCount
                        Writeln "    " "Define "  Translat.Lang_Code   " For " (Trim(Translat.Lang_Greek))
                        //Writeln "    " "Define " '"' (Trim(Translat.Lang_Code)) '"' " For " (Trim(Translat.Lang_Greek))
                    End
                    Find Gt Translat By Index.2
                Loop
                Writeln Channel 1 "#ENDIF"
            
                Move 0 to iCount
                // Deytero Paso gia Agglika
                Writeln Channel 1 "#IF LNG_DEFAULT=LNG_ENGLISH"
                Clear Translat
                Find Gt Translat By Index.2
                While (Found=1)
                    If (Trim(Translat.Lang_Code)<>'') Begin
                        Add 1 to iCount
                        Set Label Of frmFound to iCount
                        Writeln "    " "Define "    Translat.Lang_Code   " For " (Trim(Translat.Lang_English))
                        //Writeln "    " "Define " '"' (Trim(Translat.Lang_Code)) '"' " For " (Trim(Translat.Lang_English))
                    End
                    Find Gt Translat By Index.2
                Loop
                Writeln Channel 1 "#ENDIF"
            
                Close_Output Channel 1
            
                Set Label Of frmShowFile    to ''
                Set Label Of frmLine        to ''
                Set Label Of frmFound       to ''
                Set Enabled_State to True
                Send Info_Box "File Translat.Utl Has Been Made" "Information"
                Set_Argument_Size 256
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // btnMake

        Object frmPathMake is a FormSub
            Set Label to "Full Path With Trailing '\'"
            Set Size to 13 182
            Set Location to 228 97
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "C:\VDF6\VDF6.SUB\SUBCLASS\"
        End_Object    // frmPathMake

        Object btnMakeTxt is a ButtonSub
            Set Label to "Create The Above File Containing All The Files to Be Processed"
            Set Size to 18 290
            Set Location to 110 5
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                        
            Procedure OnClick
                Set_Argument_Size 2048
            
                String sFileFrom sPathFrom sInputFileAll sFilter sLine
                String sInputFile sFullPath sTmp sOutputFile sFilt sExt sFilter0
                Integer iCount iZero iPos iMet iII iMatch
            
            
                Set piTotalFound to 0
                Set Enabled_State to False
            
                Move "Readtmp.js" to sTmp
            
                Move (Value(frmPath(Self),0))   to sPathFrom
                Move (Value(frmFile(Self),0))   to sFileFrom
                Move (Value(frmFilter(Self),0)) to sFilter
                Move (Trim(sPathFrom))          to sPathFrom
                Move (Trim(sFileFrom))          to sFileFrom
                Move (Trim(sFilter))            to sFilter
            
                Move (sPathFrom-sTmp)           to sInputFile
                Move (sPathFrom-sFileFrom)      to sOutputFile
            
                Move '' to sFullPath
                Append sFullPath 'Dir ' sPathFrom ' /OE /B  > '  sInputFile
            
                Move sFilter to sFilter0
            
                RunProgram Wait sFullPath
            
                Direct_Output Channel 2 sOutputFile
            
                While (Length(sFilter)<>0)
                    If ',' In sFilter Begin
                        Move (Pos(',',sFilter)) to iPos
                        Move (Left(sFilter,iPos)) to sFilt
                    End
                    Else Move sFilter to sFilt
                    Move (Replace(sFilt,sFilter,'')) to sFilter
                    Move (Replace(',',sFilt,'')) to sFilt
            
                    If (sFilt<>'') Begin
                        Move (LowerCase(sFilt)) to sFilt
                        Add 1 to iCount
                        Set Label Of frmFound to iCount
                        Direct_Input Channel 1 sInputFile
                        Readln Channel 1 sLine
                        While (NOT(Seqeof))
                            Move (LowerCase(sLine)) to sLine
                            If sFilt In sLine Begin
                                Move (Pos('.',sLine)) to iPos
                                If (iPos) Begin
                                    Move (LowerCase(Right(sLine,(Length(sLine)-iPos)))) to sExt
                                    If (sExt=sFilt) Writeln Channel 2 sLine
                                End
                            End
                            Readln Channel 1 sLine
                        Loop
                        Close_Input Channel 1
                    End
                Loop
            
                Set Label Of frmShowFile    to ''
                Set Label Of frmLine        to ''
                Set Label Of frmFound       to ''
                Close_Output Channel 2
                Set Enabled_State to True
                Send Info_Box "File has been made and filtered" "Information"
            
                Set_Argument_Size 256
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // btnMakeTxt

        Object frmFilter is a FormSub
            Set Label to "Source Code Extensions"
            Set Size to 13 182
            Set Location to 41 94
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "src,prj,vw,pkg,rv,sl,dg,mn,inc,dd"
        End_Object    // frmFilter

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Step 1"
            Set Location to 118 317
            Set Size to 10 22
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Step 2"
            Set Location to 161 317
            Set Size to 10 22
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "Step 3"
            Set Location to 206 317
            Set Size to 10 22
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Step 4"
            Set Location to 252 317
            Set Size to 10 22
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4


        //AB-StoreStart
                
                
                
        //AB-StoreEnd

    CD_End_Object    // Transla1


    //AB-StoreStart
        
    //AB-StoreEnd

//AB/     End_Object    // prj
