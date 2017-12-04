//AB/ Project v054:cars
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v054:cars"
//AB/     Set ProjectFileName to "V054.VW"
//AB/     Set GenerateFileName to "VWCLIENTS.vw"

// Project Object Structure
//   v054 is a dbViewSubS
//     drivers_DD is a drivers_DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Cars_DD is a DataDictionary
//     TextBoxSub26 is a TextBoxSub
//     TextBoxSub27 is a TextBoxSub
//     TextBoxSub28 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub45 is a TextBoxSub
//       TextBoxSub46 is a TextBoxSub
//       TextBoxSub47 is a TextBoxSub
//     TextBoxSub48 is a TextBoxSub
//     TextBoxSub49 is a TextBoxSub
//     Cars_Car_Id is a dbFormSub
//     Cars_Car_Descr is a dbFormSub
//     Cars_Car_Driverid is a dbFormSub
//     Cars_Car_License is a dbFormSub
//     Cars_Car_Tare is a dbFormSub
//     Cars_Car_Maxm3 is a dbFormSub
//     Cars_Pagio is a dbFormSub
//     Cars_Ctype_Id is a dbComboForm
//     FormSub1 is a FormSub
//     TextBoxSub50 is a TextBoxSub
//     Cars_Car_What is a dbFormSub
//     Cars_Car_Lc is a dbFormSub
//     Cars_Car_Ln is a dbFormSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Cars_Car_Descr
Register_Object Cars_Car_Driverid
Register_Object Cars_Car_Id
Register_Object Cars_Car_Lc
Register_Object Cars_Car_License
Register_Object Cars_Car_Ln
Register_Object Cars_Car_Maxm3
Register_Object Cars_Car_Tare
Register_Object Cars_Car_What
Register_Object Cars_Ctype_Id
Register_Object Cars_DD
Register_Object Cars_Pagio
Register_Object Company_Company_Name
Register_Object dbGroupSub1
Register_Object drivers_DD
Register_Object FormSub1
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
Register_Object v054
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl052.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbGroup.Sub
Use dbForm.Sub
Use Form.Sub

Use SYSCURXR.DD
Use CARS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v054 FOR v054

Object v054 is a dbViewSubS

    //AB-StoreTopStart
    Object drivers_DD is a drivers_DataDictionary
    End_Object    // Cars_DD
    //AB-StoreTopEnd

    Set Label to "Ä®ÆúÂ¶ OÆû£·´‡§"
    Set Size to 154 464
    Set Location to 2 7

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Cars_DD is a Cars_DataDictionary

        //AB-StoreStart
        procedure request_save
            String  sLabel sGreek sEnglish sLetter sMess scar msgstr stype
            Integer iMet iMet2 iInt iPos iFound iFS iPms iPump chk1 chk2
            Date    dApo dEos
            Get Label to sLabel
            get  field_current_value of cars_dd field cars.ctype_id to stype
            Move 'ÄÅñÉÑîÇÜàçâäãåéèêëíáóëïìÖ' to sGreek
            Move 0 to iFound
            if ((stype='1') or (stype='2') or (stype='3') or (stype=4)) begin
            end
            else begin
                 move '' to msgstr
                 Move 1 to iFound
                 move 'ãû Äß¶õú°´Ê™ ´®Êß¶™ ãú´ò≠¶®·™ !!' to msgstr
                    send info_box msgstr
            end
            GET field_current_value of cars_dd field cars.car_license to scar
            For iInt From 1 to (Length(scar))
                Move (Mid(scar,1,iInt)) to sLetter
                If (sgreek Contains sLetter) Begin
                    move '' to msgstr
                    Move 1 to iFound
                    move 'Å®‚üû°ú Ñ¢¢û§†°Ê ö®·££ò ©´û§ ß†§ò°Âõò ©´„§ ü‚©û = ' to msgstr
                    append msgstr iint
                    send info_box msgstr
                end
            Loop
            GET field_current_value of cars_dd field cars.car_lc to scar
            For iInt From 1 to (Length(scar))
                Move (Mid(scar,1,iInt)) to sLetter
                If (sgreek Contains sLetter) Begin
                    move '' to msgstr
                    Move 1 to iFound
                    move 'Å®‚üû°ú Ñ¢¢û§†°Ê ö®·££ò ©´ò ö®·££ò´ò ß†§ò°Âõò™ ©´„§ ü‚©û = ' to msgstr
                    append msgstr iint
                    send info_box msgstr
                end
            Loop
            GET field_current_value of cars_dd field cars.car_what to scar
            For iInt From 1 to (Length(scar))
                Move (Mid(scar,1,iInt)) to sLetter
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

    End_Object    // Cars_DD

    Set Main_DD to (Cars_DD(self))
    Set Server to (Cars_DD(self))

    //AB-DDOEnd

    Object TextBoxSub26 is a TextBoxSub
        Set Label to "â‡õ†°Ê™"
        Set Location to 6 8
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub26

    Object TextBoxSub27 is a TextBoxSub
        Set Label to "è†§ò°Âõò"
        Set Location to 57 8
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub27

    Object TextBoxSub28 is a TextBoxSub
        Set Label to "éõûöÊ™"
        Set Location to 39 8
        Set Size to 10 28
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub28

    Object TextBoxSub29 is a TextBoxSub
        Set Label to "ÄßÊôò®¶"
        Set Location to 74 8
        Set Size to 10 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub29

    Object TextBoxSub30 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„"
        Set Location to 23 8
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub30

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
            Set Location to 9 388
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
        Set Label to "ãax.m3"
        Set Location to 92 8
        Set Size to 10 32
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub48

    Object TextBoxSub49 is a TextBoxSub
        Set Label to "íÁß¶™"
        Set Location to 121 8
        Set Size to 10 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub49

    Object Cars_Car_Id is a dbFormSub
        Entry_Item Cars.Car_id
        Set Size to 13 126
        Set Location to 5 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_Id

    Object Cars_Car_Descr is a dbFormSub
        Entry_Item Cars.Car_descr
        Set Size to 13 391
        Set Location to 22 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_Descr

    Object Cars_Car_Driverid is a dbFormSub
        Entry_Item Cars.Car_driverid
        Set Size to 13 91
        Set Location to 39 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl052(Current_object))
        
        procedure onchange
            string sdriver
            clear drivers
            get value of (cars_car_driverid(self)) to sdriver
            move sdriver to drivers.driver_id
            find eq drivers by index.3
            if (found) ;
               set value of (formsub1(self)) to drivers.driver_name
            if (not(found)) ;
               set value of (formsub1(self)) to ''
        end_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Cars_Car_Driverid

    Object Cars_Car_License is a dbFormSub
        Entry_Item Cars.Car_license
        Set Size to 13 91
        Set Location to 55 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_License

    Object Cars_Car_Tare is a dbFormSub
        Entry_Item Cars.Car_tare
        Set Size to 13 91
        Set Location to 73 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_Tare

    Object Cars_Car_Maxm3 is a dbFormSub
        Entry_Item Cars.Car_maxm3
        Set Size to 13 91
        Set Location to 90 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Numeric_Mask  Item 0 to 14 1 '*, '
        
        
        
        //AB-StoreEnd

    End_Object    // Cars_Car_Maxm3

    Object Cars_Pagio is a dbFormSub
        Entry_Item Cars.Pagio
        Set Size to 13 91
        Set Location to 105 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Pagio

    Object Cars_Ctype_Id is a dbComboForm
        Entry_Item Cars.Ctype_id
        Set Size to 13 91
        Set Location to 120 59
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Entry_State to FALSE
    End_Object    // Cars_Ctype_Id

    Object FormSub1 is a FormSub
        Set Size to 13 295
        Set Location to 39 155
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // FormSub1

    Object TextBoxSub50 is a TextBoxSub
        Set Label to "è·ö†¶"
        Set Location to 105 8
        Set Size to 12 21
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub50

    Object Cars_Car_What is a dbFormSub
        Entry_Item Cars.Car_what
        Set Label to "â‡õ.íÁß¶¨"
        Set Size to 13 41
        Set Location to 74 239
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_What

    Object Cars_Car_Lc is a dbFormSub
        Entry_Item Cars.Car_lc
        Set Label to "Ç®·££ò´ò è†§ò°Âõò™"
        Set Size to 13 41
        Set Location to 90 239
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_Lc

    Object Cars_Car_Ln is a dbFormSub
        Entry_Item Cars.Car_ln
        Set Label to "Ä®†ü.è†§ò°Âõò™"
        Set Size to 13 41
        Set Location to 106 239
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cars_Car_Ln


    //AB-StoreStart
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
    //AB-StoreEnd

End_Object    // v054


//AB-StoreStart
                
//AB-StoreEnd

//AB/ End_Object    // prj
