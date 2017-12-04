//AB/ Project EnhMeso
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhMeso"
//AB/     Set ProjectFileName to "EnhMeso.VW"

// Project Object Structure
//   EnhMeso is a dbViewSubs
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Wcmoves_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhMeso
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Units_DD
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Button.Sub

Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use WTYPKIN.DD
Use WCMOVES.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhMeso FOR ;
;
Object EnhMeso is a dbViewSubs

    //AB-StoreTopStart
    
    //AB-StoreTopEnd

    Set Label to "ãûõú§†©£Ê™ °ò† ú§û£‚®‡©û ß¶©¶´„´‡§ °ò† ò•†È§ Äß¶ü„°û™"
    Set Size to 89 425
    Set Location to 2 7

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))
    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))
    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary
    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary
    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))
    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))
    End_Object    // Witemx_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Wcmoves_DD is a Wcmoves_DataDictionary
        Set DDO_Server to (Wtypkin_DD(self))
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
    End_Object    // Wcmoves_DD

    Set Main_DD to (Wcmoves_DD(self))
    Set Server to (Wcmoves_DD(self))

    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        Procedure Enhm_Wam Number anQtyEisa Number anQtyExa Number anXre Number anPis Integer iSign ;
                            String asCompany String asBranch Integer aiYear String asWcmoveRecr
            Integer isFound ifromxrhsh
            Move 0 to isFound
        
            Clear Wcmoves
            Move asWcmoveRecr to Wcmoves.Wcmove_Recr
            Find Eq Wcmoves By Index.2 // Wcmoves:Index.2:
        
            If (Found) Begin
                Relate Wcmoves
        
                Clear Wam
                Lock
                Move asCompany              to Wam.Company_Code
                Move asBranch               to Wam.Branch_Code
                Move aiYear                 to Wam.Year_Year
                Move Wapokat.Wapokat_Code   to Wam.Wapokat_Code
                Move Wapomast.Wapomast_Code to Wam.Wapomast_Code
                Move Wax.Wax_Code           to Wam.Wax_Code
                Move Witemkat.Witemkat_Code to Wam.Witemkat_Code
                Move Units.Units_Code       to Wam.Units_Code
                Move Item.Item_Code         to Wam.Item_Code
                Move Witemx.Witemx_Code     to Wam.Witemx_Code
                Find Eq Wam By Index.1
                If (Found) Begin
                    Add (anQtyEisa*iSign)       to Wam.Wam_qty_Eisa
                    Add (anQtyExa *iSign)       to Wam.Wam_qty_Exa
                    Add (anXre    *iSign)       to Wam.Wam_Amt_Eisa
                    Add (anPis    *iSign)       to Wam.Wam_Amt_Exa
                    Move (Wam.Wam_Qty_Eisa-Wam.Wam_Qty_Exa) to Wam.Wam_Qty_Apoth
                    Move (Wam.Wam_Amt_Eisa-Wam.Wam_Amt_Exa) to Wam.Wam_Amt_Apoth
                    Move (Round_Number((Wam.Wam_Amt_Eisa/Wam.Wam_Qty_Eisa),4))  to Wam.Mesosta_Eisa
                    Move (Round_Number((Wam.Wam_Amt_Exa /Wam.Wam_Qty_Exa) ,4))  to Wam.Mesosta_Exa
                    Saverecord Wam
                End
                Unlock
            End
        End_Procedure
        
        
        
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Size to 14 181
        Set Location to 39 120
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Label to 'Ñ§û£ú®‡©û'
        
        Procedure OnClick
            String  sLabel sStr
            Number nx np nqtyx nqtyp
            Get Label to sLabel
        //    Clear Wam
        //    Lock
        //    Find Gt Wam.Recnum
        //    While (Found)
        //        Move 0 to Wam.Wam_Qty_Eisa
        //        Move 0 to Wam.Wam_Qty_Exa
        //        Move 0 to Wam.Wam_Amt_Eisa
        //        Move 0 to Wam.Wam_Amt_Exa
        //        Move 0 to Wam.Wam_Qty_Apoth
        //        Move 0 to Wam.Wam_Amt_Apoth
        //        Move 0 to Wam.Mesosta_Eisa
        //        Move 0 to Wam.Mesosta_Exa
        //        Saverecord Wam
        //        Set Label to ('ãûõú§†©£Ê™ Wam        '+String(Wam.Recnum))
        //        Find Gt Wam.Recnum
        //    Loop
        //    Unlock
        
            Clear Witemx
            Lock
            Find Gt Witemx.Recnum
            While (Found)
                Move 0 to Witemx.QTY_XRE
                Move 0 to Witemx.QTY_PIS
                Move 0 to Witemx.AXIA_XRE
                Move 0 to Witemx.AXIA_PIS
                Move 0 to Witemx.Mesosta_Xre
                Move 0 to Witemx.Mesosta_Pis
                Saverecord Witemx
                Set Label to ('ãûõú§†©£Ê™ Witemx     '+String(Witemx.Recnum))
                Find Gt Witemx.Recnum
            Loop
            Unlock
        
            Clear Wcmoves
            Lock
            move syscurxr.year_xrhshfrom to wcmoves.wcmove_hmnia
            Find Ge Wcmoves by index.3
        
            While ((Found) and (wcmoves.wcmove_hmnia le syscurxr.year_xrhshto))
                Set Label to ('É†·ôò©£ò Wcmoves      '+String(Wcmoves.wcmove_hmnia))
                Relate Wcmoves
        
        
        
                Move 0 to nx
                Move 0 to np
                Move 0 to nqtyx
                Move 0 to nqtyp
        
                // js 13/02/2002
                // An ta extra pedia timon den exoun axia tote to wcmoves enhmeronei me axies
        //        If (Wcmoves.Wcmov_Axia=0) Begin
        //                 If (Wcmoves.Wcmove_X0<>0)  Move Wcmoves.Wcmov_Totamad0 to nx
        //            Else If (Wcmoves.Wcmove_P0<>0)  Move Wcmoves.Wcmov_Totamad0 to np
        //        End
                // An ta extra pedia posothton den exoun axia tote to wcmoves enhmeronei me posothtes
        //        If ((Wcmoves.Sx_Posothta_Eis=0) And (Wcmoves.Sx_Posothta_Ex=0)) Begin
                         If (Wcmoves.Wcmove_Qty_Eisa<>0) Move Wcmoves.Wcmove_Qty_Eisa   to nqtyx
                    Else If (Wcmoves.Wcmove_Qty_Exa <>0) Move Wcmoves.Wcmove_Qty_Exa    to nqtyp
        //        End
        
                Add nqtyx   to witemx.qty_xre
                Add nqtyp   to witemx.qty_pis
        //        Add nx      to witemx.axia_xre
        //        Add np      to witemx.axia_pis
        
        //        Move (Round_Number((Witemx.Axia_Xre/Witemx.Qty_Xre),4)) to Witemx.Mesosta_Xre
        //        Move (Round_Number((Witemx.Axia_Pis/Witemx.Qty_Pis),4)) to Witemx.Mesosta_Pis
                Saverecord Witemx
        
        //        Send Enhm_Wam   nqtyx                   ;
        //                        nqtyp                   ;
        //                        nx                      ;
        //                        np                      ;
        //                        1                       ;
        //                        Wcmoves.Company_Code    ;
        //                        Wcmoves.Branch_Code     ;
        //                        Wcmoves.Year_Year       ;
        //                        wcmoves.wcmove_Recr
        
                Find Gt Wcmoves by index.3
            Loop
            Unlock
        
            Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
    
    //AB-StoreEnd

CD_End_Object    // EnhMeso

//AB/ End_Object    // prj
