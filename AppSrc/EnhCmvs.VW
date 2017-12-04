//AB/ Project EnhCmvs
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhCmvs"
//AB/         Set ProjectFileName to "EnhCmvs.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhCmvs is a dbViewSubS
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
Register_Object EnhCmvs
Register_Object FormSub1
Register_Object Payresp_DD
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    Use sl100.sl
    
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

    DEFERRED_VIEW Activate_EnhCmvs FOR ;
    ;
    Object EnhCmvs is a dbViewSubS

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Set Label to "„¤ž£œ¨à©ž ˜¨®œ ¦¬ Cmoves š ˜ Copen"
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
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to '„¤ž£œ¨à©ž'
            
            Procedure OnClick
                String  sLabel sPel  sStr sRecr
                Date    dHmnia
                Get Value Of FormSub1 item 0 to sPel
                Move (Trim(sPel)) to sPel
                Get Label to sLabel
            
                If (sPel<>'') Begin
                    Clear Cmoves
                    Lock
                    Move sPel to Cmoves.Client_ID
                    Find Gt Cmoves By Index.4   // Client_id + Cmoves_hmnia + Cmoves_Recr
                    While ((Found) And (sPel=Cmoves.Client_ID))
                        Move '' to sStr
                        Append sStr sPel '-' (String(Cmoves.Cmoves_Hmnia)) '-' (String(Cmoves.Recnum))
                        Set Label to (Trim(sStr))
                        Move Cmoves.Cmoves_Hmnia to dHmnia
                        Move Cmoves.Cmoves_Recr  to sRecr
                        Clear Ctypkin
                        Move Cmoves.Ctypkin_Recr to Ctypkin.Ctypkin_Recr
                        Find Eq Ctypkin By Index.2
            
                        If (Ctypkin.Open_Item='1') Begin
                            //Reread Cmoves
                            If (Cmoves.Axia_Pros_Sysx=0) Move (Abs(Cmoves.Cmoves_Axia));
                                                                            to Cmoves.Axia_Pros_Sysx
                            Move (Cmoves.Axia_Pros_Sysx-Cmoves.Axia_Sysxet) to Cmoves.Axia_Ypol_Sysx
                            Move (Cmoves.Axia_Ypol_Sysx<>0)                 to Cmoves.Flag_Ypol
                            // js 23/01/2002
                            // Enhmerosh Pediou Flag_Open to opoio antiprosopeyei
                            // an einai xreosh=1, pistosh=2, arnhtikh xreosh=2 arnhtikh Pistosh=1
                            // gia na emfanizei ta antistrofa sto copen
                            If ((Cmoves.Cmoves_X0<>0) And ((Cmoves.Cmoves_P0=0))) Begin
                                Move 1                          to Cmoves.Flag_Copen
                                If (Cmoves.Cmoves_X0<0) Move 2  to Cmoves.Flag_Copen
                            End
                            Else If ((Cmoves.Cmoves_P0<>0) And ((Cmoves.Cmoves_X0=0))) Begin
                                Move 2                          to Cmoves.Flag_Copen
                                If (Cmoves.Cmoves_P0<0) Move 1  to Cmoves.Flag_Copen
                            End
                            Else Begin
                                Move 0 to Cmoves.Flag_Copen
                                Move 0 to Cmoves.Axia_Pros_Sysx
                                Move 0 to Cmoves.Axia_Sysxet
                                Move 0 to Cmoves.Axia_Ypol_Sysx
                            End
                            Saverecord Cmoves
                        End
                        Else Begin
                            Move 0 to Cmoves.Flag_Copen
                            Move 0 to Cmoves.Axia_Pros_Sysx
                            Move 0 to Cmoves.Axia_Sysxet
                            Move 0 to Cmoves.Axia_Ypol_Sysx
                            Saverecord Cmoves
                        End
            
            
                        Find Gt Cmoves By Index.4
                    Loop
                    Unlock
                End
                Else Begin
                    Clear Cmoves
                    Lock
                    Find Gt Cmoves.Recnum
                    While (Found)
                        Move '' to sStr
                        Append sStr sPel '-' (String(Cmoves.Cmoves_Hmnia)) '-' (String(Cmoves.Recnum))
                        Set Label to (Trim(sStr))
                        Clear Ctypkin
                        Move Cmoves.Ctypkin_Recr to Ctypkin.Ctypkin_Recr
                        Find Eq Ctypkin By Index.2
                        //Relate Cmoves
            
                        If (Ctypkin.Open_Item='1') Begin
                            //Reread Cmoves
                            If (Cmoves.Axia_Pros_Sysx=0) Move (Abs(Cmoves.Cmoves_Axia));
                                                                            to Cmoves.Axia_Pros_Sysx
                            Move (Cmoves.Axia_Pros_Sysx-Cmoves.Axia_Sysxet) to Cmoves.Axia_Ypol_Sysx
                            Move (Cmoves.Axia_Ypol_Sysx<>0)                 to Cmoves.Flag_Ypol
                            // js 23/01/2002
                            // Enhmerosh Pediou Flag_Open to opoio antiprosopeyei
                            // an einai xreosh=1, pistosh=2, arnhtikh xreosh=2 arnhtikh Pistosh=1
                            // gia na emfanizei ta antistrofa sto copen
                            If ((Cmoves.Cmoves_X0<>0) And ((Cmoves.Cmoves_P0=0))) Begin
                                Move 1                          to Cmoves.Flag_Copen
                                If (Cmoves.Cmoves_X0<0) Move 2  to Cmoves.Flag_Copen
                            End
                            Else If ((Cmoves.Cmoves_P0<>0) And ((Cmoves.Cmoves_X0=0))) Begin
                                Move 2                          to Cmoves.Flag_Copen
                                If (Cmoves.Cmoves_P0<0) Move 1  to Cmoves.Flag_Copen
                            End
                            Else Begin
                                Move 0 to Cmoves.Flag_Copen
                                Move 0 to Cmoves.Axia_Pros_Sysx
                                Move 0 to Cmoves.Axia_Sysxet
                                Move 0 to Cmoves.Axia_Ypol_Sysx
                            End
                            Saverecord Cmoves
                        End
                        Else Begin
                            Move 0 to Cmoves.Flag_Copen
                            Move 0 to Cmoves.Axia_Pros_Sysx
                            Move 0 to Cmoves.Axia_Sysxet
                            Move 0 to Cmoves.Axia_Ypol_Sysx
                            Saverecord Cmoves
                        End
            
                        Find Gt Cmoves.Recnum
                    Loop
                    Unlock
                End
            
                Send Info_Box '† œ¤ž£â¨à©ž «œ¢œåà©œ' '¢ž¨¦­¦¨å˜'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object FormSub1 is a FormSub
            Set Size to 13 85
            Set Location to 10 168
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                    
            Set Prompt_Object to (sl100(Self))
            
            //AB-StoreEnd

        End_Object    // FormSub1


        //AB-StoreStart
                                                
        //AB-StoreEnd

    CD_End_Object    // EnhCmvs


    //AB-StoreStart
            
    //AB-StoreEnd

//AB/     End_Object    // prj
