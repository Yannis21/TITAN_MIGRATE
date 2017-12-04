//AB/ Project v065:Branch+Tropoi Plhromhs+Zones
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v065:Branch+Tropoi Plhromhs+Zones"
//AB/         Set ProjectFileName to "v065.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   v065 is a dbViewSubS
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Baxiokat_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Zones_DD is a DataDictionary
//     Brzones_DD is a DataDictionary
//     Tpbranch_DD is a DataDictionary
//     Branch_Branch_Code is a dbFormSub
//     Branch_Branch_Name is a dbFormSub
//     Company_Company_Name is a dbFormSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         Brzones_ is a dbGridSub
//       dbTabPageSubS2 is a dbTabPageSubS
//         TpBranch_ is a dbGridSub

// Register all objects
Register_Object Baxiokat_DD
Register_Object Branch_Branch_Code
Register_Object Branch_Branch_Name
Register_Object Branch_DD
Register_Object Brzones_
Register_Object Brzones_DD
Register_Object Company_Company_Name
Register_Object Company_DD
Register_Object dbGroupSub1
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object dbTabPageSubS2
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TpBranch_
Register_Object Tpbranch_DD
Register_Object v065
Register_Object Year_Year_Year
Register_Object Zones_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbGroup.Sub
    Use Txtbox.Sub
    Use dbTabDlgS.Sub
    Use dbGrid.Sub

    Use COMPANY.DD
    Use BRANCH.DD
    Use BAXIOKAT.DD
    Use SYSCURXR.DD
    Use ZONES.DD
    Use BRZONES.DD
    Use TPBRANCH.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v065 FOR v065

    Object v065 is a dbViewSubS
        Set Label to "ìß¶°ò´ò©´„£ò´ò  -  ÖÈ§ú™ / í®Êß¶† è¢û®‡£„™"
        Set Size to 250 514
        Set Location to 4 9

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary

            //AB-StoreStart
            set read_only_state to true
            //AB-StoreEnd

        End_Object    // Company_DD

        Object Branch_DD is a Branch_DataDictionary
            Set DDO_Server to (Company_DD(self))

            //AB-StoreStart
            set read_only_state to true
            //AB-StoreEnd

        End_Object    // Branch_DD

        Object Baxiokat_DD is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Zones_DD is a Zones_DataDictionary
        End_Object    // Zones_DD

        Object Brzones_DD is a BrZones_DataDictionary
            Set DDO_Server to (Branch_DD(self))
            Set DDO_Server to (Zones_DD(self))
            Set Constrain_File to Branch.File_Number
        End_Object    // Brzones_DD

        Object Tpbranch_DD is a Tpbranch_DataDictionary
            Set DDO_Server to (Branch_DD(self))
            Set DDO_Server to (Baxiokat_DD(self))
            Set Constrain_File to Branch.File_Number
        End_Object    // Tpbranch_DD

        Set Main_DD to (Branch_DD(self))
        Set Server to (Branch_DD(self))

        //AB-DDOEnd

        Object Branch_Branch_Code is a dbFormSub
            Entry_Item Branch.Branch_code
            Set Size to 13 49
            Set Location to 29 88
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_Code

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Branch.Branch_name
            Set Size to 13 364
            Set Location to 44 88
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Branch_Branch_Name

        Object Company_Company_Name is a dbFormSub
            Entry_Item Company.Company_name
            Set Size to 13 364
            Set Location to 58 88
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Company_Company_Name

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 453
            Set Location to 1 3
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 118
                Set Location to 9 50
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 113
                Set Location to 9 219
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub

                //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                //AB-StoreTopEnd

                Entry_Item Syscurxr.Year_descr
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 61
                Set Location to 8 385
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                Set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Year_Year_Year

            Object TextBoxSub1 is a TextBoxSub
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

            End_Object    // TextBoxSub1

            Object TextBoxSub2 is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 172
                Set Size to 10 39
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 337
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGroupSub1

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "ìß¶°ò´·©´û£ò"
            Set Location to 30 11
            Set Size to 10 56
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "é§¶£ò©Âò"
            Set Location to 44 11
            Set Size to 10 40
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Location to 58 11
            Set Size to 10 35
        End_Object    // TextBoxSub6

        Object dbTabDialogSubS1 is a dbTabDialogSubS
            Set Size to 154 505
            Set Location to 79 3
            Object dbTabPageSubS1 is a dbTabPageSubS
                Set Label to "dbTabPageSubS1"
                Object Brzones_ is a dbGridSub
                    Set Main_File to Brzones.File_Number
                    Set Server to (Brzones_DD(self))
                    Set Size to 132 493
                    Set Location to 4 3
                    Set Wrap_State to TRUE
                    Set Border_Style to Border_Normal

                    Begin_Row
                        Entry_Item Zones.Zone_id
                        Entry_Item Zones.Zone_descr
                        Entry_Item Brzones.Zone_km
                        Entry_Item Brzones.Zone_charge0
                        Entry_Item Brzones.Zone_charge1
                        Entry_Item Brzones.Zone_charge2
                        Entry_Item Brzones.Beto_site
                    End_Row

                    Set Form_Width    item 0 to 58
                    Set Header_Label  item 0 to "â‡õ.ÖÈ§û™"
                    
                    Set Form_Width    item 1 to 165
                    Set Header_Label  item 1 to "é§¶£ò©Âò ÖÈ§û™"
                    
                    Set Form_Width    item 2 to 45
                    Set Header_Label  item 2 to "    ï¢£"
                    
                    Set Form_Width    item 3 to 55
                    Set Header_Label  item 3 to "ï®‚‡©û 0"
                    
                    Set Form_Width    item 4 to 55
                    Set Header_Label  item 4 to "ï®‚‡©û 1"
                    
                    Set Form_Width    item 5 to 55
                    Set Header_Label  item 5 to "ï®‚‡©û 2"
                    
                    Set Form_Width    item 6 to 49
                    Set Header_Label  item 6 to "í¶£‚ò™"
                    

                    //AB-StoreStart
                                                                                                                            
                    Set Column_Option Item 1 to NoEnter True
                    Set Column_Option Item 6 to NoEnter True
                    
                    //AB-StoreEnd

                End_Object    // Brzones_


                //AB-StoreStart
                                                                    
                Set Label to 'ÖÈ§ú™ ò§ò ìß¶°ò´·©´û£ò'
                
                //AB-StoreEnd

            End_Object    // dbTabPageSubS1

            Object dbTabPageSubS2 is a dbTabPageSubS
                Set Label to "dbTabPageSubS2"
                Object TpBranch_ is a dbGridSub
                    Set Main_File to Tpbranch.File_Number
                    Set Server to (Tpbranch_DD(self))
                    Set Size to 141 495
                    Set Location to 2 2
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Baxiokat.Baxiokat_descr
                        Entry_Item Tpbranch.Pct_epi_synolou
                        Entry_Item Tpbranch.Paralabh_meres
                        Entry_Item Tpbranch.Xarhtos_meres
                        Entry_Item Tpbranch.Plhroteo_meres
                    End_Row

                    Set Form_Width    item 0 to 162
                    Set Header_Label  item 0 to "í®Êß¶™"
                    
                    Set Form_Width    item 1 to 63
                    Set Header_Label  item 1 to "% úßÂ ë¨§Ê¢¶¨"
                    
                    Set Form_Width    item 2 to 82
                    Set Header_Label  item 2 to "èò®ò¢òô„ (£‚®ú™)"
                    
                    Set Form_Width    item 3 to 90
                    Set Header_Label  item 3 to "É†·©´û£ò í†£¶¢Êöû©û™"
                    
                    Set Form_Width    item 4 to 92
                    Set Header_Label  item 4 to "ä„•û úß†´òö„™ (Ü£‚®ú™)"
                    

                    //AB-StoreStart
                                                                                                                                                                                                
                    //set column_combo_state item 4 9 to true
                    
                    
                    //AB-StoreEnd

                End_Object    // TpBranch_


                //AB-StoreStart
                                                                    
                                                                    
                Set Label to 'Çú§†°¶Â é®¶† è¢û®‡£„™'
                
                //AB-StoreEnd

            End_Object    // dbTabPageSubS2

        End_Object    // dbTabDialogSubS1

    End_Object    // v065

//AB/     End_Object    // prj
