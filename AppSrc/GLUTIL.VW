//AB/ Project GL-Utilities
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "GL-Utilities"
//AB/     Set ProjectFileName to "GLUtil.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   GLUTIL is a dbViewSubS
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Gthhmgio_DD is a DataDictionary
//     Gtypkin_DD is a DataDictionary
//     Gplan_DD is a DataDictionary
//     Garticl_DD is a DataDictionary
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       otxtCompany is a TextBoxSub
//       otxtBranch is a TextBoxSub
//       otxtYear is a TextBoxSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       TP_REUPDATE_dbTabPageSubS1 is a dbTabPageSubS
//         REUPDATE_ButtonSub is a ButtonSub
//       dbTabPageSubS2 is a dbTabPageSubS
//       dbTabPageSubS3 is a dbTabPageSubS

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Branch_DD
Register_Object Company_Company_Name
Register_Object Company_DD
Register_Object dbGrpYear
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS2
Register_Object dbTabPageSubS3
Register_Object Garticl_DD
Register_Object GLUTIL
Register_Object Gplan_DD
Register_Object Gthhmgio_DD
Register_Object Gtypkin_DD
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object REUPDATE_ButtonSub
Register_Object TP_REUPDATE_dbTabPageSubS1
Register_Object Year_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use DoGlmntn.bp
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbTabDlgS.Sub
Use Button.Sub

Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD
Use GTHHMGIO.DD
Use GTYPKIN.DD
Use GPLAN.DD
Use GARTICL.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_GLUTIL FOR ;
;
Object GLUTIL is a dbViewSubS

    //AB-StoreTopStart
    //AB-StoreTopEnd

    Set Label to "Utilities Çú§†°„™ ä¶ö†©´†°„™"
    Set Size to 311 530
    Set Location to 0 0

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to TRUE
        //AB-StoreEnd

    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))

        //AB-StoreStart
        Set Read_Only_State to TRUE
        //AB-StoreEnd

    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))

        //AB-StoreStart
        Set Read_Only_State to TRUE
        Set Field_Options Field Year.Year_Year to DD_DISPLAYONLY

        //AB-StoreEnd

    End_Object    // Year_DD

    Object Gthhmgio_DD is a Gthhmgio_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to TRUE
        //AB-StoreEnd

    End_Object    // Gthhmgio_DD

    Object Gtypkin_DD is a Gtypkin_DataDictionary
        Set DDO_Server to (Gthhmgio_DD(self))

        //AB-StoreStart
        Set Read_Only_State to TRUE

        //AB-StoreEnd

    End_Object    // Gtypkin_DD

    Object Gplan_DD is a Gplan_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to TRUE

        //AB-StoreEnd

    End_Object    // Gplan_DD

    Object Garticl_DD is a Garticl_DataDictionary
        Set DDO_Server to (Gtypkin_DD(self))

        //AB-StoreStart
        Set Read_Only_State to TRUE
        Procedure OnConstrain
                  Constrain Garticl Relates to Gtypkin
        End_Procedure

        //AB-StoreEnd

    End_Object    // Garticl_DD

    Set Main_DD to (Year_DD(self))
    Set Server to (Year_DD(self))

    //AB-DDOEnd

    Object dbGrpYear is a dbGroupSub
        Set Size to 26 502
        Set Location to 10 5
        Set Auto_Clear_Deo_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Company.Company_name
            Set Size to 13 135
            Set Location to 9 49
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Branch.Branch_name
            Set Size to 13 110
            Set Location to 9 257
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Year.Year_year
            Set Size to 13 61
            Set Location to 8 436
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object otxtCompany is a TextBoxSub
            Set Label to "Ñ´ò†®Âò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 6
            Set Size to 10 32
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtCompany

        Object otxtBranch is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 212
            Set Size to 10 37
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtBranch

        Object otxtYear is a TextBoxSub
            Set Label to "ï®„©û:"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 403
            Set Size to 10 26
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtYear

    End_Object    // dbGrpYear

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 224 507
        Set Location to 40 8
        Object TP_REUPDATE_dbTabPageSubS1 is a dbTabPageSubS
            Set Label to "REUPDATE_dbTabPageSubS1"
            Object REUPDATE_ButtonSub is a ButtonSub
                Set Label to "Reupdate à©¶ùÁö†ò"
                Set Size to 14 75
                Set Location to 114 345
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Procedure OnClick
                    Integer liTemp
                    String  lsYear_Recr
                    Move SysCurGL.Year_Recr to lsYear_Recr
                    Get Do_ReUpdate_Isozygia_Gl of (oDo_GL_Maintainance(Self)) lsYear_Recr to liTemp
                End_Procedure // OnClick



                //AB-StoreEnd

            End_Object    // REUPDATE_ButtonSub


            //AB-StoreStart
            Set Label to "Re-update à©¶ùÁö†ò"

            //AB-StoreEnd

        End_Object    // TP_REUPDATE_dbTabPageSubS1

        Object dbTabPageSubS2 is a dbTabPageSubS
            Set Label to "dbTabPageSubS2"

            //AB-StoreStart
            Set Label to "Re-update ãìî"
            //AB-StoreEnd

        End_Object    // dbTabPageSubS2

        Object dbTabPageSubS3 is a dbTabPageSubS
            Set Label to "dbTabPageSubS3"

            //AB-StoreStart
            Set Label to ""
            //AB-StoreEnd

        End_Object    // dbTabPageSubS3


        //AB-StoreStart
        Procedure Request_Clear_All
        End_Procedure // Request_Clear_All

        //AB-StoreEnd

    End_Object    // dbTabDialogSubS1


    //AB-StoreStart

    //AB-StoreEnd

CD_End_Object    // GLUTIL


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
