//AB/ Project Transla5
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Transla5"
//AB/         Set ProjectFileName to "Transla5.VW"

// Project Object Structure
//   Transla5 is a dbViewSubS
//     Translat_DD is a DataDictionary
//     frmPath is a FormSub
//     frmFile is a FormSub
//     frmShowFile is a TextBoxSub
//     frmLine is a TextBoxSub
//     frmFound is a TextBoxSub
//     btnReplace is a ButtonSub
//     frmPathTO is a FormSub
//     frmFilter is a FormSub

// Register all objects
Register_Object btnReplace
Register_Object frmFile
Register_Object frmFilter
Register_Object frmFound
Register_Object frmLine
Register_Object frmPath
Register_Object frmPathTO
Register_Object frmShowFile
Register_Object Transla5
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

    Use Translat.dd

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Transla5 FOR ;
    ;
    Object Transla5 is a dbViewSubS

        //AB-StoreTopStart
        Property Integer piTotalFound Public 0

        //AB-StoreTopEnd

        Set Label to "Translation"
        Set Size to 174 425
        Set Location to 4 7

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
            Set Value Item 0 to "C:\Vdf6\Develop\Empor\AppSrc\"
        End_Object    // frmPath

        Object frmFile is a FormSub
            Set Label to "File to Read FILES From"
            Set Size to 13 182
            Set Location to 23 95
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Value Item 0 to "ReadFile.tra"
        End_Object    // frmFile

        Object frmShowFile is a TextBoxSub
            Set Label to "Now reading"
            Set Location to 64 93
            Set Size to 13 182

            //AB-StoreStart
            Set Label to ''

            //AB-StoreEnd

        End_Object    // frmShowFile

        Object frmLine is a TextBoxSub
            Set Label to "Line"
            Set Location to 76 93
            Set Size to 13 53

            //AB-StoreStart
            Set Label to ''

            //AB-StoreEnd

        End_Object    // frmLine

        Object frmFound is a TextBoxSub
            Set Label to "Found"
            Set Location to 76 153
            Set Size to 13 53

            //AB-StoreStart
            Set Label to ''

            //AB-StoreEnd

        End_Object    // frmFound

        Object btnReplace is a ButtonSub
            set label to "remove from source code files all tz. quotes (new sources in above directory)" 
            Set Size to 18 394
            Set Location to 133 12
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart

            set label to "remove from source code files all tz. quotes (new sources in above directory)" 

            Procedure Replace_The_File String asFullPathFilename String asPath String asPathTo
                Set_Argument_Size 2048
                String  sLine  sSave sOutputFile sTmp sTz sGreek
                Integer iFound iLine iii pos1 pos2 pos3 pos4

                Move (Trim(asFullPathFilename)) to asFullPathFilename
                Move (Trim(asPath))             to asPath
                Move (Trim(asPathTo))           to asPathTo

                Move (Replace(asPath,asFullPathFilename,asPathTo)) to sOutputFile

                Direct_Input    Channel 2 asFullPathFilename
                Direct_Output   Channel 3 sOutputFile

                Readln Channel 2 sLine

                While (NOT(Seqeof))
                    Get piTotalFound                to iFound
                    Add 1                           to iLine

                    Move (Lowercase(sLine))         to sLine
                    Append sLine ' '


                    if ( (sline contains "tz." ) or (sline contains "ts." ) or ; 
                         (sline contains "ttz.") or (sline contains "tts.") ) begin 

                        Local Integer iQuote
                        Move 0 to Pos1
                        Move 0 to Pos2
                        Move 0 to iQuote

                        move (pos("tz.",sline)) to pos1 
                        If (Pos1=0) Begin
                            move (pos("ts.",sline)) to pos1 
                            If (Pos1=0) Begin
                                move (pos("ttz.",sline)) to pos1 
                                If (Pos1=0) Begin
                                    move (pos("tts.",sline)) to pos1 
                                End
                            End
                        End

                        If (Pos1<>0) Begin
                            For iii From Pos1 to (Length(sLine))
                                If (Mid(sLine,1,iii)='"') Begin
                                    Move iii to Pos2
                                    Move sLine to sSave
                                    Move '' to sLine
                                    Move 1 to iQuote
                                End
                            Loop

                            If (Pos2<Pos1) Begin
                                For iii From Pos1 to (Length(sLine))
                                    If (Mid(sLine,1,iii)="'") Begin
                                        Move iii to Pos2
                                        Move sLine to sSave
                                        Move '' to sLine
                                        Move 1 to iQuote
                                    End
                                Loop
                            End

                            If (Pos2<Pos1) Begin
                                For iii From Pos1 to (Length(sLine))
                                    If (Mid(sLine,1,iii)=" ") Begin
                                        Move iii to Pos2
                                        Move sLine to sSave
                                        Move '' to sLine
                                    End
                                Loop
                            End


                            If (Pos2>Pos1) Begin
                                Move ''                             to sTmp
                                Move (Mid(sSave,(Pos2-Pos1),Pos1))  to sTz


                                Move (RTrim(sTz)) to sTz
                                Append sTmp '"' sTz '"'

                                Clear Translat
                                Move sTz to Translat.Lang_Code
                                Find Gt Translat By Index.2
                                If ((Found=1) And (sTz=Translat.Lang_Code)) Begin
                                    Move Translat.Lang_Greek to sGreek
                                    Move (Trim(sGreek)) to sGreek
                                    If (sGreek<>'') Begin
                                        Add 1 to iFound
                                        Move (Replace(sTz,sSave,sGreek)) to sTmp

                                        Move (Replaces('""',sTmp,'"'))  to sTmp
                                        Move (Replaces("''",sTmp,"'"))  to sTmp
                                        Writeln Channel 3 sTmp
                                    End
                                    Else Writeln Channel 3 sSave
                                End
                                Else Writeln Channel 3 sSave
                            End // If (Pos2>Pos1) Begin
                            Else Writeln Channel 3 sLine
                        End // If (Pos1<>0)
                        Else Writeln Channel 3 sLine
                    end // if ( (sline contains "tz." ) or (sline contains "ts." ) 
                    Else Writeln Channel 3 sLine



                    /////////////////////////////////////////////////////////
                    Set piTotalFound        to iFound
                    Set Label Of frmFound   to ("Found "+(String(iFound)))
                    Set Label Of frmLine    to ("Line " +(String(iLine)))

                    Readln Channel 2 sLine
                Loop
                Close_Input     Channel 2
                Close_Output    Channel 3
                Set piTotalFound to 0
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
                        Send Replace_The_File sFullPath sPathFrom sPathTo
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
            Set Location to 114 106
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Value Item 0 to "C:\Vdf6\Develop\Empor\AppSrc1\"
        End_Object    // frmPathTO

        Object frmFilter is a FormSub
            Set Label to "Source Code Extensions"
            Set Size to 13 182
            Set Location to 41 94
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Value Item 0 to "src,prj,vw,pkg,rv,sl,dg,mn,inc,dd"
        End_Object    // frmFilter


        //AB-StoreStart



        //AB-StoreEnd

    CD_End_Object    // Transla5

//AB/     End_Object    // prj
