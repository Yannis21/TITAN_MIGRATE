//AB/ Project v017:karteles eidon
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v017:karteles eidon"
//AB/         Set ProjectFileName to "V017.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   v017 is a dbViewSubS
//     Witemx_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Wcmoves_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     Container1 is a dbContainer3d
//       Witemx_Witemx_code is a dbForm
//       Witemx_Witemx_descr is a dbForm
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       Witemkat_Witemkat_Descr is a dbFormSub
//     The_Table is a dbGrid
//     Witemx_Qty_Xre is a dbFormSub
//     Witemx_Qty_Pis is a dbFormSub
//     Witemx_Axia_Xre is a dbFormSub
//     Witemx_Axia_Pis is a dbFormSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object Container1
Register_Object dbGroupSub1
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object The_Table
Register_Object v017
Register_Object Wapomast_DD
Register_Object Wcmoves_DD
Register_Object Witemkat_DD
Register_Object Witemkat_Witemkat_Descr
Register_Object Witemx_Axia_Pis
Register_Object Witemx_Axia_Xre
Register_Object Witemx_DD
Register_Object Witemx_Qty_Pis
Register_Object Witemx_Qty_Xre
Register_Object Witemx_Witemx_code
Register_Object Witemx_Witemx_descr
Register_Object Year_Year_Year


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGroup.Sub
    Use dbForm.Sub
    Use Txtbox.Sub

    Use WITEMX.DD
    Use WAPOMAST.DD
    Use WITEMKAT.DD
    Use SYSCURXR.DD
    Use WCMOVES.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v017 FOR v017

    Object v017 is a dbViewSubS

        //AB-StoreTopStart
                
        property integer pidecs public 0
        
        Function fnxre returns number
            number nxre
            if (wcmoves.wcmove_x0<>0) move wcmoves.wcmov_totamad0 to nxre
            else move 0 to nxre
            Function_Return nxre
        End_function
        
        Function fnpis returns number
            number npis
            if (wcmoves.wcmove_p0<>0) move wcmoves.wcmov_totamad0 to npis
            else move 0 to npis
            Function_Return  npis
        End_function
        
        
        //AB-StoreTopEnd

        Set Label to "âò®´‚¢ú™ Ñ†õÈ§"
        Set Size to 279 515
        Set Location to 6 6

        //AB-DDOStart

        Object Witemx_DD is a Witemx_DataDictionary

            //AB-StoreStart
            set ordering to 5
            begin_constraints
                Constrain Witemx.Company_Code  eq SysCurXR.Company_Code
                Constrain Witemx.Branch_Code   eq SysCurXR.Branch_Code
                Constrain Witemx.Year_Year     eq SysCurXR.Year_Year
            End_constraints
            
            //AB-StoreEnd

        End_Object    // Witemx_DD

        Object Wapomast_DD is a Wapomast_DataDictionary
        End_Object    // Wapomast_DD

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Object Wcmoves_DD is a Wcmoves_DataDictionary
            Set DDO_Server to (Witemx_DD(self))
            Set Constrain_File to Witemx.File_Number

            //AB-StoreStart
            begin_constraints
                Constrain Wcmoves.Company_Code  eq SysCurXR.Company_Code
                Constrain Wcmoves.Branch_Code   eq SysCurXR.Branch_Code
                Constrain Wcmoves.Year_Year     eq SysCurXR.Year_Year
            End_constraints
            //AB-StoreEnd

        End_Object    // Wcmoves_DD

        Set Main_DD to (Witemx_DD(self))
        Set Server to (Witemx_DD(self))

        //AB-DDOEnd

        Object dbGroupSub1 is a dbGroupSub
            Set Size to 26 507
            Set Location to -2 3
            Set Visible_State to FALSE
            Object Company_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 123
                Set Location to 9 59
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Company_Company_Name

            Object Branch_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 110
                Set Location to 9 269
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                set enabled_state to false
                
                //AB-StoreEnd

            End_Object    // Branch_Branch_Name

            Object Year_Year_Year is a dbFormSub

                //AB-StoreTopStart
                                                                                        
                //AB-StoreTopEnd

                Entry_Item Syscurxr.Year_descr
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 61
                Set Location to 8 440
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
                Set Label to "ìß¶°ò´·©´û£ò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 201
                Set Size to 10 55
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub2

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "ï®„©û"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 10 397
                Set Size to 10 31
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub3

        End_Object    // dbGroupSub1

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 49 508
            Set Location to 4 3
            Object Witemx_Witemx_code is a dbForm
                Entry_Item Witemx.Witemx_code
                Set Size to 13 126
                Set Location to 4 67
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart
                                                                                        
                                                                                        
                                                                                        
                //AB-StoreEnd

            End_Object    // Witemx_Witemx_code

            Object Witemx_Witemx_descr is a dbForm
                Entry_Item Witemx.Witemx_descr
                Set Size to 13 318
                Set Location to 18 67
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Witemx_Witemx_descr

            Object TextBoxSub4 is a TextBoxSub
                Set Label to "â‡õ†°Ê™ ÑÂõ¶¨™"
                Set Location to 4 6
                Set Size to 10 52
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "èú®†ö®ò≠„"
                Set Location to 18 6
                Set Size to 10 38
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "âò´ûö¶®Âò"
                Set Location to 33 6
                Set Size to 10 41
            End_Object    // TextBoxSub6

            Object Witemkat_Witemkat_Descr is a dbFormSub
                Entry_Item Witemkat.Witemkat_descr
                Set Size to 13 318
                Set Location to 32 67
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Witemkat_Witemkat_Descr

        End_Object    // Container1

        Object The_Table is a dbGrid
            Set Main_File to Wcmoves.File_Number
            Set Server to (Wcmoves_DD(self))
            Set Ordering to 12
            Set Size to 175 508
            Set Location to 69 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Wcmoves.Wcmove_hmnia
                Entry_Item Wcmoves.Wcmove_par
                Entry_Item (fsclient(self,wcmoves.client_id))
                Entry_Item Wapomast.Wapomast_descr
                Entry_Item Wcmoves.Wcmove_qty_eisa
                Entry_Item Wcmoves.Wcmove_qty_exa
                Entry_Item (fnxre(self))
                Entry_Item (fnpis(self))
            End_Row

            Set Form_Width    item 0 to 43
            Set Header_Label  item 0 to "Ü£/§Âò"
            
            Set Form_Width    item 1 to 68
            Set Header_Label  item 1 to "èò®ò©´ò´†°Ê"
            
            Set Form_Width    item 2 to 105
            Set Header_Label  item 2 to "èú¢·´û™"
            
            Set Form_Width    item 3 to 100
            Set Header_Label  item 3 to "Äß¶ü„°û"
            
            Set Form_Width    item 4 to 44
            Set Header_Label  item 4 to "ï®‚‡©û"
            
            Set Form_Width    item 5 to 44
            Set Header_Label  item 5 to "èÂ©´‡©û"
            
            Set Form_Width    item 6 to 49
            Set Header_Label  item 6 to "ï®‚‡©û"
            
            Set Form_Width    item 7 to 49
            Set Header_Label  item 7 to "èÂ©´‡©û"
            

            //AB-StoreStart
            set read_only_state to true
            
            Procedure End_Construct_Object
                Integer iDecimalcs
                Forward Send End_Construct_Object
                Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecimalcs
                set pidecs        to iDecimalcs
                Set Points Item 4 to 1
                Set Points Item 5 to 1
                Set Numeric_Mask  Item 4 to 14 1 " ,*"
                Set Points Item 6 to iDecimalcs
                Set Points Item 7 to iDecimalcs
                Set Numeric_Mask  Item 6 to 14 iDecimalcs " ,*"
                Set Numeric_Mask  Item 7 to 14 iDecimalcs " ,*"
            End_Procedure
            
            //procedure beginning_of_data
            //    forward send beginning_of_data
            //    send request_assign to witemx_dd
            //end_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object Witemx_Qty_Xre is a dbFormSub
            Entry_Item Witemx.Qty_xre
            Set Size to 13 43
            Set Location to 245 319
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                                
            set enabled_state to false
            
            set points item 0 to 1
            
            Set Color           to clTeal
            Set TextColor       to clWhite
            
            
            //AB-StoreEnd

        End_Object    // Witemx_Qty_Xre

        Object Witemx_Qty_Pis is a dbFormSub
            Entry_Item Witemx.Qty_pis
            Set Size to 13 40
            Set Location to 245 363
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            set enabled_state to false
            set points item 0 to 1
            Set Color           to clTeal
            Set TextColor       to clWhite
            //AB-StoreEnd

        End_Object    // Witemx_Qty_Pis

        Object Witemx_Axia_Xre is a dbFormSub
            Entry_Item Witemx.Axia_xre
            Set Size to 13 48
            Set Location to 245 403
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                                
            set enabled_state to false
            Set Color           to clTeal
            Set TextColor       to clWhite
            Procedure End_Construct_Object
                integer idecimals
                Forward Send End_Construct_Object
                get pidecs to idecimals
            
                Set Points Item 0   to idecimals
                Set Numeric_Mask  Item 0 to 14 iDecimals " ,*"
            
            end_procedure
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemx_Axia_Xre

        Object Witemx_Axia_Pis is a dbFormSub
            Entry_Item Witemx.Axia_pis
            Set Size to 13 51
            Set Location to 245 452
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            set enabled_state to false
            Set Color           to clTeal
            Set TextColor       to clWhite
            Procedure End_Construct_Object
                integer idecimals
                Forward Send End_Construct_Object
                get pidecs to idecimals
            
                Set Points Item 0   to idecimals
                Set Numeric_Mask  Item 0 to 14 iDecimals " ,*"
            
            end_procedure
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Witemx_Axia_Pis

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "è¶©Ê´û´ú™"
            Set Location to 55 338
            Set Size to 10 41
            Set FontWeight to 800
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "Ä•Âú™"
            Set Location to 55 440
            Set Size to 10 21
            Set FontWeight to 800
        End_Object    // TextBoxSub8


        //AB-StoreStart
                
        Procedure Activate_View Returns Integer
            Integer rVal iCopenID
            String sModule
            Forward Get Msg_Activate_View to rVal
            send rebuild_constraints to witemx_dd
            send beginning_of_data to the_table true
        
            Procedure_Return rVal
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // v017

//AB/     End_Object    // prj
