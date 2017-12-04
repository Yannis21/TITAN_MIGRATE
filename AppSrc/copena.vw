//AB/ Project Copena
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Copena"
//AB/     Set ProjectFileName to "copena.VW"

// Project Object Structure
//   Copena is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     dbContYear is a dbContainer3dSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//     Clients_Clients_Code is a dbFormSub
//     Clients_Clients_Descr is a dbFormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPage1 is a dbTabPage
//         dbGridSub5 is a dbGridSub
//         dbGridSub6 is a dbGridSub
//         TextBoxSub7 is a TextBoxSub
//         TextBoxSub8 is a TextBoxSub
//         dbContainer3dSub3 is a dbContainer3dSub
//           FormSub3 is a FormSub
//           FormSub4 is a FormSub
//           TextBoxSub11 is a TextBoxSub
//           TextBoxSub12 is a TextBoxSub
//       dbTabPage2 is a dbTabPage

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Cities_DD
Register_Object Clients_Clients_Code
Register_Object Clients_Clients_Descr
Register_Object Clients_DD
Register_Object Cmoves_DD
Register_Object Cmovesa_DD
Register_Object Company_Company_Name
Register_Object Copen_DD
Register_Object Copena
Register_Object Ctypkin_DD
Register_Object dbContainer3dSub3
Register_Object dbContYear
Register_Object dbGridSub5
Register_Object dbGridSub6
Register_Object dbTabDialogSubS1
Register_Object dbTabPage1
Register_Object dbTabPage2
Register_Object FormSub3
Register_Object FormSub4
Register_Object Syscurxr_DD
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbCont3.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbTabDlgS.Sub
Use dbGrid.Sub
Use Form.Sub

Use CTYPKIN.DD
Use CITIES.DD
Use CLIENTS.DD
Use CMOVES.DD
Use CMOVESA.DD
Use COPEN.DD
Use SYSCURXR.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Copena FOR ;
;
Object Copena is a dbViewSubS

    //AB-StoreTopStart
                        
    //Property Integer piCurrentYearRec0 gi_Selected_Year_Rec0
    
    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®†©û Open Items"
    Set Size to 294 526
    Set Location to 2 3

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Cities_DD is a Cities_DataDictionary
    End_Object    // Cities_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
    End_Object    // Cmoves_DD

    Object Cmovesa_DD is a Cmovesa_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
    End_Object    // Cmovesa_DD

    Object Copen_DD is a Copen_DataDictionary
        Set DDO_Server to (Cmoves_DD(self))
        Set DDO_Server to (Cmovesa_DD(self))
        Set Constrain_File to Cmoves.File_Number
    End_Object    // Copen_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Set Main_DD to (Cmoves_DD(self))
    Set Server to (Cmoves_DD(self))

    //AB-DDOEnd

    Object dbContYear is a dbContainer3dSub
        Set Server to (Cities_DD(self))
        Set Size to 21 518
        Set Location to 2 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 135
            Set Location to 2 46
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 110
            Set Location to 3 256
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Syscurxr.Year_year
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 2 445
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                        
                                                        
                                                        
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Ñ´ò†®Âò:"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 4 7
            Set Size to 10 30
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ìß¶°/£ò:"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 4 214
            Set Size to 10 33
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "ï®„©û:"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 4 408
            Set Size to 10 26
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub6

    End_Object    // dbContYear

    Object Clients_Clients_Code is a dbFormSub
        entry_item clients.client_id 
        Set Label to "â‡õ†°Ê™ ä¶öò®†ò©£¶Á:"
        Set Size to 13 126
        Set Location to 26 90
        Set Label_Col_Offset to 85
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Clients_Clients_Code

    Object Clients_Clients_Descr is a dbFormSub
        entry_item clients.client_name 
        Set Size to 13 242
        Set Location to 26 220
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Clients_Clients_Descr

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 233 518
        Set Location to 43 3
        Object dbTabPage1 is a dbTabPage
            Set Label to "dbTabPage1"
            Object dbGridSub5 is a dbGridSub

                //AB-StoreTopStart
                Function nfArxiki_Axia Returns Number
                    If (Cmoves.Cmoves_X0 <> 0) Function_Return Cmoves.Cmoves_X0
                    Function_Return Cmoves.Cmoves_P0
                End_Function //nfarxiki_axia
                
                Function nfSysxetismeni_Axia Returns Number
                    If (Cmoves.Cmoves_Open_SX0 <> 0) Function_Return Cmoves.Cmoves_Open_SX0
                    Function_Return Cmoves.Cmoves_Open_SP0
                End_Function //nfSysxetismeni_Axia
                
                Function nfYpolipo_Pros_Sysxetisi Returns Number
                    If (Cmoves.Cmoves_Open_YX0 <> 0) Function_Return Cmoves.Cmoves_Open_YX0
                    Function_Return Cmoves.Cmoves_Open_YP0
                End_Function //nfYpolipo_Pros_Sysxetisi
                
                Function sfXP Returns String
                    If (Cmoves.Cmoves_X0 <> 0) Function_Return "  ï"
                    Function_Return "  è"
                End_Function //nfarxiki_axia
                
                //AB-StoreTopEnd

                Set Main_File to Cmoves.File_Number
                Set Ordering to 4
                Set Size to 70 507
                Set Location to 42 3
                Set CurrentRowColor to 11468799
                Set Wrap_State to TRUE
                Set Auto_Regenerate_State to FALSE

                Begin_Row
                    Entry_Item Ctypkin.Ctypkin_code
                    Entry_Item Ctypkin.Ctypkin_descr
                    Entry_Item Cmoves.Cmoves_par
                    Entry_Item Cmoves.Cmoves_hmnia
                    Entry_Item (sfXP(Self))
                    Entry_Item (nfArxiki_Axia(Self))
                    Entry_Item (nfSysxetismeni_Axia(Self))
                    Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
                    Entry_Item Cmoves.Recnum
                End_Row

                Set Form_Width    item 0 to 38
                Set Header_Label  item 0 to "âÂ§û©û"
                
                Set Form_Width    item 1 to 60
                Set Header_Label  item 1 to "ë¨§´/≠Âò"
                
                Set Form_Width    item 2 to 36
                Set Header_Label  item 2 to "Ä®†ü£Ê™"
                
                Set Form_Width    item 3 to 42
                Set Header_Label  item 3 to "Ü£/§Âò"
                
                Set Form_Width    item 4 to 18
                Set Header_Label  item 4 to "ïè"
                
                Set Form_Width    item 5 to 74
                Set Header_Label  item 5 to "Ä®Æ†°„ Ä•Âò"
                
                Set Form_Width    item 6 to 74
                Set Header_Label  item 6 to "ë¨©Æú´†©£‚§û Ä•Âò"
                
                Set Form_Width    item 7 to 74
                Set Header_Label  item 7 to "ìßÊ¢¶†ß¶"
                
                Set Form_Width    item 8 to 48
                Set Header_Label  item 8 to "Recnum"
                

                //AB-StoreStart
                                                    
                Procedure Request_Clear_All
                End_Procedure // Request_Clear_All
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // dbGridSub5

            Object dbGridSub6 is a dbGridSub

                //AB-StoreTopStart
                Function nfArxiki_Axia Returns Number
                    If (Cmovesa.Cmoves_X0 <> 0) Function_Return Cmovesa.Cmoves_X0
                    Function_Return Cmovesa.Cmoves_P0
                End_Function //nfarxiki_axia
                
                Function nfSysxetismeni_Axia Returns Number
                    If (Cmovesa.Cmoves_Open_SX0 <> 0) Function_Return Cmovesa.Cmoves_Open_SX0
                    Function_Return Cmovesa.Cmoves_Open_SP0
                End_Function //nfSysxetismeni_Axia
                
                Function nfYpolipo_Pros_Sysxetisi Returns Number
                    If (Cmovesa.Cmoves_Open_YX0 <> 0) Function_Return Cmovesa.Cmoves_Open_YX0
                    Function_Return Cmovesa.Cmoves_Open_YP0
                End_Function //nfYpolipo_Pros_Sysxetisi
                
                Function sfXP Returns String
                    If (Cmovesa.Cmoves_X0 <> 0) Function_Return "  ï"
                    Function_Return "  è"
                End_Function //nfarxiki_axia
                
                //AB-StoreTopEnd

                Set Main_File to Copen.File_Number
                Set Server to (Copen_DD(self))
                Set Ordering to 1
                Set Size to 70 507
                Set Location to 128 3
                Set CurrentRowColor to 11468799
                Set Wrap_State to TRUE
                Set Child_Table_State to FALSE

                Begin_Row
                    Entry_Item Cmovesa.Recnum
                    Entry_Item Cmovesa.Ctypkin_code
                    Entry_Item Cmovesa.Cmoves_par
                    Entry_Item Cmovesa.Cmoves_hmnia
                    Entry_Item (sfXP(Self))
                    Entry_Item (nfArxiki_Axia(Self))
                    Entry_Item (nfSysxetismeni_Axia(Self))
                    Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
                    Entry_Item Copen.Copen_x0
                    Entry_Item Copen.Copen_p0
                End_Row

                Set Form_Width    item 0 to 35
                Set Header_Label  item 0 to "Recnum"
                
                Set Form_Width    item 1 to 38
                Set Header_Label  item 1 to "âÂ§û©û"
                
                Set Form_Width    item 2 to 36
                Set Header_Label  item 2 to "Ä®†ü£Ê™"
                
                Set Form_Width    item 3 to 42
                Set Header_Label  item 3 to "Ü£/§Âò"
                
                Set Form_Width    item 4 to 18
                Set Header_Label  item 4 to "ïè"
                
                Set Form_Width    item 5 to 74
                Set Header_Label  item 5 to "Ä®Æ†°„ Ä•Âò"
                
                Set Form_Width    item 6 to 74
                Set Header_Label  item 6 to "ë¨©Æú´†©£‚§û Ä•Âò"
                
                Set Form_Width    item 7 to 64
                Set Header_Label  item 7 to "ìßÊ¢¶†ß¶"
                
                Set Form_Width    item 8 to 60
                Set Header_Label  item 8 to "ë¨©Æú´†ùÊ£ú§û ï®‚‡©û"
                
                Set Form_Width    item 9 to 60
                Set Header_Label  item 9 to "ë¨©Æú´†ùÊ£ú§û èÂ©´‡©û"
                

                //AB-StoreStart
                                                    
                Function Row_Save Returns Integer
                    Integer liRetval
                    Forward Get Row_Save to liRetval
                    If (liRetval = 0) Send Display to (dbGridSub5(Self))
                    Function_Return liRetval
                End_Function //row_save
                
                Procedure Request_Clear_All
                End_Procedure // Request_Clear_All
                
                
                
                
                //AB-StoreEnd

            End_Object    // dbGridSub6

            Object TextBoxSub7 is a TextBoxSub
                Set Label to "Ñ°°®ú£„"
                Set Location to 31 6
                Set Size to 10 29
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub7

            Object TextBoxSub8 is a TextBoxSub
                Set Label to "ë¨©Æú´†ùÊ£ú§ò"
                Set Location to 118 5
                Set Size to 10 54
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub8

            Object dbContainer3dSub3 is a dbContainer3dSub
                Set Size to 26 507
                Set Location to 2 3
                Object FormSub3 is a FormSub
                    Set Size to 13 85
                    Set Location to 6 51
                    Set Label_Col_Offset to 2
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                End_Object    // FormSub3

                Object FormSub4 is a FormSub
                    Set Size to 13 85
                    Set Location to 6 207
                    Set Label_Col_Offset to 2
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                End_Object    // FormSub4

                Object TextBoxSub11 is a TextBoxSub
                    Set Label to "ÄßÊ Ü£/§Âò"
                    Set Location to 7 9
                    Set Size to 10 38
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub11

                Object TextBoxSub12 is a TextBoxSub
                    Set Label to "Ñ‡™ Ü£/§Âò"
                    Set Location to 7 162
                    Set Size to 10 40
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub12

            End_Object    // dbContainer3dSub3


            //AB-StoreStart
            Set Label to "Ñ°°®ú£„ èò®ò©´ò´†°·"
            //AB-StoreEnd

        End_Object    // dbTabPage1

        Object dbTabPage2 is a dbTabPage
            Set Label to "dbTabPage2"

            //AB-StoreStart
            Set Label to "ë¨©Æú´†©£‚§ò èò®ò©´ò´†°·"
            //AB-StoreEnd

        End_Object    // dbTabPage2


        //AB-StoreStart
                                        
        //AB-StoreEnd

    End_Object    // dbTabDialogSubS1


    //AB-StoreStart
                        
    //***************** Predefined Procedures and Functions Section **************
    
    Procedure Activate_View Returns Integer
         Integer Rval
         Forward Get MSG_Activate_View to Rval
         If (Not(Rval)) Begin
            Move '01' to gs_Module_Code
         End
         Procedure_Return rVal
    End_Procedure // Activate_View
    
    
    //Set Verify_Exit_Msg To Get_No_Confirmation
    
    //AB-StoreEnd

CD_End_Object    // Copena


//AB-StoreStart
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
