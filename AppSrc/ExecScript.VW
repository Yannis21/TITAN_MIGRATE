//AB/ Project ExecScript
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "ExecScript"
//AB/         Set ProjectFileName to "ExecScript.VW"

// Project Object Structure
//   ExecScript is a dbViewSubS
//     frmFileName is a FormSub
//     frmODBC is a FormSub
//     ButtonSub1 is a ButtonSub
//     oOpenFile is a OpenDialog
//     TextBoxSub1 is a TextBoxSub
//     RunSQLScript is a OLEExecScript

// Register all objects
Register_Object ButtonSub1
Register_Object ExecScript
Register_Object frmFileName
Register_Object frmODBC
Register_Object oOpenFile
Register_Object RunSQLScript
Register_Object TextBoxSub1


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Use ExecScript
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Form.Sub
    Use Button.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_ExecScript FOR ;
    ;
    Object ExecScript is a dbViewSubS

        //AB-StoreTopStart
                        
        Property Integer piLathos   Public   0
        Property String  psModule   Public '01'
        Property Integer piWhat     Public   0
        
        
        //AB-StoreTopEnd

        Set Label to "ë¨öÆ®¶§†©£Ê™ / Ñ§û£‚®‡©û SQL ô·©û™"
        Set Size to 113 451
        Set Location to 9 7

        //AB-DDOStart


        //AB-DDOEnd

        Object frmFileName is a FormSub
            Set Size to 13 321
            Set Location to 6 63
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

        Object frmODBC is a FormSub
            Set Label to "ODBC"
            Set Size to 13 85
            Set Location to 25 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Value Item 0 to "SMSNT"
        End_Object    // frmODBC

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñßú•ú®öò©Âò"
            Set Size to 14 218
            Set Location to 70 101
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                String  sFile sFile2 sLabel sODBC sMess sStr sParams
                Integer iFileExists iCheck iInt
                Get label                       to slabel
                Set Enabled_State               to False
                Get Value Of frmODBC Item 0     to sODBC
                If (sODBC='') Begin
                    Send Stop_Box "Éú§ ©¨£ß¢û®È©ò´ú ´¶ ODBC." "ë≠·¢£ò 1003"
                    Set Enabled_State to True
                    Procedure_Return
                End
                Get Value Of frmFileName item 0 to sFile
                Move (Trim(UpperCase(sFile)))   to sFile
                If (sFile<>'') Begin
                    Get Get_File_Exists sFile   To iFileExists
                    If (NOT(iFileExists)) Begin
                        Send Stop_Box "Éú§ ô®‚üû°ú ´¶ ò®ÆúÂ¶." "ë≠·¢£ò 1001"
                        Set Enabled_State to True
                        Procedure_Return
                    End
            
            //        Direct_Output   Channel 8   'C:\MyScript.txt'
            //        Direct_Input    Channel 9   sFile
            //        Readln Channel 9 sStr
            //        While (Not(Seqeof))
            //            Add 1 to iCheck
            //            Move (Replaces('GO',sStr,' ' )) to sStr
            //            Writeln Channel 8 sStr
            //            Readln Channel 9 sStr
            //            Set Label to (String(iCheck))
            //        Loop
            
            //        Get ExecScriptScriptExec Of RunSQLScript 'C:\MyScript.txt' sOdbc to sMess
            
            //        EraseFile 'C:\MyScript.txt'
                    //Move (MyScriptExec(sFile,sODBC)) to sMess
            
                    Move '' to sParams
                    Append sParams "/P /U sa /i " (Trim(sFile)) ' /R ' (Trim(sODBC))
            
                    //Runprogram Wait "osql.exe " ("/P /U sa /i "+(Trim(sFile))+' /R '+(Trim(sODBC)))
            
                    RunProgram Wait "C:\ExeSQL.bat" sFile
                    //Runprogram Wait "c:\osql.exe" sParams
                    //Pause 24 00 '**'
                    //Runprogram Wait ("c:\osql.exe " +sParams)
            
                    Send Info_Box (Trim(sMess)) 'è¢û®¶≠¶®Âò'
                End
                Else Send Stop_Box 'Éú§ ß®¶©õ†¶®Â©ò´ú ß¶¨ ô®Â©°ú´ú ´¶ ò®ÆúÂ¶' 'ë≠·¢£ò 1002'
                Set Label Of ButtonSub1 to sLabel
                Set Enabled_State to True
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object oOpenFile is a OpenDialog
            Set Location to 2 407

            //AB-StoreStart
            Set Filter_String   to 'Text Files|*.txt|All Files|*.*'
            Set Initial_Folder  to 'C:\VDF6\Develop\Empor'
            Set Filter_Index    to 1
            
            //AB-StoreEnd

        End_Object    // oOpenFile

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ò®ÆúÂ¶¨"
            Set Location to 7 5
            Set Size to 10 55
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1


        //AB-StoreStart
                        
                        
        Object RunSQLScript is a OLEExecScript
            Set Visible_State to False
        End_Object
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    CD_End_Object    // ExecScript


    //AB-StoreStart
        
        
        
        
        
    //AB-StoreEnd

//AB/     End_Object    // prj
