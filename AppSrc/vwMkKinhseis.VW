//AB/ Project vwMkKinhseis
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwMkKinhseis"
//AB/     Set ProjectFileName to "vwMkKinhseis.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwMkKinhseis is a dbViewSubs
//     Ctypkin_DD is a DataDictionary
//     Cflagkin_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     btnMess is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object btnMess
Register_Object Cflagkin_DD
Register_Object Ctypkin_DD
Register_Object vwMkKinhseis


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open Sysrecc
Open SysrecB
Open SyscurXr
Open Codemast
Open Ctypkin
Open Cflagkin
Open Btypkin
Open Baxiokat
Open BkinKat

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Button.Sub

Use CTYPKIN.DD
Use CFLAGKIN.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwMkKinhseis FOR vwMkKinhseis

Object vwMkKinhseis is a dbViewSubs

    //AB-StoreTopStart
                                                                                                                            
    //AB-StoreTopEnd

    Set Label to "Ä¨´¶£ò´¶ß¶†û£‚§û Éû£†¶¨®öÂò 2 å‚‡§ â†§„©ú‡§ (Ñ£ô·©£ò´ò & Ñß†´òö„ Ü£‚®ò™)"
    Set Size to 100 425
    Set Location to 6 9

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Cflagkin_DD is a Cflagkin_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set Constrain_File to Ctypkin.File_Number
    End_Object    // Cflagkin_DD

    Set Main_DD to (Ctypkin_DD(self))
    Set Server to (Ctypkin_DD(self))

    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñßú•ú®öò©Âò"
        Set Size to 14 181
        Set Location to 38 120
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Label to 'Ñßú•ú®öò©Âò'
        
        Procedure OnClick
            String  sLabel BaxiokatRecr1 BaxiokatRecr2
            String sCode1 sCode2 sRecr1 sRecr2
            Integer iYes iError_Object_ID
        
            Get Label to sLabel
        
            Get YesNo_Box "è®†§ ß®¶Æ‡®„©ú´ú, ôúôò†‡üúÂ´ú ¶´† õú§ ¨ß·®Æ¶¨§ „õû \nÑöö®ò≠‚™ £ú °‡õ 126 & 127 ©´†™ â†§„©ú†™ & èò®·£ú´®¶† â†§„©ú‡§\nåò ß®¶Æ‡®„©‡ ©´û§ ò¨´Ê£ò´û õû£†¶¨®öÂò ´‡§ òßò®òÂ´‡§ úöö®ò≠È§ ?" to iYes
            If (iYes=MBR_NO) Procedure_return
        
        
            Begin_Transaction
                Move Error_Object_ID to iError_Object_ID
        
        
                //----------------------------------------------------------------
                //----------------------------------------------------------------
                // 1. Create Codemast
                //                      CFLAGS / 94 Î£ôò©£ò SAP
                //                      CFLAGS / 95 Ñß†´òö„ Ü£‚®ò™
                Clear Codemast
                Move "CFLAGS"   to Codemast.Type
                Move "94"       to Codemast.Code
                Find Eq Codemast By Index.1
                If (Not(Found)) Begin
                    Move "Î£ôò©£ò SAP" to Codemast.Description
                    Saverecord Codemast
                End
                Else Begin
                    Reread Codemast
                    Move "Î£ôò©£ò SAP" to Codemast.Description
                    Saverecord Codemast
                    Unlock
                End
        
                Clear Codemast
                Move "CFLAGS"   to Codemast.Type
                Move "95"       to Codemast.Code
                Find Eq Codemast By Index.1
                If (Not(Found)) Begin
                    Move "Ñß†´òö„ Ü£‚®ò™" to Codemast.Description
                    Saverecord Codemast
                End
                Else Begin
                    Reread Codemast
                    Move "Ñß†´òö„ Ü£‚®ò™" to Codemast.Description
                    Saverecord Codemast
                    Unlock
                End
                Clear Codemast
        
        
                //----------------------------------------------------------------
                // 2. Create Ctypkin & Cflagkin
                //                      CFLAGS / 94 Î£ôò©£ò SAP
                //                      CFLAGS / 95 Ñß†´òö„ Ü£‚®ò™
        
                // FTIAXE TO CTYPKIN 126 (EISPRAXH EMBASMATOS PELATH)
                Clear Ctypkin
                Move "126"  to Ctypkin.Ctypkin_Code
                Find Eq Ctypkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Clear Ctypkin
                    Move "126"                          to Ctypkin.Ctypkin_Code
                    Move (Sysrecc.Ctypkin_Rec0+1)       to Ctypkin.Ctypkin_Rec0
                    Move (Sysrecc.Ctypkin_Rec0+1)       to Sysrecc.Ctypkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Ctypkin.Ctypkin_Rec0)))))) ;
                                                        to Ctypkin.Ctypkin_Recr
        
                    Move Ctypkin.Ctypkin_Code           to sCode1
                    Move Ctypkin.Ctypkin_Recr           to sRecr1
        
                    Move SyscurXr.Company_Code          to Ctypkin.Company_Code
                    Move SyscurXr.Branch_Code           to Ctypkin.Branch_Code
                    Move SyscurXr.Year_Year             to Ctypkin.Year_Year
                    Move SyscurXr.Year_Recr             to Ctypkin.Year_Recr
        
                    Move "ÑàëèêÄçÜ ÑãÅÄëãÄíéë èÑäÄíÜ"   to Ctypkin.Ctypkin_Descr
                    Move "01"                           to Ctypkin.Ctypkin_Module
                    Move "1"                            to Ctypkin.Open_Item
                    Move "0"                            to Ctypkin.Max_Days_Sx_Par
                    Move "23"                           to Ctypkin.Singular
                    Move "100"                          to Ctypkin.Sub
                    Saverecord Ctypkin
                End
                Else Begin
                    Move Ctypkin.Ctypkin_Code           to sCode1
                    Move Ctypkin.Ctypkin_Recr           to sRecr1
                End
        
                // FTIAXE TO CTYPKIN 127 (EISPRAXH EPITAGHS HMERAS)
                Clear Ctypkin
                Move "127"  to Ctypkin.Ctypkin_Code
                Find Eq Ctypkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Clear Ctypkin
                    Move "127"                          to Ctypkin.Ctypkin_Code
                    Move (Sysrecc.Ctypkin_Rec0+1)       to Ctypkin.Ctypkin_Rec0
                    Move (Sysrecc.Ctypkin_Rec0+1)       to Sysrecc.Ctypkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Ctypkin.Ctypkin_Rec0)))))) ;
                                                        to Ctypkin.Ctypkin_Recr
                    Move Ctypkin.Ctypkin_Code           to sCode2
                    Move Ctypkin.Ctypkin_Recr           to sRecr2
        
                    Move SyscurXr.Company_Code          to Ctypkin.Company_Code
                    Move SyscurXr.Branch_Code           to Ctypkin.Branch_Code
                    Move SyscurXr.Year_Year             to Ctypkin.Year_Year
                    Move SyscurXr.Year_Recr             to Ctypkin.Year_Recr
        
                    Move "ÑàëèêÄçÜ ÑèàíÄÇÜë ÜãÑêÄë"     to Ctypkin.Ctypkin_Descr
                    Move "01"                           to Ctypkin.Ctypkin_Module
                    Move "1"                            to Ctypkin.Open_Item
                    Move "0"                            to Ctypkin.Max_Days_Sx_Par
                    Move "23"                           to Ctypkin.Singular
                    Move "100"                          to Ctypkin.Sub
                    Saverecord Ctypkin
                End
                Else Begin
                    Move Ctypkin.Ctypkin_Code           to sCode2
                    Move Ctypkin.Ctypkin_Recr           to sRecr2
                End
        
        
        
                // FTIAXE TA CFLAGKIN (1, 4, 5, 99, 94) GIA CTYPKIN = 126 (EISPRAXH EMBASMATOS PELATH)
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "1"                    to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode1))         to Cflagkin.Ctypkin_Code
                Move "1"                    to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr1                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "4"                    to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode1))         to Cflagkin.Ctypkin_Code
                Move "4"                    to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr1                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "5"                    to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode1))         to Cflagkin.Ctypkin_Code
                Move "5"                    to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr1                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "94"                   to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode1))         to Cflagkin.Ctypkin_Code
                Move "94"                   to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr1                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "99"                   to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode1))         to Cflagkin.Ctypkin_Code
                Move "99"                   to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr1                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
        
        
                // FTIAXE TA CFLAGKIN (1, 4, 5, 99, 95) GIA CTYPKIN = 127 (EISPRAXH EPITAGH HMERAS)
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "1"                    to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode2))         to Cflagkin.Ctypkin_Code
                Move "1"                    to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr2                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "4"                    to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode2))         to Cflagkin.Ctypkin_Code
                Move "4"                    to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr2                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "5"                    to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode2))         to Cflagkin.Ctypkin_Code
                Move "5"                    to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr2                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "95"                   to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode2))         to Cflagkin.Ctypkin_Code
                Move "95"                   to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr2                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin   
                End
        
                Clear Cflagkin
                Clear Codemast
                Move "CFLAGS"               to Codemast.Type
                Move "99"                   to Codemast.Code
                Find Eq Codemast By Index.1
        
                Move (Trim(sCode2))         to Cflagkin.Ctypkin_Code
                Move "99"                   to Cflagkin.Cflagkin_Flag
                Find Eq Cflagkin By Index.1
                If (Not(Found)) begin
                    Reread Sysrecc
                    Move (Trim(Codemast.Description))   to Cflagkin.Cflagkin_Descr
                    Move sRecr2                         to Cflagkin.Ctypkin_Recr
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Cflagkin.Cflagkin_Rec0
                    Move (Sysrecc.CFlagkin_Rec0+1)      to Sysrecc.Cflagkin_Rec0
                    Saverecord Sysrecc
                    Unlock
                    Move Cflagkin.Cflagkin_Flag         to Cflagkin.Flag_Numeric
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Cflagkin.Cflagkin_Rec0)))))) ;
                                                        to Cflagkin.Cflagkin_Recr
                    Saverecord Cflagkin
                End
        
        
                // FTIAXE BAXIOKAT 4 kai 5 (Typoi Axiografon)
                Clear Baxiokat
                Move 4 to Baxiokat.Baxiokat_Code
                Find Eq baxiokat By Index.1
                If (Not(Found)) Begin
                    Move "ÑÂ©ß®ò•û Ñ£ô·©£ò´¶™"      to Baxiokat.Baxiokat_Descr
                    Move 1                          to baxiokat.Baxiokat_Type
                    Reread SysrecB
                    Move (Sysrecb.Baxiokat_Rec0+1)  To Baxiokat.Baxiokat_Rec0
                    Move (Sysrecb.Baxiokat_Rec0+1)  To Sysrecb.Baxiokat_Rec0
                    Saverecord SysrecB
                    Unlock
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Baxiokat.Baxiokat_Rec0)))))) ;
                                                    to Baxiokat.Baxiokat_Recr
                    Move Baxiokat.Baxiokat_Recr     to BaxiokatRecr1
                    Move 0                          to Baxiokat.Baxiokat_Formul
                    Move 0                          to Baxiokat.Baxio_LCode
                    Move 0                          to Baxiokat.Baxiokat_YN5390
                    Move ""                         to Baxiokat.Baxiokat_Bank
                    Move ""                         to Baxiokat.Baxiokat_Lno
                    Saverecord Baxiokat
                End
        
                Clear Baxiokat
                Move 5 to Baxiokat.Baxiokat_Code
                Find Eq baxiokat By Index.1
                If (Not(Found)) Begin
                    Move "Ñß†´òö‚™ Ü£‚®ò™ Ñ†©ß®ò°´‚ú™"  to Baxiokat.Baxiokat_Descr
                    Move 1                              to baxiokat.Baxiokat_Type
                    Reread SysrecB
                    Move (Sysrecb.Baxiokat_Rec0+1)  To Baxiokat.Baxiokat_Rec0
                    Move (Sysrecb.Baxiokat_Rec0+1)  To Sysrecb.Baxiokat_Rec0
                    Saverecord SysrecB
                    Unlock
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Baxiokat.Baxiokat_Rec0)))))) ;
                                                    to Baxiokat.Baxiokat_Recr
                    Move Baxiokat.Baxiokat_Recr     to BaxiokatRecr2
                    Move 0                          to Baxiokat.Baxiokat_Formul
                    Move 0                          to Baxiokat.Baxio_LCode
                    Move 0                          to Baxiokat.Baxiokat_YN5390
                    Move ""                         to Baxiokat.Baxiokat_Bank
                    Move ""                         to Baxiokat.Baxiokat_Lno
                    Saverecord Baxiokat
                End
        
        
                // îíàÄçÑ ëíàë âàåÜëÑàë ÄçàéÇêÄîóå / ëìåÉÑëÜ ãÑ Çä
                Clear Btypkin
                Move "111" to Btypkin.Btypkin_Code
                Find Eq Btypkin By Index.1
                If (Not(Found)) Begin
                    Move "ÑàëèêÄçÜ ÑãÅÄëãÄíéë èÑäÄíÜ"   to Btypkin.Btypkin_Descr
                    Move SysCurXR.Company_Code          to Btypkin.Company_Code
                    Move SysCurXR.Branch_Code           to Btypkin.Branch_Code
                    Move SysCurXR.Year_Year             to Btypkin.Year_Year
                    Move SysCurXR.Year_Recr             to Btypkin.Year_Recr
                    Reread SysrecB
                    Move (Sysrecb.Btypkin_Rec0+1)       to Btypkin.Btypkin_Rec0
                    Move (Sysrecb.Btypkin_Rec0+1)       to Sysrecb.Btypkin_Rec0
                    Saverecord SysrecB
                    Unlock
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Btypkin.Btypkin_Rec0)))))) ;
                                                        to Btypkin.Btypkin_Recr
                    Move "126"                          to Btypkin.Ctypkin_Code
                    Move "ÑÑè"                          to Btypkin.Btypkin_Abr
                    Move "2"                            to Btypkin.Btypkin_Anti1    // Foreas
                    Move "2"                            to Btypkin.Btypkin_Anti_XP  // Pistvnetai
                    Move "-1"                           to Btypkin.Btypkin_Anti2    // Den Yparxei
                    Move 1                              to Btypkin.Btypkin_Sign     // Thetiko proshmo
                    Move 1                              to Btypkin.Vtypkin_Code     // Symmetexei SAP
                    Move "ÄèéÉÑàçÜ èÄêÄäÄÅÜë ÑãÅÄëãÄíéë" to Btypkin.Btypkin_PDescr
                    Move "èÄêÑäÜîáÜëÄå ëÜãÑêÄ íÄ ÄåóíÑêó ÑãÅÄëãÄíÄ ÇàÄ äéÇ/ãé íéì èÑäÄíÜ" ;
                                                        to Btypkin.Label
        
                    Clear Ctypkin
                    Move Btypkin.Company_Code to Ctypkin.Company_Code
                    Move Btypkin.Branch_Code  to Ctypkin.Branch_Code
                    Move Btypkin.Year_Year    to Ctypkin.Year_Year
                    Move Btypkin.Ctypkin_Code to Ctypkin.Ctypkin_Code
                    Find Eq Ctypkin by Index.1 //company_code+branch_code+year_year+Ctypkin_code
                    If (Found = 1) Begin
                        Move Ctypkin.Ctypkin_Rec0 to Btypkin.Ctypkin_Rec0
                        Move Ctypkin.Ctypkin_Recr to Btypkin.Ctypkin_Recr
                    End
        
                    Saverecord Btypkin
        
        
                    Clear Bflagkin
        
                    Move Syscurxr.Company_Code  to Bflagkin.Company_Code
                    Move Syscurxr.Branch_Code   to Bflagkin.Branch_Code
                    Move Syscurxr.Year_Year     to Bflagkin.Year_Year
                    Move Btypkin.Btypkin_Code   to Bflagkin.Btypkin_Code
                    Move 5                      to Bflagkin.Bflagkin_Flag
                    Find Eq Bflagkin By Index.1
                    If (Not(Found)) Begin
                        Reread SysrecB
                        Move (Sysrecb.Bflagkin_Rec0+1)  To Bflagkin.Bflagkin_Rec0
                        Move (Sysrecb.Bflagkin_Rec0+1)  To Sysrecb.Bflagkin_Rec0
                        Saverecord SysrecB
                        Unlock
                        Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Bflagkin.Bflagkin_Rec0)))))) ;
                                                        to Bflagkin.Bflagkin_Recr
        
                        Reread Btypkin
                             If (Bflagkin.Bflagkin_Flag =  1) Move 1 to Btypkin.Btypkin_Flag01
                        Else If (Bflagkin.Bflagkin_Flag =  2) Move 1 to Btypkin.Btypkin_Flag02
                        Else If (Bflagkin.Bflagkin_Flag =  3) Move 1 to Btypkin.Btypkin_Flag03
                        Else If (Bflagkin.Bflagkin_Flag =  4) Move 1 to Btypkin.Btypkin_Flag04
                        Else If (Bflagkin.Bflagkin_Flag =  5) Move 1 to Btypkin.Btypkin_Flag05
                        Else If (Bflagkin.Bflagkin_Flag =  6) Move 1 to Btypkin.Btypkin_Flag06
                        Else If (Bflagkin.Bflagkin_Flag =  7) Move 1 to Btypkin.Btypkin_Flag07
                        Else If (Bflagkin.Bflagkin_Flag =  8) Move 1 to Btypkin.Btypkin_Flag08
                        Else If (Bflagkin.Bflagkin_Flag =  9) Move 1 to Btypkin.Btypkin_Flag09
                        Else If (Bflagkin.Bflagkin_Flag = 10) Move 1 to Btypkin.Btypkin_Flag10
                        Else If (Bflagkin.Bflagkin_Flag = 11) Move 1 to Btypkin.Btypkin_Flag11
                        Else If (Bflagkin.Bflagkin_Flag = 12) Move 1 to Btypkin.Btypkin_Flag12
                        Else If (Bflagkin.Bflagkin_Flag = 13) Move 1 to Btypkin.Btypkin_Flag13
                        Else If (Bflagkin.Bflagkin_Flag = 14) Move 1 to Btypkin.Btypkin_Flag14
                        Else If (Bflagkin.Bflagkin_Flag = 15) Move 1 to Btypkin.Btypkin_Flag15
                        Else If (Bflagkin.Bflagkin_Flag = 16) Move 1 to Btypkin.Btypkin_Flag16
                        Else If (Bflagkin.Bflagkin_Flag = 17) Move 1 to Btypkin.Btypkin_Flag17
                        Else If (Bflagkin.Bflagkin_Flag = 18) Move 1 to Btypkin.Btypkin_Flag18
                        Else If (Bflagkin.Bflagkin_Flag = 19) Move 1 to Btypkin.Btypkin_Flag19
                        Else If (Bflagkin.Bflagkin_Flag = 20) Move 1 to Btypkin.Btypkin_Flag20
                        Saverecord Btypkin
                        Unlock
        
                        Move Btypkin.Btypkin_Recr                    to Bflagkin.Btypkin_Recr
                        Saverecord Bflagkin
                    End
        
        
                    Clear Bkinkat
                    Move Btypkin.Btypkin_Code           to Bkinkat.Btypkin_Code
                    Move 4                              to Bkinkat.Baxiokat_Code
                    Find Eq BkinKat By Index.1
                    If (Not(Found)) Begin
                        Move Syscurxr.Company_Code      to Bkinkat.Company_Code
                        Move Syscurxr.Branch_Code       to Bkinkat.Branch_Code
                        Move Syscurxr.Year_Year         to Bkinkat.Year_Year
                        Reread SysrecB
                        Move (Sysrecb.Bkinkat_Rec0+1)   To Bkinkat.Bkinkat_Rec0
                        Move (Sysrecb.Bkinkat_Rec0+1)   To Sysrecb.Bkinkat_Rec0
                        Saverecord SysrecB
                        Unlock
                        Move (Append('',((Trim(SysCurXr.Branch_Site))+(Trim(String(Bkinkat.Bkinkat_Rec0)))))) ;
                                                        to Bkinkat.Bkinkat_Recr
                        Move 1                          to Bkinkat.Bkinkat_Yn_New
                        Move 0                          to Bkinkat.Baxio_Plac_From
                        Move 1                          to Bkinkat.Baxio_Plac_To
                        Move 1                          to Bkinkat.Baxio_Stat_From
                        Move 1                          to Bkinkat.Baxio_Stat_To
                        Reread Btypkin
                        Add 1 to   Btypkin.Bkinkat_Num
                        Saverecord Btypkin
                        Unlock
        
                        Move Btypkin.Btypkin_Recr   to Bkinkat.Btypkin_Recr
                        Move BaxiokatRecr1          to Bkinkat.Baxiokat_Recr
        
                        Saverecord Bkinkat
                    End
        
        
                End
        
        
        
                Clear Btypkin
                Move "112" to Btypkin.Btypkin_Code
                Find Eq Btypkin By Index.1
                If (Not(Found)) Begin
                    Move "ÄèéÉÑàçÜ èÄêÄäÄÅÜë ÑèàíÄÇÜë ÜãÑêÄë"   to Btypkin.Btypkin_Descr
                    Move SysCurXR.Company_Code                  to Btypkin.Company_Code
                    Move SysCurXR.Branch_Code                   to Btypkin.Branch_Code
                    Move SysCurXR.Year_Year                     to Btypkin.Year_Year
                    Move SysCurXR.Year_Recr                     to Btypkin.Year_Recr
                    Reread SysrecB
                    Move (Sysrecb.Btypkin_Rec0+1)               to Btypkin.Btypkin_Rec0
                    Move (Sysrecb.Btypkin_Rec0+1)               to Sysrecb.Btypkin_Rec0
                    Saverecord SysrecB
                    Unlock
                    Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Btypkin.Btypkin_Rec0)))))) ;
                                                                to Btypkin.Btypkin_Recr
                    Move "127"                                  to Btypkin.Ctypkin_Code
                    Move "ÄèÑÜ"                                 to Btypkin.Btypkin_Abr
                    Move "2"                                    to Btypkin.Btypkin_Anti1    // Foreas
                    Move "2"                                    to Btypkin.Btypkin_Anti_XP  // Pistvnetai
                    Move "-1"                                   to Btypkin.Btypkin_Anti2    // Den Yparxei
                    Move 1                                      to Btypkin.Btypkin_Sign     // Thetiko proshmo
                    Move 1                                      to Btypkin.Vtypkin_Code     // Symmetexei SAP
                    Move "ÄèéÉÑàçÜ èÄêÄäÄÅÜë ÑèàíÄÇÜë ÜãÑêÄë"   to Btypkin.Btypkin_PDescr
                    Move "èÄêÑäÜîáÜëÄå ëÜãÑêÄ éà ÄåóíÑêó ÑèàíÄÇÑë ÇàÄ äéÇ/ãé íéì èÑäÄíÜ" ;
                                                                to Btypkin.Label
        
                    Clear Ctypkin
                    Move Btypkin.Company_Code to Ctypkin.Company_Code
                    Move Btypkin.Branch_Code  to Ctypkin.Branch_Code
                    Move Btypkin.Year_Year    to Ctypkin.Year_Year
                    Move Btypkin.Ctypkin_Code to Ctypkin.Ctypkin_Code
                    Find Eq Ctypkin by Index.1 //company_code+branch_code+year_year+Ctypkin_code
                    If (Found = 1) Begin
                        Move Ctypkin.Ctypkin_Rec0 to Btypkin.Ctypkin_Rec0
                        Move Ctypkin.Ctypkin_Recr to Btypkin.Ctypkin_Recr
                    End
        
                    Saverecord Btypkin
        
        
                    Clear Bflagkin
        
                    Move Syscurxr.Company_Code  to Bflagkin.Company_Code
                    Move Syscurxr.Branch_Code   to Bflagkin.Branch_Code
                    Move Syscurxr.Year_Year     to Bflagkin.Year_Year
                    Move Btypkin.Btypkin_Code   to Bflagkin.Btypkin_Code
                    Move 5                      to Bflagkin.Bflagkin_Flag
                    Find Eq Bflagkin By Index.1
                    If (Not(Found)) Begin
                        Reread SysrecB
                        Move (Sysrecb.Bflagkin_Rec0+1)  To Bflagkin.Bflagkin_Rec0
                        Move (Sysrecb.Bflagkin_Rec0+1)  To Sysrecb.Bflagkin_Rec0
                        Saverecord SysrecB
                        Unlock
        
                        Move (Append('',((Trim(SysCurXR.Branch_Site))+(Trim(String(Bflagkin.Bflagkin_Rec0)))))) ;
                                                        to Bflagkin.Bflagkin_Recr
        
                        Reread Btypkin
                             If (Bflagkin.Bflagkin_Flag =  1) Move 1 to Btypkin.Btypkin_Flag01
                        Else If (Bflagkin.Bflagkin_Flag =  2) Move 1 to Btypkin.Btypkin_Flag02
                        Else If (Bflagkin.Bflagkin_Flag =  3) Move 1 to Btypkin.Btypkin_Flag03
                        Else If (Bflagkin.Bflagkin_Flag =  4) Move 1 to Btypkin.Btypkin_Flag04
                        Else If (Bflagkin.Bflagkin_Flag =  5) Move 1 to Btypkin.Btypkin_Flag05
                        Else If (Bflagkin.Bflagkin_Flag =  6) Move 1 to Btypkin.Btypkin_Flag06
                        Else If (Bflagkin.Bflagkin_Flag =  7) Move 1 to Btypkin.Btypkin_Flag07
                        Else If (Bflagkin.Bflagkin_Flag =  8) Move 1 to Btypkin.Btypkin_Flag08
                        Else If (Bflagkin.Bflagkin_Flag =  9) Move 1 to Btypkin.Btypkin_Flag09
                        Else If (Bflagkin.Bflagkin_Flag = 10) Move 1 to Btypkin.Btypkin_Flag10
                        Else If (Bflagkin.Bflagkin_Flag = 11) Move 1 to Btypkin.Btypkin_Flag11
                        Else If (Bflagkin.Bflagkin_Flag = 12) Move 1 to Btypkin.Btypkin_Flag12
                        Else If (Bflagkin.Bflagkin_Flag = 13) Move 1 to Btypkin.Btypkin_Flag13
                        Else If (Bflagkin.Bflagkin_Flag = 14) Move 1 to Btypkin.Btypkin_Flag14
                        Else If (Bflagkin.Bflagkin_Flag = 15) Move 1 to Btypkin.Btypkin_Flag15
                        Else If (Bflagkin.Bflagkin_Flag = 16) Move 1 to Btypkin.Btypkin_Flag16
                        Else If (Bflagkin.Bflagkin_Flag = 17) Move 1 to Btypkin.Btypkin_Flag17
                        Else If (Bflagkin.Bflagkin_Flag = 18) Move 1 to Btypkin.Btypkin_Flag18
                        Else If (Bflagkin.Bflagkin_Flag = 19) Move 1 to Btypkin.Btypkin_Flag19
                        Else If (Bflagkin.Bflagkin_Flag = 20) Move 1 to Btypkin.Btypkin_Flag20
                        Saverecord Btypkin
                        Unlock
        
                        Move Btypkin.Btypkin_Recr                    to Bflagkin.Btypkin_Recr
        
                        Saverecord Bflagkin
                    End
        
        
                    Clear Bkinkat
                    Move Btypkin.Btypkin_Code           to Bkinkat.Btypkin_Code
                    Move 5                              to Bkinkat.Baxiokat_Code
                    Find Eq BkinKat By Index.1
                    If (Not(Found)) Begin
                        Move Syscurxr.Company_Code      to Bkinkat.Company_Code
                        Move Syscurxr.Branch_Code       to Bkinkat.Branch_Code
                        Move Syscurxr.Year_Year         to Bkinkat.Year_Year
                        Reread SysrecB
                        Move (Sysrecb.Bkinkat_Rec0+1)   To Bkinkat.Bkinkat_Rec0
                        Move (Sysrecb.Bkinkat_Rec0+1)   To Sysrecb.Bkinkat_Rec0
                        Saverecord SysrecB
                        Unlock
                        Move (Append('',((Trim(SysCurXr.Branch_Site))+(Trim(String(Bkinkat.Bkinkat_Rec0)))))) ;
                                                        to Bkinkat.Bkinkat_Recr
                        Move 1                          to Bkinkat.Bkinkat_Yn_New
                        Move 0                          to Bkinkat.Baxio_Plac_From
                        Move 1                          to Bkinkat.Baxio_Plac_To
                        Move 1                          to Bkinkat.Baxio_Stat_From
                        Move 1                          to Bkinkat.Baxio_Stat_To
                        Reread Btypkin
                        Add 1 to   Btypkin.Bkinkat_Num
                        Saverecord Btypkin
                        Unlock
        
                        Move Btypkin.Btypkin_Recr   to Bkinkat.Btypkin_Recr
                        Move BaxiokatRecr2          to Bkinkat.Baxiokat_Recr
        
                        Saverecord Bkinkat
                    End
                End
        
            End_Transaction
            Unlock
            Move iError_Object_ID to Error_Object_ID
        
            //----------------------------------------------------------------
            //----------------------------------------------------------------
            Send Info_Box 'Ü úßú•ú®öò©Âò ¶¢¶°¢û®Èüû°ú ' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object btnMess is a ButtonSub
        Set Size to 14 418
        Set Location to 67 1
        Set Border_Style to Border_StaticEdge
        Set Focus_Mode to NonFocusable
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
        
        End_Procedure // OnClick
        //AB-StoreEnd

    End_Object    // btnMess


    //AB-StoreStart
                                                                                                                            
    //AB-StoreEnd

End_Object    // vwMkKinhseis


//AB-StoreStart







//AB-StoreEnd

//AB/ End_Object    // prj
