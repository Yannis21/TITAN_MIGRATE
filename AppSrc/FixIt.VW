//AB/ Project FixIt
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "FixIt"
//AB/         Set ProjectFileName to "FixIt.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   FixIt is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     FormSub1 is a FormSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cmoves_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object FixIt
Register_Object FormSub1
Register_Object Payresp_DD
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Open Barticl
    Open Particle
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Button.Sub
    Use Form.Sub

    Use CTYPKIN.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_FixIt FOR ;
    ;
    Object FixIt is a dbViewSubS

        //AB-StoreTopStart
            
        //AB-StoreTopEnd

        Set Label to "Ñ§û£ú®‡©û Cmoves Branch"
        Set Size to 89 425
        Set Location to 2 7

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Object Payresp_DD is a Payresp_DataDictionary
        End_Object    // Payresp_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
            Set DDO_Server to (Areas_DD(self))
            Set DDO_Server to (Payresp_DD(self))
        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))

            //AB-StoreStart
                    
            Set piNotMoveSyscurXr   to 1
            
            Function Validate_Save  Returns Integer
            End_Function   // Validate_Save
            
            //AB-StoreEnd

        End_Object    // Cmoves_DD

        Set Main_DD to (Cmoves_DD(self))
        Set Server to (Cmoves_DD(self))

        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 39 120

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel sPel
                Get Value Of FormSub1 item 0 to sPel
                Move (Trim(sPel)) to sPel
                Get Label to sLabel
                Clear Cmoves
                Find Gt Cmoves.Recnum
                While (Found)
                    Set Label to Cmoves.Cmoves_Recr
                    If ((sPel<>'') And (Cmoves.Client_ID<>sPel)) Begin
                    End
                    Else Begin
                        If (Cmoves.Barticl_Recr<>'') Begin
                            Clear Barticl
                            Move Cmoves.Barticl_Recr to Barticl.Barticl_Recr
                            Find Eq Barticl By Index.2
                            If (Found) Begin
                                If (Cmoves.Branch_Code<>Barticl.Branch_Code) Begin
                                    Reread Cmoves
                                    Move Barticl.Branch_Code to Cmoves.Branch_Code
                                    Saverecord Cmoves
                                    Unlock
                                End
                            End
                        End
                        Else If (Cmoves.Partl_Recr<>'') Begin
                            Clear Particle
                            Move Cmoves.Partl_Recr to Particle.Partl_Recr
                            Find Eq Particle By Index.2
                            If (Found) Begin
                                If (Cmoves.Branch_Code<>Particle.Branch_Code) Begin
                                    Reread Cmoves
                                    Move Particle.Branch_Code to Cmoves.Branch_Code
                                    Saverecord Cmoves
                                    Unlock
                                End
                            End
                        End
                    End // If ((sPel<>'') And (Cmoves.Client_ID<>sPel)) Begin
            
                    Find Gt Cmoves.Recnum
                Loop
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object FormSub1 is a FormSub
            Set Size to 13 85
            Set Location to 10 168
            Set Label_Col_Offset to 2
        End_Object    // FormSub1


        //AB-StoreStart
                                            
        //AB-StoreEnd

    CD_End_Object    // FixIt


    //AB-StoreStart
        
    //AB-StoreEnd

//AB/     End_Object    // prj
