//AB/ Project Select Company(DataPath) for Open Estate
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Select Company(DataPath) for Open Estate"
//AB/     Set ProjectFileName to "Selectcy.sl"

// Project Object Structure
//   oSelectCY is a BasicPanelSub
//     Workspc_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     dbGrpSelected is a dbGroupSub
//       Workspc_Titlos is a dbFormSub
//     cbfrmYear is a ComboFormSub

// Register all objects
Register_Object cbfrmYear
Register_Object dbGrpSelected
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelectCY
Register_Object oSelList
Register_Object Workspc_DD
Register_Object Workspc_Titlos


//AB-IgnoreStart

Use Panel.Sub
Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub
Use dbGroup.Sub
Use dbForm.Sub
Use Cmbfrm.Sub


Use WORKSPC.DD

//AB-IgnoreEnd

Object oSelectCY is a BasicPanelSub

    //AB-StoreTopStart
    Property String psConstrainVal "1"
    Property String psPreSelectedWorkSpcID ""
    Property String piConstrainYear 0

    Procedure FindCurrentCompany Integer aiMode
//        String lsCurAppSrcPath

//        Get CurrentAppSrcPath of ghoWorkSpace to lsCurAppSrcPath
//        Move (UpperCase(lsCurAppSrcPath)) to lsCurAppSrcPath
//        Clear Workspc
//        Move lsCurAppSrcPath to Workspc.AppSrcExtraPath
//        Find eq Workspc by Index.3
//        [Found] Begin
//            If ((aiMode) and ;
//                (((piConstrainYear(Self) = Workspc.Year) and ;
//                (piConstrainYear(Self)<>0)))) Send Find to Workspc_DD eq 5
//            Else Set Value of (Workspc_Titlos(dbGrpSelected(Self))) to Workspc.Titlos
//            Set psPreSelectedWorkSpcID to Workspc.ID
//        End
    End_Procedure // FindCurrentCompany

    //AB-StoreTopEnd

    Set Label to "Ñß†¢¶ö„ Ñ´ò†®Âò™/ï®„©û™"
    Set Size to 207 297
    Set Location to 30 149

    //AB-DDOStart

    Object Workspc_DD is a Workspc_DataDictionary

        //AB-StoreStart

        Set_Attribute DF_FILE_MODE of Workspc.File_Number to DF_FILEMODE_READONLY

        Set Ordering to 5

//        Procedure OnConstrain
//            String lsConstrainVal
//            Integer liConstrainYear

//            Get psConstrainVal  to lsConstrainVal
//            Get piConstrainYear to liConstrainYear
//            If (liConstrainYear <> 0) Constrain Workspc.Year eq liConstrainYear
//        End_Procedure // OnConstrain


        //AB-StoreEnd

    End_Object    // Workspc_DD


    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Workspc.File_Number
        Set Server to (Workspc_DD(self))
        Set Ordering to 5
        Set Size to 136 280
        Set Location to 36 7
        Set Color to 15263976
        Set CurrentRowColor to clNavy
        Set CurrentCellColor to clNavy
        Set Auto_Index_State to FALSE
        Set Auto_Column_State to FALSE
        Set Auto_Export_State to FALSE
        Set Default_Request_Lookup to FALSE
        Set Find_Search_State to FALSE
        Set Header_Column_Sorted_State to TRUE
        Set Highlight_Row_State to FALSE
        Set Move_Value_Out_State to FALSE
        Set Popup_Search_State to TRUE
        Set Select_Mode to Auto_Select

        Begin_Row
            Entry_Item Workspc.Titlos
        End_Row

        Set Form_Width    item 0 to 271
        Set Header_Label  item 0 to "Ñ´ò†®Âò"


        //AB-StoreStart

        Procedure Beginning_Of_Data
            Forward Send Beginning_Of_Data
            Send Up
        End_Procedure // Beginning_Of_Data

        Procedure End_Of_Data
            Forward Send End_Of_Data
            Send Down
        End_Procedure // End_Of_Data

        Send DoRegSize Self smBottomRight











        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Default_State to TRUE
        Set Location to 174 128

        //AB-StoreStart
        Procedure OnClick
            Delegate Send ResetAllPaths
        End_Procedure

        Send DoRegAlign self amBottomRight











        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "Ñ&•¶õ¶™"
        Set Location to 174 183

        //AB-StoreStart
        Procedure OnClick
            Send Exit_Application
        End_Procedure

        Send DoRegAlign self amBottomRight



        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 174 238
        Set Focus_Mode to Pointer_Only

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure

        Send DoRegAlign self amBottomRight

        //AB-StoreEnd

    End_Object    // oSearch_bn

    Object dbGrpSelected is a dbGroupSub
        Set Label to "Ñß†¢úö£‚§û ú´ò†®Âò/Æ®„©û:"
        Set Size to 28 280
        Set Location to 2 7
        Object Workspc_Titlos is a dbFormSub
            Set Size to 13 266
            Set Location to 11 7
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Workspc_Titlos


        //AB-StoreStart

        Send DoRegAlign self amTopLeft
        Send DoRegSize  Self smTopRight


        //AB-StoreEnd

    End_Object    // dbGrpSelected

    Object cbfrmYear is a ComboFormSub
        Set Label to "ï®„©û:"
        Set Size to 14 50
        Set Location to 173 35
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Entry_State to FALSE
        Set Combo_Sort_State to FALSE

        //AB-StoreStart

        Procedure ChangeYear
            String lsYear
            Integer liPos

//            Get Value Item 0 to lsYear
//            Get combo_item_matching lsYear to liPos
//            If (liPos = 0) Set piConstrainYear to 0
//            Else Set piConstrainYear to (Integer(lsYear))
//            Send Rebuild_Constraints to Workspc_DD
//            Send Beginning_Of_Data to oSellist
//            Send Up to oSellist
//            Delegate Send FindCurrentCompany 1
//            Send Activate to oSellist
        End_Procedure //ChangeYear

        Set Entry_State Item 0 to False

        Procedure Combo_Fill_List
            Integer liYear liNow
            Date ldToday
            String lsYear

            Sysdate4 ldToday
            Move (TheYearSegment(ldToday)) to liNow
            If (liNow < 2000) Move 2000 to liNow

            Send Combo_Add_item "é¢ú™"

            For liYear From 2000 to liNow
                Send Combo_Add_item liYear
            Loop

            Set Default_Combo_Item to (combo_item_count(Self)-1)
            Set Value Item 0 to liNow
            Send ChangeYear
        End_procedure // Combo_Fill_List


        Procedure Combo_Item_Changed
            Forward Send Combo_Item_Changed
            Send ChangeYear
        End_Procedure // Combo_Item_Changed

        Send DoRegAlign self amBottomLeft

        //AB-StoreEnd

    End_Object    // cbfrmYear


    //AB-StoreStart

    Function ifSelect_Company Returns Integer
        Integer liRecord_id

        Send FindCurrentCompany 0
        send popup_modal
        Function_return liRecord_Id
    End_Function // ifSelect_Xrhsh

    Procedure ResetAllPaths
        String lsAppSrcPath lsDataPath lsCurWorkSpace lsLastChar lsFilelistName
        String lsModuleName lsID
        If (Current_Record(Workspc_DD(Self))) Begin
            Get WorkSpaceName of ghoWorkSpace to lsCurWorkSpace
            Get ModuleName    of ghoWorkSpace to lsModuleName
            Get Field_Current_Value of Workspc_DD Field Workspc.ID to lsID
            If (psPreSelectedWorkSpcID(Self) = lsID) Break
            Get Field_Current_Value of Workspc_DD Field Workspc.AppSrcExtraPath to lsAppSrcPath
            Get Field_Current_Value of Workspc_DD Field Workspc.DataExtraPath   to lsDataPath
            Get Field_Current_Value of Workspc_DD Field Workspc.Filelist_Name   to lsFileListName
            set_profile_string ("WorkSpaces\"+lsCurWorkSpace) "AppSrcPath"      to lsDataPath
            set_profile_string ("WorkSpaces\"+lsCurWorkSpace) "DataPath"        to lsDataPath
//            If (lsFileListName = "") Move "filelist.cfg" to lsFileListName
//            If (lsFileListPath <> "") Begin
//                Move (Right(lsFileListPath,1)) to lsLastChar
//                If ((lsLastChar = "\") or (lsLastChar = "/")) ;
//                        set_profile_string ("WorkSpaces\"+lsCurWorkSpace) "FileListPath" to (lsFileListPath + lsFileListName)
//                Else Begin
//                    If (lsFileListPath contains "/") Move "/" to lsLastChar
//                    Else Move "\" to lsLastChar
//                    set_profile_string ("WorkSpaces\"+lsCurWorkSpace) "FileListPath" to (lsFileListPath + lsLastChar + lsFileListName)
//                End
//            End
            Send DoSetWorkSpace to ghoWorkSpace lsCurWorkSpace lsModuleName
        End
        Else //Send Stop_Box "Éú§ úß†¢‚Æüû°ú ·¢¢û ú´ò†®Âò. áò ßò®ò£úÂ§ú† û Âõ†ò!" "è¢û®¶≠¶®Âò"
        Send Stop_Modal_ui
    End_Procedure // ResetDataPath

    //***************** Predefined Procedures and Functions Section **************

    Procedure OnResize
        Integer liGroupSize liGroupXsize liGroupYSize
        Integer liListSize liListXsize liListYSize

        Forward Send OnResize

        Get Size of dbGrpSelected to liGroupSize
        Move (Low(liGroupSize)) to liGroupXSize // col
        Move (Hi(liGroupSize))  to liGroupYSize // row

        Get Size of oSellist to liListSize
        Move (Low(liListSize)) to liListXSize // col
        Move (Hi(liListSize))  to liListYSize // row

        Set Size of (Workspc_Titlos(dbGrpSelected(Self))) to 13 (liGroupXSize - (280 - 266))
        Set Form_Width of oSellist Item 1 to (liListXSize - (280 - 271))
    End_Procedure // OnResize

    Set Locate_Mode to Center_On_Screen
    Set Maximize_Icon to False

    On_Key kCancel       Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_J Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))

    //AB-StoreEnd

End_Object    // oSelectCY


//AB-StoreStart

Procedure DoReOpenFiles
End_Procedure // DoReOpenFiles

Procedure Select_Company for baseclass
    Integer liFileSize liSelectCYId rVal

    Get_Attribute DF_FILE_RECORDS_USED of Workspc.File_Number to liFileSize
    Move oSelectCY to liSelectCYId
    If (lifileSize) Begin
        Get ifSelect_Company of liSelectCYId to rVal
    End
End_Procedure // Select_Company

Procedure DoChange_Company for baseclass
    Integer rVal liModalId

    Get Message_Box "á‚¢ú´ú ò¢¢òö„ ú´ò†®Âò™;" "Ñß†ôúôòÂ‡©û" MB_YESNO (MB_ICONQUESTION IOR MB_DEFBUTTON1) to rVal
    If (rVal = MBR_Yes) If (Close_All_Views(Self,True)=0) Begin
        Move oSelectCY to liModalId
        Send Select_Company
        Send DoReOpenFiles
    End
End_Procedure // DoChange_Company

//On_Key Key_Ctrl+Key_Enter Send DoChange_Company


//AB-StoreEnd

//AB/ End_Object    // prj
