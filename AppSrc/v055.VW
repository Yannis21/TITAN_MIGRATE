//AB/ Project v055:mhxanikoi
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v055:mhxanikoi"
//AB/     Set ProjectFileName to "v055.VW"
//AB/     Set GenerateFileName to "VWCLIENTS.vw"

// Project Object Structure
//   v055 is a dbViewSubS
//     Syscurxr_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Clients_Client_id is a dbForm
//     Clients_Client_name is a dbForm
//     Clients_Client_Adress is a dbFormSub
//     Mhxanik_Mhx_Add_No is a dbFormSub
//     Clients_Client_Zipcode is a dbFormSub
//     TextBoxSub26 is a TextBoxSub
//     TextBoxSub27 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
//     Cn_Cn_Area is a dbFormSub
//     frmAreaDescr is a FormSub
//     Cn_Cn_city is a dbFormSub
//     frmCityDescr is a FormSub
//     Cn_Cn_Nomos is a dbFormSub
//     frmTownDescr is a FormSub
//     Cn_Cn_Xora is a dbFormSub
//     frmCountryDescr is a FormSub
//     dbTabDialogSubS2 is a dbTabDialogSubS
//       dbTabPageSubS3 is a dbTabPageSubS
//         Clients_Client_afm is a dbForm
//         Constrct_Cnt_Doy is a dbComboFormSub
//         TextBoxSub31 is a TextBoxSub
//         TextBoxSub32 is a TextBoxSub
//         Clients_Client_Phone is a dbFormSub
//         Clients_Client_Fax is a dbFormSub
//         Clients_Client_Mobile is a dbFormSub
//         Clients_Client_Aoh is a dbFormSub
//         TextBoxSub34 is a TextBoxSub
//         TextBoxSub35 is a TextBoxSub
//         TextBoxSub36 is a TextBoxSub
//         TextBoxSub37 is a TextBoxSub
//         Clients_Client_Respons is a dbFormSub
//         TextBoxSub38 is a TextBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub45 is a TextBoxSub
//       TextBoxSub46 is a TextBoxSub
//       TextBoxSub47 is a TextBoxSub
//     TextBoxSub48 is a TextBoxSub
//     TextBoxSub49 is a TextBoxSub
//     TextBoxSub50 is a TextBoxSub
//     TextBoxSub51 is a TextBoxSub
//     TextBoxSub52 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Clients_Client_Adress
Register_Object Clients_Client_Aoh
Register_Object Clients_Client_afm
Register_Object Clients_Client_Fax
Register_Object Clients_Client_id
Register_Object Clients_Client_Mobile
Register_Object Clients_Client_name
Register_Object Clients_Client_Phone
Register_Object Clients_Client_Respons
Register_Object Clients_Client_Zipcode
Register_Object Cn_Cn_Area
Register_Object Cn_Cn_city
Register_Object Cn_Cn_Nomos
Register_Object Cn_Cn_Xora
Register_Object Company_Company_Name
Register_Object Constrct_Cnt_Doy
Register_Object dbGroupSub1
Register_Object dbTabDialogSubS2
Register_Object dbTabPageSubS3
Register_Object frmAreaDescr
Register_Object frmCityDescr
Register_Object frmCountryDescr
Register_Object frmTownDescr
Register_Object Mhxanik_DD
Register_Object Mhxanik_Mhx_Add_No
Register_Object Syscurxr_DD
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub29
Register_Object TextBoxSub30
Register_Object TextBoxSub31
Register_Object TextBoxSub32
Register_Object TextBoxSub34
Register_Object TextBoxSub35
Register_Object TextBoxSub36
Register_Object TextBoxSub37
Register_Object TextBoxSub38
Register_Object TextBoxSub45
Register_Object TextBoxSub46
Register_Object TextBoxSub47
Register_Object TextBoxSub48
Register_Object TextBoxSub49
Register_Object TextBoxSub50
Register_Object TextBoxSub51
Register_Object TextBoxSub52
Register_Object v055
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use Form.Sub
Use dbTabDlgS.Sub
Use dbCmbfrm.Sub
Use dbGroup.Sub

Use SYSCURXR.DD
Use MHXANIK.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v055 FOR v055

Object v055 is a dbViewSubS
    Set Label to "ãû´®È¶ ãûÆò§†°È§"
    Set Size to 273 464
    Set Location to 2 7

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary

        //AB-StoreTopStart
        Property Integer piNomosID  Public 0
        Property Integer piXoraID   Public 0
        //AB-StoreTopEnd


        //AB-StoreStart
        Procedure Save_Main_File
                                Move (piNomosID(Self))  to mhxanik.mhx_Nomos
                                Move (piXoraID(Self))   to mhxanik.mhx_Xora
                                Forward Send Save_Main_File
        end_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Mhxanik_DD

    Set Main_DD to (Mhxanik_DD(self))
    Set Server to (Mhxanik_DD(self))

    //AB-DDOEnd

    Object Clients_Client_id is a dbForm
        Entry_Item Mhxanik.Mhx_id
        Set Size to 13 96
        Set Location to 7 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Clients_Client_id

    Object Clients_Client_name is a dbForm
        Entry_Item Mhxanik.Mhx_name
        Set Size to 13 227
        Set Location to 7 219
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Clients_Client_name

    Object Clients_Client_Adress is a dbFormSub
        Entry_Item Mhxanik.Mhx_address
        Set Size to 13 261
        Set Location to 25 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Clients_Client_Adress

    Object Mhxanik_Mhx_Add_No is a dbFormSub
        Entry_Item Mhxanik.Mhx_add_no
        Set Size to 13 54
        Set Location to 25 391
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Mhxanik_Mhx_Add_No

    Object Clients_Client_Zipcode is a dbFormSub
        Entry_Item Mhxanik.Mhx_zipcode
        Set Size to 13 39
        Set Location to 43 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Clients_Client_Zipcode

    Object TextBoxSub26 is a TextBoxSub
        Set Label to "â‡õ†°Ê™"
        Set Location to 8 9
        Set Size to 10 30
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub26

    Object TextBoxSub27 is a TextBoxSub
        Set Label to "É†úÁü¨§©û"
        Set Location to 25 9
        Set Size to 10 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub27

    Object TextBoxSub29 is a TextBoxSub
        Set Label to "í.â."
        Set Location to 43 9
        Set Size to 10 16
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub29

    Object TextBoxSub30 is a TextBoxSub
        Set Label to "Ñß‡§¨£Âò"
        Set Location to 7 178
        Set Size to 12 34
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub30

    Object Cn_Cn_Area is a dbFormSub
        Entry_Item Mhxanik.Mhx_area
        Set Size to 13 65
        Set Location to 43 264
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                            
        Procedure OnChange
            Integer iVal
            Get Field_Current_Value Of mhxanik_DD Field mhxanik.mhx_Area to iVal
            Set Value Of frmAreaDescr Item 0 to (fsAreaDescr(iVal))
        End_Procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cn_Cn_Area

    Object frmAreaDescr is a FormSub
        Set Size to 13 113
        Set Location to 43 333
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmAreaDescr

    Object Cn_Cn_city is a dbFormSub
        Entry_Item Mhxanik.Mhx_city
        Set Size to 13 38
        Set Location to 57 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                            
        Procedure OnChange
            Integer iVal
            Get Field_Current_Value Of mhxanik_DD Field mhxanik.mhx_City to iVal
            Set Value Of frmCityDescr Item 0 to (fsCityDescr(iVal))
            Move (fiTownIDFromCity(iVal)) to ival
        
            Set Field_Current_Value Of mhxanik_DD Field mhxanik.mhx_Nomos to iVal
            Set piNomosID Of mhxanik_dd to iVal
        
            Set Value Of frmTownDescr Item 0 to (fsTownDescr(iVal))
            Move (fiCountryIDFromTown(iVal)) to ival
        
            Set Field_Current_Value Of mhxanik_DD Field mhxanik.mhx_Xora to iVal
            Set piXoraID Of mhxanik_dd to iVal
        
            Set Value Of frmCountryDescr Item 0 to (fsCountryDescr(iVal))
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cn_Cn_city

    Object frmCityDescr is a FormSub
        Set Size to 13 85
        Set Location to 57 116
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmCityDescr

    Object Cn_Cn_Nomos is a dbFormSub
        Entry_Item Mhxanik.Mhx_nomos
        Set Size to 13 65
        Set Location to 57 264
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Cn_Cn_Nomos

    Object frmTownDescr is a FormSub
        Set Size to 13 113
        Set Location to 57 333
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmTownDescr

    Object Cn_Cn_Xora is a dbFormSub
        Entry_Item Mhxanik.Mhx_xora
        Set Size to 13 38
        Set Location to 71 72
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Cn_Cn_Xora

    Object frmCountryDescr is a FormSub
        Set Size to 13 85
        Set Location to 71 116
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmCountryDescr

    Object dbTabDialogSubS2 is a dbTabDialogSubS
        Set Size to 161 434
        Set Location to 92 2
        Set Border_Style to Border_Normal
        Object dbTabPageSubS3 is a dbTabPageSubS
            Set Label to "dbTabPageSubS1"
            Object Clients_Client_afm is a dbForm
                Entry_Item Mhxanik.Mhx_afm
                Set Size to 13 70
                Set Location to 7 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Clients_Client_afm

            Object Constrct_Cnt_Doy is a dbComboFormSub
                Entry_Item Mhxanik.Mhx_doy
                Set Size to 13 186
                Set Location to 26 65
                Set Label_Col_Offset to 2
            End_Object    // Constrct_Cnt_Doy

            Object TextBoxSub31 is a TextBoxSub
                Set Label to "Ä.î.ã."
                Set Location to 7 9
                Set Size to 10 29
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub31

            Object TextBoxSub32 is a TextBoxSub
                Set Label to "É.é.ì."
                Set Location to 27 9
                Set Size to 10 36
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub32

            Object Clients_Client_Phone is a dbFormSub
                Entry_Item Mhxanik.Mhx_phone
                Set Size to 13 306
                Set Location to 44 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Clients_Client_Phone

            Object Clients_Client_Fax is a dbFormSub
                Entry_Item Mhxanik.Mhx_fax
                Set Size to 13 306
                Set Location to 60 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Clients_Client_Fax

            Object Clients_Client_Mobile is a dbFormSub
                Entry_Item Mhxanik.Mhx_mobile
                Set Size to 13 306
                Set Location to 75 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Clients_Client_Mobile

            Object Clients_Client_Aoh is a dbFormSub
                Entry_Item Mhxanik.Mhx_aoh
                Set Size to 13 306
                Set Location to 91 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Clients_Client_Aoh

            Object TextBoxSub34 is a TextBoxSub
                Set Label to "íû¢‚≠‡§ò"
                Set Location to 44 9
                Set Size to 10 39
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub34

            Object TextBoxSub35 is a TextBoxSub
                Set Label to "Fax"
                Set Location to 60 9
                Set Size to 10 13
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub35

            Object TextBoxSub36 is a TextBoxSub
                Set Label to "â†§û´Ê"
                Set Location to 75 9
                Set Size to 10 31
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub36

            Object TextBoxSub37 is a TextBoxSub
                Set Label to "Ä.é.Ü."
                Set Location to 90 9
                Set Size to 10 26
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub37

            Object Clients_Client_Respons is a dbFormSub
                Entry_Item Mhxanik.Mhx_respons
                Set Size to 13 306
                Set Location to 122 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Clients_Client_Respons

            Object TextBoxSub38 is a TextBoxSub
                Set Label to "ìßúÁü¨§¶™"
                Set Location to 122 9
                Set Size to 12 43
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub38


            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            set label to "Çú§†°· ë´¶†ÆúÂò" 
            
            //AB-StoreEnd

        End_Object    // dbTabPageSubS3

    End_Object    // dbTabDialogSubS2

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 455
        Set Location to -2 1
        Set Visible_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 59
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 228
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 389
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub45 is a TextBoxSub
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

        End_Object    // TextBoxSub45

        Object TextBoxSub46 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 170
            Set Size to 10 47
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub46

        Object TextBoxSub47 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 340
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub47

    End_Object    // dbGroupSub1

    Object TextBoxSub48 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™"
        Set Location to 27 359
        Set Size to 10 30
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub48

    Object TextBoxSub49 is a TextBoxSub
        Set Label to "èú®†¶Æ„"
        Set Location to 44 214
        Set Size to 12 30
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub49

    Object TextBoxSub50 is a TextBoxSub
        Set Label to "èÊ¢û"
        Set Location to 57 9
        Set Size to 10 31
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub50

    Object TextBoxSub51 is a TextBoxSub
        Set Label to "å¶£Ê™"
        Set Location to 57 214
        Set Size to 12 27
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub51

    Object TextBoxSub52 is a TextBoxSub
        Set Label to "ïÈ®ò"
        Set Location to 70 9
        Set Size to 12 28
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub52


    //AB-StoreStart
                        
                        
                        
                        
                        
                        
                        
                        
                        
    //AB-StoreEnd

End_Object    // v055

//AB/ End_Object    // prj
