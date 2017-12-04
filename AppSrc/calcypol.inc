Open GMhnes
Open GHmnies

Object oCalcYpol Is An Array

    Property Number pnSynXreMhnes   0
    Property Number pnSynPistMhnes  0
    Property Number pnSynXreHmnies  0
    Property Number pnSynPistHmnies 0

    Procedure InitSynMhnes
        Set pnSynXreMhnes   to 0
        Set pnSynPistMhnes  to 0
    End_Procedure // InitSynMhnes

    Procedure InitSynHmnies
        Set pnSynXreHmnies  to 0
        Set pnSynPistHmnies to 0
    End_Procedure //InitSynHmnies

End_Object // oCalcYpol

// aiPeriod = The period to exit from Loop (the MonthSegment of the day)
// aiYYYY   = The year of the Date to calc to
Procedure CalcMhnes_Ypol Integer aiMode ;
                         Integer aiPeriod ;
                         Integer aiYYYY ;
                         String  asGplanCode ;
                         Integer aiCurrMode

    String  lsGmhnesRecr
    Integer liCalcYpolId
    Date    ldYearXrhshForm
    Integer liMhnasXrhshFrom liYYYYXrhshFrom
    Number  lnSynXre0 lnSynPist0

    Get oCalcYpol to liCalcYpolId
    Move GMhnes.GMhnes_Recr to lsGmhnesRecr

    Send InitSynMhnes to liCalcYpolId

    Move SyscurGL.Year_XrhshFrom to ldYearXrhshForm
    Move (TheMonthSegment(ldYearXrhshForm)) to liMhnasXrhshFrom
    Move (TheYearSegment(ldYearXrhshForm))  to liYYYYXrhshFrom

    Clear Gmhnes
    Move SysCurGL.Company_Code to Gmhnes.Company_code
    Move SysCurGL.Branch_Code  to Gmhnes.Branch_code
    Move SysCurGL.Year_year    to Gmhnes.Year_Year
    Move asGplanCode           to Gmhnes.Gplan_Code
    Move liYYYYXrhshFrom       to Gmhnes.Gmhnes_YYYY
    Move (-999)                to Gmhnes.Gmhnes_Period
    Find ge Gmhnes by Index.1 // Gmhnes:Index.1:Company_code
                              //                Branch_code
                              //                Year_Year
                              //                Gplan_Code
                              //                Gmhnes_YYYY
                              //                Gmhnes_Period
    While ((Found = 1) and ;
          (Gmhnes.Company_code = SysCurGL.Company_Code) and ;
          (Gmhnes.Branch_code  = SysCurGL.Branch_Code) and ;
          (Gmhnes.Year_Year    = SysCurGL.Year_Year) and ;
          (Gmhnes.Gplan_Code = asGplanCode) and ;
          (Gmhnes.Gmhnes_YYYY <= aiYYYY))

          If ((Gmhnes.Gmhnes_YYYY = aiYYYY) and (Gmhnes.Gmhnes_Period = aiPeriod)) Break

          If (aiMode = 0) Begin
                If (aiCurrMode = 1) Begin
                    Move (lnSynXre0  + Gmhnes.Gmhnes_Sx0) to lnSynXre0
                    Move (lnSynPist0 + Gmhnes.Gmhnes_Sp0) to lnSynPist0
                End // Book
                Else If (aiCurrMode = 2) Begin
                    Move (lnSynXre0  + Gmhnes.Gmhnes_Sx00) to lnSynXre0
                    Move (lnSynPist0 + Gmhnes.Gmhnes_Sp00) to lnSynPist0
                End // Euro
                Else If (aiCurrMode = 3) Begin
                    Move (lnSynXre0  + Gmhnes.Gmhnes_SxR) to lnSynXre0
                    Move (lnSynPist0 + Gmhnes.Gmhnes_SpR) to lnSynPist0
                End // Reporting
          End
          Else If (aiMode = 1) Begin
                Move (lnSynXre0  + Gmhnes.Gmhnes_Sx1) to lnSynXre0
                Move (lnSynPist0 + Gmhnes.Gmhnes_Sp1) to lnSynPist0
          End

          Find gt Gmhnes by Index.1
    Loop  // While

    Set pnSynXreMhnes  of liCalcYpolId to lnSynXre0
    Set pnSynPistMhnes of liCalcYpolId to lnSynPist0

    // Restore Gmhnes record
    Clear GMhnes
    If (lsGmhnesRecr) Begin
        Move lsGmhnesRecr to GMhnes.Gmhnes_Recr
        Find eq Gmhnes by Index.2 // Gmhnes:Index.2:Gmhnes_Recr
    End

End_Procedure // CalcMhnes_Ypol

Procedure CalcHmnies_Ypol Integer aiMode ;
                          Date    adDate ;
                          String  asGplanCode ;
                          Integer aiCurrMode

    Integer liCalcYpolId liPeriod liYYYY liYear
    Number lnSynXre0 lnSynPist0
    Date ldFirstOfMonth
    String lsComp lsBran lsGHmniesRecr

    Get oCalcYpol to liCalcYpolId
    Send InitSynHmnies to liCalcYpolId

    Move (TheMonthSegment(adDate))        to liPeriod
    Move (TheYearSegment(adDate))         to liYYYY
    Move (BeginOfMonth(liPeriod,liYYYY))  to ldFirstOfMonth

    If (adDate = ldFirstOfMonth) Procedure_Return

    Move Ghmnies.GHmnies_Recr  to lsGhmniesRecr
    Move SyscurGL.Company_Code to lsComp
    Move SyscurGL.Branch_Code  to lsBran
    Move SyscurGL.Year_Year    to liYear

    Clear Ghmnies
    Move lsComp         to Ghmnies.Company_code
    Move lsBran         to Ghmnies.Branch_code
    Move liYear         to Ghmnies.Year_Year
    Move asGplanCode    to Ghmnies.Gplan_Code
    Move liYYYY         to Ghmnies.Gmhnes_YYYY
    Move liPeriod       to Ghmnies.Gmhnes_Period
    Move ldFirstOfMonth to Ghmnies.Ghmnies_Hmnia
    Find ge Ghmnies by Index.1 //  Ghmnies:Index.1:Company_code
                               //                  Branch_code
                               //                  Year_Year
                               //                  Gplan_Code
                               //                  Gmhnes_YYYY
                               //                  Gmhnes_Period
                               //                  Ghmnies_Hmnmia

    While ((Found = 1) and ;
           (Ghmnies.Company_code = lsComp) and ;
           (Ghmnies.Branch_code = lsBran) and ;
           (Ghmnies.Year_Year = liYear) and ;
           (Ghmnies.Gplan_Code = asGplanCode) and ;
           (Ghmnies.Gmhnes_YYYY <= liYYYY) and ;
           (Ghmnies.Gmhnes_Period = liPeriod) and ;
           (Ghmnies.Ghmnies_Hmnia >= ldFirstOfMonth) and ;
           (Ghmnies.Ghmnies_Hmnia < adDate))


        If (aiMode = 0) Begin
            If (aiCurrMode = 1) Begin
                Move (lnSynXre0  + Ghmnies.Ghmnies_Sx0) to lnSynXre0
                Move (lnSynPist0 + Ghmnies.Ghmnies_Sp0) to lnSynPist0
            End // Book
            Else If (aiCurrMode = 2) Begin
                Move (lnSynXre0  + Ghmnies.Ghmnies_Sx00) to lnSynXre0
                Move (lnSynPist0 + Ghmnies.Ghmnies_Sp00) to lnSynPist0
            End // Euro
            Else If (aiCurrMode = 3) Begin
                Move (lnSynXre0  + Ghmnies.Ghmnies_SxR) to lnSynXre0
                Move (lnSynPist0 + Ghmnies.Ghmnies_SpR) to lnSynPist0
            End // Reporting
        End
        Else If (aiMode = 1) Begin
            Move (lnSynXre0  + Ghmnies.Ghmnies_Sx1) to lnSynXre0
            Move (lnSynPist0 + Ghmnies.Ghmnies_Sp1) to lnSynPist0
        End

        Find gt Ghmnies by Index.1
    Loop // While


    Set pnSynXreHmnies  of liCalcYpolId to lnSynXre0
    Set pnSynPistHmnies of liCalcYpolId to lnSynPist0

    // Restore Ghmnies record
    Clear GHmnies
    If (lsGhmniesRecr) Begin
        Move lsGHmniesRecr to Ghmnies.Ghmnies_Recr
        Find eq Ghmnies by Index.2 // Ghmnies:Index.2:Ghmnies_Recr
    End

End_Procedure // CalcHmnies_Ypol
