//AB/ Project GrpTab0
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpTab0"
//AB/         Set ProjectFileName to "GrpTab0.VW"

// Project Object Structure
//   GrpTab0 is a dbViewSubS
//     Oth_DD is a DataDictionary
//     Tabview_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Grptabv0_DD is a DataDictionary
//     Usergrps_Grp_Id is a dbFormSub
//     Usergrps_Grp_Name is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     Grptabv0_ is a dbGridSub
//     FormSub1 is a FormSub

// Register all objects
Register_Object FormSub1
Register_Object GrpTab0
Register_Object Grptabv0_
Register_Object Grptabv0_DD
Register_Object Oth_DD
Register_Object Tabview_DD
Register_Object TextBoxSub5
Register_Object TextBoxSub7
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Id
Register_Object Usergrps_Grp_Name


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
    Use GRPTABV0.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpTab0 FOR GrpTab0

    Object GrpTab0 is a dbViewSubS

        //AB-StoreTopStart
                                
                                
        Property String psViewActivated Public ""
        
        
        //AB-StoreTopEnd

        Set Label to "Group of Users Access per TAB PAGE"
        Set Size to 247 473
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

        Object Grptabv0_DD is a Grptabv0_DataDictionary

            //AB-StoreTopStart
                                    
            //AB-StoreTopEnd

            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Tabview_DD(self))
            Set Constrain_File to Usergrps.File_Number

            //AB-StoreStart
                                    
            Begin_Constraints
                Constrain Grptabv0 Relates to Usergrps
            End_Constraints
            
            //AB-StoreEnd

        End_Object    // Grptabv0_DD

        Set Main_DD to (Usergrps_DD(self))
        Set Server to (Usergrps_DD(self))

        //AB-DDOEnd

        Object Usergrps_Grp_Id is a dbFormSub
            Entry_Item Usergrps.Grp_id
            Set Label to "Group ID"
            Set Size to 13 70
            Set Location to 5 45
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Usergrps_Grp_Id

        Object Usergrps_Grp_Name is a dbFormSub
            Entry_Item Usergrps.Grp_name
            Set Label to "Group Name"
            Set Size to 13 241
            Set Location to 5 190
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
            Set Location to 31 5
            Set Size to 10 386
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "Select a view from the views getting activated Then select the Tab Pages to be hidden for this user"
            Set Location to 51 11
            Set Size to 20 164
            Set Justification_Mode to jMode_Left
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object Grptabv0_ is a dbGridSub
            Set Main_File to Grptabv0.File_Number
            Set Server to (Grptabv0_DD(self))
            Set Size to 143 442
            Set Location to 86 10
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Tabview.Tabview_aa
                Entry_Item Grptabv0.View_name
                Entry_Item Grptabv0.Tab_label
                Entry_Item Grptabv0.Allow
            End_Row

            Set Form_Width    item 0 to 40
            Set Header_Label  item 0 to "a/a"
            
            Set Form_Width    item 1 to 139
            Set Header_Label  item 1 to "View Name"
            
            Set Form_Width    item 2 to 223
            Set Header_Label  item 2 to "Tab Page"
            
            Set Form_Width    item 3 to 31
            Set Header_Label  item 3 to "Allow"
            Set Column_Checkbox_State  item 3 to True
            

            //AB-StoreStart
                        
                        
            Set Column_Option Item 1 to NoEnter True
            Set Column_Option Item 2 to NoEnter True
            
            //AB-StoreEnd

        End_Object    // Grptabv0_

        Object FormSub1 is a FormSub

            //AB-StoreTopStart
                                                    
                                                    
            //AB-StoreTopEnd

            Set Size to 13 172
            Set Location to 53 197
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                    
            Set Prompt_Object to (Oth(Self))
            
            Procedure Key Integer iKey
                If (iKey=277) Begin
                    Set psViewActivated             to ""
                    Send Rebuild_Constraints        to TabView_DD
                    Send Rebuild_Constraints        to Grptabv0_DD
                    Send Beginning_Of_Data          to Grptabv0_
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
                Send Rebuild_Constraints        to Grptabv0_DD
                Send Beginning_Of_Data          to Grptabv0_
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
            Send Rebuild_Constraints        to Grptabv0_DD
            Send Beginning_Of_Data          to Grptabv0_
        End_Procedure
        
        Procedure Request_Clear_All
            Forward Send Request_Clear_All
            Set psViewActivated             to ""
            Send Rebuild_Constraints        to TabView_DD
            Send Rebuild_Constraints        to Grptabv0_DD
            Send Beginning_Of_Data          to Grptabv0_
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // GrpTab0


    //AB-StoreStart
            
    //AB-StoreEnd

//AB/     End_Object    // prj
