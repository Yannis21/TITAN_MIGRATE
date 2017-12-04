//AB/ Project V068:Gopen with ALIAS
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V068:Gopen with ALIAS"
//AB/     Set ProjectFileName to "V068.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V068 is a dbViewSubS
//     Syscurgl_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Gplan_DD is a DataDictionary
//     Garticl_DD is a DataDictionary
//     Gmove_DD is a DataDictionary
//     Gmovea_DD is a DataDictionary
//     Gopen_DD is a DataDictionary
//     dbContYear is a dbContainer3dSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//     Gplan_Gplan_Code is a dbFormSub
//     Gplan_Gplan_Descr is a dbFormSub
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
Register_Object Company_Company_Name
Register_Object dbContainer3dSub3
Register_Object dbContYear
Register_Object dbGridSub5
Register_Object dbGridSub6
Register_Object dbTabDialogSubS1
Register_Object dbTabPage1
Register_Object dbTabPage2
Register_Object FormSub3
Register_Object FormSub4
Register_Object Garticl_DD
Register_Object Gmove_DD
Register_Object Gmovea_DD
Register_Object Gopen_DD
Register_Object Gplan_DD
Register_Object Gplan_Gplan_Code
Register_Object Gplan_Gplan_Descr
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object Syscurgl_DD
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object V068
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

Use SysCurGL.DD
Use GTHHMGIO.DD
Use GTYPKIN.DD
Use GPLAN.DD
Use GARTICL.DD
Use GMOVE.DD
Use GMOVEA.DD
Use GOPEN.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_V068 FOR ;
;
Object V068 is a dbViewSubS

    //AB-StoreTopStart


    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®†©û Open Items"
    Set Size to 294 526
    Set Location to 2 3

    //AB-DDOStart

    Object Syscurgl_DD is a Syscurgl_DataDictionary
    End_Object    // Syscurgl_DD

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary

        //AB-StoreStart
        Set Ordering to 1 //gthhmgio_code

        //AB-StoreEnd

    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))

        //AB-StoreStart
        Set ordering to 1 //company_code+
                          //branch_code+
                          //year_year+
                          //gtypkin_code


        //AB-StoreEnd

    End_Object    // Gtypkin_DD

    Object Gplan_DD is a Gplan_DataDictionary
        Set DDO_Server to ((self))

        //AB-StoreStart
        Set ordering to 1 //company_code+
                          //branch_code+
                          //year_year+
                          //gplan_code

        Set Read_Only_State to True
        Set No_Delete_State to True

        Procedure Request_Save //òßòö¶®úÁú´ò† ´¶ ©È©†£¶ gplan
        End_Procedure //request_save

        Procedure Request_Delete //òßòö¶®úÁú´ò† û õ†òö®ò≠„ gplan
        End_Procedure //request_delete

        Set Field_Options Field Gplan.Gplan_Code   to DD_NOPUT
        Set Field_Options Field Gplan.Gplan_Descr1 to DD_NOPUT



        //AB-StoreEnd

    End_Object    // Gplan_DD

    Object Garticl_DD is a Garticl_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))

        //AB-StoreStart
        Set ordering to 1 //company_code+
                          //branch_code+
                          //year_year+
                          //gtypkin_code+
                          //garticl_hmnia+
                          //garticl_no+
                          //garticl_recr


        //AB-StoreEnd

    End_Object    // Garticl_DD

    Object Gmove_DD is a Gmove_DataDictionary
        Set DDO_Server to (Gplan_DD(self))
        Set DDO_Server to (Garticl_DD(self))
        Set Constrain_File to Gplan.File_Number

        //AB-StoreStart
        Set Ordering to 4 //gplan_recr+recnum

        Set Read_Only_State to True
        Set No_Delete_State to True

        Procedure Request_Save //òßòö¶®úÁú´ò† ´¶ ©È©†£¶ Gmove
        End_Procedure //request_save

        Procedure Request_Delete //òßòö¶®úÁú´ò† û õ†òö®ò≠„ Gmove
        End_Procedure //request_delete






        //AB-StoreEnd

    End_Object    // Gmove_DD

    Object Gmovea_DD is a Gmovea_DataDictionary

        //AB-StoreStart
        Set Ordering to 2 //Gmove_recr







        //AB-StoreEnd

    End_Object    // Gmovea_DD

    Object Gopen_DD is a Gopen_DataDictionary
        Set DDO_Server to (Gmove_DD(self))
        Set DDO_Server to (Gmovea_DD(self))
        Set Constrain_File to Gmove.File_Number

        //AB-StoreStart
        Set Ordering to 1 //Gmove_recr+Gmovea_recr

        //AB-StoreEnd

    End_Object    // Gopen_DD

    Set Main_DD to (Gplan_DD(self))
    Set Server to (Gplan_DD(self))

    //AB-DDOEnd

    Object dbContYear is a dbContainer3dSub
        Set Size to 21 518
        Set Location to 2 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurgl.Company_name
            Set Size to 13 135
            Set Location to 2 46
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurgl.Branch_name
            Set Size to 13 110
            Set Location to 3 256
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Syscurgl.Year_year
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

    Object Gplan_Gplan_Code is a dbFormSub
        Entry_Item Gplan.Gplan_code
        Set Label to "â‡õ†°Ê™ ä¶öò®†ò©£¶Á:"
        Set Size to 13 126
        Set Location to 26 90
        Set Label_Col_Offset to 85
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gplan_Gplan_Code

    Object Gplan_Gplan_Descr is a dbFormSub
        Entry_Item Gplan.Gplan_descr1
        Set Size to 13 242
        Set Location to 26 220
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Gplan_Gplan_Descr

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 233 518
        Set Location to 43 3
        Object dbTabPage1 is a dbTabPage
            Set Label to "dbTabPage1"
            Object dbGridSub5 is a dbGridSub

                //AB-StoreTopStart
                Function nfArxiki_Axia Returns Number
                         If (Gmove.Gmove_X0 <> 0) Function_Return Gmove.Gmove_X0
                                                    Function_Return Gmove.Gmove_P0
                End_Function //nfarxiki_axia

                Function nfSysxetismeni_Axia Returns Number
                         If (Gmove.Gmove_Open_SX0 <> 0) Function_Return Gmove.Gmove_Open_SX0
                                                          Function_Return Gmove.Gmove_Open_SP0
                End_Function //nfSysxetismeni_Axia

                Function nfYpolipo_Pros_Sysxetisi Returns Number
                         If (Gmove.Gmove_Open_YX0 <> 0) Function_Return Gmove.Gmove_Open_YX0
                                                          Function_Return Gmove.Gmove_Open_YP0
                End_Function //nfYpolipo_Pros_Sysxetisi

                Function sfXP Returns String
                         If (Gmove.Gmove_X0 <> 0) Function_Return "  ï"
                                                    Function_Return "  è"
                End_Function //nfarxiki_axia
                //AB-StoreTopEnd

                Set Main_File to Gmove.File_Number
                Set Server to (Gmove_DD(self))
                Set Ordering to 4
                Set Size to 70 507
                Set Location to 42 3
                Set CurrentRowColor to 11468799
                Set Wrap_State to TRUE
                Set Auto_Regenerate_State to FALSE

                Begin_Row
                    Entry_Item Gtypkin.Gtypkin_code
                    Entry_Item Gtypkin.Gtypkin_abr
                    Entry_Item Garticl.Garticl_no
                    Entry_Item Garticl.Garticl_hmnia
                    Entry_Item (sfXP(Self))
                    Entry_Item (nfArxiki_Axia(Self))
                    Entry_Item (nfSysxetismeni_Axia(Self))
                    Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
                    Entry_Item Gmove.Recnum
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
                         If (Gmovea.Gmove_X0 <> 0) Function_Return Gmovea.Gmove_X0
                                                     Function_Return Gmovea.Gmove_P0
                End_Function //nfarxiki_axia

                Function nfSysxetismeni_Axia Returns Number
                         If (Gmovea.Gmove_Open_SX0 <> 0) Function_Return Gmovea.Gmove_Open_SX0
                                                           Function_Return Gmovea.Gmove_Open_SP0
                End_Function //nfSysxetismeni_Axia

                Function nfYpolipo_Pros_Sysxetisi Returns Number
                         If (Gmovea.Gmove_Open_YX0 <> 0) Function_Return Gmovea.Gmove_Open_YX0
                                                           Function_Return Gmovea.Gmove_Open_YP0
                End_Function //nfYpolipo_Pros_Sysxetisi

                Function sfXP Returns String
                         If (Gmovea.Gmove_X0 <> 0) Function_Return "  ï"
                                                     Function_Return "  è"
                End_Function //nfarxiki_axia
                //AB-StoreTopEnd

                Set Main_File to Gopen.File_Number
                Set Server to (Gopen_DD(self))
                Set Ordering to 1
                Set Size to 70 507
                Set Location to 128 3
                Set CurrentRowColor to 11468799
                Set Wrap_State to TRUE
                Set Child_Table_State to FALSE

                Begin_Row
                    Entry_Item Gmovea.Recnum
                    Entry_Item Gmovea.Gtypkin_code
                    Entry_Item Gmovea.Garticl_no
                    Entry_Item Gmovea.Garticl_hmnia
                    Entry_Item (sfXP(Self))
                    Entry_Item (nfArxiki_Axia(Self))
                    Entry_Item (nfSysxetismeni_Axia(Self))
                    Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
                    Entry_Item Gopen.Gopen_x0
                    Entry_Item Gopen.Gopen_p0
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

                Set Form_Width    item 7 to 74
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


    //AB-StoreEnd

CD_End_Object    // V068


//AB-StoreStart


//AB-StoreEnd

//AB/ End_Object    // prj
