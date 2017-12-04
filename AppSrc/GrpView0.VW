//AB/ Project GrpView0:Group Access rights per view
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpView0:Group Access rights per view"
//AB/         Set ProjectFileName to "GrpView0.VW"

// Project Object Structure
//   GrpView0 is a dbView
//     Usergrps_DD is a DataDictionary
//     Views_DD is a DataDictionary
//     Grpview0_DD is a DataDictionary
//     Usergrps_Grp_Id is a dbFormSub
//     Usergrps_Grp_Name is a dbFormSub
//     The_Table is a dbGridSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox

// Register all objects
Register_Object GrpView0
Register_Object Grpview0_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object Textbox1
Register_Object Textbox2
Register_Object The_Table
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Id
Register_Object Usergrps_Grp_Name
Register_Object Views_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbGrid.Sub
    Use Txtbox.Sub

    Use USERGRPS.DD
    Use VIEWS.DD
    Use GRPVIEW0.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpView0 FOR GrpView0

    Object GrpView0 is a dbView
        Set Label to "è®Ê©ôò©û é£·õò™ ï®û©´È§ Ä§· Ñß†¢¶ö„ ãú§¶Á"
        Set Size to 261 361
        Set Location to 10 72

        //AB-DDOStart

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Object Views_DD is a Views_DataDictionary
        End_Object    // Views_DD

        Object Grpview0_DD is a Grpview0_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Views_DD(self))
            Set Constrain_File to Usergrps.File_Number
        End_Object    // Grpview0_DD

        Set Main_DD to (Usergrps_DD(self))
        Set Server to (Usergrps_DD(self))

        //AB-DDOEnd

        Object Usergrps_Grp_Id is a dbFormSub
            Entry_Item Usergrps.Grp_id
            Set Size to 13 68
            Set Location to 6 59
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Usergrps_Grp_Id

        Object Usergrps_Grp_Name is a dbFormSub
            Entry_Item Usergrps.Grp_name
            Set Size to 13 246
            Set Location to 23 59
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Usergrps_Grp_Name

        Object The_Table is a dbGridSub
            Set Main_File to Grpview0.File_Number
            Set Server to (Grpview0_DD(self))
            Set Size to 167 346
            Set Location to 49 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Views.View_id
                Entry_Item Views.Menu_name
                Entry_Item Grpviews.Allow_read
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "Ä/Ä ãú§¶Á"
            
            Set Form_Width    item 1 to 265
            Set Header_Label  item 1 to "èú®†ö®ò≠„ ãú§¶Á"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "R"
            Set Column_Checkbox_State  item 2 to True
            

            //AB-StoreStart
            Set CurrentRowColor to 11468799
            Set CurrentCellColor to 11468799
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "R = Ñß†´®‚ßú´ò† Ñ£≠·§†©û / è®Ê©ôò©û ©´û§ Ñß†¢¶ö„ ãú§¶Á"
            Set Auto_Size_State to FALSE
            Set Location to 218 4
            Set Size to 10 213
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "é† Ä¢¢òö‚™ ‚Æ¶¨§ Í£ú©û Ñ≠ò®£¶ö„"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 40 5
            Set Size to 10 245
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "Éú§ ´®¶ß¶†¶Á§´ò† ¶† âú§´®†°‚™ Ñß†¢¶ö‚™ ´¶¨ ãú§¶Á"
            Set Color to clRed
            Set TextColor to clWhite
            Set Location to 232 1
            Set Size to 10 343
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object Textbox1 is a Textbox
            Set Label to "â‡õ†°Ê™ é£·õò™"
            Set Location to 7 2
            Set Size to 10 55
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "é§¶£ò©Âò"
            Set Location to 25 24
            Set Size to 12 33
        End_Object    // Textbox2


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            Integer rVal iGroup iUser
            String sUser
            Forward Get Msg_Activate_View to rVal
            Get fsLoginUserID to sUser
            Clear Users
            Move sUser to Users.Login_ID
            Find eq Users by Index.1 // Users:Index.1:Users.Login_ID
            If (Found=1) Begin
                Move Users.User_ID  to iUser
                Move Users.Grp_ID   to iGroup
            End
            Clear UserGrps
            Move iGroup to UserGrps.Grp_ID
            Find eq UserGrps By Index.1 // UserGrps:Index.1:Grp_ID
            If (Found) Send Find to UserGrps_DD eq 1 // UserGrps:Index.1:Grp_ID
            Procedure_Return rVal
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // GrpView0

//AB/     End_Object    // prj
