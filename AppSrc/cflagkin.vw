//AB/ Project Cflagkin
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Cflagkin"
//AB/     Set ProjectFileName to "Cflagkin.vw"
//AB/     Set GenerateFileName to "Cflagkin.vw"

// Project Object Structure
//   Cflagkin is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Cflagkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     dbGroupSub3 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub14 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       TextBoxSub16 is a TextBoxSub
//     Container1 is a dbContainer3d
//       TextBoxSub5 is a TextBoxSub
//       Ctypkin_Ctypkin_code is a dbFormSub
//       TextBoxSub6 is a TextBoxSub
//       Ctypkin_Ctypkin_descr is a dbFormSub
//       TextBoxSub7 is a TextBoxSub
//       Ctypkin_Ctypkin_Module is a dbComboFormSub
//       Ctypkin_Max_Days_Sx_Par is a dbFormSub
//       Ctypkin_Check_Overhead is a dbCheckBoxSub
//       Ctypkin_Open_Item is a dbCheckBoxSub
//       Textbox1 is a Textbox
//       Textbox2 is a Textbox
//       Ctypkin_Singular is a dbFormSub
//       Ctypkin_Sub is a dbFormSub
//       Textbox3 is a Textbox
//       Ctypkin_Subreport is a dbCheckBoxSub
//     Cflagkin_ is a dbGridSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Cflagkin
Register_Object Cflagkin_
Register_Object Cflagkin_DD
Register_Object Company_Company_Name
Register_Object Container1
Register_Object Ctypkin_Check_Overhead
Register_Object Ctypkin_Ctypkin_code
Register_Object Ctypkin_Ctypkin_descr
Register_Object Ctypkin_Ctypkin_Module
Register_Object Ctypkin_DD
Register_Object Ctypkin_Max_Days_Sx_Par
Register_Object Ctypkin_Open_Item
Register_Object Ctypkin_Singular
Register_Object Ctypkin_Sub
Register_Object Ctypkin_Subreport
Register_Object dbGroupSub3
Register_Object Syscurxr_DD
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
                        
                        
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbCmbfrm.Sub
Use dbChkbox.Sub
Use dbGrid.Sub

Use CTYPKIN.DD
Use CFLAGKIN.DD
Use SYSCURXR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Cflagkin FOR Cflagkin

Object Cflagkin is a dbViewSubS

    //AB-StoreTopStart
    Property String psModule Public ''
    
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ °ò† èò®·£ú´®¶† â†§„©ú‡§"
    Set Size to 284 468
    Set Location to 2 4

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                                                                                                        
        Set Allow_Foreign_New_Save_State to True
        
        Begin_Constraints
            If (psModule(Self)<>'') Constrain Ctypkin.Ctypkin_Module eq (psModule(Self))
        End_Constraints
        
        
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Cflagkin_DD is a Cflagkin_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set Constrain_File to Ctypkin.File_Number
    End_Object    // Cflagkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Set Main_DD to (Ctypkin_DD(self))
    Set Server to (Ctypkin_DD(self))

    //AB-DDOEnd

    Object dbGroupSub3 is a dbGroupSub
        Set Size to 26 449
        Set Location to -3 9
        Set Visible_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 91
            Set Location to 9 54
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 203
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 380
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub14

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 153
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub15

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 331
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub16

    End_Object    // dbGroupSub3

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 97 451
        Set Location to 5 9
        Object TextBoxSub5 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ âÂ§û©û™"
            Set Location to 9 3
            Set Size to 10 61
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object Ctypkin_Ctypkin_code is a dbFormSub
            Entry_Item Ctypkin.Ctypkin_code
            Set Size to 13 97
            Set Location to 9 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                            
            Procedure Prompt
                Set psModule Of (sl007(Self)) to (psModule(Self))
                Set Modal_State Of (sl007(Self)) to True
                Forward Send prompt
                Set psModule Of (sl007(Self)) to ''
            End_procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Ctypkin_Ctypkin_code

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„"
            Set Location to 25 3
            Set Size to 10 51
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object Ctypkin_Ctypkin_descr is a dbFormSub
            Entry_Item Ctypkin.Ctypkin_descr
            Set Size to 13 366
            Set Location to 25 68
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                
            //Procedure Request_Clear
            //    Forward Send Request_Clear
            //    Send Activate to (Ctypkin_Ctypkin_Code(Container1(Self)))
            //End_procedure
            //
            //Procedure Request_Clear_All
            //    Forward Send Request_Clear_All
            //    Send Activate to (Ctypkin_Ctypkin_Code(Container1(Self)))
            //End_procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Ctypkin_Ctypkin_descr

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "âÁ°¢‡£ò"
            Set Location to 41 3
            Set Size to 10 49
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7

        Object Ctypkin_Ctypkin_Module is a dbComboFormSub
            Entry_Item Ctypkin.Ctypkin_module
            Set Size to 13 85
            Set Location to 41 68
            Set Label_Col_Offset to 2
        End_Object    // Ctypkin_Ctypkin_Module

        Object Ctypkin_Max_Days_Sx_Par is a dbFormSub
            Entry_Item Ctypkin.Max_days_sx_par
            Set Label to "Ü£‚®ú™ Ä§ò£¶§„™ ëÆú´†°¶Á èò®ò©/°¶Á"
            Set Size to 13 30
            Set Location to 41 308
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ctypkin_Max_Days_Sx_Par

        Object Ctypkin_Check_Overhead is a dbCheckBoxSub
            Entry_Item Ctypkin.Check_overhead
            Set Label to "Î¢úöÆ¶™ Overhead"
            Set Size to 10 80
            Set Location to 42 360
        End_Object    // Ctypkin_Check_Overhead

        Object Ctypkin_Open_Item is a dbCheckBoxSub
            Entry_Item Ctypkin.Open_item
            Set Label to "ë¨££ú´‚Æú† ©´ò Open Items"
            Set Size to 10 109
            Set Location to 57 68
        End_Object    // Ctypkin_Open_Item

        Object Textbox1 is a Textbox
            Set Label to "â‡õ.©Á§õú©û™ ö‚≠¨®ò™ (Ä)"
            Set Location to 55 205
            Set Size to 10 93
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            Set Label to "â‡õ.SAP"
            Set Location to 68 259
            Set Size to 10 46
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox2

        Object Ctypkin_Singular is a dbFormSub
            Entry_Item Ctypkin.Singular
            Set Size to 13 126
            Set Location to 55 308
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ctypkin_Singular

        Object Ctypkin_Sub is a dbFormSub
            Entry_Item Ctypkin.Sub
            Set Size to 13 126
            Set Location to 68 308
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Ctypkin_Sub

        Object Textbox3 is a Textbox
            Set Label to "Ñ£≠ò§Âùú† report ò§·¢¨©û ßò®ò©´."
            Set Location to 83 181
            Set Size to 12 122
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox3

        Object Ctypkin_Subreport is a dbCheckBoxSub
            Entry_Item Ctypkin.Subreport
            Set Size to 13 22
            Set Location to 82 308
        End_Object    // Ctypkin_Subreport

    End_Object    // Container1

    Object Cflagkin_ is a dbGridSub
        Set Main_File to Cflagkin.File_Number
        Set Server to (Cflagkin_DD(self))
        Set Size to 159 451
        Set Location to 106 10
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Cflagkin.Cflagkin_flag
            Entry_Item (Code_Description(Self))
            Entry_Item Cflagkin.Flag_numeric
        End_Row

        Set Form_Width    item 0 to 92
        Set Header_Label  item 0 to "Flag âÂ§û©û™"
        
        Set Form_Width    item 1 to 351
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 0
        Set Header_Label  item 2 to ""
        

        //AB-StoreStart
                                                                                    
        Set Export_Code_Description_State Item 0 to true
        Set Column_Option Item 2 to NoEnter True
        
        
        //AB-StoreEnd

    End_Object    // Cflagkin_


    //AB-StoreStart
                                                                    
                                                                    
    Procedure Activate_View Returns Integer
        Integer rVal iCopenID
        String sModule sDescr
    
        Get psMenuModule  Of Main_Menu      to sModule
        Get gsfCode_Mast "MODULE" sModule   to sDescr
        Move (Trim(sDescr)) to sDescr
    
        Set psModule                    to sModule
        Send Rebuild_Constraints        to Ctypkin_DD
        Send Rebuild_Constraints        to Cflagkin_DD
        Send Beginning_Of_Data to Cflagkin_ True
    
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                set label of Cflagkin to "â†§„©ú†™ °ò† èò®·£ú´®¶† °†§„©ú‡§ èú¢ò´È§"
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                set label of Cflagkin to "â†§„©ú†™ °ò† èò®·£ú´®¶† °†§„©ú‡§ è®¶£ûüú¨´È§"
              Case Break
        Case End
    
        Forward Get Msg_Activate_View to rVal
    
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Cflagkin


//AB-StoreStart
                        
                        
//AB-StoreEnd

//AB/ End_Object    // prj
