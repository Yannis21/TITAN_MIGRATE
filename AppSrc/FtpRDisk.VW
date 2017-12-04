//AB/ Project FtpRDisk
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "FtpRDisk"
//AB/         Set ProjectFileName to "FtpRDisk.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   FtpRDisk is a dbViewSubS
//     oOpenFile is a OpenDialog
//     frmFileName is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object FtpRDisk
Register_Object frmFileName
Register_Object oOpenFile
Register_Object TextBoxSub1


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Open tmpSel
    Open HmerProg
    Open Btnemp
    Open Sysrecc
Open Antech
Open AnProd

    Use TranLock
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Form.Sub
    Use Txtbox.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_FtpRDisk FOR FtpRDisk

    Object FtpRDisk is a dbViewSubS

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

        Set Label to "Ñ†©òö‡ö„ èò®ò©´ò´†°È§ òß¶ É†©°‚´ò"
        Set Size to 62 399
        Set Location to 9 7

        //AB-DDOStart


        //AB-DDOEnd

        Object oOpenFile is a OpenDialog
            Set Location to 22 271

            //AB-StoreStart
            Set Filter_String   to 'Text Files|*.txt|All Files|*.*'
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
        End_Object    // TextBoxSub1

        Object ButtonSub1 is a ButtonSub
            Set Label to "Ñ†©òö‡ö„"
            Set Size to 14 120
            Set Location to 26 137

            //AB-StoreStart
            
        Procedure Read_AnTech
            String s1 s2 s3 s4 s5 s6 s7 sMess
            Integer iMet isNotFound                     
            Read    Channel 9 s1
            If (s1='[*@##ANPROD') Begin
                Send Read_Anprod
                Procedure_Return
            End
            Read    Channel 9 s2 s3 s4 s5 s6 s7
            Readln  Channel 9
            While (NOT(Seqeof))
                Add 1 to iMet
                //send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û Antech " + String(iMet)+ "  ...")
                                
                // jsjs Elegxos sto arxeio item etsi oste na mhn mpainei sto Antech
                // eggrafh me kapoio Item pou den exei anoixei sto emporiko
                // 09/08/2007
                Move '' to sMess   
                Move 0 to isNotFound
                Clear Item
                Move (Trim(s2)) to Item.Item_Code
                Find Eq Item By Index.5
                If (Not(Found)) Begin
                    Append sMess "í¶ úÂõ¶™ " (Trim(s2)) " ÉÑå úÆú† ò§¶†Æ´úÂ ©´¶ Betolink Enterprise" "\nÜ úöö®ò≠„ ©´¶ ò®úÆúÂ¶ ANTECH ÉÑå ‚ö†§ú"
                    Move 1 to isNotFound
                    Send Stop_Box sMess "Error 12000"
                End
                If (isNotFound=0) Begin
                // 09/08/2007
                    Clear Antech
                    Move (Trim(s1)) to Antech.Antech_Branch
                    Move (Trim(s4)) to Antech.Antech_ChNum
                    Move (Trim(s2)) to Antech.Antech_Item
                    Move (Trim(s3)) to Antech.Antech_ItemD
                    Find Eq Antech By Index.1
                    If (Not(Found)) Begin
                        If (Trim(s5)='') Move 0 to Antech.Antech_Qty
                        Else Move (Trim(s5)) to Antech.Antech_Qty
                        Move (Trim(s6)) to Antech.Antech_SapAA
                        Move (Trim(s7)) to Antech.Antech_SapCC
                        Saverecord Antech
                    End

                // 09/08/2007
                End
                // 09/08/2007
                
                Read    Channel 9 s1
                If (s1='[*@##ANPROD') Begin
                    Readln  Channel 9
                    Send Read_Anprod
                    Procedure_Return
                End
                Read    Channel 9 s2 s3 s4 s5 s6 s7
                Readln  Channel 9
            Loop
        End_Procedure

        Procedure Read_AnProd
            Integer iMet
            String s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
            Read    Channel 9 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
            Readln  Channel 9
            While (NOT(Seqeof))
                Add 1 to iMet
                //send AddInfo to (oStatusForm (Self)) ("Ñ§û£‚®‡©û AnProd " + String(iMet)+ "  ...")
                Clear AnProd
                Move (Trim( s1)) to AnProd.AnProd_Date
                Move (Trim( s2)) to AnProd.AnProd_Form
                Move (Trim( s3)) to AnProd.AnProd_Item
                Move (Trim( s4)) to AnProd.AnProd_Site
                Move (Trim( s8)) to AnProd.AnProd_CarTP
                Move (Trim( s9)) to AnProd.AnProd_ItemTN
                Move (Trim(s10)) to AnProd.AnProd_Mix
                Find Eq AnProd By Index.1
                If (Found) Begin
                    If (Trim(AnProd.Entolh_Recr)='') Begin
                        If (Trim(s5)='') Move 0 to AnProd.AnProd_Qty
                        Else Move (Trim(s5)) to AnProd.AnProd_Qty
                        Move (Trim(s6)) to AnProd.Entolh_Recr
                        Move (Trim(s7)) to AnProd.Wapomast
                        Saverecord AnProd
                    End
                End
                Else Begin
                    Move (Trim(s5)) to AnProd.AnProd_Qty
                    Move (Trim(s6)) to AnProd.Entolh_Recr
                    Move (Trim(s7)) to AnProd.Wapomast
                    Saverecord AnProd
                End
                Read    Channel 9 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
                Readln  Channel 9
            Loop
        End_Procedure
            Procedure OnClick
                Integer iFileRetreived iMetr iRecnum isFound iStat
                Integer iID iMet iFileExists
                String  sFile sCN sLabel
                String sVcompany sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime Svconstructorc
                String sVqty sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode
                String sVclientCode sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAp
                String sItemYpot sQtyReturn sVzone
            
                Get Label to sLabel
            
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
            
                Send ChangeAllFileModes DF_Filemode_ReadOnly
                Set_Attribute DF_File_Mode Of Btnemp.File_Number    to DF_Filemode_Default
                Set_Attribute DF_File_Mode Of Sysrecc.File_Number   to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Anprod.File_Number    to DF_Filemode_Default
            Set_Attribute DF_File_Mode Of Antech.File_Number    to DF_Filemode_Default
            
                Indicate Err False
                BEGIN_TRANSACTION
                Move Error_Object_ID to iID

                    // Read ascii file and make btnemp records
                Direct_Input Channel 9 sFile
                Move 0 to iMetr
                Read    Channel 9 sVcompany
                If (sVCompany='[*@##TECHN') Begin
                    Readln  Channel 9
                    Send Read_Antech
                    Goto Exodos_Ftp100
                End
                Else If (sVCompany='[*@##ANPROD') Begin
                    Readln  Channel 9
                    Send Read_Anprod
                    Goto Exodos_Ftp100
                End
                Read    Channel 9 sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime sVqty
                Read    Channel 9 sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode sVclientCode
                Read    Channel 9 sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAP sItemYpot sQtyReturn sVzone Svconstructorc
                Readln  Channel 9
                If (Seqeof) Begin
                    Send Info_Box 'í¶ ò®ÆúÂ¶ zbtnemp.txt õú§ ¨ß·®Æú† „ úÂ§ò† ·õú†¶' 'è¢û®¶≠¶®Âò'
                    Abort_Transaction
                        Goto EnhProg9
                End

                While (NOT(Seqeof))
                    Add 1 to iMet
            
                        Set Label to ("Ñ§û£‚®‡©û ßò®ò©´ò´†°¶Á #" + String(iMet)+ "  ...")

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
                            Move (Trim(sItemYpot   ))   to Btnemp.Item_Ypot
                            Move (Trim(sQtyReturn  ))   to Btnemp.Qty_Return
                            Move (Trim(sVzone      ))   to Btnemp.Vzone
                            Move (Trim(Svconstructorc ))   to Btnemp.Vconstructorc
                            Saverecord Btnemp
                            Unlock
                        End
                    End
                    Else Begin
                        Move '' to sCN
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
                        Move (Trim(sItemYpot   ))       to Btnemp.Item_Ypot
                        Move (Trim(sQtyReturn  ))       to Btnemp.Qty_Return
                        Move (Trim(sVzone      ))       to Btnemp.Vzone
                        Move (Trim(Svconstructorc ))    to Btnemp.Vconstructorc
                        Saverecord Btnemp
                    End
                    Read    Channel 9 sVcompany
                    If (sVCompany='[*@##TECHN') Begin
                        Readln  Channel 9
                        Send Read_AnTech
                        Goto Exodos_Ftp100
                    End
                    Else If (sVCompany='[*@##ANPROD') Begin
                        Readln  Channel 9
                        Send Read_Anprod
                        Goto Exodos_Ftp100
                    End
                    Read    Channel 9 sVsite sVdate sVvoucher sVseries sVsn sVrow sVtime sVqty
                    Read    Channel 9 sVprodCode sVorderPrice sVpumpID sVcarCode sVconsCode sVclientCode
                    Read    Channel 9 sVlatCode sVsiteEmf sVqty2 sTim sOffer_ID sWapomast sAP sItemYpot sQtyReturn sVzone Svconstructorc
                    Readln  Channel 9
                Loop
                Exodos_Ftp100:
            END_TRANSACTION
                EnhProg9:
                Move iID to Error_Object_ID
                UnLock
            
                Send ChangeAllFileModes DF_Filemode_Default
                If (Err) Begin
                    Send Stop_Box 'èò®¶¨©†·©´û°ò§ ©≠·¢£ò´ò °ò´· ´û§ õ†òõ†°ò©Âò\núöö®ò≠„™ ´‡§ ßò®ò©´ò´†°È§ ©´¶ ò®ÆúÂ¶ BTNEMP\nÜ õ†òõ†°ò©Âò ò°¨®Èüû°ú ú§´ú¢È™.' ('ë≠·¢£ò '+String(Err))
                End
                Else Begin
                    Send Info_Box 'Ü ¢„Øû ßò®ò©´ò´†°È§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                End
            
                Set Label to sLabel
            
            End_Procedure // OnClick
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                    
                    
                    
                    
                    
                    
        //AB-StoreEnd

    End_Object    // FtpRDisk


    //AB-StoreStart
        
        
    //AB-StoreEnd

//AB/     End_Object    // prj
