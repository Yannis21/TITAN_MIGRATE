//AB/ Project Migrate1
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Migrate1"
//AB/     Set ProjectFileName to "Migrate1.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Migrate1 is a dbViewSubs
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     chkClients is a CheckBoxSub
//     chkCN is a CheckBoxSub
//     TeleytaiaKinhshApo is a cSyDateForm
//     TeleytaiaKinhshEos is a cSyDateForm
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     frmSynolikh is a FormSub
//     frmAnoixtos is a FormSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub6 is a TextBoxSub
//     EnarxhErgouApo is a cSyDateForm
//     TextBoxSub7 is a TextBoxSub
//     EnarxhErgouEos is a cSyDateForm
//     TextBoxSub8 is a TextBoxSub
//     EnarxhSkyrApo is a cSyDateForm
//     TextBoxSub9 is a TextBoxSub
//     EnarxhSkyrEos is a cSyDateForm
//     ButtonSub2 is a ButtonSub
//     ButtonSub3 is a ButtonSub
//     ButtonSub4 is a ButtonSub
//     chkPayresp is a CheckBoxSub
//     chkCNOthers is a CheckBoxSub
//     ButtonSub5 is a ButtonSub
//     frmFileName is a FormSub
//     TextBoxSub10 is a TextBoxSub
//     SaveAsDialog1 is a SaveAsDialog
//     ButtonSub6 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object ButtonSub5
Register_Object ButtonSub6
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Country_DD
Register_Object chkClients
Register_Object chkCN
Register_Object chkCNOthers
Register_Object chkPayresp
Register_Object EnarxhErgouApo
Register_Object EnarxhErgouEos
Register_Object EnarxhSkyrApo
Register_Object EnarxhSkyrEos
Register_Object frmAnoixtos
Register_Object frmFileName
Register_Object frmSynolikh
Register_Object Migrate1
Register_Object Payresp_DD
Register_Object SaveAsDialog1
Register_Object TeleytaiaKinhshApo
Register_Object TeleytaiaKinhshEos
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Towns_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
                
//Use msExcel

Open Cmoves
Open Clients
Open CN
Open Constrct
Open Mhxanik
Open Payresp
Open Salesmen
Open Cities
Open Towns
Open Country
Open Areas
Open BtnOrdH
Open Branch

Open MINOMOS
Open MIDHMOS
Open MIDRAST

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Chkbox.Sub
Use cSyDateForm.Pkg
Use Txtbox.Sub
Use Form.Sub
Use Button.Sub

Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Migrate1 FOR Migrate1

Object Migrate1 is a dbViewSubs

    //AB-StoreTopStart
            
    //Object MyExcel is a Excel
    //    procedure End_construct_object
    //        forward send End_construct_object
    //    end_procedure
    //End_Object
    
    Property Handle     jhoExcelApp     public 0
    Property Handle     jhoWorkbooks    public 0
    Property Handle     jhoWorkbook     public 0
    Property Handle     jhoSheets       public 0
    Property Handle     jhoRange        public 0
    Property Boolean    jbVisible       public 0 // by default, make Excel visible like DDE interface
    
    
    //AB-StoreTopEnd

    Set Label to "„§ ¢¦šã œšš¨˜­é¤ §¨¦ª ‹œ«˜­¦¨á"
    Set Size to 387 406
    Set Location to 7 16

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

    Object chkClients is a CheckBoxSub
        Set Label to "„Š€’„‘  (CLIENTS)"
        Set Size to 10 101
        Set Location to 10 8
        Set Color to 11665135
        Set Auto_Size_State to FALSE
        Set Checked_State to TRUE
    End_Object    // chkClients

    Object chkCN is a CheckBoxSub
        Set Label to "„‚€  (CN)"
        Set Size to 13 58
        Set Location to 160 7
        Set Color to 11665135
        Set Auto_Size_State to FALSE
        Set Checked_State to TRUE
    End_Object    // chkCN

    Object TeleytaiaKinhshApo is a cSyDateForm
        Set Size to 13 66
        Set Location to 70 8
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // TeleytaiaKinhshApo

    Object TeleytaiaKinhshEos is a cSyDateForm
        Set Size to 13 66
        Set Location to 71 111
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // TeleytaiaKinhshEos

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "’œ¢œ¬«˜å˜ ‰å¤© €§¦"
        Set Auto_Size_State to FALSE
        Set Location to 58 8
        Set Size to 10 81
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "’œ¢œ¬«˜å˜ ‰å¤© „àª"
        Set Auto_Size_State to FALSE
        Set Location to 58 111
        Set Size to 10 80
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object frmSynolikh is a FormSub
        Set Size to 13 85
        Set Location to 38 8
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmSynolikh

    Object frmAnoixtos is a FormSub
        Set Size to 13 85
        Set Location to 39 111
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmAnoixtos

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "‘¬¤¦¢ ¡ã ­œ ¢ã > ˜§¦"
        Set Auto_Size_State to FALSE
        Set Location to 27 8
        Set Size to 10 80
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "€¤¦ ®«æª Š¦š/£æª  > ˜§¦"
        Set Auto_Size_State to FALSE
        Set Location to 28 111
        Set Size to 10 89
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                        
        //AB-StoreTopEnd

        Set Label to "‹˜¨¡á¨ ©£˜ œ¢˜«é¤"
        Set Size to 15 386
        Set Location to 98 7
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                        
        Set Label to '‹˜¨¡á¨ ©£˜ „šš¨˜­é¤ œ¢˜«é¤'
        
        Procedure OnClick
            String  sLabel sPelaths
            Integer iFs iInt iProblem iCounter
            Integer i1 i2 i3 i4 i5 iCheckClients iCheckErga iCheckPresp
            Date dApo0001 dEos0001 dArx dTel
            Date dEnarxhApo dEnarxhEos
            Date dSkyrodApo dSkyrodEos
            Number nSynolikh nAnoixtos
            Get Label to sLabel
            Move 0 to iCounter
            String sTxt
            Move "" to sTxt
        
            Move "01/01/2000"   to dArx
            Move "31/12/2100"   to dTel
        
            Get Value Of TeleytaiaKinhshApo Item 0 to dApo0001
            Get Value Of TeleytaiaKinhshEos Item 0 to dEos0001
            //If (dApo0001="") Move dArx to dApo0001
            //If (dEos0001="") Move dTel to dEos0001
        
            Get Value Of frmAnoixtos to nAnoixtos
            Get Value Of frmSynolikh to nSynolikh
        
            Get Checked_State of chkClients to iCheckClients
            Get Checked_State of chkPayresp to iCheckPresp
        
        
            If (iCheckClients=0) Procedure_Return
        
            Move 0 to iProblem
        
            Move 0 to iInt
            File_Size Clients to iFs
            Clear Clients
            Lock
            Find GE Clients.Recnum
            While (Found)
                Add 1 to iInt
        
                Move ('€¤˜ã«© œ¢˜«é¤... '+(String(iInt))+'/'+(String(iFS))+"  ¨âŸ¡˜¤ "+iCounter+" „šš¨˜­âª" ) to sTxt
                Move (Trim(sTxt)) to sTxt
                Set Label to sTxt
        
                Integer isGood
                Move 1 to isGood
        
                If ((Clients.HPSO>0) And (Clients.HPSO<nSynolikh)) Move 0 to isGood
                If ((Clients.HPAL>0) And (Clients.HPAL<nAnoixtos)) Move 0 to isGood
        
                If ((dApo0001<>"") And (isGood=1)) Begin
                    Clear Cmoves
                    Move Clients.Client_ID  to Cmoves.Client_ID
                    Move dApo0001               to Cmoves.Cmoves_Hmnia
                    Find GE Cmoves By Index.4
                    If (NOT((Found) And ;
                            (Clients.Client_ID=Cmoves.Client_ID) And ;
                            (Cmoves.Cmoves_Hmnia>=dApo0001))) Move 0 to isGood
                End
                If ((dEos0001<>"") And (isGood=1))  Begin
                    Clear Cmoves
                    Move Clients.Client_ID  to Cmoves.Client_ID
                    Move dEos0001               to Cmoves.Cmoves_Hmnia
                    Move "ZZZZZZZZZ"        to Cmoves.Cmoves_Recr
                    Find LE Cmoves By Index.4
                    If (NOT((Found) And ;
                            (Clients.Client_ID=Cmoves.Client_ID) And ;
                            (Cmoves.Cmoves_Hmnia<=dEos0001))) Move 0 to isGood
                End
        
                If (isGood=1) Begin
                    Add 1   to iCounter
                    Move 1  to Clients.ExportFlag
                    Sysdate    Clients.ExportDate
                    Saverecord Clients
        
                    If (iCheckPresp) Begin
                        Clear Payresp
                        Move Clients.Presp_ID to Payresp.Presp_ID
                        Find Eq Payresp By Index.7
                        If (Found) Begin
                            Reread Payresp
                            Move 1  to Payresp.ExportFlag
                            Sysdate    Payresp.ExportDate
                            Saverecord Payresp
                            Unlock
                        End
                    End
                End
        
                Find GT Clients.Recnum
            Loop
            Unlock
        
        
            Send Info_Box '† ƒ ˜› ¡˜©å˜ ¢¦¡¢¨éŸ¡œ' '¢¨¦­¦¨å˜'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "ë¤˜¨¥ ë¨š¦¬ €§¦"
        Set Auto_Size_State to FALSE
        Set Location to 179 7
        Set Size to 10 81
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object EnarxhErgouApo is a cSyDateForm
        Set Size to 13 66
        Set Location to 192 7
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // EnarxhErgouApo

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "ë¤˜¨¥ ë¨š¦¬ „àª"
        Set Auto_Size_State to FALSE
        Set Location to 179 88
        Set Size to 10 67
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object EnarxhErgouEos is a cSyDateForm
        Set Size to 13 66
        Set Location to 192 88
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // EnarxhErgouEos

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "ë¤˜¨¥ ‘¡¬¨¦›â«©ª €§¦"
        Set Auto_Size_State to FALSE
        Set Location to 179 184
        Set Size to 10 94
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object EnarxhSkyrApo is a cSyDateForm
        Set Size to 13 66
        Set Location to 192 194
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // EnarxhSkyrApo

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "ë¤˜¨¥ ‘¡¬¨¦›â«©ª „àª"
        Set Auto_Size_State to FALSE
        Set Location to 179 297
        Set Size to 10 96
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub9

    Object EnarxhSkyrEos is a cSyDateForm
        Set Size to 13 66
        Set Location to 192 307
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // EnarxhSkyrEos

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                        
        //AB-StoreTopEnd

        Set Label to "‹˜¨¡á¨ ©£˜ ë¨šà¤"
        Set Size to 15 386
        Set Location to 213 7
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                        
        Set Label to '‹˜¨¡á¨ ©£˜ „šš¨˜­é¤ ë¨šà¤'
        
        Procedure OnClick
            String  sLabel sPelaths
            Integer iFs iInt iProblem iCounter
            Integer i1 i2 i3 i4 i5 iCheckClients iCheckErga iCheckOthers
            Date dEnarxhApo dEnarxhEos
            Date dSkyrodApo dSkyrodEos
            Number nSynolikh nAnoixtos
            Get Label to sLabel
            Move 0 to iCounter
        
            String sTxt
            Move "" to sTxt
        
            Get Value Of EnarxhErgouApo to dEnarxhApo
            Get Value Of EnarxhErgouEos to dEnarxhEos
        
            Get Value Of EnarxhSkyrApo to dSkyrodApo
            Get Value Of EnarxhSkyrEos to dSkyrodEos
        
            Get Checked_State of chkCN          to iCheckErga
            Get Checked_State of chkCNOthers    to iCheckOthers
        
            If (iCheckErga=0) Procedure_Return
        
            Move 0 to iProblem
        
            Move 0 to iInt
            File_Size CN to iFs
            Clear CN
            Lock
            Find GE CN.Recnum
            While (Found)
                Add 1 to iInt
        
                Move ('€¤˜ã«© ë¨šà¤... '+(String(iInt))+'/'+(String(iFS))+"  ¨âŸ¡˜¤ "+iCounter+" „šš¨˜­âª" ) to sTxt
                Move (Trim(sTxt)) to sTxt
                Set Label to sTxt
        
                Set Label to sTxt
        
                Integer isGood
                Move 1 to isGood
        
                If ((dEnarxhApo>"") And (CN.Cn_start_date   >"") And (CN.Cn_start_date  <dEnarxhApo)) Move 0 to isGood
                If ((dEnarxhEos>"") And (CN.Cn_end_date     >"") And (CN.Cn_end_date    >dEnarxhEos)) Move 0 to isGood
                If ((dSkyrodApo>"") And (CN.Hm_prot_fortio  >"") And (CN.Hm_prot_fortio <dSkyrodApo)) Move 0 to isGood
                If ((dSkyrodEos>"") And (CN.Hm_tel_fortio   >"") And (CN.Hm_tel_fortio  >dSkyrodEos)) Move 0 to isGood
        
                If (isGood=1) Begin
                    Add  1  to iCounter
                    Move 1  to CN.ExportFlag
                    Sysdate    CN.ExportDate
                    Saverecord CN
        
                    If (iCheckOthers) Begin
                        Clear Constrct
                        Move CN.CN_Cnt_ID to Constrct.Cnt_ID
                        Find Eq Constrct By Index.5
                        If (Found) Begin
                            //Reread Constrct
                            Move 1  to Constrct.ExportFlag
                            Sysdate    Constrct.ExportDate
                            Saverecord Constrct
                            //Unlock
                        End
        
                        Clear Mhxanik
                        Move CN.Mhxanik_ID to Mhxanik.Mhx_ID
                        Find Eq Mhxanik By Index.4
                        If (Found) Begin
                            //Reread Mhxanik
                            Move 1  to Mhxanik.ExportFlag
                            Sysdate    Mhxanik.ExportDate
                            Saverecord Mhxanik
                            //Unlock
                        End
        
                        Clear Salesmen
                        Move CN.CN_SLS_ID to Salesmen.SLS_ID
                        Find Eq Salesmen By Index.4
                        If (Found) Begin
                            //Reread Salesmen
                            Move 1  to Salesmen.ExportFlag
                            Sysdate    Salesmen.ExportDate
                            Saverecord Salesmen
                            //Unlock
                        End
                    End
                End
                Find GT CN.Recnum
            Loop
            Unlock
            Send Info_Box '† ƒ ˜› ¡˜©å˜ ¢¦¡¢¨éŸ¡œ' '¢¨¦­¦¨å˜'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object ButtonSub3 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "œ£˜¨¡á¨ ©£˜ î¢à¤ «à¤ œšš¨˜­é¤ œ¢˜«é¤"
        Set Size to 14 174
        Set Location to 118 114
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Set Label to 'œ£˜¨¡á¨ ©£˜ î¢à¤ «à¤ œšš¨˜­é¤ œ¢˜«é¤'
        
        Procedure OnClick
            String  sLabel sPelaths
            Integer iFs iInt iProblem iCounter
            Integer i1 i2 i3 i4 i5 iCheckClients iCheckErga iCheckPresp
            Date dApo0001 dEos0001 dArx dTel
            Date dEnarxhApo dEnarxhEos
            Date dSkyrodApo dSkyrodEos
            Number nSynolikh nAnoixtos
            Get Label to sLabel
        
            Get Checked_State of chkClients to iCheckClients
            Get Checked_State of chkPayresp to iCheckPresp
        
            If (iCheckClients=0) Procedure_Return
        
            Clear Clients
            Lock
            Find GE Clients.Recnum
            While (Found)
                Add 1 to iInt
                Set Label to ('€¤˜ã«© œ¢˜«é¤... '+(String(iInt))+'/'+(String(iFS))+"  ¨âŸ¡˜¤ "+iCounter+" „šš¨˜­âª" )
        
                Integer isGood
                Move 1 to isGood
        
                If (Clients.ExportFlag=1) Begin
        
                    If ((Clients.HPSO>0) And (Clients.HPSO<nSynolikh)) Move 0 to isGood
                    If ((Clients.HPAL>0) And (Clients.HPAL<nAnoixtos)) Move 0 to isGood
                    If ((dApo0001<>"") And (isGood=1)) Begin
                        Clear Cmoves
                        Move Clients.Client_ID  to Cmoves.Client_ID
                        Move dApo0001               to Cmoves.Cmoves_Hmnia
                        Find GE Cmoves By Index.4
                        If (NOT((Found) And ;
                                (Clients.Client_ID=Cmoves.Client_ID) And ;
                                (Cmoves.Cmoves_Hmnia>=dApo0001))) Move 0 to isGood
                    End
                    If ((dEos0001<>"") And (isGood=1))  Begin
                        Clear Cmoves
                        Move Clients.Client_ID  to Cmoves.Client_ID
                        Move dEos0001               to Cmoves.Cmoves_Hmnia
                        Move "ZZZZZZZZZ"        to Cmoves.Cmoves_Recr
                        Find LE Cmoves By Index.4
                        If (NOT((Found) And ;
                                (Clients.Client_ID=Cmoves.Client_ID) And ;
                                (Cmoves.Cmoves_Hmnia<=dApo0001))) Move 0 to isGood
                    End
        
                    If (isGood=1) Begin
                        Move 0  to Clients.ExportFlag
                        Move "" to Clients.ExportDate
                        Saverecord Clients
        
                        If (iCheckPresp) Begin
                            Clear Payresp
                            Move Clients.Presp_ID  to Payresp.Presp_ID
                            Find Eq Payresp By Index.7
                            If (Found) Begin
                                Reread Payresp
                                Move 0  to Payresp.ExportFlag
                                Move "" to Payresp.ExportDate
                                Saverecord Payresp
                                Unlock
                            End
                        End
                    End
                End
                Find GT Clients.Recnum
            Loop
            Unlock
        
            Send Info_Box '† ƒ ˜› ¡˜©å˜ ¢¦¡¢¨éŸ¡œ' '¢¨¦­¦¨å˜'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object ButtonSub4 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "œ£˜¨¡á¨ ©£˜ î¢à¤ «à¤ œšš¨˜­é¤ ë¨šà¤"
        Set Size to 14 174
        Set Location to 233 114
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Set Label to 'œ£˜¨¡á¨ ©£˜ î¢à¤ «à¤ œšš¨˜­é¤ ë¨šà¤'
        
        Procedure OnClick
            String  sLabel sPelaths
            Integer iFs iInt iProblem iCounter
            Integer i1 i2 i3 i4 i5 iCheckClients iCheckErga iCheckOthers
            Date dEnarxhApo dEnarxhEos
            Date dSkyrodApo dSkyrodEos
            Number nSynolikh nAnoixtos
            Get Label   to sLabel
            Move 0      to iCounter
        
            Get Value Of EnarxhErgouApo to dEnarxhApo
            Get Value Of EnarxhErgouEos to dEnarxhEos
        
            Get Value Of EnarxhSkyrApo to dSkyrodApo
            Get Value Of EnarxhSkyrEos to dSkyrodEos
        
            Get Checked_State of chkCN          to iCheckErga
            Get Checked_State of chkCNOthers    to iCheckOthers
        
            If (iCheckErga=0) Procedure_Return
        
            Move 0 to iProblem
        
            Move 0 to iInt
            File_Size CN to iFs
        
            Clear CN
            Lock
            Find GE CN.Recnum
            While (Found)
                Add 1 to iInt
                Set Label to ('€¤˜ã«© ë¨šà¤... '+(String(iInt))+'/'+(String(iFS))+"  ¨âŸ¡˜¤ "+iCounter+" „šš¨˜­âª" )
        
                If (CN.ExportFlag=1) Begin
                    Integer isGood
                    Move 1 to isGood
                    If ((dEnarxhApo>"") And (CN.Cn_start_date   >"") And (CN.Cn_start_date  <dEnarxhApo)) Move 0 to isGood
                    If ((dEnarxhEos>"") And (CN.Cn_end_date     >"") And (CN.Cn_end_date    >dEnarxhEos)) Move 0 to isGood
                    If ((dSkyrodApo>"") And (CN.Hm_prot_fortio  >"") And (CN.Hm_prot_fortio <dSkyrodApo)) Move 0 to isGood
                    If ((dSkyrodEos>"") And (CN.Hm_tel_fortio   >"") And (CN.Hm_tel_fortio  >dSkyrodEos)) Move 0 to isGood
                    If (isGood=1) Begin
                        Add  1  to iCounter
                        Move 0  to CN.ExportFlag
                        Move "" to CN.ExportDate
                        Saverecord CN
        
                        If (iCheckOthers) Begin
                            Clear Constrct
                            Move CN.CN_Cnt_ID to Constrct.Cnt_ID
                            Find Eq Constrct By Index.5
                            If (Found) Begin
                                //Reread Constrct
                                Move 0  to Constrct.ExportFlag
                                Move "" to Constrct.ExportDate
                                Saverecord Constrct
                                //Unlock
                            End
        
                            Clear Mhxanik
                            Move CN.Mhxanik_ID to Mhxanik.Mhx_ID
                            Find Eq Mhxanik By Index.4
                            If (Found) Begin
                                //Reread Mhxanik
                                Move 0  to Mhxanik.ExportFlag
                                Move "" to Mhxanik.ExportDate
                                Saverecord Mhxanik
                                //Unlock
                            End
        
                            Clear Salesmen
                            Move CN.CN_SLS_ID to Salesmen.SLS_ID
                            Find Eq Salesmen By Index.4
                            If (Found) Begin
                                //Reread Salesmen
                                Move 0  to Salesmen.ExportFlag
                                Move "" to Salesmen.ExportDate
                                Saverecord Salesmen
                                //Unlock
                            End
                        End
        
                    End
                End
                Find GT CN.Recnum
            Loop
            Unlock
        
            Send Info_Box '† ƒ ˜› ¡˜©å˜ ¢¦¡¢¨éŸ¡œ' '¢¨¦­¦¨å˜'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4

    Object chkPayresp is a CheckBoxSub
        Set Label to "‘¬£§œ¨ â¢˜™œ “§œçŸ¬¤¦¬ª ¢¨à£é¤"
        Set Size to 10 147
        Set Location to 10 122
        Set Color to 15263999
        Set Auto_Size_State to FALSE
        Set Checked_State to TRUE
    End_Object    // chkPayresp

    Object chkCNOthers is a CheckBoxSub
        Set Label to "‘¬£§œ¨ â¢˜™œ ‹®˜¤ ¡¦çª / à¢«âª / „¨š¦¢á™¦¬ª"
        Set Size to 12 192
        Set Location to 160 79
        Set Color to 15263999
        Set Auto_Size_State to FALSE
        Set Checked_State to TRUE
    End_Object    // chkCNOthers

    Object ButtonSub5 is a ButtonSub

        //AB-StoreTopStart
        
        Property String psNotFoundClientDhmos Public ""
        Property String psNotFoundClientNomos Public ""
        Property String psNotFoundClientDrast Public ""
        Property String psNotFoundClientTrPlh Public ""
        
        Property String psNotFoundErgoDhmos Public ""
        Property String psNotFoundErgoNomos Public ""
        Property String psNotFoundErgoDrast Public ""
        Property String psNotFoundErgoTrPlh Public ""
        
        Property String psNotFoundPrespDhmos Public ""
        Property String psNotFoundPrespNomos Public ""
        Property String psNotFoundPrespDrast Public ""
        Property String psNotFoundPrespTrPlh Public ""
        
        Property String psNotFoundMhxanDhmos Public ""
        Property String psNotFoundMhxanNomos Public ""
        Property String psNotFoundMhxanDrast Public ""
        Property String psNotFoundMhxanTrPlh Public ""
        
        Property String psNotFoundConstrDhmos Public ""
        Property String psNotFoundConstrNomos Public ""
        Property String psNotFoundConstrDrast Public ""
        Property String psNotFoundConstrTrPlh Public ""
        
        Property String psNotFoundSalesDhmos Public ""
        Property String psNotFoundSalesNomos Public ""
        Property String psNotFoundSalesDrast Public ""
        Property String psNotFoundSalesTrPlh Public ""
        
        
        Function fsTropoiPlhromhsPelath String asOurCode Returns String
            String sTheirCode
        
            If      (asOurCode="K000") Move "G000" to sTheirCode
            Else If (asOurCode="K030") Move "G030" to sTheirCode
            Else If (asOurCode="K060") Move "G060" to sTheirCode
            Else If (asOurCode="K090") Move "G090" to sTheirCode
            Else If (asOurCode="K120") Move "G120" to sTheirCode
            Else If (asOurCode="K150") Move "G150" to sTheirCode
            Else If (asOurCode="K180") Move "G180" to sTheirCode
            Else If (asOurCode="K210") Move "G210" to sTheirCode
            Else If (asOurCode="K240") Move "G240" to sTheirCode
            Else If (asOurCode="K270") Move "G270" to sTheirCode
            Else If (asOurCode="K300") Move "G300" to sTheirCode
            Else If (asOurCode="K330") Move "G330" to sTheirCode
            Else If (asOurCode="K360") Move "G360" to sTheirCode
            Else Begin
                Set psNotFoundClientTrPlh to (Trim("*** (AW+BN) "+asOurCode))
                Move "ZZZZ" to sTheirCode
            End
            Function_Return sTheirCode
        End_Function
        
        
        //AB-StoreTopEnd

        Set Label to "EXPORT TO EXCEL SHEET"
        Set Size to 30 245
        Set Location to 300 78
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            String sFilename sLabel
            Integer bIsCreated
            Integer iWhat iVal
            Get Label to sLabel
            Get Value Of frmFileName Item 0 to sFilename
            If (Trim(sFilename)="") Begin
                Send Stop_Box "’¦ æ¤¦£˜ «¦¬ ˜¨œå¦¬ œå¤˜  ¡œ¤æ" "‘­á¢£˜ 1002"
                Procedure_Return
            End
        
            Direct_Output Channel 9 sFilename
        
            String sFileName2
            Move "C:\TitanMig\Mhxanik.csv" to sFileName2
            Direct_Output Channel 7 sFilename2
        
            String sFileName3
            Move "C:\TitanMig\Constrct.csv" to sFileName3
            Direct_Output Channel 8 sFilename3
        
            String sFileName4
            Move "C:\TitanMig\Salesmen.csv" to sFileName4
            Direct_Output Channel 6 sFilename4
        
            Integer iCnt iFS
            Move 0 to iCnt
            File_Size Clients to iFS
            String sMess
        
            Clear Clients
            Find GE Clients.Recnum
            While (Found)
            //Move 1 to Clients.ExportFlag
            //Find GE Clients By Index.12
            //While ((Found) And (Clients.ExportFlag=1))
            //While (iCnt<100)
                Add 1 to iCnt
                Move (String(iCnt)+"/"+String(iFS)) to sMess
                //Showln "1... " iCnt "  "  (Trim(Clients.Client_ID)) "  Index.12 --> Flag="  Clients.EXPORTFLAG "  Status=" (Trim(Clients.ExportStatus))  "  Date=" (Trim(Clients.ExportDate))  "  Recnum=" (Trim(Clients.Recnum))
                Set Label to sMess  //(Trim(Clients.Client_ID)+"  "+Trim(Clients.Client_Name))
        
                If (Clients.ExportFlag=1) Send OutputClient
        
                //Send OutputClient
                //Showln "2... " iCnt "  "  (Trim(Clients.Client_ID)) "  Index.12 --> Flag="  Clients.EXPORTFLAG "  Status=" (Trim(Clients.ExportStatus))  "  Date=" (Trim(Clients.ExportDate))  "  Recnum=" (Trim(Clients.Recnum))
                //Find GT Clients By Index.12
                Find GT Clients.Recnum
                //Showln "3.. "  iCnt "  "  (Trim(Clients.Client_ID)) "  Index.12 --> Flag="  Clients.EXPORTFLAG "  Status=" (Trim(Clients.ExportStatus))  "  Date=" (Trim(Clients.ExportDate))  "  Recnum=" (Trim(Clients.Recnum))
            Loop
            //Showln "EXIT... "  iCnt "  "  (Trim(Clients.Client_ID)) "  Index.12 --> Flag="  Clients.EXPORTFLAG "  Status=" (Trim(Clients.ExportStatus))  "  Date=" (Trim(Clients.ExportDate))  "  Recnum=" (Trim(Clients.Recnum))
        
            Close_Output Channel 9
            Close_Output Channel 8
            Close_Output Channel 7
            Close_Output Channel 6
            Set Label to sLabel
            Send Info_Box "Process Finished, the Excel file is saved" "Information"
        End_Procedure // OnClick
        
        
        Procedure OutputClient
            String sClientID sDeli sPrespID
            Move ","                to sDeli
            Move Clients.Client_ID  to sClientID
        
            Set psNotFoundClientDhmos to ""
            Set psNotFoundClientNomos to ""
            Set psNotFoundClientDrast to ""
            Set psNotFoundClientTrPlh to ""
        
            //---
            Write   Channel 9   '"'
            Write   Channel 9   'Y001'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_ID))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
            Write   Channel 9   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Presp_ID))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
            Move (Trim(Clients.Presp_ID)) to sPrespID
            Write   Channel 9   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
            Write   Channel 9   sDeli // End of Excel Column G  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
            Write   Channel 9   sDeli // End of Excel Column H  ¨åœ«˜  ¦ œ¨š¦¢á™¦ª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
            Write   Channel 9   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
            Write   Channel 9   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
            Write   Channel 9   '"'
            Write   Channel 9   'GR02'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column K  ‰à› ¡æª „«˜ ¨å˜ª „¢¢á›˜ª
            Write   Channel 9   '"'
            Write   Channel 9   'GR02'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column L ¨š˜¤ ©£æª à¢ã©œà¤ „¢¢á›˜ª
            Write   Channel 9   '"'
            Write   Channel 9   '03'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column M ‰˜¤á¢  ƒ ˜¤¦£ãª
            Write   Channel 9   '"'
            Write   Channel 9   '04'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column N ’£ã£˜ (Segment)
            String s1 sLianikh
            If      (Clients.Client_ptyppar='113')              Move "Z009" to s1
            Else If (Clients.Client_Name Contains "‰/")        Move "Z006" to s1
            Else If (Clients.Client_Name Contains "ƒ†‹‘ˆ")    Move "Z008" to s1
            Else                                                Move "Z005" to s1
            Move s1 to sLianikh
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(s1))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column O  „«˜ ¨ ¡ã ¤¦£ ¡ã ¦¤«æ««˜
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Left(Clients.Client_Name,35)))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column P  î¤¦£˜ §œ¢á«
            Move "" to s1
            If (Trim(Mid(Clients.Client_Name,35,36))<>"") Move ('"'+Trim(Mid(Clients.Client_Name,35,36))+'"') to s1
            Write   Channel 9   (Trim(s1))
            Write   Channel 9   sDeli // End of Excel Column Q  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
            Move "" to s1
            If (Trim(Mid(Clients.Client_Name,35,71))<>"") Move ('"'+Trim(Mid(Clients.Client_Name,35,71))+'"') to s1
            Write   Channel 9   (Trim(s1))
            Write   Channel 9   sDeli // End of Excel Column R  ¢ã¨ª œ§à¤¬£å˜ §œ¢á«
            Write   Channel 9   sDeli // End of Excel Column S
            Write   Channel 9   sDeli // End of Excel Column T  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
            Write   Channel 9   sDeli // End of Excel Column U  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« ã «å«¢¦ª œ«˜ ¨å˜ª - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_Address))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column V  ›æª §œ¢á«
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_add_no))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column W  €¨ Ÿ£æª
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_Zipcode))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column X  ’.‰.
            Move "" to s1
            Clear Areas
            Move Clients.Client_Area to Areas.Area_id
            Find Eq Areas By Index.1
            Clear MIDHMOS
            Move (Trim(Areas.Area_Descr)) to MIDHMOS.Dhmos
            Find EQ MIDHMOS By Index.1
            If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
            Else Begin
                Set psNotFoundClientDhmos to ("*** (Y) "+Trim(Areas.Area_Descr))
                Move "ZZZZ"               to s1
            End
            Write   Channel 9   '"'
            Write   Channel 9   s1
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column Y  ƒã£¦ª
            Move "GR" to s1
            String sIsGreece
            Move s1 to sIsGreece
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(s1))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column Z  •é¨˜
            Move "" to s1
            Clear Cities
            Move Clients.Client_City_ID to cities.City_id
            Find Eq Cities By Index.1
            Clear MINOMOS
            Move (Trim(Cities.City_Descr)) to MINOMOS.DESCR
            Find EQ MINOMOS By Index.2
            If (Found)  Move (Trim(MINOMOS.CODE)) to s1
            Else Begin
                Set psNotFoundClientNomos to ("*** (AA) "+Trim(Cities.City_Descr))
                Move "ZZZZ"               to s1
            End
            Write   Channel 9   '"'
            Write   Channel 9   s1
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AA Œ¦£æª
            Write   Channel 9   sDeli // End of Excel Column AB ƒ£¦« ¡ã „¤æ««˜
            Write   Channel 9   '"'
            Write   Channel 9   'EL'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AC ‚¢é©©˜
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_Phone))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AD ’¢â­à¤¦ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ «¢œ­é¤à¤ ©«¦ sheet Communication)
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_Mobile))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AE "‰ ¤«æ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ ¡ ¤«é¤ ©«¦ sheet Communication)
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_Fax))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AF Fax §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ fax ©«¦ sheet Communication)
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_email))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AG Email §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ e-mail ©«¦ sheet Communication)
            Write   Channel 9   sDeli // End of Excel Column AH ‘¬£§¢¨é¤œ«˜  ¦ reference ¡à› ¡æª §¨¦£Ÿœ¬«ã œá¤ ¦ §œ¢á«ª œå¤˜  ¡˜  §¨¦£Ÿœ¬«ãª
        
            Clear Codemast
            Move "JOB"              to Codemast.Type
            Move Clients.Client_Job to Codemast.Code
            Find Eq Codemast By Index.1
            Clear MIDRAST
            Move (Trim(Codemast.Description)) to MIDRAST.Descr
            Find Eq MIDRAST By Index.2
            If (Found) Move MIDRAST.Code to s1
            Else Begin
                Set psNotFoundClientDrast to ("*** (AI) "+Trim(Codemast.Description))
                Move "ZZZZ" to s1
            End
            Write   Channel 9   '"'
            Write   Channel 9   s1
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AI ƒ¨˜©«¨ æ««˜ §œ¢á«
        
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(Clients.Client_AFM))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AJ "€”‹ “§¦®¨œà« ¡æ š ˜ GR §œ¢á«œª
            Move ("EL"+Trim(Clients.Client_AFM)) to s1
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(s1))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AK EL+€”‹ “§¦®¨œà« ¡æ š ˜ §œ¢á«œª „¬¨à§˜ä¡ãª ë¤à©ª
            Write   Channel 9   sDeli // End of Excel Column AL ƒ£¦« ¡ã „¤æ««˜
            Write   Channel 9   sDeli // End of Excel Column AM Sales Office
            Write   Channel 9   sDeli // End of Excel Column AN Sales Group
            Write   Channel 9   sDeli // End of Excel Column AO „¨š¦¢á™¦ª / ‹®˜¤ ¡æª
            Write   Channel 9   '"'
            Write   Channel 9   'EUR'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AP Œæ£ ©£˜ §é¢©ª
            Write   Channel 9   '"'
            Write   Channel 9   '1'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AQ ¨¦©› ¦¨åœ  «¤ › ˜› ¡˜©å˜ « £¦›æ«©ª
            Write   Channel 9   '"'
            Write   Channel 9   '1'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AR ¨¦©› ¦¨åœ  «¤ ¦£á›˜ ©«˜« ©« ¡é¤ §œ¢á«
            Write   Channel 9   '"'
            Write   Channel 9   '11'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AS ‘¬¤Ÿã¡ ˜§¦©«¦¢ãª
            Write   Channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª
            Write   Channel 9   '"'
            Write   Channel 9   'X'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AU ‘¬£§¢¨é¤œ«˜  œá¤  › ˜› ¡˜©å˜ « £¦›æ«©ª §¨˜š£˜«¦§¦ œå«˜  š ˜ «¦¤ §œ¢á«
            Write   Channel 9   sDeli // End of Excel Column AV Incoterms
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(fsTropoiPlhromhsPelath(Self,Trim(Clients.Polh_recr))))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AW î¨¦  ¢¨à£ãª
            If (sLianikh="Z009")  Move "02" to s1
            Else                  Move "01" to s1
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(s1))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column A• £˜›¦§¦å© š ˜ «¦¤ §¨¦©› ¦¨ ©£æ ¢¦š˜¨ ˜©£¦ç œ©æ›à¤
            Write   Channel 9   '"'
            Write   Channel 9   'GR'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column AY •é¨˜ ­¦¨¦¢æš©ª
            Write   Channel 9   '"'
            Write   Channel 9   'MWST'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column A… ‰˜«š¦¨å˜ ­æ¨¦¬
            Write   Channel 9   '"'
            Write   Channel 9   '0'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column A ‰˜«š¦¨ ¦§¦å© ­æ¨¦¬
            Write   Channel 9   sDeli // End of Excel Column B €¨. ”¦¨«šé¤
            Write   Channel 9   sDeli // End of Excel Column C ¬Ÿ£æª ˜¨á›¦©ª
            Write   Channel 9   sDeli // End of Excel Column D ’˜®ç««˜ „¡­æ¨«à©ª
            Write   Channel 9   sDeli // End of Excel Column E „¢¢œ §âª ”¦¨«å¦
            Write   Channel 9   sDeli // End of Excel Column F ‹âš ©« ¦©æ««˜ ˜¨á›¦©ª
            Write   Channel 9   sDeli // End of Excel Column G ‰à› ¡æª ë¨š¦¬ œ¢á«
            Write   Channel 9   sDeli // End of Excel Column H €¨. ê›œ ˜ª ë¨š¦¬
            Write   Channel 9   sDeli // End of Excel Column I †£. ê›œ ˜ª ë¨š¦¬
            Write   Channel 9   '"'
            Write   Channel 9   '3000000000'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column J Š¦š˜¨ ˜©£æª ‘¬£­à¤å˜ª
            Write   Channel 9   '"'
            Write   Channel 9   'R02'
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column K £˜›¦§¦å© §œ¢˜«é¤ š ˜ ©¡¦§¦çª cash flow
            Write   Channel 9   sDeli // End of Excel Column L ƒ ˜©ç¤›œ© ‰œ¤«¨ ¡é¤ - “§¦¡˜«á©«£˜. ‘¬£§¢¨é¤œ«˜  š ˜ æ¢˜ «˜ â¨š˜ (header Ship - to) ¡˜  ¬§¦ â¨š˜ (ship - to)
            Write   Channel 9   sDeli // End of Excel Column M ‹âŸ¦›¦ª §¢¨à£ãª ???
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(fsTropoiPlhromhsPelath(Self,Trim(Clients.Polh_recr))))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli // End of Excel Column N
            //---
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(psNotFoundClientDhmos(Self)))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli
        
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(psNotFoundClientNomos(Self)))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli
        
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(psNotFoundClientTrPlh(Self)))
            Write   Channel 9   '"'
            Write   Channel 9   sDeli
        
            Write   Channel 9   '"'
            Write   Channel 9   (Trim(psNotFoundClientDrast(Self)))
            Write   Channel 9   '"'
            //Write   Channel 9   sDeli
        
            //---
            Writeln Channel 9
        
        
            Send OutputPresp (Trim(sPrespID))
            Send OutputCN    (Trim(Clients.Client_ID))
        
        //    Clear Clients
        //    Move (Trim(sClientID)) to Clients.Client_ID
        //    Find Eq Clients By Index.6
        
        End_Procedure
        
        
        
        Procedure OutputPresp String asPrespID
            String sPrespID s1
        
            Set psNotFoundPrespDhmos to ""
            Set psNotFoundPrespNomos to ""
            Set psNotFoundPrespDrast to ""
            Set psNotFoundPrespTrPlh to ""
        
            Clear Payresp
            Move asPrespID to Payresp.Presp_ID
            Find GE Payresp By Index.7
            While ((Found) And (Payresp.Presp_ID=asPrespID))
                String sDeli
                Move ","                to sDeli
                Move Payresp.Presp_ID   to sPrespID
                //---
                Write   Channel 9   '"'
                Write   Channel 9   'Y012'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_ID))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                Write   Channel 9   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                Write   Channel 9   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   Channel 9   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   Channel 9   sDeli // End of Excel Column G  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   Channel 9   sDeli // End of Excel Column H  ¨åœ«˜  ¦ œ¨š¦¢á™¦ª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                Write   Channel 9   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                Write   Channel 9   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
                Write   Channel 9   '"'
                Write   Channel 9   'GR02'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column K  ‰à› ¡æª „«˜ ¨å˜ª „¢¢á›˜ª
                Write   Channel 9   '"'
                Write   Channel 9   'GR02'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column L ¨š˜¤ ©£æª à¢ã©œà¤ „¢¢á›˜ª
                Write   Channel 9   '"'
                Write   Channel 9   '03'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column M ‰˜¤á¢  ƒ ˜¤¦£ãª
                Write   Channel 9   '"'
                Write   Channel 9   '04'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column N ’£ã£˜ (Segment)
                Write   Channel 9   sDeli // End of Excel Column O  „«˜ ¨ ¡ã ¤¦£ ¡ã ¦¤«æ««˜
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Left(Payresp.Presp_Name,35)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column P  î¤¦£˜ “§. ¢¨
                Move "" to s1
                If (Trim(Mid(Payresp.Presp_Name,35,36))<>"") Move ('"'+Trim(Mid(Payresp.Presp_Name,35,36))+'"') to s1
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   sDeli // End of Excel Column Q  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                Move "" to s1
                If (Trim(Mid(Payresp.Presp_Name,35,71))<>"") Move ('"'+Trim(Mid(Payresp.Presp_Name,35,71))+'"') to s1
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   sDeli // End of Excel Column R  ¢ã¨ª œ§à¤¬£å˜ §œ¢á«
                Write   Channel 9   sDeli // End of Excel Column S
                Write   Channel 9   sDeli // End of Excel Column T  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   Channel 9   sDeli // End of Excel Column U  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« ã «å«¢¦ª œ«˜ ¨å˜ª - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_Address))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column V  ›æª §œ¢á«
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_add_no))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column W  €¨ Ÿ£æª
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_Zipcode))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column X  ’.‰.
        
                Move "" to s1
                Clear Areas
                Move Payresp.Presp_Area to Areas.Area_id
                Find Eq Areas By Index.1
                Clear MIDHMOS
                Move (Trim(Areas.Area_Descr)) to MIDHMOS.Dhmos
                Find EQ MIDHMOS By Index.1
                If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                Else Begin
                    Set psNotFoundPrespDhmos to ("*** (Y) "+Trim(Areas.Area_Descr))
                    Move "ZZZZ"              to s1
                End
                Write   Channel 9   '"'
                Write   Channel 9   s1
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column Y  ƒã£¦ª
        
                Move "GR" to s1
                String sIsGreece
                Move s1 to sIsGreece
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column Z  •é¨˜
        
        
                Move "" to s1
                Clear Cities
                Move Payresp.Presp_City_ID to cities.City_id
                Find Eq Cities By Index.1
                Clear MINOMOS
                Move (Trim(Cities.City_Descr)) to MINOMOS.DESCR
                Find EQ MINOMOS By Index.2
                If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                Else Begin
                    Set psNotFoundPrespNomos to ("*** (AA) "+Trim(Cities.City_Descr))
                    Move "ZZZZ"              to s1
                End
                Write   Channel 9   '"'
                Write   Channel 9   s1
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AA Œ¦£æª
                Write   Channel 9   sDeli // End of Excel Column AB ƒ£¦« ¡ã „¤æ««˜
                Write   Channel 9   '"'
                Write   Channel 9   'EL'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AC ‚¢é©©˜
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_Phone))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AD ’¢â­à¤¦ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ «¢œ­é¤à¤ ©«¦ sheet Communication)
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_Mobile))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AE "‰ ¤«æ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ ¡ ¤«é¤ ©«¦ sheet Communication)
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_Fax))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AF Fax §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ fax ©«¦ sheet Communication)
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_email))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AG Email §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ e-mail ©«¦ sheet Communication)
                Write   Channel 9   sDeli // End of Excel Column AH ‘¬£§¢¨é¤œ«˜  ¦ reference ¡à› ¡æª §¨¦£Ÿœ¬«ã œá¤ ¦ §œ¢á«ª œå¤˜  ¡˜  §¨¦£Ÿœ¬«ãª
        
                Clear Codemast
                Move "JOB"              to Codemast.Type
                Move Payresp.Presp_Job to Codemast.Code
                Find Eq Codemast By Index.1
                Clear MIDRAST
                Move (Trim(Codemast.Description)) to MIDRAST.Descr
                Find Eq MIDRAST By Index.2
                If (Found) Move MIDRAST.Code to s1
                Else Begin
                    Set psNotFoundPrespDrast to ("*** (AI) "+Trim(Codemast.Description))
                    Move "ZZZZ" to s1
                End
                Write   Channel 9   '"'
                Write   Channel 9   s1
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AI ƒ¨˜©«¨ æ««˜ §œ¢á«
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Payresp.Presp_AFM))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AJ "€”‹ “§¦®¨œà« ¡æ š ˜ GR §œ¢á«œª
                Move ("EL"+Trim(Payresp.Presp_AFM)) to s1
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AK EL+€”‹ “§¦®¨œà« ¡æ š ˜ §œ¢á«œª „¬¨à§˜ä¡ãª ë¤à©ª
                Write   Channel 9   sDeli // End of Excel Column AL ƒ£¦« ¡ã „¤æ««˜
                Write   Channel 9   sDeli // End of Excel Column AM Sales Office
                Write   Channel 9   sDeli // End of Excel Column AN Sales Group
                Write   Channel 9   sDeli // End of Excel Column AO „¨š¦¢á™¦ª / ‹®˜¤ ¡æª
                Write   Channel 9   '"'
                Write   Channel 9   'EUR'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AP Œæ£ ©£˜ §é¢©ª
                Write   Channel 9   '"'
                Write   Channel 9   '1'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AQ ¨¦©› ¦¨åœ  «¤ › ˜› ¡˜©å˜ « £¦›æ«©ª
                Write   Channel 9   '"'
                Write   Channel 9   '1'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AR ¨¦©› ¦¨åœ  «¤ ¦£á›˜ ©«˜« ©« ¡é¤ §œ¢á«
                Write   Channel 9   '"'
                Write   Channel 9   '11'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AS ‘¬¤Ÿã¡ ˜§¦©«¦¢ãª
                Write   Channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª
                Write   Channel 9   sDeli // End of Excel Column AU ‘¬£§¢¨é¤œ«˜  œá¤  › ˜› ¡˜©å˜ « £¦›æ«©ª §¨˜š£˜«¦§¦ œå«˜  š ˜ «¦¤ §œ¢á«
                Write   Channel 9   sDeli // End of Excel Column AV Incoterms
                Write   Channel 9   sDeli // End of Excel Column AW î¨¦  ¢¨à£ãª
                Write   Channel 9   sDeli // End of Excel Column A• £˜›¦§¦å© š ˜ «¦¤ §¨¦©› ¦¨ ©£æ ¢¦š˜¨ ˜©£¦ç œ©æ›à¤
                Write   Channel 9   '"'
                Write   Channel 9   'GR'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AY •é¨˜ ­¦¨¦¢æš©ª
                Write   Channel 9   '"'
                Write   Channel 9   'MWST'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column A… ‰˜«š¦¨å˜ ­æ¨¦¬
                Write   Channel 9   '"'
                Write   Channel 9   '0'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column A ‰˜«š¦¨ ¦§¦å© ­æ¨¦¬
                Write   Channel 9   sDeli // End of Excel Column B €¨. ”¦¨«šé¤
                Write   Channel 9   sDeli // End of Excel Column C ¬Ÿ£æª ˜¨á›¦©ª
                Write   Channel 9   sDeli // End of Excel Column D ’˜®ç««˜ „¡­æ¨«à©ª
                Write   Channel 9   sDeli // End of Excel Column E „¢¢œ §âª ”¦¨«å¦
                Write   Channel 9   sDeli // End of Excel Column F ‹âš ©« ¦©æ««˜ ˜¨á›¦©ª
                Write   Channel 9   sDeli // End of Excel Column G ‰à› ¡æª ë¨š¦¬ œ¢á«
                Write   Channel 9   sDeli // End of Excel Column H €¨. ê›œ ˜ª ë¨š¦¬
                Write   Channel 9   sDeli // End of Excel Column I †£. ê›œ ˜ª ë¨š¦¬
                Write   Channel 9   '"'
                Write   Channel 9   '3000000000'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column J Š¦š˜¨ ˜©£æª ‘¬£­à¤å˜ª
                Write   Channel 9   '"'
                Write   Channel 9   'R02'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column K £˜›¦§¦å© §œ¢˜«é¤ š ˜ ©¡¦§¦çª cash flow
                Write   Channel 9   sDeli // End of Excel Column L ƒ ˜©ç¤›œ© ‰œ¤«¨ ¡é¤ - “§¦¡˜«á©«£˜. ‘¬£§¢¨é¤œ«˜  š ˜ æ¢˜ «˜ â¨š˜ (header Ship - to) ¡˜  ¬§¦ â¨š˜ (ship - to)
                Write   Channel 9   sDeli // End of Excel Column M ‹âŸ¦›¦ª §¢¨à£ãª
                Write   Channel 9   sDeli // End of Excel Column N Terms of Payment
                //---
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundPrespDhmos(Self)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundPrespNomos(Self)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundPrespTrPlh(Self)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundPrespDrast(Self)))
                Write   Channel 9   '"'
                //Write   Channel 9   sDeli
        
                //---
                Writeln Channel 9
        
                Find GT Payresp By Index.7
        
            Loop
        End_Procedure
        
        
        
        
        Procedure OutputCN String asClientID
            Clear CN
            Move asClientID to CN.Client_ID
            Find GE CN By Index.4 // Client_ID+CN_Code
            While ((Found) And (CN.Client_ID=asClientID))
        
                Set psNotFoundErgoDhmos to ""
                Set psNotFoundErgoNomos to ""
                Set psNotFoundErgoDrast to ""
                Set psNotFoundErgoTrPlh to ""
        
        
                //If (CN.CN_Code="01.AC.03565") Begin
                //    Showln "01.AC.03565"
                //End
        
                String sDeli
                Move "," to sDeli
                //---
                Write   Channel 9   '"'
                Write   Channel 9   'Y005'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(CN.CN_Code))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª „¨š¦¬
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(CN.Client_ID))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column D  ‰à›. œ¢á«
                Write   Channel 9   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   Channel 9   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                Write   Channel 9   sDeli // End of Excel Column G  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
        
                Clear Constrct
                Move CN.CN_Cnt_Recr to Constrct.Cnt_Recr
                Find Eq Constrct By Index.2
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Constrct.Cnt_ID))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column H  ¨åœ«˜  ¦ œ¨š¦¢á™¦ª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(CN.Mhxanik_ID))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
        
                Clear Salesmen
                Move CN.CN_Sls_Recr to Salesmen.Sls_Recr
                Find Eq Salesmen By Index.2
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Salesmen.Sls_ID))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
        
                Write   Channel 9   '"'
                Write   Channel 9   'GR02'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column K  ‰à› ¡æª „«˜ ¨å˜ª „¢¢á›˜ª
                Write   Channel 9   '"'
                Write   Channel 9   'GR02'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column L ¨š˜¤ ©£æª à¢ã©œà¤ „¢¢á›˜ª
                Write   Channel 9   '"'
                Write   Channel 9   '03'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column M ‰˜¤á¢  ƒ ˜¤¦£ãª
                Write   Channel 9   '"'
                Write   Channel 9   '04'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column N ’£ã£˜ (Segment)
                Write   Channel 9   sDeli // End of Excel Column O  „«˜ ¨ ¡ã ¤¦£ ¡ã ¦¤«æ««˜
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Left(CN.CN_Descr,35)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column P  œ¨ š¨˜­ „¨š¦¬
                String s1
                Move "" to s1
                If (Trim(Mid(CN.CN_Descr,35,36))<>"") Move ('"'+Trim(Mid(CN.CN_Descr,35,36))+'"') to s1
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   sDeli // End of Excel Column Q  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                Move "" to s1
                If (Trim(Mid(CN.CN_Descr,35,71))<>"") Move ('"'+Trim(Mid(CN.CN_Descr,35,71))+'"') to s1
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   sDeli // End of Excel Column R  ¢ã¨ª œ§à¤¬£å˜ §œ¢á«
                Write   Channel 9   sDeli // End of Excel Column S
                Write   Channel 9   sDeli // End of Excel Column T  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   Channel 9   sDeli // End of Excel Column U  ‘¬¤«¦£å˜ ¦¤æ£˜«¦ª §œ¢á« ã «å«¢¦ª œ«˜ ¨å˜ª - ®¨© £¦§¦ œå«˜  š ˜ š¨ãš¦¨ ˜¤˜ã«©
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(CN.CN_Address))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column V  ›æª §œ¢á«
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(CN.CN_add_no))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column W  €¨ Ÿ£æª
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(CN.CN_Zipcode))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column X  ’.‰.
        
                //If (CN.CN_Code="01.AC.03565") Begin
                //    Showln "01.AC.03565"
                //End
        
                Move "" to s1
                Clear Areas
                Move CN.CN_Area to Areas.Area_id
                Find Eq Areas By Index.1
                Clear MIDHMOS
                Move (Trim(Areas.Area_Descr)) to MIDHMOS.Dhmos
                Find EQ MIDHMOS By Index.1
                If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                Else Begin
                    Set psNotFoundErgoDhmos to ("*** (Y) "+Trim(Areas.Area_Descr))
                    Move "ZZZZ"             to s1
                End
                Write   Channel 9   '"'
                Write   Channel 9   s1
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column Y  ƒã£¦ª
        
                Move "GR" to s1
                String sIsGreece
                Move s1 to sIsGreece
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column Z  •é¨˜
        
                Move "" to s1
                Clear Cities
                Move CN.CN_City to cities.City_id
                Find Eq Cities By Index.1
                Clear MINOMOS
                Move (Trim(Cities.City_Descr)) to MINOMOS.DESCR
                Find EQ MINOMOS By Index.2
                If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                Else Begin
                    Set psNotFoundErgoNomos to ("*** (AA) "+Trim(Cities.City_Descr))
                    Move "ZZZZ"             to s1
                End
                Write   Channel 9   '"'
                Write   Channel 9   s1
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AA Œ¦£æª
                Write   Channel 9   sDeli // End of Excel Column AB ƒ£¦« ¡ã „¤æ««˜
                Write   Channel 9   sDeli // End of Excel Column AC ‚¢é©©˜
                Write   Channel 9   sDeli // End of Excel Column AD ’¢â­à¤¦ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ «¢œ­é¤à¤ ©«¦ sheet Communication)
                Write   Channel 9   sDeli // End of Excel Column AE "‰ ¤«æ §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ ¡ ¤«é¤ ©«¦ sheet Communication)
                Write   Channel 9   sDeli // End of Excel Column AF Fax §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ fax ©«¦ sheet Communication)
                Write   Channel 9   sDeli // End of Excel Column AG Email §œ¢á« (‰˜«˜®é¨© §œ¨ ©©æ«œ¨à¤ e-mail ©«¦ sheet Communication)
                Write   Channel 9   sDeli // End of Excel Column AH ‘¬£§¢¨é¤œ«˜  ¦ reference ¡à› ¡æª §¨¦£Ÿœ¬«ã œá¤ ¦ §œ¢á«ª œå¤˜  ¡˜  §¨¦£Ÿœ¬«ãª
                Write   Channel 9   sDeli // End of Excel Column AI ƒ¨˜©«¨ æ««˜ §œ¢á«
                Write   Channel 9   sDeli // End of Excel Column AJ "€”‹ “§¦®¨œà« ¡æ š ˜ GR §œ¢á«œª
                Write   Channel 9   sDeli // End of Excel Column AK EL+€”‹ “§¦®¨œà« ¡æ š ˜ §œ¢á«œª „¬¨à§˜ä¡ãª ë¤à©ª
                Write   Channel 9   sDeli // End of Excel Column AL ƒ£¦« ¡ã „¤æ««˜
        
                Clear Branch
                Move CN.Company_Code    to Branch.Company_Code
                Move CN.Branch_Code     to Branch.Branch_Code
                Find Eq Branch By Index.1
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Branch.Branch_Resp))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AM Sales Office
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Branch.Branch_Bitmap))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AN Sales Group
                Write   Channel 9   sDeli // End of Excel Column AO Customer Group „¨š¦¢á™¦ª / ‹®˜¤ ¡æª
                Write   Channel 9   '"'
                Write   Channel 9   'EUR'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AP Œæ£ ©£˜ §é¢©ª
                Write   Channel 9   '"'
                Write   Channel 9   '1'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AQ ¨¦©› ¦¨åœ  «¤ › ˜› ¡˜©å˜ « £¦›æ«©ª
                Write   Channel 9   '"'
                Write   Channel 9   '1'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AR ¨¦©› ¦¨åœ  «¤ ¦£á›˜ ©«˜« ©« ¡é¤ §œ¢á«
                Write   Channel 9   '"'
                Write   Channel 9   '11'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AS ‘¬¤Ÿã¡ ˜§¦©«¦¢ãª
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(Branch.Branch_Email))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AT „¨š¦©«á© ¦ «¨¦­¦› ©å˜ª
                Write   Channel 9   '"'
                Write   Channel 9   'X'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AU ‘¬£§¢¨é¤œ«˜  œá¤  › ˜› ¡˜©å˜ « £¦›æ«©ª §¨˜š£˜«¦§¦ œå«˜  š ˜ «¦¤ §œ¢á«
                Write   Channel 9   sDeli // End of Excel Column AV Incoterms
                Write   Channel 9   sDeli // End of Excel Column AW î¨¦  ¢¨à£ãª
                Write   Channel 9   sDeli // End of Excel Column A• £˜›¦§¦å© š ˜ «¦¤ §¨¦©› ¦¨ ©£æ ¢¦š˜¨ ˜©£¦ç œ©æ›à¤
                Write   Channel 9   '"'
                Write   Channel 9   'GR'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column AY •é¨˜ ­¦¨¦¢æš©ª
                Write   Channel 9   '"'
                Write   Channel 9   'MWST'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column A… ‰˜«š¦¨å˜ ­æ¨¦¬
                Write   Channel 9   '"'
                Write   Channel 9   '0'
                Write   Channel 9   '"'
                Write   Channel 9   sDeli // End of Excel Column A ‰˜«š¦¨ ¦§¦å© ­æ¨¦¬
                Write   Channel 9   sDeli // End of Excel Column B €¨. ”¦¨«šé¤
                Write   Channel 9   sDeli // End of Excel Column C ¬Ÿ£æª ˜¨á›¦©ª
                Write   Channel 9   sDeli // End of Excel Column D ’˜®ç««˜ „¡­æ¨«à©ª
        
                Move "" to s1
                Date dHm
                Move "31/12/2100" to dHm
                Clear BtnOrdH
                Move asClientID     to BtnOrdH.Client_ID
                Move CN.CN_Code     to BtnOrdH.CN_Code
                Move dHm            to BtnOrdH.Deop_Lhxh
                Move "ZZZZZZZZZZ"   to BtnOrdH.AA_Deop
                Move "ZZZZZZZZZZ"   to BtnOrdH.Recr
                Find LE BtnOrdH By Index.6
                If ((Found) And (BtnOrdH.Client_ID=asClientID) And (BtnOrdH.CN_Code=CN.CN_Code)) Begin
                    Move ('"'+String(Btnordh.Eleiph)+'"') to s1
                End
                Write   Channel 9   (Trim(s1))
                Write   Channel 9   sDeli // End of Excel Column E „¢¢œ §âª ”¦¨«å¦
        
                Write   Channel 9   sDeli // End of Excel Column F ‹âš ©« ¦©æ««˜ ˜¨á›¦©ª
                Write   Channel 9   sDeli // End of Excel Column G ‰à› ¡æª ë¨š¦¬ œ¢á«
                Write   Channel 9   sDeli // End of Excel Column H €¨. ê›œ ˜ª ë¨š¦¬
                Write   Channel 9   sDeli // End of Excel Column I †£. ê›œ ˜ª ë¨š¦¬
                Write   Channel 9   sDeli // End of Excel Column J Š¦š˜¨ ˜©£æª ‘¬£­à¤å˜ª
                Write   Channel 9   sDeli // End of Excel Column K £˜›¦§¦å© §œ¢˜«é¤ š ˜ ©¡¦§¦çª cash flow
                Write   Channel 9   sDeli // End of Excel Column L ƒ ˜©ç¤›œ© ‰œ¤«¨ ¡é¤ - “§¦¡˜«á©«£˜. ‘¬£§¢¨é¤œ«˜  š ˜ æ¢˜ «˜ â¨š˜ (header Ship - to) ¡˜  ¬§¦ â¨š˜ (ship - to)
                Write   Channel 9   sDeli // End of Excel Column M ‹âŸ¦›¦ª §¢¨à£ãª ???
                Write   Channel 9   sDeli // End of Excel Column N
                //---
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundErgoDhmos(Self)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundErgoNomos(Self)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundErgoTrPlh(Self)))
                Write   Channel 9   '"'
                Write   Channel 9   sDeli
        
                Write   Channel 9   '"'
                Write   Channel 9   (Trim(psNotFoundErgoDrast(Self)))
                Write   Channel 9   '"'
                //Write   Channel 9   sDeli
        
                //---
                Writeln Channel 9
        
        
        
                Send Output_Others
        
        
                Find GT CN By Index.4 // Client_ID+CN_Code
            Loop
        End_Procedure
        
        
        Procedure Output_Others
            String sDeli s1
            Move "," to sDeli
        
            Set psNotFoundMhxanDhmos to ""
            Set psNotFoundMhxanNomos to ""
            Set psNotFoundMhxanDrast to ""
            Set psNotFoundMhxanTrPlh to ""
        
            Set psNotFoundConstrDhmos to ""
            Set psNotFoundConstrNomos to ""
            Set psNotFoundConstrDrast to ""
            Set psNotFoundConstrTrPlh to ""
        
            Set psNotFoundSalesDhmos to ""
            Set psNotFoundSalesNomos to ""
            Set psNotFoundSalesDrast to ""
            Set psNotFoundSalesTrPlh to ""
        
            If (CN.Mhxanik_ID<>"") Begin
                Clear Mhxanik
                Move CN.Mhxanik_ID to Mhxanik.Mhx_ID
                Find Eq Mhxanik By Index.4
                If (Found) Begin
                    //---
                    Write   Channel 7   '"'
                    Write   Channel 7   '02'
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_ID))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                    Write   Channel 7   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                    Write   Channel 7   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                    Write   Channel 7   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Left(Mhxanik.Mhx_Name,35)))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column G  î¤¦£˜ “§. ¢¨
                    Move "" to s1
                    If (Trim(Mid(Mhxanik.Mhx_Name,35,36))<>"") Move ('"'+Trim(Mid(Mhxanik.Mhx_Name,35,36))+'"') to s1
                    Write   Channel 7   (Trim(s1))
                    Write   Channel 7   sDeli // End of Excel Column H  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                    Write   Channel 7   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                    Write   Channel 7   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_Address))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column K  ›æª §œ¢á«
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_add_no))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column L  €¨ Ÿ£æª
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_Zipcode))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column M  ’.‰.
        
                    Move "" to s1
                    Clear Areas
                    Move Mhxanik.Mhx_Area to Areas.Area_id
                    Find Eq Areas By Index.1
                    Clear MIDHMOS
                    Move (Trim(Areas.Area_Descr)) to MIDHMOS.Dhmos
                    Find EQ MIDHMOS By Index.1
                    If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                    Else Begin
                        Set psNotFoundMhxanDhmos to ("*** (N) "+Trim(Areas.Area_Descr))
                        Move "ZZZZ"              to s1
                    End
                    Write   Channel 7   '"'
                    Write   Channel 7   s1
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column N  ƒã£¦ª
        
                    Move "GR" to s1
                    String sIsGreece
                    Move s1 to sIsGreece
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(s1))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column O  •é¨˜
        
        
                    Move "" to s1
                    Clear Cities
                    Move Mhxanik.Mhx_City to cities.City_id
                    Find Eq Cities By Index.1
                    Clear MINOMOS
                    Move (Trim(Cities.City_Descr)) to MINOMOS.DESCR
                    Find EQ MINOMOS By Index.2
                    If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                    Else Begin
                        Set psNotFoundMhxanNomos to ("*** (P) "+Trim(Cities.City_Descr))
                        Move "ZZZZ"              to s1
                    End
                    Write   Channel 7   '"'
                    Write   Channel 7   s1
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column P
                    Write   Channel 7   sDeli // End of Excel Column Q
                    Write   Channel 7   sDeli // End of Excel Column R
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_Phone))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column S
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_Mobile))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column T
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_Fax))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column U
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_Email))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column V
                    Write   Channel 7   sDeli // End of Excel Column W
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(Mhxanik.Mhx_AFM))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column X
                    Write   Channel 7   '"'
                    Write   Channel 7   ("EL"+Trim(Mhxanik.Mhx_AFM))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli // End of Excel Column Y
                    Write   Channel 7   sDeli // End of Excel Column Z
                    Write   Channel 7   sDeli // End of Excel Column AA
                    //---
        
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(psNotFoundMhxanDhmos(Self)))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli
        
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(psNotFoundMhxanNomos(Self)))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli
        
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(psNotFoundMhxanTrPlh(Self)))
                    Write   Channel 7   '"'
                    Write   Channel 7   sDeli
        
                    Write   Channel 7   '"'
                    Write   Channel 7   (Trim(psNotFoundMhxanDrast(Self)))
                    Write   Channel 7   '"'
                    //Write   Channel 7   sDeli
        
                    //---
                    Writeln Channel 7
        
                End // If (Found) Begin
            End // If (CN.Mhxanik_ID<>"") Begin
        
        
        
            If (CN.CN_CNT_ID<>"") Begin
                Clear Constrct
                Move CN.CN_CNT_ID to Constrct.CNT_ID
                Find Eq Constrct By Index.5
                If (Found) Begin
                    //---
                    Write   Channel 8   '"'
                    Write   Channel 8   '03'
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_ID))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                    Write   Channel 8   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                    Write   Channel 8   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                    Write   Channel 8   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Left(Constrct.CNT_Name,35)))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column G  î¤¦£˜ “§. ¢¨
                    Move "" to s1
                    If (Trim(Mid(Constrct.CNT_Name,35,36))<>"") Move ('"'+Trim(Mid(Constrct.CNT_Name,35,36))+'"') to s1
                    Write   Channel 8   (Trim(s1))
                    Write   Channel 8   sDeli // End of Excel Column H  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                    Write   Channel 8   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                    Write   Channel 8   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_Address))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column K  ›æª §œ¢á«
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_add_no))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column L  €¨ Ÿ£æª
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_Zipcode))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column M  ’.‰.
        
                    Move "" to s1
                    Clear Areas
                    Move Constrct.CNT_Area to Areas.Area_id
                    Find Eq Areas By Index.1
                    Clear MIDHMOS
                    Move (Trim(Areas.Area_Descr)) to MIDHMOS.Dhmos
                    Find EQ MIDHMOS By Index.1
                    If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                    Else Begin
                        Set psNotFoundConstrDhmos to ("*** (N) "+Trim(Areas.Area_Descr))
                        Move "ZZZZ"              to s1
                    End
                    Write   Channel 8   '"'
                    Write   Channel 8   s1
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column N  ƒã£¦ª
        
                    Move "GR" to s1
                    Move s1 to sIsGreece
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(s1))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column O  •é¨˜
        
                    Move "" to s1
                    Clear Cities
                    Move Constrct.CNT_City to cities.City_id
                    Find Eq Cities By Index.1
                    Clear MINOMOS
                    Move (Trim(Cities.City_Descr)) to MINOMOS.DESCR
                    Find EQ MINOMOS By Index.2
                    If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                    Else Begin
                        Set psNotFoundConstrNomos to ("*** (P) "+Trim(Cities.City_Descr))
                        Move "ZZZZ"              to s1
                    End
                    Write   Channel 8   '"'
                    Write   Channel 8   s1
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column P
                    Write   Channel 8   sDeli // End of Excel Column Q
                    Write   Channel 8   sDeli // End of Excel Column R
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_Phone))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column S
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_Mobile))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column T
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_Fax))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column U
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_Email))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column V
                    Write   Channel 8   sDeli // End of Excel Column W
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(Constrct.CNT_AFM))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column X
                    Write   Channel 8   '"'
                    Write   Channel 8   ("EL"+Trim(Constrct.CNT_AFM))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli // End of Excel Column Y
                    Write   Channel 8   sDeli // End of Excel Column Z
                    Write   Channel 8   sDeli // End of Excel Column AA
                    //---
        
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(psNotFoundConstrDhmos(Self)))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli
        
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(psNotFoundConstrNomos(Self)))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli
        
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(psNotFoundConstrTrPlh(Self)))
                    Write   Channel 8   '"'
                    Write   Channel 8   sDeli
        
                    Write   Channel 8   '"'
                    Write   Channel 8   (Trim(psNotFoundConstrDrast(Self)))
                    Write   Channel 8   '"'
                    //Write   Channel 8   sDeli
        
                    //---
                    Writeln Channel 8
        
                End // If (Found) Begin
            End // If (CN.CN_CNT_ID<>"") Begin
        
        
        
            If (CN.CN_SLS_ID<>"") Begin
                Clear Salesmen
                Move CN.CN_SLS_ID to Salesmen.SLS_ID
                Find Eq Salesmen By Index.4
                If (Found) Begin
                    //---
                    Write   Channel 6   '"'
                    Write   Channel 6   '04'
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column B  £á›˜ Š¦š˜¨ ˜©£¦ç (§.®. §œ¢á«ª, Ship - to ¡¢§)
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_ID))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column C  ˜¢˜ æª ¡ç¨ ¦ª ¡à› ¡æª §œ¢á« SAP
                    Write   Channel 6   sDeli // End of Excel Column D  ‘¬£§¢¨é¤œ«˜  š ˜ «¦¬ª Ship - to
                    Write   Channel 6   sDeli // End of Excel Column E  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                    Write   Channel 6   sDeli // End of Excel Column F  ‘œ §œ¨å§«à© §¦¬ ¦ §¢¨à«ãª › ˜­â¨œ  ˜§æ «¦¤ Operational Customer, ©«¦¤ Operational ¦¨åœ«˜  ¦ §¢¨à«ãª
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Left(Salesmen.SLS_Name,35)))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column G  î¤¦£˜ “§. ¢¨
                    Move "" to s1
                    If (Trim(Mid(Salesmen.SLS_Name,35,36))<>"") Move ('"'+Trim(Mid(Salesmen.SLS_Name,35,36))+'"') to s1
                    Write   Channel 6   (Trim(s1))
                    Write   Channel 6   sDeli // End of Excel Column H  ‘¬£§¢¨à£˜« ¡æ §œ›å¦ ©œ §œ¨å§«à© §¦¬ £ã¡¦ª «¦¬ §œ›å¦¬ Name 1 ›œ¤ œå¤˜  œ§˜¨¡âª
                    Write   Channel 6   sDeli // End of Excel Column I  ¨åœ«˜  ¦ £®˜¤ ¡æª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ "Customer Master Records_GR Others"
                    Write   Channel 6   sDeli // End of Excel Column J  ¨åœ«˜  ¦ §à¢«ãª & ®¨© £¦§¦ œå«˜  ¦ ¡à› ¡æª §¦¬ â®œ  ¡˜«˜®à¨Ÿœå ©«¦ ˜¨®œå¦ £œ«á§«à©ª §à¢«é¤
        
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_Address))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column K  ›æª §œ¢á«
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_add_no))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column L  €¨ Ÿ£æª
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_Zipcode))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column M  ’.‰.
        
                    Move "" to s1
                    Clear Areas
                    Move Salesmen.SLS_Area to Areas.Area_id
                    Find Eq Areas By Index.1
                    Clear MIDHMOS
                    Move (Trim(Areas.Area_Descr)) to MIDHMOS.Dhmos
                    Find EQ MIDHMOS By Index.1
                    If (Found)  Move (Trim(MIDHMOS.Dhmos))  to s1
                    Else Begin
                        Set psNotFoundSalesDhmos to ("*** (N) "+Trim(Areas.Area_Descr))
                        Move "ZZZZ"              to s1
                    End
                    Write   Channel 6   '"'
                    Write   Channel 6   s1
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column N  ƒã£¦ª
        
                    Move "GR" to s1
                    Move s1 to sIsGreece
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(s1))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column O  •é¨˜
        
                    Move "" to s1
                    Clear Cities
                    Move Salesmen.SLS_City to cities.City_id
                    Find Eq Cities By Index.1
                    Clear MINOMOS
                    Move (Trim(Cities.City_Descr)) to MINOMOS.DESCR
                    Find EQ MINOMOS By Index.2
                    If (Found)  Move (Trim(MINOMOS.CODE)) to s1
                    Else Begin
                        Set psNotFoundSalesNomos to ("*** (P) "+Trim(Cities.City_Descr))
                        Move "ZZZZ"              to s1
                    End
                    Write   Channel 6   '"'
                    Write   Channel 6   s1
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column P
                    Write   Channel 6   sDeli // End of Excel Column Q
                    Write   Channel 6   sDeli // End of Excel Column R
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_Phone))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column S
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_Mobile))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column T
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_Fax))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column U
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_Email))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column V
                    Write   Channel 6   sDeli // End of Excel Column W
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(Salesmen.SLS_AFM))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column X
                    Write   Channel 6   '"'
                    Write   Channel 6   ("EL"+Trim(Salesmen.SLS_AFM))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli // End of Excel Column Y
                    Write   Channel 6   sDeli // End of Excel Column Z
                    Write   Channel 6   sDeli // End of Excel Column AA
                    //---
        
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(psNotFoundSalesDhmos(Self)))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli
        
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(psNotFoundSalesNomos(Self)))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli
        
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(psNotFoundSalesTrPlh(Self)))
                    Write   Channel 6   '"'
                    Write   Channel 6   sDeli
        
                    Write   Channel 6   '"'
                    Write   Channel 6   (Trim(psNotFoundSalesDrast(Self)))
                    Write   Channel 6   '"'
                    //Write   Channel 6   sDeli
        
                    //---
                    Writeln Channel 6
        
                End // If (Found) Begin
            End // If (CN.CN_SLS_ID<>"") Begin
        
        
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub5

    Object frmFileName is a FormSub

        //AB-StoreTopStart
                                                                                                                                                                                        
        //AB-StoreTopEnd

        Set Size to 13 187
        Set Location to 282 111
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Value Item 0 to "C:\TitanMig\ExcCust.csv"

        //AB-StoreStart
                                                                                                                                                                                        
        Procedure Prompt
            Boolean bSave
            String sFileTitle sFileName
            Get Show_Dialog Of (SaveAsDialog1(Self)) To bSave
            If (bSave) Begin
                Get File_Title Of (SaveAsDialog1(Self)) To sFileTitle
                Get File_Name  Of (SaveAsDialog1(Self)) To sFileName
                Set Value Of frmFileName Item 0 To sFileName
            End
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // frmFileName

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "î¤¦£˜ ˜¨®œå¦¬"
        Set Auto_Size_State to FALSE
        Set Location to 282 55
        Set Size to 10 56
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object SaveAsDialog1 is a SaveAsDialog
        Set Location to 250 28

        //AB-StoreStart
        //Show_Dialog is a predefined function method in the SaveAsDialog class
        //get Show_Dialog to an integer variable to call the SaveAsDialog
        //
        //DoCallSaveAsDialog is NOT a predefined method in the SaveAsDialog class
        //DoCallSaveAsDialog it is just used an example
        //you can send DoCallSaveAsDialog from another object, such as a button
        //
        //Procedure DoCallSaveAsDialog
        //    integer iVoid
        //    get Show_Dialog of SaveAsDialog1 to iVoid
        //End_Procedure  // DoCallSaveAsDialog
        //AB-StoreEnd

    End_Object    // SaveAsDialog1

    Object ButtonSub6 is a ButtonSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "Zerofile and Rebuild MINOMOS-MIDHMOS-MIDRAST"
        Set Size to 14 201
        Set Location to 350 101
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Procedure OnClick
            Open MINOMOS Mode DF_EXCLUSIVE
            Open MIDHMOS Mode DF_EXCLUSIVE
            Open MIDRAST Mode DF_EXCLUSIVE
            Zerofile MINOMOS
            Zerofile MIDHMOS
            Zerofile MIDRAST
            Open MINOMOS Mode DF_SHARE
            Open MIDHMOS Mode DF_SHARE
            Open MIDRAST Mode DF_SHARE
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // ButtonSub6


    //AB-StoreStart
            
    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get MSG_Activate_View to rVal
    
        SEND IGNORE_ERROR TO ERROR_INFO_OBJECT 4358
        Make_Directory "C:\TitanMig"
        SEND TRAP_ERROR TO ERROR_INFO_OBJECT 4358
    
    //    Open MINOMOS Mode DF_EXCLUSIVE
    //    Open MIDHMOS Mode DF_EXCLUSIVE
    //    Open MIDRAST Mode DF_EXCLUSIVE
    //    Zerofile MINOMOS
    //    Zerofile MIDHMOS
    //    Zerofile MIDRAST
    //    Open MINOMOS Mode DF_SHARE
    //    Open MIDHMOS Mode DF_SHARE
    //    Open MIDRAST Mode DF_SHARE
    //    Send Fill_The_Files
        Procedure_Return rVal
    End_Procedure
    
    //Procedure Fill_The_Files
    //    String File_Dhmoi File_Nomoi File_Drasthr vs1 vs2
    
    //    Move "C:\TitanMig\NomoiNP.txt"  to File_Nomoi
    //    Move "C:\TitanMig\DhmoiNP.txt"  to File_Dhmoi
    //    Move "C:\TitanMig\DrasthNP.txt" to File_Drasthr
    
    
    //    Direct_Input Channel 8 File_Dhmoi
    //    Readln Channel 8 vs1
    //    While (Not(Seqeof))
    //        Clear MIDHMOS
    //        Move (Trim(ToOEM(vs1))) to MIDHMOS.Dhmos
    //        Saverecord MIDHMOS
    //        //--
    //        Readln Channel 8 vs1
    //    Loop
    //    Close_Output Channel 8
    
    
    //    Direct_Input Channel 8 File_Nomoi
    //    Readln Channel 8 vs1 vs2
    //    While (Not(Seqeof))
    //        Move (Replaces("á",vs2 ,"˜" ))  to vs2
    //        Move (Replaces("ê",vs2 ,"€" ))  to vs2
    //        Move (Replaces("â",vs2 ,"œ" ))  to vs2
    //        Move (Replaces("ë",vs2 ,"„" ))  to vs2
    //        Move (Replaces("å",vs2 ," " ))  to vs2
    //        Move (Replaces("í",vs2 ,"ˆ" ))  to vs2
    //        Move (Replaces("ã",vs2 ,"" ))  to vs2
    //        Move (Replaces("ì",vs2 ,"†" ))  to vs2
    //        Move (Replaces("æ",vs2 ,"¦" ))  to vs2
    //        Move (Replaces("î",vs2 ,"" ))  to vs2
    //        Move (Replaces("é",vs2 ,"à" ))  to vs2
    //        Move (Replaces("ğ",vs2 ,"—" ))  to vs2
    //        Move (Replaces("ç",vs2 ,"¬" ))  to vs2
    //        Move (Replaces("ï",vs2 ,"“" ))  to vs2
    //        //--
    //        Move (Uppercase(vs2))           to vs2
    //        //--
    //        Clear MINOMOS
    //        Move (Trim(vs1)) to MINOMOS.Code
    //        Move (Trim(vs2)) to MINOMOS.Descr
    //        Saverecord  MINOMOS
    //        //--
    //        Readln Channel 8 vs1 vs2
    //    Loop
    //    Close_Output Channel 8
    
    
    //    Direct_Input Channel 8 File_Drasthr
    //    Readln Channel 8 vs1 vs2
    //    While (Not(Seqeof))
    //        Move (Replaces("á",vs2 ,"˜" ))  to vs2
    //        Move (Replaces("ê",vs2 ,"€" ))  to vs2
    //        Move (Replaces("â",vs2 ,"œ" ))  to vs2
    //        Move (Replaces("ë",vs2 ,"„" ))  to vs2
    //        Move (Replaces("å",vs2 ," " ))  to vs2
    //        Move (Replaces("í",vs2 ,"ˆ" ))  to vs2
    //        Move (Replaces("ã",vs2 ,"" ))  to vs2
    //        Move (Replaces("ì",vs2 ,"†" ))  to vs2
    //        Move (Replaces("æ",vs2 ,"¦" ))  to vs2
    //        Move (Replaces("î",vs2 ,"" ))  to vs2
    //        Move (Replaces("é",vs2 ,"à" ))  to vs2
    //        Move (Replaces("ğ",vs2 ,"—" ))  to vs2
    //        Move (Replaces("ç",vs2 ,"¬" ))  to vs2
    //        Move (Replaces("ï",vs2 ,"“" ))  to vs2
    //        //--
    //        Move (Uppercase(vs2))           to vs2
    //        //--
    //        Clear MIDRAST
    //        Move (Trim(ToANSI(vs1))) to MIDRAST.Code
    //        Move (Trim(ToANSI(vs2))) to MIDRAST.Descr
    //        Saverecord  MIDRAST
    //        //--
    //        Readln Channel 8 vs1 vs2
    //    Loop
    //    Close_Output Channel 8
    
    
    //End_Procedure
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Migrate1


//AB-StoreStart
                
                
                
                
                
                
                
                
                
                
                
                
//AB-StoreEnd

//AB/ End_Object    // prj
