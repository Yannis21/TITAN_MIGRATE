//AB/ Project ChkClnt
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "ChkClnt"
//AB/         Set ProjectFileName to "ChkClnt.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   ChkClnt is a dbViewSubs
//     oOpenFile is a OpenDialog
//     frmFileName is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     ChkEnhmerosh is a CheckBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object ChkClnt
Register_Object ChkEnhmerosh
Register_Object frmFileName
Register_Object oOpenFile
Register_Object TextBoxSub1


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    Open Clients
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Txtbox.Sub
    Use Button.Sub
    Use Chkbox.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_ChkClnt FOR ChkClnt

    Object ChkClnt is a dbViewSubs

        //AB-StoreTopStart
                            
        Property Integer    piCount                 Public  0
        
        Set Verify_Exit_Msg         to Get_No_Confirmation
        Set Verify_Save_Msg         to Get_No_Confirmation
        Set Verify_Data_Loss_Msg    to Get_No_Confirmation
        
        
        //AB-StoreTopEnd

        Set Label to "Ñ¢úöÆ¶™ èú¢ò´¶¢¶öÂ¶¨ ö†ò ´¶ Status ´¶¨™ ©´¶ SAP"
        Set Size to 74 399
        Set Location to 9 7

        //AB-DDOStart


        //AB-DDOEnd

        Object oOpenFile is a OpenDialog
            Set Location to 1 336

            //AB-StoreStart
            Set Filter_String   to 'Text Files|*.txt;*.csv|All Files|*.*'
            Set Initial_Folder  to 'C:\VDF6\Develop\Empor'
            Set Filter_Index    to 1
            
            
            //AB-StoreEnd

        End_Object    // oOpenFile

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

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ñß†¢¶ö„ ò®ÆúÂ¶¨"
            Set Location to 7 5
            Set Size to 10 55
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object ButtonSub1 is a ButtonSub
            Set Label to "Ñ¢úöÆ¶™"
            Set Size to 14 321
            Set Location to 40 63
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure OnClick
                Integer iFileRetreived iMetr iRecnum isFound iStat
                Integer iID iMet iFileExists isChecked
                String  sFile sClient sLabel sLine
                Date dHmnia
                Sysdate dHmnia
            
                Get Label to sLabel
                Get Checked_State Of chkEnhmerosh to isChecked
            
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
            
                Direct_Output Channel 8 "C:\VDF6\Develop\Empor\Protem_Clients.txt"
            
                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Read    Channel 9 sLine
                Readln  Channel 9
                If (Seqeof) Begin
                    Send Info_Box 'í¶ ò®ÆúÂ¶ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            
                While (NOT(Seqeof))
                    Add 1 to iMet
                    Move (Trim(Left(sLine,10)))  to sClient
                    Move (Insert(".",sClient,3)) to sClient
                    Move (Insert(".",sClient,6)) to sClient
                    Move (Trim(sClient))         to sClient
            
                    // SOS REMOVE ME AFTER TESTING
                    //If (Length(sClient)=12) Move (Replace("Z1.0",sClient,"Z1.")) to sClient
                    // SOS REMOVE ME AFTER TESTING
            
                    // Tora exoume ton kodika se morfh 01.A1.010744
                    // Alla ta excel einai me kodiko pelath SAP o opoios exei
                    // 6 psifia kai oxi 5 pou dinoume emeis, opote prepei na fygei to proto 0
                    String s6prota s7prota
                    Move (Left(sClient,6)) to s6prota
                    Move (Left(sClient,7)) to s7prota
                    Move (Replace(s7prota,sClient,s6Prota)) to sClient
            
                    //Showln sClient
            
            
                    Clear Clients
                    Move (Trim(sClient)) to Clients.Client_ID
                    Find Eq Clients By Index.6
                    If (Not(Found)) Begin
                        Write   Channel 8 (Trim(sClient)) "   Not Found in Clients File"
                        Writeln Channel 8
                    End
                    Else Begin
                        String sLab
                        Set Label to (Trim(sClient)+"  "+Trim(Clients.Client_Name))
                        Move "" to sLab
                             If (Trim(Clients.Status)= "") Move "** Status Keno => New      Client NOT exported " to sLab
                        Else If (Trim(Clients.Status)="1") Move "** Status 1    => Modified Client NOT exported " to sLab
                        Else If (Trim(Clients.Status)="2") Move "   Status 2    => New      Client     exported " to sLab
                        Else If (Trim(Clients.Status)="3") Move "   Status 3    => Modified Client     exported " to sLab
                        Write   Channel 8 (Trim(sClient)) "  " (pad(sLab,50)) "  Hmnia=" (Trim(Clients.Client_Hmnia)) "  LastUpd=" (Trim(Clients.Client_LastUpd)) "  SapHmnia=" (Trim(Clients.Sap_Hmnia))
                        Writeln Channel 8
                        If ((isChecked) And ((Clients.Status="") Or (Clients.Status="1"))) Begin
                            Reread Clients
                            Move 2      to Clients.Status
                            Move dHmnia to Clients.Sap_Hmnia
                            Saverecord Clients
                        End
                    End
            
            
                    Read    Channel 9 sLine
                    Readln  Channel 9
                Loop
                Close_Output Channel 8
                Close_Input  Channel 9
                Send Info_Box 'Ü ¢„Øû ßò®ò©´ò´†°È§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            //            Keno=Neos / 1=Modified / 2=Create with exagogh / 3=Modified with exagogh
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object ChkEnhmerosh is a CheckBoxSub

            //AB-StoreTopStart
                                
                                
            //AB-StoreTopEnd

            Set Label to "ãú ú§û£‚®‡©û ´¶¨ Status ©´¶ ò®ÆúÂ¶ Clients"
            Set Size to 10 167
            Set Location to 25 63

            //AB-StoreStart
                                
            Set Checked_State to False
            Set Enabled_State to False
            Set Visible_State to False
            
            
            //AB-StoreEnd

        End_Object    // ChkEnhmerosh


        //AB-StoreStart
                            
                            
                            
                            
                            
                            
                            
        //AB-StoreEnd

    End_Object    // ChkClnt


    //AB-StoreStart
            
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
