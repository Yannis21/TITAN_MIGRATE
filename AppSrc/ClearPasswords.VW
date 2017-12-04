//AB/ Project ClearPasswords
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "ClearPasswords"
//AB/     Set ProjectFileName to "ClearPasswords.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   ClearPasswords is a dbViewSub
//     TextBoxSub1 is a TextBoxSub
//     frmUserID is a FormSub
//     frmUserName is a FormSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     ButtonSub3 is a ButtonSub
//     TextBoxSub2 is a TextBoxSub
//     frmNewDate is a cSyDateForm
//     ButtonSub4 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object ClearPasswords
Register_Object frmNewDate
Register_Object frmUserID
Register_Object frmUserName
Register_Object TextBoxSub1
Register_Object TextBoxSub2


//AB/ AppBuild VIEW


//AB-StoreTopStart
        
Open Sysrec
Open Users
Open Departm
Open Usergrps

Open UsersH

Use slUsers.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Txtbox.Sub
Use Form.Sub
Use Button.Sub
Use cSyDateForm.Pkg

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_ClearPasswords FOR ClearPasswords

Object ClearPasswords is a dbViewSub

    //AB-StoreTopStart
                                        
    //AB-StoreTopEnd

    Set Label to "ãûõú§†©£Ê™ °‡õ†°‡§ ú†©Êõ¶¨ Æ®û©´È§"
    Set Size to 169 275
    Set Location to 6 7

    //AB-DDOStart


    //AB-DDOEnd

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ñß‚¢•ú ï®„©´û"
        Set Location to 13 11
        Set Size to 10 53
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object frmUserID is a FormSub

        //AB-StoreTopStart
                
        //AB-StoreTopEnd

        Set Size to 13 79
        Set Location to 12 67
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        Set Prompt_Object to (slUsers(Self))
        
        Procedure Prompt_CallBack Integer iPromptID
            Set Initial_Column  Of iPromptID to 3
            Set Export_Column   Of iPromptID to 3
        End_Procedure
        
        Procedure OnChange
            String sID sName
            Get Value Item 0 to sID
            Clear Users
            Move sID to Users.Login_ID
            Find Eq Users By Index.1
            Set Value Of frmUserName Item 0 to (Trim(Users.name))
        
        End_Procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // frmUserID

    Object frmUserName is a FormSub
        Set Size to 13 183
        Set Location to 26 67
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // frmUserName

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ãûõú§†©£Ê™ °‡õ†°È§ éäóå ´‡§ Æ®û©´È§"
        Set Size to 12 180
        Set Location to 84 45
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            Integer iYesNo iOK
            Date    dHmnia
            Sysdate dHmnia
            Sub 1 from dHmnia
            Get YesNo_Box "ÑÂ©´ú òßÊ¢¨´ò ©Âö¶¨®¶™(û) ¶´† ü‚¢ú´ú §ò £ûõú§Â©ú´ú éäéìë ´¶¨™ °‡õ†°¶Á™ éäóå ´‡§ Æ®û©´È§ ;" "** èêéëéïÜ **" to iYesNo
            If (iYesNo=MBR_NO) Procedure_Return
        
            Get YesNo_Box "ÑÂ©´ú ÑåíÑäóë °ò† ÄèéäìíÄ ©Âö¶¨®¶™(û) ¶´† ü‚¢ú´ú §ò £ûõú§Â©ú´ú éäéìë ´¶¨™ °‡õ†°¶Á™ éäóå ´‡§ Æ®û©´È§ ;" "** èêéëéïÜ **" to iYesNo
            If (iYesNo=MBR_NO) Procedure_Return
        
            Clear Users
            Find GE Users.Recnum
            While (Found)
                Set Label Of ButtonSub3 to (Trim(Users.Login_ID)+"  "+Trim(Users.Name))
                Reread Users
                Move ""     to Users.Password
                Move ""     to Users.Last_Login_Date
                Move ""     to Users.Last_Login_Time
                Move ""     to Users.Last_Password
                Move ""     to Users.Last_Change
                Move ""     to Users.Anenergos
                Move ""     to Users.Block_Until_D
                Move ""     to Users.Block_Until_T
                Move dHmnia to Users.Next_Change
                Saverecord Users
                Unlock
                Find GT Users.Recnum
            Loop
        
            Clear UsersH
            Find GE UsersH.Recnum
            While (Found)
                Delete UsersH
                Find GT UsersH.Recnum
            Loop
        
            Reread Sysrec
            Move  1 to Sysrec.LIBCAST_CODE
            Move  1 to Sysrec.AWARD_CODE
            Move  1 to Sysrec.GIVAWRD_CODE
            Move  1 to Sysrec.MOVIE_LNK_CODE
            Move  1 to Sysrec.CAST_LNK_CODE
            Move  1 to Sysrec.AWARDTP_CODE
            Move  1 to Sysrec.FESTIVAL_CODE
            Move  0 to Sysrec.STWHAT_CODE
            Move  1 to Sysrec.SNWHAT_CODE
            Move 90 to Sysrec.LIBVIS_CODE
            Move  3 to Sysrec.TIKANEI_CODE
            Saverecord Sysrec
            Unlock
            Reread Sysrec
            Unlock
        
            Set Value Of frmNewDate Item 0 to ""
            Set Value Of frmUserID  Item 0 to ""
        
            Set Label Of ButtonSub3 to ""
            Send Info_Box "Ó¢¶† ¶† °‡õ†°¶Â Ê¢‡§ ´‡§ Æ®û©´È§ £ûõú§Â©´û°ò§" "è¢û®¶≠¶®Âò"
        End_Procedure // OnClick
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ãûõú§†©£Ê™ °‡õ†°¶Á ö†ò úß†¢úö£‚§¶ Æ®„©´û"
        Set Size to 20 249
        Set Location to 49 11
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            Integer iYesNo iOK
            String  sID sTmp
            Date    dHmnia
            Sysdate dHmnia
            Sub 1 from dHmnia
            Get Value Of frmUserID Item 0 to sID
            Move (Trim(sID)) to sID
            Clear Users
            Move sID to Users.Login_ID
            Find Eq Users By Index.1
            If (Not(Found)) Begin
                Send Stop_Box "Ä§Áßò®°´¶™ ï®„©´û™" "ë≠·¢£ò 1050"
                Procedure_return
            End
            Move ("á‚¢ú´ú §ò £ûõú§Â©ú´ú ´¶§ °‡õ†°Ê ú†©Êõ¶¨ ´¶¨ Æ®„©´û "+Trim(sID)+" - "+Trim(Users.Name)+" ;") to sTmp
            Get YesNo_Box sTmp "** èêéëéïÜ **" to iYesNo
            If (iYesNo=MBR_NO) Procedure_Return
        
            Set Label Of ButtonSub3 to (Trim(Users.Login_ID)+"  "+Trim(Users.Name))
            Reread Users
            Move ""     to Users.Password
            Move ""     to Users.Last_Login_Date
            Move ""     to Users.Last_Login_Time
            Move ""     to Users.Last_Password
            Move ""     to Users.Last_Change
            Move ""     to Users.Anenergos
            Move ""     to Users.Block_Until_D
            Move ""     to Users.Block_Until_T
            Move dHmnia to Users.Next_Change
            Saverecord Users
            Unlock
        
            Clear UsersH
            Move sID to UsersH.Login_ID
            Find GE UsersH By Index.1
            While ((Found) And (UsersH.Login_ID=sID))
                Delete UsersH
                Find GT UsersH By Index.1
            Loop
        
            Reread Sysrec
            Move  1 to Sysrec.LIBCAST_CODE
            Move  1 to Sysrec.AWARD_CODE
            Move  1 to Sysrec.GIVAWRD_CODE
            Move  1 to Sysrec.MOVIE_LNK_CODE
            Move  1 to Sysrec.CAST_LNK_CODE
            Move  1 to Sysrec.AWARDTP_CODE
            Move  1 to Sysrec.FESTIVAL_CODE
            Move  0 to Sysrec.STWHAT_CODE
            Move  1 to Sysrec.SNWHAT_CODE
            Move 90 to Sysrec.LIBVIS_CODE
            Move  3 to Sysrec.TIKANEI_CODE
            Saverecord Sysrec
            Unlock
            Reread Sysrec
            Unlock
        
            Set Value Of frmNewDate Item 0 to ""
            Set Value Of frmUserID  Item 0 to ""
        
            Set Label Of ButtonSub3 to ""
            Send Info_Box "é °‡õ†°Ê™ ´¶¨ Æ®„©´û £ûõú§Â©´û°ú" "è¢û®¶≠¶®Âò"
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object ButtonSub3 is a ButtonSub

        //AB-StoreTopStart
                                                                                    
        //AB-StoreTopEnd

        Set Size to 14 262
        Set Location to 135 4
        Set Border_Style to Border_ClientEdge
        Set Enabled_State to FALSE
        Set Focus_Mode to NonFocusable
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                    
                                                                                    
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "åúò Ü£/§Âò ä„•û™"
        Set Location to 113 11
        Set Size to 12 63
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object frmNewDate is a cSyDateForm
        Set Size to 13 66
        Set Location to 113 81
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd-MMM-yy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmNewDate

    Object ButtonSub4 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ä¢¢òö„ Ü£/§Âò™ ä„•û™"
        Set Size to 14 98
        Set Location to 113 162
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            Integer iYesNo iOK
            String  sID sTmp
            Date    dHmnia
            Get Value Of frmNewDate Item 0 to dHmnia
            Get Value Of frmUserID  Item 0 to sID
            Move (Trim(sID)) to sID
        
            If (dHmnia="") Begin
                Send Stop_Box "Ü û£ú®¶£û§Âò úÂ§ò† °ú§„" "ë≠·¢£ò 1170"
                Procedure_return
            End
        
            If (sID<>"") Begin
                Clear Users
                Move sID to Users.Login_ID
                Find Eq Users By Index.1
                If (Not(Found)) Begin
                    Send Stop_Box "Ä§Áßò®°´¶™ ï®„©´û™" "ë≠·¢£ò 1050"
                    Procedure_return
                End
                Move ("á‚¢ú´ú §ò ò¢¢·•ú´ú ´û§ û£ú®/§Âò ¢„•û™ °‡õ†°¶Á ´¶¨ Æ®„©´û "+Trim(sID)+" - "+Trim(Users.Name)+" ;") to sTmp
                Get YesNo_Box sTmp "** èêéëéïÜ **" to iYesNo
                If (iYesNo=MBR_NO) Procedure_Return
        
                Clear Users
                Move sID to Users.Login_ID
                Find Eq Users By Index.1
                If (Found) Begin
                    Set Label Of ButtonSub3 to (Trim(Users.Login_ID)+"  "+Trim(Users.Name))
                    Reread Users
                    Move dHmnia to Users.Next_Change
                    Saverecord Users
                    Unlock
                End
            End
            Else Begin
                Move ("á‚¢ú´ú §ò ò¢¢·•ú´ú ´û§ û£ú®/§Âò ¢„•û™ °‡õ†°È§ Ê¢‡§ ´‡§ Æ®û©´È§;") to sTmp
                Get YesNo_Box sTmp "** èêéëéïÜ **" to iYesNo
                If (iYesNo=MBR_NO) Procedure_Return
        
                Clear Users
                Find GE Users.Recnum
                While (Found)
                    Set Label Of ButtonSub3 to (Trim(Users.Login_ID)+"  "+Trim(Users.Name))
                    Reread Users
                    Move dHmnia to Users.Next_Change
                    Saverecord Users
                    Unlock
                    Find GT Users.Recnum
                Loop
            End
        
            Set Value Of frmNewDate Item 0 to ""
            Set Value Of frmUserID  Item 0 to ""
        
            Set Label Of ButtonSub3 to ""
            Send Info_Box "Ü ò¢¢òö„ û£ú®/§Âò™ ¢„•û™ ¶¢¶°¢û®Èüû°ú" "è¢û®¶≠¶®Âò"
        End_Procedure // OnClick
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4


    //AB-StoreStart
                                        
    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get MSG_Activate_View to rVal
        Set Value Of frmUserName Item 0 to ""
        Set Value Of frmUserID   Item 0 to ""
        Procedure_Return rVal
    End_Procedure
    
    //AB-StoreEnd

End_Object    // ClearPasswords


//AB-StoreStart
        
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
