//AB/ Project KeepCode
//AB/ Object prj is a VIEW_Project
//AB/     Set ProjectName to "KeepCode"
//AB/     Set ProjectFileName to "keepCode.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   KeepCOde is a dbViewSubS
//     Analkath_BasicReport is a BasicReport
//       Gmhnes_DD is a Gmhnes_DataDictionary
//       Ghmnies_DD is a Ghmnies_DataDictionary
//       Gmoves_DD is a Gmoves_DataDictionary

// Register all objects
Register_Object Analkath_BasicReport
Register_Object Ghmnies_DD
Register_Object Gmhnes_DD
Register_Object Gmoves_DD
Register_Object KeepCOde


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use AllEntSub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_KeepCOde FOR KeepCOde

Object KeepCOde is a dbViewSubS

    //AB-StoreTopStart

    //AB-StoreTopEnd

    Set Label to "Put The Label of The View Here"
    Set Size to 150 300
    Set Location to 6 6

    //AB-DDOStart


    //AB-DDOEnd


    //AB-StoreStart
    //Selection Variables
    Local String lsDate_ToR0561## lsDate_FromR0561##
    Local String lsGplanCode_FromR0561## lsGplanCode_EosR0561##
    Local Integer liGtypKin_Code_FromR0561## liGtypKin_Code_ToR0561##

    //Multicurrency selection Constants
    Local Integer liSeriesR0561##
    Local Integer liKeepSectionTogetherR0561## //All one by one currencies
    local integer State1R0561## State2R0561## State3R0561##

    //Program Variables
    Local Number lnPreviousYpolR0561##
    Local string lsGplan_CodeR0561## lsYearYYYYR0561## lsMhnasToR0561## lsFromDateR0561##
    Local Number LnYpolMhnesR0561## LnYpolHmniesR0561##
    Local String CheckCodeR0561##
    Local Number lnYpolToPrintR0561## lnYpolFromBodyR0561##;
                 lnSynxreToPrint## lnSynpistToPrint##;
                 lnSynxrePrevious## lnSynpistPrevious##

    Procedure StartReport
        Local Integer iOutputDevice
        Local String  FileName

        Get Output_Device_Mode To iOutputDevice

        If iOutputDevice EQ PRINT_TO_WINDOW Begin
           Make_Temp_File "TXT" FileName
           Move (".\" - FileName)  To FileName
           Set Output_Device_Name  To FileName
        End
        Else ;
        Set Output_Device_Name  To "Lpt1:"

       // Collection Of selection Criteria from VIEW
       Get value of (frmGplan_Code_From(GroupSub1(Self))) item 0 to lsGplanCode_FromR0561##
       Get value of (frmGplan_Code_Eos(GroupSub1(Self))) item 0 to lsGplanCode_EosR0561##

       Get value of (FormSub1(GroupSub2(Self))) item 0 to lsDate_FromR0561##
       Get value of (FormSub2(GroupSub2(Self))) item 0 to lsDate_ToR0561##

        //--------------------------------------------------------------------------------
        //Multicurrency Selection Criteria From VIEW
        move 0 to liSeriesR0561##
        Get checked_State of (checkBoxSub1(RadioGroupSub4(current_object))) to State1R0561##
        Get checked_State of (checkBoxSub2(RadioGroupSub4(current_object))) to State2R0561##
        Get checked_State of (checkBoxSub3(RadioGroupSub4(current_object))) to State3R0561##
        Get checked_State of (checkBoxSub4(RadioGroupSub4(current_object))) to liKeepSectionTogetherR0561##
        //--------------------------------------------------------------------------------

        Move "" to CheckCodeR0561##

        //Send Run_Report  //record

        if (State1R0561## eq 1) begin
                move 1 to liSeriesR0561## //Book
                move 0 to State1R0561##
                Send Run_Report
        end

        if (State2R0561## eq 1) begin
                move 2 to liSeriesR0561## //Euro
                move 0 to State2R0561##
                send Run_Report
        end

        if (State3R0561## eq 1) begin
                move 3 to liSeriesR0561## //Euro
                move 0 to State3R0561##
                send Run_Report
        end

        if liKeepSectionTogetherR0561## eq 1 begin
            move 0 to liKeepSectionTogetherR0561##
            send page_bottom to (Analkath_BasicReport(Current_Object))
            formfeed
        end

        If iOutputDevice EQ PRINT_TO_WINDOW Begin
           RunProgram background "notepad" FileName
           EraseFile FileName
        End



    End_Procedure   // StartReport


    Object Analkath_BasicReport is a BasicReport
       Local Integer iIndexR056_1


        if liKeepSectionTogether## eq 1 begin
            set new_page_state to false
        end

       Set Report_Title to "Printing AnalKath"


        Object Gmhnes_DD is a Gmhnes_DataDictionary
        End_Object    // Gmhnes_DD

        Object Ghmnies_DD is a Ghmnies_DataDictionary
        End_Object    // Ghmnies_DD

        Object Gmoves_DD is a Gmoves_DataDictionary
            // Constrain to use depending on users choice
            begin_constraints
                If lsDate_FromR0561##      ne "" Constrain Gmoves.Garticl_Hmnia   ge lsDate_FromR0561##
                If lsDate_ToR0561##        ne "" Constrain Gmoves.Garticl_Hmnia   le lsDate_ToR0561##
                if lsGplanCode_FromR0561## ne "" Constrain Gmoves.Gplan_Code ge lsGplanCode_FromR0561##
                if lsGplanCode_EosR0561##  ne "" Constrain Gmoves.Gplan_Code le lsGplanCode_EosR0561##

                //if liGtypKin_Code_From## ne 0 Constrain Gmoves.Gtypkin_Code ge liGtypKin_Code_From##
                //if liGtypKin_Code_To##   ne 0 Constrain Gmoves.Gtypkin_Code le liGtypKin_Code_To##
            end_constraints
        End_Object // Gplan_DD

        //Main DD for the report
        Set Server To (Gmoves_DD(Current_Object))

        //Breaks and Index for the report
        Report_Index By Index.1
        Report_breaks Gmoves.Gplan_Code

       Function Starting_Main_Report Returns Integer
          Local Integer iRetVal
          Forward Get Starting_Main_Report to iRetval

          Get Sort_IndexR056_1  To iIndexR056_1
          Report_Index BY 6 //iIndexR056_1    // set the sort order
          SysDate4 FooterR056_1_1.1         // set date for report
       End_Function

       Procedure_Section Page_Top as HeaderR056_1
          Local Integer iPage
          Get Page_Count  To iPage
    //      Print iPage
          OutPut_PageCheck
       End_Procedure

       Procedure_Section SubHeader1 as SubheaderR056_1_1
          Local Integer iPage

        move lsDate_FromR0561## to lsFromDateR0561##
        move Gmoves.Gplan_Code to lsGplan_CodeR0561##

        if lsGplan_CodeR0561## ne CheckCodeR0561## begin
            if lsDate_FromR0561## ne "" begin

                move 0 to lnPreviousYpolR0561##
                move 0 to LnYpolMhnesR0561##
                move 0 to LnYpolHmniesR0561##

                Move (fgMan_Date(self,lsDate_FromR0561##,2)) to lsMhnasToR0561##
                Move (fgMan_Date(self,lsDate_FromR0561##,3)) to lsYearYYYYR0561##
                Move (fnCalcMhnes_Ypol(Gmhnes_dd(self),1,lsMhnasToR0561##,lsYearYYYYR0561##,lsGplan_CodeR0561##)) to lnYpolMhnesR0561##
                Move (fnCalcHmnies_Ypol(GHmnies_dd(self),1,lsFromDateR0561##,lsFromDateR0561##,lsGplan_CodeR0561##)) to lnYpolHmniesR0561##

                Move (LnYpolMhnesR0561##+LnYpolHmniesR0561##) to lnPreviousYpolR0561##

                move lnPreviousYpolR0561## to lnYpolToPrintR0561## //from transfer
                move (ImageCalcMhnes.1+ImageCalcHmnies.1) to lnSynxrePrevious##
                move (ImageCalcMhnes.2+ImageCalcHmnies.2) to lnSynPistPrevious##

            end
            else begin
                move 0 to lnPreviousYpolR0561##
                move lnPreviousYpolR0561## to lnYpolToPrintR0561## //from transfer
            end

            move lsGplan_CodeR0561## to CheckCodeR0561##
            Print Gmoves.Gplan_Code      to SubHeaderR056_1_1.1
            Print lnSynxrePrevious##     to SubHeaderR056_1_1.2
            Print lnSynPistPrevious##    to SubHeaderR056_1_1.3
            Print lnYpolToPrintR0561##   to SubHeaderR056_1_1.6

            OutPut_PageCheck
        end
        else begin
                move lnYpolFromBodyR0561## to lnYpolToPrintR0561##

                Print Gmoves.Gplan_Code     to SubHeaderR056_1_1.1
                Print lnYpolToPrintR0561##  to SubHeaderR056_1_1.6
                OutPut_PageCheck
             end

          //Print 0.00 //lnSynxreToPrint##
          //Print 0.00 //  lnSynPistToPrint##
          //  Print lnYpolToPrintR0561##

          //  OutPut_PageCheck

       End_Procedure

       Procedure_Section  Body as BodyR056_1
           //Send Update_Status (String(Customer.Customer_number)- ":" * Customer.Name )

         Print Gmoves.Garticl_Hmnia
         Print Gmoves.Gmoves_Aitiol

         if (liSeriesR0561## eq 1) begin
             move BodyR056_1.5 to lnSynxreToPrint##  //>> metafora selidas
             move BodyR056_1.6 to lnSynpistToPrint## //>> metafora selidas
             move BodyR056_1.7 to lnYpolFromBodyR0561## //>> metafora selidas

             Print Gmoves.Gmoves_X0   to BodyR056_1.3 //{ points=2} BOOK (Format if needed)
             Print Gmoves.Gmoves_P0   to BodyR056_1.4 //{ points=2}

             move (lnSynxrePrevious##+Gmoves.Gmoves_x0) to lnSynxrePrevious##
             move (lnSynpistPrevious##+Gmoves.Gmoves_P0) to lnSynPistPrevious##

             Print lnSynxrePrevious## to BodyR056_1.5 //{ points=2}
             Print lnSynPistPrevious## to BodyR056_1.6 //{ points=2}

             move (lnPreviousYpolR0561## + BodyR056_1.3-BodyR056_1.4) to lnPreviousYpolR0561##
             Print lnPreviousYpolR0561## to BodyR056_1.7 //{ points=2}
         end

         if (liSeriesR0561## eq 2) begin
             Print Gmoves.Gmoves_X00 to BodyR056_1.3 { points=2} //EURO
             Print Gmoves.Gmoves_P00 to BodyR056_1.4 { points=2}
         End
         if (liSeriesR0561## eq 3) begin
             Print Gmoves.Gmoves_Xr to BodyR056_1.3 { points=2} //EURO
             Print Gmoves.Gmoves_Pr to BodyR056_1.4 { points=2}
         End
         if (liSeriesR0561## eq 0) begin
             Print Gmoves.Gmoves_X2 to BodyR056_1.3 //{ points=2} //Reccord
             Print Gmoves.Gmoves_P2 to BodyR056_1.4 //{ points=2}
         end
         OutPut_PageCheck
       End_Procedure

       Procedure_Section  Subtotal1 as SubtotalR056_1_1

         Subtotal BodyR056_1.3 to SubtotalR056_1_1.1
         Subtotal BodyR056_1.4 to SubtotalR056_1_1.2
         OutPut_PageCheck

       end_Procedure

       Procedure_Section Page_Bottom as FooterR056_1_1
           if (liKeepSectionTogetherR0561## ne 1)  OutPut_PageCheck
       End_Procedure


       Procedure Ending_Report
       End_Procedure

    End_Object


    Procedure Activate_View Returns Integer
        Local Integer Rval
        Forward Get MSG_Activate_View to Rval

        set label of (TxtCurr0(RadioGroupSub4(Self)))  To gsC_Code0
        set label of (TxtCurr00(RadioGroupSub4(Self))) To gsC_Code00
        set label of (TxtCurrR(RadioGroupSub4(Self)))  To gsC_CodeR

    End_Procedure

    //AB-StoreEnd

End_Object    // KeepCOde

//AB/ End_Object    // prj
