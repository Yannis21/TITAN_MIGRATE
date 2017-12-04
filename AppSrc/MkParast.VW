//AB/ Project MkParast
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "MkParast"
//AB/         Set ProjectFileName to "MkParast.VW"

// Project Object Structure
//   MkParast is a dbViewSubS
//     Ctypkin_DD is a Ctypkin_DataDictionary
//     Cflagkin_DD is a Cflagkin_DataDictionary
//     Wtypkin_DD is a Wtypkin_DataDictionary
//     Wflagkin_DD is a Wflagkin_DataDictionary
//     Ptyppar_DD is a Ptyppar_DataDictionary
//     Pseira_DD is a Pseira_DataDictionary
//     ButtonSub1 is a ButtonSub
//       oPinakas is a Array

// Register all objects
Register_Object ButtonSub1
Register_Object Cflagkin_DD
Register_Object Ctypkin_DD
Register_Object MkParast
Register_Object oPinakas
Register_Object Pseira_DD
Register_Object Ptyppar_DD
Register_Object Wflagkin_DD
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                
    Use Ctypkin.DD
    Use Wtypkin.DD
    Use Cflagkin.DD
    Use Wflagkin.DD
    Use Ptyppar.DD
    Use Pseira.DD
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_MkParast FOR ;
    ;
    Object MkParast is a dbViewSubS

        //AB-StoreTopStart
                            
        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD
        
        Object Cflagkin_DD is a Cflagkin_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set Constrain_File to Ctypkin.File_Number
        End_Object    // Cflagkin_DD
        
        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD
        
        Object Wflagkin_DD is a Wflagkin_DataDictionary
            Set DDO_Server to (Wtypkin_DD(self))
            Set Constrain_File to Wtypkin.File_Number
        End_Object    // Wflagkin_DD
        
        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD
        
        Object Pseira_DD is a Pseira_DataDictionary
            Set DDO_Server to (Ptyppar_DD(self))
            Set Constrain_File to Ptyppar.File_Number
        End_Object    // Pseira_DD
        
        //AB-StoreTopEnd

        Set Label to "Éû£†¶¨®öÂò èò®ò©´ò´†°È§ òß¶ ASCII ò®ÆúÂ¶"
        Set Size to 89 425
        Set Location to 6 5

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            Object oPinakas is a Array
            End_Object
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 39 120
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel sField sField2 sCode sField3
                Integer iFields iDeikths iID
                Get Label to sLabel
            
                BEGIN_TRANSACTION
                    Move Error_Object_ID to iID
            
                    Clear Branch
                    Move SysCurXR.Company_Code    to Branch.Company_Code
                    Find Gt Branch By Index.1
                    While ((Found=1) And (Branch.Company_Code=SysCurXR.Company_Code))
                        Reread SyscurXr
                        Move Branch.Branch_Code to SyscurXr.Branch_Code
                        Saverecord SyscurXr
                        Unlock
                        Reread SyscurXr
                        Unlock
            
                        //////////////////////////////////////////////////////////////////////////
                        // Ctypkin  6 pedia sto ascii
                        // Ctypkin_Code/Ctypkin_Descr/Ctypkin_Module/Max_Days_Sx_Par/Singular/Sub
                        //////////////////////////////////////////////////////////////////////////
                        Move 6              to iFields // posa pedia prepei na exei to ascii
                        Send Delete_Data    to oPinakas
            
                        Direct_Input Channel 9 'C:\#Ctypkin.txt'
                        While (Not(Seqeof))
                            // Diavazoume mono to 1o pedio sto ascii kai to vazoume sthn
                            // 1h thesi tou pinaka (item 0)
                                Read    Channel 9 sField
                                If (Trim(sField)='') Begin
                                    Close_Output Channel 9
                                    Goto Read_Ctypkin_Ascii_End
                                End
                                Set Array_Value Of (oPinakas(Self)) Item 0 to sField
                            // Diavazoume ta ypoloipa pedia tou ascii kai gemizoume
                            // ton pinaka apo thn thesi 2 (item 1)
                            // Gemizei to array apo 1-(iFields-1)
                            For iDeikths From 1 to (iFields-1)
                                Read    Channel 9 sField
                                Set Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                            Loop
            
                            // Ftiaxe meso klashs thn eggrafh Äå ÉÑå ìèÄêïÑà ÜÉÜ
                            Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                            Clear Ctypkin
                            Move sField to Ctypkin.Ctypkin_Code
                            Find Eq Ctypkin By Index.1
                            If (Not(Found)) Begin
                                Send Clear to Ctypkin_DD
                                For iDeikths From 0 to (iFields-1)
                                    Get Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                                         If (iDeikths=0) Set Field_Changed_Value Of Ctypkin_DD Field Ctypkin.Ctypkin_Code       to sField
                                    Else if (iDeikths=1) Set Field_Changed_Value Of Ctypkin_DD Field Ctypkin.Ctypkin_Descr      to sField
                                    Else if (iDeikths=2) Set Field_Changed_Value Of Ctypkin_DD Field Ctypkin.Ctypkin_Module     to sField
                                    Else if (iDeikths=3) Set Field_Changed_Value Of Ctypkin_DD Field Ctypkin.Max_Days_Sx_Par    to sField
                                    Else if (iDeikths=4) Set Field_Changed_Value Of Ctypkin_DD Field Ctypkin.Singular           to sField // Kod syneshs gefyras A
                                    Else if (iDeikths=5) Set Field_Changed_Value Of Ctypkin_DD Field Ctypkin.Sub                to sField // Kodikos SAP
                                Loop
                                Send Request_Save   to Ctypkin_DD
                                Send Delete_Data    to oPinakas
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Ctypkin_Ascii_End:
                        //////////////////////////////////////////////////////////////////////////
            
            
                        //////////////////////////////////////////////////////////////////////////
                        // Cflagkin  2 pedia sto ascii
                        // Ctypkin_Code/Cflagkin_Flag
                        //////////////////////////////////////////////////////////////////////////
                        Send Delete_Data    to oPinakas
                        Direct_Input Channel 9 'C:\#Cflagkin.txt'
                        While (Not(Seqeof))
                            Read    Channel 9 sField sField2
                            If (Trim(sField)='') Begin
                                Close_Output Channel 9
                                Goto Read_Cflagkin_Ascii_End
                            End
                            // Ftiaxe meso klashs thn eggrafh Äå ÉÑå ìèÄêïÑà ÜÉÜ
                            Clear Ctypkin
                            Move sField     to Cflagkin.Ctypkin_Code
                            Move sField2    to Cflagkin.Cflagkin_Flag
                            Find Eq Cflagkin By Index.1
                            If (Not(Found)) Begin
                                Send Clear to Ctypkin_DD
                                Send Clear to Cflagkin_DD
                                Move sField to Ctypkin.Ctypkin_Code
                                Send Find to Ctypkin_DD Eq 1
                                If (Not(Found)) Error 9001 'Ctypkin not found'
                                Get Field_Current_Value Of Ctypkin_DD Field Ctypkin.Ctypkin_Code to sCode
                                If (sCode<>sField) Error 9101 'Ctypkin Code is not the same'
                                Set Field_Changed_Value Of Cflagkin_DD Field Cflagkin.Cflagkin_Flag to sField2
                                Send Request_Save to Cflagkin_DD
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Cflagkin_Ascii_End:
                        //////////////////////////////////////////////////////////////////////////
            
            
                        //////////////////////////////////////////////////////////////////////////
                        // Wtypkin  4 pedia sto ascii
                        // Wtypkin_Code/Wtypkin_Descr/Wtypkin_Module/Max_Days_Sx_Par
                        //////////////////////////////////////////////////////////////////////////
                        Move 4              to iFields // posa pedia prepei na exei to ascii
                        Send Delete_Data    to oPinakas
            
                        Direct_Input Channel 9 'C:\#Wtypkin.txt'
                        While (Not(Seqeof))
                            // Diavazoume mono to 1o pedio sto ascii kai to vazoume sthn
                            // 1h thesi tou pinaka (item 0)
                                Read    Channel 9 sField
                                If (Trim(sField)='') Begin
                                    Close_Output Channel 9
                                    Goto Read_Wtypkin_Ascii_End
                                End
                                Set Array_Value Of (oPinakas(Self)) Item 0 to sField
                            // Diavazoume ta ypoloipa pedia tou ascii kai gemizoume
                            // ton pinaka apo thn thesi 2 (item 1)
                            // Gemizei to array apo 1-(iFields-1)
                            For iDeikths From 1 to (iFields-1)
                                Read    Channel 9 sField
                                Set Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                            Loop
            
                            // Ftiaxe meso klashs thn eggrafh AN DEN YPARXEI HDH
                            Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                            Clear Wtypkin
                            Move sField to Wtypkin.Wtypkin_Code
                            Find Eq Wtypkin By Index.1
                            If (Not(Found)) Begin
                                Send Clear to Wtypkin_DD
                                For iDeikths From 0 to (iFields-1)
                                    Get Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                                         If (iDeikths=0) Set Field_Changed_Value Of Wtypkin_DD Field Wtypkin.Wtypkin_Code       to sField
                                    Else if (iDeikths=1) Set Field_Changed_Value Of Wtypkin_DD Field Wtypkin.Wtypkin_Descr      to sField
                                    Else if (iDeikths=2) Set Field_Changed_Value Of Wtypkin_DD Field Wtypkin.Wtypkin_Module     to sField
                                    Else if (iDeikths=3) Set Field_Changed_Value Of Wtypkin_DD Field Wtypkin.Max_Days_Sx_Par    to sField
                                Loop
                                Send Request_Save   to Wtypkin_DD
                                Send Delete_Data    to oPinakas
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Wtypkin_Ascii_End:
                        //////////////////////////////////////////////////////////////////////////
            
                        //////////////////////////////////////////////////////////////////////////
                        // Wflagkin  2 pedia sto ascii
                        // Wtypkin_Code/Wflagkin_Flag
                        //////////////////////////////////////////////////////////////////////////
                        Send Delete_Data    to oPinakas
                        Direct_Input Channel 9 'C:\#Wflagkin.txt'
                        While (Not(Seqeof))
                            Read    Channel 9 sField sField2
                            If (Trim(sField)='') Begin
                                Close_Output Channel 9
                                Goto Read_Wflagkin_Ascii_End
                            End
                            // Ftiaxe meso klashs thn eggrafh Äå ÉÑå ìèÄêïÑà ÜÉÜ
                            Clear Wflagkin
                            Move SyscurXr.Company_Code  to Wflagkin.Company_Code
                            Move SyscurXr.Branch_Code   to Wflagkin.Branch_Code
                            Move SyscurXr.Year_Year     to Wflagkin.Year_Year
                            Move sField                 to Wflagkin.Wtypkin_Code
                            Move sField2                to Wflagkin.Wflagkin_Flag
                            Find Eq Wflagkin By Index.1
                            If (Not(Found)) Begin
                                Send Clear to Wtypkin_DD
                                Send Clear to Wflagkin_DD
                                Move sField to Wtypkin.Wtypkin_Code
                                Send Find to Wtypkin_DD Eq 1
                                If (Not(Found)) Error 9002 'Wtypkin not found'
                                Get Field_Current_Value Of Wtypkin_DD Field Wtypkin.Wtypkin_Code to sCode
                                If (sCode<>sField) Error 9102 'Wtypkin Code is not the same'
                                Set Field_Changed_Value Of Wflagkin_DD Field Wflagkin.Wflagkin_Flag to sField2
                                Send Request_Save   to Wflagkin_DD
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Wflagkin_Ascii_End:
                        //////////////////////////////////////////////////////////////////////////
            
            
                        //////////////////////////////////////////////////////////////////////////
                        //                      Ptyppar  16 pedia sto ascii
                        // Ctypkin_Code
                        // Wtypkin_Code
                        // Ptyppar_Code
                        // Ptyppar_Descr
                        // Ptyppar_Module
                        // Ptyppar_Abrev
                        // Ptyppar_Is_What(1=Agora,2=Polhsh)
                        // Ftiaxnei_Tpay
                        // Einai_Paroxh_Yp
                        // Ti_Typonei_Pms(keno=posot+axies, 1=Posothtes, 2=axies)
                        // Year_Recr(MYF  keno=Den Symmetexei, 1=Prosthetika, 2=Afairetika)
                        // Singular(Kodikos Syndeshs A)
                        // Sub(Einai Akyrotiko)
                        // Is_Xondr
                        // SAP(Kodikos SAP)
                        //////////////////////////////////////////////////////////////////////////
                        Move 16             to iFields // posa pedia prepei na exei to ascii
                        Send Delete_Data    to oPinakas
            
                        Direct_Input Channel 9 'C:\#Ptyppar.txt'
                        While (Not(Seqeof))
                            // Diavazoume mono to 1o pedio sto ascii kai to vazoume sthn
                            // 1h thesi tou pinaka (item 0)
                            Read    Channel 9 sField
                            If (Trim(sField)='') Begin
                                Close_Output Channel 9
                                Goto Read_Ptyppar_Ascii_End
                            End
                            Set Array_Value Of (oPinakas(Self)) Item 0 to sField
                            // Diavazoume ta ypoloipa pedia tou ascii kai gemizoume
                            // ton pinaka apo thn thesi 2 (item 1)
                            // Gemizei to array apo 1-(iFields-1)
                            For iDeikths From 1 to (iFields-1)
                                Read    Channel 9 sField
                                Set Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                            Loop
            
                            // Ftiaxe meso klashs thn eggrafh AN DEN YPARXEI HDH
                            Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                            Get Array_Value Of (oPinakas(Self)) Item 1 to sField2
                            Get Array_Value Of (oPinakas(Self)) Item 2 to sField3
                            Clear Ptyppar
                            Move SyscurXr.Company_Code  to Ptyppar.Company_Code
                            Move SyscurXr.Branch_Code   to Ptyppar.Branch_Code
                            Move sField                 to Ptyppar.Ctypkin_Code
                            Move sField2                to Ptyppar.Wtypkin_Code
                            Move sField3                to Ptyppar.Ptyppar_Code
                            Find Eq Ptyppar By Index.7
                            If (Not(Found)) Begin
                                Send Clear to Ctypkin_DD
                                Send Clear to Wtypkin_DD
                                Send Clear to Ptyppar_DD
                                Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                                Get Array_Value Of (oPinakas(Self)) Item 1 to sField2
            
                                Move sField     to Ctypkin.Ctypkin_Code
                                Send Find to Ctypkin_DD Eq 1
                                If (Not(Found)) Error 9003 'Ptyppar - Ctypkin not found'
                                Get Field_Current_Value Of Ctypkin_DD Field Ctypkin.Ctypkin_Code to sCode
                                If (sCode<>sField) Error 9103 'Ctypkin Code is not the same'
            
                                Move sField2    to Wtypkin.Wtypkin_Code
                                Send Find to Wtypkin_DD Eq 1
                                If (Not(Found)) Error 9004 'Ptyppar - Wtypkin not found'
                                Get Field_Current_Value Of Wtypkin_DD Field Wtypkin.Wtypkin_Code to sCode
                                If (sCode<>sField) Error 9104 'Wtypkin Code is not the same'
            
                                For iDeikths From 2 to (iFields-1)
                                    Get Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                                         If (iDeikths= 2) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Code      to sField
                                    Else if (iDeikths= 3) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Descr     to sField
                                    Else if (iDeikths= 4) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Module    to sField
                                    Else if (iDeikths= 5) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Abrev     to sField
                                    Else if (iDeikths= 6) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Is_What   to sField
                                    Else if (iDeikths= 7) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ftiaxnei_Tpay     to sField
                                    Else if (iDeikths= 8) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Einai_Paroxh_Yp   to sField
                                    Else if (iDeikths= 9) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Ti_Typonei_Pms    to sField
                                    Else if (iDeikths=10) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Year_Recr         to sField
                                    Else if (iDeikths=11) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Singular          to sField
                                    Else if (iDeikths=12) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Sub               to sField
                                    Else if (iDeikths=13) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Is_Xondr          to sField
                                    Else if (iDeikths=14) Set Field_Changed_Value Of Ptyppar_DD Field Ptyppar.Sap               to sField
                                Loop
                                Send Request_Save   to Ptyppar_DD
                                Send Delete_Data    to oPinakas
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Ptyppar_Ascii_End:
                        //////////////////////////////////////////////////////////////////////////
            
            
                        //////////////////////////////////////////////////////////////////////////
                        // Pseira  4 pedia sto ascii
                        // Ptyppar_Code/Pseira_Seira/Pseira_Form/Pseira_Autonum
                        //////////////////////////////////////////////////////////////////////////
                        Move 4              to iFields // posa pedia prepei na exei to ascii
                        Send Delete_Data    to oPinakas
            
                        Direct_Input Channel 9 'C:\#Pseira.txt'
                        While (Not(Seqeof))
                            // Diavazoume mono to 1o pedio sto ascii kai to vazoume sthn
                            // 1h thesi tou pinaka (item 0)
                                Read    Channel 9 sField
                                If (Trim(sField)='') Begin
                                    Close_Output Channel 9
                                    Goto Read_Pseira_Ascii_End
                                End
                                Set Array_Value Of (oPinakas(Self)) Item 0 to sField
                            // Diavazoume ta ypoloipa pedia tou ascii kai gemizoume
                            // ton pinaka apo thn thesi 2 (item 1)
                            // Gemizei to array apo 1-(iFields-1)
                            For iDeikths From 1 to (iFields-1)
                                Read    Channel 9 sField
                                Set Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                            Loop
            
                            // Ftiaxe meso klashs thn eggrafh AN DEN YPARXEI HDH
                            Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                            Get Array_Value Of (oPinakas(Self)) Item 1 to sField2
                            Clear Ptyppar
                            Move SyscurXr.Company_Code  to Pseira.Company_Code
                            Move SyscurXr.Branch_Code   to Pseira.Branch_Code
                            Move sField                 to Pseira.Ptyppar_Code
                            Move sField2                to Pseira.Pseira_Seira
                            Find Eq Pseira By Index.1
                            If (Not(Found)) Begin
                                Send Clear to Ptyppar_DD
                                Send Clear to Pseira_DD
                                Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                                Move SyscurXr.Company_Code  to Ptyppar.Company_Code
                                Move SyscurXr.Branch_Code   to Ptyppar.Branch_Code
                                Move sField                 to Ptyppar.Ptyppar_Code
                                Send Find to Ptyppar_DD Eq 1
                                If (Not(Found)) Error 9005 'Pseira - Ptyppar not found'
                                Get Field_Current_Value Of Ptyppar_DD Field Ptyppar.Ptyppar_Code to sCode
                                If (sCode<>sField) Error 9105 'Ptyppar Code is not the same'
            
                                For iDeikths From 1 to (iFields-1)
                                    Get Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                                         If (iDeikths=1) Set Field_Changed_Value Of Pseira_DD Field Pseira.Pseira_Seira     to sField
                                    Else if (iDeikths=2) Set Field_Changed_Value Of Pseira_DD Field Pseira.Pseira_Form      to sField
                                    Else if (iDeikths=3) Set Field_Changed_Value Of Pseira_DD Field Pseira.Pseira_Autonum   to sField
                                Loop
                                Send Request_Save   to Pseira_DD
                                Send Delete_Data    to oPinakas
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Pseira_Ascii_End:
            
            
            
                        //////////////////////////////////////////////////////////////////////////
                        // Btypkin  9 pedia sto ascii
                        // Ctypkin_Code/Btypkin_Code/Btypkin_Descr/Btypkin_Abr/Vtypkin_Code
                        // Btypkin_Anti1/Btypkin_Anti2/Btypkin_Anti_XP/Btypkin_Sign
                        //////////////////////////////////////////////////////////////////////////
                        Move 6              to iFields // posa pedia prepei na exei to ascii
                        Send Delete_Data    to oPinakas
            
                        Direct_Input Channel 9 'C:\#Btypkin.txt'
                        While (Not(Seqeof))
                            // Diavazoume mono to 1o pedio sto ascii kai to vazoume sthn
                            // 1h thesi tou pinaka (item 0)
                                Read    Channel 9 sField
                                If (Trim(sField)='') Begin
                                    Close_Output Channel 9
                                    Goto Read_Btypkin_Ascii_End
                                End
                                Set Array_Value Of (oPinakas(Self)) Item 0 to sField
                            // Diavazoume ta ypoloipa pedia tou ascii kai gemizoume
                            // ton pinaka apo thn thesi 2 (item 1)
                            // Gemizei to array apo 1-(iFields-1)
                            For iDeikths From 1 to (iFields-1)
                                Read    Channel 9 sField
                                Set Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                            Loop
            
                            // Ftiaxe meso klashs thn eggrafh Äå ÉÑå ìèÄêïÑà ÜÉÜ
                            Get Array_Value Of (oPinakas(Self)) Item 0 to sField
                            Get Array_Value Of (oPinakas(Self)) Item 1 to sField2
                            Clear Btypkin
                            Move sField2 to Btypkin.Btypkin_Code
                            Find Eq Btypkin By Index.1
                            If (Not(Found)) Begin
                                Send Clear to Btypkin_DD
                                Send Clear to Btypkin_DD
                                For iDeikths From 0 to (iFields-1)
                                    Get Array_Value Of (oPinakas(Self)) Item iDeikths to sField
                                         If (iDeikths=0) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Btypkin_Code       to sField
                                    Else if (iDeikths=1) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Btypkin_Descr      to sField
                                    Else if (iDeikths=2) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Btypkin_Module     to sField
                                    Else if (iDeikths=3) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Max_Days_Sx_Par    to sField
                                    Else if (iDeikths=4) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Singular           to sField // Kod syneshs gefyras A
                                    Else if (iDeikths=5) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Sub                to sField // Kodikos SAP
                                    Else if (iDeikths=5) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Sub                to sField // Kodikos SAP
                                    Else if (iDeikths=5) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Sub                to sField // Kodikos SAP
                                    Else if (iDeikths=5) Set Field_Changed_Value Of Btypkin_DD Field Btypkin.Sub                to sField // Kodikos SAP
                                Loop
                                Send Request_Save   to Btypkin_DD
                                Send Delete_Data    to oPinakas
                            End
                            Readln  Channel 9
                        loop
                        Close_Output Channel 9
                        Read_Btypkin_Ascii_End:
                        //////////////////////////////////////////////////////////////////////////
            
            
            
            
            
                        Find Gt Branch By Index.1
                    Loop
            
                END_TRANSACTION
                Unlock
                Move iID to Error_Object_ID
            
                Send Info_Box 'Ü õ†òõ†°ò©Âò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                            
                            
        //AB-StoreEnd

    CD_End_Object    // MkParast


    //AB-StoreStart
                
    //AB-StoreEnd

//AB/     End_Object    // prj
