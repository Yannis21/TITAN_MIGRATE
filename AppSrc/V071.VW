//AB/ Project v071:Katastrosi FPA
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v071:Katastrosi FPA"
//AB/     Set ProjectFileName to "v071.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   v071 is a dbViewSubS
//     Syscurgl_DD is a DataDictionary
//     Gplan_DD is a DataDictionary
//     Gvath_DD is a DataDictionary
//     Gvatd_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Gvath_Gvath_Code is a dbFormSub
//       Gvath_Gvath_Descr is a dbFormSub
//       Gvath_Gvath_Pct is a dbFormSub
//     Gvatd_ is a dbGridSub
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       otxtCompany is a TextBoxSub
//       otxtBranch is a TextBoxSub
//       otxtYear is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object dbGroupSub1
Register_Object dbGrpYear
Register_Object Gplan_DD
Register_Object Gvatd_
Register_Object Gvatd_DD
Register_Object Gvath_DD
Register_Object Gvath_Gvath_Code
Register_Object Gvath_Gvath_Descr
Register_Object Gvath_Gvath_Pct
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Syscurgl_DD
Register_Object v071
Register_Object Year_Year_Year


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use dbGrid.Sub
Use Txtbox.Sub

Use SYSCURGL.DD
Use GPLAN.DD
Use GVATH.DD
Use GVATD.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_v071 FOR ;
;
Object v071 is a dbViewSubS
    Set Label to "v071:âò´·©´®‡©û èú®†¶õ†°„™ É„¢‡©û™ îèÄ"
    Set Size to 293 517
    Set Location to 0 0

    //AB-DDOStart

    Object Syscurgl_DD is a Syscurgl_DataDictionary
    End_Object    // Syscurgl_DD

    Object Gplan_DD is a Gplan_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to TRUE
        //AB-StoreEnd

    End_Object    // Gplan_DD

    Object Gvath_DD is a Gvath_DataDictionary

        //AB-StoreStart
                        
        Set Allow_Foreign_New_Save_State to True
        //AB-StoreEnd

    End_Object    // Gvath_DD

    Object Gvatd_DD is a Gvatd_DataDictionary
        Set DDO_Server to (Gvath_DD(self))
        Set DDO_Server to (Gplan_DD(self))

        //AB-StoreStart
        Procedure OnConstrain
                  Constrain Gvatd Relates to Gvath
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Gvatd_DD

    Set Main_DD to (Gvath_DD(self))
    Set Server to (Gvath_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 53 502
        Set Location to 25 5
        Object Gvath_Gvath_Code is a dbFormSub
            Entry_Item Gvath.Gvath_code
            Set Label to "â‡õ†°Ê™ èú®†¶õ†°„™ É„¢‡©û™;"
            Set Size to 13 126
            Set Location to 7 124
            Set Label_Col_Offset to 120
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Gvath_Gvath_Code

        Object Gvath_Gvath_Descr is a dbFormSub
            Entry_Item Gvath.Gvath_descr
            Set Label to "èú®†ö®ò≠„  èú®†¶õ†°„™ É„¢‡©û™;"
            Set Size to 13 365
            Set Location to 22 124
            Set Label_Col_Offset to 120
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Gvath_Gvath_Descr

        Object Gvath_Gvath_Pct is a dbFormSub
            Entry_Item Gvath.Gvath_pct
            Set Label to "%ë¨§´ú¢ú©´„™"
            Set Size to 13 54
            Set Location to 36 124
            Set Label_Col_Offset to 120
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Gvath_Gvath_Pct

    End_Object    // dbGroupSub1

    Object Gvatd_ is a dbGridSub
        Set Main_File to Gvatd.File_Number
        Set Server to (Gvatd_DD(self))
        Set Ordering to 3
        Set Size to 189 429
        Set Location to 84 4
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Gplan.Gplan_code
            Entry_Item Gplan.Gplan_descr1
            Entry_Item Gvatd.Gvatd_xp
            Entry_Item (Code_Description(Self))
        End_Row

        Set Form_Width    item 0 to 120
        Set Header_Label  item 0 to "â‡õ†°Ê™ ä¶ö/£¶Á"
        
        Set Form_Width    item 1 to 200
        Set Header_Label  item 1 to "é§¶£ò©Âò ä¶ö/£¶Á"
        
        Set Form_Width    item 2 to 30
        Set Header_Label  item 2 to "ï/è"
        
        Set Form_Width    item 3 to 71
        Set Header_Label  item 3 to ""
        

        //AB-StoreStart
        Set Export_Code_Description_State Item  2 to True
        
        
        //AB-StoreEnd

    End_Object    // Gvatd_

    Object dbGrpYear is a dbGroupSub
        Set Server to (Syscurgl_DD(self))
        Set Size to 26 502
        Set Location to -3 5
        Set Auto_Clear_Deo_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurgl.Company_name
            Set Size to 13 135
            Set Location to 9 49
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET enabled_state to false
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurgl.Branch_name
            Set Size to 13 110
            Set Location to 9 257
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET enabled_state to false
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Syscurgl.Year_descr
            Set Size to 13 61
            Set Location to 8 436
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            SET enabled_state to false
            
            
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
            Set Location to 9 212
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


    //AB-StoreStart
            
    //AB-StoreEnd

CD_End_Object    // v071

//AB/ End_Object    // prj
