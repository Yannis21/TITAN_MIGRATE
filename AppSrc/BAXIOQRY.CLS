// **************************************************************************
// *                        A N A L Y S I S                                 *
// **************************************************************************
// *� ��ᩞ ���� �����⧜� �� ��⥠�� ����������� queries ��� Baxio.        *
// *��� �ៜ index ��� Baxio, ��᝜� ��� �� ���婫���� public interface      *
// *Baxio_Scan_By_IndexN, 槦� N=1,2,7                                       *
// *                                                                        *
// *�� ��婣��� ��� public interface, �����������磜 �� �稠� ����        *
// *��� ���婫����� index, ��櫜 � ��ᩞ �� ������ scan, ���餜� �椦�      *
// *�� ��ᮠ��� �����嫞�� records ��� Baxio ��� ����秫��� ��� ��� index.   *
// *                                                                        *
// *�� �� �⢦��� �� ������婦��� ��棞 ������櫜�� �� selected records  *
// *�� ������櫜�� selection criteria ��� �� �����������ᤦ���� ���� index *
// *���ᨦ��� �� ���婫���� non-indexed properties.                         *
// *                                                                        *
// *�⢦�, �������⤦� �� ���婦��� ��� �᧦�� temporary file �� �� selected*
// *records, 驫� �� ������ᨦ��� �� temp_file, ��⧜� �� ��婦��� ���      *
// *�� ���婫���� property                                                  *
// **************************************************************************





//********************************************************
//*open all necessary files (class must be independent)  *
//********************************************************
Open Baxio
Open Barticl



Class Baxio_Query Is a BusinessProcessSub



      //*****************************************************************
      //*p r i v a t e    i n t e r f a c e                             *
      //*****************************************************************

      Procedure Construct_Object
                Forward Send     Construct_Object

                //���ᨠ��� �� user interface properties ��� bpc
                //1. status panel related properties
                Set Status_Panel_State   to TRUE                                //default= TRUE
                Set Allow_Cancel_State   to TRUE                                //default= FALSE
                Set Process_Caption      to "Report ��������"                 //default= "Running Process"
                Set Process_Title        to "�������� �����⤜��..."            //default= ""
                Set Process_Message      to "������� ��������"                //default= ""
                //t Status_Panel_Id      to ""                                  //default= (Status_Panel(Current_Object))
                //t Status_Params        to ""                                  //default= ''
                Set Button_Text of (Status_Panel(Self))   to "���ਫ਼"

                Set Sentinel_Name of (Status_Panel(Self)) to "Sentinel"

                //2. error related properties
                //   if set true, errors will be forwarded to the normal
                //   VDF error handler causing an error message to popup.
                //   Normally you would not want this during a batch process.
                Set Display_Error_State  to TRUE                          //default= False
                Set Error_Count          to 0                             //default= 0 (number of errors)
                Set Old_Error_Object_ID  to 0                             //default= 0

                //3. Logging
                // If you are going to log information you must create a
                // status log object and set this property to its ID. See
                // Statlog.pkg for more information.
                Set Status_Log_State     to FALSE                         //default= False
                Set Status_Log_Id        to 0                             //default= 0



                Property Integer piStop      0        //�� <> 0 procedure_return

                Property String  psBanks        ""        //��������� ������� �������
                Property String  psSeparator    ""        //����ਠ����� strings

      End_Procedure //construct_object


      //hook procedure
      Procedure Zero_Temporary_Files
      End_Procedure //zero_temporary_file

      //hook procedure
      Procedure Update_Temporary_Files
                Integer liStop
                Get Cancel_Check to liStop
                If (liStop <> 0);
                Begin
                     Set piStop to 1
                End
      End_Procedure //update_temporary_file


      Function  private.Baxio_Select_By_Index8 String  asCompanyCode        ;
                                               String  asBranchCode         ;
                                               Integer aiBaxiokat_Code      ;
                                               Integer aiBaxio_Status       ;
                                               Integer aiBaxio_Place        ;
                                               Date    adBaxio_Hmnial_Apo   ;
                                               Date    adBaxio_Hmnial_Eos   ;
                                               Integer aiLast_Btypkin_Code  ;
                                               Returns Integer

                Integer liMatch //�� 0, jump out of index 8      :function return 0
                                //�� 1, ��� �ᤜ�                :function return 1

                Integer liSkip  //�� 0, continue with next record:function return -1

                String  lsBanks
                String  lsSeparator
                String  lsBanka

                Get psSeparator to lsSeparator
                Get psBanks     to lsBanks


                //------�� �� �� active baxio, ������� �� ����� �� ��⚥� �姦��!
                If Not Status Baxio Function_Return 0 //jump out of index.8

                //------1�� ������� ��㩞�,�秦�,status, & place, ��� ���������, jump out of index.8
                Move (;
                       (Baxio.Company_Code  = asCompanyCode     ) and;
                       (Baxio.Branch_Code   = asBranchCode      ) and;
                       (Baxio.Baxiokat_Code = aiBaxiokat_Code   ) and;
                       (Baxio.Baxio_Status  = aiBaxio_Status    ) and;
                       (Baxio.Baxio_Place   = aiBaxio_Place     )    ;
                     ) to liMatch //out of index.8 if = 0
                If (liMatch = 0) Function_Return 0 //jump out of index.8

                //------2�� ������� �㥞� ���, ��� ���������, jump out of index.8
                If (adBaxio_Hmnial_Apo <> 0);
                Begin //�� ⮜� ������� �㥞 ���
                      Move (;
                             (liMatch=1) and;
                             (Baxio.Baxio_Hmnial >= adBaxio_Hmnial_Apo);
                           ) to liMatch //out of index.8 if = 0
                      If (liMatch = 0) Function_Return 0 //jump out of index.8
                End   //�� ⮜� ������� �㥞 ���

                //------3�� ������� �㥞� ��, ��� ���������, jump out of index.8
                If (adBaxio_Hmnial_Eos <> 0);
                Begin //�� ⮜� ������� �㥞 ���
                      Move (;
                             (liMatch=1) and;
                             (Baxio.Baxio_Hmnial <= adBaxio_Hmnial_Eos);
                           ) to liMatch //out of index.8 if = 0
                      If (liMatch = 0) Function_Return 0 //jump out of index.8
                End   //�� ⮜� ������� �㥞 ��


                Move liMatch to liSkip //next record if = 0

                //------4�� ������� �������嘪 �夞���, ��� ���������, continue with next record
                If (aiLast_Btypkin_Code <> 0);
                Begin //�� ⮜� ������� �椦� �� �������� �夞��
                      Clear Barticl
                      // jsjs 26/10/2001
                      // Move Baxio.Baxio_Lpar to Barticl.Barticl_Rec0
                      Move Baxio.Baxio_Lpar to Barticl.Barticl_Recr
                      Find Eq Barticl by Index.2 //index.2:barticl:barticl_recr
                      Move (;
                             (Found =1) and;
                             (liSkip=1) and;
                             (Baxio.Baxio_Lpar = aiLast_Btypkin_Code);
                           ) to liSkip


                      If liSkip Eq 0 Function_Return (-1) //continue with next record
                End //aibtypkin_code


                //------5�� ������� �������

                If (lsBanks <> "") Begin
                //�� ⮜� ������� ���������⤜� ��᧜���

//                      js 11/02/2002
//                      Move (lsSeparator + (Trim(Baxio.Baxio_Banka)) + lsSeparator) to lsBanka
//                      Move (;
//                             (lsBanks Contains lsBanka);
//                           ) to liSkip

                      Move (Trim(Baxio.Baxio_Banka))  to lsBanka
                      If (lsBanks Contains lsBanka) Move 1 to liSkip
                      Else Move 0 to liSkip
//                      js 11/02/2002

                      If liSkip Eq 0 Function_Return (-1) //continue with next record
                End //aibtypkin_code

               If (liSkip = 1) Function_Return 1    //��� �ᤜ�!
               Else            Function_Return (-1) //continue with next record

      End_Function //private.baxio_select_by_index8



      //*****************************************************************
      //*p u b l i c    i n t e r f a c e                               *
      //*****************************************************************


      Procedure Initialize Integer aiMustZero_Temporary_Files

                //------conditional ��������� temporary_file & non-indexed properties
                Set piStop           to 0

                If (aiMustZero_Temporary_Files=TRUE) Send Zero_Temporary_Files

                Set psBanks     to ""
                Set psSeparator to ""
      End_Procedure //initialize


      Function  Baxio_Single_Scan_By_Index8 String  asCompanyCode       ;
                                            String  asbranchCode        ;
                                            Integer aiBaxiokat_Code;
                                            Integer aiBaxio_Status;
                                            Integer aiBaxio_Place;
                                            Integer aiLast_Btypkin_Code;
                                            Date    adBaxio_Hmnial_Apo;
                                            Date    adBaxio_Hmnial_Eos;
                                            Returns Integer

                Integer liMatch //��  0 , jump out of index 8
                                //��  1 , �⣠�� temp
                                //�� -1 , skip record

                //Integer liDays_Counter
                //Date    ldHmnia

                Integer liStop        //�� <> 0, procedure_return


                //------�����������棜�� ��㩞 ��� private select ��� �ៜ ��/��
                //For liDays_Counter from 0 to (adBaxio_Hmnial_Eos-adBaxio_Hmnial_Apo)
                //  Move (adBaxio_Hmnial_Apo+liDays_Counter) to ldHmnia

                    Clear Baxio
                    Move asCompanyCode      to Baxio.Company_Code  //index.8 1st field:� � � � � � � � � � �
                    Move asBranchCode       to Baxio.Branch_Code   //index.8 2st field:� � � � � � � � � � �
                    Move aiBaxiokat_Code    to Baxio.Baxiokat_Code //index.8 3nd field:� � � � � � � � � � �
                    Move aiBaxio_Status     to Baxio.Baxio_Status  //index.8 4rd field:� � � � � � � � � � �
                    Move aiBaxio_Place      to Baxio.Baxio_Place   //index.8 5th field:� � � � � � � � � � �

                    Move adBaxio_Hmnial_Apo to Baxio.Baxio_Hmnial  //index.8 6th field:� � � � � � � � � � �

                    Repeat //until (limatch=0)

                           Get Cancel_Check to liStop
                           If (liStop <> 0);
                           Begin
                                Set piStop to 1
                                Function_Return (1) //stopped
                           End

                           Find Gt Baxio by Index.8 //index.8:baxio:Company_Code+Branch_Code+
                                                    //              baxiokat_code+
                                                    //              baxio_status+
                                                    //              baxio_place+
                                                    //              ...recnum !
                           Move (private.Baxio_Select_By_Index8( Self,;
                                                                 asCompanyCode,;
                                                                 asBranchCode,;
                                                                 aiBaxiokat_Code,;
                                                                 aiBaxio_Status,;
                                                                 aiBaxio_Place,;
                                                                 adBaxio_Hmnial_Apo,;
                                                                 adBaxio_Hmnial_Eos,;
                                                                 aiLast_Btypkin_Code);
                                                               ) to liMatch

                           If liMatch Eq 1 Begin //� ������ ��� �ᤜ�!
                                             Send Update_Temporary_Files
                                             Get piStop to liStop
                                             If (liStop <> 0) Function_Return (1) //stopped
                                          End
                    Until (liMatch=0)
                //Loop //for lidays_counter from 0 to (ldeos_hmnia-ldapo_hmnia)

////Send End_Process

                Function_Return 0 //梘 ok !
      End_Function  //baxio_single_scan_by_index8



End_Class // baxio_query
