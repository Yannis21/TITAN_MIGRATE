//AB/ Project vwBanks2
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwBanks2"
//AB/     Set ProjectFileName to "vwBanks2.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vwBanks2 is a dbViewSub
//     Banks_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     Banks_ is a dbGridSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//       Radio3 is a RadioSub
//       Radio4 is a RadioSub
//     rBanks_Report is a CrystalReportSubSQL

// Register all objects
Register_Object Banks_
Register_Object Banks_DD
Register_Object ButtonSub1
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object Radio4
Register_Object RadioGroupSub1
Register_Object rBanks_Report
Register_Object vwBanks2


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use slCodemast.sl
Use slbanks.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Button.Sub
Use dbGrid.Sub
Use Rgroup.Sub
Use Radio.Sub

Use BANKS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwBanks2 FOR vwBanks2

Object vwBanks2 is a dbViewSub

    //AB-StoreTopStart
            
    Property Integer piIndex Public 0
    
    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®†©û í®òßúùÈ§"
    Set Size to 282 504
    Set Location to 2 6

    //AB-DDOStart

    Object Banks_DD is a Banks_DataDictionary

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd


        //AB-StoreStart
                    
                    
                    
        //AB-StoreEnd

    End_Object    // Banks_DD

    Set Main_DD to (Banks_DD(self))
    Set Server to (Banks_DD(self))

    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                            
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Bitmap to "Printer0.bmp"
        Set Size to 33 39
        Set Location to 6 453
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                            
        Set TooltipValue to "Ñ°´Áß‡©û Ñ¢‚öÆ¶¨"
        
        Procedure OnClick
            Send RunReport to (rBanks_Report(Self))
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object Banks_ is a dbGridSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Main_File to Banks.File_Number
        Set Size to 218 485
        Set Location to 42 7
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Banks.Bank_id
            Entry_Item Banks.Bank_name
            Entry_Item Banks.Bank_older_code
            Entry_Item Banks.Bank_older_desc
        End_Row

        Set Form_Width    item 0 to 53
        Set Header_Label  item 0 to "â‡õ. SAP"
        
        Set Form_Width    item 1 to 178
        Set Header_Label  item 1 to "èú®†ö®ò≠„ SAP"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "èò¢. â‡õ."
        
        Set Form_Width    item 3 to 188
        Set Header_Label  item 3 to "èò¢. èú®†ö®ò≠„"
        

        //AB-StoreStart
        
        Set CurrentRowColor     to clYellow
        Set CurrentCellColor    to ClYellow
        
        Procedure Entry_Display Integer iFile Integer iType
            Forward Send Entry_Display iFile iType
            Integer iBase
            Get Base_Item to iBase
            Set ItemColor item (iBase+0)   to 15531755
            Set ItemColor item (iBase+1)   to 15531755
            Set ItemColor item (iBase+2)   to 14148607
            Set ItemColor item (iBase+3)   to 14148607
        End_Procedure // Entry_Display
        
        
        //Set highlight_Row_State to False
        
        //Procedure Entry_Display Integer iFile Integer iType
        //    Local integer iClr iItem iCurRow iCurRec iItems iItemC
        
        //    Get Base_Item   to iItem
        //    Get Item_Limit  to iItems
        
        //    Move ((iItem+iItems)-1) to iItems        // last item in the current row
        //    For iItemC from iItem to iItems           // set all items in row to color
        //        If (iItemC<=1) Set ItemColor item iItemC to 15531755
        //        Else           Set ItemColor item iItemC to 14148607
        //    Loop
        //    Forward Send Entry_Display iFile iType
        //End_Procedure // Entry_Display
        
        //AB-StoreEnd

    End_Object    // Banks_

    Object RadioGroupSub1 is a RadioGroupSub
        Set Label to "íò•†§Ê£†©û ô·©û"
        Set Size to 34 290
        Set Location to 2 7
        Object Radio1 is a RadioSub
            Set Label to "èò¢ò†·™ èú®†ö®ò≠„™"
            Set Size to 10 89
            Set Location to 10 73
            Set Auto_Size_State to FALSE
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "èú®†ö®ò≠„™ SAP"
            Set Size to 10 78
            Set Location to 10 171
            Set Auto_Size_State to FALSE
        End_Object    // Radio2

        Object Radio3 is a RadioSub
            Set Label to "èò¢ò†¶¨ â‡õ†°¶Á"
            Set Size to 10 89
            Set Location to 21 73
            Set Auto_Size_State to FALSE
        End_Object    // Radio3

        Object Radio4 is a RadioSub
            Set Label to "â‡õ†°¶Á SAP"
            Set Size to 10 78
            Set Location to 21 171
            Set Auto_Size_State to FALSE
        End_Object    // Radio4


        //AB-StoreStart
        
        Procedure Notify_Select_State integer iToItem integer iFromItem
            //Set piIndex to iToItem
            If (iToItem=0) Begin
                Set Ordering            Of Banks_DD         to 3
                Set Ordering            Of Banks_           to 3
            End
            Else If (iToItem=1) Begin
                Set Ordering            Of Banks_DD to 4
                Set Ordering            Of Banks_   to 4
            End
            Else If (iToItem=2) Begin
                Set Ordering            Of Banks_DD to 1
                Set Ordering            Of Banks_   to 1
            End
            Else If (iToItem=3) Begin
                Set Ordering            Of Banks_DD to 2
                Set Ordering            Of Banks_   to 2
            End
            Send Beginning_Of_Data Of Banks_ True
        End_Procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub1


    //AB-StoreStart
            
    Object rBanks_Report is a CrystalReportSubSQL
    
        Property Integer ReportReady Public False
    
        Procedure RunReport
            Send Cursor_Wait To (Cursor_Control(Self))
            Set Output_Destination  To PRINT_TO_WINDOW
            Send Run_report
            Send Cursor_Ready To (Cursor_Control(Self))
            If (ReportReady(Self)) ;
                Send Info_box "í¶ ú°´¨ß‡´†°Ê úÂ§ò† ‚´¶†£¶" "è¢û®¶≠¶®Âò"
        End_procedure
    
        Set Report_Name to "rBanks.rpt"
        Set Report_View_id To (Parent(Self))
    
        Set WindowStyle to (WS_VISIBLE ior WS_THICKFRAME ior ;
                            WS_SYSMENU ior WS_MAXIMIZEBOX ior ;
                            WS_MINIMIZEBOX ior WS_MAXIMIZE)
    
        Procedure OnStartPrinting
            String  FileName
            Integer FileType Destination
            If Destination EQ WQL_PRINT_TO_WINDOW ;
                Set ReportReady To False
            Else ;
                Set ReportReady To True
        End_procedure
    
        Procedure OnStopPrinting
            Set ZoomPreviewWindow to PE_ZOOM_FULL_SIZE
        End_procedure
    
    End_Object
    
    
    
    
    //AB-StoreEnd

End_Object    // vwBanks2


//AB-StoreStart
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
