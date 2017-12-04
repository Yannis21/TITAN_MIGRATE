//AB/ Project Find all Related Files
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Find all Related Files"
//AB/     Set ProjectFileName to "FindRelatedFiles.VW"

// Project Object Structure
//   oRelated is a dbView
//     WorkSpaceBtn is a Button
//     BuildFileWorkList is a Button
//     RelatedFileListGrid is a Grid
//     ReworkListArray is a Array
//     RecurArray is a Array
//     Mew32 is a Form
//     RelatedRpt is a Form
//     PrintLog is a Button
//     FieldSortCheckBox is a CheckBox
//     CloseOpenTypeSize is a Button
//     ProcessOverLaps is a CheckBox
//     CurrentFileList is a Form

// Register all objects
Register_Object BuildFileWorkList
Register_Object CloseOpenTypeSize
Register_Object CurrentFileList
Register_Object FieldSortCheckBox
Register_Object Mew32
Register_Object oRelated
Register_Object PrintLog
Register_Object ProcessOverLaps
Register_Object RecurArray
Register_Object RelatedFileListGrid
Register_Object RelatedRpt
Register_Object ReworkListArray
Register_Object WorkSpaceBtn


//AB/ AppBuild VIEW


//AB-StoreTopStart
/oRelatedHdr Resident
   __________________
--------------------------------------|---------------------------------------------|-----------------------------------------|---------------------------------------------|-------------------------------------------|--------------------------------------------|--------------------------------------------|
   Data      :______________________________________________________________   User    :___________________________________
   File List :______________________________________________________________   Machine :__________________

 File-Feld Child File Field           Type    File-Feld Parent File Field           Type    File-Feld Child File Field         Type     File-Feld Child File Field          Type    File-Feld Child File Field           Type    File-Feld Child File Field           Type   File-Feld Child File Field
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/oRelatedBody Resident
 __0.-_0.  ________________________  ___ _0.  __0.-_0.  ________________________  ___ _0.  __0.-_0.  ________________________  ___ _0.  _0_.-_0.  ________________________  ___ _0.  _0_.-_0.  ________________________  ___ _0.  _0_.-_0.  ________________________  ___ _0.  _0_.-_0.  ________________________
/oRelatedHdrCSV Resident
/oRelatedBodyCSV Resident
/oRelatedFooter Resident
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*

#IFDEF Win32_WNetGetUser
#ELSE
External_Function Win32_WNetGetUser "WNetGetUserA" MPR.dll ;
   Pointer lpName;
   Pointer lpUserName;
   String  lpnLength;
   Returns DWord
#ENDIF

#IFDEF Win32_GetComputername
#ELSE
External_Function Win32_GetComputername "GetComputerNameA" kernel32.dll ;
      Pointer  sBuffer ;
      Pointer  lSize   ;
      Returns Integer //Boolean

Type __vsdwSizeGetComputerName
    Field dwSize as dWord
End_Type
#ENDIF

Function GetComputerNameFunc  Returns String
    Local String  strName
    Local Pointer lpNameAddr
    Local Integer iResult
    Local Pointer lpSize
    Local String  lsSize
    Move (Repeat(Character(0),255)) To strName
    GetAddress Of strName To lpNameAddr
    Move (Repeat( Character(0), __vsdwSizeGetComputerName_SIZE )) To lsSize
    Put 16 To lsSize at dwSize
    GetAddress Of lsSize To lpSize
    Move (Win32_GetComputername(lpNameAddr, lpSize )) To iResult
    If iresult ;
       Function_Return (cstring(strName))
    Else ;
       Function_Return "Unknown"
End_Function // vsWin32_GetComputerName

Function WNetGetUserFunc  Returns String
  Local String strName
  Local Pointer lpNameAddr
  Local Integer iResult
  Move (Repeat(Character(0),255)) To strName
  GetAddress Of strName To lpNameAddr
  Move (Win32_WNetGetUser(0, lpNameAddr, DWORDtoBytes(255))) To iResult
  If iresult Eq 0 ;
      Function_Return (Uppercase(Cstring(strName)))
  Else ;
      Function_Return "Unknown"
End_Function // vsWin32_WNetGetUser

Use Statpnl
Use Wkspcsel
Use Seq_Chnl.Pkg // Package with I/O channel management functions
//AB-StoreTopEnd

//AB-IgnoreStart


//AB-IgnoreEnd

DEFERRED_VIEW Activate_oRelated FOR ;
;
Object oRelated is a dbView

    //AB-StoreTopStart
    Property String psSource        public ""
    Property String psTarget        public ""
    Property String psUserName      public ""
    Property String psComputerName  public ""
    Property Integer piSourceDat  1
    Property Integer piSourceInt  0
    Property Integer piTargetDat  0
    Property Integer piTargetInt  1
    Property Integer piAppendFile 0
    Property Handle  phWinHandel  0
    Property Integer piStopCheckState 0
    Property Integer piPrimaryIndexTrigger 0
    Property Integer piTotalRecWritten     0
    Property Integer piZeroOverWriteTarget     0
    Property Integer piKeepRecId     0
    Property Integer piIntLocation   0
    Property Integer piTypeSize      45

    //Object oFileInformation Is a cAPICalls
    //End_Object // oFileInformation

    Function GetField_Type Integer iDfType  Returns String
        If iDfType eq DF_ASCII   Function_Return "ASC"   //DF_ASCII     0
        If iDfType eq DF_BCD     Function_Return "NUM"   //DF_BCD       1
        If iDfType eq DF_DATE    Function_Return "DAT"   //DF_DATE      2
        If iDfType eq DF_OVERLAP Function_Return "OVE"   //DF_OVERLAP   3
        If iDfType eq DF_TEXT    Function_Return "TEX"   //DF_TEXT      5
        If iDfType eq DF_BINARY  Function_Return "BIN"   //DF_BINARY    6
    End_Function

    //    Move  (XLSDateTime(Self, 2)) to String 0= 21:01:01  1= 01/01/01 2= 01/01/01 00:00:00
    Function XLSDateTime Integer iDateOrTime  Returns String
        Integer iHour  iMin iSec
        String  sTodayDate sYy  sDD  sMm sTime sDateTime
        Date dTodayDate
        Sysdate  dTodayDate iHour  iMin iSec
        Move    "" to sTime
        Move dTodayDate to sTodayDate
        Right sTodayDate  To sYy 2
        Mid   sTodayDate  To sDD 2 4
        Left  sTodayDate  To sMm 2
        Move "" to sTodayDate
        Append sTodayDate sMm "/" sDD "/" sYy

        If iMin Lt 10  Append sTime  iHour ":0" iMin
        Else           Append sTime  iHour ":"  iMin
        If iSec Lt 10  Append sTime  ":0" iSec
        Else           Append sTime  ":"  iSec
        If (iDateOrTime = 0) Move sTime to sDateTime
        If (iDateOrTime = 1) Move sTodayDate to sDateTime
        If (iDateOrTime = 2) Move (sTodayDate * sTime) to sDateTime
        Function_Return sDateTime
    End_Function


    //AB-StoreTopEnd

    Set Label to "Work Space Select View"
    Set Size to 265 523
    Set Location to 6 6

    //AB-DDOStart


    //AB-DDOEnd

    Object WorkSpaceBtn is a Button
        Set Label to "Select WorkSpace"
        Set Default_State to TRUE
        Set Size to 14 67
        Set Location to 4 5
        Set Status_Help to "Select a WorkSpace"

        //AB-StoreStart
        set focus_mode to pointer_only
        Procedure OnClick
            Send ChangeWorkspace   to oRelated
        End_procedure // OnClick

        //AB-StoreEnd

    End_Object    // WorkSpaceBtn

    Object BuildFileWorkList is a Button
        Set Label to "Build File Related File List"
        Set Size to 14 103
        Set Location to 4 74

        //AB-StoreStart
        Procedure OnClick
           Integer iRetval iFileNumber iChOut
           String sLabel sFile_Name  sRelatedRpt
            get Seq_New_Channel to iChOut
            // no channel avaiLabel
            if (iChOut=DF_SEQ_CHANNEL_NOT_AVAILABLE) begin
                send Info_Box "No Channel AvaiLabel for Output" "Error"
                Procedure_return
            end
            Get Value of RelatedRpt to sRelatedRpt
            Direct_Output Channel  iChOut sRelatedRpt
            Move (XLSDateTime(Self,2))      to oRelatedHdr.1
            Output Channel iChOut oRelatedHdr
            Send delete_data to RelatedFileListGrid
            Repeat
              Get_Attribute  DF_FILE_NEXT_USED  of iFileNumber  To iFileNumber
              If iFileNumber eq 48  Get_Attribute  DF_FILE_NEXT_USED  of iFileNumber  To iFileNumber
              If (Not(iFileNumber)) Break
              Get_Attribute Df_File_Logical_Name Of iFileNumber To sFile_Name
              Send Build_Process_List to ReworkListArray iFileNumber //22 //76
              Send  OpenAllFiles
              Send  MoveInfo2Grid  iChOut  sRelatedRpt
              Send  CloseAllFiles
            Loop
            Close_Output Channel iChOut
            send Seq_Release_Channel iChOut

        End_Procedure // OnClick

        Procedure MoveInfo2Grid  Integer iChOut String  sRelatedRpt
            Integer iCol  array_id  iItem iItmCnt  iChild iParent iRecLevel iLevel iLevelMax iFieldTypeChild
            Integer iFieldNativeLengthChild iFieldNativeLengthParent  iFieldTypeParent iGridLevelCnt
            Integer iLoop iField  iRelated_File  iRelated_Field  iItemCountRelatedFileListGrid iFieldNativeLength
            Integer iFieldSortCheckBoxState  iChildLength  iChildOffset
            String  sChild   sParent    sChildField  sParentField  sChild# sParent#  sFieldTypeChild
            String  sFieldTypeParent sNumber2Str  sDriverName
            Move 5 to iCol
            move (ReworkListArray(Self)) to array_id
            get item_count of array_id to iItmCnt
            If (Not(iItmCnt)) Procedure_Return
            Move 0 to iItem
            Move 0 to iLevel
            Move 0 to iLevelMax
            Move 0 to iGridLevelCnt
            Get checked_State of FieldSortCheckBox to iFieldSortCheckBoxState
            If (iItmCnt <> 0) Begin
                repeat
                    Move (Integer_value(Array_id,   iItem    )) to iRecLevel
                    Move (Integer_value(Array_id,  (iItem+1) )) to iChild
                    Move (Integer_value(Array_id,  (iItem+2) )) to iField
                    Move (Integer_value(Array_id,  (iItem+3) )) to iRelated_File
                    Move (Integer_value(Array_id,  (iItem+4) )) to iRelated_Field
                    Get_Attribute Df_File_Logical_Name    Of iChild        To sChild
                    Get_Attribute Df_File_Logical_Name    Of iRelated_File To sParent
                    Get_Attribute DF_FIELD_NAME           of iChild        iField         to sChildField
                    Get_Attribute DF_FIELD_NAME           of iRelated_File iRelated_Field to sParentField

                    Get_Attribute DF_FIELD_TYPE           Of iChild iField to iFieldTypeChild
                    Move  (GetField_Type(Self,iFieldTypeChild ))           to sFieldTypeChild
                    Get_Attribute DF_FILE_DRIVER                                        of iChild to sDriverName
                    If ( sDriverName = "DB2_DRV")  get_attribute DF_FIELD_LENGTH        of iChild iField to iFieldNativeLengthChild
                    Else get_attribute DF_FIELD_NATIVE_LENGTH of iChild iField to iFieldNativeLengthChild

                    get_attribute DF_FIELD_OFFSET of iChild iField to iChildOffset

                    If ( sDriverName = "DB2_DRV")  get_attribute DF_FIELD_LENGTH        of iChild iField to iChildLength
                    Else get_attribute DF_FIELD_NATIVE_LENGTH of iChild iField to iChildLength

                    Move iFieldNativeLengthChild to  sNumber2Str
                    If  (iFieldNativeLengthChild Le  9)                                        insert "00" in sNumber2Str at 1
                    If ((iFieldNativeLengthChild Gt  9) and  (iFieldNativeLengthChild Le 99) ) insert  "0" in sNumber2Str at 1

                    Get_Attribute DF_FIELD_TYPE           Of iRelated_File iRelated_Field to iFieldTypeParent
                    Move  (GetField_Type(Self,iFieldTypeParent ))                        to sFieldTypeParent
                    Get_Attribute DF_FIELD_NATIVE_LENGTH  Of iRelated_File iRelated_Field to iFieldNativeLengthParent
                    Move "[" to  sChild#
                    Append sChild#  iChild "." iField "] "
                    Move "[" to  sParent#
                    Append sParent#  iRelated_File "." iRelated_Field "] "

                    If (iRecLevel Gt iLevelMax) Move  iRecLevel to iLevelMax
                    If ((iLevel =  iRecLevel) or (Not(iFieldSortCheckBoxState))) Begin
                        Calc (iRecLevel * 2) to iGridLevelCnt
                        For iLoop From 1 to 14
                           Send Add_Item of RelatedFileListGrid  iLoop ""
                        Loop
                        BlankForm  oRelatedBody
                        Calc (iRecLevel * 5 )                       to WindowIndex
                        Print iChild                             to oRelatedBody.1&
                        Print iField                             to oRelatedBody.2&
                        Print (sChild  + "." + sChildField)      to oRelatedBody.3&
                        Print sFieldTypeChild                    to oRelatedBody.4&
                        Print iFieldNativeLengthChild            to oRelatedBody.5&
                        Print iRelated_File                      to oRelatedBody.6&
                        Print iRelated_Field                     to oRelatedBody.7&
                        Print (sParent + "." + sParentField)     to oRelatedBody.8&
                        Output Channel iChOut oRelatedBody

                        get item_count of (RelatedFileListGrid(Self)) to iItemCountRelatedFileListGrid //Note this should be the last item + 1
                        Move (iItemCountRelatedFileListGrid - 14) to  iItemCountRelatedFileListGrid
                        set  Value of (RelatedFileListGrid(Self)) item  (iItemCountRelatedFileListGrid + iGridLevelCnt)    to (sChild  + "." + sChildField  )
                        set  Value of (RelatedFileListGrid(Self)) item  (iItemCountRelatedFileListGrid + iGridLevelCnt+1)  to  (sFieldTypeChild + "-" +  sNumber2Str + " ->")
                        set  Value of (RelatedFileListGrid(Self)) item  (iItemCountRelatedFileListGrid + iGridLevelCnt+2)  to (sParent + "." + sParentField )
                    End
                    Add iCol To iItem
                    If (iFieldSortCheckBoxState) If (iItem > (iItmCnt-1)) ;
                        If (iLevel Lt iLevelMax)Begin
                             Add 1 to iLevel
                             Move 0 to iItem
                             End
                until  (iItem > (iItmCnt-1))
            End
            Output Channel iChOut oRelatedFooter
            For iLoop From 1 to 14
               Send Add_Item of RelatedFileListGrid  iLoop ""
            Loop

        End_Procedure

        Procedure Move_Record  Integer iSource Integer iSourceField Integer iTarget Integer iTargetField
            Integer iType
            String  sType sName sStr2Move
            Number nBCD2Move
            Date  dDate2Move

            Get_Attribute DF_FIELD_TYPE    Of iTarget iTargetField to sType
            Get_Attribute DF_FIELD_NAME    Of iTarget iTargetField to sName
            Move sType to iType

            If iType eq DF_ASCII  Get_Field_Value iSource   iSourceField To   sStr2Move
            If iType eq DF_ASCII  Set_Field_Value iTarget   iTargetField To   sStr2Move

            If iType eq DF_BCD    Get_Field_Value iSource   iSourceField To   nBCD2Move
            If iType eq DF_BCD    Set_Field_Value iTarget   iTargetField To   nBCD2Move

            If iType eq DF_DATE   Get_Field_Value iSource   iSourceField To   dDate2Move
            If iType eq DF_DATE   Set_Field_Value iTarget   iTargetField To   dDate2Move

            If iType eq DF_TEXT   Get_Field_Value iSource   iSourceField To   sStr2Move
            If iType eq DF_TEXT   Set_Field_Value iTarget   iTargetField To   sStr2Move

            If iType eq DF_BINARY Get_Field_Value iSource   iSourceField To   sStr2Move
            If iType eq DF_BINARY Set_Field_Value iTarget   iTargetField To   sStr2Move
        End_Procedure

        Procedure CloseAllFiles
            Integer iCol  array_id  iItem iItmCnt  iChild iParent iRecLevel
            String   sChild   sParent
            Move 5 to iCol
            move (ReworkListArray(Self)) to array_id
            get item_count of array_id to iItmCnt
            Move 0 to iItem
            If (iItmCnt <> 0) Begin
            repeat
                Move (Integer_value(Array_id,   iItem    )) to iRecLevel
                Move (Integer_value(Array_id,  (iItem+1) )) to iChild
                Move (Integer_value(Array_id,  (iItem+3) )) to iParent
                If (Not(iItem)) Begin
                    Get_Attribute Df_File_Logical_Name Of iChild  To sChild
                    Get_Attribute Df_File_Logical_Name Of iParent To sParent
                    Close iChild
                    Close iParent
                    End
                If     (iItem)  Begin
                    Get_Attribute Df_File_Logical_Name Of iParent To sParent
                    Close iParent
                    End
                Add iCol To iItem
            until (iItem > (iItmCnt-1))
            End


        End_Procedure


        Procedure OpenAllFiles
            Integer iCol  array_id  iItem iItmCnt  iChild iParent iRecLevel
            String   sChild   sParent
            Move 5 to iCol
            move (ReworkListArray(Self)) to array_id
            get item_count of array_id to iItmCnt
            Move 0 to iItem
            If (iItmCnt <> 0) Begin
            repeat
                Move (Integer_value(Array_id,   iItem    )) to iRecLevel
                Move (Integer_value(Array_id,  (iItem+1) )) to iChild
                Move (Integer_value(Array_id,  (iItem+3) )) to iParent
                If (Not(iItem)) Begin
                    Open iChild
                    Open iParent
                    Get_Attribute Df_File_Logical_Name Of iChild  To sChild
                    Get_Attribute Df_File_Logical_Name Of iParent To sParent
                    End
                If     (iItem)  Begin
                    Open iParent
                    Get_Attribute Df_File_Logical_Name Of iParent To sParent
                    End
                Add iCol To iItem
            until (iItem > (iItmCnt-1))
            End


        End_Procedure










































































































































        //AB-StoreEnd

    End_Object    // BuildFileWorkList

    Object RelatedFileListGrid is a Grid
        Set CurrentRowColor to clYellow
        Set Size to 194 518
        Set Location to 22 1
        Set Highlight_Row_state to TRUE

        Set Line_Width to 14 0

        Set Form_Width    item 0 to 125
        Set Header_Label  item 0 to "Child File Relate to"

        Set Form_Width    item 1 to 45
        Set Header_Label  item 1 to "Type Size"

        Set Form_Width    item 2 to 125
        Set Header_Label  item 2 to "Related From File Relate To"

        Set Form_Width    item 3 to 45
        Set Header_Label  item 3 to "Type Size"

        Set Form_Width    item 4 to 125
        Set Header_Label  item 4 to "Related From File Relate To"

        Set Form_Width    item 5 to 45
        Set Header_Label  item 5 to "Type Size"

        Set Form_Width    item 6 to 125
        Set Header_Label  item 6 to "Related From File Relate To"

        Set Form_Width    item 7 to 45
        Set Header_Label  item 7 to "Type Size"

        Set Form_Width    item 8 to 125
        Set Header_Label  item 8 to "Related From File Relate To"

        Set Form_Width    item 9 to 45
        Set Header_Label  item 9 to "Type Size"

        Set Form_Width    item 10 to 125
        Set Header_Label  item 10 to "Related From File Relate  to"

        Set Form_Width    item 11 to 45
        Set Header_Label  item 11 to "Type Size"

        Set Form_Width    item 12 to 125
        Set Header_Label  item 12 to "Related From File Relate to"

        Set Form_Width    item 13 to 125
        Set Header_Label  item 13 to "Type Size"

    End_Object    // RelatedFileListGrid

    Object ReworkListArray is a Array

        //AB-StoreTopStart
        Property integer  piJumpOver    Public 0
        Property Integer OldErrorId public 0
        Property Integer Error_processing_state public false //  required

        Procedure Error_report Integer iErrNum Integer iErrLine String sErrText
            Local Integer hId datf
            // Always check that we are not already in an error
            If (error_processing_state(current_object)) Procedure_return
            Set error_processing_State to true // we are now within an error
              //: perform custom error handling
            If (iErrNum = 75) Begin
                Set piJumpOver to True
                //  Get OldErrorId to hId
                //  Send Error_report to hId iErrNum iErrLine sErrText
            End
            Set error_processing_State to false // we are no longer within an error
        End_Procedure
        //AB-StoreTopEnd

        Set Location to 1 475

        //AB-StoreStart
        Function OpenFileGetFieldMax Integer iFileNumber Returns Integer
            Integer iFieldMax   iJumpOver
            String sFile_Name
            Get_Attribute Df_File_Logical_Name Of iFileNumber To sFile_Name
            Open iFileNumber
            Get piJumpOver to iJumpOver       // Check for Error
            Set piJumpOver to 0              // Check for Error
            If (iJumpOver) Function_Return 0        // File open Error
            Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFieldMax
            Set piJumpOver to False  //PT
            move 0 to iJumpOver
            Function_Return iFieldMax
        End_Function

        Procedure Build_Process_List Integer iFileNumber
           Integer  iJumpOver  iFieldMax iField  iRelated_File   iRelated_Field iRecnum iRecursionCnt
           Integer  iDF_FIELD_TYPE  hId  iItemCount  icounter iItemCountRec tiItemCountRec  iStartBack
           Integer  iFieldLengthTest  iFieldOffset  iRelatedFieldOffsetTest iProcessOverLaps
           String   sDF_FIELD_NAME  sDriverName  sFile_Name sRelated_File  sRelated_NAME
           Set OldErrorId to Error_object_id        // remember old error object
           Move current_object to Error_object_id   // make self the error object
           Get checked_State of ProcessOverLaps to iProcessOverLaps
           Move 0 to iItemCount
           Move 0 to iRecursionCnt
           Handle   hReworkListArryId  hRecurArrayId
           Move (ReworkListArray(Self))  to hReworkListArryId
           Move (RecurArray(Self))       to hRecurArrayId
           Send delete_data to hReworkListArryId
           Send delete_data to hRecurArrayId
              If iFileNumber eq 48  Procedure_Return
              If iFileNumber Eq 0 Procedure_Return
             Open iFileNumber
             Get piJumpOver to iJumpOver       // Check for Error
             Set piJumpOver to 0              // Check for Error
             If (iJumpOver) Procedure_Return        // File open Error
             Get_Attribute DF_FILE_DRIVER        of iFileNumber to sDriverName
             Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFieldMax
             //Note: Break Begin will return to hear with new File # and Max Fields
             For iField From 1 to iFieldMax
                Move 0 to iStartBack
                Get_Attribute Df_File_Logical_Name Of iFileNumber To sFile_Name
                Get_Attribute DF_FIELD_NAME           of iFileNumber iField to sDF_FIELD_NAME
                Get_Attribute DF_FIELD_TYPE           of iFileNumber iField to iDF_FIELD_TYPE
                Get_Attribute DF_FIELD_Related_File   of iFileNumber iField to iRelated_File
                Get_Attribute DF_FIELD_Related_Field  of iFileNumber iField to iRelated_Field
                If (iRelated_File) Begin
                    get item_count of hReworkListArryId to iItemCount //Note this should be the last item + 1
                    set Array_Value of hReworkListArryId item  iItemCount      to iRecursionCnt
                    set Array_Value of hReworkListArryId item (iItemCount + 1) to iFileNumber
                    set Array_Value of hReworkListArryId item (iItemCount + 2) to iField
                    set Array_Value of hReworkListArryId item (iItemCount + 3) to iRelated_File
                    set Array_Value of hReworkListArryId item (iItemCount + 4) to iRelated_Field
                    Move (iRecursionCnt * 3) to iItemCountRec
                    set Array_Value of hRecurArrayId item  iItemCountRec      to iFileNumber
                    set Array_Value of hRecurArrayId item (iItemCountRec + 1) to iField
                    set Array_Value of hRecurArrayId item (iItemCountRec + 2) to iFieldMax
                    Move (OpenFileGetFieldMax(Self,iRelated_File)) to  iFieldMax
                    Get_Attribute Df_File_Logical_Name Of iRelated_File To sRelated_File
                    Get_Attribute DF_FIELD_NAME        of iRelated_File iRelated_Field to sRelated_NAME

                    If ( iDF_FIELD_TYPE = DF_OVERLAP)Begin
                        If (Not(iProcessOverLaps)) Break
                        get_attribute DF_FIELD_OFFSET of iFileNumber   iField         to iFieldOffset

                        If ( sDriverName = "DB2_DRV")  get_attribute DF_FIELD_LENGTH        of iFileNumber iField to iFieldLengthTest
                        Else  get_attribute DF_FIELD_NATIVE_LENGTH of iFileNumber iField to iFieldLengthTest

                        get_attribute DF_FIELD_OFFSET of iRelated_File iRelated_Field to iRelatedFieldOffsetTest
                        Send  Process_OverLaps  iRecursionCnt iFileNumber   iFieldOffset   iRelated_File iRelatedFieldOffsetTest iFieldLengthTest
                        End

                    Add 1 to iRecursionCnt
                     If (iFieldMax)  Begin
                        Move iRelated_File to  iFileNumber
                        Move 0             to  iField
                        End
                    Else Begin
                        Send Info_Box ("Error Open "  * iFileNumber)
                        Procedure_Return
                        End
                End
                If (iField = iFieldMax) Begin
                    If (iRecursionCnt) Begin
                        Sub 1 From iRecursionCnt
                        Move (iRecursionCnt * 3) to iItemCountRec
                        get Array_Value of hRecurArrayId item  iItemCountRec      to iFileNumber
                        get Array_Value of hRecurArrayId item (iItemCountRec + 1) to iField
                        get Array_Value of hRecurArrayId item (iItemCountRec + 2) to iFieldMax
                        If ((iRecursionCnt) and (iField = iFieldMax)) Break Begin
                        Move 1 to iStartBack
                        End
                    End
                If ((iRelated_File) or (iStartBack) ) Break Begin
             Loop // For iField
            Send delete_data to hRecurArrayId
            Close iFileNumber
            Set piJumpOver to False  //PT
            move 0 to iJumpOver

           Get OldErrorId to hId
           Move hId to Error_object_id
        End_Procedure //Build_Process_List




        Procedure Process_OverLaps Integer iRecursionCnt Integer iFileNumber   Integer  iFieldOffsetTest ;
                                                         Integer iRelated_File Integer  iRelatedFieldOffsetTest ;
                                                         Integer  iFieldLengthTest
           Integer  iJumpOver  iFieldMax iField     iRelated_Field iRecnum   iRelatedFieldMax
           Integer  iDF_FIELD_TYPE  hId  iItemCount  icounter iItemCountRec tiItemCountRec  iStartBack
           Integer  iFieldLength  iFieldOffset iRelatedFieldLength iRelatedFieldOffset iTotalLength
           String   sDF_FIELD_NAME  sDriverName  sFile_Name sRelated_File  sRelated_NAME
           Handle   hReworkListArryId  hRecurArrayId
           Move (ReworkListArray(Self))  to hReworkListArryId
                 Get_Attribute DF_FILE_DRIVER        of iFileNumber to sDriverName
                 Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFieldMax
                 Get_Attribute DF_FILE_NUMBER_FIELDS of iRelated_File to iRelatedFieldMax
                 //Note: Break Begin will return to hear with new File # and Max Fields
                 Move 0 to iRelated_Field
                 Move 0 to iTotalLength

                 For iField From 1 to iFieldMax
                    Get_Attribute DF_FIELD_NAME           of iFileNumber iField to sDF_FIELD_NAME
                    Get_Attribute DF_FIELD_TYPE           of iFileNumber iField to iDF_FIELD_TYPE
                    If ( iDF_FIELD_TYPE <> DF_OVERLAP) Begin
                        Get_Attribute Df_File_Logical_Name Of iFileNumber To sFile_Name
                        get_attribute DF_FIELD_OFFSET of iFileNumber iField to iFieldOffset

                        If ( sDriverName = "DB2_DRV")  get_attribute DF_FIELD_LENGTH        of iFileNumber iField to iFieldLength
                        Else get_attribute DF_FIELD_NATIVE_LENGTH of iFileNumber iField to iFieldLength

                        If  (iFieldOffset = iFieldOffsetTest) Begin
                             Repeat
                                Add 1 to iRelated_Field
                                Get_Attribute DF_FIELD_NAME           of iRelated_File iRelated_Field to sDF_FIELD_NAME
                                Get_Attribute DF_FIELD_TYPE           of iRelated_File iRelated_Field to iDF_FIELD_TYPE
                                If ( iDF_FIELD_TYPE <> DF_OVERLAP) Begin
                                    Get_Attribute Df_File_Logical_Name Of iRelated_File To sFile_Name
                                    get_attribute DF_FIELD_OFFSET of iRelated_File iRelated_Field to iRelatedFieldOffset
                                    If ( sDriverName = "DB2_DRV")  get_attribute DF_FIELD_LENGTH        of iRelated_File iRelated_Field to iRelatedFieldLength
                                    Else get_attribute DF_FIELD_NATIVE_LENGTH of iRelated_File iRelated_Field to iRelatedFieldLength
                                    If  (iRelatedFieldOffset Ge iRelatedFieldOffsetTest) Begin
                                        get item_count of hReworkListArryId to iItemCount //Note this should be the last item + 1
                                        set Array_Value of hReworkListArryId item  iItemCount      to iRecursionCnt
                                        set Array_Value of hReworkListArryId item (iItemCount + 1) to iFileNumber
                                        set Array_Value of hReworkListArryId item (iItemCount + 2) to iField

                                        set Array_Value of hReworkListArryId item (iItemCount + 3) to iRelated_File
                                        set Array_Value of hReworkListArryId item (iItemCount + 4) to iRelated_Field
                                        Add iRelatedFieldLength to iTotalLength
                                        Add 1 to iField
                                    End
                                End
                             If (iTotalLength Ge iFieldLengthTest)  Procedure_Return
                             Until (iRelated_Field = iRelatedFieldMax)
                         End
                    End
                 Loop // For iField
        End_Procedure //Process_OverLaps


        Procedure Build_ReworkList
           Integer  iFileNumber  iJumpOver  iFieldMax iField  iRelated_File   iRelated_Field iRecnum
           Integer  iDF_FIELD_TYPE  hId iItemCount  icounter
           String   sDF_FIELD_NAME  sDriverName  sFile_Name
           Handle   hReworkListArryId

           Move 0 to iFileNumber
           Move (ReworkListArray(Self))  to hReworkListArryId
           Set OldErrorId to Error_object_id        // remember old error object
           Move current_object to Error_object_id   // make self the error object
           Move 0 to iItemCount

           Repeat
              Get_Attribute  DF_FILE_NEXT_USED  of iFileNumber  To iFileNumber
              If iFileNumber eq 48  Get_Attribute  DF_FILE_NEXT_USED  of iFileNumber  To iFileNumber
              If iFileNumber Eq 0 Break
              If iFileNumber Gt 0 Begin
                 Get_Attribute Df_File_Logical_Name Of iFileNumber To sFile_Name
                 Open iFileNumber
                 Get piJumpOver to iJumpOver       // Check for Error
                 Set piJumpOver to 0              // Check for Error
                 If (iJumpOver) Break        // File open Error
                 Get_Attribute DF_FILE_DRIVER        of iFileNumber to sDriverName
                 Get_Attribute DF_FILE_NUMBER_FIELDS of iFileNumber to iFieldMax
                 For iField From 1 to iFieldMax
                    Get_Attribute DF_FIELD_NAME           of iFileNumber iField to sDF_FIELD_NAME
                    Get_Attribute DF_FIELD_TYPE           of iFileNumber iField to iDF_FIELD_TYPE
                    Get_Attribute DF_FIELD_Related_File   of iFileNumber iField to iRelated_File
                    Get_Attribute DF_FIELD_Related_Field  of iFileNumber iField to iRelated_Field
                    If (iRelated_File) Begin
                        get item_count of hReworkListArryId to iItemCount
                        set array_value of hReworkListArryId item iItemCount to ("C"*(String(iFileNumber))  * "," *   (String(iField)) * "P" *  ;
                                                                                (String(iRelated_File)) * "," * (String(iRelated_Field)) )
                        get item_count of hReworkListArryId to icounter
                        End
                 Loop // For iField
                Close iFileNumber
                Set piJumpOver to False  //PT
                move 0 to iJumpOver
              End  //If iFileNumber gt 0
           Loop

           Get OldErrorId to hId
           Move hId to Error_object_id
        End_Procedure //Build_ReworkList


























































        //AB-StoreEnd

    End_Object    // ReworkListArray

    Object RecurArray is a Array
        Set Location to 0 497
    End_Object    // RecurArray

    Object Mew32 is a Form
        Set Size to 13 160
        Set Location to 217 355

        //AB-StoreStart
        Procedure OnChange
            String sMew32Loc
            Integer  iChInOut
            get Seq_New_Channel to iChInOut
            // no channel avaiLabel
            if (iChInOut=DF_SEQ_CHANNEL_NOT_AVAILABLE) begin
                send Info_Box "No Channel AvaiLabel for Output" "Error"
                Procedure_return
                end
            Direct_Output Channel  iChInOut "C:\CodeCrank.Cfg"
            Get Value of (Mew32(Self)) to sMew32Loc
            WriteLn Channel  iChInOut sMew32Loc
            Close_Output Channel  iChInOut
            send Seq_Release_Channel iChInOut
        End_Procedure


        //AB-StoreEnd

    End_Object    // Mew32

    Object RelatedRpt is a Form
        Set Label to "RelatedRpt.Txt"
        Set Size to 13 160
        Set Location to 236 355
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
    End_Object    // RelatedRpt

    Object PrintLog is a Button
        Set Label to "Print Related Report With"
        Set Size to 14 93
        Set Location to 216 257

        //AB-StoreStart
        set focus_mode to pointer_only
        Procedure OnClick
            String sRelatedRpt    sMew32    sFullReportStr sReportCsv sTarget
            integer iFileExists
            Get Value of RelatedRpt to sRelatedRpt
            Get Value of Mew32     to sMew32
            Move (sTarget + "\MoveLogHist") to sReportCsv
            Move (Trim(sRelatedRpt))       to sFullReportStr
            Get get_file_exists (Trim(sMew32)) to  iFileExists
            If (iFileExists)   Runprogram Wait ((Trim(sMew32)) * sFullReportStr )
            Else               Runprogram Wait ("NotePad" * (Trim(sRelatedRpt)) )
        End_Procedure // OnClick

























































        //AB-StoreEnd

    End_Object    // PrintLog

    Object FieldSortCheckBox is a CheckBox
        Set Label to "Sort by Build  Order"
        Set Size to 10 77
        Set Location to 0 191

        //AB-StoreStart
        Procedure onChange
            integer iState
            Get checked_State to iState
            If iState Set Label to "Sort by Child to Parent"
            Else      Set Label to "Sort by Build  Order"
        End_Procedure


        //AB-StoreEnd

    End_Object    // FieldSortCheckBox

    Object CloseOpenTypeSize is a Button
        Set Label to "Close Type Size"
        Set Size to 14 87
        Set Location to 3 311

        //AB-StoreStart
        set focus_mode to pointer_only
        Procedure OnClick
           Integer iLoop iTypeSize
           Get piTypeSize to iTypeSize
           If  (Not(iTypeSize)) Begin
               Move 45 to iTypeSize
               Set Label to "Close Type Size"
           End
           Else Begin
                Move  0 to iTypeSize
                Set Label to "Open Type Size"
           End

           set visible_state of (RelatedFileListGrid(Self)) to False
           For iLoop From 0 to 13
               if (Mod(iLoop, 2))   Set Form_Width of (RelatedFileListGrid(Self)) item iLoop to iTypeSize
           Loop
           set visible_state of (RelatedFileListGrid(Self)) to True
           Set piTypeSize to iTypeSize
        End_Procedure // OnClick







        //AB-StoreEnd

    End_Object    // CloseOpenTypeSize

    Object ProcessOverLaps is a CheckBox
        Set Label to "Don't Break Down Over Laps"
        Set Size to 10 109
        Set Location to 10 191

        //AB-StoreStart
        Procedure onChange
            integer iState
            Get checked_State to iState
            If iState Set Label to "Break Down Overlaps"
            Else      Set Label to "Don't Break Down Overlaps"
        End_Procedure



        //AB-StoreEnd

    End_Object    // ProcessOverLaps

    Object CurrentFileList is a Form
        Set Label to "Current File List"
        Set Size to 13 182
        Set Location to 215 5
        Set Label_Col_Offset to -235
        Set Label_Justification_Mode to jMode_Right
    End_Object    // CurrentFileList


    //AB-StoreStart
    // - close Conversion View if open
    // - call WorkSpace Manager to change WorkSpaces
    // - reopen Conversion View
    Procedure ChangeWorkspace
    integer iRetVal iViewID iMenuID iWorkSpaceObj
    string sNewWorkSpace

    get Object_ID of Main_Menu to iMenuID
          get Object_ID of (oRelated(Client_Area(Main(Self)))) to iViewID
          get Object_ID of (WorkSpace_Selector(self)) to iWorkSpaceObj  //This was sent to Desktop

    // close view before changing WorkSpace
    if (Active_State(iViewID)) send close_client of iViewID
    //show iWorkspaceObj  //akb
    get Select_Workspace of iWorkSpaceObj to iRetVal
    if (iRetVal=1) begin  // new workspace has been selected
        send CurrentEnv
        send OpenView
        Send delete_data to RelatedFileListGrid
        end
    End_Procedure  // ChangeWorkspace

    // open Convert View
    Procedure OpenView
    Send Activate_oRelated
    //          send PopUp to oFileList02
    End_Procedure  // OpenView

    // - open Files for new WorkSpace
    Procedure CurrentEnv
    string sLabel sWorkSpace  sCurrentWorkSpaceName
    integer iWorkSpaceObj
           get Object_ID of (WorkSpace_Selector(oRelated(self))) to iWorkSpaceObj          //This was sent to Desktop

    get psSelectedWorkspace of iWorkSpaceObj to sWorkSpace
    send DoSetWorkspace of ProgramWorkspace sWorkspace

    Get CurrentWorkSpaceName of (ProgramWorkSpace(Main(Self))) to sCurrentWorkSpaceName
    get CurrentWorkspaceDescription of ProgramWorkspace to sWorkSpace
    append sLabel "WorkSpace - "  sCurrentWorkSpaceName
    set Label of oRelated to sLabel
    //set Label of Main to sLabel
    End_Procedure  // CurrentEnv


    Procedure Activating
       string sLabel sWorkspace sCurrentFileListPath  sCurrentWorkSpaceName sCurrentDataPath sCurrentDDSrcPath
       String sMew32Loc  sReportLog  sSource sTarget sComputerName  sUserName  sFileListName  sCurrentModuleName
       Integer iFileExists   hoFileInformation iChInOut

       Handle hWinHandel
       Get Window_Handle To hWinHandel
       Set phWinHandel of oRelated to hWinHandel
       forward send Activating

       get_attribute DF_FILELIST_NAME to sFileListName

       Get Window_Handle To hWinHandel
       Set phWinHandel to hWinHandel

       Get CurrentFileListPath  of (ProgramWorkSpace(Self)) to sCurrentFileListPath
       Get CurrentWorkSpaceName of (ProgramWorkSpace(Self)) to sCurrentWorkSpaceName
       Get CurrentDataPath      of (ProgramWorkSpace(Self)) to sCurrentDataPath
       Get CurrentDDSrcPath     of (ProgramWorkSpace(Self)) to sCurrentDDSrcPath
       Get CurrentModuleName    of (ProgramWorkSpace(Self)) to sCurrentModuleName
       Set Value of CurrentFileList to sCurrentFileListPath

       get CurrentWorkspaceDescription of ProgramWorkspace to sWorkSpace

       append sLabel "WorkSpace - " sCurrentWorkSpaceName
       set Label of Main to (sLabel * "  Updated 08-30-01 02:42 PM  ELB" )

        Get get_file_exists "C:\CodeCrank.Cfg" to iFileExists
        If (iFileExists)  Begin
            get Seq_New_Channel to iChInOut
            // no channel avaiLabel
            if (iChInOut=DF_SEQ_CHANNEL_NOT_AVAILABLE) begin
                send Info_Box "No Channel AvaiLabel for Output" "Error"
                Procedure_return
                end
            //send Seq_Release_Channel iChInOut
            Direct_Input Channel  iChInOut "C:\CodeCrank.Cfg"
            Readln       Channel  iChInOut sMew32Loc
            Set Value   of Mew32 to (Trim(sMew32Loc))
            Close_Input Channel   iChInOut
            send Seq_Release_Channel iChInOut
        End
        Else  Begin
           Set Value of Mew32 to "C:\Mew\Mew32.exe"
           Send OnChange to Mew32
           End

         Get WNetGetUserFunc     to sUserName
         Get GetComputerNameFunc to sComputerName
         Set psUserName     to sUserName
         Set psComputerName to sComputerName
         //Showln " sComputerName " sComputerName " sUserName " sUserName
         Set Label to (sUserName * "Logon From" * sComputerName)
         Set Value of RelatedRpt to ("C:\RelatedRpt_" + sComputerName + ".Txt")
         Move  sCurrentDataPath          to oRelatedHdr.2
         Move  sCurrentFileListPath      to oRelatedHdr.4
         Move  sUserName          to oRelatedHdr.3
         Move  sComputerName      to oRelatedHdr.5

    //   direct_input channel 9 "C:\LastSourceTarget.Cfg"
    //   [not seqeof] Begin
    //       If  (Not(Seqeof))  ReadLn  sSource
    //       If  (Not(Seqeof))  ReadLn  sTarget
    //       Set Value of Source to sSource
    //       Set Value of Target to sTarget
    //   End
    //   Close_input Channel 9

    End_Procedure  // Activating





























    //AB-StoreEnd

CD_End_Object    // oRelated


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
