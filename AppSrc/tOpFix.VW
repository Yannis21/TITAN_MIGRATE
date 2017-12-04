//AB/ Project tOpFix
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "tOpFix"
//AB/         Set ProjectFileName to "tOpFix.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   tOpFix is a dbViewSubS
//     Cmoves_DDR is a Cmoves_DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     btnAutoCopen is a ButtonSub
//     frmText is a ButtonSub
//     FormSub1 is a FormSub

// Register all objects
Register_Object Areas_DD
Register_Object btnAutoCopen
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cmoves_DDR
Register_Object Country_DD
Register_Object FormSub1
Register_Object frmText
Register_Object Payresp_DD
Register_Object Towns_DD
Register_Object tOpFix


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Open Cmoves
    Open CmovesA2
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Button.Sub
    Use Form.Sub

    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_tOpFix FOR ;
    ;
    Object tOpFix is a dbViewSubS

        //AB-StoreTopStart
        Property Integer    piWhat      Public  0
        Property Integer    piXr_or_Pi  Public  0
        Property String     psModule    Public ''
        Property String     psClientID  Public ''
        Property date       pdApo       Public ''
        Property date       pdEos       Public ''
        
        Object Cmoves_DDR is a Cmoves_DataDictionary
        End_Object
        
        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û Ñß‡§¨£Âò™ (É†ß¢‚™ ö®ò££‚™ ©ú èú¢·´û ©´¶ Aging)"
        Set Size to 122 344
        Set Location to 7 11
        Set Color to 42496

        //AB-DDOStart

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

        Set Main_DD to (Clients_DD(self))
        Set Server to (Clients_DD(self))

        //AB-DDOEnd

        Object btnAutoCopen is a ButtonSub
            Set Label to "Ñßú•ú®öò©Âò"
            Set Size to 15 77
            Set Location to 60 131
            Set Form_FontWeight Item 0 to 600

            //AB-StoreStart
            
            Set TooltipValue to "Ñ§û£‚®‡©û Ñß‡§¨£Âò™ èú¢·´û ö†ò É†ß¢¶úöö®ò≠‚™ ´¶¨ Aging"
            
            Procedure OnClick
                String  sStr sModule sLabel sCmovesRecr sPel sStringOK sEpon
                Integer iYes iError_Object_ID iMet iRecnum iNum
                Date    dHmnia
            
                Move '' to sEpon
                Move  0 to iNum
                Get Value Of Formsub1 Item 0    to sPel
                Move (Trim(sPel))               to sPel
            
                If (sPel<>'') Begin
                    Clear Clients
                    Move sPel to Clients.Client_ID
                    Find Eq Clients By Index.6
                    If (Not(Found)) Begin
                        Send Info_Box 'Ä§Áßò®°´¶™ èú¢·´û™ (Ñ¢‚ö•´ú ´ò Ñ¢¢û§†°·)\nÜ õ†òõ†°ò©Âò õ†ò°Êß´ú´ò†' 'è¢û®¶≠¶®Âò'
                        Procedure_Return
                    End
                    Move (Trim(Clients.Client_Name)) to sEpon
                End
            
                Move ''                         to sStr
                Set Label Of frmText            to ''
                Get psModule                    to sModule
                If (Trim(sModule)='') Move '01' to sModule
            
            
                Append sStr 'åò ß®¶Æ‡®„©‡ ©´û§ ú§û£‚®‡©û úöö®ò≠È§ ©¨©Æ‚´†©û™'
            
                Get YesNo_Box sStr "Ñß†ôúôòÂ‡©û" 0 to iYes
                If (iYes=MBR_YES) Begin
                    Set Enabled_State to False
                    If (sPel='') Begin
                        Clear Cmoves
                        Find Gt Cmoves.Recnum
                        While (Found)
                            Set Label Of frmText to (Trim(Cmoves.Client_ID))
                            Clear Clients
                            Move Cmoves.Client_ID to Clients.Client_ID
                            Find Eq Clients By Index.6
                            If (Found) Begin
                                If (Trim(Cmoves.Client_Name)<>Trim(Clients.Client_Name)) Begin
                                    Reread Cmoves
                                    Move Clients.Client_Name to Cmoves.Client_Name
                                    Saverecord Cmoves
                                    Unlock
                                End
                            End
                            Find Gt Cmoves.Recnum
                        Loop
                    End
                    Else Begin
                        Clear Cmoves
                        Move sPel to Cmoves.Client_ID
                        Find Gt Cmoves By Index.4
                        While ((Found) And (Cmoves.Client_ID=sPel))
                            Add 1 to iNum
                            Set Label Of frmText to (Trim(sPel)+'     '+String(iNum))
                            If (Trim(Cmoves.Client_Name)<>Trim(sEpon)) Begin
                                Reread Cmoves
                                Move (Trim(sEpon)) to Cmoves.Client_Name
                                Saverecord Cmoves
                                Unlock
                            End
                            Find Gt Cmoves By Index.4
                        Loop
                    End
                    Set Enabled_State to True
                    Set Label Of frmText to ''
                    If (Not(Err)) Send Info_Box 'Ü ú§û£‚®‡©û ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                End
            End_Procedure // OnClick
            

            //AB-StoreEnd

        End_Object    // btnAutoCopen

        Object frmText is a ButtonSub
            Set Size to 14 238
            Set Location to 84 51
            Set Border_Style to Border_StaticEdge
            Set Focus_Mode to NonFocusable

            //AB-StoreStart
            Procedure OnClick
            
            End_Procedure // OnClick
            //AB-StoreEnd

        End_Object    // frmText

        Object FormSub1 is a FormSub
            Set Size to 13 85
            Set Location to 25 127
            Set Label_Col_Offset to 2
        End_Object    // FormSub1


        //AB-StoreStart
            
        Procedure Activate_View Returns Integer
            Integer rVal      
            String sModule
            Forward Get Msg_Activate_View to rVal
            Get psMenuModule Of Main_Menu   to sModule
            Set psModule                    to sModule
            Procedure_Return rVal
        End_Procedure
        
        
        //AB-StoreEnd

    CD_End_Object    // tOpFix


    //AB-StoreStart
    
    //AB-StoreEnd

//AB/     End_Object    // prj
