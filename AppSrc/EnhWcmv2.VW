//AB/ Project EnhWcmv2
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhWcmv2"
//AB/     Set ProjectFileName to "EnhWcmv2.VW"

// Project Object Structure
//   EnhWcmv2 is a dbViewSubS
//     Wapokat_DD2 is a Wapokat_DataDictionary
//     Wapomast_DD2 is a Wapomast_DataDictionary
//     Wax_DD2 is a Wax_DataDictionary
//     Units_DD2 is a Units_DataDictionary
//     Witemkat_DD2 is a Witemkat_DataDictionary
//     Fpa_DD2 is a Fpa_DataDictionary
//     Item_DD2 is a Item_DataDictionary
//     Witemx_DD2 is a Witemx_DataDictionary
//     Wtypkin_DD2 is a Wtypkin_DataDictionary
//     Syscurxr_DD2 is a Syscurxr_DataDictionary
//     Wcmoves_DD2 is a Wcmoves_DataDictionary
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhWcmv2
Register_Object Fpa_DD2
Register_Object Item_DD2
Register_Object Syscurxr_DD2
Register_Object Units_DD2
Register_Object Wapokat_DD2
Register_Object Wapomast_DD2
Register_Object Wax_DD2
Register_Object Wcmoves_DD2
Register_Object Witemkat_DD2
Register_Object Witemx_DD2
Register_Object Wtypkin_DD2


//AB/ AppBuild VIEW


//AB-StoreTopStart
            
Use bpMkWcm.dg

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhWcmv2 FOR ;
;
Object EnhWcmv2 is a dbViewSubS

    //AB-StoreTopStart
    Property Integer piTxtID Public 0
    
    Object Wapokat_DD2 is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD2
    
    Object Wapomast_DD2 is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD2(self))
    End_Object    // Wapomast_DD2
    
    Object Wax_DD2 is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD2(self))
    End_Object    // Wax_DD2
    
    Object Units_DD2 is a Units_DataDictionary
    End_Object    // Units_DD2
    
    Object Witemkat_DD2 is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD2
    
    Object Fpa_DD2 is a Fpa_DataDictionary
    End_Object    // Fpa_DD2
    
    Object Item_DD2 is a Item_DataDictionary
        Set DDO_Server to (Units_DD2(self))
        Set DDO_Server to (Witemkat_DD2(self))
        Set DDO_Server to (Fpa_DD2(self))
    End_Object    // Item_DD2
    
    Object Witemx_DD2 is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD2(self))
    End_Object    // Witemx_DD2
    
    Object Wtypkin_DD2 is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD2
    
    Object Syscurxr_DD2 is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD2
    
    Object Wcmoves_DD2 is a Wcmoves_DataDictionary
        Set DDO_Server to (Wtypkin_DD2(self))
        Set DDO_Server to (Wax_DD2(self))
        Set DDO_Server to (Witemx_DD2(self))
    End_Object    // Wcmoves_DD2
    
    //AB-StoreTopEnd

    Set Label to "Ñ§û£‚®‡©û ú•´®ò ßúõ†È§ ´†£È§ °ò† ß¶©¶´„´‡§ ©´¶ Wcmoves"
    Set Size to 89 425
    Set Location to 6 5

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Size to 14 181
        Set Location to 25 120

        //AB-StoreStart
        
        Set Label to 'Ñ§û£‚®‡©û'
        
        Function fi_Strose_To_Record String sWcmovesRecr Returns Integer
            Integer rVal iErr isClosed iInt iSign iLathos
            Integer iEpireazeiAxies iMustEnhmWitemcl iEpireazeiPosothtes iAntistrofhProshmou iDec
            Integer iOneWflag iExitFlag iMustSaveWCmoves iInt2 iProshmo
        
            String  sRecr2 sRecr sModule sClientID sParticleRecr
            String  sClientRecr sCmovesRecr sNomisma sFlag sWtypkinRecr sItem sLocked
            String  sPmovesRecr sCNCode sPerigrafh sWitemxRecr sWaxRecr
        
            Number  nPosothta
            Number  nQtyEisFinal nQtyExFinal nQtyEis nQtyEx
            Number  nVatam nGenAm nExtra nPayam nDiscAm nIsotimia nUnitPrice
            Number  nGSynolo nActualPistosh nClProhg nClTrex
            Number  nTotAmBd nTotDiscPms nTotDiscPC nTotAmAd nActualXreosh
            Number  nAthr1 nAthr2 nAthr3 nAthr4 nAthr5 nAthr6 nParastXreosh
            Number  nParastPistosh nParakrathsh  nXreFinal nPisFinal
            Number  nPoso nXre nPis nMyf nAthr7 nAthr8 nPosothtaFinal
        
            Date    dHmnia dLastPis dLastXre dLastXreParast dLastPisParast
        
            Send Clear to Wcmoves_DD2
            Move sWcmovesRecr to Wcmoves.Wcmove_Recr
            Send Find to Wcmoves_DD2 Eq 2 // Wcmoves:Index.2:Wcmoves_Recr
            If ((NOT(Found)) Or (Trim(sWcmovesRecr)='')) Function_Return 30001
        
            Get Field_Current_Value Of Wtypkin_DD2   Field Wtypkin.Wtypkin_Recr      to sWtypkinRecr
            Get Field_Current_Value Of Witemx_DD2    Field Witemx.Witemx_Recr        to sWitemxRecr
            Get Field_Current_Value Of Wax_DD2       Field Wax.Wax_Recr              to sWaxRecr
            Get Field_Current_Value Of Wcmoves_DD2   Field Wcmoves.Wcmove_Hmnia      to dHmnia
            Get Field_Current_Value Of Wcmoves_DD2   Field Wcmoves.Unit_Price        to nUnitPrice
            Get Field_Current_Value Of Wcmoves_DD2   Field Wcmoves.Wcmove_Qty        to nPosothta
            Get Field_Current_Value Of Wcmoves_DD2   Field Wcmoves.Module_From       to sModule
            Get Field_Current_Value Of Wcmoves_DD2   Field Wcmoves.Wcmove_Par        to sPerigrafh
            Get Field_Current_Value Of Wcmoves_DD2   Field Wcmoves.Wcmove_sc_code2   to sNomisma
          ///////////////////////////////////////////////////
        
            Set piLathos        Of bpMkWcm to   0
            Set piTxtID         Of bpMkWcm  to  (piTxtID(Self))
            Set psModule        Of bpMkWcm  to  sModule
            Set psWTypkinRecr   Of bpMkWcm  to  sWtypkinRecr
            Set psWitemxRecr    Of bpMkWcm  to  sWitemxRecr
            Set psWaxRecr       Of bpMkWcm  to  sWaxRecr
            Set psClientID      Of bpMkWcm  to  ''
            Set psPmovesRecr    Of bpMkWcm  to  ''
            Set psCnCode        Of bpMkWcm  to  ''
            Set pnPosothta      Of bpMkWcm  to  nPosothta
            Set pnTimhMonados   Of bpMkWcm  to  nUnitPrice
            Set pnPosoDisc      Of bpMkWcm  to  0
            Set pnPosoFpa       Of bpMkWcm  to  0
            Set pdHmnia         Of bpMkWcm  to  dHmnia
            Set psWcmovesRecr   Of bpMkWcm  to  sWcmovesRecr
            Set psNomisma       Of bpMkWcm  to  sNomisma
            Set psParticleRecr  Of bpMkWcm  to  ''
            Set psPerigrafh     Of bpMkWcm  to  sPerigrafh
            Set piFromKinApoth  Of bpMkWcm  to  True
            Set piActivate      Of bpMkWcm  to  false
        
            Send DoProcess Of bpMkWcm
        
            Get piLathos Of bpMkWcm to iLathos
            Function_Return iLathos
        End_Function
        
        Procedure OnClick
            String  sLabel sStr
            Integer iMet iFS iMet2 iRec
            Get Label to sLabel
            File_Size Wcmoves to iFS
        
            Set piTxtID                             to (Wait(Self))
            Set Button_State    of (piTxtID(Self))  to False
            Set BarVisibleState of (piTxtID(Self))  to '' False
            Send Popup                          to (piTxtID(Self))
            Open Wcmoves
            Clear Wcmoves
            Find Gt Wcmoves.recnum
            While (Found)
                Move Wcmoves.recnum to iRec
                Add 1 to iMet2
                Set Label to (String(String(iMet2)+'/'+String(iFS)))
                Get fi_Strose_To_Record Wcmoves.Wcmove_Recr to iMet
                Clear Wcmoves
                Move iRec to Wcmoves.recnum
                Find Gt Wcmoves.recnum
            Loop
            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
            Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
                
                
                
                
    //AB-StoreEnd

CD_End_Object    // EnhWcmv2


//AB-StoreStart
            
            
            
//AB-StoreEnd

//AB/ End_Object    // prj
