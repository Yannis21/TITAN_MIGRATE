//AB/ Project GrpPedia
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpPedia"
//AB/         Set ProjectFileName to "GrpPedia.VW"

// Project Object Structure
//   GrpPedia is a dbViewSubS
//     Departm_DD is a DataDictionary
//     Arxeia_DD is a DataDictionary
//     Pedia_DD is a DataDictionary
//     Usergrps_DD is a DataDictionary
//     Users_DD is a DataDictionary
//     Grparx_DD is a DataDictionary
//     Grppedia_DD is a DataDictionary
//     Users_User_Id is a dbForm
//     Users_Login_Id is a dbForm
//     Users_Name is a dbForm
//     The_Table is a dbGrid
//     Usergrps_Grp_Name is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     Grppedia_ is a dbGridSub
//     Departm_Description is a dbFormSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox
//     Textbox5 is a Textbox
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TextBoxSub11 is a TextBoxSub

// Register all objects
Register_Object Arxeia_DD
Register_Object Departm_DD
Register_Object Departm_Description
Register_Object Grparx_DD
Register_Object GrpPedia
Register_Object Grppedia_
Register_Object Grppedia_DD
Register_Object Pedia_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub5
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object The_Table
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Name
Register_Object Users_DD
Register_Object Users_Login_Id
Register_Object Users_Name
Register_Object Users_User_Id


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbGrid.Sub

    Use DEPARTM.DD
    Use ARXEIA.DD
    Use PEDIA.DD
    Use USERGRPS.DD
    Use USERS.DD
    Use GRPARX.DD
    Use GRPPEDIA.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpPedia FOR GrpPedia

    Object GrpPedia is a dbViewSubS
        Set Label to "è®Ê©ôò©û ëú Ä®ÆúÂò °ò† èúõÂò  Ä§·  ï®„©´û"
        Set Size to 292 473
        Set Location to 2 3

        //AB-DDOStart

        Object Departm_DD is a Departm_DataDictionary

            //AB-StoreStart
                    
                    
                    
            //AB-StoreEnd

        End_Object    // Departm_DD

        Object Arxeia_DD is a Arxeia_DataDictionary

            //AB-StoreStart
                    
                    
                    
            //AB-StoreEnd

        End_Object    // Arxeia_DD

        Object Pedia_DD is a Pedia_DataDictionary
            Set DDO_Server to (Arxeia_DD(self))

            //AB-StoreStart
                    
                    
                    
            //AB-StoreEnd

        End_Object    // Pedia_DD

        Object Usergrps_DD is a Usergrps_DataDictionary

            //AB-StoreStart
                    
                    
                    
            //AB-StoreEnd

        End_Object    // Usergrps_DD

        Object Users_DD is a Users_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Departm_DD(self))

            //AB-StoreStart
                    
                    
                    
            //AB-StoreEnd

        End_Object    // Users_DD

        Object Grparx_DD is a Grparx_DataDictionary

            //AB-StoreTopStart
                                                                                
            //AB-StoreTopEnd

            Set DDO_Server to (Users_DD(self))
            Set DDO_Server to (Arxeia_DD(self))
            Set Constrain_File to Users.File_Number

            //AB-StoreStart
                                                                                
                                                                                
            //AB-StoreEnd

        End_Object    // Grparx_DD

        Object Grppedia_DD is a Grppedia_DataDictionary
            Set DDO_Server to (Grparx_DD(self))
            Set DDO_Server to (Pedia_DD(self))
            Set Constrain_File to Grparx.File_Number
        End_Object    // Grppedia_DD

        Set Main_DD to (Users_DD(self))
        Set Server to (Users_DD(self))

        //AB-DDOEnd

        Object Users_User_Id is a dbForm
            Entry_Item Users.User_id
            Set Size to 13 56
            Set Location to 1 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Users_User_Id

        Object Users_Login_Id is a dbForm
            Entry_Item Users.Login_id
            Set Size to 13 362
            Set Location to 15 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set Shadow_State to True
            
            //AB-StoreEnd

        End_Object    // Users_Login_Id

        Object Users_Name is a dbForm
            Entry_Item Users.Name
            Set Size to 13 362
            Set Location to 29 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set Shadow_State to True
            
            //AB-StoreEnd

        End_Object    // Users_Name

        Object The_Table is a dbGrid
            Set Main_File to Grparx.File_Number
            Set Server to (Grparx_DD(self))
            Set Size to 62 451
            Set Location to 86 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Arxeia.Arxeio_name
                Entry_Item Arxeia.Access_name
                Entry_Item Grparx.Allow_read
                Entry_Item Grparx.Allow_change
                Entry_Item Grparx.Allow_create
                Entry_Item Grparx.Allow_delete
            End_Row

            Set Form_Width    item 0 to 102
            Set Header_Label  item 0 to "î¨©†°Ê Ó§¶£ò Ä®ÆúÂ¶¨"
            
            Set Form_Width    item 1 to 278
            Set Header_Label  item 1 to "î†¢†°Ê ß®¶™ ´¶  ï®„©´û Ó§¶£ò"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "R"
            Set Column_Checkbox_State  item 2 to True
            
            Set Form_Width    item 3 to 16
            Set Header_Label  item 3 to "E"
            Set Column_Checkbox_State  item 3 to True
            
            Set Form_Width    item 4 to 16
            Set Header_Label  item 4 to "C"
            Set Column_Checkbox_State  item 4 to True
            
            Set Form_Width    item 5 to 16
            Set Header_Label  item 5 to "D"
            Set Column_Checkbox_State  item 5 to True
            

            //AB-StoreStart
            Set CurrentRowColor to 11468799
            Set CurrentCellColor to 11468799
            
            Function Child_Entering Returns Integer
                Integer rVal iParent
                Forward Get Child_Entering to rVal
                Get Field_Current_Value Of Users_DD Field Users.User_ID to iParent
                If (NOT(iParent)) Begin
                    Send Info_Box "è®‚ßú† è®È´ò §ò Ñß†¢‚•ú´ú ï®„©´û" "è¢û®¶≠¶®Âò"
                    Move 1 to rVal
                End
                Function_Return rVal
            End_Function
            
            Procedure Select_Toggling Integer iInt1 Integer iInt2
                Forward Send Select_Toggling iInt1 iInt2
                If (Should_Save(GrpArx_DD(Self))) Send Request_Save to GRPARX_DD
            End_procedure
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object Usergrps_Grp_Name is a dbFormSub
            Entry_Item Usergrps.Grp_name
            Set Size to 13 362
            Set Location to 44 68
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Usergrps_Grp_Name

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ï®ú†·ùú´ò† Ñßò§ú°°Â§û©û è®¶ö®·££ò´¶™ ö†ò §ò ‚Æ¶¨§ Ñ≠ò®£¶ö„ ¶† Ä¢¢òö‚™"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 76 6
            Set Size to 10 361
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object Grppedia_ is a dbGridSub
            Set Main_File to Grppedia.File_Number
            Set Server to (Grppedia_DD(self))
            Set Size to 90 451
            Set Location to 185 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Pedia.Pedio_name
                Entry_Item Pedia.Pedio_descr
                Entry_Item Grppedia.Allow_read
                Entry_Item Grppedia.Allow_change
                Entry_Item Grppedia.Allow_copy
            End_Row

            Set Form_Width    item 0 to 124
            Set Header_Label  item 0 to "Ó§¶£ò èúõÂ¶¨"
            
            Set Form_Width    item 1 to 271
            Set Header_Label  item 1 to "èú®†ö®ò≠„ èúõÂ¶¨"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "R"
            Set Column_Checkbox_State  item 2 to True
            
            Set Form_Width    item 3 to 16
            Set Header_Label  item 3 to "E"
            Set Column_Checkbox_State  item 3 to True
            
            Set Form_Width    item 4 to 16
            Set Header_Label  item 4 to "P"
            Set Column_Checkbox_State  item 4 to True
            

            //AB-StoreStart
                                                
            Procedure Prompt_CallBack Integer hPrompt
                Integer Arxeio_ID
                Get Field_Current_Value Of Arxeia_DD Field Arxeia.Arxeio_ID to Arxeio_ID
                Set FragmaArxeio Of hPrompt to Arxeio_ID
            End_Procedure
            
            Procedure Select_Toggling Integer iInt1 Integer iInt2
                Forward Send Select_Toggling iInt1 iInt2
                If (Should_Save(GRPPEDIA_DD(Self))) Send Request_Save to GRPPEDIA_DD
            End_procedure
            
            Function Child_Entering Returns Integer
                Integer rVal iParent
                Forward Get Child_Entering to rVal
                Get Field_Current_Value Of GrpArx_DD Field GrpArx.Arxeio_ID to iParent
                If (NOT(iParent)) Begin
                    Send Info_Box "è®‚ßú† è®È´ò §ò Ñß†¢‚•ú´ú Ä®ÆúÂ¶" "è¢û®¶≠¶®Âò"
                    Move 1 to rVal
                End
                Function_Return rVal
            End_Function
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Grppedia_

        Object Departm_Description is a dbFormSub
            Entry_Item Departm.Description
            Set Size to 13 363
            Set Location to 58 68
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Departm_Description

        Object Textbox1 is a Textbox
            Set Label to "Ä/Ä ï®„©´û"
            Set Location to 2 23
            Set Size to 10 43
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "â‡õ†°Ê™ ï®„©´û "
            Set Location to 17 9
            Set Size to 10 56
        End_Object    // Textbox2

        Object Textbox3 is a Textbox
            Set Label to "Ñß‡§¨£Âò ï®„©´û"
            Set Location to 31 3
            Set Size to 10 61
        End_Object    // Textbox3

        Object Textbox4 is a Textbox
            Set Label to "é§¶£ò©Âò é£·õò™"
            Set Location to 45 3
            Set Size to 10 61
        End_Object    // Textbox4

        Object Textbox5 is a Textbox
            Set Label to "í£„£ò"
            Set Location to 58 42
            Set Size to 10 23
        End_Object    // Textbox5

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "R = Ñß†´®‚ßú´ò† É†·ôò©£ò Éúõ¶£‚§‡§ ´¶¨ Ä®ÆúÂ¶¨"
            Set Auto_Size_State to FALSE
            Set Location to 150 7
            Set Size to 10 174
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "C = Ñß†´®‚ßú´ò† å‚ò Ñöö®ò≠„"
            Set Auto_Size_State to FALSE
            Set Location to 161 8
            Set Size to 10 109
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "P = Ñß†´®‚ßú´ò† Ä§´†ö®ò≠„ - Ñß†°Ê¢¢û©û èú®†úÆ¶£‚§‡§ èúõÂ¶¨"
            Set Auto_Size_State to FALSE
            Set Location to 172 8
            Set Size to 10 219
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "E = Ñß†´®‚ßú´ò† É†Ê®ü‡©û Ñöö®ò≠„™"
            Set Auto_Size_State to FALSE
            Set Location to 150 238
            Set Size to 10 154
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub10

        Object TextBoxSub11 is a TextBoxSub
            Set Label to "D = Ñß†´®‚ßú´ò† É†òö®ò≠„ Ñöö®ò≠„™"
            Set Auto_Size_State to FALSE
            Set Location to 162 238
            Set Size to 10 129
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub11


        //AB-StoreStart
        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation
        
        //AB-StoreEnd

    End_Object    // GrpPedia

//AB/     End_Object    // prj
