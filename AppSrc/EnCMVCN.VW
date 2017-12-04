//AB/ Project EnCMVCN
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnCMVCN"
//AB/     Set ProjectFileName to "EnCMVCN.VW"

// Project Object Structure
//   EnCMVCN is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnCMVCN


//AB/ AppBuild VIEW


//AB-StoreTopStart
                            
Use sl041.sl

Use bpEnCmv3.dg // Business Process Finilizing Barticle

Use slNomism.sl
Use sl033.sl
Use r044.rv
Use v037.vw
Use sl100.sl
Use sl036.sl
Use r36.rv
Use baxio.dd
Use Tperga.dd
Use BtnOrdH.DD
Use BtnOrdD.DD
Use Mhxanik.DD
Use Constrct.dd
Use Salesmen.dd
Use sysrecc.dd

//Use bp2ndCop.dg
//Use bpACopen.dg


//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_EnCMVCN FOR EnCMVCN

Object EnCMVCN is a dbViewSubS

    //AB-StoreTopStart
    
    Open SysCurXR
    Open Year
    Open Clients
    Open Cn
    Open Cmoves
    
    
    //AB-StoreTopEnd

    Set Label to "„¤£â¨à© ‰ ¤ã©œà¤ £œ «¦ §¨é«¦ › ˜Ÿâ© £¦ „¨š¦ (‚ ˜ Š€ «˜ “§¦¡˜«˜©«ã£˜«˜)"
    Set Size to 94 458
    Set Location to 9 7

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "„§œ¥œ¨š˜©å˜"
        Set Size to 14 415
        Set Location to 37 19
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            String  sFile sFile2 sLabel sMess sFileName CmRecr CnRecr
            Integer iFileExists iCheckAfm iCount isFound iRecnum
            Date ddate
            Get label To slabel
            Set Enabled_State To False
            Move "C:\#Xoris_Erga.txt" to sFileName
            Move 0 to iCount
            Move "" to sMess

            Get Get_File_Exists sFileName To iFileExists
            If (iFileExists) EraseFile sFileName 

            Open Branch
            Move SyscurXR.Company_Code to Branch.Company_Code
            Find GE Branch By Index.1
            While ((Found) And (SyscurXR.Company_Code=Branch.Company_Code))
                //----
        
                Clear Cmoves
                Find GE Cmoves By Index.11 // CN_Recr+Cmoves_Recr
                While ((Found) And (Cmoves.CN_Recr=""))
        
                    Move Cmoves.Cmoves_Recr to CmRecr
                    Move (Trim(CmRecr)+" - "+Trim(Cmoves.Client_ID)+"   "+String(Cmoves.Cmoves_Hmnia)) to sMess
                    Move (Trim(sMess)) to sMess
                    Set Label to sMess
        
                    Clear CN
                    Move Cmoves.Client_ID   to CN.Client_ID
                    Find GE Cn By Index.4
                    If ((Found) And (Cmoves.Client_ID=CN.Client_ID)) Begin
                        Reread Cmoves
                        Move CN.CN_Code     to Cmoves.CN_Code
                        Move CN.CN_Recr     to Cmoves.CN_Recr
                        Saverecord Cmoves
                        Unlock
                        Clear Cmoves
                        Move ""     to Cmoves.CN_Recr
                        Move CmRecr to Cmoves.Cmoves_Recr
                    End
                    Else Begin
                        Add 1 to iCount
                        Append_Output Channel 7 sFileName
                        Write   Channel 7 '“§¦¡˜«˜©«£˜='
                        Write   Channel 7 (trim(Branch.Branch_Code))
                        Write   Channel 7 "    œ¢á«ª="
                        Write   Channel 7 (trim(Cmoves.Client_ID))
                        Write   Channel 7 "    †£œ¨/¤å˜="
                        Write   Channel 7 (String(Cmoves.Cmoves_Hmnia))
                        Write   Channel 7 "    Recr="
                        Write   Channel 7 (String(Cmoves.Cmoves_Recr))
                        Writeln Channel 7
                        Close_Output Channel 7
                    End
                    Find GT Cmoves By Index.11 // CN_Recr+Cmoves_Recr
                Loop
        
                //----
                Find GT Branch By Index.1
            Loop
        
            Set Label Of ButtonSub1 To sLabel
            Set Enabled_State To True
        
            String sMess2
            Move "’¦ ˜¨®œå¦ £œ æ¤¦£˜ #Xoris_Erga.txt ©«¦ C ©˜ª\n§œ¨ â®œ  «¦¬ª §œ¢á«œª ˜¬«¦çª" to sMess2
        
            If (iCount>0) Begin
                Move "" to sMess
                Move ("¨âŸ¡˜¤ "+String(iCount)+" ˜¡æ£˜ ¡ ¤ã©œ ª £œ §œ¢á«œª ®à¨åª â¨š¦") to sMess
                Send Info_Box sMess  "¨¦©¦®ã"
                Send Info_Box sMess2 "¨¦©¦®ã"
            End
            Else Begin
                Send Info_Box "î¢œª ¦  ¡ ¤ã©œ ª ®à¨åª â¨š¦ œ¤£œ¨éŸ¡˜¤ œ§ «¬®éª" "¢¨¦­¦¨å˜"
            End
        End_Procedure // OnClick
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
    
    
    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get Msg_Activate_View to rVal
    
        Procedure_Return rVal
    End_Procedure
    
    //AB-StoreEnd

End_Object    // EnCMVCN


//AB-StoreStart
                            
                            
                            
//AB-StoreEnd

//AB/ End_Object    // prj
