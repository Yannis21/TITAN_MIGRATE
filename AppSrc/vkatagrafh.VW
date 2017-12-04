//AB/ Project vkatagrafh:katagrafes allagon
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vkatagrafh:katagrafes allagon"
//AB/     Set ProjectFileName to "vkatagrafh.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vkatagrafh is a dbViewSubs
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//       TextBoxSub1 is a TextBoxSub
//       Radio3 is a RadioSub
//       Radio4 is a RadioSub
//       Radio5 is a RadioSub
//       Radio6 is a RadioSub
//       TextBoxSub2 is a TextBoxSub
//       Frmdateapo is a FormSub
//       Frmdateeos is a FormSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub4 is a TextBoxSub
//       Frmuserid is a FormSub
//       FrmStatus is a FormSub
//       TextBoxSub5 is a TextBoxSub
//       FormSub1 is a FormSub
//       Radio7 is a RadioSub
//       LineControlSub1 is a LineControlSub
//       Radio8 is a RadioSub
//     oOK_bn is a ButtonSub

// Register all objects
Register_Object FormSub1
Register_Object Frmdateapo
Register_Object Frmdateeos
Register_Object FrmStatus
Register_Object Frmuserid
Register_Object LineControlSub1
Register_Object oOK_bn
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object Radio4
Register_Object Radio5
Register_Object Radio6
Register_Object Radio7
Register_Object Radio8
Register_Object RadioGroupSub1
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object vkatagrafh


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use slusers.sl
Open users
use rkatagrafh.rv

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use Rgroup.Sub
Use Radio.Sub
Use Txtbox.Sub
Use Form.Sub
Use Line.Sub
Use Button.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vkatagrafh FOR vkatagrafh

Object vkatagrafh is a dbViewSubs

    //AB-StoreTopStart
    property integer piepil public 0
    //AB-StoreTopEnd

    Set Label to "Ñ°´Áß‡©ú†™ âò´òö®ò≠È§  Ä®ÆúÂ‡§"
    Set Size to 212 300
    Set Location to 2 23

    //AB-DDOStart


    //AB-DDOEnd

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 175 283
        Set Location to 2 3
        Object Radio1 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ èò®ò©´ò´†°È§"
            Set Size to 10 148
            Set Location to 10 5
            Set TextColor to clRed
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ èú¢ò´È§"
            Set Size to 10 129
            Set Location to 20 5
        End_Object    // Radio2

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ü£/§Âò ÄßÊ"
            Set Location to 108 3
            Set Size to 10 41
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object Radio3 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ ìßú¨üÁ§‡§ è¢û®‡£È§"
            Set Size to 10 162
            Set Location to 30 5
            Set TextColor to clRed
        End_Object    // Radio3

        Object Radio4 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ Ñ®ö‡§"
            Set Size to 10 119
            Set Location to 40 5
            Set TextColor to clRed
        End_Object    // Radio4

        Object Radio5 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ éÆû£·´‡§"
            Set Size to 10 137
            Set Location to 51 5
            Set TextColor to clRed
        End_Object    // Radio5

        Object Radio6 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ Ä§´¢†È§"
            Set Size to 10 123
            Set Location to 61 5
            Set TextColor to clRed
        End_Object    // Radio6

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ü£/§Âò ÄßÊ"
            Set Location to 126 3
            Set Size to 10 41
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object Frmdateapo is a FormSub
            Set Size to 13 62
            Set Location to 106 46
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            //AB-StoreEnd

        End_Object    // Frmdateapo

        Object Frmdateeos is a FormSub
            Set Size to 13 62
            Set Location to 124 46
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            //AB-StoreEnd

        End_Object    // Frmdateeos

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "ï®„©´û™"
            Set Location to 140 4
            Set Size to 12 40
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "N=è®¶©ü„°û, D=É†òö®ò≠„, E=ãú´òô¶¢„"
            Set Location to 161 73
            Set Size to 10 143
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object Frmuserid is a FormSub
            Set Size to 13 62
            Set Location to 140 46
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Prompt_Object to (slusers(Current_object))
            Procedure Prompt_Callback integer hPrompt
                set Export_Column of hPrompt to 3
                Set Initial_Column of hPrompt to 3
            end_procedure
            
            procedure onchange
                string suser
                get value item 0 to suser
                move suser to users.login_id
                find eq users by index.1
                if (found);
                    set value of (formsub1(self)) to users.name
                else;
                    set value of (formsub1(self)) to ''
            end_procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // Frmuserid

        Object FrmStatus is a FormSub
            Set Size to 13 23
            Set Location to 158 46
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // FrmStatus

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "Status"
            Set Location to 156 4
            Set Size to 12 27
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object FormSub1 is a FormSub
            Set Size to 13 159
            Set Location to 140 112
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // FormSub1

        Object Radio7 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ ÉÑéè"
            Set Size to 10 103
            Set Location to 73 5
            Set TextColor to clRed
        End_Object    // Radio7

        Object LineControlSub1 is a LineControlSub
            Set Line_Style to lnSINGLE
            Set Line_Thickness to 2
            Set Size to 2 280
            Set Location to 99 1
        End_Object    // LineControlSub1

        Object Radio8 is a RadioSub
            Set Label to "Ñ°´Áß‡©û  Ä®ÆúÂ¶¨ âò´ò§ò¢È©ú‡§"
            Set Size to 10 137
            Set Location to 84 5
            Set TextColor to clRed
        End_Object    // Radio8


        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                            
        Procedure Notify_Select_State integer inewItem integer ioldItem
            local integer licount
            Forward Send Notify_Select_State  iNewItem  iOldItem
            Set piEpil to (iNewItem+1)
        End_Procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub1

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 180 3
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            integer iepil imet
            date ddate dhmnia
            string sstatus suserid
            get value of (frmuserid(radiogroupsub1(self)))  to suserid
            get value of (frmstatus(radiogroupsub1(self)))  to sstatus
            get value of (frmdateapo(radiogroupsub1(self))) to ddate
            get value of (frmdateeos(radiogroupsub1(self))) to dhmnia
            get piepil to iepil
        
            Set pddate      of (rkatagrafh(self)) to ddate
            Set pddateeos   of (rkatagrafh(self)) to dhmnia
            Set psuserid    of (rkatagrafh(self)) to suserid
            Set psstatus    of (rkatagrafh(self)) to sstatus
            Set piepil      of (rkatagrafh(self)) to iepil
        
            Send  Runprom1report to (prom1WQLReport(rkatagrafh(Self)))
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oOK_bn


    //AB-StoreStart
                                    
    Procedure Activate_View Returns Integer
        date dhmnia
        Integer rVal
        Forward Get Msg_Activate_View to rVal
        sysdate4 dhmnia
        set value of (frmdateapo(radiogroupsub1(self))) to dhmnia
        set value of (frmdateeos(radiogroupsub1(self))) to dhmnia
        procedure_return rval
    End_Procedure
    
    
    
    
    //AB-StoreEnd

End_Object    // vkatagrafh


//AB-StoreStart













//AB-StoreEnd

//AB/ End_Object    // prj
