//AB/ Project KinApoth
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "KinApoth"
//AB/     Set ProjectFileName to "KinApoth.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   KinApoth is a dbViewSubS
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
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Wcmoves_DD is a DataDictionary
//     Container2 is a dbContainer3d
//       Witemx_Witemx_code is a dbFormSub
//       Witemx_Witemx_descr is a dbFormSub
//       Textbox29 is a TextBoxSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         dbGroupSub2 is a dbGroupSub
//           Wtypkin_Wtypkin_code is a dbFormSub
//           Wtypkin_Wtypkin_descr is a dbFormSub
//           Wax_Wax_Descr is a dbFormSub
//           Wapomast_Wapomast_Descr is a dbFormSub
//           Wcmoves_Wcmove_hmnia is a dbFormSub
//           Wcmoves_Wcmove_par is a dbFormSub
//           Wcmoves_Wcmove_qty is a dbFormSub
//           Wcmoves_Unit_price is a dbFormSub
//           Axia is a dbFormSub
//           Nomisma is a dbFormSub
//           Cmoves_Cmoves_Recr is a dbFormSub
//           X0 is a dbFormSub
//           P0 is a dbFormSub
//           Textbox35 is a TextBoxSub
//           Textbox37 is a TextBoxSub
//           Textbox38 is a TextBoxSub
//           Textbox39 is a TextBoxSub
//           Textbox42 is a TextBoxSub
//           txtnom1 is a TextBoxSub
//           X00 is a dbFormSub
//           X1 is a dbFormSub
//           P00 is a dbFormSub
//           P1 is a dbFormSub
//           txtnom2 is a TextBoxSub
//           txtnom3 is a TextBoxSub
//           TextBoxSub5 is a TextBoxSub
//           Textbox45 is a TextBoxSub
//           Textbox46 is a TextBoxSub
//           btnPartl is a ButtonSub
//           Textbox1 is a Textbox
//           txtQty is a TextBoxSub
//           Qty_Eisa is a dbFormSub
//           Qty_Exa is a dbFormSub
//           Textbox3 is a Textbox
//           frmIsClosed is a FormSub
//           Textbox50 is a TextBoxSub
//           TextBoxSub51 is a TextBoxSub
//           Wcmoves_Wcmove_Open is a dbFormSub
//     dbGroupSub5 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub14 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       TextBoxSub16 is a TextBoxSub

// Register all objects
Register_Object Axia
Register_Object Branch_Branch_Name
Register_Object btnPartl
Register_Object Cmoves_Cmoves_Recr
Register_Object Company_Company_Name
Register_Object Container2
Register_Object dbGroupSub2
Register_Object dbGroupSub5
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object Fpa_DD
Register_Object Fpa_DD2
Register_Object frmIsClosed
Register_Object Item_DD
Register_Object Item_DD2
Register_Object KinApoth
Register_Object Nomisma
Register_Object P0
Register_Object P00
Register_Object P1
Register_Object Qty_Eisa
Register_Object Qty_Exa
Register_Object Syscurxr_DD
Register_Object Syscurxr_DD2
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub5
Register_Object TextBoxSub51
Register_Object Textbox1
Register_Object Textbox29
Register_Object Textbox3
Register_Object Textbox35
Register_Object Textbox37
Register_Object Textbox38
Register_Object Textbox39
Register_Object Textbox42
Register_Object Textbox45
Register_Object Textbox46
Register_Object Textbox50
Register_Object txtnom1
Register_Object txtnom2
Register_Object txtnom3
Register_Object txtQty
Register_Object Units_DD
Register_Object Units_DD2
Register_Object Wapokat_DD
Register_Object Wapokat_DD2
Register_Object Wapomast_DD
Register_Object Wapomast_DD2
Register_Object Wapomast_Wapomast_Descr
Register_Object Wax_DD
Register_Object Wax_DD2
Register_Object Wax_Wax_Descr
Register_Object Wcmoves_DD
Register_Object Wcmoves_DD2
Register_Object Wcmoves_Unit_price
Register_Object Wcmoves_Wcmove_hmnia
Register_Object Wcmoves_Wcmove_Open
Register_Object Wcmoves_Wcmove_par
Register_Object Wcmoves_Wcmove_qty
Register_Object Witemkat_DD
Register_Object Witemkat_DD2
Register_Object Witemx_DD
Register_Object Witemx_DD2
Register_Object Witemx_Witemx_code
Register_Object Witemx_Witemx_descr
Register_Object Wtypkin_DD
Register_Object Wtypkin_DD2
Register_Object Wtypkin_Wtypkin_code
Register_Object Wtypkin_Wtypkin_descr
Register_Object X0
Register_Object X00
Register_Object X1
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use sl041.sl
Use Particle.Vw
Open Pmoves
Use V185.vw
Use V182s.vw
Use bpMkWcm.dg

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbTabDlgS.Sub
Use dbGroup.Sub
Use Button.Sub
Use Form.Sub

Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use WTYPKIN.DD
Use SYSCURXR.DD
Use WCMOVES.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_KinApoth FOR KinApoth

Object KinApoth is a dbViewSubS

    //AB-StoreTopStart
    Property String     psModule        Public ''
    Property String     psFindMovesRecr Public ''
    Property String     psFindItemRecr  Public ''
    Property Integer    piFromParticl   Public  0
    
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

    Set Label to "â†§„©ú†™ Äß¶ü„°û™"
    Set Size to 286 519
    Set Location to 2 3

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary

        //AB-StoreTopStart
                                                                                                                                            
        Property Integer    piYear          Public  0
        Property String     psCompany       Public ''
        Property String     psBranch        Public ''
        Property String     psWapokat       Public ''
        
        
        //AB-StoreTopEnd

        Set DDO_Server to (Wapomast_DD(self))

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
        Begin_Constraints
            Integer iMustConstrain iYear
            String  sCompany sBranch sWapokat
            Get piYear     to  iYear
            Get psCompany  to  sCompany
            Get psBranch   to  sBranch
            Get psWapokat  to  sWapokat
            If (sCompany<>'') Begin
                Constrain Wax.Company_Code eq sCompany
                If (sBranch<>'') Begin
                    Constrain Wax.Branch_Code eq sBranch
                    If (iYear<>0) Begin
                        Constrain Wax.Year_Year eq iYear
                        If (sWapokat<>'') Begin
                            Constrain Wax.Wapokat_Code eq sWapokat
                        End
                    End
                End
            End
        End_Constraints
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
        set no_delete_state to true
        
        
        
        //AB-StoreEnd

    End_Object    // Witemx_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Wcmoves_DD is a Wcmoves_DataDictionary

        //AB-StoreTopStart
                                                                                                                                            
        //AB-StoreTopEnd

        Set DDO_Server to (Wtypkin_DD(self))
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set Constrain_File to Witemx.File_Number

        //AB-StoreStart
                                                                                                                                            
        Procedure Save_Main_File
            If (WCmoves.Partl_Recr='') Begin
                Forward Send Save_Main_File
            End
            Else Send Info_Box "Éú§ úß†´®‚ßú´ò† û ´®¶ß¶ß¶Âû©û ©´¶†ÆúÂ‡§ ´û™ úöö®ò≠„™\nÜ úöö®ò≠„ ò¨´„ ß®¶‚®Æú´ò† òß¶ °Á°¢‡£ò ´†£¶¢Êöû©û™" "è¢û®¶≠¶®Âò"
        End_Procedure
        
        Procedure Delete_Main_File
            If (WCmoves.Partl_Recr='') Forward Send Delete_Main_File
            Else Send Info_Box "Éú§ úß†´®‚ßú´ò† û õ†òö®ò≠„ ´û™ úöö®ò≠„™\nÜ úöö®ò≠„ ò¨´„ ß®¶‚®Æú´ò† òß¶ °Á°¢‡£ò ´†£¶¢Êöû©û™" "è¢û®¶≠¶®Âò"
        End_Procedure
        
        Procedure Creating
            String sModule
            Forward Send Creating
            Get psModule Of KinApoth to sModule
            Move (Trim(sModule)) to sModule
            If (sModule<>'')    Move sModule    to Wcmoves.Module_From
            Else                Move '03'       to Wcmoves.Module_From
        End_Procedure
        
        Procedure Update
            String  sNomisma
            Date    dHmnia
            Integer iLathos
            If (Wcmoves.Partl_Recr<>'') Procedure_Return
            Move WCmoves.WCmove_Hmnia               to dHmnia
            If (dHmnia='') Sysdate4                    WCmoves.WCmove_Hmnia
            Move WCmoves.WCmove_Sc_Code2            to sNomisma
            If (sNomisma='') Begin
                Move SysCurXr.C_Code0  to WCmoves.WCmove_Sc_Code2
                Move SysCurXr.C_Code0  to sNomisma
            End
            Move (Trim(sNomisma))                   to sNomisma
            Move (Round_Number((Wcmoves.Wcmove_Qty*Wcmoves.Unit_Price),2)) to Wcmoves.Wcmove_Axia
            Forward Send Update
        End_Procedure
        
        Procedure Backout
            If (Wcmoves.Partl_Recr<>'') Procedure_Return
            Forward Send Backout
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Wcmoves_DD

    Set Main_DD to (Witemx_DD(self))
    Set Server to (Witemx_DD(self))

    //AB-DDOEnd

    Object Container2 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 26 499
        Set Location to 30 5
        Object Witemx_Witemx_code is a dbFormSub
            Entry_Item Witemx.Witemx_code
            Set Size to 13 81
            Set Location to 5 71
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                    
            Set Item_Option Item 0 to NoPut True
            
            //Procedure Request_Delete
            //End_Procedure
            
            //Procedure Request_Save
            //    Send Request_Save to Wcmoves_DD
            //End_Procedure
            
            Procedure Request_Save
                Delegate Send Request_Save
            End_Procedure
            
            Procedure Request_Save_No_Clear
                Delegate Send Request_Save
            End_Procedure
            
            //                Procedure Request_Delete
            //                    Delegate Send Request_Delete
            //                End_Procedure
            
            
            
            
            
            Procedure Periorise_Thn_Apothikh
                Integer iYear
                String  sWapokat sCompany sBranch
            
                Move SysCurXr.Company_Code   to sCompany
                Move SysCurXr.Branch_Code    to sBranch
                Move SysCurXr.Year_Year      to iYear
                Get Field_Current_Value Of Witemx_DD Field Witemx.ITEM_APOKAT_COD ;
                    to sWapokat
            
                Set piMustConstrain Of (Wax(Self)) To True
                Set piYear          Of (Wax(Self)) To iYear
                Set psCompany       Of (Wax(Self)) To sCompany
                Set psBranch        Of (Wax(Self)) To sBranch
                Set psWapokat       Of (Wax(Self)) To sWapokat
            
                Set piYear          Of Wax_DD To iYear
                Set psCompany       Of Wax_DD To sCompany
                Set psBranch        Of Wax_DD To sBranch
                Set psWapokat       Of Wax_DD To sWapokat
            
                Send Rebuild_Constraints to Wax_DD
            End_Procedure
            
            Procedure Find_Next
                Forward Send Find_Next
                Send Periorise_Thn_Apothikh
            End_Procedure
            Procedure Find_Previous
                Forward Send Find_Previous
                Send Periorise_Thn_Apothikh
            End_Procedure
            Procedure Find_Ge
                Forward Send Find_Ge
                Send Periorise_Thn_Apothikh
            End_Procedure
            Procedure Prompt
                Forward Send Prompt
                Send Periorise_Thn_Apothikh
            End_Procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemx_Witemx_code

        Object Witemx_Witemx_descr is a dbFormSub
            Entry_Item Witemx.Witemx_descr
            Set Size to 13 291
            Set Location to 5 184
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                    
                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Witemx_Witemx_descr

        Object Textbox29 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ ÑÂõ¶¨™"
            Set Location to 5 5
            Set Size to 10 53
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox29


        //AB-StoreStart
                                                                                                                                            
                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Container2

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 206 498
        Set Location to 62 5
        Set Border_Style to Border_Normal
        Object dbTabPageSubS1 is a dbTabPageSubS
            Set Label to "dbTabPageSubS1"
            Object dbGroupSub2 is a dbGroupSub
                Set Size to 185 487
                Set Location to 1 1
                Object Wtypkin_Wtypkin_code is a dbFormSub
                    Entry_Item Wtypkin.Wtypkin_code
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 10 66
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    //                        Procedure Request_Delete
                    //                            Delegate Send Request_Delete
                    //                        End_Procedure
                    
                    //AB-StoreEnd

                End_Object    // Wtypkin_Wtypkin_code

                Object Wtypkin_Wtypkin_descr is a dbFormSub
                    Entry_Item Wtypkin.Wtypkin_descr
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 234
                    Set Location to 10 211
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // Wtypkin_Wtypkin_descr

                Object Wax_Wax_Descr is a dbFormSub
                    Entry_Item Wax.Wax_descr
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 26 66
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    //                        Procedure Request_Delete
                    //                            Delegate Send Request_Delete
                    //                        End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Wax_Wax_Descr

                Object Wapomast_Wapomast_Descr is a dbFormSub
                    Entry_Item Wapomast.Wapomast_descr
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 234
                    Set Location to 26 211
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // Wapomast_Wapomast_Descr

                Object Wcmoves_Wcmove_hmnia is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_hmnia
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 46 66
                    Set Color to 16576738
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                    
                    Procedure Prompt
                        String sItemxCode
                        date ddate
                        get field_current_value of Witemx_dd field Witemx.WItemx_Code to sItemxCode
                        get field_current_value of Wcmoves_dd field wcmoves.wcmove_hmnia to ddate
                        Set psItemxCode Of (sl045(self)) to (Trim(sItemxCode))
                        Set pddate      Of (sl045(self)) to ddate
                        Set psModule    Of (sl045(self)) to (psModule(Self))
                        Set Value Of (FormSub1    (sl045(Self))) Item 0 to sitemxcode
                        Set Value Of (cSyDateForm1(sl045(Self))) Item 0 to ddate
                        Forward Send Prompt
                        Send Set_The_Decimal_Points to KinApoth
                    End_procedure
                    
                    Procedure Refresh Integer iMode
                        Forward Send Refresh iMode
                        Send Set_The_Decimal_Points to KinApoth
                        Send Enable_The_Fields to KinApoth
                        If ( (Wcmoves.Module_From='03') And (Wcmoves.Partl_Recr='')) ;
                                Set Color Of frmIsClosed to clLime
                        Else    Set Color Of frmIsClosed to clRed
                    End_procedure
                    
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Wcmoves_Wcmove_hmnia

                Object Wcmoves_Wcmove_par is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_par
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 186
                    Set Location to 46 258
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    
                    //                        Procedure Request_Delete
                    //                            Delegate Send Request_Delete
                    //                        End_Procedure
                    
                    //AB-StoreEnd

                End_Object    // Wcmoves_Wcmove_par

                Object Wcmoves_Wcmove_qty is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_qty
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 89
                    Set Location to 67 66
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Set points Item 0 to 2
                    
                    Procedure OnChange
                        Number nQty nAxia nTimhMon
                        If (Focus(Desktop)=Wcmoves_Wcmove_Qty(Self)) Begin
                            Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Wcmove_Qty  to nQty
                            Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Unit_Price  to nTimhMon
                            Move (Round_Number((nQty*nTimhMon),2)) to nAxia
                            Set Field_Current_Value Of Wcmoves_DD Field Wcmoves.Wcmove_axia to nAxia
                        End
                    End_Procedure
                    
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    
                    //                        Procedure Request_Delete
                    //                            Delegate Send Request_Delete
                    //                        End_Procedure
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Wcmoves_Wcmove_qty

                Object Wcmoves_Unit_price is a dbFormSub
                    Entry_Item Wcmoves.Unit_price
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 89
                    Set Location to 82 66
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Set Points          Item  0 to 4
                    Set Numeric_Mask    Item  0 to 12 4 "*,"
                    
                    Procedure OnChange
                        Number nQty nAxia nTimhMon
                        If (Focus(Desktop)=Wcmoves_Unit_Price(Self)) Begin
                            Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Wcmove_Qty  to nQty
                            Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Unit_Price  to nTimhMon
                            Move (Round_Number((nQty*nTimhMon),2)) to nAxia
                            Set Field_Current_Value Of Wcmoves_DD Field Wcmoves.Wcmove_axia to nAxia
                        End
                    End_Procedure
                    
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    
                    //                        Procedure Request_Delete
                    //                            Delegate Send Request_Delete
                    //                        End_Procedure
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Wcmoves_Unit_price

                Object Axia is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_axia
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 89
                    Set Location to 82 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                    
                    //AB-StoreEnd

                End_Object    // Axia

                Object Nomisma is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_sc_code2
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 89
                    Set Location to 67 258
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Prompt_Button_Mode to pb_PromptOn
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                            
                    Procedure Prompt
                        Forward Send Prompt
                        Send Set_The_Decimal_Points to KinApoth
                    End_procedure
                    
                    Procedure OnChange
                        Send Set_The_Decimal_Points to KinApoth
                    End_procedure
                    
                    Procedure Request_Save
                        Delegate Send Request_Save
                    End_Procedure
                    
                    Procedure Request_Save_No_Clear
                        Delegate Send Request_Save
                    End_Procedure
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Nomisma

                Object Cmoves_Cmoves_Recr is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_recr
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 66
                    Set Location to 164 413
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Set Item_Option Item 0 to Noput True
                    Set Visible_State To False
                    Set Enabled_State To False
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Recr

                Object X0 is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_x0
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 131 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // X0

                Object P0 is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_p0
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 131 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // P0

                Object Textbox35 is a TextBoxSub
                    Set Label to "â‡õ†°Ê™ âÂ§û©û™"
                    Set Location to 10 7
                    Set Size to 10 56
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox35

                Object Textbox37 is a TextBoxSub
                    Set Label to "Ü£ú®/§Âò"
                    Set TextColor to clNavy
                    Set Location to 47 7
                    Set Size to 10 35
                    Set FontWeight to 600
                    Set Justification_Mode to jMode_Left
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox37

                Object Textbox38 is a TextBoxSub
                    Set Label to " Ä•Âò"
                    Set Location to 85 209
                    Set Size to 10 27
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox38

                Object Textbox39 is a TextBoxSub
                    Set Label to "recr"
                    Set Location to 152 413
                    Set Size to 10 18
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                    Set Visible_State to False
                    Set Enabled_State to False
                    
                    //AB-StoreEnd

                End_Object    // Textbox39

                Object Textbox42 is a TextBoxSub
                    Set Label to "èò®ò©´ò´†°Ê"
                    Set Location to 47 211
                    Set Size to 10 47
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox42

                Object txtnom1 is a TextBoxSub
                    Set Label to "ï®‚‡©û"
                    Set Location to 130 6
                    Set Size to 10 35
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                    Set Label to SysCurXr.C_Code0
                    //AB-StoreEnd

                End_Object    // txtnom1

                Object X00 is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_x00
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 147 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // X00

                Object X1 is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_x1
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 164 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // X1

                Object P00 is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_p00
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 147 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // P00

                Object P1 is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_p1
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 164 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // P1

                Object txtnom2 is a TextBoxSub
                    Set Label to "ï®. 2¶ åÊ£†©£ò"
                    Set Location to 146 6
                    Set Size to 10 55
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Set Label to SysCurXr.C_Code00
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // txtnom2

                Object txtnom3 is a TextBoxSub
                    Set Label to "ï®. 3¶ åÊ£†©£ò"
                    Set Location to 164 6
                    Set Size to 10 54
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                    Set Label to SysCurXr.C_CodeR
                    //AB-StoreEnd

                End_Object    // txtnom3

                Object TextBoxSub5 is a TextBoxSub
                    Set Label to "åÊ£†©£ò"
                    Set Location to 67 211
                    Set Size to 10 30
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub5

                Object Textbox45 is a TextBoxSub
                    Set Label to "ï®‚‡©û"
                    Set Location to 104 162
                    Set Size to 10 29
                    Set FontWeight to 600
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    //AB-StoreEnd

                End_Object    // Textbox45

                Object Textbox46 is a TextBoxSub
                    Set Label to "èÂ©´‡©û"
                    Set Location to 104 362
                    Set Size to 10 38
                    Set FontWeight to 600
                    Set TypeFace to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    //AB-StoreEnd

                End_Object    // Textbox46

                Object btnPartl is a ButtonSub
                    Set Label to "ButtonSub1"
                    Set Bitmap to "Filesys3.bmp"
                    Set Size to 22 25
                    Set Location to 10 455
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                        
                    Set TooltipValue to "Ñ£≠·§†©û ßò®ò©´ò´†°¶Á òßÊ è‡¢„©ú†™/Äö¶®‚™"
                    
                    Procedure OnClick
                        String  sPartlRecr sModule
                        Integer iRec
                        Get Field_Current_Value Of WCmoves_DD Field WCmoves.Partl_Recr      to sPartlRecr
                        Get Field_Current_Value Of WCmoves_DD Field WCmoves.Module_From     to sModule
                        if ((smodule='08') or (smodule='09')) Get Field_Current_Value Of WCmoves_DD Field WCmoves.Particle_Recr to sPartlRecr
                        // è®¶©¶Æû ´¶ ßúõ†¶ Wcmoves.Partl_Recr ÉÑå ßú®†úÆú† ´¶ recr ´¶¨ PARTICLE
                        // Ä¢¢ò ´¶ recr ´¶¨ PMOVES ò§ ´¶ module ú†§ò† 01 û 02.
                        // ÑßÂ©û™ òß¶ ú§´¶¢ú™ ©¨§üú©û™ òß¶©¨§üú©û™ ´¶ Wcmoves.Partl_Recr
                        // ßú®†úÆú† ´¶ Recr ´û™ ú§´¶¢„™ (WitemxEN_Recr) °ò† ´¶ module
                        // öÂ§ú´ò† 08 ©´û§ ßú®†ß´‡©û ò¨´û
                        // Ä®ò ´©ú°·®¶¨£ú ò§ ¨ßò®Æú† Partl_Recr, °ò† ò§ §ò†,
                        // ´©ú°ò®¶¨£ú ´¶ module °ò† ô®†©°¶¨£ú Pmoves ò§ ú†§ò† 01 û 02 °ò† òß¶
                        // °ú† Partl_Recr û ô®†©°¶¨£ú ú§´¶¢û ©¨§üú©û™ ò§ ´¶ module ú†§ò† 08
                    
                        If (Trim(sPartlRecr)<>'') Begin
                            If ((Trim(sModule)='01') Or (Trim(sModule)='02')) Begin
                                If (Pmoves.Recnum)  Move Pmoves.Recnum to iRec
                                Else                Move 0 to iRec
                    
                                Clear Pmoves
                                Move sPartlRecr to Pmoves.Pms_Recr
                                Find Eq Pmoves By Index.2
                                If (Found) Begin
                                    Move Pmoves.Partl_Recr  to sPartlRecr
                                    Move (Trim(sPartlRecr)) to sPartlRecr
                                    If (sPartlRecr<>'') Begin
                                        If (Trim(sModule)<>'') Set psModule Of (Particle(Self)) to sModule
                                        Set psFindParticleRecr  Of (Particle(Self)) to sPartlRecr
                                        Send Activate_Particle
                                        Send Request_Cancel to KinApoth
                                    End
                                End
                                If (iRec) Begin
                                    Clear Pmoves
                                    Move iRec to Pmoves.Recnum
                                    Find Eq Pmoves.Recnum
                                End
                            End
                            Else If (Trim(sModule)='08') Begin
                                Set psFindRecr  Of (V185(Self)) to sPartlRecr
                                Send Activate_V185
                                Send Request_Cancel to KinApoth
                            End
                            Else If (Trim(sModule)='09') Begin
                                //an einai mazikh diakinhsh eidon stis apothkes
                                Set psFindRecr  Of (V182s(Self)) to sPartlRecr
                                Send Activate_V182s
                                Send Request_Cancel to KinApoth
                            End
                        End
                    End_Procedure // OnClick
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // btnPartl

                Object Textbox1 is a Textbox
                    Set Label to "è¶©Ê´û´ò"
                    Set Location to 67 7
                    Set Size to 10 41
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox1

                Object txtQty is a TextBoxSub
                    Set Label to "è¶©Ê´û´ò"
                    Set Location to 115 6
                    Set Size to 10 36
                    Set TypeFace to "MS Sans Serif"
                End_Object    // txtQty

                Object Qty_Eisa is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_qty_eisa
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 126
                    Set Location to 115 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Set Points Item 0 to 2
                    
                    //AB-StoreEnd

                End_Object    // Qty_Eisa

                Object Qty_Exa is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_qty_exa
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 138
                    Set Location to 115 258
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                    Set Points Item 0 to 2
                    //AB-StoreEnd

                End_Object    // Qty_Exa

                Object Textbox3 is a Textbox
                    Set Label to "Äß¶ü„°û"
                    Set Location to 26 7
                    Set Size to 10 32
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox3

                Object frmIsClosed is a FormSub
                    Set Size to 29 34
                    Set Location to 113 445
                    Set Label_Col_Offset to 2
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart
                                                                                                                                                                                                                                                                                                                    
                    Set Shadow_State to True
                    
                    
                    //AB-StoreEnd

                End_Object    // frmIsClosed

                Object Textbox50 is a TextBoxSub
                    Set Label to "í†£„ £¶§·õò™"
                    Set Location to 82 7
                    Set Size to 10 48
                    Set TypeFace to "MS Sans Serif"
                End_Object    // Textbox50

                Object TextBoxSub51 is a TextBoxSub
                    Set Label to "í®Êß¶™ ãú´ò≠."
                    Set Location to 97 7
                    Set Size to 10 53
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub51

                Object Wcmoves_Wcmove_Open is a dbFormSub
                    Entry_Item Wcmoves.Wcmove_open
                    Set Server to (Wcmoves_DD(self))
                    Set Size to 13 23
                    Set Location to 98 66
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart
                                                                                                                                                        
                    //AB-StoreEnd

                End_Object    // Wcmoves_Wcmove_Open


                //AB-StoreStart
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                            
                //AB-StoreEnd

            End_Object    // dbGroupSub2


            //AB-StoreStart
            set label to "è¶©Ê´û´ú™/é†°¶§¶£†°·"
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // dbTabPageSubS1

    End_Object    // dbTabDialogSubS1

    Object dbGroupSub5 is a dbGroupSub
        Set Size to 26 499
        Set Location to -2 4
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 59
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                    
                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 133
            Set Location to 9 234
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                    
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 427
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                    
                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                    
            //AB-StoreEnd

        End_Object    // TextBoxSub14

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 176
            Set Size to 10 47
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub15

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 378
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub16

    End_Object    // dbGroupSub5


    //AB-StoreStart
            
    Set label to "â†§„©ú†™ òß¶ü„°û™"
    
    Set Verify_Exit_Msg         to GET_No_Confirmation
    Set Verify_Save_Msg         to GET_No_Confirmation
    Set Verify_Data_Loss_Msg    to GET_No_Confirmation
    
    Procedure Request_Save
        String sRecr
        Integer iLathos iRecnum
        Send Request_Save to Wcmoves_DD
        Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Wcmove_Recr to sRecr
        Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Recnum to iRecnum
        If ((Trim(sRecr)<>'') and (piFromParticl(Self)=0)) Begin
            Get fi_Strose_To_Record sRecr to iLathos
            If (iLathos) Error iLathos
            Else Send Find_By_Recnum to Wcmoves_DD Wcmoves.File_Number iRecnum
        End
    End_Procedure
    
    Procedure Request_Save_No_Clear
        String sRecr
        Integer iLathos iRecnum
        Send Request_Save to Wcmoves_DD
        Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Wcmove_Recr to sRecr
        Get Field_Current_Value Of Wcmoves_DD Field Wcmoves.Recnum to iRecnum
        If ((Trim(sRecr)<>'') and (piFromParticl(Self)=0)) Begin
            Get fi_Strose_To_Record sRecr to iLathos
            If (iLathos) Error iLathos
            Else Send Find_By_Recnum to Wcmoves_DD Wcmoves.File_Number iRecnum
        End
    End_Procedure
    
    Procedure Enable_The_Fields
        Integer isTheor
        Get Field_Current_Value Of WCmoves_DD Field WCmoves.Prn_Theor to isTheor
        Set Enabled_State   Of (Wtypkin_Wtypkin_Code(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (WCmoves_WCmove_Hmnia(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (WCmoves_WCmove_Par  (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (WCmoves_WCmove_Qty  (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (WCmoves_Unit_Price  (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Enabled_State   Of (Nomisma             (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) to (isTheor=0)
        Set Read_Only_State Of (WCmoves_DD(KinApoth(Self))) to ;
            ((isTheor=1) Or (piFromParticl(Self)=1) Or (piFromParticl(Self)=2) Or (piFromParticl(Self)=3) Or (WCmoves.Partl_Recr<>''))
    End_Procedure
    
    Procedure Set_The_Decimal_Points
        Integer iContID
        String  sCode sNomisma sPartlRecr
        date    dHmnia
    
        Get Field_Current_Value Of WCmoves_DD Field WCmoves.Partl_Recr to sPartlRecr
        If ((piFromParticl(Self)=2) or (piFromParticl(Self)=3));
           Get Field_Current_Value Of WCmoves_DD Field WCmoves.Particle_Recr to sPartlRecr
        Move (Trim(sPartlRecr)) to sPartlRecr
    
        Set Enabled_State Of ;
            (btnPartl(dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(Self))))) ;
                    to (sPartlRecr<>'')
    
        Get Field_Current_Value Of WCmoves_DD Field WCmoves.WCmove_Hmnia to dHmnia
    
        Get Field_Current_Value Of WCmoves_DD Field WCmoves.WCmove_Sc_Code2 to sNomisma
        Move (Trim(sNomisma)) to sNomisma
        If (sNomisma='') Begin
            Set Field_Current_value Of WCmoves_DD Field WCmoves.WCmove_Sc_Code2 to SysCurXr.C_Code0
            Move (Trim(SysCurXr.C_Code0)) to sNomisma
        End
    
        Move (dbGroupSub2(dbTabPageSubS1(dbTabDialogSubS1(KinApoth(Self))))) to iContID
    
        Get Value Of (Nomisma(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (Axia(iContID)) Item  0 to Nomisma.Dekadika
        Set Numeric_Mask    Of (Axia(iContID)) Item  0 to 12 Nomisma.Dekadika "*,"
    
        Get Label Of (TxtNom1(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (X0(iContID)) Item  0 to Nomisma.Dekadika
        Set Points          Of (P0(iContID)) Item  0 to Nomisma.Dekadika
        Set Numeric_Mask Of (X0(iContID))          Item  0  to 12 Nomisma.Dekadika "*,"
        Set Numeric_Mask Of (P0(iContID))          Item  0  to 12 Nomisma.Dekadika "*,"
    
        Get Label Of (TxtNom2(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (X00(iContID)) Item  0 to Nomisma.Dekadika
        Set Numeric_Mask Of (X00(iContID))         Item  0  to 12 Nomisma.Dekadika "*,"
        Set Points          Of (P00(iContID)) Item  0 to Nomisma.Dekadika
        Set Numeric_Mask Of (P00(iContID))         Item  0  to 12 Nomisma.Dekadika "*,"
    
        Get Label Of (TxtNom3(iContID)) Item 0 to sCode
        Move (Trim(sCode))  to sCode
        Clear Nomisma
        Move sCode to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Set Points          Of (X1(iContID)) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask Of (X1(iContID))    Item  0 to 12  Nomisma.Dekadika "*,"
        Set Points          Of (P1(iContID)) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask Of (P1(iContID))    Item  0 to 12  Nomisma.Dekadika "*,"
    End_procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal iCopenID
        String sModule sDescr
    
        Get psMenuModule  Of Main_Menu      to sModule
    
    
        Get gsfCode_Mast "MODULE" sModule   to sDescr
        Move (Trim(sDescr)) to sDescr
    
        // Ä§ úö†§ú û °¢û©û òß¶ view Particle í†£¶¢¶öû©û
        If (piFromParticl(Self)=1) Begin
            Set Read_Only_State Of Wcmoves_DD to True
            If (psFindMovesRecr(Self)<>'') Begin
                Clear Witemx
                Move (psFindItemRecr(Self)) to Witemx.Witemx_Recr
                Find Eq Witemx By Index.2
                If (Found) Begin
                    Send Find to Witemx_DD Eq 2
                    Clear Wcmoves
                    Move (psFindMovesRecr(Self)) to Wcmoves.Wcmove_Recr
                    Find eq Wcmoves By Index.2   // Wcmoves:Index.2:Wcmove_Recr
                    If (Found=1) Send Find to Wcmoves_DD eq 2 // Wcmoves:Index.2:Wcmove_Recr
                End
            End
        End
    
            // Ä§ úö†§ú û °¢û©û òß¶ V185 Ñ§´¶¢‚™ ©¨§üú©û™/Äß¶©Á§üú©û™
            If (piFromParticl(Self)=2) Begin
                Set Read_Only_State Of Wcmoves_DD to True
                If (psFindMovesRecr(Self)<>'') Begin
                    Clear Witemx
                    Move (psFindItemRecr(Self)) to Witemx.Witemx_Recr
                    Find Eq Witemx By Index.2
                    If (Found) Begin
                        Send Find to Witemx_DD Eq 2
                        Clear Wcmoves
                        Move (psFindMovesRecr(Self)) to Wcmoves.Wcmove_Recr
                        Find eq Wcmoves By Index.2   // Wcmoves:Index.2:Wcmove_Recr
                        If (Found=1) Send Find to Wcmoves_DD eq 2 // Wcmoves:Index.2:Wcmove_Recr
                    End
                End
            End
              // Ä§ úö†§ú û °¢û©û òß¶ V182s Ñ§´¶¢‚™ É†ò°Â§û©û™
             If (piFromParticl(Self)=3) Begin
                Set Read_Only_State Of Wcmoves_DD to True
                If (psFindMovesRecr(Self)<>'') Begin
                    Clear Witemx
                    Move (psFindItemRecr(Self)) to Witemx.Witemx_Recr
                    Find Eq Witemx By Index.2
                    If (Found) Begin
                        Send Find to Witemx_DD Eq 2
                        Clear Wcmoves
                        Move (psFindMovesRecr(Self)) to Wcmoves.Wcmove_Recr
                        Find eq Wcmoves By Index.2   // Wcmoves:Index.2:Wcmove_Recr
                        If (Found=1) Send Find to Wcmoves_DD eq 2 // Wcmoves:Index.2:Wcmove_Recr
                    End
                End
            End
    
        Forward Get Msg_Activate_View to rVal
    
        Procedure_Return rVal
    End_Procedure
    
    //Procedure Request_Cancel
    //    Integer bReady
    //    Set Read_Only_State Of Wcmoves_DD to False
    //    Set piFromParticl   to False
    //    Set psFindMovesRecr to False
    //    Set psFindItemRecr  to False
    //    Set piYear          Of Wax_DD To  0
    //    Set psCompany       Of Wax_DD To ''
    //    Set psBranch        Of Wax_DD To ''
    //    Set psWapokat       Of Wax_DD To ''
    //    If (Should_Save(Wcmoves_DD(Self))) Begin
    //        Move (YesNo_Box('Ü úöö®ò≠„ õú§ ‚Æú† òß¶üû°ú¨´úÂ.\ná‚¢ú´ú ß®òö£ò´†°· §ò ú•‚¢üú´ú ; ', ;
    //                                 'è®¶©¶Æ„', MB_DEFBUTTON2) ) to bReady
    //        If (bReady=MBR_YES) Forward Send Request_Cancel
    //    End
    //    Else Forward Send Request_Cancel
    //End_procedure
    
    Procedure Close_Panel
        Integer bReady
        Set Read_Only_State Of Wcmoves_DD to False
        Set piFromParticl   to False
        Set psFindMovesRecr to False
        Set psFindItemRecr  to False
        Set piYear          Of Wax_DD To  0
        Set psCompany       Of Wax_DD To ''
        Set psBranch        Of Wax_DD To ''
        Set psWapokat       Of Wax_DD To ''
        If (Should_Save(Wcmoves_DD(Self))) Begin
            Move (YesNo_Box('Ü úöö®ò≠„ õú§ ‚Æú† òß¶üû°ú¨´úÂ.\ná‚¢ú´ú ß®òö£ò´†°· §ò ú•‚¢üú´ú ; ', ;
                                     'è®¶©¶Æ„', MB_DEFBUTTON2) ) to bReady
            If (bReady=MBR_YES) Forward Send Close_Panel
        End
        Else Forward Send Close_Panel
    End_Procedure
    
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
    
        Set piLathos       Of bpMkWcm to   0
        Set piTxtID        Of bpMkWcm  to  0
        Set psModule       Of bpMkWcm  to  sModule
        Set psWTypkinRecr  Of bpMkWcm  to  sWtypkinRecr
        Set psWitemxRecr   Of bpMkWcm  to  sWitemxRecr
        Set psWaxRecr      Of bpMkWcm  to  sWaxRecr
        Set psClientID     Of bpMkWcm  to  ''
        Set psPmovesRecr   Of bpMkWcm  to  ''
        Set psCnCode       Of bpMkWcm  to  ''
        Set pnPosothta     Of bpMkWcm  to  nPosothta
        Set pnTimhMonados  Of bpMkWcm  to  nUnitPrice
        Set pnPosoDisc     Of bpMkWcm  to  0
        Set pnPosoFpa      Of bpMkWcm  to  0
        Set pdHmnia        Of bpMkWcm  to  dHmnia
        Set psWcmovesRecr  Of bpMkWcm  to  sWcmovesRecr
        Set psNomisma      Of bpMkWcm  to  sNomisma
        Set psParticleRecr Of bpMkWcm  to  ''
        Set psPerigrafh    Of bpMkWcm  to  sPerigrafh
        Set piFromKinApoth Of bpMkWcm  to  True
        Set piActivate     Of bpMkWcm  to  True
        Set pstexnikh      Of bpMkWcm  to  ''
        Set pstexnikhdiakin Of bpMkWcm to  ''
        Send DoProcess to bpMkWcm
    
        Get piLathos Of bpMkWcm to iLathos
        Function_Return iLathos
    End_Function
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // KinApoth


//AB-StoreStart
                            
                            
                            
                            
                            
                            
                            
                            
//AB-StoreEnd

//AB/ End_Object    // prj
