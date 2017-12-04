//AB/ Project V17x:karteles eidon
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V17x:karteles eidon"
//AB/         Set ProjectFileName to "V17x.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   V17x is a dbViewSubs
//     CN_DD2 is a CN_DataDictionary
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
//     Cn_DD is a DataDictionary
//     Wcmoves_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//     dbContainer3dSub2 is a dbContainer3dSub
//       Clients_Client_Id is a dbFormSub
//       Clients_Client_Name is a dbFormSub
//       TextBoxSub13 is a TextBoxSub
//       TextBoxSub14 is a TextBoxSub
//       Cn_Cn_Code is a dbFormSub
//       Cn_Cn_Descr is a dbFormSub
//       TextBoxSub22 is a TextBoxSub
//       TextBoxSub23 is a TextBoxSub
//     SelectGroup is a dbContainer3dSub
//       TextBoxSub19 is a TextBoxSub
//       frmCtypkin is a FormSub
//       HmApo is a cSyDateForm
//       HmEos is a cSyDateForm
//       ButtonSub1 is a ButtonSub
//       TextBoxSub20 is a TextBoxSub
//       TextBoxSub21 is a TextBoxSub
//       TextBoxSub25 is a TextBoxSub
//       TextBoxSub26 is a TextBoxSub
//     Cmoves_ is a dbGridSub
//     btnPartl is a ButtonSub
//     TextBoxSub16 is a TextBoxSub
//     TextBoxSub17 is a TextBoxSub
//     frmXre is a FormSub
//     frmPis is a FormSub
//     frmYpol is a FormSub
//     TextBoxSub18 is a TextBoxSub
//     CN_Cn_Code is a dbFormSub
//     Cn_Cn_Descr is a dbFormSub
//     frmXreq is a FormSub
//     frmPisq is a FormSub
//     frmYpolq is a FormSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub1
Register_Object btnPartl
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Cmoves_
Register_Object CN_Cn_Code
Register_Object CN_DD2
Register_Object Cn_Cn_Code
Register_Object Cn_Cn_Descr
Register_Object Cn_DD
Register_Object Company_Company_Name
Register_Object dbContainer3dSub2
Register_Object dbGroupSub1
Register_Object Fpa_DD
Register_Object frmCtypkin
Register_Object frmPis
Register_Object frmPisq
Register_Object frmXre
Register_Object frmXreq
Register_Object frmYpol
Register_Object frmYpolq
Register_Object HmApo
Register_Object HmEos
Register_Object Item_DD
Register_Object SelectGroup
Register_Object Syscurxr_DD
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub25
Register_Object TextBoxSub26
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Units_DD
Register_Object V17x
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD
Register_Object Year_Year_Year


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Use sl029a.sl
    Use sl041.sl
    Use sl17.sl
    Use Particle.vw
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbCont3.Sub
    Use Form.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub
    Use dbGrid.Sub

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
    Use CN.DD
    Use WCMOVES.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V17x FOR V17x

    Object V17x is a dbViewSubs

        //AB-StoreTopStart
        Property String     psCtypkinCode   Public ''
        Property String     psClientID      Public ''
        Property Date       pdHmApo         Public ''
        Property Date       pdHmEos         Public ''
        Property String     psModule        Public ''
        Property String     psErgo          Public ''
        Property Integer    piWhere         Public 0
        
        Object CN_DD2 is a CN_DataDictionary
        End_Object
        
        Procedure Find_Current_Cmoves_Ergo
            String  sErgo sDescr
            Send Clear to Cn_DD2
            Get Field_Current_Value Of wCMoves_DD Field wCMoves.CN_Code to sErgo
            If (Trim(sErgo)<>'') Begin
                Move sErgo to Cn.CN_Code
                Send Find to CN_DD2 Eq 5
            End
        End_Procedure
        
        
        //AB-StoreTopEnd

        Set Label to "âò®´‚¢ú™ Ñ†õÈ§"
        Set Size to 288 520
        Set Location to 2 3

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

            //AB-StoreTopStart
                                                                                                                
            //AB-StoreTopEnd

            Set DDO_Server to (Item_DD(self))

            //AB-StoreStart
                                                                                                                
            begin_constraints
                Constrain witemx.Company_Code   Eq Syscurxr.Company_Code
                Constrain witemx.Branch_Code    Eq Syscurxr.Branch_Code
                Constrain witemx.Year_Year      Eq Syscurxr.Year_Year
            end_constraints
            
            
            //AB-StoreEnd

        End_Object    // Witemx_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // Syscurxr_DD

        Object Cn_DD is a Cn_DataDictionary

            //AB-StoreStart
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
            //AB-StoreEnd

        End_Object    // Cn_DD

        Object Wcmoves_DD is a Wcmoves_DataDictionary
            Set DDO_Server to (Wtypkin_DD(self))
            Set DDO_Server to (Wax_DD(self))
            Set DDO_Server to (Witemx_DD(self))
            Set Constrain_File to Witemx.File_Number

            //AB-StoreStart
                                                                                                    
            Set Ordering to 10
            
            Begin_Constraints
                String  sCtypkinCode sErgo sClient sModule
                Date    dHmApo dHmEos
            
                Get     psErgo         Of (v17x(Self)) to sErgo
                Get     psCtypkinCode  Of (v17x(Self)) to sCtypkinCode
                Get     pdHmApo        Of (v17x(Self)) to dHmApo
                Get     pdHmEos        Of (v17x(Self)) to dHmEos
                Get     psClientID     Of (v17x(Self)) to sClient
            
                Constrain wCmoves.Company_Code   Eq Syscurxr.Company_Code
                Constrain wCmoves.Branch_Code    Eq Syscurxr.Branch_Code
                Constrain wCmoves.Year_Year      Eq Syscurxr.Year_Year
                Constrain wCmoves.witemx_code    Eq sClient
            
                If (dHmApo<>'')             Constrain wCmoves.wCmove_Hmnia   Ge dHmApo
                If (dHmEos<>'')             Constrain wCmoves.wCmove_Hmnia   Le dHmEos
                If (Trim(sCtypkinCode)<>'') Constrain wCmoves.wtypkin_Code   Eq (Trim(sCtypkinCode))
                If (Trim(sErgo)<>'')        Constrain wCmoves.CN_Code        Eq (Trim(sErgo))
            
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Wcmoves_DD

        Set Main_DD to (Witemx_DD(self))
        Set Server to (Witemx_DD(self))

        //AB-DDOEnd

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 23 510
            Set Location to -3 3
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 135
                Set Location to 7 57
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 168
                Set Location to 7 228
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                SET ENABLED_STATE TO FALSE
                //AB-StoreEnd

            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub

                //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreTopEnd

                Entry_Item Syscurxr.Year_descr
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 70
                Set Location to 7 432
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object TextBoxSub4 is a TextBoxSub
                Set Label to "Ñ´ò†®úÂò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 9 10
                Set Size to 10 31
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                //AB-StoreEnd

            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "ìß¶°/£ò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 9 196
                Set Size to 10 32
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "ï®„©û"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 9 404
                Set Size to 10 25
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub6

        End_Object    // dbGroupSub1

        Object dbContainer3dSub2 is a dbContainer3dSub
            Set Border_Style to Border_Normal
            Set Size to 32 510
            Set Location to 23 3
            Object Clients_Client_Id is a dbFormSub

                //AB-StoreTopStart
                                                        
                //AB-StoreTopEnd

                Entry_Item Witemx.Witemx_code
                Set Size to 13 118
                Set Location to 2 56
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_FontWeight Item 0 to 800
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                        
                Procedure Request_Clear
                    Delegate Send Request_Clear
                End_Procedure
                
                Procedure Request_Clear_All
                    Delegate Send Request_Clear_All
                End_Procedure
                
                Procedure Prompt
                    Set Modal_State Of (sl17(Self)) to True
                    Forward Send Prompt
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure Find_Next
                    Forward Send Find_Next
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure Find_Previous
                    Forward Send Find_Previous
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure Find_Ge
                    Forward Send Find_Ge
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure Beginning_Of_Data
                    Forward Send Beginning_Of_Data
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure End_Of_Data
                    Forward Send End_Of_Data
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Clients_Client_Id

            Object Clients_Client_Name is a dbFormSub
                Entry_Item Witemx.Witemx_descr
                Set Size to 13 281
                Set Location to 2 221
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_FontWeight Item 0 to 800
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Clients_Client_Name

            Object TextBoxSub13 is a TextBoxSub
                Set Label to "â‡õ†°Ê™"
                Set Location to 3 9
                Set Size to 10 33
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub13

            Object TextBoxSub14 is a TextBoxSub
                Set Label to "èú®†ö®ò≠„"
                Set Location to 2 180
                Set Size to 10 38
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub14

            Object Cn_Cn_Code is a dbFormSub
                Entry_Item Cn.Cn_code
                Set Server to (Cn_DD(self))
                Set Size to 13 118
                Set Location to 16 56
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Procedure Prompt
                    Forward Send Prompt
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure OnKillFocus
                    Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
                End_Procedure
                
                Procedure Find_Next
                End_Procedure
                
                Procedure Find_Previous
                End_Procedure
                
                Procedure Find_Ge
                End_Procedure
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // Cn_Cn_Code

            Object Cn_Cn_Descr is a dbFormSub
                Entry_Item Cn.Cn_descr
                Set Server to (Cn_DD(self))
                Set Size to 13 281
                Set Location to 16 221
                Set Color to clBtnFace
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Form_TypeFace Item 0 to "MS Sans Serif"
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Cn_Cn_Descr

            Object TextBoxSub22 is a TextBoxSub
                Set Label to "'Ñ®ö¶"
                Set Location to 17 9
                Set Size to 12 20
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub22

            Object TextBoxSub23 is a TextBoxSub
                Set Label to "èú®†ö®ò≠„"
                Set Location to 17 179
                Set Size to 10 38
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub23

        End_Object    // dbContainer3dSub2

        Object SelectGroup is a dbContainer3dSub
            Set Border_Style to Border_StaticEdge
            Set Size to 18 510
            Set Location to 58 3
            Object TextBoxSub19 is a TextBoxSub
                Set Label to "âÂ§û©û"
                Set Location to 3 8
                Set Size to 10 25
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub19

            Object frmCtypkin is a FormSub
                Set Size to 13 62
                Set Location to 2 56
                Set Label_Col_Offset to 2
                Set Prompt_Button_Mode to pb_PromptOn
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                            
                Set Prompt_Object to (sl029a(self))
                
                Procedure Request_Clear
                    Delegate Send Request_Clear
                End_Procedure
                
                Procedure Request_Clear_All
                    Delegate Send Request_Clear_All
                End_Procedure
                
                
                
                //AB-StoreEnd

            End_Object    // frmCtypkin

            Object HmApo is a cSyDateForm
                Set Size to 13 66
                Set Location to 2 141
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_Mask Item 0 to "d/M/yyyy"
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                Procedure Request_Clear
                    Delegate Send Request_Clear
                End_Procedure
                
                Procedure Request_Clear_All
                    Delegate Send Request_Clear_All
                End_Procedure
                
                //AB-StoreEnd

            End_Object    // HmApo

            Object HmEos is a cSyDateForm
                Set Size to 13 66
                Set Location to 2 234
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_Mask Item 0 to "d/M/yyyy"
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                Procedure Request_Clear
                    Delegate Send Request_Clear
                End_Procedure
                
                Procedure Request_Clear_All
                    Delegate Send Request_Clear_All
                End_Procedure
                
                //AB-StoreEnd

            End_Object    // HmEos

            Object ButtonSub1 is a ButtonSub
                Set Label to "èú®†Ê®†©ú"
                Set Size to 13 50
                Set Location to 2 453
                Set Form_FontHeight Item 0 to 14
                Set Form_FontWeight Item 0 to 600
                Set Form_TypeFace Item 0 to "Arial Greek"

                //AB-StoreStart
                                                                                                                                                                                                    
                Procedure OnClick
                    String  sCtypkinCode sErgo sClient smodule sClientName
                    Date    dHmApo dHmEos
                    Number  nXre nPist nYpol nxreq npistq nypolq
                
                    get psmodule to smodule
                
                    Send Rebuild_Constraints to witemx_DD
                
                    Get Field_Current_Value Of witemx_DD   Field witemx.witemx_code   to sClient
                
                    Get Value Of frmCtypkin Item 0                                      to sCtypkinCode
                    Get Value Of HmApo      Item 0                                      to dHmApo
                    Get Value Of HmEos      Item 0                                      to dHmEos
                    Get Field_Current_Value Of witemx_DD   Field witemx.witemx_descr    to sClientName
                    Set Value Of (Clients_Client_Name(dbContainer3dSub2(Self))) Item 0  to sClientName
                
                    Get Field_Current_Value Of Cn_DD Field Cn.Cn_Code to sErgo
                    //Get Value Of (CN_CN_Code(dbContainer3dSub2(Self))) Item 0 to sErgo
                
                    If (dHmApo='') Move '01/01/2001' to dHmApo
                    If (dHmEos='') Move '31/12/2100' to dHmEos
                
                    Move 0 to nXre
                    Move 0 to nPist
                    Move 0 to nYpol
                    move 0 to nxreq
                    move 0 to npistq
                    move 0 to nypolq
                
                    Set psCtypkinCode   to (Trim(sCtypkinCode))
                    Set pdHmApo         to dHmApo
                    Set pdHmEos         to dHmEos
                    Set psClientID      to sClient
                    Set psErgo          to sErgo
                
                    Send Rebuild_Constraints                            to wCmoves_DD
                    Send Beginning_Of_Data                              to Cmoves_ True
                
                    Send Find_Current_Cmoves_Ergo
                
                    Clear wcmoves
                    Move syscurxr.company_code  to wcmoves.company_code
                    Move syscurxr.branch_code   to wcmoves.branch_code
                    Move syscurxr.year_year     to wcmoves.year_year
                    Move sClient                to wCmoves.Witemx_Code
                    Move dHmApo                 to wCmoves.wcmove_Hmnia
                    Find Gt wCmoves by index.10
                    While ((Found=1) And  (wcmoves.company_code eq syscurxr.company_code) and;
                                          (wcmoves.branch_code  eq syscurxr.branch_code)  and;
                                          (wcmoves.year_year    eq syscurxr.year_year)    and;
                                          (wCmoves.witemx_code=sClient)                   And;
                                          (wcmoves.wCmove_Hmnia<=dHmEos))
                        If (sCtypkinCode<>'') Begin
                            If (sErgo<>'') Begin
                                If ((wCmoves.wtypkin_Code=sCtypkinCode) And ;
                                    (wcmoves.CN_Code     =sErgo       )) Begin
                                    Add wCmoves.wCmove_X0    to nXre
                                    Add wCmoves.wCmove_P0    to nPist
                                    Add wCmoves.wCmove_qty_eisa  to nXreq
                                    Add wCmoves.wCmove_qty_exa   to nPistq
                                End
                            End
                            Else Begin
                                If (wCmoves.wtypkin_Code=sCtypkinCode) Begin
                                    Add wCmoves.wcmove_X0     to nXre
                                    Add wCmoves.wCmove_P0    to nPist
                                    Add wCmoves.wCmove_qty_eisa  to nXreq
                                    Add wCmoves.wCmove_qty_exa   to nPistq
                                End
                            End
                        End
                        Else Begin
                            If (sErgo<>'') Begin
                                If (wCmoves.CN_Code=sErgo) Begin
                                    Add wCmoves.wCmove_X0    to nXre
                                    Add wCmoves.wCmove_P0    to nPist
                                    Add wCmoves.wCmove_qty_eisa  to nXreq
                                    Add wCmoves.wCmove_qty_exa   to nPistq
                                End
                            End
                            Else Begin
                                Add wCmoves.wCmove_X0    to nXre
                                Add wCmoves.wCmove_P0    to nPist
                                Add wCmoves.wCmove_qty_eisa  to nXreq
                                Add wCmoves.wCmove_qty_exa   to nPistq
                            End
                        End
                        Find Gt wCmoves by index.10
                    Loop
                    Move (nXre-nPist) to nYpol
                    Move (nXreq-nPistq) to nYpolq
                    Set Value Of frmXre item 0 to nXre
                    Set Value Of frmPis item 0 to nPist
                    Set Value Of frmYpol item 0 to nYpol
                    Set Value Of frmXreq item 0 to nXreq
                    Set Value Of frmPisq item 0 to nPistq
                    Set Value Of frmYpolq item 0 to nYpolq
                End_Procedure // OnClick
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // ButtonSub1

            Object TextBoxSub20 is a TextBoxSub
                Set Label to "ÄßÊ"
                Set Location to 4 123
                Set Size to 10 13
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub20

            Object TextBoxSub21 is a TextBoxSub
                Set Label to "ÑÈ™"
                Set Location to 4 216
                Set Size to 10 15
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub21

            Object TextBoxSub25 is a TextBoxSub
                Set Label to "Ä•Âú™"
                Set Location to 2 335
                Set Size to 10 29
                Set FontWeight to 800
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub25

            Object TextBoxSub26 is a TextBoxSub
                Set Label to "è¶©Ê´û´ú™"
                Set Location to 3 401
                Set Size to 10 40
                Set FontWeight to 800
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub26

        End_Object    // SelectGroup

        Object Cmoves_ is a dbGridSub

            //AB-StoreTopStart
            
            
            //AB-StoreTopEnd

            Set Main_File to Wcmoves.File_Number
            Set Server to (Wcmoves_DD(self))
            Set Ordering to 10
            Set Size to 140 510
            Set Location to 79 3
            Set Wrap_State to TRUE
            Set Auto_Regenerate_State to FALSE

            Begin_Row
                Entry_Item Wtypkin.Wtypkin_code
                Entry_Item Wtypkin.Wtypkin_descr
                Entry_Item (fsclient(self,wcmoves.client_id))
                Entry_Item Wcmoves.Wcmove_par
                Entry_Item Wcmoves.Wcmove_hmnia
                Entry_Item Wcmoves.Wcmove_x0
                Entry_Item Wcmoves.Wcmove_p0
                Entry_Item Wcmoves.Wcmove_qty_eisa
                Entry_Item Wcmoves.Wcmove_qty_exa
            End_Row

            Set Form_Width    item 0 to 38
            Set Header_Label  item 0 to "â‡õ. â†§"
            
            Set Form_Width    item 1 to 89
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 72
            Set Header_Label  item 2 to "î¶®‚ò™"
            
            Set Form_Width    item 3 to 59
            Set Header_Label  item 3 to "èò®ò©´ò´†°Ê"
            
            Set Form_Width    item 4 to 46
            Set Header_Label  item 4 to "Ü£ú®/§Âò"
            
            Set Form_Width    item 5 to 50
            Set Header_Label  item 5 to "ï®‚‡©û"
            
            Set Form_Width    item 6 to 50
            Set Header_Label  item 6 to "èÂ©´‡©û"
            
            Set Form_Width    item 7 to 50
            Set Header_Label  item 7 to "Ñ†©òö‡ö„"
            
            Set Form_Width    item 8 to 50
            Set Header_Label  item 8 to "Ñ•òö‡ö„"
            

            //AB-StoreStart
            set currentrowcolor to 11468799
            set currentcellcolor to 11468799
            Set Read_Only_State To True
            
            Procedure Item_Change Integer aiFrom Integer aiTo Returns Integer
                Integer iTo
                String  sErgo sDescr
                Forward Get MSG_Item_Change aiFrom aiTo to ito
                Send Find_Current_Cmoves_Ergo
                Procedure_Return ito
            End_Procedure
            
            Procedure End_Construct_Object
                Integer iDecimals
                Forward Send End_Construct_Object
                move 2 to iDecimals
                Set Points          Item 5 to iDecimals
                Set Numeric_Mask    Item 5 to 14 iDecimals ' ,*'
                Set Points          Item 6 to iDecimals
                Set Numeric_Mask    Item 6 to 14 iDecimals ' ,*'
                Set Points          Item 7 to 1
                Set Numeric_Mask    Item 7 to 14 1 ' ,*'
                Set Points          Item 8 to 1
                Set Numeric_Mask    Item 8 to 14 1 ' ,*'
            End_Procedure
            
            Procedure Prompt
            End_Procedure
            
            Set Column_Option item 0 to NoPut True
            Set Column_Option item 1 to NoEnter True
            Set Column_Option item 2 to NoEnter True
            Set Column_Option item 3 to NoEnter True
            Set Column_Option item 4 to NoEnter True
            Set Column_Option item 5 to NoEnter True
            Set Column_Option item 6 to NoEnter True
            Set Column_Option item 7 to NoEnter True
            Set Column_Option item 8 to NoEnter True
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_

        Object btnPartl is a ButtonSub

            //AB-StoreTopStart
                                                                
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Bitmap to "Filesys3.bmp"
            Set Size to 22 25
            Set Location to 247 3
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                
            Set TooltipValue to "Ñ£≠·§†©û ßò®ò©´ò´†°¶Á òß¶ è‡¢„©ú†™/Äö¶®‚™"
            
            Procedure OnClick
                String  sPartlRecr sModule sBarticlRecr
                Get Field_Current_Value Of WCmoves_DD Field WCmoves.Particle_Recr   to sPartlRecr
                Get Field_Current_Value Of WCmoves_DD Field WCmoves.Module_From     to sModule
                Move (Trim(sPartlRecr))     to sPartlRecr
                If (sPartlRecr<>'') Begin
                    If ( (sModule='01') Or (sModule='02') ) Begin
                        Set psModule            Of (Particle(Self))  to sModule
                        Set psFindParticleRecr  Of (Particle(Self))  to sPartlRecr
                        Send Activate_Particle
                    End
                End
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnPartl

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "°ò† ßò´„©´ú ö†ò ú£≠·§†©û ßò®ò©´ò´†°¶Á"
            Set TextColor to clNavy
            Set Location to 259 32
            Set Size to 10 162
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub16

        Object TextBoxSub17 is a TextBoxSub
            Set Label to "Ñß†¢‚•´ú £†ò ©¨ö°ú°®†£‚§û °Â§û©û ©´¶§ ßÂ§ò°ò"
            Set TextColor to clNavy
            Set Location to 249 32
            Set Size to 10 162
            Set FontWeight to 800
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub17

        Object frmXre is a FormSub
            Set Size to 13 59
            Set Location to 242 289
            Set Label_Col_Offset to 2
            Set Form_FontWeight Item 0 to 200
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            Set Numeric_Mask item 0 to 10 2 ',* '
            
            
            
            //AB-StoreEnd

        End_Object    // frmXre

        Object frmPis is a FormSub
            Set Size to 13 55
            Set Location to 242 349
            Set Label_Col_Offset to 2
            Set Form_FontWeight Item 0 to 200
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            Set Numeric_Mask item 0 to 10 2 ',* '
            
            
            
            //AB-StoreEnd

        End_Object    // frmPis

        Object frmYpol is a FormSub
            Set Size to 13 55
            Set Location to 258 349
            Set Label_Col_Offset to 2
            Set Form_FontWeight Item 0 to 200
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            Set Numeric_Mask item 0 to 10 2 ',* '
            
            
            
            //AB-StoreEnd

        End_Object    // frmYpol

        Object TextBoxSub18 is a TextBoxSub
            Set Label to "ìßÊ¢¶†ß¶"
            Set Location to 261 307
            Set Size to 10 33
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub18

        Object CN_Cn_Code is a dbFormSub
            Entry_Item Cn.Cn_code
            Set Server to (Cn_DD(self))
            Set Size to 13 84
            Set Location to 221 3
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                            
            Set Server to (CN_DD2(Self))
            
            //AB-StoreEnd

        End_Object    // CN_Cn_Code

        Object Cn_Cn_Descr is a dbFormSub
            Entry_Item Cn.Cn_descr
            Set Server to (Cn_DD(self))
            Set Size to 13 423
            Set Location to 221 90
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                            
            Set Server to (CN_DD2(Self))
            
            //AB-StoreEnd

        End_Object    // Cn_Cn_Descr

        Object frmXreq is a FormSub
            Set Size to 13 50
            Set Location to 242 406
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            Set Numeric_Mask item 0 to 10 1 ',* '
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmXreq

        Object frmPisq is a FormSub
            Set Size to 13 49
            Set Location to 242 459
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            Set Numeric_Mask item 0 to 10 1 ',* '
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmPisq

        Object frmYpolq is a FormSub
            Set Size to 13 49
            Set Location to 258 459
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            Set Numeric_Mask item 0 to 10 1 ',* '
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmYpolq


        //AB-StoreStart
                
        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation
        
        
        Procedure Request_Clear
            Forward Send Request_Clear_All
            Set Value Of (frmCtypkin(SelectGroup(Self))) Item 0 to ''
            Set Value Of (HmApo     (SelectGroup(Self))) Item 0 to ''
            Set Value Of (HmEos     (SelectGroup(Self))) Item 0 to ''
            Send Clear to CN_DD2
            Send KeyAction to (ButtonSub1(SelectGroup(Self)))
        End_Procedure
        
        Procedure Request_Clear_All
            Forward Send Request_Clear_All
            Set Value Of (frmCtypkin(SelectGroup(Self))) Item 0 to ''
            Set Value Of (HmApo     (SelectGroup(Self))) Item 0 to ''
            Set Value Of (HmEos     (SelectGroup(Self))) Item 0 to ''
            Send Clear to CN_DD2
            Send KeyAction to (ButtonSub1(SelectGroup(Self)))
        End_Procedure
        
        Procedure Activate_View Returns Integer
            Integer rVal iCopenID
            String sModule
        
            Forward Get Msg_Activate_View to rVal
            Set prompt_button_mode of cmoves_ item 1 to pb_PromptOff
            Set psCtypkinCode                   to ''
            Set psClientID                      to ''
            Set pdHmApo                         to ''
            Set pdHmEos                         to ''
            Set piWhere                         to 1
        
            Send Clear to witemx_DD
            Send Clear to CN_DD2
        
            Send KeyAction to (ButtonSub1(SelectGroup(Self)))
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // V17x


    //AB-StoreStart
                
                
                
                
                
                
                
    //AB-StoreEnd

//AB/     End_Object    // prj
