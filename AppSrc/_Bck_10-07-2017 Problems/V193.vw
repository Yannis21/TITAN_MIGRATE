//AB/ Project V193:DEOP pelaton-ergon
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V193:DEOP pelaton-ergon"
//AB/     Set ProjectFileName to "V193.vw"
//AB/     Set GenerateFileName to "V193.vw"

// Project Object Structure
//   V193 is a dbViewSubs
//     Baxiokat_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Tperga_DD is a DataDictionary
//     Btnordh_DD is a DataDictionary
//     Btnordd_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       Btnordh_Client_Id is a dbFormSub
//       Btnordh_Cn_Code is a dbFormSub
//       TextBoxSub9 is a TextBoxSub
//       Btnordh_Aa_Deop is a dbFormSub
//       Btnordh_Deop_Date is a dbFormSub
//       Btnordh_Deop_Lhxh is a dbFormSub
//       Btnordh_Eleiph is a dbFormSub
//       Btnordh_Velxr is a dbComboFormSub
//       ButtonSub1 is a ButtonSub
//       Btnordh_Deop_Active is a dbCheckBoxSub
//       Clients_Client_Name is a dbFormSub
//       Cn_Cn_Descr is a dbFormSub
//       Btnordh_Locked is a dbCheckBoxSub
//       TextBoxSub10 is a TextBoxSub
//       Btnordh_Sxolia is a dbEditSub
//       TextBoxSub11 is a TextBoxSub
//       Payresp_Presp_Id is a dbFormSub
//       Payresp_Presp_Name is a dbFormSub
//       TextBoxSub12 is a TextBoxSub
//       ButtonSub2 is a ButtonSub
//       TextBoxSub13 is a TextBoxSub
//       ButtonSub3 is a ButtonSub
//       Btnactive is a ButtonSub
//       TextBoxSub14 is a TextBoxSub
//       Btncopy is a ButtonSub
//       TextBoxSub15 is a TextBoxSub
//       Textbox1 is a Textbox
//       Textbox2 is a Textbox
//       Btnordh_Statero is a dbCheckBoxSub
//       ButtonSub4 is a ButtonSub
//       ButtonSub5 is a ButtonSub
//       Btnektyp is a ButtonSub
//       ButtonSub6 is a ButtonSub
//       TextBoxSub21 is a TextBoxSub
//       Btnordh_Timeout is a dbFormSub
//     The_Table is a dbGrid
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     item_descr is a FormSub
//     TextBoxSub17 is a TextBoxSub
//     Btnordh_Date_Create is a dbFormSub
//     Tperga_ is a dbGridSub
//     TextBoxSub18 is a TextBoxSub
//     TextBoxSub19 is a TextBoxSub
//     Clients_Hpso is a dbFormSub
//     TextBoxSub20 is a TextBoxSub
//     Clients_Hpal is a dbFormSub

// Register all objects
Register_Object Areas_DD
Register_Object Baxiokat_DD
Register_Object Btnactive
Register_Object Btncopy
Register_Object Btnektyp
Register_Object Btnordd_DD
Register_Object Btnordh_Aa_Deop
Register_Object Btnordh_Client_Id
Register_Object Btnordh_Cn_Code
Register_Object Btnordh_Date_Create
Register_Object Btnordh_DD
Register_Object Btnordh_Deop_Active
Register_Object Btnordh_Deop_Date
Register_Object Btnordh_Deop_Lhxh
Register_Object Btnordh_Eleiph
Register_Object Btnordh_Locked
Register_Object Btnordh_Statero
Register_Object Btnordh_Sxolia
Register_Object Btnordh_Timeout
Register_Object Btnordh_Velxr
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object ButtonSub5
Register_Object ButtonSub6
Register_Object Cities_DD
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Clients_Hpal
Register_Object Clients_Hpso
Register_Object Cn_Cn_Descr
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Container1
Register_Object Country_DD
Register_Object item_descr
Register_Object Mhxanik_DD
Register_Object Payresp_DD
Register_Object Payresp_Presp_Id
Register_Object Payresp_Presp_Name
Register_Object Salesmen_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object The_Table
Register_Object Towns_DD
Register_Object Tperga_
Register_Object Tperga_DD
Register_Object V193


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open Witemx
Open Payterms
Open BtnOrdH
Use BtnOrdH.DD
Open BTNORDH
Open BTNORDHL
Open BTNORDD
Open BTNORDDL
use btnordh.sl
open item
open iteml
Use ItemL.DD
use v193a.vw
use r193_1.rv
use doCOPY.pkg
use vwclients.vw
use v041.vw
use v111.vw
use sl100.sl
use sl041.sl
use v193v.vw
open syscurxr

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbForm.Sub
Use dbCmbfrm.Sub
Use Button.Sub
Use dbChkbox.Sub
Use dbEdit.Sub
Use Form.Sub
Use dbGrid.Sub

Use BAXIOKAT.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use CONSTRCT.DD
Use SALESMEN.DD
Use MHXANIK.DD
Use CN.DD
Use TPERGA.DD
Use BTNORDH.DD
Use BTNORDD.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V193 FOR V193

Object V193 is a dbViewSubs

    //AB-StoreTopStart
    Property string     PSCLIENT    public ''
    property string     psCnCode    public ''
    property integer    piepil      public 0
    property integer    pibtn       public 0
    Property String     psModule    public ''
    property integer    pirecnum    public 0
    property date       pddate      public ''
    property string     psdeop      public ''
    
    function fsqual string code returns string
         string squal
         clear iteml
         move code to iteml.item_code
         find eq iteml by index.5
         move iteml.item_qual to squal
    //     clear itemL
         function_return squal
    end_Function
    
    //AB-StoreTopEnd

    Set Label to "��᢬�� ����  ���᫞-�����  �.�.�.�"
    Set Size to 285 529
    Set Location to 2 1

    //AB-DDOStart

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))

        //AB-StoreStart
        
        
        
        //AB-StoreEnd

    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))

        //AB-StoreStart
        
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreStart
        
        Set piCheckPlaf to 0
        
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))

        //AB-StoreStart
        
        Set piCheckPlaf to 0
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
    End_Object    // Cn_DD

    Object Tperga_DD is a Tperga_DataDictionary

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set DDO_Server to (Cn_DD(self))
        Set DDO_Server to (Baxiokat_DD(self))
        Set Constrain_File to Cn.File_Number

        //AB-StoreStart
        
        Procedure Request_Save
            Integer iCode iTPErgaHPAL iPosa30 iResta iAdd iTPErgaHPSO iDeikths iRec
            String  sPayTerms sNewTPCN sPTCodeCN sVal1 sVal2
        
            Get Field_Current_Value Of BtnOrdH_DD Field BtnOrdH.Recnum to iRec
        
            Forward Send Request_Save
        
            If (iRec>0) Begin
                If ((Baxiokat.Baxiokat_Code = 1) And (TPErga.Xarhtos_Meres =0)  And ;
                                                     (TPErga.Plhroteo_Meres=0)) Begin
                    Close BtnOrdH
                    Open BtnOrdH Mode DF_EXCLUSIVE
        
                    Clear BtnOrdH
                    Move iRec to BtnOrdH.Recnum
                    Find Eq BtnOrdH.Recnum
                    If (Found) Begin
                        Reread BtnOrdH
                        Move (trim("K000")) to BtnOrdH.TimeOut
                        Saverecord BtnOrdH
                        Unlock
                    End
        
                    Close BtnOrdH
                    Open BtnOrdH Mode DF_SHARE
                    Send Find_By_Recnum Of BtnOrdH_DD BtnOrdH.File_Number iRec
                End
                Else Begin
                    If ((Baxiokat.Baxiokat_Code = 1) And (TPErga.Xarhtos_Meres  >0)  And ;
                                                         (TPErga.Plhroteo_Meres>=0)) Begin
                        Move 30                                         to iTPErgaHPAL
                        Move (Integer(TPErga.Plhroteo_Meres/30))        to iPosa30
                        Move (Mod(TPErga.Plhroteo_Meres,30))            to iResta
                        If (iResta>0)   Move 30                         to iAdd
                        Else            Move  0                         to iAdd
                        Move ((iPosa30*30)+iAdd)                        to iTPErgaHPSO
                        Move (String(iTPErgaHPAL)+String(iTPErgaHPSO))  to sNewTPCN
                        Move (iTPErgaHPSO/30) to iDeikths
        
                        Get Cell_Value Of xxx 0 iDeikths to sVal1
                        Get Cell_Value Of xxx 1 iDeikths to sVal2
        
                        Clear PayTerms
                        Move (Trim(sVal1)) to PayTerms.PayTerms_Code
                        Find Eq PayTerms By Index.1
                        If (Not(Found)) Begin
                            Error 8888 "��� ����� �� ��� ���� �⦬� ��槦�� ������"
                            Procedure_Return
                        End
        
                        Close BtnOrdH
                        Open BtnOrdH Mode DF_EXCLUSIVE
        
                        Clear BtnOrdH
                        Move iRec to BtnOrdH.Recnum
                        Find Eq BtnOrdH.Recnum
                        If (Found) Begin
                            Reread BtnOrdH
                            Move (trim(sVal1)) to BtnOrdH.TimeOut
                            Saverecord BtnOrdH
                            Unlock
                        End
        
                        Close BtnOrdH
                        Open BtnOrdH Mode DF_SHARE
                        Send Find_By_Recnum Of BtnOrdH_DD BtnOrdH.File_Number iRec
                    End
                End
            End
        End_Procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Tperga_DD

    Object Btnordh_DD is a Btnordh_DataDictionary

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set DDO_Server to (Cn_DD(self))
        Set Constrain_File to Cn.File_Number

        //AB-StoreStart
        
        Function Validate_Save  Returns Integer
            Local Integer iReturnVal
            date ddate
            Forward Get Validate_Save  To iReturnVal
            If (Not(iReturnVal)) Begin
               if (btnordh.DEOP_DATE gt btnordh.DEOP_LHXH) error 3322 '��������� 뤘���� > ��������� �㥞�'
            end
            Function_Return iReturnVal
        End_Function   // Validate_Save
        
        Procedure Save_Main_File
            String  sTP
            integer ilocked ibtn iOrigin
            date    ddate
            Move Operation_Origin to iOrigin
            Get pibtn to ibtn
            Get Field_Current_Value Of BtnOrdH_DD Field Btnordh.Timeout to sTP
            get field_current_value of btnordh_dd field btnordh.locked to ilocked
        
            If (ilocked=0) Begin
        //        If ((iOrigin=BtnOrdH_DD(Self)) And (Trim(sTP)="")) Begin
        //           Send Info_Box "�� �⦠ 樦� ������ ��� �夘� ��������⤦�.\n������ �� ��ᨥ�� ��晢��� ���� �⭬��� SAP\n�� ������ �� ����������� ���� ��� ���� �⦬� 樦�� ������" "-- ������� --"
        //        End
                Forward Send Save_Main_File
            End
            else if (ilocked=1 and ibtn=1) Forward Send Save_Main_File
            Else Send Info_Box "�� �.�.�.� �夘� ������⤦.\n��� �����⧦���� ������"  "���������"
        End_Procedure
        
        Procedure Delete_Main_File
            integer ilocked ibtn
            get pibtn to ibtn
            get field_current_value of btnordh_dd field btnordh.locked to ilocked
            If (ilocked=0) Forward Send delete_Main_File
            else if (ilocked=1 and ibtn=1) Forward Send delete_Main_File
            Else Send Info_Box  "�� �.�.�.� �夘� ������⤦.\n��� �����⧦���� ������" "���������"
        End_Procedure
        
        Procedure Creating
            Integer iCode iTPClientHPAL iPosa30 iResta iAdd iTPClientHPSO iTPErgaHPAL iTPErgaHPSO iDeikths
            String  sPayTerms sNewTPCN sPTCodeCN sCNCode sClientTP sNewTP sVal1 sVal2
        
            Forward Send Creating
        
            Move "" to sNewTP
            Move "" to sNewTPCN
        
            If (Trim(Clients.Polh_recr)<>"") Move (Trim(Clients.Polh_recr)) to sClientTP
        
        
            Move (Trim(CN.CN_Code)) to sCNCode
        
            Clear TPErga
            Move sCNCode to TPErga.CN_Code
            Move 1       to TPErga.Baxiokat_Code
            Find GE TPErga By Index.1
            If ((Found) And (CN.CN_Code=TPErga.CN_Code) And (TPErga.Baxiokat_Code=1)) begin
                Move 30 to iTPErgaHPAL
                Move (Integer(TPErga.Plhroteo_Meres/30)) to iPosa30
                Move (Mod    (TPErga.Plhroteo_Meres,30)) to iResta
                If (iResta>0)   Move 30     to iAdd
                Else            Move  0     to iAdd
                Move ((iPosa30*30)+iAdd)    to iTPErgaHPSO
                Move (String(iTPErgaHPAL)+String(iTPErgaHPSO)) to sNewTPCN
                Move (iTPErgaHPSO/30) to iDeikths
            End
        
            If (Trim(sNewTPCN)<>"") Begin
        
                Get Cell_Value Of xxx 0 iDeikths to sVal1
                Get Cell_Value Of xxx 1 iDeikths to sVal2
        
                Clear PayTerms
                Move (Trim(sVal1)) to PayTerms.PayTerms_Code
                Find Eq PayTerms By Index.1
                If (Not(Found)) Begin
                    Error 8888 "��� ����� �� ��� ���� �⦬� ��槦�� ������"
                    Procedure_Return
                End
                Move (Trim(sVal1)) to Btnordh.Timeout
            End
            Else Move (Trim(sClientTP)) to BtnOrdH.TimeOut
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Btnordh_DD

    Object Btnordd_DD is a Btnordd_DataDictionary

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set DDO_Server to (Btnordh_DD(self))
        Set Constrain_File to Btnordh.File_Number

        //AB-StoreStart
        
        Function Validate_Save  Returns Integer
            Local Integer iReturnVal
            Integer iErrorObj iRetval iRecnum
            String  sClient sCN sItem sDeop sStr
            Date    dStart dHmnia
            Forward Get Validate_Save  To iReturnVal
            If (Not(iReturnVal)) Begin
               // Insert Code Here
               clear iteml
               move btnordd.vitem to iteml.item_code
               find eq iteml by index.5
               if (not(found)) Begin
                    Clear ItemL
                    error 4444 '��� ��ᨮ�� �� �囦� ��� ����� ����'
               End
        
        
                clear Witemx
                Move SyscurXr.Company_Code  to Witemx.Company_Code
                Move SyscurXr.Branch_Code   to Witemx.Branch_Code
                Move SyscurXr.Year_Year     to Witemx.Year_Year
                move BtnordD.Vitem         to Witemx.Witemx_code
                find eq Witemx by index.5
                If (Witemx.Not_To_Be_Used=1) Error  7775 ("�� �囦� <"+Trim(Witemx.Witemx_Code)+"> ⮜� ���������������\n��� �����嫜 �� �� ����������㩜��")
        
               Clear ItemL
               If (btnordd.vunitprice=0) error 4443 '��� �����⧜��� �����騞�� �� ���� ���ᛦ� = 0'
        ///////////////////////////
                Move '' to sStr
                Move Clients.Client_ID to sClient
                Move CN.CN_Code        to sCn
                Move Btnordd.Vitem     to sItem
                Move Btnordd.Vorderbt  to sDeop
                Move Btnordh.Deop_Date to dStart
                Move Btnordh.Recnum    to iRecnum
        
                Clear BtnorddL
                Move sClient    to BtnorddL.Vclient_ID
                Move sCN        to BtnorddL.Vcn_Code
                Move 0          to BtnorddL.Vactive
                Move sItem      to BtnorddL.Vitem
                Move 9999999999 to BtnorddL.Recnum
                Find Lt BtnorddL by index.3
                If  ((Found=1) And (BtnorddL.Vclient_ID=sClient) And (BtnorddL.Vcn_Code=sCN) And  ;
                                   (BtnorddL.Vactive   =0)       And (BtnorddL.Vitem=sItem)  And  ;
                                   (BtnorddL.Deop_Date>=dStart)) Begin
                    // An to teleytaio record pou vriskei einai o eaytos tou
                    // me ton index ayton, na girisei ena akoma piso.
                    If (BtnorddL.Vorderbt=sDeop) Begin
                        Find Lt BtnorddL by index.3
                        If  ((Found=1) And (BtnorddL.Vclient_ID=sClient) And (BtnorddL.Vcn_Code=sCN) And  ;
                                           (BtnorddL.Vactive   =0)       And (BtnorddL.Vitem=sItem)  And  ;
                                           (BtnorddL.Deop_Date>=dStart)) Begin
                            Clear BtnOrddL
                            Append sStr '�� �囦� ���� ��ᨮ�� ��� ������ ���� ' (Trim(BtnorddL.Vorderbt)) ' �� �㥞 ' (String(BtnorddL.Deop_Date))
                            Append sStr '\n� �����騞�� ��� �囦�� ��� �����⧜��� ��� ����餜���' //'\n���㩫� F5 ���� �� ���� �㤬��.'
                            error 8000 sStr
                        End
                    End
                    Else Begin
                        Clear BtnOrddL
                        Append sStr '�� �囦� ���� ��ᨮ�� ��� ������ ���� ' (Trim(BtnorddL.Vorderbt)) ' �� �㥞 ' (String(BtnorddL.Deop_Date))
                        Append sStr '\n� �����騞�� ��� �囦�� ��� �����⧜��� ��� ����餜���' //'\n���㩫� F5 ���� �� ���� �㤬��.'
                        error 8000 sStr
                    End
                End
                Clear BtnOrddL
        ///////////////////////////
           End
        
           Function_Return iReturnVal
        End_Function   // Validate_Save
        
        Procedure Save_Main_File
            integer ilocked ibtn
            get pibtn to ibtn
            get field_current_value of btnordh_dd field btnordh.locked to ilocked
            If (ilocked=0) Forward Send Save_Main_File
            else if (ilocked=1 and ibtn=1) Forward Send Save_Main_File
            Else Send Info_Box "�� �.�.�.� �夘� ������⤦.\n��� �����⧦���� ������" "���������"
        End_Procedure
        
        Procedure Delete_Main_File
            integer ilocked ibtn
            get pibtn to ibtn
            get field_current_value of btnordh_dd field btnordh.locked to ilocked
            If (ilocked=0) Forward Send delete_Main_File
            else if (ilocked=1 and ibtn=1) Forward Send delete_Main_File
            Else Send Info_Box  "�� �.�.�.� �夘� ������⤦.\n��� �����⧦���� ������" "���������"
        End_Procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Btnordd_DD

    Set Main_DD to (Btnordh_DD(self))
    Set Server to (Btnordh_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 108 518
        Set Location to 2 4
        Object TextBoxSub5 is a TextBoxSub
            Set Label to "���.���᫞"
            Set Location to 4 3
            Set Size to 10 45
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "���.�����"
            Set Location to 18 3
            Set Size to 10 45
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object Btnordh_Client_Id is a dbFormSub
            Entry_Item Clients.Client_id
            Set Server to (Tperga_DD(self))
            Set Size to 13 128
            Set Location to 2 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Prompt_Object to (sl100(Current_object))
            Procedure Prompt_Callback integer hPrompt
                Local String lsValue
                set Export_Column of hPrompt to 0
                Set Initial_Column of hPrompt to 0
            end_procedure
            
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(v193(Self)))
                Forward Send Prompt
            End_Procedure
            
            Procedure Key Integer iKey
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Btnordh_Client_Id

        Object Btnordh_Cn_Code is a dbFormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Entry_Item Cn.Cn_code
            Set Server to (Tperga_DD(self))
            Set Size to 13 128
            Set Location to 18 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Prompt_Object to (sl041(Current_object))
            
            Procedure Prompt_Callback integer hPrompt
                set Export_Column of hPrompt to 0
                Set Initial_Column of hPrompt to 0
            end_procedure
            
            procedure prompt
                string scode
                get value of (btnordh_client_id(container1(self))) to scode
                if (scode<>'') set fragmaclient_id of (sl041(self)) to scode
                forward send prompt
                set fragmaclient_id of (sl041(self)) to ''
            end_procedure
            
            
            Procedure Key Integer iKey
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // Btnordh_Cn_Code

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "��/��  '�������"
            Set Location to 63 3
            Set Size to 10 57
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub9

        Object Btnordh_Aa_Deop is a dbFormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Entry_Item Btnordh.Aa_deop
            Set Size to 13 128
            Set Location to 47 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            On_Key Key_Alt+Key_O Send RE_OPEN
            On_Key Key_Alt+Key_C Send RE_CLOSE
            
            Set Prompt_Object to (btnordh(Current_object))
            
            Procedure Prompt_Callback integer hPrompt
                Local String lsValue
                set Export_Column of hPrompt to 0
                Set Initial_Column of hPrompt to 0
            end_procedure
            
            Procedure Key Integer iKey
            End_Procedure
            
            Procedure Prompt
                string sid scn
                get value of (btnordh_client_id(container1(self))) to sid
                get value of (btnordh_cn_code(container1(self))) to scn
                if (sid<>'') set psclient of (btnordh(Current_object)) to sid
                if (scn<>'') set pscn of (btnordh(Current_object)) to scn
                Forward Send Prompt
                set psclient of (btnordh(Current_object)) to ''
                set pscn of (btnordh(Current_object)) to ''
            End_Procedure
            
            procedure Refresh Integer iMode
                Forward Send Refresh iMode
                integer irecnum
                get field_current_value of btnordh_dd field btnordh.recnum to irecnum
                Set Enabled_State Of (buttonsub1(container1(self))) to (irecnum=0)
                Set Enabled_State Of (buttonsub3(container1(self))) to (btnordh.locked=0)
                Set Enabled_State Of (btnactive(container1(self)))  to ((btnordh.locked=1) And (btnordh.deop_active=0))
                Set Enabled_State Of (btncopy(container1(self)))    to ((btnordh.locked=1) And (btnordh.deop_active=0))
                set enabled_state of (the_table(self))              to (btnordh.recr<>'')
                set enabled_state of (btnektyp(self))               to (btnordh.recr<>'')
            End_procedure
            
            
            Procedure RE_OPEN
                integer iactive retval irecnum
                string srecr sdeop sitem msgstr scn sclient
                get yesno_box "�⢜�� ���������� �� ���奜� �� �.�.�.� ?? " to retval
                If (RetVal =MBR_yes) begin
                    get field_current_value of btnordh_dd field btnordh.recnum to irecnum
                    if (irecnum) begin
                        set pibtn to 1
                        set field_current_value of btnordh_dd field btnordh.locked to 0
                        begin_transaction
                            indicate err false
                            While (found=1)
                                set field_changed_value of btnordd_dd field btnordd.vactive    to 1
                                send request_save to btnordd_dd
                                send find to btnordd_dd next_record 1
                            loop
                            set field_changed_value of btnordh_dd field btnordh.locked to 0
                            set field_changed_value of btnordh_dd field btnordh.deop_active to 1
                            send request_save to btnordh_dd
                        end_transaction
                        send clear to btnordd_dd
                    end
                    set pibtn to 0
                    Send Find_By_Recnum to btnordh_DD btnordh.File_Number iRecnum
                end
            
            End_Procedure // OnClick
            
            Procedure RE_CLOSE
                integer iactive retval irecnum
                string srecr sdeop sitem msgstr scn sclient
                get yesno_box "�⢜�� ���������� �� �����驜� �� �.�.�.� ?? " to retval
                If (RetVal =MBR_yes) begin
                    get field_current_value of btnordh_dd field btnordh.recnum to irecnum
                    if (irecnum) begin
                        send find to btnordd_dd first_record 1
                        if (not(found)) begin
                            error 3003 '��� ⮜�� ������⤘ �回 ��� �.�.�.�'
                            procedure_return
                        end
                        set pibtn to 1
                        set field_current_value of btnordh_dd field btnordh.locked to 1
                        begin_transaction
                            indicate err false
                            While (found=1)
                                set field_changed_value of btnordd_dd field btnordd.vactive    to 0
                                send request_save to btnordd_dd
                                send find to btnordd_dd next_record 1
                            loop
                            set field_changed_value of btnordh_dd field btnordh.locked to 1
                            set field_changed_value of btnordh_dd field btnordh.deop_active to 0
                            send request_save to btnordh_dd
                        end_transaction
                        send clear to btnordd_dd
                    end
                    else error 3004 '��� �� ������ �.�.�.�'
                    set pibtn to 0
                    Send Find_By_Recnum to btnordh_DD btnordh.File_Number iRecnum
                end
            
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // Btnordh_Aa_Deop

        Object Btnordh_Deop_Date is a dbFormSub
            Entry_Item Btnordh.Deop_date
            Set Size to 13 62
            Set Location to 62 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Btnordh_Deop_Date

        Object Btnordh_Deop_Lhxh is a dbFormSub
            Entry_Item Btnordh.Deop_lhxh
            Set Size to 13 66
            Set Location to 62 183
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Btnordh_Deop_Lhxh

        Object Btnordh_Eleiph is a dbFormSub
            Entry_Item Btnordh.Eleiph
            Set Size to 13 31
            Set Location to 62 434
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Btnordh_Eleiph

        Object Btnordh_Velxr is a dbComboFormSub
            Entry_Item Btnordh.Velxr
            Set Size to 13 41
            Set Location to 61 470
            Set Label_Col_Offset to 2
        End_Object    // Btnordh_Velxr

        Object ButtonSub1 is a ButtonSub
            Set Label to "ButtonSub2"
            Set Bitmap to "eddoc_m.bmp"
            Set Size to 22 23
            Set Location to 84 2
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set tooltipvalue to '������� �⦬ �.�.�.�'
            Procedure OnClick
                string sclient scn
                get field_current_value of clients_dd field clients.client_id to sclient
                get field_current_value of cn_dd field cn.cn_code to scn
                if (scn<>'' and sclient<>'') begin
                    set field_changed_value of btnordh_dd field btnordh.aa_deop to 0
                    send request_save to btnordh_dd
                end
                else error 3300 '��� �� ������ ������� ⨚��'
            End_Procedure // OnClick
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object Btnordh_Deop_Active is a dbCheckBoxSub
            Entry_Item Btnordh.Deop_active
            Set Size to 10 11
            Set Location to 52 266
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Btnordh_Deop_Active

        Object Clients_Client_Name is a dbFormSub
            Entry_Item Clients.Client_name
            Set Size to 13 287
            Set Location to 1 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Clients_Client_Name

        Object Cn_Cn_Descr is a dbFormSub
            Entry_Item Cn.Cn_descr
            Set Size to 13 287
            Set Location to 17 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Cn_Cn_Descr

        Object Btnordh_Locked is a dbCheckBoxSub
            Entry_Item Btnordh.Locked
            Set Size to 10 13
            Set Location to 65 266
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Btnordh_Locked

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "�����.������"
            Set Location to 33 3
            Set Size to 10 58
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub10

        Object Btnordh_Sxolia is a dbEditSub
            Entry_Item Btnordh.Sxolia
            Set Size to 28 366
            Set Location to 76 63
        End_Object    // Btnordh_Sxolia

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "��梠�"
            Set Location to 75 34
            Set Size to 10 26
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub11

        Object Payresp_Presp_Id is a dbFormSub
            Entry_Item Payresp.Presp_id
            Set Size to 13 128
            Set Location to 33 63
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            
            //AB-StoreEnd

        End_Object    // Payresp_Presp_Id

        Object Payresp_Presp_Name is a dbFormSub
            Entry_Item Payresp.Presp_name
            Set Size to 13 287
            Set Location to 32 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Payresp_Presp_Name

        Object TextBoxSub12 is a TextBoxSub
            Set Label to "���. �.�.�.�"
            Set Location to 48 3
            Set Size to 10 45
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub12

        Object ButtonSub2 is a ButtonSub
            Set Label to "ButtonSub4"
            Set Bitmap to "AssForm.bmp"
            Set Size to 21 24
            Set Location to 84 29
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set TooltipValue to "�������� ��� ����� �.�.�.�  ���᫞-�����"
            
            Procedure OnClick
                Integer iRec icheck
                string  sclient scn
                Get Field_Current_Value Of clients_dd Field clients.client_id to sclient
                Get Field_Current_Value Of cn_dd      Field cn.cn_code        to scn
                Set psclient of (v193a(self)) to sclient
                set pscn     of (v193a(self)) to scn
                Send activate_v193a
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "������⤦"
            Set Location to 65 277
            Set Size to 10 41
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub13

        Object ButtonSub3 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub3"
            Set Bitmap to "autocopen.bmp"
            Set Size to 23 25
            Set Location to 52 320
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            set tooltipvalue to '����ࣘ �.�.�.�'
            
            Procedure OnClick
                integer iactive retval irecnum
                string srecr sdeop sitem msgstr scn sclient
                get yesno_box "�⢜�� ���������� �� �����驜� �� �.�.�.� ?? " to retval
                If (RetVal =MBR_yes) begin
                    get field_current_value of btnordh_dd field btnordh.recnum to irecnum
                    if (irecnum) begin
                        send find to btnordd_dd first_record 1
                        if (not(found)) begin
                            error 3003 '��� ⮜�� ������⤘ �回 ��� �.�.�.�'
                            procedure_return
                        end
                        set pibtn to 1
                        set field_current_value of btnordh_dd field btnordh.locked to 1
                        begin_transaction
                            indicate err false
                            While (found=1)
                                set field_changed_value of btnordd_dd field btnordd.vactive    to 0
                                send request_save to btnordd_dd
                                send find to btnordd_dd next_record 1
                            loop
                            set field_changed_value of btnordh_dd field btnordh.locked to 1
                            set field_changed_value of btnordh_dd field btnordh.deop_active to 0
                            send request_save to btnordh_dd
                        end_transaction
                        send clear to btnordd_dd
                    end
                    else error 3004 '��� �� ������ �.�.�.�'
                    set pibtn to 0
                    Send Find_By_Recnum to btnordh_DD btnordh.File_Number iRecnum
                end
            
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub3

        Object Btnactive is a ButtonSub
            Set Label to "ButtonSub4"
            Set Bitmap to "delcat_m.bmp"
            Set Size to 23 25
            Set Location to 52 348
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set tooltipvalue to '����������垩� �.�.�.�'
            
            Procedure OnClick
                integer iactive retval irecnum
                string srecr sdeop sitem msgstr scn sclient
                get yesno_box "�⢜�� ���������� �� �������������� �� �.�.�.� ?? " to retval
                If (RetVal =MBR_yes) begin
                    get field_current_value of btnordh_dd field btnordh.recnum to irecnum
                    if (irecnum) begin
                        send rebuild_constraints to btnordd_dd
                        send find to btnordd_dd first_record 1
                        if (not(found)) begin
                            error 3013 '��� ⮜�� ������⤘ �回 ��� �.�.�.�'
                            procedure_return
                        end
                        set pibtn to 1
                        begin_transaction
                            indicate err false
                            set dynamic_update_state of the_table to false
                            While (found=1)
                                set field_changed_value of btnordd_dd field btnordd.vactive to 2
                                send request_save to btnordd_dd
                                send find to btnordd_dd next_record 1
                            loop
                            set field_changed_value of btnordh_dd field btnordh.deop_active to 1
                            send request_save to btnordh_dd
                        end_transaction
                        set dynamic_update_state of the_table to true
                        send clear to btnordd_dd
                    end
                    else error 3004 '��� �� ������ �.�.�.�'
                    set pibtn to 0
                    Send Find_By_Recnum to btnordh_DD btnordh.File_Number iRecnum
                end
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // Btnactive

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "��������"
            Set Location to 52 277
            Set Size to 10 37
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub14

        Object Btncopy is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub4"
            Set Bitmap to "COPY_mg.bmp"
            Set Size to 23 25
            Set Location to 52 375
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            set tooltipvalue to '��������� �.�.�.� �� ᢢ�'
            
            Procedure OnClick
                integer ibpoid retval iakyrh irecnum ifinish
                string msgstr lsstore srecr
                indicate err false
                Get Field_Current_Value Of btnordh_dd Field btnordh.recr to srecr
                Get Field_Current_Value Of btnordh_dd Field btnordh.recnum to irecnum
                Get YesNo_Box "������� ! ���坜� � ��������� ��������� �.�.�.� �� ������� ??"  to RetVal
            
                If (RetVal =MBR_yes) begin
            
                    begin_transaction
                        indicate err false
                        move (oDocopy(current_object)) to iBpoid
                        send beg_copy to ibpoid srecr
                    end_transaction
            
                    if (not(err)) begin
                        get pirecnum to irecnum
                        SEND clear to btnordh_dd
                        Send Find_By_Recnum to btnordh_DD btnordh.File_Number iRecnum
                        send beginning_of_data to the_table true
                    end
                    else send info_box '�����韞�� �៦� ���� ��� ���������.��������� ����韞��' '���������'
                end
            End_Procedure // OnClick
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Btncopy

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "��/��  �㥞�"
            Set Location to 62 131
            Set Size to 12 49
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub15

        Object Textbox1 is a Textbox
            Set Label to "������櫞��"
            Set Location to 48 211
            Set Size to 10 53
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "������� �����"
            Set Location to 50 437
            Set Size to 10 60
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox2

        Object Btnordh_Statero is a dbCheckBoxSub
            Entry_Item Btnordh.Statero
            Set Size to 13 11
            Set Location to 46 197
        End_Object    // Btnordh_Statero

        Object ButtonSub4 is a ButtonSub
            Set Label to "ButtonSub6"
            Set Bitmap to "tvwbo16.bmp"
            Set Size to 10 11
            Set Location to 2 487
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "�������� ��� ����� �����騠��� ������"
            Procedure OnClick
               send activate_vwclients
            End_Procedure // OnClick
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub4

        Object ButtonSub5 is a ButtonSub
            Set Label to "ButtonSub6"
            Set Bitmap to "tvwbo16.bmp"
            Set Size to 10 11
            Set Location to 17 487
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "�������� ��� ����� �����騞��� ����"
            Procedure OnClick
               send activate_v041
            End_Procedure // OnClick
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub5

        Object Btnektyp is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub6"
            Set Bitmap to "Printer.bmp"
            Set Size to 23 25
            Set Location to 52 404
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set TooltipValue to "����ਫ਼ �.�.�.�"
            
            Procedure OnClick
                string sdeop
                Get Field_Current_Value Of btnordh_DD Field btnordh.aa_deop to sdeop
                Set psdeop  of (r193_1(self)) to sdeop
                Send runprom1Report to (prom1WQLReport(r193_1(Self)))
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // Btnektyp

        Object ButtonSub6 is a ButtonSub
            Set Label to "ButtonSub6"
            Set Bitmap to "tvwbo16.bmp"
            Set Size to 10 11
            Set Location to 33 487
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "�������� ��� ����� �����騞��� ��. ������"
            Procedure OnClick
               send activate_v111
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub6

        Object TextBoxSub21 is a TextBoxSub
            Set Label to "� ������"
            Set TextColor to 19946
            Set Location to 78 441
            Set Size to 10 52
            Set FontWeight to 600
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub21

        Object Btnordh_Timeout is a dbFormSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Entry_Item Btnordh.Timeout
            Set Size to 13 67
            Set Location to 89 441
            Set Color to 12703487
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Procedure Key integer iKey
                If ((iKey=Key_Tab) or (iKey=Key_Enter) or (iKey=Key_Delete) or (iKey=Key_Shift+Key_Tab)) Forward Send Key iKey
                Else Send prompt
            End_Procedure
            
            //Procedure Prompt
            //    String sStr
            //    Forward Send Prompt
            //    Get Value Item 0 to sStr
            //    If (sStr<>"") Begin
            //        Clear Payterms
            //        Move (Trim(sStr)) to Payterms.Payterms_Code
            //        Find Eq Payterms By Index.1
            //        If (Not(Found)) Begin
            //            Send Stop_Box '�� ���� � ������ ��� �夘� �੫�' 'Error 7501'
            //            Move "" to BtnordH.Timeout
            //        End
            //    End
            //    Else Begin
            //        Send Stop_Box '�� ���� � ������ ��� �夘� ��������⤦' 'Error 7502'
            //    End
            //End_Procedure
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Btnordh_Timeout

    End_Object    // Container1

    Object The_Table is a dbGrid
        Set Main_File to Btnordd.File_Number
        Set Server to (Btnordd_DD(self))
        Set Ordering to 1
        Set Size to 95 524
        Set Location to 123 1
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Btnordd.Recnum
            Entry_Item Btnordd.Vitem
            Entry_Item (fsqual(self,btnordd.vitem))
            Entry_Item Btnordd.Vqty
            Entry_Item Btnordd.Vunitprice
            Entry_Item Btnordd.Vdisc
            Entry_Item Btnordd.Vdiscposo
            Entry_Item Btnordd.Vprice
            Entry_Item Btnordd.Vkatish
            Entry_Item Btnordd.Vxrm3
            Entry_Item Btnordd.Vpagiaxrm3
            Entry_Item Btnordd.Vpagiaxrprice
        End_Row

        Set Form_Width    item 0 to 0
        Set Header_Label  item 0 to ""
        
        Set Form_Width    item 1 to 62
        Set Header_Label  item 1 to "���.�囦��"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "���櫞��"
        
        Set Form_Width    item 3 to 43
        Set Header_Label  item 3 to "���櫞��"
        
        Set Form_Width    item 4 to 46
        Set Header_Label  item 4 to "���� ���"
        
        Set Form_Width    item 5 to 35
        Set Header_Label  item 5 to "%����"
        
        Set Form_Width    item 6 to 42
        Set Header_Label  item 6 to "����ਫ਼"
        
        Set Form_Width    item 7 to 50
        Set Header_Label  item 7 to "���"
        
        Set Form_Width    item 8 to 43
        Set Header_Label  item 8 to "�០��"
        
        Set Form_Width    item 9 to 32
        Set Header_Label  item 9 to "��/m3"
        Set Column_Checkbox_State  item 9 to True
        
        Set Form_Width    item 10 to 50
        Set Header_Label  item 10 to "���.��/m3"
        
        Set Form_Width    item 11 to 51
        Set Header_Label  item 11 to "���.���� ��."
        

        //AB-StoreStart
        
        Set Column_Prompt_Object item 1 to (sl22s(self))
        
        Set Column_Option Item 0        to NoEnter True
        Set Column_Option Item 7        to NoEnter True
        
        Set CurrentRowColor             to 11468799
        Set CurrentCellColor            to 11468799
        
        
        procedure item_change integer fromi integer toi returns integer
            local integer rval icol iBase_item iGridID iCurrItem iFileNumber iFieldNumber
            Local String Sval sQUAL svalue sNameFrom
            local integer iColumn
            local number nTimhMon  ndisc ntot
            move (the_table(self)) to igridid
            forward get msg_item_change fromi toi to rval
            if (focus(Desktop) = igridid) begin
                Get Column fromi to iCol
                if (icol=1) begin
                    Get Base_Item                   to iBase_item
                    Get Value Item (iBase_item+1)   to Sval
                    Move (Fsitem(self,Sval))        to Svalue
                    move (Fsqual(self,Sval))        to Squal
                    Set value item (iBase_item+2)   to squal
                    Set value of (item_descr(self)) to svalue
                End
                Else if (icol=5) begin
                    Get Field_Current_Value Of btnordd_DD Field btnordd.vdisc  To ndisc
                    Get Field_Current_Value Of btnordd_DD Field btnordd.vunitprice To nTimhMon
                    move (round_number(((ntimhmon * ndisc) / 100),2)) to ntot
                    // js 04/11/2002
                    Set Field_Changed_Value Of btnordd_DD Field btnordd.Vdiscposo To nTot
                    move (ntimhmon - ntot) to ntimhmon
                    Set Field_Changed_Value Of btnordd_DD Field btnordd.vprice To ntimhmon
                End
                Else if (icol=6) begin
                    Get Field_Current_Value Of btnordd_DD Field btnordd.vdiscposo  To ndisc
                    Get Field_Current_Value Of btnordd_DD Field btnordd.vunitprice To nTimhMon
                    move (round_number(((nDisc*100)/nTimhMon),2)) to ntot
                    Set Field_Changed_Value Of btnordd_DD Field btnordd.Vdisc To nTot
                    move (ntimhmon - nDisc) to ntimhmon
                    Set Field_Changed_Value Of btnordd_DD Field btnordd.vprice To ntimhmon
                End
            End
            procedure_return rval
        end_procedure
        
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0   to    iDecimals
            Set Points Item 3 to 2
            Set Points Item 4 to iDecimals
            Set Points Item 5 to 2
            Set Points Item 6 to iDecimals
            Set Points Item 7 to iDecimals
            Set Points Item 10 to iDecimals
            Set Points Item 11 to iDecimals
            Set Numeric_Mask  Item 4 to 14 iDecimals ' ,*'
            Set Numeric_Mask  Item 6 to 14 iDecimals ' ,*'
            Set Numeric_Mask  Item 7 to 14 iDecimals ' ,*'
            Set Numeric_Mask  Item 10 to 14 iDecimals ' ,*'
            Set Numeric_Mask  Item 11 to 14 iDecimals ' ,*'
        End_Procedure
        
        Function Child_entering returns Integer
            Integer rval
            Forward Get Child_Entering to rVal
            If (NOT(rVal)) Begin
                If (Should_Save(btnordh_DD(Self))) Send Request_Save to btnordh_DD
                If (Current_Record(btnordh_DD(Self))) Forward Get Child_Entering to rVal
                Else Begin
                    Function_Return 1
                End
            End
            function_return rVal
        End_Function
        
        
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "���� ��� ��㩞 ����嘪"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 111 340
        Set Size to 10 149
        Set FontWeight to 600
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "��������� �囦��"
        Set Location to 221 1
        Set Size to 10 62
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object item_descr is a FormSub
        Set Size to 13 117
        Set Location to 220 76
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        
        
        
        //AB-StoreEnd

    End_Object    // item_descr

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "��������㟞��"
        Set Location to 237 2
        Set Size to 10 51
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub17

    Object Btnordh_Date_Create is a dbFormSub
        Entry_Item Btnordh.Date_create
        Set Size to 13 57
        Set Location to 235 76
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Btnordh_Date_Create

    Object Tperga_ is a dbGridSub
        Set Main_File to Tperga.File_Number
        Set Server to (Tperga_DD(self))
        Set Size to 48 327
        Set Location to 221 197
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Baxiokat.Baxiokat_code
            Entry_Item Baxiokat.Baxiokat_descr
            Entry_Item Tperga.Pct_epi_synolou
            Entry_Item Tperga.Paralabh_meres
            Entry_Item Tperga.Xarhtos_meres
            Entry_Item Tperga.Plhroteo_meres
        End_Row

        Set Form_Width    item 0 to 36
        Set Header_Label  item 0 to "���."
        
        Set Form_Width    item 1 to 79
        Set Header_Label  item 1 to "��槦�"
        
        Set Form_Width    item 2 to 47
        Set Header_Label  item 2 to "% ���梦�"
        
        Set Form_Width    item 3 to 55
        Set Header_Label  item 3 to "�������� (�)"
        
        Set Form_Width    item 4 to 57
        Set Header_Label  item 4 to "��. ���/���"
        
        Set Form_Width    item 5 to 48
        Set Header_Label  item 5 to "����. (�)"
        

        //AB-StoreStart
        
        Set Column_Option Item 1        to NoEnter True
        
        Function Child_entering returns Integer
            Integer rval iErr
            Forward Get Child_Entering to rVal
            If (NOT(rVal)) Begin
                If (Current_Record(BtnOrdH_DD(Self))) Forward Get Child_Entering to rVal
                Else Begin
                    Function_Return 1
                End
            End
            function_return rVal
        End_Function
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Tperga_

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "��槦� ������ "
        Set Location to 237 137
        Set Size to 10 59
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object TextBoxSub19 is a TextBoxSub
        Set Label to "��殦� ����"
        Set Location to 252 2
        Set Size to 10 47
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub19

    Object Clients_Hpso is a dbFormSub
        Entry_Item Clients.Hpso
        Set Size to 13 30
        Set Location to 250 76
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Clients_Hpso

    Object TextBoxSub20 is a TextBoxSub
        Set Label to "��殦� ���� "
        Set Location to 252 111
        Set Size to 10 46
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub20

    Object Clients_Hpal is a dbFormSub
        Entry_Item Clients.Hpal
        Set Size to 13 30
        Set Location to 250 162
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Clients_Hpal


    //AB-StoreStart
    set verify_data_loss_msg    to get_no_confirmation
    set verify_save_msg         to get_no_confirmation
    set verify_exit_msg         to get_no_confirmation
    On_Key Key_Alt+Key_o        Send activate_v193v
    //��� ������夞�� ������
    
    
    Procedure Activate
        String  sModule
        Integer rVal iCurRec irecnum
        if (pscncode(self)<>'') begin
           send clear to cn_dd
           send clear to btnordh_dd
           send clear to btnordd_dd
           send clear to tperga_dd
           move (pscncode(self)) to cn.cn_code
           send find to cn_dd eq 5
        end
        set pscncode   to ''
    
        if (psdeop(self)<>'') begin
            Clear btnordh
            Move (psdeop(self)) to btnordh.aa_deop
            Find Eq btnordh by index.1
            send find to btnordh_dd eq 1
        end
        set psdeop to ''
        Forward Send Activate
    
    End_Procedure
    
    Procedure Activate_View Returns Integer
        String  sModule
        Integer rVal iCurRec
        Forward Get Msg_Activate_View to rVal
     //   Get psMenuModule  Of Main_Menu  to sModule
        Set psModule to sModule
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V193


//AB-StoreStart


























//AB-StoreEnd

//AB/ End_Object    // prj