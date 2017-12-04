//AB/ Project v053:pumps
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v053:pumps"
//AB/     Set ProjectFileName to "V053.VW"
//AB/     Set GenerateFileName to "VWCLIENTS.vw"

// Project Object Structure
//   v053 is a dbViewSubS
//     Syscurxr_DD is a DataDictionary
//     Pumps_DD is a DataDictionary
//     PUMPS_ID is a dbForm
//     pumps_descr is a dbForm
//     pumps_driver is a dbFormSub
//     FormSub1 is a FormSub
//     pumps_kykl is a dbFormSub
//     pumps_mhkos is a dbFormSub
//     TextBoxSub26 is a TextBoxSub
//     TextBoxSub27 is a TextBoxSub
//     TextBoxSub28 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
//     Pumps_Mhkosch is a dbFormSub
//     Pumps_Pagiomin is a dbFormSub
//     Pumps_Pricem3 is a dbFormSub
//     Pumps_Ctype_Id is a dbComboForm
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
//     Pumps_Pump_What is a dbFormSub
//     Pumps_Pump_Lc is a dbFormSub
//     Pumps_Pump_Ln is a dbFormSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object dbGroupSub1
Register_Object FormSub1
Register_Object PUMPS_ID
Register_Object Pumps_Ctype_Id
Register_Object Pumps_DD
Register_Object Pumps_Mhkosch
Register_Object Pumps_Pagiomin
Register_Object Pumps_Pricem3
Register_Object Pumps_Pump_Lc
Register_Object Pumps_Pump_Ln
Register_Object Pumps_Pump_What
Register_Object pumps_descr
Register_Object pumps_driver
Register_Object pumps_kykl
Register_Object pumps_mhkos
Register_Object Syscurxr_DD
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub28
Register_Object TextBoxSub29
Register_Object TextBoxSub30
Register_Object TextBoxSub45
Register_Object TextBoxSub46
Register_Object TextBoxSub47
Register_Object TextBoxSub48
Register_Object TextBoxSub49
Register_Object TextBoxSub50
Register_Object TextBoxSub51
Register_Object v053
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl052.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Form.Sub
Use Txtbox.Sub
Use dbGroup.Sub

Use SYSCURXR.DD
Use PUMPS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v053 FOR v053

Object v053 is a dbViewSubS

    //AB-StoreTopStart
    use drivers.dd
    //AB-StoreTopEnd

    Set Label to "Ä®ÆúÂ¶ Ä§´¢†È§"
    Set Size to 170 464
    Set Location to 6 28

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Pumps_DD is a Pumps_DataDictionary

        //AB-StoreStart
        procedure request_save
            String  sLabel sGreek sEnglish sLetter sMess sPump msgstr
            Integer iMet iMet2 iInt iPos iFound iFS iPms iPump chk1 chk2
            Date    dApo dEos
            Get Label to sLabel
            Move 'ÄÅñÉÑîÇÜàçâäãåéèêëíáóëïìÖ' to sGreek
            Move 0 to iFound
            GET field_current_value of pumps_dd field pumps.pump_license to sPump
            For iInt From 1 to (Length(sPump))
                Move (Mid(sPump,1,iInt)) to sLetter
                If (sgreek Contains sLetter) Begin
                    move '' to msgstr
                    Move 1 to iFound
                    move 'Å®‚üû°ú Ñ¢¢û§†°Ê ö®·££ò ©´û§ ß†§ò°Âõò ©´„§ ü‚©û = ' to msgstr
                    append msgstr iint
                    send info_box msgstr
                end
            Loop
            GET field_current_value of pumps_dd field pumps.pump_lc to sPump
            For iInt From 1 to (Length(sPump))
                Move (Mid(sPump,1,iInt)) to sLetter
                If (sgreek Contains sLetter) Begin
                    move '' to msgstr
                    Move 1 to iFound
                    move 'Å®‚üû°ú Ñ¢¢û§†°Ê ö®·££ò ©´ò ö®·££ò´ò ß†§ò°Âõò™ ©´„§ ü‚©û = ' to msgstr
                    append msgstr iint
                    send info_box msgstr
                end
            Loop
            GET field_current_value of pumps_dd field pumps.pump_WHAT to sPump
            For iInt From 1 to (Length(sPump))
                Move (Mid(sPump,1,iInt)) to sLetter
                If (sgreek Contains sLetter) Begin
                    move '' to msgstr
                    Move 1 to iFound
                    move 'Å®‚üû°ú Ñ¢¢û§†°Ê ö®·££ò ©´ò ö®·££ò´ò â‡õ.íÁß¶¨ ©´„§ ü‚©û = ' to msgstr
                    append msgstr iint
                    send info_box msgstr
                end
            Loop
            If (not(iFound)) forward send request_save
        
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pumps_DD

    Set Main_DD to (Pumps_DD(self))
    Set Server to (Pumps_DD(self))

    //AB-DDOEnd

    Object PUMPS_ID is a dbForm
        Entry_Item Pumps.Pump_id
        Set Size to 13 70
        Set Location to 4 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // PUMPS_ID

    Object pumps_descr is a dbForm
        Entry_Item Pumps.Pump_descr
        Set Size to 13 379
        Set Location to 22 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // pumps_descr

    Object pumps_driver is a dbFormSub
        Entry_Item Pumps.Pump_driver
        Set Size to 13 70
        Set Location to 38 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl052(Current_object))
        
        procedure onchange
            string sdriver
            clear drivers
            get value item 0 to sdriver
            move sdriver     to drivers.driver_id
            find eq drivers by index.3
            if (found);
               set value of (formsub1(self)) to drivers.driver_name
            else;
               set value of (formsub1(self)) to ''
        end_procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // pumps_driver

    Object FormSub1 is a FormSub
        Set Size to 13 303
        Set Location to 38 147
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // FormSub1

    Object pumps_kykl is a dbFormSub
        Entry_Item Pumps.Pump_license
        Set Size to 13 70
        Set Location to 54 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // pumps_kykl

    Object pumps_mhkos is a dbFormSub
        Entry_Item Pumps.Pump_mhkos
        Set Size to 13 70
        Set Location to 73 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // pumps_mhkos

    Object TextBoxSub26 is a TextBoxSub
        Set Label to "â‡õ†°Ê™"
        Set Location to 5 9
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub26

    Object TextBoxSub27 is a TextBoxSub
        Set Label to "è†§ò°Âõò"
        Set Location to 56 8
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub27

    Object TextBoxSub28 is a TextBoxSub
        Set Label to "éõûöÊ™"
        Set Location to 38 8
        Set Size to 10 28
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub28

    Object TextBoxSub29 is a TextBoxSub
        Set Label to "ã„°¶™"
        Set Location to 74 8
        Set Size to 10 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub29

    Object TextBoxSub30 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„"
        Set Location to 22 9
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub30

    Object Pumps_Mhkosch is a dbFormSub
        Entry_Item Pumps.Pump_mhkosch
        Set Size to 13 70
        Set Location to 90 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pumps_Mhkosch

    Object Pumps_Pagiomin is a dbFormSub
        Entry_Item Pumps.Pagiomin
        Set Size to 13 70
        Set Location to 105 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pumps_Pagiomin

    Object Pumps_Pricem3 is a dbFormSub
        Entry_Item Pumps.Pricem3
        Set Size to 13 70
        Set Location to 121 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pumps_Pricem3

    Object Pumps_Ctype_Id is a dbComboForm
        Entry_Item Pumps.Ctype_id
        Set Size to 13 70
        Set Location to 136 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Entry_State to FALSE
    End_Object    // Pumps_Ctype_Id

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
        Set Label to "ã„°¶™ ï®‚‡©û™"
        Set Location to 91 8
        Set Size to 10 57
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub48

    Object TextBoxSub49 is a TextBoxSub
        Set Label to "íÁß¶™"
        Set Location to 137 8
        Set Size to 10 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub49

    Object TextBoxSub50 is a TextBoxSub
        Set Label to "Min/m3"
        Set Location to 105 8
        Set Size to 10 25
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub50

    Object TextBoxSub51 is a TextBoxSub
        Set Label to "í†£„ m3"
        Set Location to 120 8
        Set Size to 10 28
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub51

    Object Pumps_Pump_What is a dbFormSub
        Entry_Item Pumps.Pump_what
        Set Label to "â‡õ.íÁß¶¨"
        Set Size to 13 39
        Set Location to 79 235
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pumps_Pump_What

    Object Pumps_Pump_Lc is a dbFormSub
        Entry_Item Pumps.Pump_lc
        Set Label to "Ç®·££ò´ò è†§ò°Âõò™"
        Set Size to 13 39
        Set Location to 95 235
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pumps_Pump_Lc

    Object Pumps_Pump_Ln is a dbFormSub
        Entry_Item Pumps.Pump_ln
        Set Label to "Ä®†ü.è†§ò°Âõò™"
        Set Size to 13 39
        Set Location to 111 235
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pumps_Pump_Ln


    //AB-StoreStart
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
    //AB-StoreEnd

End_Object    // v053


//AB-StoreStart
            
//AB-StoreEnd

//AB/ End_Object    // prj
