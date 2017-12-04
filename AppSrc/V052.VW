//AB/ Project V052:drivers
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V052:drivers"
//AB/     Set ProjectFileName to "V052.VW"
//AB/     Set GenerateFileName to "VWCLIENTS.vw"

// Project Object Structure
//   V052 is a dbViewSubS
//     Syscurxr_DD is a DataDictionary
//     Drivers_DD is a DataDictionary
//     drivers_driver_id is a dbForm
//     Clients_Client_name is a dbForm
//     Clients_Client_Adress is a dbFormSub
//     Clients_Client_Zipcode is a dbFormSub
//     Clients_Client_City is a dbFormSub
//     TextBoxSub26 is a TextBoxSub
//     TextBoxSub27 is a TextBoxSub
//     TextBoxSub28 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
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
//         drivers_driver_hmnia is a dbFormSub
//         TextBoxSub38 is a TextBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub45 is a TextBoxSub
//       TextBoxSub46 is a TextBoxSub
//       TextBoxSub47 is a TextBoxSub
//     TextBoxSub48 is a TextBoxSub
//     Drivers_Driver_Add_No is a dbFormSub
//     Form1 is a Form

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Clients_Client_Adress
Register_Object Clients_Client_Aoh
Register_Object Clients_Client_afm
Register_Object Clients_Client_City
Register_Object Clients_Client_Fax
Register_Object Clients_Client_Mobile
Register_Object Clients_Client_name
Register_Object Clients_Client_Phone
Register_Object Clients_Client_Zipcode
Register_Object Company_Company_Name
Register_Object Constrct_Cnt_Doy
Register_Object Drivers_DD
Register_Object Drivers_Driver_Add_No
Register_Object dbGroupSub1
Register_Object dbTabDialogSubS2
Register_Object dbTabPageSubS3
Register_Object drivers_driver_hmnia
Register_Object drivers_driver_id
Register_Object Form1
Register_Object Syscurxr_DD
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub28
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
Register_Object V052
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl198.sl
open cities
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbTabDlgS.Sub
Use dbCmbfrm.Sub
Use dbGroup.Sub

Use SYSCURXR.DD
Use DRIVERS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V052 FOR V052

Object V052 is a dbViewSubS
    Set Label to "Ä®ÆúÂ¶ éõûöÈ§"
    Set Size to 244 464
    Set Location to 2 7

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Drivers_DD is a Drivers_DataDictionary
    End_Object    // Drivers_DD

    Set Main_DD to (Drivers_DD(self))
    Set Server to (Drivers_DD(self))

    //AB-DDOEnd

    Object drivers_driver_id is a dbForm
        Entry_Item Drivers.Driver_id
        Set Size to 13 96
        Set Location to 4 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // drivers_driver_id

    Object Clients_Client_name is a dbForm
        Entry_Item Drivers.Driver_name
        Set Size to 13 219
        Set Location to 4 219
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Clients_Client_name

    Object Clients_Client_Adress is a dbFormSub
        Entry_Item Drivers.Driver_address
        Set Size to 13 261
        Set Location to 22 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Clients_Client_Adress

    Object Clients_Client_Zipcode is a dbFormSub
        Entry_Item Drivers.Driver_zipcode
        Set Size to 13 54
        Set Location to 40 72
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Clients_Client_Zipcode

    Object Clients_Client_City is a dbFormSub
        Entry_Item Drivers.Driver_city
        Set Size to 13 69
        Set Location to 39 219
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
        set prompt_object to (sl198(self))
        procedure onchange
            number ncity
            get value item 0 to ncity
            clear cities
            move ncity to cities.city_id
            find eq cities by index.1
            set value of form1 to cities.city_descr
        end_procedure
        
        //AB-StoreEnd

    End_Object    // Clients_Client_City

    Object TextBoxSub26 is a TextBoxSub
        Set Label to "â‡õ†°Ê™"
        Set Location to 5 9
        Set Size to 10 39
    End_Object    // TextBoxSub26

    Object TextBoxSub27 is a TextBoxSub
        Set Label to "É†úÁü¨§©û"
        Set Location to 22 8
        Set Size to 10 41
    End_Object    // TextBoxSub27

    Object TextBoxSub28 is a TextBoxSub
        Set Label to "èÊ¢û"
        Set Location to 40 178
        Set Size to 10 31
    End_Object    // TextBoxSub28

    Object TextBoxSub29 is a TextBoxSub
        Set Label to "í.â."
        Set Location to 40 7
        Set Size to 10 16
    End_Object    // TextBoxSub29

    Object TextBoxSub30 is a TextBoxSub
        Set Label to "Ñß‡§¨£Âò"
        Set Location to 4 178
        Set Size to 12 34
    End_Object    // TextBoxSub30

    Object dbTabDialogSubS2 is a dbTabDialogSubS
        Set Size to 161 434
        Set Location to 62 4
        Set Border_Style to Border_Normal
        Object dbTabPageSubS3 is a dbTabPageSubS
            Set Label to "dbTabPageSubS1"
            Object Clients_Client_afm is a dbForm
                Entry_Item Drivers.Driver_afm
                Set Size to 13 71
                Set Location to 7 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Clients_Client_afm

            Object Constrct_Cnt_Doy is a dbComboFormSub
                Entry_Item Drivers.Driver_doy
                Set Size to 13 186
                Set Location to 26 65
                Set Label_Col_Offset to 2
            End_Object    // Constrct_Cnt_Doy

            Object TextBoxSub31 is a TextBoxSub
                Set Label to "Ä.î.ã."
                Set Location to 7 9
                Set Size to 10 31
            End_Object    // TextBoxSub31

            Object TextBoxSub32 is a TextBoxSub
                Set Label to "É.é.ì."
                Set Location to 27 9
                Set Size to 10 36
            End_Object    // TextBoxSub32

            Object Clients_Client_Phone is a dbFormSub
                Entry_Item Drivers.Driver_phone
                Set Size to 13 306
                Set Location to 44 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Clients_Client_Phone

            Object Clients_Client_Fax is a dbFormSub
                Entry_Item Drivers.Driver_fax
                Set Size to 13 306
                Set Location to 60 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Clients_Client_Fax

            Object Clients_Client_Mobile is a dbFormSub
                Entry_Item Drivers.Driver_mobile
                Set Size to 13 306
                Set Location to 75 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Clients_Client_Mobile

            Object Clients_Client_Aoh is a dbFormSub
                Entry_Item Drivers.Driver_aoh
                Set Size to 13 306
                Set Location to 91 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Clients_Client_Aoh

            Object TextBoxSub34 is a TextBoxSub
                Set Label to "íû¢‚≠‡§ò"
                Set Location to 44 9
                Set Size to 10 39
            End_Object    // TextBoxSub34

            Object TextBoxSub35 is a TextBoxSub
                Set Label to "Fax"
                Set Location to 60 9
                Set Size to 10 13
            End_Object    // TextBoxSub35

            Object TextBoxSub36 is a TextBoxSub
                Set Label to "â†§û´Ê"
                Set Location to 75 9
                Set Size to 10 31
            End_Object    // TextBoxSub36

            Object TextBoxSub37 is a TextBoxSub
                Set Label to "Ä.é.Ü."
                Set Location to 90 9
                Set Size to 10 27
            End_Object    // TextBoxSub37

            Object drivers_driver_hmnia is a dbFormSub
                Entry_Item Drivers.Driver_hmnia
                Set Size to 13 55
                Set Location to 122 65
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                //AB-StoreEnd

            End_Object    // drivers_driver_hmnia

            Object TextBoxSub38 is a TextBoxSub
                Set Label to "Ü£/§Âò Ä®Æ„™"
                Set Location to 124 9
                Set Size to 10 47
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
        Set Location to 22 353
        Set Size to 10 28
    End_Object    // TextBoxSub48

    Object Drivers_Driver_Add_No is a dbFormSub
        Entry_Item Drivers.Driver_add_no
        Set Size to 13 42
        Set Location to 21 395
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Drivers_Driver_Add_No

    Object Form1 is a Form
        Set Size to 13 145
        Set Location to 39 292

        //AB-StoreStart
        set enabled_state to false
        //AB-StoreEnd

    End_Object    // Form1


    //AB-StoreStart
        
    //Procedure Activate_View Returns Integer
    //    Integer rVal
    //    Send Rebuild_Constraints    to Clients_DD
    //    If (SysrecC.Constr_Clients='1') Begin
    //        Set Visible_State Of Container1 to False
    //        Set Visible_State Of Container2 to True
    //    End
    //    Else Begin
    //        Set Visible_State Of Container1 to True
    //        Set Visible_State Of Container2 to False
    //    End
    //    Forward Get Msg_Activate_View to rVal
    //    Procedure_Return rVal
    //End_Procedure
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V052


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
