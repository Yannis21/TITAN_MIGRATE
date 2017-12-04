//AB/ Project GrpTab
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpTab"
//AB/         Set ProjectFileName to "GrpTab.VW"

// Project Object Structure
//   GrpTab is a dbViewSubS
//     Oth_DD is a DataDictionary
//     Tabview_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Departm_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Grptabv_DD is a DataDictionary
//     Users_User_Id is a dbForm
//     Users_Login_Id is a dbForm
//     Users_Name is a dbForm
//     Usergrps_Grp_Name is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     Departm_Description is a dbFormSub
//     TextBoxSub7 is a TextBoxSub
//     Grptabv_ is a dbGridSub
//     FormSub1 is a FormSub

// Register all objects
Register_Object Departm_DD
Register_Object Departm_Description
Register_Object FormSub1
Register_Object GrpTab
Register_Object Grptabv_
Register_Object Grptabv_DD
Register_Object Oth_DD
Register_Object Tabview_DD
Register_Object TextBoxSub5
Register_Object TextBoxSub7
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Name
Register_Object Users_DD
Register_Object Users_Login_Id
Register_Object Users_Name
Register_Object Users_User_Id


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Use Oth.sl
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbGrid.Sub
    Use Form.Sub

    Use OTH.DD
    Use TABVIEW.DD
    Use USERGRPS.DD
    Use DEPARTM.DD
    Use USERS.DD
    Use GRPTABV.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpTab FOR GrpTab

    Object GrpTab is a dbViewSubS

        //AB-StoreTopStart
                    
                    
        Property String psViewActivated Public ""
        
        
        //AB-StoreTopEnd

        Set Label to "User Access per TAB PAGE"
        Set Size to 286 473
        Set Location to 2 7

        //AB-DDOStart

        Object Oth_DD is a Oth_DataDictionary
        End_Object    // Oth_DD

        Object Tabview_DD is a Tabview_DataDictionary

            //AB-StoreTopStart
                                
            //AB-StoreTopEnd

            Set DDO_Server to (Oth_DD(self))

            //AB-StoreStart
                                
            Begin_Constraints
                If (psViewActivated(Self)<>"") Constrain Tabview.View_Name Eq (psViewActivated(Self))
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Tabview_DD

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Object Departm_DD is a Departm_DataDictionary
        End_Object    // Departm_DD

        Object Users_DD is a Users_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Departm_DD(self))
        End_Object    // Users_DD

        Object Grptabv_DD is a Grptabv_DataDictionary
            Set DDO_Server to (Users_DD(self))
            Set DDO_Server to (Tabview_DD(self))
            Set Constrain_File to Users.File_Number

            //AB-StoreStart
                                
            Begin_Constraints
                Constrain GrpTabV Relates to Users
            End_Constraints
            
            //AB-StoreEnd

        End_Object    // Grptabv_DD

        Set Main_DD to (Users_DD(self))
        Set Server to (Users_DD(self))

        //AB-DDOEnd

        Object Users_User_Id is a dbForm
            Entry_Item Users.User_id
            Set Label to "User Code"
            Set Size to 13 56
            Set Location to 4 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Users_User_Id

        Object Users_Login_Id is a dbForm
            Entry_Item Users.Login_id
            Set Label to "User Login ID"
            Set Size to 13 362
            Set Location to 18 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                                                                            
            Set Shadow_State to True
            
            //AB-StoreEnd

        End_Object    // Users_Login_Id

        Object Users_Name is a dbForm
            Entry_Item Users.Name
            Set Label to "User Name"
            Set Size to 13 362
            Set Location to 32 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
                                                                                                            
            Set Shadow_State to True
            
            //AB-StoreEnd

        End_Object    // Users_Name

        Object Usergrps_Grp_Name is a dbFormSub
            Entry_Item Usergrps.Grp_name
            Set Label to "Group Name"
            Set Size to 13 362
            Set Location to 49 68
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Usergrps_Grp_Name

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "User must log off and log on again for the changes to apply"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 80 6
            Set Size to 10 386
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object Departm_Description is a dbFormSub
            Entry_Item Departm.Description
            Set Label to "Department Name"
            Set Size to 13 362
            Set Location to 65 68
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Departm_Description

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "Select a view from the views getting activated Then select the Tab Pages to be hidden for this user"
            Set Location to 100 12
            Set Size to 20 164
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object Grptabv_ is a dbGridSub
            Set Main_File to Grptabv.File_Number
            Set Server to (Grptabv_DD(self))
            Set Size to 111 439
            Set Location to 146 11
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Tabview.Tabview_aa
                Entry_Item Grptabv.View_name
                Entry_Item Grptabv.Tab_label
                Entry_Item Grptabv.Allow
            End_Row

            Set Form_Width    item 0 to 44
            Set Header_Label  item 0 to "a/a"
            
            Set Form_Width    item 1 to 139
            Set Header_Label  item 1 to "View Name"
            
            Set Form_Width    item 2 to 217
            Set Header_Label  item 2 to "Tab Page"
            
            Set Form_Width    item 3 to 31
            Set Header_Label  item 3 to "Allow"
            Set Column_Checkbox_State  item 3 to True
            

            //AB-StoreStart
                        
            Set Column_Option Item 1 to NoEnter True
            Set Column_Option Item 2 to NoEnter True
            
            //AB-StoreEnd

        End_Object    // Grptabv_

        Object FormSub1 is a FormSub

            //AB-StoreTopStart
                                
                                
            //AB-StoreTopEnd

            Set Size to 13 172
            Set Location to 102 198
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                
            Set Prompt_Object to (Oth(Self))
            
            Procedure Key Integer iKey
                If (iKey=277) Begin
                    Set psViewActivated             to ""
                    Send Rebuild_Constraints        to TabView_DD
                    Send Rebuild_Constraints        to GrpTabV_DD
                    Send Beginning_Of_Data          to GrpTabV_
                    Forward Send Key iKey
                End
            End_Procedure
            
            Procedure Prompt
                String sView
                Set Modal_State Of (Oth(Self))  to True
                Forward Send Prompt
                Set Modal_State Of (Oth(Self))  to False
                Get Value Item 0                to sView
                Set psViewActivated             to sView
                Send Rebuild_Constraints        to TabView_DD
                Send Rebuild_Constraints        to GrpTabV_DD
                Send Beginning_Of_Data          to GrpTabV_
            End_Procedure
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // FormSub1


        //AB-StoreStart
                    
        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation
        
        Procedure Request_Clear
            Forward Send Request_Clear
            Set psViewActivated             to ""
            Send Rebuild_Constraints        to TabView_DD
            Send Rebuild_Constraints        to GrpTabV_DD
            Send Beginning_Of_Data          to GrpTabV_
        End_Procedure
        
        Procedure Request_Clear_All
            Forward Send Request_Clear_All
            Set psViewActivated             to ""
            Send Rebuild_Constraints        to TabView_DD
            Send Rebuild_Constraints        to GrpTabV_DD
            Send Beginning_Of_Data          to GrpTabV_
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // GrpTab


    //AB-StoreStart
        
    //AB-StoreEnd

//AB/     End_Object    // prj
