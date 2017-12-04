//AB/ Project DomBridge
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "DomBridge"
//AB/     Set ProjectFileName to "DomBridge.VW"

// Project Object Structure
//   DomBridge is a dbViewSubS
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     ButtonSub3 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object DomBridge
Register_Object Mhxanik_DD
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object Towns_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open Codetype
Open Codemast
Open Cmn_Clnt
Open Cmn_Prof
Open Cmn_Salm
Open Etb_Area
Open Etb_Jobs



//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Button.Sub

Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use SALESMEN.DD
Use MHXANIK.DD
Use CONSTRCT.DD
Use CN.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_DomBridge FOR DomBridge

Object DomBridge is a dbViewSubS

    //AB-StoreTopStart


    //AB-StoreTopEnd

    Set Label to "Ñ†©òö‡ö„ ©´¶†ÆúÂ‡§ ÉéãàâÜë"
    Set Size to 125 425
    Set Location to 8 9

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
        Set Constrain_File to Payresp.File_Number
    End_Object    // Clients_DD

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Cn_DD

    Set Main_DD to (Payresp_DD(self))
    Set Server to (Payresp_DD(self))

    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "Ñßú•ú®öò©Âò"
        Set Size to 18 374
        Set Location to 18 21
        Set Form_FontHeight Item 0 to 16
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "Arial Greek"

        //AB-StoreStart

        Set Label to 'Ñßú•ú®öò©Âò'
        Set enabled_state to True

        Procedure OnClick
            String  sLabel sPelaths sclient sname safm sdoy saddres sjob srespons szipcode
            String  sphone sfax smobile saoh semail sidiot saddno sid sPrespID
            integer irecnum ival inum iLast iFs iInt iProblem i1 i2 i3 i4  isFound  iMyNextNum iDOY
            number ncity narea
            Move 0 to iMyNextNum
            Get Label to sLabel
            // Mhdenismos tou ASCII kathe fora pou trexei
            Direct_Output Channel 9 'C:\Domikh_pelates_Error.txt'

            // - SHMEIOSEIS ----------------
            // - 1. NA MPEI OLH H ROUTINA SE TRANSACTION ANA ARXEIO POU GEMIZEI ?
            // - 2. PROBLHMA => Ta areas ths Domikhs einai kodikopoihmena ana plant
            //                  eno ta dika mas oxi
            //      LYSH => Grafoume to area me kodiko pou tha prokipsei apo Area_Code x Area_Plant
            //              Apla na thimitho na xanavro ta areas me ton idio tropo

            Integer iii
            Integer iExodoss
            Move 1 to iDOY

            Clear Codemast
            Move 'DOY'                      to Codemast.Type
            Find GE Codemast By Index.1
            While ((Found) And (Codemast.Type='DOY'))
                If (Integer(Codemast.Code) > 0)  Delete Codemast
                Find GT Codemast By Index.1
            End


            //1. Areas
            Clear Etb_Area
            Find GE Etb_Area.recnum
            While ((Found) And (Etb_Area.recnum<>0))
                Set Label to ("AREAS    "+Trim(Etb_Area.Plant_Code)+" - "+Trim(Etb_Area.Area_Code))
                Clear Areas
                Move (Integer(Etb_Area.Area_Code)*Integer(Etb_Area.Plant_Code)) to Areas.Area_ID
                Move (Integer(Etb_Area.Area_Code)*Integer(Etb_Area.Plant_Code)) to iii
                Find Eq Areas By Index.1
                If (Not(Found)) Begin
                    Clear Areas
                    Move (Integer(Etb_Area.Area_Code)*Integer(Etb_Area.Plant_Code)) to Areas.Area_ID
                    Move Etb_Area.Plant_Code    to Areas.Area_Site
                    Move Etb_Area.Area_Descr    to Areas.Area_Descr
                    Saverecord Areas
                End
                Find GT Etb_Area.recnum
            Loop

            Move 0 to iExodoss
            Move 0 to iii
            //2.
            Clear Cmn_Prof
            Find Ge Cmn_Prof.recnum
            While ((Found) and (Cmn_Prof.Recnum<>0))
                Set Label to ("JOBS    "+Trim(Cmn_Prof.Prof_Code)+"  "+Trim(Cmn_Prof.Prof_Descr))
                Move Cmn_Prof.recnum to iii
                Clear Codemast
                Move "JOB"                      to Codemast.Type
                Move Cmn_Prof.Prof_Code         to Codemast.Code
                Find Eq Codemast By Index.1
                If (Not((Found) And ("JOB"=Codemast.Type) And (Trim(Cmn_Prof.Prof_Code)=Trim(Codemast.Code)))) Begin
                    Clear Codemast
                    Move "JOB"                      to Codemast.Type
                    Move Cmn_Prof.Prof_Code         to Codemast.Code
                    Move (Trim(Cmn_Prof.Prof_Descr))    to Codemast.Description
                    Saverecord Codemast
                End
                Find GT Cmn_Prof.recnum
            Loop

            Move 0 to iExodoss
            Move 0 to iii
            Move 0 to isFound
            //3.

            Clear Cmn_Salm
            Find Ge Cmn_Salm.recnum
            While (Found)
                Move 0 to isFound
                Clear Salesmen
                Find GE Salesmen By Index.4
                While (Found)
                    If (Trim(Salesmen.Sls_CodeM)=Trim(Cmn_Salm.Salman_Code)) Move Salesmen.Recnum to isFound
                    Find GT Salesmen By Index.4
                Loop
                If (isFound=0) Begin
                    Set Label to ("SALESMEN    "+Trim(Cmn_Salm.Salman_Code)+"  "+Trim(Cmn_Salm.Salman_Descr))
                    Send Clear to Salesmen_DD
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Company_Code  to Syscurxr.Company_Code
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Branch_Code   to Syscurxr.Branch_Code
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Year_Year     to Syscurxr.Year_Year
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Sls_Name      to Cmn_Salm.Salman_Descr
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Sls_CodeM     to Cmn_Salm.Salman_Code
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Sls_Active    to (1-Integer(Cmn_Salm.Inactive))
                    Set Field_Changed_Value Of Salesmen_DD Field Salesmen.Sls_Details   to Cmn_Salm.Originator
                    Send Request_Save to Salesmen_DD
                End
                Find GT Cmn_Salm.recnum
            Loop

            Move 0 to iExodoss
            Move 0 to iii
            Move 0 to isFound


            //4.  Apo CLients ftiaxnoume Cities, Doy, Payresp kai Clients

            File_Size Cmn_Clnt to iFS

            integer iiCount
            Move 0 to iiCount
            Clear Cmn_Clnt
            Find Ge Cmn_Clnt.recnum
            While ((Found) and (Cmn_Clnt.recnum<>0))
                Add 1 to iiCount
                Set Label to ("Clients/Presp/Salesm/CN  CMN_CLNT.Code="+Trim(Cmn_Clnt.Clnt_Code)+"   "+String(iiCount)+"/"+String(iFS))
                // Cities------------------------
                // Vres teleytaio arithmo Cities

                Clear Cities
                Move 9999 to Cities.City_ID
                Find Le Cities By Index.1
                Move (Cities.City_ID+1) to iLast
                // Ftiaxe neo Cities record an den yparxei hdh h perigrafh
                Clear Cities
                Move (Trim(Cmn_Clnt.City))  to Cities.City_Descr
                Find GE Cities By Index.2
                //Set Label to ("CITIES    "+Trim(Cmn_Clnt.City))
                If (NOT((Found) And (Trim(Cities.City_Descr)=Trim(Cmn_Clnt.City)))) Begin
                    Clear Cities
                    Move 17                     to Cities.Town_ID
                    Move iLast                  to Cities.City_ID
                    Move (Trim(Cmn_Clnt.City))  to Cities.City_Descr
                    Saverecord Cities
                    Send Find_By_Recnum to Cities_DD Cities.File_Number Cities.Recnum
                End
                Else Send Find to Cities_DD GE 2

                String sPelDOY

                // DOY------------------------
                // Bres an yparxei Codemast me perigrafh kai type
                Clear Codemast
                Move (Trim(Cmn_Clnt.Tax_Auth))  to Codemast.Description
                Move 'DOY'                      to Codemast.Type
                Find GE Codemast By Index.3
                If (NOT((Found) And (Trim(Cmn_Clnt.Tax_Auth)=Trim(Codemast.Description))And (Codemast.Type='DOY'))) Begin
                    Clear Codemast
                    Move 'DOY'                      to Codemast.Type
                    Move iDOY                       to Codemast.Code
                    Move (Trim(Cmn_Clnt.Tax_Auth))  to Codemast.Description
                    Saverecord Codemast
                    Add 1 to iDOY
                End
                Move Codemast.Code to sPelDoy

                String sCodeM
                // --------------------------------------------------------------------------------
                // PAYRESP ------------------------
                // Gia kathe pelath ftiaxnoume enan Payresp me ta idia stoixeia (Bash prodiagrafon)
                // --------------------------------------------------------------------------------
                // To arceio Payresp einai Main file sto view pou shmainei oti oi Clients
                // einai constrain s' ayto, opos kai to CN einai constrain sto clients
                // --------------------------------------------------------------------------------
                Move Cmn_Clnt.Comp_name         to sname
                Move Cmn_Clnt.Tax_No            to safm
                Move Cmn_Clnt.Address           to saddres
                Move Cmn_Clnt.Prof_Code         to sjob
                Move Cmn_Clnt.Zip               to szipcode
                Move Cmn_Clnt.Contact           to srespons
                Move Cmn_Clnt.Phone_1           to sphone
                Move Cmn_Clnt.Phone_2           to smobile
                Move Cmn_Clnt.Fax               to sfax
                MOve Cmn_Clnt.Clnt_Code         to sCodeM

                Clear Cities
                Move (Trim(Cmn_Clnt.City))  to Cities.City_Descr
                Find GE Cities By Index.2
                If ((Found) And (Trim(Cities.City_Descr)=Trim(Cmn_Clnt.City))) Move cities.city_id to ncity

                Move 0 to isFound
                Clear Payresp
                Move sCodeM to Payresp.Presp_CodeM
                Find GE Payresp By Index.8
                If ((Found) And (sCodeM=Payresp.Presp_CodeM)) Begin
                    Move Payresp.Recnum to isFound
                    Send Find to Payresp_DD GE 8
                End
                Else Move 0 to isFound


                If (isFound=0) Begin
                    //Set Label to ("PAYRESP    "+Trim(sCodeM))
                    send clear to payresp_dd
                    set field_changed_value of payresp_dd field payresp.presp_CodeM    to sCodeM
                    set field_changed_value of payresp_dd field payresp.presp_name     to sname
                    set field_changed_value of payresp_dd field payresp.presp_afm      to safm
                    set field_changed_value of payresp_dd field payresp.presp_doy      to sPelDoy
                    set field_changed_value of payresp_dd field payresp.presp_address  to saddres
                    set field_changed_value of payresp_dd field payresp.presp_city_id  to ncity
                    set field_changed_value of payresp_dd field payresp.presp_area     to narea
                    set field_changed_value of payresp_dd field payresp.presp_job      to sjob
                    set field_changed_value of payresp_dd field payresp.presp_respons  to srespons
                    set field_changed_value of payresp_dd field payresp.presp_zipcode  to szipcode
                    set field_changed_value of payresp_dd field payresp.presp_phone    to sphone
                    set field_changed_value of payresp_dd field payresp.presp_fax      to sfax
                    set field_changed_value of payresp_dd field payresp.presp_mobile   to smobile
                    move ncity to iVal
                    Move (fiTownIDFromCity(iVal)) to ival
                    Set Field_Changed_Value Of payresp_DD Field payresp.presp_Nomos to iVal
                    Move (fiCountryIDFromTown(iVal)) to ival
                    Set Field_Changed_Value Of payresp_DD Field payresp.presp_Xora to iVal
                    send request_save to payresp_dd
                End
                Else Send Find_By_Recnum to Payresp_DD Payresp.File_Number isFound

                Get Field_Current_Value Of Payresp_DD Field Payresp.Presp_ID to sPrespID

                // CLIENTS ------------------------
                // Ftiaxoume Clients apo to arxeio CMN_CLNT
                String sRecr
                Move "" to sRecr
                Move 0 to isFound
                move (trim(safm)) to safm
                if (length(safm)<7) goto proxora
                if (safm='011111111') goto proxora
                Clear Clients

                Move sAFM to Clients.Client_AFM
                Find GE Clients By Index.8
                If ((Found) And (Clients.Client_AFM=sAFM)) Move Clients.Recnum to isFound
                If (isFound=0) Begin
                    Writeln Channel 9 'èú¢·´ú™      '  '    Client not found with afm  afm=' safm
                    Clear Clients
                    Find GE Clients By Index.2
                    While ((Found) And (isFound=0))
                        If (Clients.Client_CodeM=sCodeM) Begin
                            Move Clients.Recnum      to isFound
                            Move Clients.CLient_Recr to sRecr
                            Writeln Channel 9 'èú¢·´ú™     '  '    Client found with codem  codem=' scodem
                        End
                        Find GT Clients By Index.2
                    Loop
                End
                //Set Label to ("CLIENTS    "+Trim(sCodeM))
                proxora:
                If (isFound=0) Begin
                    send clear to Clients_dd
                    set field_changed_value of Clients_dd field Clients.Client_CodeM    to sCodeM
                    set field_changed_value of Clients_dd field Clients.Is_Client       to "1"
                    set field_changed_value of Clients_dd field Clients.Client_name     to sname
                    set field_changed_value of Clients_dd field Clients.Client_afm      to safm
                    set field_changed_value of Clients_dd field Clients.Client_doy      to speldoy
                    set field_changed_value of Clients_dd field Clients.Client_address  to saddres

                    Clear Cities
                    Move (Trim(Cmn_Clnt.City))  to Cities.City_Descr
                    Find GE Cities By Index.2
                    If ((Found) And (Trim(Cities.City_Descr)=Trim(Cmn_Clnt.City))) Begin
                        Move cities.city_id to ncity
                        Send Find_By_Recnum to Cities_DD Cities.File_Number Cities.Recnum
                    End
                    //Else Begin
                    //End

                    //set field_changed_value of Clients_dd field Clients.Client_city_id  to ncity

                    set field_changed_value of Clients_dd field Clients.Client_area     to narea

                    set field_changed_value of Clients_dd field Clients.Client_job      to sjob
                    set field_changed_value of Clients_dd field Clients.Client_respons  to srespons
                    set field_changed_value of Clients_dd field Clients.Client_zipcode  to szipcode
                    set field_changed_value of Clients_dd field Clients.Client_phone    to sphone
                    set field_changed_value of Clients_dd field Clients.Client_fax      to sfax
                    set field_changed_value of Clients_dd field Clients.Client_mobile   to smobile

                    move ncity to iVal
                    Move (fiTownIDFromCity(iVal)) to ival
                    Set Field_Changed_Value Of Clients_DD Field Clients.Client_Nomos to iVal
                    Move (fiCountryIDFromTown(iVal)) to ival
                    Set Field_Changed_Value Of Clients_DD Field Clients.Client_Xora to iVal
                    send request_save to Clients_dd
                    Writeln Channel 9 'èú¢·´ú™     '  '    new Client  afm=' safm

                End
                Else Begin
                   Send Find_By_Recnum to Clients_DD CLients.File_Number isFound
                   get field_current_value of clients_dd field clients.client_codem to sid
                   if (scodem<>sid) begin
                     Writeln Channel 9 'èú¢·´ú™     '  '    allagh codem new codem=' scodem    'èò¢†Ê codem = ' sid
              //       Reread Clients
              //       Move  sCodeM to Clients.Client_CodeM
              //       Saverecord Clients
              //       Unlock
                       set field_changed_value of clients_dd field clients.client_codem to scodem
                       send request_save to clients_dd
                   end
                   else Writeln Channel 9 'èú¢·´ú™  '  '    ¨ßò®°´Ê™ ©´¶ ©Á©´û£ò é§¶£ò=' sname

                End

                String sClientID
                Get Field_Current_Value Of Clients_DD Field Clients.Client_ID to sClientID

                // CN ------------------------
                // Ftiaxoume ta erga gia ton sygkekrimeno pelath apo to arxeio ETB_JOBS


                Clear Etb_Jobs
                Move sCodeM to Etb_Jobs.Clnt_Code
                Find Ge Etb_Jobs By Index.1
                While ((Found) And (sCodeM=Etb_Jobs.Clnt_Code))
                    //Set Label to ("CN   "+Trim(sCodeM)+Trim(Etb_Jobs.Job_Code))

                    String sNewCode
                    Clear CN
                    // js 05/05/2008
                    //Move Etb_Jobs.Job_Code to CN.CN_Codematch
                    Move (Etb_Jobs.Job_Code+"-"+sCodeM) to sNewCode
                    Move sNewCode to CN.CN_Codematch
                    Find GE CN By Index.8
                    If (NOT((Found) And (CN.CN_Codematch=sNewCode))) Begin
                        Send Clear to CN_DD
                        Move 0 to isFound
                        Clear Salesmen
                        Find GE Salesmen By Index.1
                        While ((Found) And (isFound=0))
                            If (Etb_Jobs.Salman_Code=Salesmen.SLS_CodeM) Begin
                                Move Salesmen.Recnum to isFound
                            End
                            Find GT Salesmen By Index.1
                        Loop
                        If (isFound) Send Find_By_Recnum to Salesmen_DD Salesmen.File_Number isFound
                        Else Begin
                            Clear Salesmen
                            Move SyscurXR.Company_Code  to Salesmen.Company_Code
                            Move SyscurXR.Branch_Code   to Salesmen.Branch_Code
                            Move SyscurXR.Year_Year     to Salesmen.Year_Year
                            Move "01.Z2.00001"         to Salesmen.SLS_ID
                            Find Eq Salesmen By Index.1
                            If (Not(Found)) Begin
                                Move " <Ä§Áßò®°´¶™>"     to Salesmen.SLS_Name
                                Saverecord Salesmen
                            End
                            Send Find_By_Recnum to Salesmen_DD Salesmen.File_Number Salesmen.Recnum
                        End

                        Set Field_Changed_Value Of CN_DD Field CN.CN_DESCR        to (Trim(sName)+" / "+Trim(ETB_JOBS.ADDRESS))  //ETB_JOBS.SALMAN_CODE
                        Set Field_Changed_Value Of CN_DD Field CN.CN_ADDRESS      to ETB_JOBS.ADDRESS
                        Set Field_Changed_Value Of CN_DD Field CN.CN_ZIPCODE      to ETB_JOBS.ZIP

                        Clear Cities
                        Move (Trim(Etb_Jobs.City))  to Cities.City_Descr
                        Find GE Cities By Index.2
                        If ((Found) And (Trim(Cities.City_Descr)=Trim(Etb_Jobs.City))) Move cities.city_id to ncity
                        Set Field_Changed_Value Of CN_DD Field CN.CN_CITY         to ncity

                        Clear Areas
                        Move (Integer(Etb_Jobs.Area_Code)*Integer(Etb_Jobs.Plant_Code)) to Areas.Area_ID
                        Find Eq Areas By Index.1
                        Set Field_Changed_Value Of CN_DD Field CN.CN_AREA         to Areas.Area_ID

                        move ncity to iVal
                        Move (fiTownIDFromCity(iVal)) to ival
                        Set Field_Changed_Value Of CN_DD Field CN.CN_Nomos to iVal
                        Move (fiCountryIDFromTown(iVal)) to ival
                        Set Field_Changed_Value Of CN_DD Field CN.CN_Xora to iVal

                        Set Field_Changed_Value Of CN_DD Field CN.CN_PHONE        to Etb_Jobs.Phone
                        Set Field_Changed_Value Of CN_DD Field CN.CN_ZONE         to Etb_Jobs.Zone_Code
                        Set Field_Changed_Value Of CN_DD Field CN.CN_CLIENTMATCH  to ETB_JOBS.CLNT_CODE
                        Set Field_Changed_Value Of CN_DD Field CN.CN_CODEMATCH    to sNewCode // 05/05/2008   ETB_JOBS.JOB_CODE
                        Set Field_Changed_Value Of CN_DD Field CN.CN_CLIENTID     to sClientID
                        Set Field_Changed_Value Of CN_DD Field CN.CN_ADD_NO       to Etb_Jobs.Address
                        Set Field_Changed_Value Of CN_DD Field CN.CN_START_DATE   to ETB_JOBS.START_DATE
                        Send Request_Save to CN_DD

                    End
                    Find GT Etb_Jobs By Index.1
                Loop
                Find GT Cmn_Clnt.recnum
            Loop

            close_Output Channel 9
            Set Label to sLabel
            Send Info_Box 'Ü úßú•ú®öò©Âò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick











































































        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "ãéåé íÄ ÑêÇÄ"
        Set Size to 18 374
        Set Location to 47 23
        Set Form_FontHeight Item 0 to 16
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "Arial Greek"

        //AB-StoreStart

        Set Label to 'ãéåé íÄ ÑêÇÄ'

        Procedure OnClick
            String  sLabel sPelaths sclient sname safm sdoy saddres sjob srespons szipcode
            String  sphone sfax smobile saoh semail sidiot saddno sid sPrespID
            integer irecnum ival inum iLast iFs iInt iProblem i1 i2 i3 i4  isFound  iMyNextNum iDOY
            number ncity narea
            Move 0 to iMyNextNum
            Get Label to sLabel

            // - SHMEIOSEIS ----------------
            // - 1. NA MPEI OLH H ROUTINA SE TRANSACTION ANA ARXEIO POU GEMIZEI ?
            // - 2. PROBLHMA => Ta areas ths Domikhs einai kodikopoihmena ana plant
            //                  eno ta dika mas oxi
            //      LYSH => Grafoume to area me kodiko pou tha prokipsei apo Area_Code x Area_Plant
            //              Apla na thimitho na xanavro ta areas me ton idio tropo

            Integer iii iMyCount iMyCount2
            Integer iExodoss
            Move 1 to iDOY


            Move 0 to iExodoss
            Move 0 to iii
            Move 0 to isFound
            Move 0 to iMyCount
            Move 0 to iMyCount2


            //4.  Apo CLients ftiaxnoume Cities, Doy, Payresp kai Clients

            File_Size Cmn_Clnt to iFS

            integer iiCount
            Move 0 to iiCount
            Clear Cmn_Clnt
            Find Ge Cmn_Clnt.recnum
            While ((Found) and (Cmn_Clnt.recnum<>0))
                Add 1 to iiCount
                Set Label to ("Clients/Presp/Salesm/CN  CMN_CLNT.Code="+Trim(Cmn_Clnt.Clnt_Code)+"   "+String(iiCount)+"/"+String(iFS))
                String sCodeM
                Move Cmn_Clnt.Comp_name         to sname
                Move Cmn_Clnt.Tax_No            to safm
                Move Cmn_Clnt.Address           to saddres
                Move Cmn_Clnt.Prof_Code         to sjob
                Move Cmn_Clnt.Zip               to szipcode
                Move Cmn_Clnt.Contact           to srespons
                Move Cmn_Clnt.Phone_1           to sphone
                Move Cmn_Clnt.Phone_2           to smobile
                Move Cmn_Clnt.Fax               to sfax
                MOve Cmn_Clnt.Clnt_Code         to sCodeM
                Move (Trim(sCodeM)) to sCodeM

                // CLIENTS ------------------------
                // Ftiaxoume Clients apo to arxeio CMN_CLNT
                String sRecr
                Move "" to sRecr
                Move 0 to isFound

                Clear Clients
                Find GE Clients By Index.2
                While ((Found) And (isFound=0))
                    If (Trim(Clients.Client_CodeM)=sCodeM) Begin
                        Move Clients.Recnum      to isFound
                        Move Clients.CLient_Recr to sRecr
                    End
                    Find GT Clients By Index.2
                Loop

                If (isFound>0) Begin
                    Send Find_By_Recnum to Clients_DD CLients.File_Number isFound

                    String sClientID
                    Get Field_Current_Value Of Clients_DD Field Clients.Client_ID to sClientID
                    Move (Trim(sClientID)) to sClientID
                    // CN ------------------------
                    // Ftiaxoume ta erga gia ton sygkekrimeno pelath apo to arxeio ETB_JOBS

                    Clear Etb_Jobs
                    Move sCodeM to Etb_Jobs.Clnt_Code
                    Find Ge Etb_Jobs By Index.1
                    While ((Found) And (sCodeM=Trim(Etb_Jobs.Clnt_Code)))

                        String sNewCode
                        Clear CN
                        // js 05/05/2008
                        //Move Etb_Jobs.Job_Code to CN.CN_Codematch
                        Move (Trim(Trim(Etb_Jobs.Job_Code)+"-"+sCodeM)) to sNewCode
                        Move sNewCode to CN.CN_Codematch
                        Set Label to ("CN    "+Trim(sNewCode))
                        Find GE CN By Index.8
                        If (NOT((Found) And (Trim(CN.CN_Codematch)=sNewCode))) Begin
                            Add 1 to iMyCount
                            Send Clear to CN_DD
                            Move 0 to isFound
                            Clear Salesmen
                            Find GE Salesmen By Index.1
                            While ((Found) And (isFound=0))
                                If (Etb_Jobs.Salman_Code=Salesmen.SLS_CodeM) Begin
                                    Move Salesmen.Recnum to isFound
                                End
                                Find GT Salesmen By Index.1
                            Loop
                            If (isFound) Send Find_By_Recnum to Salesmen_DD Salesmen.File_Number isFound
                            Else Begin
                                Clear Salesmen
                                Move SyscurXR.Company_Code  to Salesmen.Company_Code
                                Move SyscurXR.Branch_Code   to Salesmen.Branch_Code
                                Move SyscurXR.Year_Year     to Salesmen.Year_Year
                                Move "01.Z2.000000"         to Salesmen.SLS_ID
                                Find Eq Salesmen By Index.1
                                If (Not(Found)) Begin
                                    Move " <Ä§Áßò®°´¶™>"     to Salesmen.SLS_Name
                                    Saverecord Salesmen
                                End
                                Send Find_By_Recnum to Salesmen_DD Salesmen.File_Number Salesmen.Recnum
                            End

                            Set Field_Changed_Value Of CN_DD Field CN.CN_DESCR        to (Trim(sName)+" / "+Trim(ETB_JOBS.ADDRESS))  //ETB_JOBS.SALMAN_CODE
                            Set Field_Changed_Value Of CN_DD Field CN.CN_ADDRESS      to ETB_JOBS.ADDRESS
                            Set Field_Changed_Value Of CN_DD Field CN.CN_ZIPCODE      to ETB_JOBS.ZIP

                            Clear Cities
                            Move (Trim(Etb_Jobs.City))  to Cities.City_Descr
                            Find GE Cities By Index.2
                            If ((Found) And (Trim(Cities.City_Descr)=Trim(Etb_Jobs.City))) Move cities.city_id to ncity
                            Set Field_Changed_Value Of CN_DD Field CN.CN_CITY         to ncity

                            Clear Areas
                            Move (Integer(Etb_Jobs.Area_Code)*Integer(Etb_Jobs.Plant_Code)) to Areas.Area_ID
                            Find Eq Areas By Index.1
                            Set Field_Changed_Value Of CN_DD Field CN.CN_AREA         to Areas.Area_ID

                            move ncity to iVal
                            Move (fiTownIDFromCity(iVal)) to ival
                            Set Field_Changed_Value Of CN_DD Field CN.CN_Nomos to iVal
                            Move (fiCountryIDFromTown(iVal)) to ival
                            Set Field_Changed_Value Of CN_DD Field CN.CN_Xora to iVal

                            Set Field_Changed_Value Of CN_DD Field CN.CN_PHONE        to Etb_Jobs.Phone
                            Set Field_Changed_Value Of CN_DD Field CN.CN_ZONE         to Etb_Jobs.Zone_Code
                            Set Field_Changed_Value Of CN_DD Field CN.CN_CLIENTMATCH  to ETB_JOBS.CLNT_CODE
                            Set Field_Changed_Value Of CN_DD Field CN.CN_CODEMATCH    to sNewCode // 05/05/2008   ETB_JOBS.JOB_CODE
                            Set Field_Changed_Value Of CN_DD Field CN.CN_CLIENTID     to sClientID
                            Set Field_Changed_Value Of CN_DD Field CN.CN_ADD_NO       to Etb_Jobs.Address
                            Set Field_Changed_Value Of CN_DD Field CN.CN_START_DATE   to ETB_JOBS.START_DATE
                            Send Request_Save to CN_DD

                        End
                        Else Add 1 to iMyCount2
                        Find GT Etb_Jobs By Index.1
                    Loop
                End
                Find GT Cmn_Clnt.recnum
            Loop
            Set Label to sLabel
            String sMes
            Move "" to sMes
            Append sMes "Å®‚üû°ò§ " iMyCount2 " „õû °ò´òÆ‡®û£‚§ò ‚®öò" "\n" "âò† " iMyCount " §‚ò ‚®öò °ò´òÆ‡®„°ò§" "\n" "ëÁ§¶¢¶ ‚®ö‡§ = " (iMyCount+iMyCount2)
            Send Info_Box sMes 'Ü Ñßú•ú®öò©Âò é¢¶°¢û®Èüû°ú'
        End_Procedure // OnClick






























































        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object ButtonSub3 is a ButtonSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "ãéåé Ééì CODETYPE CODEMATCH"
        Set Size to 18 374
        Set Location to 77 21
        Set Form_FontHeight Item 0 to 16
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "Arial Greek"

        //AB-StoreStart

        Set Label to 'Ñßú•ú®öò©Âò'
        Set enabled_state to True

        Procedure OnClick
            String  sLabel sPelaths sclient sname safm sdoy saddres sjob srespons szipcode
            String  sphone sfax smobile saoh semail sidiot saddno sid sPrespID scodem sPelDoy
            integer irecnum ival inum iLast iFs iInt iProblem i1 i2 i3 i4  isFound  iMyNextNum iDOY
            number ncity narea
            Move 0 to iMyNextNum
            Get Label to sLabel
            // Mhdenismos tou ASCII kathe fora pou trexei

            Integer iii
            Integer iExodoss
            Move 301 to iDOY


            File_Size Cmn_Clnt to iFS

            integer iiCount
            Move 0 to iiCount
            Clear Cmn_Clnt
            Find Ge Cmn_Clnt.recnum
            While ((Found) and (Cmn_Clnt.recnum<>0))
                Add 1 to iiCount
                Set Label to ("Clients/Presp/Salesm/CN  CMN_CLNT.Code="+Trim(Cmn_Clnt.Clnt_Code)+"   "+String(iiCount)+"/"+String(iFS))

                Move (Trim(Cmn_Clnt.Tax_No)) to safm

                If ( (safm>'0') And (length(safm)>=7) And ((safm<>'011111111'))) Begin

                    Clear Codemast
                    Move 'DOY'                      to Codemast.Type
                    Move (Trim(Cmn_Clnt.Tax_Auth))  to Codemast.Description
                    Find GE Codemast By Index.3
                    If (NOT((Found) And (Trim(Cmn_Clnt.Tax_Auth)=Trim(Codemast.Description))And (Codemast.Type='DOY'))) Begin
                        Clear Codemast
                        Move 'DOY'                      to Codemast.Type
                        Move iDOY                       to Codemast.Code
                        Move (Trim(Cmn_Clnt.Tax_Auth))  to Codemast.Description
                        Saverecord Codemast
                        Reread Codemast
                        Unlock
                        Add 1 to iDOY
                    End
                    else Move Codemast.Code to sPelDoy

                    if (Trim(speldoy)="") Begin
                        //Showln  'ERROR....   DOY Not found=' (Trim(sPeldoy))
                        Procedure_return

                    End
                    MOve Cmn_Clnt.Clnt_Code      to sCodeM

                    Move 0 to isFound

                    //If (sCodem=962) Showln 'FOUND 962   AFM=' (Trim(sAFM))    '    speldoy=' speldoy

                    Move sAFM to Clients.Client_AFM
                    Find GE Clients By Index.8
                    If ((Found) And (Clients.Client_AFM=sAFM)) Begin
                        Move Clients.Recnum to isFound
                         //If (sCodem=962) Showln 'Found with AFM      recnum=' isFound
                    end

                    If (isFound=0) Begin
                        //Writeln Channel 9 'èú¢·´ú™      '  '    Client not found with afm  afm=' safm
                        Clear Clients
                        Find GE Clients By Index.2
                        While ((Found) And (isFound=0))
                            If (Clients.Client_CodeM=sCodeM) Begin
                                Move Clients.Recnum      to isFound
                                //If (sCodem=962) Showln 'Found by CodeM   recnum=' isFound
                                //Move Clients.CLient_Recr to sRecr
                               // Writeln Channel 9 'èú¢·´ú™     '  '    Client found with codem  codem=' scodem
                            End
                            Find GT Clients By Index.2
                        Loop
                    End
                    //Set Label to ("CLIENTS    "+Trim(sCodeM))
                    If (isFound>0) Begin
                        clear Clients
                        Move isFound to Clients.Recnum
                        Find Eq Clients by Recnum
                        If (Found) Begin
                            Reread Clients
                            Move sPelDoy to Clients.Client_DOY
                            Saverecord Clients
                            Unlock
                        End
                    End

                End

                Find GT Cmn_Clnt.Recnum
            Loop

            Set Label to sLabel
            Send Info_Box 'Ü úßú•ú®öò©Âò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick


















































































        //AB-StoreEnd

    End_Object    // ButtonSub3


    //AB-StoreStart

    On_Key Key_Alt+Key_O send OpenButton

    Procedure OpenButton
        Integer isEnabled
        Get Enabled_State of ButtonSub1 to isEnabled
        Set Enabled_State of ButtonSub1 to (1-isEnabled)
    End_Procedure

    //AB-StoreEnd

End_Object    // DomBridge


//AB-StoreStart









//AB-StoreEnd

//AB/ End_Object    // prj
