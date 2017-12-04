//AB/ Project SAP1
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "SAP1"
//AB/     Set ProjectFileName to "SAP1.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   SAP1 is a dbViewSubS
//     Baxiokat_DD is a DataDictionary
//     frmApo is a cSyDateForm
//     frmEos is a cSyDateForm
//     Textbox1 is a Textbox
//     frmBranch is a FormSub
//     frmBranchDescr is a Form
//     cboPlace is a ComboFormSub
//     otxtBaxiokat is a TextBoxSub
//     dblstBaxiokat is a dbListSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     frmShow is a ButtonSub
//     TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Baxiokat_DD
Register_Object ButtonSub1
Register_Object cboPlace
Register_Object dblstBaxiokat
Register_Object frmApo
Register_Object frmBranch
Register_Object frmBranchDescr
Register_Object frmEos
Register_Object frmShow
Register_Object otxtBaxiokat
Register_Object SAP1
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Textbox1


//AB/ AppBuild VIEW


//AB-StoreTopStart

Use sl002.sl
Open Barticl
Open Bmove
Open Baxio
Open Branch

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use cSyDateForm.Pkg
Use Form.Sub
Use Cmbfrm.Sub
Use Txtbox.Sub
Use dbList.Sub
Use Button.Sub

Use BAXIOKAT.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_SAP1 FOR ;
;
Object SAP1 is a dbViewSubS
    Set Label to "Ñ•òö‡ö„ ASCII ò®ÆúÂ¶¨ Ä•†¶ö®·≠‡§ ö†ò SAP"
    Set Size to 268 309
    Set Location to 6 13

    //AB-DDOStart

    Object Baxiokat_DD is a Baxiokat_DataDictionary

        //AB-StoreStart
                                                                                                                
        Function fiIsOK Returns Integer
            If ((Baxiokat.Baxiokat_Code= 1) Or ;
                (Baxiokat.Baxiokat_Code= 2) Or ;
                (Baxiokat.Baxiokat_Code=10)) Function_Return 1
            Function_Return 0
        End_Function
        
        Procedure OnConstrain
            Constrain Baxiokat as (fiIsOK(Self)=1)
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Baxiokat_DD

    Set Main_DD to (Baxiokat_DD(self))
    Set Server to (Baxiokat_DD(self))

    //AB-DDOEnd

    Object frmApo is a cSyDateForm
        Set Size to 13 66
        Set Location to 12 8
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmApo

    Object frmEos is a cSyDateForm
        Set Size to 13 66
        Set Location to 12 82
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmEos

    Object Textbox1 is a Textbox
        Set Label to "ìß¶°ò´·©´û£ò"
        Set Location to 31 8
        Set Size to 10 52
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox1

    Object frmBranch is a FormSub
        Set Size to 13 66
        Set Location to 42 9
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                
        Set Prompt_Object to (sl002(Self))
        
        Procedure Prompt_Callback integer hPrompt
            set Export_Column       Of hPrompt  to 0
            Set Initial_Column      Of hPrompt  to 0
            Set psFragmaCompanyCode Of hPrompt  to SyscurXr.Company_Code
        End_procedure
        
        procedure onchange
            string sbranch
            get value item 0 to sbranch
            clear branch
            move syscurxr.company_code to branch.company_code
            move sbranch               to branch.branch_code
            find eq branch by index.1
            if (found=1) set value of (frmBranchDescr(self)) to branch.branch_name
            else         set value of (frmBranchDescr(self)) to ''
        end_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // frmBranch

    Object frmBranchDescr is a Form
        Set Size to 13 149
        Set Location to 42 81

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // frmBranchDescr

    Object cboPlace is a ComboFormSub
        Set Size to 14 149
        Set Location to 62 81
        Set Label_Col_Offset to 2

        //AB-StoreStart
                                                                                                                
        Procedure Combo_Fill_List
            string stype
            move 'BAXIOPLACE' To Stype
            Clear Codemast
            move stype to Codemast.type
            Find Ge codemast by index.1
            While ((Found) and (codemast.type=stype))
                Send Combo_Add_Item (Trim(Codemast.code)+' - '+ Trim(Codemast.description))
                Find Gt codemast by index.1
            Loop
        End_procedure
        
        
        //AB-StoreEnd

    End_Object    // cboPlace

    Object otxtBaxiokat is a TextBoxSub
        Set Label to "Ñß†¢¶ö„ ´Áß‡§ ò•†¶ö®·≠‡§"
        Set Location to 84 8
        Set Size to 10 101
        Set FontWeight to 600
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // otxtBaxiokat

    Object dblstBaxiokat is a dbListSub
        Set Main_File to Baxiokat.File_Number
        Set Ordering to 1
        Set Size to 133 288
        Set Location to 95 8
        Set Color to 15263976
        Set CurrentCellColor to 14205112
        Set Highlight_Row_State to FALSE
        Set Auto_Index_State to FALSE
        Set Auto_Column_State to FALSE
        Set Move_Value_Out_State to FALSE
        Set Auto_Export_State to FALSE
        Set Auto_Shadow_State to FALSE
        Set Find_Search_State to FALSE
        Set Select_Mode to Multi_Select

        Begin_Row
            Entry_Item ('')
            Entry_Item Baxiokat.Baxiokat_code
            Entry_Item Baxiokat.Baxiokat_descr
        End_Row

        Set Form_Width    item 0 to 15
        Set Header_Label  item 0 to ""
        
        Set Form_Width    item 1 to 42
        Set Header_Label  item 1 to "Ñ†õ¶™"
        
        Set Form_Width    item 2 to 226
        Set Header_Label  item 2 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
                                                                                                                
        Set Select_Mode                     to Multi_Select
        Set Column_Option           item 0  to Noenter False
        Set Column_checkBox_state   item 0  to true
        Set Auto_Shadow_State               to False
        Set Auto_Index_State                to False
        Set Popup_Search_State              to True
        Set Find_Search_State               to False
        
        Set Color                           to 15263976
        Set TextColor                       to clWindowText
        Set CurrentRowColor                 to 14205112
        Set Highlight_row_color             to 14205112
        Set CurrentRowTextColor             to clWindowText
        Set CurrentCellColor                to 14205112
        Set CurrentCellTextColor            to clBtnText
        
        
        Procedure Toggle_Select
            Local integer iBase iOffset iCol
            Move 0 to iOffset
            Set Enabled_State of ButtonSub1 to False
            Get Base_Item to iBase
            Get Current_Col to iCol
            Forward Send Toggle_Select
            Send DoDisplayCheckBox (iBase+iOffset) (Select_State(self,iBase))
            Set Dynamic_Update_State to true
            If (Select_Count(dblstbaxiokat(Self)) Gt 0)  Set Label of (buttonSub1(self)) to "Ä§òÂ®ú©û £ò®°ò®Â©£ò´¶™ ´‡§ úöö®ò≠È§"
            else                                        Set Label of (buttonSub1(self)) to "ãò®°·®†©£ò Ê¢‡§ ´‡§ úöö®ò≠È§"
            Set Dynamic_Update_State to true
            Set Enabled_State of ButtonSub1 to True
        End_Procedure  //Toggle_Select
        
        Procedure Entry_Display Integer i1 Integer i2
            Local integer iBase iOffset iSelItemsID bState
            Get base_Item to iBase
            move 0 to iOffset
            move (Selected_Items(self)) to iSelItemsID
            Forward Send Entry_Display i1 i2
            Get find_element of iSelItemsID baxiokat.recnum to bState
            Send DoDisplayCheckBox (iBase+iOffset) (bState<>-1)
        End_Procedure // Entry_Display
        
        
        //AB-StoreEnd

    End_Object    // dblstBaxiokat

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Äß¶"
        Set Location to 1 8
        Set Size to 10 15
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "Ñ‡™"
        Set Location to 1 84
        Set Size to 10 15
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "AutoCopen.bmp"
        Set Size to 20 23
        Set Location to 229 273
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set TooltipValue to 'Ñ•òö‡ö„ ©´¶ ò®ÆúÂ¶'
        
        // Grapsimo ton Epitagon
        // 24/03/2004 Ena arxeio xexoristo ana hmera
        // me onoma Pxxxxmmdd opou xxxx=Branch.Sap_Code mm=mhnas dd=hmera
        Procedure Write_Record_L1
            Number  nPoso
            Integer iDecs iLen iInt iPos iLength iDiafora
            Integer rVal iMhnas iEtos iHmera
            String  sPoso sHmnia sid sMhnas sHmera sBranchSAP sFileName
            Date    dHmnia
        
            Clear Branch
            Move Barticl.Company_Code       to Branch.Company_Code
            Move Barticl.Branch_Code        to Branch.Branch_Code
            Find Eq Branch By Index.1
            Move Branch.Sap_Code            to sBranchSap
            Move Bmove.Barticl_Hmnia        to dHmnia
            Move (TheDaySegment  (dHmnia))  to iHmera
            Move (TheMonthSegment(dHmnia))  to iMhnas
            Move iHmera                     to sHmera
            Move iMhnas                     to sMhnas
            If (Length(sHmera)=1) Insert '0' in sHmera at 1
            If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
            Move ('C:\'+'P'+Trim(sBranchSAP)+Trim(sMhnas)+Trim(sHmera)) to sFileName
            
            Append_Output Channel 9 sFileName
        
            move '' to sid
            Write   Channel 9 (Pad('L1'                                 , 2))
            Write   Channel 9 (Pad('YDI1'                               , 4))
            Move Bmove.Barticl_Hmnia        to sHmnia
            Move (Replaces('/',sHmnia,''))  to sHmnia
            Write   Channel 9 (Pad(sHmnia                               , 8))
            Write   Channel 9 (Pad(Trim(Branch.Sap_code)                , 4))
            Write   Channel 9 (Pad(Baxio.Baxio_C_Code2                  , 3))
        
            If (Trim(Barticl.Barticl_Code1)<>'') ;
                 move Barticl.Barticl_Code1 to sid
            Else move Baxio.BAXIO_CODE_IN to sid
        
            Move (ToAnsi(sID))  to sID // Convert to ELOT 928
        
            Mid sid to sid 10 4
            move (trim(sid)) to sid
            Write   Channel 9 (Pad(sid                                  ,10))
        
            Move (Round_Number(Baxio.Baxio_V2,2))   to nPoso
            Move nPoso                              to sPoso
            
            Move (Trim(sPoso))                      to sPoso
            Move (Pos('.',sPoso))   to iPos
            Move (Length(sPoso))    to iLength
            Move (iLength-iPos)     to iDiafora

            If (Pos('.',sPoso)=0) Append sPoso '.00'
            Else Begin         
                // An exei mono 1 dekadiko prepei na prosthesoume ena '0' sto telos
                If (iDiafora=1) Move (Append(sPoso,'0')) to sPoso
            End

        
            // 24/03/2004 allagh. Ta dekadika einai panta ta 2 teleytaia
            // psifia ara h teleia feygei
            Move (Replace('.',sPoso,'')) to sPoso
        
            
            Move (Length(sPoso))                    to iLen
            For iInt From 1 to (16-iLen)
                Move (Insert(" ", sPoso,1))         to sPoso
            Loop
            Write   Channel 9 (Pad(sPoso                                ,16))


            Write   Channel 9 (Pad(Baxio.Baxio_No                       ,10))
            Write   Channel 9 (Pad(Baxio.Baxio_Banka                    , 2))
            Move Baxio.Baxio_HmniaL         to sHmnia
            Move (Replaces('/',sHmnia,''))  to sHmnia
            Write   Channel 9 (Pad(sHmnia                               , 8))
        
            If (Baxio.Baxio_Topos='0');
                 Write   Channel 9 (ToAnsi('Ä'))
            Else If (Baxio.Baxio_Topos='1');
                 Write   Channel 9 (ToAnsi('Ñ'))
            Else Write   Channel 9 '?'
        
            If (Baxio.Baxio_From='0');
                 Write   Channel 9 (ToAnsi('à'))
            Else If (Baxio.Baxio_From='1');
                 Write   Channel 9 (ToAnsi('í'))
            Else Write   Channel 9 '?'
        
            Move Barticl.Barticl_No                 to sPoso
            Move (Trim(sPoso))                      to sPoso
            Move (Length(sPoso))                    to iLen
            For iInt From 1 to (10-iLen)
                Move (Insert(" ", sPoso,1))         to sPoso
            Loop
            Write   Channel 9 (Pad(sPoso                                ,10))
        
            If (Trim(Barticl.Barticl_Epon1)<>'') ;
                 Write   Channel 9 (Pad(ToAnsi(Barticl.Barticl_Epon1)   ,35))
            Else Write   Channel 9 (Pad(ToAnsi(Baxio.BAXIO_EPON_IN)     ,35))
            Writeln Channel 9
        
            Close_Output Channel 9
        End_Procedure
        
        
        // Grapsimo ton Synallagmatikon
        // 24/03/2004 Ena arxeio xexoristo ana hmera
        // me onoma Sxxxxmmdd opou xxxx=Branch.Sap_Code mm=mhnas dd=hmera
        Procedure Write_Record_L2
            Number  nPoso
            Integer iDecs iLen iInt iPos iLength iDiafora
            Integer rVal iMhnas iEtos iHmera
            String  sPoso sHmnia sid sMhnas sHmera sBranchSAP sFileName
            Date    dHmnia
        
            Clear Branch
            Move Barticl.Company_Code       to Branch.Company_Code
            Move Barticl.Branch_Code        to Branch.Branch_Code
            Find Eq Branch By Index.1
            Move Branch.Sap_Code            to sBranchSap
            Move Bmove.Barticl_Hmnia        to dHmnia
            Move (TheDaySegment  (dHmnia))  to iHmera
            Move (TheMonthSegment(dHmnia))  to iMhnas
            Move iHmera                     to sHmera
            Move iMhnas                     to sMhnas
            If (Length(sHmera)=1) Insert '0' in sHmera at 1
            If (Length(sMhnas)=1) Insert '0' in sMhnas at 1
            Move ('C:\'+'S'+Trim(sBranchSAP)+Trim(sMhnas)+Trim(sHmera)) to sFileName
            Append_Output Channel 8 sFileName
        
            move '' to sid
            Write   Channel 8 (Pad('L2'                                 , 2))
            Write   Channel 8 (Pad('YDI1'                               , 4))
            Move Bmove.Barticl_Hmnia        to sHmnia
            Move (Replaces('/',sHmnia,''))  to sHmnia
            Write   Channel 8 (Pad(sHmnia                               , 8))
            Write   Channel 8 (Pad(Trim(Branch.Sap_code)                , 4))
            Write   Channel 8 (Pad(Baxio.Baxio_C_Code2                  , 3))
        
            If (Trim(Barticl.Barticl_Code1)<>'') ;
                 move Barticl.Barticl_Code1 to sid
            Else move Baxio.BAXIO_CODE_IN to sid
        
            Move (ToAnsi(sID)) to sID
        
            mid sid to sid 10 4
            move (trim(sid)) to sid
            Write   Channel 8 (Pad(sid                                  ,10))
            Move (Round_Number(Baxio.Baxio_V2,2))   to nPoso
            Move nPoso                              to sPoso
            Move (Trim(sPoso))                      to sPoso
            Move (Pos('.',sPoso))   to iPos
            Move (Length(sPoso))    to iLength
            Move (iLength-iPos)     to iDiafora

            If (Pos('.',sPoso)=0) Append sPoso '.00'
            Else Begin         
                // An exei mono 1 dekadiko prepei na prosthesoume ena '0' sto telos
                If (iDiafora=1) Move (Append(sPoso,'0')) to sPoso
            End

        
            // 24/03/2004 allagh. Ta dekadika einai panta ta 2 teleytaia
            // psifia ara h teleia feygei
            Move (Replace('.',sPoso,'')) to sPoso
        
            
            Move (Length(sPoso))                    to iLen
            For iInt From 1 to (16-iLen)
                Move (Insert(" ", sPoso,1))         to sPoso
            Loop
            Write   Channel 8 (Pad(sPoso                                ,16))

            Write   Channel 8 (Pad(Baxio.Baxio_No                       , 5))
            Write   Channel 8 (Pad(Barticl.Barticl_Code2                ,20))
            Move Baxio.Baxio_HmniaL         to sHmnia
            Move (Replaces('/',sHmnia,''))  to sHmnia
            Write   Channel 8 (Pad(sHmnia                               , 8))
            If (Baxio.Baxio_From='0');
                 Write   Channel 8 (ToAnsi('à'))
            Else If (Baxio.Baxio_From='1');
                 Write   Channel 8 (ToAnsi('í'))
            Else Write   Channel 8 '?'

            Move Barticl.Barticl_No                 to sPoso
            Move (Trim(sPoso))                      to sPoso
            Move (Length(sPoso))                    to iLen
            For iInt From 1 to (10-iLen)
                Move (Insert(" ", sPoso,1))         to sPoso
            Loop
            Write   Channel 8 (Pad(sPoso                                ,10))
            If (Trim(Barticl.Barticl_Epon1)<>'') ;
                 Write   Channel 8 (Pad(ToAnsi(Barticl.Barticl_Epon1)   ,35))
            Else Write   Channel 8 (Pad(ToAnsi(Baxio.BAXIO_EPON_IN)     ,35))
            Writeln Channel 8
        
            Close_Output Channel 8
        End_Procedure
        
        Procedure OnClick
            String  sFile sBranch sText sBaxiokatRecr sFile2
            String  sCompany sRec sLabel sPlace
            Date    dApo dEos
            Integer iInt iCount iRec iMet iPos iPlaceCode
        
            Get Value Of frmApo         Item 0 to dApo
            Get Value Of frmEos         Item 0 to dEos
            Get Value Of frmBranch      Item 0 to sBranch
            Get Value of cboPlace       Item 0 to sPlace
            Move (Trim(sBranch))               to sBranch
            Get Select_Count Of dblstbaxiokat  to iInt
        
            If (Trim(sPlace)<>'') Begin
                Move (Pos('-',sPlace)) to iPos
                Move (Trim(Left(sPlace,(iPos-1)))) to iPlaceCode
            End
            Else Move -1 to iPlaceCode
        
            If (Trim(sBranch)<>'') Begin
                Clear Branch
                Move SyscurXr.Company_Code  to Branch.Company_Code
                Move sBranch                to Branch.Branch_Code
                Find Eq Branch By Index.1
                If (Not(Found)) Begin
                    Send Info_Box 'í¶ úß†¢úö£‚§¶ ¨ß¶°ò´·©´û£ò õú§ ¨ß·®Æú†' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
            End
        
            If (dApo='') Begin
                Send Info_Box 'Ü û£ú®¶£û§Âò òß¶ úÂ§ò† °ú§„' 'è¢û®¶≠¶®Âò'
                Send Activate to frmApo
                Procedure_Return
            End
            If (dEos='') Begin
                Send Info_Box 'Ü û£ú®¶£û§Âò ú‡™ úÂ§ò† °ú§„' 'è¢û®¶≠¶®Âò'
                Send Activate to frmEos
                Procedure_Return
            End
            If (dApo>dEos) Begin
                Send Info_Box 'Ü û£ú®¶£û§Âò ú‡™ úÂ§ò† £†°®Ê´ú®û òß¶ ´û§ ò®Æ†°„' 'è¢û®¶≠¶®Âò'
                Send Activate to frmEos
                Procedure_Return
            End
        
            If (iInt=0) Begin
                Send Info_Box 'Éú§ úß†¢‚•ò´ú °ò§‚§ò ´Áß¶ ò•†¶ö®·‡§' 'è¢û®¶≠¶®Âò'
                Procedure_Return
            End
        
            Get Label Of frmShow    to sLabel
            Set Enabled_State   to True
            Move 0              to iMet
        
            Move '' to sText
            For iCount From 0 to (iInt-1)
                Get Array_Value of (Selected_Items(dblstbaxiokat(self))) Item iCount to iRec
                Clear Baxiokat
                Move iRec to Baxiokat.Recnum
                Find Eq Baxiokat.Recnum
                move Baxiokat.Baxiokat_Recr                      to sBaxiokatRecr
                move (Append(sText,'#'+Trim(sBaxiokatRecr)+'#')) to sText
            Loop
        
            Clear Bmove
            Lock
            If (sBranch<>'') Begin
                Move SyscurXr.Company_Code  to Bmove.Company_Code
                Move sBranch                to Bmove.Branch_Code
                Move SyscurXr.Year_Year     to Bmove.Year_Year
                Move dApo                   to Bmove.Barticl_Hmnia
                Find Gt Bmove By Index.5
                While ((Found               =1                    )   And ;
                       (Bmove.Company_Code  =SyscurXr.Company_Code)   And ;
                       (Bmove.Branch_Code   =sBranch              )   And ;
                       (Bmove.Year_Year     =SyscurXr.Year_Year   )   And ;
                       (Bmove.Barticl_Hmnia<=dEos                 ))
                    Add 1 to iMet
                    Set Label Of frmShow to (String(iMet)+'-'+String(Bmove.Barticl_Hmnia))
                    Relate Bmove
                    If ( ((iPlaceCode=(-1)) Or (Baxio.Baxio_Place=iPlaceCode)) And (Btypkin.Vtypkin_Code=1)) Begin
                        // 24/05/2003 To pedio Btypkin.Vtypkin_Code xrhshmopoihtai gia
                        // na xeroume an symmetexei sthn exagogh SAP. Yparxei sto Data entry View
                        // tou Btypkin kai to xreiazomaste gia na xexorisoume ta alepallhla Bmoves
                        // pou dhmiourgountai p.x. 1) Eispraxh epitaghs, 2) metabibash sta kentrika
                        // 3) exoflhsh axiografou. Aytes oi kinhseis einai oles me typo axiografou 1
                        // (eispraktees epitages) opote bgainan epi 3 oi eggrafes sth gefyra me to SAP
                        // Dedomenou oti to soma tou axiografou meta thn 3h kinhsh exei to idio place
                        // kai status me ayta pou epivalontai apo thn teleytaia kinhsh pou egine.
                        Move (Trim('#'+Trim(Baxiokat.Baxiokat_Recr)+'#')) to sRec
                        If ((sText Contains sRec) And ((Baxiokat.Baxiokat_Code=1) Or (Baxiokat.Baxiokat_Code=10))) Send Write_Record_L1
                        If ((sText Contains sRec) And  (Baxiokat.Baxiokat_Code=2)) Send Write_Record_L2
                    End
        
                    Find Gt Bmove By Index.5
                Loop
            End
            Else Begin
                Move SyscurXr.Company_Code  to Bmove.Company_Code
                Move SyscurXr.Year_Year     to Bmove.Year_Year
                Move dApo                   to Bmove.Barticl_Hmnia
                Find Gt Bmove By Index.8
                While ((Found               =1                    )   And ;
                       (Bmove.Company_Code  =SyscurXr.Company_Code)   And ;
                       (Bmove.Year_Year     =SyscurXr.Year_Year   )   And ;
                       (Bmove.Barticl_Hmnia<=dEos                 ))
                    Add 1 to iMet
                    Set Label Of frmShow to (String(iMet)+'-'+String(Bmove.Barticl_Hmnia))
                    Relate Bmove
                    If ( ((iPlaceCode=(-1)) Or (Baxio.Baxio_Place=iPlaceCode)) And (Btypkin.Vtypkin_Code=1)) Begin
                        Move (Trim('#'+Trim(Baxiokat.Baxiokat_Recr)+'#')) to sRec
                        If ((sText Contains sRec) And ((Baxiokat.Baxiokat_Code=1) Or (Baxiokat.Baxiokat_Code=10))) Send Write_Record_L1
                        If ((sText Contains sRec) And  (Baxiokat.Baxiokat_Code=2)) Send Write_Record_L2
                    End
                    Find Gt Bmove By Index.8
                Loop
            End
            Unlock
        
            Send Clear                  to Baxiokat_DD
            Send Rebuild_Constraints    to Baxiokat_DD
            Send Beginning_Of_Data      to dblstBaxiokat
            Set Enabled_State       to True
            Set Label Of frmShow    to sLabel
            Send Info_Box 'Ü ú•òö‡ö„ ©´¶†ÆúÂ‡§ ¶¢¶°¢û®Èüû°ú\náò ô®úÂ´ú ´ò ò®ÆúÂò ©´¶ C:/\nãú ´û§ £¶®≠„ Pxxxxmmdd „ Sxxxxmmdd' 'è¢û®¶≠¶®Âò'
        
        End_Procedure // OnClick
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object frmShow is a ButtonSub
        Set Size to 14 257
        Set Location to 234 8
        Set Border_Style to Border_StaticEdge
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
        
        End_Procedure // OnClick
        //AB-StoreEnd

    End_Object    // frmShow

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "á‚©û"
        Set Location to 63 53
        Set Size to 10 21
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3


    //AB-StoreStart
                    
    //Procedure Activate_View Returns Integer
    //    Integer rVal
    //    Forward Get Msg_Activate_View to rVal
    //    Procedure_Return rVal
    //End_Procedure
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // SAP1


//AB-StoreStart



//AB-StoreEnd

//AB/ End_Object    // prj
