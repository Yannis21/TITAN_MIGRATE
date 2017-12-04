//AB/ Project ExportSeries
//AB/ Object prj is a View_Project
    //AB/ Set Size to 255 396
    //AB/ Set ProjectName to "ExportSeries"
    //AB/ Set ProjectFileName to "ExportSeries.vw"
    //AB/ Set GenerateFileName to "NONAME"

// Project Object Structure
//   ExportSeries is a dbView
//     MyExcel is a cExcel9
//     oTextBox1 is a Textbox
//     FileForm is a FormSub
//       New_dialog is a SaveAsdialog
//     oRadioGroup1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//       Radio3 is a RadioSub
//     oButton1 is a Button

// Register all objects
Register_Object ExportSeries
Register_Object FileForm
Register_Object MyExcel
Register_Object New_dialog
Register_Object oButton1
Register_Object oRadioGroup1
Register_Object oTextBox1
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3


//AB-StoreTopStart

Open Ser1
Open Ser2
Open Ser3

//AB-StoreTopEnd

//AB-IgnoreStart
Use dfClient.pkg
Use Windows.pkg
Use Form.Sub
Use Rgroup.Sub
Use Radio.Sub
//AB-IgnoreEnd


ACTIVATE_VIEW Activate_ExportSeries FOR ExportSeries

Object ExportSeries is a dbView

    //AB-StoreTopStart
    
    Property Integer    piWhat          Public 0
    Property String     psPath          Public ''
    Property String     psFile          Public ''
    Property Integer    piCheckFile     Public True
    
    /// „§ ™œ™˜åà©ž ®˜¨˜¡«ž¨˜ š ˜ «˜ quotes £œ©˜ ©«¦¬ª « «¢¦¬ª
    Property String psBeforeQuoteCharacter Public '\'
    Property Number pnTelos 0
    
    //Use Cexcel9v0.3.pkg
    Use msExcel9b
    
    //    Object oExcel is a cComApplication
    //    End_Object
    //    Object oWorkbooks is a cComWorkbooks
    //    End_Object
    //    Object oSheets is a cComSheets
    //    End_Object
    //    Object oSheet is a cComWorksheet
    //    End_Object
    //    Object oRange is a cComRange
    //    End_Object
    //    Object oWorkbook is a cComWorkbook
    //    End_Object
    //    Object oWorkSheet is a cComWorkSheet
    //    End_Object
    
    Object MyExcel is a cExcel9
        procedure End_construct_object
            forward send End_construct_object
            Set pbVisible to True
        end_procedure
    End_Object
    
    Property Handle     jhoExcelApp     public 0
    Property Handle     jhoWorkbooks    public 0
    Property Handle     jhoWorkbook     public 0
    Property Handle     jhoSheets       public 0
    Property Handle     jhoRange        public 0
    Property Boolean    jbVisible       public 0 // by default, make Excel visible like DDE interface
    
    
    //AB-StoreTopEnd

    Set Border_Style to Border_Thick
    Set Label to "Export Series IDs to Excel file"
    Set Location to 7 11
    Set Size to 200 300

    //AB-DDOStart


    //AB-DDOEnd

    Object oTextBox1 is a Textbox
        Set Label to "Give the Excel file Name you wish to save the Series IDs"
        Set Location to 92 31
        Set Size to 10 179
        Set TypeFace to "MS Sans Serif"
    End_Object    // oTextBox1

    Object FileForm is a FormSub

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set Size to 13 234
        Set Location to 103 28
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Function FileName01 Returns String
            String  SelectedFile
            Integer liInt
            Get Value Item 0 To SelectedFile
            Function_return SelectedFile
        End_function // FileName01
        
        Procedure Prompt
            String  SelectedFile Extension Filter
            Integer Type Selected
        
            Get Value Item 0 To SelectedFile
            If SelectedFile Eq "" Begin
                Move '.xls' to Extension
                Move ((psPath(Self))+(psFile(Self))+Extension) To SelectedFile
                Move (trim(SelectedFile)) to SelectedFile
            End
        
            Move "" To Filter
        
            Object New_dialog Is A SaveAsdialog
                String lsPath
                Integer liInt
                Get psPath              to lsPath
                Move (trim(lsPath))     to lsPath
                If (lsPath='') Begin
                    Move 'C:\'   to lsPath
                    Move (fiWriteRegistryLastSDFPath(lsPath)) to liInt
                    Set psPath to lsPath
                End
                Set Dialog_Caption        To "„¥˜šàšã ©œ ˜¨®œå¦ ©«¦ ›å©¡¦, ›é©«œ æ¤¦£˜ ˜¨®œå¦¬."
                Set Overwriteprompt_State To True
                Set Hidereadonly_State    To True
                Set Showfiletitle_State   To True
                Set File_Title            To SelectedFile
                Set Initial_Folder        To lsPath
            End_object // New_dialog
        
            Get Show_Dialog Of (New_dialog(Self)) To Selected
            If Selected Begin
                Get File_Name Of (New_Dialog(Self)) To SelectedFile
                Set Value Item 0 To SelectedFile
            End
        
            Send Request_Destroy_object To (New_dialog(Self))
        End_procedure // Prompt
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FileForm

    Object oRadioGroup1 is a RadioGroupSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 54 143
        Set Location to 28 73
        Object Radio1 is a RadioSub
            Set Label to "Series Master Record IDs    (Ser1 file)"
            Set Size to 10 135
            Set Location to 10 5
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "Series Seasons Record IDs (Ser2 file)"
            Set Size to 10 135
            Set Location to 25 5
        End_Object    // Radio2

        Object Radio3 is a RadioSub
            Set Label to "Series Episode Record IDs  (Ser3 file)"
            Set Size to 10 135
            Set Location to 40 5
        End_Object    // Radio3


        //AB-StoreStart
        
        Procedure Notify_Select_State integer iToItem integer iFromItem
            String  SelectedFile Extension Filter
            Integer Type Selected
        
            Set piWhat to (iToItem+1)
            If      (iToItem+1=1) Set psFile to "SeriesIDFromMasters"
            Else If (iToItem+1=2) Set psFile to "SeriesIDFromSeasons"
            Else If (iToItem+1=2) Set psFile to "SeriesIDFromEpisodes"
        
            If (Trim(psPath(Self))="") Set psPath to "C:\"
        
            Get Value Of FileForm Item 0 To SelectedFile
            If SelectedFile Eq "" Begin
                Move '.xls' to Extension
                Move ((psPath(Self))+(psFile(Self))+Extension) To SelectedFile
                Move (trim(SelectedFile)) to SelectedFile
                Set Value Of FileForm Item 0 To SelectedFile
            End
        
        
        
        End_Procedure
        
        Set Current_Radio to 1
        
        //AB-StoreEnd

    End_Object    // oRadioGroup1

    Object oButton1 is a Button

        //AB-StoreTopStart
        
        
        Procedure SetCellValue Integer aiRow Integer aiCol integer aiType string asValue
            Integer ii iiRows iiCols
            String  sStr1  sStr2  sCell  sVal sStr1N sStr2N
            Handle  hoRange hoApp
            Variant lpRange lpCol lpRow lpValue
        
            Get phoExcelApp Of MyExcel to hoApp
            Get phoRange    Of MyExcel to hoRange
        
            Get CellRef     Of MyExcel aiRow aiCol  to sCell
            Get ComRange    of hoApp sCell sCell    to lpRange
            Set pvComObject of hoRange              to lpRange
            If (aiType=1)  ;
                 Set ComValue2   of hoRange          to (Cast(asValue,Integer))
            Else Set ComValue2   of hoRange          to (Trim(asValue))
        End_Function
        
        Function fsReturnCellValue Integer aiRow Integer aiCol Returns String
            Integer ii iiRows iiCols
            String  sStr1  sStr2  sCell  sVal sStr1N sStr2N
            Handle  hoRange hoApp
            Variant lpRange lpCol lpRow lpValue
        
            Get phoExcelApp Of MyExcel to hoApp
            Get phoRange    Of MyExcel to hoRange
        
            Get CellRef     Of MyExcel aiRow aiCol  to sCell
            Get ComRange    of hoApp sCell sCell    to lpRange
            Set pvComObject of hoRange              to lpRange
            Get ComValue2   of hoRange              to sVal
        
            Function_Return (Trim(sVal))
        
        End_Function
        
        
        
        //AB-StoreTopEnd

        Set Label to "Export Series ID / Create Excel file"
        Set Size to 14 158
        Set Location to 128 65

        //AB-StoreStart
        
        Procedure OnClick
            Boolean bIsCreated
            Variant vWorkbooks vWorkbook vSheets vSheet vRange vLanguage
            Integer iWhat iVal
            String sFileName
        
            Get piWhat to iWhat
        
            Get Value Of FileForm Item 0 to sFileName
            If (Trim(sFileName)="") Begin
                Send Stop_Box "Excel sheet filename not specified, terminating process" "Error 7501"
                Procedure_Return
            End
        
        
            Get InitializeExcel             of MyExcel Nothing      to iVal
            Forward Get Msg_NewSpreadSheet  Of MyExcel              to iVal
            Send NewSpreadSheet             Of MyExcel
            //Get LoadSpreadsheet             of MyExcel sFileName    to iVal
        
        //    Send CreateComObject of oExcel
        //    Get IsComObjectCreated of oExcel to bIsCreated
        //    If (Not(bIsCreated)) Begin
        //        Send Stop_Box "Problem Creating the Excel Objectt" "Error 7500"
        //        Procedure_Return
        //    End
        
        //    Set ComVisible of oExcel to True
        
        //    Get ComWorkbooks of oExcel                  to vWorkbooks
        
        //    Set pvComObject  of oWorkbooks              to vWorkbooks
        
        //    Get ComAdd       of oWorkbooks Nothing      to vWorkbook
        //    Set pvComObject  of oWorkbook               to vWorkbook
        
        //    Get Comsheets    of oWorkbook               to vSheets
        //    Set pvComObject  of oSheets                 to vSheets
        
        //    Get ComItem      of oSheets 1               to vSheet
        //    Set pvComObject  of oSheet                  to vSheet
        
            Integer i1 i2 i3 iRow iCol
            String  s1 s2 s3 sCol sMyCell sTitle
        
            If      (iWhat=1) Move "IDs and Descriptions from Series Master Records (ser1 file)"    to sTitle
            Else If (iWhat=2) Move "IDs and Descriptions from Series Seasons Records (ser2 file)"   to sTitle
            Else If (iWhat=3) Move "IDs and Descriptions from Series Episodes Records (ser3 file)"  to sTitle
        
            Move 2      to iRow
            Move 2      to iCol
            //Move "B"    to sCol
        
            Send SetCellValue Of MyExcel iRow iCol 0 sTitle // 0=string 1=Num
        
        
            // Start Main Loop
            If      (iWhat=2) Begin
                Move 3 to iRow
                Clear Ser2
                Find GE Ser2 By Index.2
                While (Found)
                    //-------
                    //-------
                    // New record = New line = New row number
                    Add   1                     to iRow
                    //-------
                    //-------
                    // Extract the ID in column A
                    Move  1                     to iCol
                    Send SetCellValue Of MyExcel iRow iCol 1 Ser2.Id // 0=string 1=Num
        //            Move "A"                    to sCol
        //            Move (String(iRow)+sCol)    to sMyCell
        //            Get ComRange     of oSheet sMyCell Nothing  to vRange
        //            Set pvComObject  of oRange                  to vRange
        //            Set ComValue2    of oRange                  to Ser2.Id
                    //-------
                    //-------
                    // Extract the Description in column B
                    Move  2                     to iCol
                    Send SetCellValue Of MyExcel iRow iCol 0 (Trim(Ser2.Name)) // 0=string 1=Num
        //            Move "B"                    to sCol
        //            Move (String(iRow)+sCol)    to sMyCell
        //            Get ComRange     of oSheet sMyCell Nothing  to vRange
        //            Set pvComObject  of oRange                  to vRange
        //            Set ComValue2    of oRange                  to (Trim(Ser2.Name))
                    //-------
                    //-------
                    Find GT Ser2 By Index.2
                Loop
            End
            Else If (iWhat=1) Begin
                Move 3 to iRow
                Clear Ser1
                Find GE Ser1 By Index.1
                While (Found)
                    //-------
                    //-------
                    // New record = New line = New row number
                    Add   1                     to iRow
                    //-------
                    //-------
                    // Extract the ID in column A
                    Move  1                     to iCol
                    Send SetCellValue Of MyExcel iRow iCol 1 Ser1.Id // 0=string 1=Num
                    //-------
                    //-------
                    // Extract the Description in column B
                    Move  2                     to iCol
                    Send SetCellValue Of MyExcel iRow iCol 0 (Trim(Ser1.Name)) // 0=string 1=Num
                    //-------
                    //-------
                    Find GT Ser1 By Index.1
                Loop
            End
            Else If (iWhat=3) Begin
                Move 3 to iRow
                Clear Ser3
                Find GE Ser3 By Index.3
                While (Found)
                    //-------
                    //-------
                    // New record = New line = New row number
                    Add   1                     to iRow
                    //-------
                    //-------
                    // Extract the ID in column A
                    Move  1                     to iCol
                    Send SetCellValue Of MyExcel iRow iCol 1 Ser3.Id // 0=string 1=Num
                    //-------
                    //-------
                    // Extract the Description in column B
                    Move  2                     to iCol
                    Send SetCellValue Of MyExcel iRow iCol 0 (Trim(Ser3.Name)) // 0=string 1=Num
                    //-------
                    //-------
                    Find GT Ser3 By Index.3
                Loop
            End
        
            String sCell1
            Move (fsReturnCellValue(Self,5,2))  to sCell1
        
            Pause 24 00 ">>>> " (Trim(sCell1)) " <<<<"
        
            //Send SaveSpreadSheetAs  Of MyExcel sFilename OLExlWorkbookNormal
            //Send CloseSpreadsheet   of MyExcel
            //Send DeInitializeExcel  of MyExcel
        
            Send Info_Box "Process Finished, the Excel file is saved" "Information"
        
            //Send DoStartDocument 'OPEN' (Trim(sFileName))
        
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // oButton1


    //AB-StoreStart
    
    //AB-StoreEnd

End_Object    // ExportSeries


//AB-StoreStart



//AB-StoreEnd

//AB/ End_Object    // prj
