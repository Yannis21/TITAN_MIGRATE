//AB/ Project Calendar
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Calendar"
//AB/     Set ProjectFileName to "Calendar.sl"

// Project Object Structure
//   oCalendar is a dbModalPanel
//     Container3d1 is a Container3d
//       Grid2 is a Grid
//       Textbox2 is a Textbox
//       Textbox3 is a Textbox
//       Textbox4 is a Textbox
//       Textbox5 is a Textbox
//       Textbox6 is a Textbox
//       Textbox7 is a Textbox
//       Textbox8 is a Textbox
//       LineControl1 is a LineControl
//       Container3d2 is a Container3d
//         oRght is a BitmapContainer
//         oLeft is a BitmapContainer
//         oMonth is a Textbox
//           oSelectMonth is a FloatingPopupMenu
//         oYear is a Textbox
//         oSelectYear is a Form
//     BitmapContainer3 is a BitmapContainer
//     oToday is a Textbox

// Register all objects
Register_Object BitmapContainer3
Register_Object Container3d1
Register_Object Container3d2
Register_Object Grid2
Register_Object LineControl1
Register_Object oCalendar
Register_Object oLeft
Register_Object oMonth
Register_Object oRght
Register_Object oSelectMonth
Register_Object oSelectYear
Register_Object oToday
Register_Object oYear
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object Textbox6
Register_Object Textbox7
Register_Object Textbox8



//AB-StoreTopStart
Use dates.utl
#IF LNG_DEFAULT=LNG_DUTCH
 #REPLACE t.calendar.today          "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_SPANISH
 #REPLACE t.calendar.today          "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_ENGLISH
 #REPLACE t.calendar.today          "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_GREEK
 #REPLACE t.calendar.today          "ë„£ú®ò"
#ENDIF
#IF LNG_DEFAULT=LNG_DANISH
 #REPLACE t.calendar.today           "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_SWEDISH
 #REPLACE t.calendar.today           "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_NORWEGIAN   // 22.04.1999 torkild.resheim@emmaedb.no (noen mindre endringer)
 #REPLACE t.calendar.today           "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_GERMAN
 #REPLACE t.calendar.today           "Today"
#ENDIF
#IF LNG_DEFAULT=LNG_PORTUGUESE
 #REPLACE t.calendar.today           "Today"
#ENDIF

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg


//AB-IgnoreEnd

CD_Popup_Object oCalendar is a dbModalPanel

    //AB-StoreTopStart
    on_key kcancel           send cancel
    //AB-StoreTopEnd

    Set Border_Style to Border_Normal
    Set Caption_Bar to FALSE
    Set Label to "ü≠¢†‡Ï, 2001"
    Set Size to 98 123
    Set Location to 10 22
    Set Color to clWhite

    //AB-DDOStart


    //AB-DDOEnd

    Object Container3d1 is a Container3d
        Set Size to 88 135
        Set Location to -2 -1
        Set Color to clWhite
        Set Border_Style to Border_None
        Object Grid2 is a Grid

            //AB-StoreTopStart
            property date    p_current_date     public 0
            property integer p_current_year     public -1
            property integer p_current_month    public -1
            property integer p_selected_day     public -1
            property integer pExportState       public 1
            property integer invoking_object_id public 0
            
            Set Border_Style To BORDER_NONE
            Set header_visible_state To False
            set select_mode to no_select
            Set Gridline_mode To GRID_VISIBLE_NONE
            
            on_key Key_F1 Send Help
            on_key key_ctrl+key_pgup send prev_year
            on_key key_ctrl+key_pgdn send next_year
            on_key          key_pgup send prev_month
            on_key          key_pgdn send next_month
            on_key key_enter         send move_value_out
            on_key key_ctrl+key_d    send go_today
            
            //AB-StoreTopEnd

            Set Color to clWhite
            Set CurrentCellColor to clWhite
            Set CurrentCellTextColor to clWhite
            Set Size to 61 145
            Set Location to 30 1
            Set Resize_Column_state to FALSE

            Set Line_Width to 7 0

            Set Form_Width    item 0 to 18
            Set Header_Label  item 0 to "è≠"
            
            Set Form_Width    item 1 to 18
            Set Header_Label  item 1 to "Ç‚"
            
            Set Form_Width    item 2 to 18
            Set Header_Label  item 2 to "ë‡"
            
            Set Form_Width    item 3 to 18
            Set Header_Label  item 3 to "ó‚"
            
            Set Form_Width    item 4 to 18
            Set Header_Label  item 4 to "è‚"
            
            Set Form_Width    item 5 to 18
            Set Header_Label  item 5 to "ë°"
            
            Set Form_Width    item 6 to 18
            Set Header_Label  item 6 to "Ç·"
            

            //AB-StoreStart
            
            procedure go_today
                Date date#
                sysdate4 date#
                set p_current_date to date#
                Send Update_Calendar
            end_procedure
            
            procedure next_month
                set p_current_date to (DateIncrement(p_current_date(current_object),DS_MONTH,1))
                Send Update_Calendar
            end_procedure
            
            procedure prev_month
                set p_current_date to (DateIncrement(p_current_date(current_object),DS_MONTH,-1))
                Send Update_Calendar
            end_procedure
            
            procedure next_year
                set p_current_date to (DateIncrement(p_current_date(current_object),DS_YEAR,1))
                Send Update_Calendar
            end_procedure
            
            procedure prev_year
                set p_current_date to (DateIncrement(p_current_date(current_object),DS_YEAR,-1))
                Send Update_Calendar
            end_procedure
            
            Procedure Activate
                Date date#
                Forward Send Activate
                Set current_item to (p_selected_day(Self))
            End_Procedure
            
            Procedure Update_Calendar
                Set Dynamic_Update_State To False
                send Fill_List
                Set Dynamic_Update_State To True
                // Send Update_Label
                Set current_item to (p_selected_day(Self))
                Send Date_Changing to (oYear(Container3d2(self)))
                Send Date_Changing to (oMonth(Container3d2(self)))
            End_Procedure
            
            Procedure Fill_List
                Integer iFor prevdate# date# first_item# last_item# day# prev_last# nextdate# next_first#
                Integer cur_year# cur_month# cur_day# sel_month# sel_day# sel_year#
                Date dToday
                Send Delete_Data
            
                Get p_current_date to date#
            
                SysDate4 dToday
                move (DateSegment(dToday,DS_DAY)) to cur_day#
                move (DateSegment(dToday,DS_MONTH)) to cur_month#
                move (DateSegment(dToday,DS_YEAR)) to cur_year#
            
                move (DateSegment(date#,DS_DAY)) to sel_day#
                move (DateSegment(date#,DS_MONTH)) to sel_month#
                move (DateSegment(date#,DS_YEAR)) to sel_year#
                Set p_current_month To sel_month#
                Set p_current_year To sel_year#
            
                move (FirstDayInMonth(date#)) to date#
                move (DateDayNumber(date#)-1) to first_item#
                move (LastDayInMonth(date#)-date#+first_item#) to last_item#
                move (DateIncrement(date#,DS_Month,-1)) To prevdate#
                move (DateSegment((LastDayInMonth(prevdate#)),DS_DAY)) to prev_last#
            
                If (first_item# > 0) Begin
                    Move (first_item#-1) to day#
                    For iFor from 0 to (first_item#-1)
                        Send Add_Item msg_move_value_out (prev_last#-day#)
                        Set Entry_State Item iFor To False
                        Set ItemTextColor Item iFor To clGray
                        Decrement day#
                    Loop
                End
            
                Move 1 To day#
                For iFor from first_item# to last_item#
                    Send Add_Item Msg_Move_Value_Out day#
                    Set Entry_State Item iFor To False
                    If ((cur_month# eq sel_month#)and(cur_year# eq sel_year#)and(Day# eq cur_day#)) Set Form_Bitmap Item iFor To "cdate.bmp"
                    If Day# eq sel_day# Set p_selected_day To iFor
                    Set Form_justification_mode Item iFor To FORM_DISPLAYRIGHT
                    Set form_datatype item iFor To mask_numeric_window
                    Set form_Mask item iFor To "## "
                    Increment day#
                Loop
            
                move (DateIncrement(date#,DS_Month,1)) To nextdate#
                move (DateSegment((LastDayInMonth(nextdate#)),DS_DAY)) to next_first#
            
                If (last_item# < 41) Begin
                    Move 1 to day#
                    For iFor from (last_item#+1) to 41
                        Send Add_Item msg_move_value_out day#
                        Set Entry_State Item iFor To False
                        Set ItemTextColor Item iFor To clGray
                        Increment day#
                    Loop
                End
            
            End_Procedure
            
            Procedure Help
                Send Info_Box ("<Up>, <Dn>, <Lft>, <Rgt> - select date.\n<PgUp>, <PgDn> - select month.\n<Ctrl>+<D> - set current date.\n<Ctrl>+<PgUp>, <PgDn> - Select year.\n\n(c) 2001, SCR. Special thanks to Sture Andersen.") ("Help on Calendar")
            End_Procedure
            
            procedure mouse_click integer window integer char_pos
                Send Move_Value_Out
                forward send mouse_click window char_pos
            end_procedure
            
            Procedure Move_Value_Out
                Integer iYear iMonth iDay iItm
                Date Date# next_date# prev_date#
                Get Current_Item To iItm
                If (pExportState(Self)) Begin
                    Get Value Item iItm To iDay
                    Get p_current_month to iMonth
                    Get p_current_year  to iYear
                    Move (DateCompose(iDay,iMonth,iYear)) To date#
            
                    If ((iItm>27)and(iDay<15)) Begin
                        Move (DateCompose(1,iMonth,iYear)) To next_date#
                        move (DateIncrement(next_date#,DS_Month,1)) To next_date#
                        move (DateSegment(next_date#,DS_MONTH)) to iMonth
                        move (DateSegment(next_date#,DS_YEAR)) to iYear
                        move (DateCompose(iDay,iMonth,iYear)) to date#
                    End
                    If ((iItm<7)and(iDay>20)) Begin
                        Move (DateCompose(1,iMonth,iYear)) To prev_date#
                        move (DateIncrement(prev_date#,DS_Month,-1)) To prev_date#
                        move (DateSegment(prev_date#,DS_MONTH)) to iMonth
                        move (DateSegment(prev_date#,DS_YEAR)) to iYear
                        move (DateCompose(iDay,iMonth,iYear)) to date#
                    End
            
                    Send Export_Date date#
                End
            End_Procedure
            
            Procedure Export_Date date date#
                local integer focus# dm# margin# datatype#
                get invoking_object_id to focus#
            
                if focus# gt desktop begin
                     get delegation_mode of focus# to dm#
                     set delegation_mode of focus# to no_delegate_or_error
                     get form_margin of focus# item current to margin#
                     get form_datatype of focus# item current to datatype#
                     set delegation_mode of focus# to dm#
                     if (margin#>=10 or datatype#=mask_date_window or datatype#=date_window) set value of focus# item current to date#
                     else             set value of focus# item current to (Date4to2(date#))
                     set item_changed_state of focus# item current to true
                end
                Send Close_Calendar
            End_Procedure
            //AB-StoreEnd

        End_Object    // Grid2

        Object Textbox2 is a Textbox
            Set Label to "è≠"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 4
            Set Size to 10 15

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Monday,2))
            //AB-StoreEnd

        End_Object    // Textbox2

        Object Textbox3 is a Textbox
            Set Label to "Ç‚"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 22
            Set Size to 10 12

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Tuesday,2))
            //AB-StoreEnd

        End_Object    // Textbox3

        Object Textbox4 is a Textbox
            Set Label to "ë‡"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 39
            Set Size to 10 15

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Wednesday,2))
            //AB-StoreEnd

        End_Object    // Textbox4

        Object Textbox5 is a Textbox
            Set Label to "ó‚"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 57
            Set Size to 10 17

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Thursday,2))
            //AB-StoreEnd

        End_Object    // Textbox5

        Object Textbox6 is a Textbox
            Set Label to "è‚"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 76
            Set Size to 10 17

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Friday,2))
            //AB-StoreEnd

        End_Object    // Textbox6

        Object Textbox7 is a Textbox
            Set Label to "ë°"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 91
            Set Size to 10 18

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Saturday,2))
            //AB-StoreEnd

        End_Object    // Textbox7

        Object Textbox8 is a Textbox
            Set Label to "Ç·"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Color to clWhite
            Set TextColor to clNavy
            Set Location to 19 109
            Set Size to 10 17

            //AB-StoreStart
                                        
            Set Label To (left(t.calendar.Sunday,2))
            //AB-StoreEnd

        End_Object    // Textbox8

        Object LineControl1 is a LineControl
            Set Line_Style to lnSINGLE
            Set Size to 1 116
            Set Location to 28 4

            //AB-StoreStart
                                        
            //AB-StoreEnd

        End_Object    // LineControl1

        Object Container3d2 is a Container3d
            Set Size to 18 131
            Set Location to 1 1
            Set Color to clNavy
            Set Border_Style to Border_None
            Object oRght is a BitmapContainer
                Set Size to 10 14
                Set Location to 4 105
                Set Bitmap to "rght.bmp"
                Set Border_Style to Border_None

                //AB-StoreStart
                Procedure Mouse_Down
                    Send Next_Month to Grid2
                End_Procedure
                //AB-StoreEnd

            End_Object    // oRght

            Object oLeft is a BitmapContainer
                Set Size to 10 14
                Set Location to 4 3
                Set Bitmap to "lft.bmp"
                Set Border_Style to Border_None

                //AB-StoreStart
                Procedure Mouse_Down
                    Send Prev_Month to Grid2
                End_Procedure
                //AB-StoreEnd

            End_Object    // oLeft

            Object oMonth is a Textbox

                //AB-StoreTopStart
                Property integer piSelected_Month public 0
                //AB-StoreTopEnd

                Set Label to "January"
                Set Auto_Size_State to FALSE
                Set Transparent_State to TRUE
                Set Color to clWhite
                Set TextColor to clWhite
                Set Location to 4 23
                Set Size to 10 43
                Set FontWeight to 800
                Set Justification_Mode to jMode_Center

                //AB-StoreStart
                                    
                Procedure Mouse_Down
                    Integer iState
                    Get Visible_State of oSelectYear to iState
                    If (iState) Send OnKillFocus to oSelectYear
                    Send Popup to oSelectMonth
                End_Procedure
                
                Procedure pSelectJan
                    Set Label to t.calendar.january
                    Set piSelected_Month to 1
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectFeb
                    Set Label to t.calendar.february
                    Set piSelected_Month to 2
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectMar
                    Set Label to t.calendar.march
                    Set piSelected_Month to 3
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectApr
                    Set Label to t.calendar.april
                    Set piSelected_Month to 4
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectMay
                    Set Label to t.calendar.may
                    Set piSelected_Month to 5
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectJun
                    Set Label to t.calendar.june
                    Set piSelected_Month to 6
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectJul
                    Set Label to t.calendar.july
                    Set piSelected_Month to 7
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectAug
                    Set Label to t.calendar.august
                    Set piSelected_Month to 8
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectSep
                    Set Label to t.calendar.september
                    Set piSelected_Month to 9
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectOct
                    Set Label to t.calendar.october
                    Set piSelected_Month to 10
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectNov
                    Set Label to t.calendar.november
                    Set piSelected_Month to 11
                    Send Adjust_Calendar
                End_Procedure
                Procedure pSelectDec
                    Set Label to t.calendar.december
                    Set piSelected_Month to 12
                    Send Adjust_Calendar
                End_Procedure
                
                Object oSelectMonth is a FloatingPopupMenu
                    Send Add_Item msg_pSelectJan t.calendar.january
                    Send Add_Item msg_pSelectFeb t.calendar.february
                    Send Add_Item msg_pSelectMar t.calendar.march
                    Send Add_Item msg_pSelectApr t.calendar.april
                    Send Add_Item msg_pSelectMay t.calendar.may
                    Send Add_Item msg_pSelectJun t.calendar.june
                    Send Add_Item msg_pSelectJul t.calendar.july
                    Send Add_Item msg_pSelectAug t.calendar.august
                    Send Add_Item msg_pSelectSep t.calendar.september
                    Send Add_Item msg_pSelectOct t.calendar.october
                    Send Add_Item msg_pSelectNov t.calendar.november
                    Send Add_Item msg_pSelectDec t.calendar.december
                End_Object
                
                Procedure Adjust_Calendar
                    Date date#
                    Integer iDay iMonth iYear iItm
                    Set Visible_State to false
                    Set Visible_State to true
                    Get Current_Item of (Grid2(Container3D1(Self))) to iItm
                    Get value of (Grid2(Container3D1(Self))) item iItm to iDay
                    Get piSelected_Month to iMonth
                    Get Label of oYear to iYear
                    Move (DateCompose(iDay,iMonth,iYear)) To date#
                    Set p_current_date of (Grid2(Container3D1(Self))) to date#
                    Send Update_Calendar to (Grid2(Container3D1(Self)))
                End_Procedure
                
                Procedure Activating
                    Forward Send Activating
                    Send Date_Changing
                End_Procedure
                
                Procedure Date_Changing
                    Set Visible_State to false
                    Set Label to (MonthName(p_current_Month(Grid2(Container3D1(Self)))))
                    Set piSelected_Month to (p_current_Month(Grid2(Container3D1(Self))))
                    Set Visible_State to true
                End_Procedure
                
                
                //AB-StoreEnd

            End_Object    // oMonth

            Object oYear is a Textbox
                Set Label to "2001"
                Set Transparent_State to TRUE
                Set Color to clWhite
                Set TextColor to clWhite
                Set Location to 4 77
                Set Size to 10 18
                Set FontWeight to 800

                //AB-StoreStart
                                                    
                Procedure Mouse_Down
                    String sVal
                    Get Label to sVal
                    Set Value of oSelectYear item 0 to sVal
                    Set Visible_State of oSelectYear to True
                    Send Activate to (oSelectYear(Self))
                End_Procedure
                
                Procedure Activating
                    Forward Send Activating
                    Send Date_Changing
                End_Procedure
                
                Procedure Date_Changing
                    Set Visible_State to false
                    Set Label to (String(p_current_Year(Grid2(Container3D1(Self)))))
                    Set Visible_State to true
                End_Procedure
                //AB-StoreEnd

            End_Object    // oYear

            Object oSelectYear is a Form

                //AB-StoreTopStart
                Set Visible_State To False
                //AB-StoreTopEnd

                Set Size to 10 24
                Set Location to 4 75
                Set Color to clWhite
                Set TextColor to clNavy
                Set Form_Border Item 0 to Border_Normal

                //AB-StoreStart
                                                    
                On_Key Key_Enter Send OnKillFocus
                On_Key Key_Escape Send OnKillFocus
                
                Procedure SetFontWeight
                    Set Form_FontWeight item 0 to 800
                End_Procedure
                
                Procedure OnKillFocus
                    String sVal
                    Integer iMonth iDay iYear iItm
                    Date date#
                    Get Value item 0 to sVal
                    Set Visible_State of oYear to false
                    Set Label of oYear to sVal
                    Set Visible_State of oYear to true
                    Set Visible_State to false
                    Get Current_Item of (Grid2(Container3D1(Self))) to iItm
                    Get value of (Grid2(Container3D1(Self))) item iItm to iDay
                    Get piSelected_Month of oMonth to iMonth
                    Get Value item 0 to iYear
                    Move (DateCompose(iDay,iMonth,iYear)) To date#
                    Set p_current_date of (Grid2(Container3D1(Self))) to date#
                    Send Update_Calendar to (Grid2(Container3D1(Self)))
                End_Procedure
                
                Send SetFontWeight
                //AB-StoreEnd

            End_Object    // oSelectYear


            //AB-StoreStart
                            
            Procedure Mouse_Down
                Integer iState
                Get Visible_State of oSelectYear to iState
                If (iState) Send OnKillFocus to oSelectYear
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // Container3d2


        //AB-StoreStart
                            
        //AB-StoreEnd

    End_Object    // Container3d1

    Object BitmapContainer3 is a BitmapContainer
        Set Size to 9 19
        Set Location to 88 3
        Set Color to clWhite
        Set Bitmap to "cdate.bmp"
        Set Border_Style to Border_None

        //AB-StoreStart
        Procedure Mouse_Down
            Send go_today to (Grid2(Container3d1(Self)))
            Send Adjust_Label to oToday
        End_Procedure
        //AB-StoreEnd

    End_Object    // BitmapContainer3

    Object oToday is a Textbox
        Set Label to "Today: 01.01.2001"
        Set Auto_Size_State to FALSE
        Set Color to clWhite
        Set Location to 88 22
        Set Size to 8 73
        Set FontWeight to 800

        //AB-StoreStart
        Procedure Mouse_Down
            Send go_today to (Grid2(Container3d1(Self)))
            Send Adjust_Label
        End_Procedure
        
        Procedure Adjust_Label
            date date#
            SysDate4 date#
            Set Visible_State To false
            Set Label         to (t.calendar.today+": "+String(date#))
            Set Visible_State To true
        End_Procedure
        
        Procedure Activating
            Forward Send Activating
            Send Adjust_Label
        End_Procedure
        //AB-StoreEnd

    End_Object    // oToday


    //AB-StoreStart
                
    procedure popup
        local integer focus# icItm iYear iMonth
        local date date#
        move (focus(desktop)) to focus#
        set invoking_object_id of (Grid2(Container3d1(self))) to focus#
        get value of focus# item current to date#
        ifnot (integer(date#)) sysdate date#
        move (Date2to4(date#)) to date#
        set p_current_date of (Grid2(Container3d1(self))) to date#
        send fill_list to (Grid2(Container3d1(self)))
        move (DateSegment(date#,DS_YEAR)) to iYear
        move (DateSegment(date#,DS_MONTH)) to iMonth
        Set Label To (MonthName(iMonth)+', '+String(iYear))
        forward send popup
    end_procedure
    
    Procedure Close_Calendar
        Send Exit
    End_Procedure
    //AB-StoreEnd

CD_End_Object    // oCalendar


//AB-StoreStart
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
