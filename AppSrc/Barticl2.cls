
//////////////////////////////////////////////////////////////////////
//////////////////////////  BMOVE REPORT  ////////////////////////////
//////////////////////////////////////////////////////////////////////
Class Print_Bmove_RecordsNew is a BasicReportSub

/HeaderR141New


                                          ���. ___




        ____________________________   ______________________________________
        ____________________________
        ____________________________
        ____________________________      __________   __________ __________



        _________________________________
        ________________________________________________________________________

        ________________________________________________________________________
        ________________________________________________________________________
        _____________________________________       __________ _________________


        ________________________________________________________________________
        ______________________________________________________
        ______________________________________________________



/bodyR141New
__ _______________ __/__/____ ___ _____________ _______________ ___,___,___.__
/totalr141New
       ______________________________________________________________________________________________
                                                                ___,___,___.__



______________________________________________________________________________
______________________________________________________________________________
______________________________________________________________________________
/FooterR141New
/*

    #IFDEF giGrammes
    #ELSE
        Integer giGrammes giMaxLines
    #ENDIF

    Procedure Construct_Object
        Forward Send Construct_Object
        Set Main_File to Bmove.File_Number
        Set Allow_Cancel_State to True
        Set status_panel_state to False
        Set report_message to "����ਫ਼ ������������ ��������               "
        Property String psBarticleRecr Public ''
        Property String psOutputDevice Public ''
        property number pnposo public 0
    End_Procedure //construct_object

    Procedure Constrain
        constrain bmove.barticl_recr eq (psBarticleRecr(Self))
    End_Procedure //constrain

    Report_Breaks Bmove.Barticl_Recr


    Function Starting_Main_Report Returns Integer
        Integer liRetVal
        String  lsPrintTo
        Set psOutputDevice to 'LPT1:'
        Set Output_Device to (psOutputDevice(Self))
        Set Ordering        to 5
        Forward Get Starting_Main_Report to liRetval
        Set Page_Feed   to 66
        Set Page_End    to 64
        Move 66         to giMaxLines
        Function_Return liRetVal
    End_Function //starting_main_report

    Procedure Header
    End_Procedure

    Procedure Subheader1
        Move 0 to giGrammes
        Local Integer iPage  icount iclient
        string sdoy  mast srecr stext sclient sstr sGemiLektiko sGemiArithmos
        move 0 to iclient

        blankform HeaderR141New
        get pipage to ipage

        if (ipage=0)  move 1                  to ipage
        else add 1 to ipage
        move ipage                            to HeaderR141New.1


        Clear Branch
        Move syscurxr.company_code  to Branch.Company_Code
        Move syscurxr.Branch_code   to Branch.Branch_Code
        Find Eq branch By Index.1

        String sLine1 sLine2 sLine3 sLine4
        Move (Trim(Branch.Ypokat2))                                                           to sLine1
        Move (Trim(Branch.Edra1))                                                             to sLine2
        Move (Trim(Branch.Branch_addr)+"  "+Trim(Branch.Branch_tk)+" "+Trim(Branch.Perioxh))  to sLine3
        Move (Trim(Branch.Branch_tel)+"   "+Trim(Branch.Branch_tel))                          to sLine4


        ////---------------------------------------------
        //// 20/06/2013 Prosthikh arithmou GEMH
        //// Prepei na mpei kato apo ta stoixeia etairias (einai protypomena)
        //// Opote prepei na metakinithoun ola ta pedia kata 2 (sGemiLektiko+sGemiArithmos)
        //// Apo to 2o kai meta mias kai ayta ta 2 mpainoyn sfina meta ton arithmo selidaw pou einai to proto pedio
        ////---------------------------------------------
        //Move "����:" to sGemiLektiko
        //Clear Company
        //Move SyscurXr.Company_Code          to Company.Company_Code
        //Find Eq Company By Index.1
        //Move (Trim(Company.Company_Resp))   to sGemiArithmos
        //If (Trim(sGemiArithmos)="") Move "" to sGemiLektiko
        ////---------------------------------------------
        //Move (Trim(sGemiLektiko )) to HeaderR141New.2
        //Move (Trim(sGemiArithmos)) to HeaderR141New.3
        ////---------------------------------------------
        //// 20/06/2013 Prosthikh arithmou GEMH
        ////---------------------------------------------

        Move (Trim(sLine1))                   to HeaderR141New.2
        move (trim(btypkin.btypkin_pdescr))   to HeaderR141New.3
        Move (Trim(sLine2))                   to HeaderR141New.4
        Move (Trim(sLine3))                   to HeaderR141New.5
        Move (Trim(sLine4))                   to HeaderR141New.6
        move barticl.ARITH_ORIST              to HeaderR141New.7
        move '���'                          to sstr
        Move (Append(sstr,(barticl.barticl_no)))  to sstr
        move sstr                             to HeaderR141New.8
        move (trim(barticl.barticl_hmnia))    to HeaderR141New.9

        //move '' to stext
        //append stext ((trim(syscurxr.company_code) + '-' + (trim(syscurxr.branch_name))))
        //move (trim(stext))                    to HeaderR141New.10

        move (trim(baxio.baxio_code_in))      to HeaderR141New.10
        move (trim(baxio.baxio_epon_in))      to HeaderR141New.11
        move (trim(baxio.baxio_code_in))      to sclient
        if   ((trim(baxio.baxio_code_in))='') begin
             move  (trim(baxio.baxio_code_out)) to HeaderR141New.10
             move  (trim(baxio.baxio_code_out)) to sclient
        end
        if   ((trim(baxio.baxio_epon_in))='');
             move  (trim(baxio.baxio_epon_out))  to HeaderR141New.11
        // ������ ���� ���/�塞 ��� �����餦���� �� ���᫜� ��� ���������
        if   (((trim(baxio.baxio_code_in))='') and ((trim(baxio.baxio_code_out))=''));
             move 1 to iclient
        if (iclient=1) move baxio.baxio_lcode to sclient


        clear clients
        move  sclient                         to clients.client_id
        find eq clients by index.6
        if (iclient=1) begin
           move 0 to iclient
           move (trim(clients.client_id))     to HeaderR141New.10
           move (trim(clients.client_name))   to HeaderR141New.11
        end

        move (trim(clients.client_address))   to HeaderR141New.12

        move ''                               to stext
        clear cities
        move clients.client_city_id           to cities.city_id
        find eq cities by index.1
        if (found=1) append stext  (trim(cities.city_descr))
        append stext ' ' (trim(clients.client_zipcode))
        clear areas
        move clients.client_area            to areas.area_id
        find eq areas by index.1
        if (found=1) append stext ' ' (trim(areas.area_descr))
        move (trim(stext))                  to HeaderR141New.13


        clear codemast
        move 'JOB'                          to codemast.type
        move clients.client_job             to codemast.code
        find eq codemast by index.1
        move (trim(codemast.description))   to HeaderR141New.14
        move (trim(clients.client_afm))     to HeaderR141New.15
        move (trim(clients.client_doy))     to sdoy
        move "DOY"                          to mast
        move (gsfcode_mast(mast,sdoy))      to sdoy
        move (trim(sdoy))                   to HeaderR141New.16


        move (trim(barticl.cn_code))        to HeaderR141New.17
        clear cn
        move barticl.cn_code                to cn.cn_code
        find eq cn by index.5
        move (trim(cn.cn_address))          to HeaderR141New.18
        move '' to stext

        clear cities
        move cn.cn_city                     to cities.city_id
        find eq cities by index.1
        if (found=1) append stext (trim(cities.city_descr))
        if (cn.cn_zipcode<>'') append stext ' ' (trim(cn.cn_zipcode))
        clear areas
        move cn.cn_area             to areas.area_id
        find eq areas by index.1
        if (found=1) append stext ' ' (trim(areas.area_descr))
        move (trim(stext)) to HeaderR141New.19
        OutPut HeaderR141New
        Move 28 to giGrammes // Harde Coded  poses grammes exei to image HeaderR141New

        set pipage to ipage
    End_Procedure //form_subheader1_F

    Procedure Body
        string  wrecr stext sdate hdate str
        integer licount liVrow pcfpa pcdisc ipage icountpmsdtl
        number  nqty nfpa ndisc naxia ntotal naxiaaf
        number nnunit nnqty nnpcdisc nposo nnnet nntotal

        get pipage  to ipage
        get pnposo to nposo
        blankform bodyR141New

        if (giGrammes > 49) begin // 28 grammes tou header + 21 grammes megisto tou body
            blankform bodyR141New.1 thru bodyR141New.7
            print '�� �������� ' to bodyR141New.5
            output bodyR141New
            formfeed
            Send Subheader1

            blankform bodyR141New.1 thru bodyR141New.7
            print '��� �������� ' to bodyR141New.5
            output bodyR141New
            add 1 to giGrammes
        end
        relate bmove
        Print bmove.bmove_aa                        to bodyR141New.1
        if (baxio.baxiokat_code = 99) begin
            print (trim(baxiokat.baxiokat_descr))   to bodyR141New.2
            print baxio.baxio_v2                    to bodyR141New.7
            blankform bodyR141New.3 thru bodyR141New.6
        end
        else begin
           print (trim(baxio.baxio_no))             to bodyR141New.2
           print baxio.baxio_hmnial                 to bodyR141New.3
           print baxio.baxio_banka                  to bodyR141New.4
           clear codemast
           move 'BANK' to codemast.type
           move baxio.baxio_banka to codemast.code
           find eq codemast by index.1
           move codemast.description                to bodyR141New.5
           if (baxio.baxiokat_code = 1 or baxio.baxiokat_code = 10) begin
              move '' to stext
                    if (baxio.baxio_from='0') move '��妬 ' to str
              else  if (baxio.baxio_from='1') move '��嫦� ' to str
              else  move '' to str
              append stext str
                    if (baxio.baxio_topos='0') move '������' to str
              else  if (baxio.baxio_topos='1') move '�����嘪'  to str

              else move ''  to str
              append stext str
              move (trim(stext))                    to bodyR141New.6
           end
           if (baxio.baxiokat_code=2 or baxio.baxiokat_code=3) begin
              move '' to stext
              print stext to bodyR141New.6
           end
           print baxio.baxio_v2                    to bodyR141New.7

        end
        add baxio.baxio_v2 to nposo
        set pnposo to nposo
        Add bodyR141New.7                             to totalr141New.2
        output bodyR141New
        Add 1 to giGrammes
        //Send Check_Them
    End_Procedure

    Procedure SubTotal1
        integer licount iint ilen ikeno
        number nposo
        string stext sstr sstr1 sstr2
        get pnposo to nposo
        Get poso_olografos nposo to stext
    //    Move stext to sStr
    //    Append sStr ' '
    //    move (Length(sStr)) to iLen
    //    For iInt From 1 to iLen
    //      If (iInt>45) Break
    //      If (Mid(sStr,1,iInt)=' ') Move iInt to iKeno
    //    Loop
    //    Move '' to sStr1
    //    Move '' to sStr2
    //    Move (Left(sStr,iKeno-1))       to sStr1
    //    Move (Right(sStr,iLen-iKeno))   to sStr2
    //    if (sstr1<>'') print (trim(sstr1))      to totalr141New.1
    //    else          print ''          to totalr141New.1
    //    if (sstr2<>'') print (trim(sstr2))      to totalr141New.2
    //    else          print ''          to totalr141New.2

        Send Write_Blank_Body_Lines
        print stext                     to totalr141New.1
        print totalr141New.2               to totalr141New.2
        print (trim(btypkin.label))     to totalr141New.3
        print (trim(barticl.barticl_aitiol))   to totalr141New.4
        print (trim(barticl.sxolia1))   to totalr141New.5

        output totalr141New
        //Add 7 to giGrammes
        Send Formfeed
        //Send Check_Them

    End_Procedure


    Procedure Ending_Report
       set pnposo to 0
       set pipage to 0
       blankform totalr141New.1 thru totalr141New.5
    End_Procedure


    Procedure Write_Blank_Body_Lines
        Integer iInt
        for iInt from giGrammes to 50
            Writeln
        loop
    End_Procedure //Write_Lines

    Procedure Check_Them
        If giGrammes Eq (giMaxLines-1) Begin
            Send FormFeed
            Broadcast Send New_Page
            Move 0 To giGrammes
        End
    End_Procedure //check_them

    Procedure DoRunReport
        Send Run_Report
    End_procedure // DoRunReport

End_Class //


