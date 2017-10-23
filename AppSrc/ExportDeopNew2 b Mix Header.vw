// L:\VDF14.1.Dev\TITAN_MIGRATE\AppSrc\ExportDEOPNew2.vw
// ExportDEOPNew2
//

Use DFClient.pkg
Use DFEntry.pkg

//Open MIClient
//Open MICN
//Open MICONSTR
//Open MISalesm
//Open MIMHXAN
//Open MIPRESP
//Open MICodtyp
//Open MIcodema
//Open MIORDH
//Open MIORDD
//Open MIAREAS
//Open MICities
//Open MITOWNS
//Open MICOUNTR
//
////Open MINOMOS
////Open MIDHMOS
////Open MIDRAST


Activate_View Activate_ExportDeopNew2 for ExportDEOPNew2
Object ExportDEOPNew2 is a dbView
    Set Location to 4 9
    Set Size to 122 411
    Set Label to "������� ����"
    Set Border_Style to Border_Thick
    Set Color to 13631219

    Open rptmp

    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get MSG_Activate_View to rVal

        Send IGNORE_ERROR to ERROR_INFO_OBJECT 4358
        Make_Directory "C:\TitanMig"
        Send TRAP_ERROR to ERROR_INFO_OBJECT 4358

        Procedure_Return rVal
    End_Procedure


    Object frmFileName is a Form

        //AB-StoreTopStart
        //AB-StoreTopEnd

        Set Size to 13 187
        Set Location to 33 112
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace item 0 to "MS Sans Serif"
        Set Value item 0 to "C:\TitanMig\SMSMI_DEOP_Header.csv"

        //AB-StoreStart

        Procedure Prompt
            Boolean bSave
            String sFileTitle sFileName
            Get Show_Dialog of (SaveAsDialog1(Self)) to bSave
            If (bSave) Begin
                Get File_Title of (SaveAsDialog1(Self)) to sFileTitle
                Get File_Name  of (SaveAsDialog1(Self)) to sFileName
                Set Value of frmFileName item 0 to sFileName
            End
        End_Procedure

        //AB-StoreEnd

    End_Object    // frmFileName

    Object Button5 is a Button

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

        Set Label to "������� ���������"
        Set Size to 20 391
        Set Location to 51 10
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight item 0 to 600
        Set Form_TypeFace item 0 to "MS Sans Serif"

        //AB-StoreStart

        Procedure OnClick
            String sFilename sLabel
            Integer bIsCreated
            Integer iWhat iVal
            Get Label to sLabel
            Get Value of frmFileName item 0 to sFilename
            If (Trim(sFilename)="") Begin
                Send Stop_Box "�� 椦�� ��� ���妬 �夘� ����" "��ᢣ� 1002"
                Procedure_Return
            End

            Direct_Output channel 9 sFilename

            String sFileName1
            Move "C:\TitanMig\SMSMI_DEOP_Details1.csv" to sFileName1
            Direct_Output channel 5 sFileName1

            String sFileName2
            Move "C:\TitanMig\SMSMI_DEOP_Details2.csv" to sFileName2
            Direct_Output channel 6 sFileName2

            String sFileName3
            Move "C:\TitanMig\SMSMI_DEOP_Details3.csv" to sFileName3
            Direct_Output channel 7 sFileName3

            String sFileName4
            Move "C:\TitanMig\SMSMI_DEOP_Details4.csv" to sFileName4
            Direct_Output channel 8 sFileName4

            Integer iCnt iFS
            Move 0 to iCnt
            File_Size MIClient to iFS
            String sMess

            Clear MIORDH
            Find GE MIORDH.Recnum
            While (Found)
                Add 1 to iCnt
                Move (String(iCnt)+"/"+String(iFS)) to sMess
                Set Label to sMess

                Send Output_DEOP_Header
                Send Output_DEOP_Details

                Find GT MIORDH.Recnum
            Loop

            Close_Output channel 5
            Close_Output channel 6
            Close_Output channel 7
            Close_Output channel 8
            Close_Output channel 9

            Set Label to sLabel
            Send Info_Box "Process Finished, the file is saved" "Information"
        End_Procedure // OnClick


        Procedure Output_DEOP_Header
            String  sAADeop sDeli sMIOrdHRecr s1
            Integer iRecnum

            Move MIORDH.Recnum  to iRecnum
            Move MIORDH.AA_DEOP to sAADeop
            If (iRecnum<=0) Begin
                Send Stop_Box ("��晢��� �� ��� ������ ������� ��� ����: "+Trim(MIORDH.AA_DEOP)) "������ 1101"
                Procedure_Return
            End
            Move ","                to sDeli

            Write   channel 9   '"'
            Write   channel 9   'YCQR'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column B  �秦� �������妬
            Write   channel 9   '"'
            Write   channel 9   'GR02'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column C  ��������� ��㩜� ���ᛘ�
            Write   channel 9   '"'
            Write   channel 9   "03"
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column D  ���ᢠ �������
            Write   channel 9   '"'
            Write   channel 9   "04"
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column E  ��㣘 (Segment)
            Write   channel 9   '"'

            Write   channel 9   (Trim(MICN.CN_PUMPID))          // GR32 - Sales Office

            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column F  Sales Office
            Write   channel 9   '"'
            Write   channel 9   ''  // 001 - Metamorfosi
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column G  Sales Group
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.CLIENT_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column H  ������ �稠�� ������ ���᫞
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.CN_CODE))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column I  ������ �稠�� ������ �����㧫� (⨚��)
            Clear MICN
            Move MIORDH.CN_CODE to MICN.CN_CODE
            Find Eq MICN by Index.5
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.CN_SLS_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column J  ������ �稠�� ������ �࢞��
            Clear MICLIENT
            Move MIORDH.CLIENT_ID to MICLIENT.CLIENT_ID
            Find Eq MICLIENT by Index.6
            Clear MIPRESP
            Move MICLIENT.PRESP_ID to MIPRESP.PRESP_ID
            Find EQ MIPRESP by Index.7
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIPRESP.PRESP_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column K  ������ �稠�� ������ ������
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.CN_CNT_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column L  ������ �稠�� ������ �����ᙦ�
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.MHXANIK_ID))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column M  ������ �稠�� ������ ���������
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.CN_CODE))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column N  ������ �稠�� ������ 먚�� (���-먚��)
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.DEOP_DATE))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column O  ���� ���
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.DEOP_LHXH))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column P  ���� ��
            If (MICN.TROPOS_METAF="C&F") Move "CFR" to s1
            Else                         Move "FOB" to s1
            Write   channel 9   '"'
            Write   channel 9   s1
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Q  � ���ᛦ���
            Write   channel 9   '"'
            Write   channel 9   (Trim(fsTropoiPlhromhsPelath(Self,Trim(MIORDH.TIMEOUT))))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column R  � ������
            Write   channel 9   '"'
            Write   channel 9   '' // X - INCOMING CHECKS
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column S  ��槦� ������
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.ELEIPH))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column T  ������� ����� (�� m3)

            Write   channel 9   '"'
            Write   channel 9   ''
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column U  ��ᩫ��� ��� �� ���� ���餦���� ��������㩜��
            Write   channel 9   '"'
            Write   channel 9   ''
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column V  Sales Group	������ �ᚠ� ���ਫ਼ ��������
            Write   channel 9   '"'
            Write   channel 9   ''
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column W  ��⡫��� ����妬 ���
            Write   channel 9   '"'
            Write   channel 9   ''
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column X  ��⡫��� ����妬 ��
            Write   channel 9   '"'
            Write   channel 9   '' // 111111111 (������ ������⣘���)
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Y  Reference ������ ������ (�� ⮜� ������� ��� migration ����� ��� MM)
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.CN_PUMPLICENSE)) // R001 - ���ᛘ ��.������. �����ᮜ���
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column Z  ������᩠� ���ᛦ���
            Write   channel 9   '"'
            Write   channel 9   (Trim(MICN.CN_VDETAILS)) // ZONH �������� (������ ��� �� ���� �������� ��� �����
                                                         //Move (Trim(Zones.ZONE_DESCR))   to MICN.CN_VDETAILS
                                                         //Move Zones.ZONE_ID              to MICN.CN_CLIENTMATCH
                                                         //Move Brzones.BRZONE_RECR        to MICN.CN_ZONE
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AA  �餞
            Write   channel 9   '"'
            Write   channel 9   MICN.CN_M3
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AB  ���櫞��
            Write   channel 9   '"'
            Write   channel 9   'm3'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AC  ���ᛘ �⫨����
            Write   channel 9   '"'
            Write   channel 9   'EUR'
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AD  �棠���

            // ����������� ����� �� �� ����
            Write   channel 9   '"'
            Write   channel 9   (Trim(MIORDH.AA_DEOP))
            Write   channel 9   '"'
            Write   channel 9   sDeli // End of Excel Column AE
            // ����������� ����� �� ��� ���� ����
            Move "" to s1
            If      (Trim(MIOrdH.VELXR)='2') Move "���"     to s1
            Else If (Trim(MIOrdH.VELXR)='0') Move "����"    to s1
            Else If (Trim(MIOrdH.VELXR)='1') Move "����"    to s1
            Write   channel 9   '"'
            Write   channel 9   (Trim(s1))  // End of Excel Column AF
            Write   channel 9   '"'
            //Write   Channel 9   sDeli
            //---
            Writeln channel 9
        End_Procedure

        Procedure Output_DEOP_Details
            String  sAADeop sDeli sMIOrdHRecr s1 sOrdH_Recr
            Integer iRecnum

            Move MIORDH.Recnum  to iRecnum
            Move MIORDH.AA_DEOP to sAADeop
            Move MIORDH.RECR    to sOrdH_Recr
            If (iRecnum<=0) Begin
                Send Stop_Box ("��晢��� �� ��� ������ ������� ��� ����: "+Trim(MIORDH.AA_DEOP)) "������ 3333"
                Procedure_Return
            End
            Move ","                to sDeli


            Clear MIORDD
            Move sOrdH_Recr to MIORDD.BTNORDH_RECR
            Find GE MIORDD by Index.1
            While ((Found=1) and (MIORDD.BTNORDH_RECR=sOrdH_Recr))
                //========================================================
                //========================================================
                // Des ean to eidos einai:
                // a) Etoima Proionta  16000000                 >> Direct_Output channel 5 sFileName1
                // b) Antlies Pxx me pagia Xreosh               >> Direct_Output channel 6 sFileName2
                //    Antlies Pxx me pagia Xreosh               >> Direct_Output channel 7 sFileName2
                // c) Antlies Pxx me kanonikh Xreosh            >> Direct_Output channel 7 sFileName3
                //    (an exei pagia xreosh grafetai kai edo)
                // d) Loipa                                     >> Direct_Output channel 8 sFileName4


                //If (item.WAPOKAT_CODE=Sysfile.WAPOKAT_ETOIMA) Move 1 to MIORDD.ITEM_TI_EINAI
                //Else If (UPPERCASE(Left(MIORDD.VITEM,1))="P") Move 2 to MIORDD.ITEM_TI_EINAI
                //Else If           (Left(MIORDD.VITEM,1) ="�") Move 3 to MIORDD.ITEM_TI_EINAI
                //Else If           (Left(MIORDD.VITEM,1) ="�") Move 3 to MIORDD.ITEM_TI_EINAI



                If (MIORDD.ITEM_TI_EINAI=1) Begin
                    // Periptosh a) apo pano
                    // (item.WAPOKAT_CODE=Sysfile.WAPOKAT_ETOIMA) >> Etoima Proionta
                    Write   channel 5   '"'
                    Write   channel 5   'YP01'
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column B  �秦� ����㡞�
                    Write   channel 5   '"'
                    Write   channel 5   'GR02'
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column C  ��������� ��㩜�
                    Write   channel 5   '"'
                    Write   channel 5   "03"
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column D  ���ᢠ �������
                    Write   channel 5   '"'
                    Write   channel 5   "04"
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column E  ��㣘 (Segment)
                    Write   channel 5   '"'
                    Write   channel 5   (Trim(MIORDH.CLIENT_ID))
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column F  ������ �稠�� ������ ���᫞
                    Write   channel 5   '"'
                    Write   channel 5   (Trim(MIORDH.CN_CODE))
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column G  ������ �稠�� ������ �����㧫�
                    Write   channel 5   '"'
                    Write   channel 5   (Trim(MIORDD.VITEM))
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column H  Reference ������ ������ (�� ⮜� ������� ��� migration ����� ��� MM)
                    Write   channel 5   '"'
                    Write   channel 5   MIORDD.VUNITPRICE  // SOS Yannis ????
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column I  ����
                    Write   channel 5   '"'
                    Write   channel 5   'EUR'
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column J  �棠���
                    Write   channel 5   '"'
                    Write   channel 5   'm3'
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column K  ���ᛘ �⫨����
                    Write   channel 5   '"'
                    Write   channel 5   MIORDH.DEOP_DATE
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column L  ���� ���
                    Write   channel 5   '"'
                    Write   channel 5   MIORDH.DEOP_LHXH
                    Write   channel 5   '"'
                    Write   channel 5   sDeli // End of Excel Column M  ���� ��

                    // ����������� ����� �� �� ����
                    Write   channel 5   '"'
                    Write   channel 5   (Trim(MIORDH.AA_DEOP))    // End of Excel Column N  AA DEOP
                    Write   channel 5   '"'
                    //Write   Channel 5   sDeli
                    //---
                    Writeln channel 5
                End


                If ((MIORDD.ITEM_TI_EINAI=2) and (MIORDD.VPAGIAXRM3>0)) Begin
                    // Edo spane epishs se 2 merh, aytes me pagia xreosh
                    // kai aytes me kanonikh, grafoume 2 arxeia Periptosh b) & c) apo pano
                    // // (UPPERCASE(Left(MIORDD.VITEM,1))="P")
                    // Periptosh b) apo pano
                    Write   channel 6   '"'
                    Write   channel 6   'YPMF'
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column B  �秦� ����㡞�
                    Write   channel 6   '"'
                    Write   channel 6   'GR02'
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column C  ��������� ��㩜�
                    Write   channel 6   '"'
                    Write   channel 6   "03"
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column D  ���ᢠ �������
                    Write   channel 6   '"'
                    Write   channel 6   "04"
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column E  ��㣘 (Segment)
                    Write   channel 6   '"'
                    Write   channel 6   (Trim(MIORDH.CLIENT_ID))
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column F  ������ �稠�� ������ ���᫞
                    Write   channel 6   '"'
                    Write   channel 6   (Trim(MIORDH.CN_CODE))
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column G  ������ �稠�� ������ �����㧫�
                    Write   channel 6   '"'
                    Write   channel 6   (Trim(MIORDD.VITEM))
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column H  �秦� ����嘪
                    Write   channel 6   '"'
                    Write   channel 6   (MIORDD.VPRICE * MIORDD.VPAGIAXRM3)
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column I  ���� (Fixed)
                    Write   channel 6   '"'
                    Write   channel 6   'EUR'
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column J  �棠���
                    Write   channel 6   '"'
                    Write   channel 6   MIORDD.VPAGIAXRM3
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column K  �������� ����� ��� ����� ������ � ����� ���ਫ਼
                    Write   channel 6   '"'
                    Write   channel 6   'm3' 
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column L  ���ᛘ �⫨����	
                    Write   channel 6   '"'
                    Write   channel 6   MIORDH.DEOP_DATE
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column M  ���� ���
                    Write   channel 6   '"'
                    Write   channel 6   MIORDH.DEOP_LHXH
                    Write   channel 6   '"'
                    Write   channel 6   sDeli // End of Excel Column N  ���� ��
                    // ����������� ����� �� �� ���� 
                    Write   channel 6   '"'
                    Write   channel 6   (Trim(MIORDH.AA_DEOP))    // End of Excel Column O  AA DEOP
                    Write   channel 6   '"'
                    //Write   Channel 6   sDeli
                    //---
                    Writeln channel 6
                   

                    // Grafoume KAI san c)
                    // Periptosh c) apo pano 
                    Write   channel 7   '"'
                    Write   channel 7   'YPMF'
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column B  �秦� ����㡞�	
                    Write   channel 7   '"'
                    Write   channel 7   'GR02' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column C  ��������� ��㩜�
                    Write   channel 7   '"'
                    Write   channel 7   "03"
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column D  ���ᢠ �������	
                    Write   channel 7   '"'
                    Write   channel 7   "04" 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column E  ��㣘 (Segment)
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDH.CLIENT_ID))
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column F  ������ �稠�� ������ ���᫞
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDH.CN_CODE))
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column G  ������ �稠�� ������ �����㧫� 
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDD.VITEM))
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column H  �秦� ����嘪
                    Write   channel 7   '"'
                    Write   channel 7   MIORDD.VUNITPRICE  // SOS Yannis ??? Ti einai, h timh monados h timh monados x posothta ???
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column I  ���� ��� m3
                    Write   channel 7   '"'
                    Write   channel 7   'EUR' 
                    Write   channel 7   '"' 
                    Write   channel 7   sDeli // End of Excel Column J  �棠���
                    Write   channel 7   '"'
                    Write   channel 7   'm3' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column K  ���ᛘ �⫨����	
                    Write   channel 7   '"'
                    Write   channel 7   MIORDD.VPAGIAXRM3
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column L  �������� ��� ��� ����� ������ � ���ਫ਼ ��� m3
                    Write   channel 7   '"'
                    Write   channel 7   'm3' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column M  ���ᛘ �⫨����	
                    Write   channel 7   '"'
                    Write   channel 7   MIORDH.DEOP_DATE
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column N  ���� ���
                    Write   channel 7   '"'
                    Write   channel 7   MIORDH.DEOP_LHXH
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column O  ���� ��
                    // ����������� ����� �� �� ���� 
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDH.AA_DEOP))    // End of Excel Column P  AA DEOP
                    Write   channel 7   '"'
                    //Write   Channel 7   sDeli
                    //---
                    Writeln channel 7
                    
                End
                Else If ((MIORDD.ITEM_TI_EINAI=2) and (MIORDD.VPAGIAXRM3=0)) Begin
                    // Edo spane epishs se 2 merh, aytes me pagia xreosh 
                    // kai aytes me kanonikh, grafoume 2 arxeia Periptosh b) & c) apo pano 
                    // // (UPPERCASE(Left(MIORDD.VITEM,1))="P")
                    // Periptosh c) apo pano 
                    Write   channel 7   '"'
                    Write   channel 7   'YPMF'
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column B  �秦� ����㡞�	
                    Write   channel 7   '"'
                    Write   channel 7   'GR02' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column C  ��������� ��㩜�
                    Write   channel 7   '"'
                    Write   channel 7   "03"
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column D  ���ᢠ �������	
                    Write   channel 7   '"'
                    Write   channel 7   "04"
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column E  ��㣘 (Segment)
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDH.CLIENT_ID))
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column F  ������ �稠�� ������ ���᫞
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDH.CN_CODE))
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column G  ������ �稠�� ������ �����㧫� 
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDD.VITEM))
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column H  �秦� ����嘪
                    Write   channel 7   '"'
                    Write   channel 7   MIORDD.VUNITPRICE  // SOS Yannis ??? Ti einai, h timh monados h timh monados x posothta ???
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column I  ���� ��� m3
                    Write   channel 7   '"'
                    Write   channel 7   'EUR' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column J  �棠���
                    Write   channel 7   '"'
                    Write   channel 7   'm3' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column K  ���ᛘ �⫨����	
                    Write   channel 7   '"'
                    Write   channel 7   MIORDD.VPAGIAXRM3
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column L  �������� ��� ��� ����� ������ � ���ਫ਼ ��� m3
                    Write   channel 7   '"'
                    Write   channel 7   'm3' 
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column M  ���ᛘ �⫨����	
                    Write   channel 7   '"'
                    Write   channel 7   MIORDH.DEOP_DATE
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column N  ���� ���
                    Write   channel 7   '"'
                    Write   channel 7   MIORDH.DEOP_LHXH
                    Write   channel 7   '"'
                    Write   channel 7   sDeli // End of Excel Column O  ���� ��
                    // ����������� ����� �� �� ���� 
                    Write   channel 7   '"'
                    Write   channel 7   (Trim(MIORDH.AA_DEOP))    // End of Excel Column P  AA DEOP
                    Write   channel 7   '"'
                    //Write   Channel 7   sDeli
                    //---
                    Writeln channel 7
                End
                
                If (MIORDD.ITEM_TI_EINAI=3) Begin
                    // Periptosh d) apo pano 
                    //If           (Left(MIORDD.VITEM,1) ="�") Move 3 to MIORDD.ITEM_TI_EINAI
                    //If           (Left(MIORDD.VITEM,1) ="�") Move 3 to MIORDD.ITEM_TI_EINAI
                    Write   channel 8   '"'
                    Write   channel 8   'YPRD'
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column B  �秦� ����㡞�	
                    Write   channel 8   '"'
                    Write   channel 8   'GR02' 
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column C  ��������� ��㩜�
                    Write   channel 8   '"'
                    Write   channel 8   "03" 
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column D  ���ᢠ �������	
                    Write   channel 8   '"'
                    Write   channel 8   "04"
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column E  ��㣘 (Segment)
                    Write   channel 8   '"'
                    Write   channel 8   (Trim(MIORDH.CLIENT_ID))
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column F  ������ �稠�� ������ ���᫞
                    Write   channel 8   '"'
                    Write   channel 8   (Trim(MIORDH.CN_CODE))
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column G  ������ �稠�� ������ �����㧫� 
                    Write   channel 8   '"'
                    Write   channel 8   ''
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column H  �稦� ������⨞���
                    Write   channel 8   '"'
                    Write   channel 8   ''    
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column I  ���� fixed
                    Write   channel 8   '"'
                    Write   channel 8   'EUR' 
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column J  �棠���
                    Write   channel 8   '"'
                    Write   channel 8   MIORDH.DEOP_DATE
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column K  ���� ���
                    Write   channel 8   '"'
                    Write   channel 8   MIORDH.DEOP_LHXH
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column L  ���� ��
                    // ����������� ����� �� �� ���� 
                    Write   channel 8   '"'
                    Write   channel 8   (Trim(MIORDH.AA_DEOP))    // End of Excel Column M  AA DEOP
                    Write   channel 8   '"'
                    Write   channel 8   sDeli
                    Write   channel 8   '"'
                    Write   channel 8   (Trim(MIORDD.VITEM))
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column N  ������� ������
                    Write   channel 8   '"'
                    Write   channel 8   (Trim(MIORDD.VITEM_DESCR)) 
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column O  ��������� ������
                    Write   channel 8   '"'
                    Write   channel 8   MIORDD.VQTY
                    Write   channel 8   '"'
                    Write   channel 8   sDeli // End of Excel Column P  ���櫞��
                    Write   channel 8   '"'
                    Write   channel 8   MIORDD.VUNITPRICE
                    Write   channel 8   '"' // End of Excel Column Q  ���� ���ᛦ�
                    //Write   channel 8   sDeli 
                    //---
                    Writeln channel 8
                End
                //========================================================
                //========================================================
                Find GT MIORDD by Index.1
            Loop
        End_Procedure        
        
        //AB-StoreEnd

    End_Object    // Button5
    Object TextBox10 is a TextBox
        Set Label to "�� ����妬"
        Set Auto_Size_State to False
        Set Location to 34 53
        Set Size to 10 55
        Set TypeFace to "MS Sans Serif"
        Set Color to 13631219
    End_Object    // TextBox10

    Object SaveAsDialog1 is a SaveAsDialog
        Set Location to 292 33

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

End_Object
