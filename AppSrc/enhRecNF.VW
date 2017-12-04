//AB/ Project enhRecNF
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "enhRecNF"
//AB/         Set ProjectFileName to "enhRecNF.VW"

// Project Object Structure
//   enhRecNF is a dbViewSubS
//     Mhxanik_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     Mhxanik_Mhx_Id is a dbFormSub
//     Mhxanik_Mhx_Name is a dbFormSub
//     Salesmen_Sls_Id is a dbFormSub
//     Salesmen_Sls_Name is a dbFormSub
//     Constrct_Cnt_Id is a dbFormSub
//     Constrct_Cnt_Name is a dbFormSub
//     Payresp_Presp_Id is a dbFormSub
//     Payresp_Presp_Name is a dbFormSub
//     Areas_Area_Id is a dbFormSub
//     Areas_Area_Descr is a dbFormSub
//     Cities_City_Id is a dbFormSub
//     Cities_City_Descr is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     Towns_Town_Id is a dbFormSub
//     Towns_Town_Descr is a dbFormSub
//     Country_Country_Id is a dbFormSub
//     Country_Country_Descr is a dbFormSub

// Register all objects
Register_Object Areas_Area_Descr
Register_Object Areas_Area_Id
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object Cities_City_Descr
Register_Object Cities_City_Id
Register_Object Cities_DD
Register_Object Constrct_Cnt_Id
Register_Object Constrct_Cnt_Name
Register_Object Constrct_DD
Register_Object Country_Country_Descr
Register_Object Country_Country_Id
Register_Object Country_DD
Register_Object enhRecNF
Register_Object Mhxanik_DD
Register_Object Mhxanik_Mhx_Id
Register_Object Mhxanik_Mhx_Name
Register_Object Payresp_DD
Register_Object Payresp_Presp_Id
Register_Object Payresp_Presp_Name
Register_Object Salesmen_DD
Register_Object Salesmen_Sls_Id
Register_Object Salesmen_Sls_Name
Register_Object TextBoxSub1
Register_Object Towns_DD
Register_Object Towns_Town_Descr
Register_Object Towns_Town_Id


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Use For_All
    Open Syscurxr
    Open Wcmoves
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Button.Sub
    Use dbForm.Sub
    Use Txtbox.Sub

    Use MHXANIK.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use SALESMEN.DD
    Use CONSTRCT.DD
    Use PAYRESP.DD
    Use AREAS.DD
    Use CITIES.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_enhRecNF FOR enhRecNF

    Object enhRecNF is a dbViewSubS

        //AB-StoreTopStart
                                                                                                                                                                                                    
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û ßú®†≠ú®ú†ò°È§ ò®ÆúÂ‡§"
        Set Size to 225 425
        Set Location to 7 10

        //AB-DDOStart

        Object Mhxanik_DD is a Mhxanik_DataDictionary

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Mhxanik_DD

        Object Country_DD is a Country_DataDictionary

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Towns_DD

        Object Salesmen_DD is a Salesmen_DataDictionary

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Salesmen_DD

        Object Constrct_DD is a Constrct_DataDictionary

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Constrct_DD

        Object Payresp_DD is a Payresp_DataDictionary

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Payresp_DD

        Object Areas_DD is a Areas_DataDictionary

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Areas_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))

            //AB-StoreStart
                                    
            Set Read_Only_State to True
            
            Procedure Request_Save
            End_Procedure
            
            Procedure Request_Delete
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Cities_DD

        Set Main_DD to (Constrct_DD(self))
        Set Server to (Constrct_DD(self))

        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 303
            Set Location to 188 59
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel sStr sNomisma
                String  sConstr sMhx sPresp sSales
                String  sConstrRecr sMhxRecr sPrespRecr sSalesRecr
                Integer iCount iErr iCity iArea iCount1 iCount2 iCount3 iCount8 iCount9
                Integer iCount4 iCount5 iCount6 iCount7 iFS iNum iTown iCountry
                Number  nAxia nPosothta nUnitPrice nIsotimia
                Date    dHmnia
            
                File_Size Clients to iFS
            
                Get Label to sLabel
            
                Get Field_Current_Value Of Mhxanik_DD   Field Mhxanik.Mhx_ID        to sMhx
                Get Field_Current_Value Of ConstrCT_DD  Field ConstrCT.Cnt_ID       to sConstr
                Get Field_Current_Value Of Payresp_DD   Field Payresp.Presp_ID      to sPresp
                Get Field_Current_Value Of Salesmen_DD  Field Salesmen.Sls_ID       to sSales
                Get Field_Current_Value Of Areas_DD     Field Areas.Area_ID         to iArea
                Get Field_Current_Value Of Cities_DD    Field Cities.City_ID        to iCity
                Get Field_Current_Value Of Towns_DD     Field Towns.Town_ID         to iTown
                Get Field_Current_Value Of Country_DD   Field Country.Country_ID    to iCountry
            
                Get Field_Current_Value Of Mhxanik_DD   Field Mhxanik.Mhx_Recr      to sMhxRecr
                Get Field_Current_Value Of ConstrCT_DD  Field ConstrCT.Cnt_Recr     to sConstrRecr
                Get Field_Current_Value Of Payresp_DD   Field Payresp.Presp_Recr    to sPrespRecr
                Get Field_Current_Value Of Salesmen_DD  Field Salesmen.Sls_Recr     to sSalesRecr
            
                If ((sMhx='') Or (sConstr='') Or (sPresp='') Or (sSales='')) Begin
                    Send Stop_Box 'Éú§ úÂ§ò† ©¨£ß¢û®‡£‚§ò Ê¢ò ´ò ßúõÂò' 'ë≠·¢£ò 1001'
                    Procedure_Return
                End
            
            
                For_All Clients by Index.6
                    Do
                        // 1. Elegxos an ola ta pedia einai symplhromena
                        //    Ta cities kai areas einai numeric kai den ta elegxoume
                        //    dedomenou oti yparxei eggrafh me 0 kodiko
                        If (Clients.Presp_ID='') Begin
                            Add 1 to iCount
                            Reread Clients
                            Move sPresp     to Clients.Presp_ID
                            Saverecord Clients
                        End
            
                        // 2. Elegxos an oi mpampades einai yparktoi
                        Clear Payresp
                        Move Clients.Presp_ID to Payresp.Presp_ID
                        Find Eq Payresp By Index.7
                        If (Not(Found)) Begin
                            Add 1 to iCount1
                            Reread Clients
                            Move sPresp to Clients.Presp_ID
                            Saverecord Clients
                            Unlock
                        End
            
                        Clear Cities
                        Move Clients.Client_City_ID to Cities.City_ID
                        Find Eq Cities By Index.1
                        If (Not(Found)) Begin
                            Add 1 to iCount2
                            Reread Clients
                            Move iCity  to Clients.Client_City_ID
                            Saverecord Clients
                            Unlock
                            Clear Cities
                            Move iCity to Cities.City_ID
                            Find Eq Cities By Index.1
                        End
                        Relate Cities
                        If ((Towns.recnum=0) Or (Country.Recnum=0)) Begin
                            Add 1 to iCount8
                            Reread Clients
                            Move iCity to Clients.Client_City_ID
                            Saverecord Clients
                            Unlock
                        End
            
                        Clear Areas
                        Move Clients.Client_Area to Areas.Area_ID
                        Find Eq Areas By Index.1
                        If (Not(Found)) Begin
                            Add 1 to iCount3
                            Reread Clients
                            Move iCity  to Clients.Client_City_ID
                            Saverecord Clients
                            Unlock
                        End
            
                        For_All CN by Index.4
                            Constrain Cn.Client_ID EQ Clients.Client_ID
                            Do
                                Set Label to (Trim(Clients.Client_ID)+' / '+Trim(Cn.Cn_Code))
                                // 1. Elegxos an ola ta pedia einai symplhromena
                                If ((CN.Cn_Cnt_Recr='') Or (CN.Cn_Sls_Recr='') Or (Cn.Mhxanik_ID='')) Begin
                                    Add 1 to iCount4
                                    Reread Cn
                                    If (CN.Cn_Cnt_Recr='') Begin
                                        Move sConstrRecr    to CN.Cn_Cnt_Recr
                                        Move sConstr        to CN.Cn_Cnt_ID
                                    End
                                    If (CN.Cn_Sls_Recr='') Begin
                                        Move sSalesRecr     to CN.Cn_Sls_Recr
                                        Move sSales         to CN.Cn_Sls_ID
                                    End
                                    If (Cn.Mhxanik_ID='') Move sMhx to Cn.Mhxanik_ID
                                    Saverecord CN
                                    Unlock
                                End
            
                                // 2. Elegxos an oi mpampades einai yparktoi
                                Clear ConstrCT
                                Move CN.Cn_Cnt_Recr to Constrct.Cnt_Recr
                                Find Eq Constrct By Index.2
                                If (Not(Found)) Begin
                                    Add 1 to iCount5
                                    Reread Cn
                                    Move sConstrRecr    to CN.Cn_Cnt_Recr
                                    Move sConstr        to CN.Cn_Cnt_ID
                                    Saverecord Cn
                                End
            
                                Clear Salesmen
                                Move CN.Cn_Sls_Recr to Salesmen.Sls_Recr
                                Find Eq Salesmen By Index.2
                                If (Not(Found)) Begin
                                    Add 1 to iCount6
                                    Reread Cn
                                    Move sSalesRecr    to CN.Cn_Sls_Recr
                                    Move sSales        to CN.Cn_Sls_ID
                                    Saverecord Cn
                                End
            
                                Clear Mhxanik
                                Move CN.Mhxanik_ID to Mhxanik.Mhx_ID
                                Find Eq Mhxanik By Index.4
                                If (Not(Found)) Begin
                                    Add 1 to iCount7
                                    Reread Cn
                                    Move sMhx        to CN.Mhxanik_ID
                                    Saverecord Cn
                                End
            
            
                        End_For_All
            
                End_For_All
            
                Clear Cities
                Find Gt Cities.Recnum
                While (Found)
                    Set Label to (String(Cities.Recnum))
                    Relate Cities
                    If ((Towns.recnum=0) Or (Country.Recnum=0)) Begin
                        Add 1 to iCount9
                    End
                    Find Gt Cities.Recnum
                Loop
            
                If (iCount)     Showln 'Vrethikan ' iCount  ' Foreis xoris Ypeythino'
                If (iCount1)    Showln 'Vrethikan ' iCount1 ' Foreis me anyparkto Ypeythino'
                If (iCount3)    Showln 'Vrethikan ' iCount3 ' Foreis xoris perioxh'
                If (iCount2)    Showln 'Vrethikan ' iCount2 ' Foreis xoris polh'
                If (iCount8)    Showln 'Vrethikan ' iCount8 ' Foreis me anyparkth polh/xora'
            
                If (iCount4)    Showln 'Vrethikan ' iCount4 ' Erga xoris Mhxan/Ergol/Polhth/'
                If (iCount5)    Showln 'Vrethikan ' iCount5 ' Erga me anyparkto Ergolabo'
                If (iCount6)    Showln 'Vrethikan ' iCount6 ' Erga me anyparkto Polhth'
                If (iCount7)    Showln 'Vrethikan ' iCount7 ' Erga me anyparkto Mhxaniko'
            
                If (iCount9)    Showln 'Vrethikan ' iCount9 ' Poleis me anyparkto nomo h xora'
            
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object Mhxanik_Mhx_Id is a dbFormSub
            Entry_Item Mhxanik.Mhx_id
            Set Server to (Mhxanik_DD(self))
            Set Label to "ãûÆò§†°Ê™"
            Set Size to 13 85
            Set Location to 33 87
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Mhxanik_Mhx_Id

        Object Mhxanik_Mhx_Name is a dbFormSub
            Entry_Item Mhxanik.Mhx_name
            Set Server to (Mhxanik_DD(self))
            Set Size to 13 200
            Set Location to 33 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Mhxanik_Mhx_Name

        Object Salesmen_Sls_Id is a dbFormSub
            Entry_Item Salesmen.Sls_id
            Set Server to (Salesmen_DD(self))
            Set Label to "è‡¢û´„™"
            Set Size to 13 85
            Set Location to 47 87
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Salesmen_Sls_Id

        Object Salesmen_Sls_Name is a dbFormSub
            Entry_Item Salesmen.Sls_name
            Set Server to (Salesmen_DD(self))
            Set Size to 13 200
            Set Location to 48 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Salesmen_Sls_Name

        Object Constrct_Cnt_Id is a dbFormSub
            Entry_Item Constrct.Cnt_id
            Set Label to "Ñ®ö¶¢·ô¶™"
            Set Size to 13 85
            Set Location to 62 87
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Constrct_Cnt_Id

        Object Constrct_Cnt_Name is a dbFormSub
            Entry_Item Constrct.Cnt_name
            Set Size to 13 200
            Set Location to 63 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Constrct_Cnt_Name

        Object Payresp_Presp_Id is a dbFormSub
            Entry_Item Payresp.Presp_id
            Set Server to (Payresp_DD(self))
            Set Label to "ìß. è¢û®‡£È§"
            Set Size to 13 85
            Set Location to 76 87
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Payresp_Presp_Id

        Object Payresp_Presp_Name is a dbFormSub
            Entry_Item Payresp.Presp_name
            Set Server to (Payresp_DD(self))
            Set Size to 13 200
            Set Location to 77 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Payresp_Presp_Name

        Object Areas_Area_Id is a dbFormSub
            Entry_Item Areas.Area_id
            Set Server to (Areas_DD(self))
            Set Label to "èú®†¶Æ„"
            Set Size to 13 85
            Set Location to 98 87
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Areas_Area_Id

        Object Areas_Area_Descr is a dbFormSub
            Entry_Item Areas.Area_descr
            Set Server to (Areas_DD(self))
            Set Size to 13 200
            Set Location to 99 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Areas_Area_Descr

        Object Cities_City_Id is a dbFormSub
            Entry_Item Cities.City_id
            Set Server to (Cities_DD(self))
            Set Label to "èÊ¢û"
            Set Size to 13 85
            Set Location to 119 87
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Cities_City_Id

        Object Cities_City_Descr is a dbFormSub
            Entry_Item Cities.City_descr
            Set Server to (Cities_DD(self))
            Set Size to 13 200
            Set Location to 119 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Cities_City_Descr

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ñß†¢‚•´ú £†ò úöö®ò≠„ ö†ò °·üú úß†¢¶ö„"
            Set Location to 8 130
            Set Size to 10 137
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object Towns_Town_Id is a dbFormSub
            Entry_Item Towns.Town_id
            Set Server to (Towns_DD(self))
            Set Label to "å¶£Ê™"
            Set Size to 13 85
            Set Location to 135 87
            Set Color to clBtnFace
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Towns_Town_Id

        Object Towns_Town_Descr is a dbFormSub
            Entry_Item Towns.Town_descr
            Set Server to (Towns_DD(self))
            Set Size to 13 200
            Set Location to 135 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Towns_Town_Descr

        Object Country_Country_Id is a dbFormSub
            Entry_Item Country.Country_id
            Set Server to (Country_DD(self))
            Set Label to "ïÈ®ò"
            Set Size to 13 85
            Set Location to 150 87
            Set Color to clBtnFace
            Set Label_Col_Offset to 4
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Country_Country_Id

        Object Country_Country_Descr is a dbFormSub
            Entry_Item Country.Country_descr
            Set Server to (Country_DD(self))
            Set Size to 13 200
            Set Location to 150 183
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Country_Country_Descr


        //AB-StoreStart
                                                                                                                                                                                                    
        //AB-StoreEnd

    End_Object    // enhRecNF


    //AB-StoreStart
            
    //AB-StoreEnd

//AB/     End_Object    // prj
