
#IFDEF         gs_Selected_Company_Code
#ELSE
        String  gs_Selected_Company_Code
#ENDIF
#IFDEF         gs_Selected_Branch_Code
#ELSE
        String  gs_Selected_Branch_Code
#ENDIF
#IFDEF         gi_Selected_Year
#ELSE
        Integer gi_Selected_Year
#ENDIF
#IFDEF         gs_Selected_Year_Recr
#ELSE
        String gs_Selected_Year_Recr
#ENDIF
#IFDEF         gs_Module_Code
#ELSE
        String  gs_Module_Code
#ENDIF


//Open Currency
//Function CurrDigits Global String asCurr Returns Integer
//    Integer liDecX
//    Clear Currency
//    move asCurr to Currency.Currency_C_Code
//    Find Eq Currency By Index.1
//    move Currency.Currency_Dec to liDecX
//    Function_Return liDecX
//End_Function // CurrDigits

Open Nomisma
Open SysCurXr

Function fiDekadika_Nomismatos Global String asNomisma Returns Integer
    Move (Trim(asNomisma)) to asNomisma
    Clear Nomisma
    If ( asNomisma<>'' ) Move asNomisma         to Nomisma.Nomisma_Code
    Else                 Move SysCurXr.C_Code0  to Nomisma.Nomisma_Code
    Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
    Function_Return Nomisma.Dekadika
End_Function //

Function fsgCode_W_Zeroes Global Integer aiCode Integer aiPlaces Returns String
    String rVal
    Integer iLength iInt
    Move aiCode to rVal
    Move (trim(rVal)) to rVal
    For iInt From 1 to (aiPlaces-(Length(rVal)))
        Move (Insert('0',rVal,1)) to rVal
    Loop
    Function_Return rVal
End_Function

Function fsgCode_n_Zeroes Global number aiCode Integer aiPlaces Returns String
    String rVal
    Integer iLength iInt ipos
    Move aiCode to rVal
    Move (trim(rVal)) to rVal
    MOVE (aiPlaces-(Length(rVal))) to ipos
    For iInt From 1 to ipos
        Move (Insert('0',rVal,1)) to rVal
    Loop
    Function_Return rVal
End_Function


Open Year
Procedure EnumDDsForRebuildConstrain for DataDictionary integer aiMsg integer ahId
    Send aiMsg to Self
End_Procedure

Procedure DoRefindYear for baseclass Integer aiPanel Integer aiYearDD
    Integer liChanged

    If ((aiYearDD = 0) or (Main_File(aiYearDD)<>Year.File_Number)) ;
        Procedure_Return (Message_Box("Invalid Year_DD","Developer's Warning",MB_OK,MB_ICONWARNING))
    If (Not(Current_Record(aiYearDD))) Begin
        Get Should_Save of aiPanel to liChanged
        Send Clear to aiYearDD
        Move gs_Selected_Company_Code to Year.Company_Code
        Move gs_Selected_Branch_Code  to Year.Branch_Code
        Move gi_Selected_Year         to Year.Year_Year
        Send Find to aiYearDD Eq 1 //Year.Index.1 - company_code+ranch_code+year_year
        If (Not(liChanged)) Set Changed_State of aiPanel to False
    End
End_Procedure

Procedure RebuildConstrainIfYearChanged for baseclass Integer aiPanel String asCurrentYearRecr Integer aiYearDDId
    Integer liSrvr
    String  lsCurrentYearRecr

    If (asCurrentYearRecr <> gs_Selected_Year_Recr) Begin
        Broadcast Send EnumDDsForRebuildConstrain to aiPanel msg_Rebuild_Constraints Self
    End
    Send DoRefindYear aiPanel aiYearDDId //(Year_DD(Self))
    Get Server of aiPanel to liSrvr
    // Respects Default values
    If (liSrvr) If (Not(Current_Record(liSrvr))) Send Request_Clear to aiPanel
End_Procedure

//                                       í¶ View            Property ´¶¨ View             í¶ Year DDO ´¶¨ View
//                                                          Holds the current year rec0
// â¢„©û : Send RbldConstrIfYearChanged (Gplan_Test(Self))  (psCurrentYearRecr(Self))     (Year_DD(Self))


Function fiRefindYear Global Returns Integer
    Clear Year
    Move gs_Selected_Company_Code to Year.Company_Code
    Move gs_Selected_Branch_Code  to Year.Branch_Code
    Move gi_Selected_Year         to Year.Year_Year
    Find eq Year by Index.1 //company_code+ranch_code+year_year
    Function_Return (Found = 0)
End_Function //fiRefindYear

Procedure DoRunApplication for Baseclass String sAppName
    string sRuntime  lsStr

    Append lsStr 'C:\Dns.bat ' sAppName
    RunProgram Wait  lsStr

//    get_profile_string "defaults" "VDFBinDir" to sRuntime
//    append sRuntime "\dfrun " sAppName
    Append sRuntime 'C:\Program Files\Accessories\WORDPAD.EXE ' sAppName
    runprogram background sRuntime
End_procedure // DoRunApplication

// Run the Editor
Procedure DoRunEditor for Baseclass String asFile
    string sRunPath lsWspcName
    Move (WorkspaceName(ProgramWorkspace(Self))) to lsWspcName
    get_profile_string ("workspaces\"+lsWspcName) "programpath" to sRunPath
    //append sRunPath "\Editor "  asFile //// js 15/03/2002 " " lsWspcName
    Move (Replace('.',asFile,'')) to asFile
    append sRunPath asFile //// js 15/03/2002 " " lsWspcName
    send DoRunApplication sRunPath
End_Procedure // DoRunEditor

//--------------------------------------

//start of global functions and procedures


//Æ®û©†£¶ß¶†úÂ´ò† òßÊ: ò) gmoves.dd    :private.update_gmhnes_ghmnies
Function gsfFind_Previous Global String lsCode;
                                 String lsDelimiter;
                                 Returns String
         String  lsTemp_Code1 lsTemp_Code2
         Integer liCounter

         //1.ò≠òÂ®ú©û °ú§È§
         Move (Trim(lsCode)) to lsCode                                  //ßÆ 30.12.345

         //2.ò§´†©´®¶≠„
         For liCounter From 1 to (Length(lsCode))
             Move (Insert(;
                           (Mid(lsCode,1,liCounter)),;
                           lsTemp_Code1,;
                           1;
                         )) to lsTemp_Code1                             //ßÆ 543.21.03
         Loop

         //3.ò≠òÂ®ú©û °ú§È§ (õ‚§ Æ®ú†·ùú´ò†, safety only)
         Move (Trim(lsTemp_Code1)) to lsTemp_Code1

         //4.ßòÂ®§‡ £Ê§¶ ´¶ õú•†Ê £‚®¶™ ´¶¨ ò§´Â©´®¶≠¶¨, £ú´· ´¶ ß®È´¶ delimiter
         Move (Right(;
                      lsTemp_Code1,;
                      ((Length(lsTemp_Code1))-((Pos(lsDelimiter,lsTemp_Code1))));
                    )) to lsTemp_Code1                                  // ßÆ 21.03

         //5.•ò§· ò§´†©´®¶≠„ ´¶¨ ò§´Â©´®¶≠¶¨
         For liCounter from 1 to (Length(lsTemp_Code1))
             Move (Insert(;
                           (Mid(lsTemp_Code1,1,liCounter)),;
                           lsTemp_Code2,;
                           1;
                         )) to lsTemp_Code2                             //ßÆ 30.12
         Loop

         Function_Return (Trim(lsTemp_Code2))
End_Function //gsffind_previous


Function gifSystem_Check Returns Integer
         Integer liF_Gtypkins liF_Garicls liF_Gmoves liF_Gplans liF_Gmhnes liF_Ghmnies
         Integer liS_Gtypkins liS_Garicls liS_Gmoves liS_Gplans liS_Gmhnes liS_Ghmnies
//       Clear Company
//       Find Gt Company.Recnum
//       While (Found = 1)
//             Add Company.Company_NumGtypkin to liS_Gtypkins ß†üò§È© ©´¶ sysfile §ò ´ò °ò®ò´·‡ ò¨´·
//             Add Company.Company_NumGarticl to liS_Garticls
//             Add Company.Company_NumGmoves  to liS_Gmoves
//             //d Company.Company_NumGtypkin to liS_Gtypkins
//             Add Company.Company_NumGplan   to liS_GPlans
//             Add Company.Company_NumGmhnes  to liS_Gmhnes
//             Add Company.Company_NumGhmnies to liS_Ghmnies
//             Find Gt Company.Recnum
//       Loop
//
//       Get_Attribute {attribute} [of {file-handle} ;
//                        [{field-num} | {index-num} [{segment-num}]]] ;
//                        To {variable}
//
//       Get_Attribute DF_FILE_RECORDS_USED of Gtypkin.File_Number to liF_Gtypkins
//       Get_Attribute DF_FILE_RECORDS_USED of Garticl.File_Number to liF_Garticls
//       Get_Attribute DF_FILE_RECORDS_USED of Gmoves.File_Number  to liF_Gmoves
//       //t_Attribute DF_FILE_RECORDS_USED of Gtypkin.File_Number to liF_Gtypkins
//       Get_Attribute DF_FILE_RECORDS_USED of Gplan.File_Number   to liF_Gplans
//       Get_Attribute DF_FILE_RECORDS_USED of Gmhnes.File_Number  to liF_Gmhnes
//       Get_Attribute DF_FILE_RECORDS_USED of Ghmnies.File_Number to liF_Ghmnies
//

//       //‚¢úöÆ¶™ DF_FILE_MAX_RECORDS+ £ú records used

//       //‚¢úöÆ¶™ last rec0 = sysrec rec0

    Function_Return 0
End_Function //gifSystem_Check

/////////////////////////////////////////////////////////////////
//Ç†ò ßúõ†ò Numeric £ú´òô¢û´¶¨ £„°¶¨™, £ú û Æ‡®Â™ õú°òõ†°·  JS
Function Sfi_All_Numbers Global Number anValue Integer aiLengthAkeraios Integer aiLengthDekadika Returns String

    String  lsRetval lsValue lsAkeraios lsDekadika
    Integer liInt liInteger iTimes iStart
    Number  lnDecimals

    Move (Integer(anValue))                                         to liInteger
    Move (Round(AnValue-(Integer(anValue))*(10^aiLengthDekadika)))  to lnDecimals

    Move liInteger              to lsAkeraios
    Move lnDecimals             to lsDekadika
    Move (Trim(lsAkeraios))     to lsAkeraios
    Move (Trim(lsDekadika))     to lsDekadika

    Move (Length(lsAkeraios)) to iStart
    For iTimes From iStart to (aiLengthAkeraios-1)
        Insert "0" in lsAkeraios at 1
    Loop
    Move (Trim(lsAkeraios)) to lsAkeraios

    Move (Length(lsDekadika)) to iStart
    For iTimes From iStart to (aiLengthDekadika-1)
        Move (Append(lsDekadika,"0")) to lsDekadika
    Loop
    Move (Trim(lsDekadika)) to lsDekadika

    If (aiLengthDekadika=0) Move '' to lsDekadika
    Move '' to lsRetVal
    Move (Pad((lsAkeraios-lsDekadika),(aiLengthAkeraios+aiLengthDekadika))) to lsRetval
    Function_Return lsRetval
End_Function //sfi_All_Numbers  Ç†ò ßúõ†ò Numeric £ú´òô¢û´¶¨ £„°¶¨™
              //                 £ú û Æ‡®Â™ õú°òõ†°· (JS)

Open Codemast


Function gsfCode_Mast Global String lsType String lsValue Returns String
         Clear Codemast
         Move lsType  to Codemast.Type
         Move lsValue to Codemast.Code
         Find Eq Codemast by Index.1 //type+code
         Function_Return Codemast.Description
End_Function //code_mast


Open Branch
Function fsgCode_With_Zeroes Global Integer aiCode    ;
                                    Integer aiPlaces  ;
                                    String asCompany  ;
                                    String asBranch   ;
                               Returns String
    String rVal
    Integer iInt
    Clear Branch
    Move asCompany  to Branch.Company_Code
    Move asBranch   to Branch.Branch_Code
    Find Eq Branch by Index.1
    If (Trim(Branch.Tomeas_Code)<>'') Move (Trim(Branch.Tomeas_Code)) to asBranch
    Move (Trim(asCompany))  to asCompany
    Move (Trim(asBranch))   to asBranch
    If (Length(asCompany)=1) Insert '0' In asCompany At 1
    If (Length(asBranch) =1) Insert '0' In asBranch  At 1
    Move ''                                           to rVal
    Move (Sfi_All_Numbers(aiCode,aiPlaces,0))         to rVal
    Move (Append((asCompany+'.'+asBranch+'.'),rVal))  to rVal
    Move (Trim(rVal))                                 to rVal
    Function_Return rVal
End_Function

Function fsgStripCodeFromID Global String asID Returns Integer
      Integer iLen iPos iInt
      If (Trim(asID)='') Function_Return 0
      Move (Trim  (asID)) to asID
      Move (Length(asID)) to iLen
      For iInt From 1     to iLen
          If (Mid(asID,1,iInt)='.') Move iInt to iPos
      Loop
      Function_Return (Right(asID,(iLen-iPos)))
End_Function

Function fsCityDescr Global Integer aiCityID Returns String
    String rVal
    Open Cities
    Clear Cities
    Move aiCityID to Cities.City_ID
    Find Eq Cities By Index.1
    If (Found=1) Move Cities.City_descr to rVal
    Else         Move '' to rVal
    Function_Return rVal
End_Function

Function fiTownIDFromCity Global Integer aiCityID Returns Integer
    Open Cities
    Clear Cities
    Move aiCityID to Cities.City_ID
    Find Eq Cities By Index.1
    Function_Return Cities.Town_ID
End_Function

Function fiCountryIDFromTown Global Integer aiTownID Returns Integer
    Open Towns
    Clear Towns
    Move aiTownID to Towns.Town_ID
    Find Eq Towns By Index.1
    Function_Return Towns.Country_ID
End_Function

Function fsTownDescr Global Integer aiTownID Returns String
    String rVal
    Open Towns
    Clear Towns
    Move aiTownID to Towns.Town_ID
    Find Eq Towns By Index.1
    If (Found=1) Move Towns.Town_descr to rVal
    Else         Move '' to rVal
    Function_Return rVal
End_Function

Function fsCountryDescr Global Integer aiCountryID Returns String
    String rVal
    Open Country
    Clear Country
    Move aiCountryID to Country.Country_ID
    Find Eq Country By Index.1
    If (Found=1) Move Country.Country_descr to rVal
    Else         Move '' to rVal
    Function_Return rVal
End_Function

Function fsAreaDescr Global Integer aiAreaID Returns String
    String rVal
    Open Areas
    Clear Areas
    Move aiAreaID to Areas.Area_ID
    Find Eq Areas By Index.1
    If (Found=1) Move Areas.Area_descr to rVal
    Else         Move '' to rVal
    Function_Return rVal
End_Function

Function fsConvert_Time_Number_To_String_With_Zeroes Global Number anTime Returns String
    Local String rVal lsTmp lsOO lsLL
    Local Number lnOO lnLL

    Move '' to lsOO
    Move '' to lsLL
    Move '' to rVal

    Move (Integer(anTime))                              to lnOO

    Move ((anTime - (Integer(anTime))) * 100)           to lnLL

    If (lnOO<10) Move (Append(lsOO,'0'+(String(lnOO)))) to lsOO
    Else         Move (String(lnOO))                    to lsOO
    Move (Trim(lsOO))                                   to lsOO

    If (lnLL<10) Move (Append(lsLL,'0'+(String(lnLL)))) to lsLL
    Else         Move (String(lnLL))                    to lsLL
    Move (Trim(lsLL))                                   to lsLL

    Move (Append(rVal,(lsOO+':'+lsLL))) to rVal

    Move (Trim(rVal)) to rVal

    Function_Return rVal
End_Function

Function fnConvert_Minutes_to_Time Global Integer aiMinutes Returns Number
    Local Number rVal nOres nLepta
    Move (Integer(aiMinutes/60))    to nOres
    Move (    Mod(aiMinutes,60))    to nLepta
    Move (nOres+(nLepta/100))       to rVal
    Function_Return rVal
End_Function

Function fiConvert_Time_to_Minutes Global Number anTime Returns Integer
    Local Integer rVal
    Move ((Integer(anTime)*60)+((anTime-(Integer(anTime)))*100)) to rVal
    Function_Return rVal
End_Function

Function fiConvert_Difference_StartTime_EndTime_to_Minutes Global   Number anStartTime  ;
                                                                    Number anEndTime    ;
                                                                    Returns Integer
    Local Integer rVal iMinStart iMinEnd

    If (anStartTime >= anEndTime) Add 24 to anEndTime

    Move ((Integer(anStartTime)*60)+((anStartTime-(Integer(anStartTime)))*100))  to iMinStart
    Move ((Integer(anEndTime  )*60)+((anEndTime  -(Integer(anEndTime  )))*100))  to iMinEnd
    Move (iMinEnd-iMinStart)                                                     to rVal
    Function_Return rVal
End_Function


Function fnConvert_Difference_StartTime_EndTime_to_Time Global  Number anStartTime  ;
                                                                Number anEndTime    ;
                                                                Returns Number
    Local Integer iTmp
    Local Number  rVal

    If (anStartTime >= anEndTime) Add 24 to anEndTime

    Move (fiConvert_Difference_StartTime_EndTime_to_Minutes(anStartTime,anEndTime)) to iTmp
    Move (fnConvert_Minutes_to_Time(iTmp))                                          to rVal
    Function_Return rVal
End_Function


Open WitemCL
Open WitemCld
Open WitemxT

Function fnTeleytaiaTimhAgoras String asPromCode String asItemCode  ;
                               Date   adHmnia    Number anQty       ;
                               Returns Number
  Integer iExodos
  Number nPoso nPct
  Move 0 to nPoso
  Move 0 to nPct
  Move 0 to iExodos

  Move (Trim(asItemCode)) to asItemCode
  Move (Trim(asPromCode)) to asPromCode

  // 1.Anazhthsh sto arxeio Witemcld
  Clear Witemcld
  Move asItemCode to Witemcld.Item_Code
  Move asPromCode to Witemcld.Client_Code
  Find Gt Witemcld By Index.1 // Witemcld:Index.1:Item_Code+Client_Code+Value_Date+Qty
  While ((Found=1) And (Witemcld.Item_Code  = asItemCode) And ;
                       (Witemcld.Client_Code= asPromCode) And ;
                       (iExodos=0))
      If ((adHmnia>=Witemcld.Value_Date) And (anQty<=Witemcld.Qty)) Begin
          Move 1 to iExodos
               If (Witemcld.Axia00<>0) Move Witemcld.Axia00         to nPoso
          Else If (Witemcld.PcDisc<>0) Move (Witemcld.PcDisc*(-1))  to nPct
      End
      Find Gt Witemcld By Index.1 // Witemcld:Index.1:Item_Code+Client_Code+Value_Date+Qty
  Loop
  If (iExodos) Begin
      If (nPoso) Function_Return nPoso
      Else Function_Return nPct
  End

  // 2.Anazhthsh sto arxeio Witemcl
  Clear WitemCL
  Move (Trim(asPromCode)) to WitemCL.Client_Code
  Move (Trim(asItemCode)) to WitemCL.Item_Code
  Find Eq WitemCL By Index.1
  If (Found=1) Function_Return WitemCL.Client_Price

  Function_Return 0
End_Function


Open BtnOrdd

Function fnTeleytaiaTimhPolhshs String asWitemxRecr String asClientID ;
                                String asWitemxCode Date   adHmnia    ;
                                String asItemCode   Number anQty      ;
                                String asCNCode     Returns Number

  Integer iExodos iCheckDeop
  Number nPoso nPct

  Move (Num_Arguments=7) to iCheckDeop

  Move 0 to nPoso
  Move 0 to nPct
  Move 0 to iExodos

  Move (Trim(asItemCode))                 to asItemCode
  Move (Trim(asClientID))                 to asClientID
  Move (Trim(asWitemxRecr))               to asWitemxRecr
  Move (Trim(asWitemxCode))               to asWitemxCode
  If (iCheckDeop) Move (Trim(asCNCode))   to asCNCode

  // 1. Anazhthsh apo DEOP ef' oson yparxei kodikos ergou
  If (iCheckDeop) Begin
      Clear btnordd
      Move asClientID   to btnordd.vclient_id
      Move asCNCode     to btnordd.vcn_code
      Move asWitemxCode to btnordd.vitem
      Move 0            to btnordd.vactive
      Move adHmnia      to btnordd.arxh_date
      Find LE btnordd by index.4//client_id+cn_code+item+arxh_date
      If ((found=1) and (asWitemxCode=btnordd.vitem)    and (adHmnia>=btnordd.arxh_date) ;
                    and (adHmnia<=btnordd.deop_date)    and (btnordd.vactive=0)          ;
                    and (asCNCode=btnordd.vcn_code)) begin
          move btnordd.vprice to nPoso
          If (nPoso) Function_Return nPoso
      End
  End
  // 19-03-2007 Tolhs na pernei times mono an brei apo deop
  // 2.Anazhthsh sto arxeio Witemcld (Timokatalogos Pelath/Eidous)
 // Clear Witemcld
 // Move asItemCode to Witemcld.Item_Code
 // Move asClientID to Witemcld.Client_Code
 // Find Gt Witemcld By Index.1 // Witemcld:Index.1:Item_Code+Client_Code+Value_Date+Qty
 // While ((Found=1) And (Witemcld.Item_Code  = asItemCode) And ;
 //                      (Witemcld.Client_Code= asClientID) And ;
 //                      (iExodos=0))
 //     If ((adHmnia>=Witemcld.Value_Date) And (anQty<=Witemcld.Qty)) Begin
 //         Move 1 to iExodos
 //              If (Witemcld.Axia00<>0) Move Witemcld.Axia00         to nPoso
 //         Else If (Witemcld.PcDisc<>0) Move (Witemcld.PcDisc*(-1))  to nPct
 //     End
 //     Find Gt Witemcld By Index.1 // Witemcld:Index.1:Item_Code+Client_Code+Value_Date+Qty
 // Loop
 // If (iExodos) Begin
 //     If (nPoso) Function_Return nPoso
 //     Else Function_Return nPct
 // End


  // 3.Anazhthsh sto arxeio Witemxt (Timokatalogos Eidous)
  //Clear Witemxt
  //Move SysCurXr.Company_Code  to Witemxt.Company_Code
  //Move SysCurXr.Branch_Code   to Witemxt.Branch_Code
  //Move SysCurXr.Year_Year     to Witemxt.Year_Year
  //Move asWitemxRecr           to Witemxt.Witemx_Recr
  //Find Gt Witemxt By Index.1 // Witemxt:Index.1
  //While ((Found=1) And (Witemxt.Company_Code = SysCurXr.Company_Code) And ;
  //                     (Witemxt.Branch_Code  = SysCurXr.Branch_Code ) And ;
  //                     (Witemxt.Year_Year    = SysCurXr.Year_Year   ) And ;
  //                     (Witemxt.Witemx_Recr  = asWitemxRecr         ) And ;
  //                     (iExodos=0))
  //    If ((adHmnia>=Witemxt.Value_Date) And (anQty<=Witemxt.Qty)) Begin
  //        Move 1 to iExodos
  //             If (Witemxt.Axia0 <>0) Move  Witemxt.Axia0         to nPoso
  //        Else If (Witemxt.PcDisc<>0) Move (Witemxt.PcDisc*(-1))  to nPct
  //    End
  //    Find Gt Witemxt By Index.1 // Witemxt:Index.1
  //Loop
  //If (iExodos) Begin
  //    If (nPoso) Function_Return nPoso
  //    Else Function_Return nPct
  //End


  // 4.Anazhthsh sto arxeio Witemcl (Teleytaia Timh Agoras)
  //Clear WitemCL
  //Move (Trim(asClientID)) to WitemCL.Client_Code
  //Move (Trim(asItemCode)) to WitemCL.Item_Code
  //Find Eq WitemCL By Index.1
  //If (Found=1) Function_Return WitemCL.Client_Price

  Function_Return 0
End_Function

Function fsStripTextFieldFromEnter Global String asStr Returns String
    String sEnter
    Move '' to sEnter
    Move (Trim(asStr)) to asStr
    Append sEnter (Character(13)) (Character(10))
    Move (Replaces(sEnter,asStr,' ')) to asStr
    Function_return (Trim(asStr))
End_function


//end   of global functions and procedures
Use Wait.DG

