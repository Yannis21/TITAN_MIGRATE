//AB/ Project Wflagkin
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Wflagkin"
//AB/         Set ProjectFileName to "Wflagkin.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Wflagkin is a dbViewSubS
//     Wtypkin_DD is a DataDictionary
//     Wflagkin_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Wtypkin_Wtypkin_code is a dbFormSub
//       Wtypkin_Wtypkin_descr is a dbFormSub
//       Textbox5 is a Textbox
//       Textbox6 is a Textbox
//       Wtypkin_Wtypkin_Module is a dbComboFormSub
//       TextBoxSub1 is a TextBoxSub
//       Wtypkin_Max_Days_Sx_Par is a dbFormSub
//       TextBoxSub5 is a TextBoxSub
//       Wtypkin_Wtypkin_Anti is a dbFormSub
//     The_Table is a dbGridSub

// Register all objects
Register_Object Container1
Register_Object TextBoxSub1
Register_Object TextBoxSub5
Register_Object Textbox5
Register_Object Textbox6
Register_Object The_Table
Register_Object Wflagkin
Register_Object Wflagkin_DD
Register_Object Wtypkin_DD
Register_Object Wtypkin_Max_Days_Sx_Par
Register_Object Wtypkin_Wtypkin_Anti
Register_Object Wtypkin_Wtypkin_code
Register_Object Wtypkin_Wtypkin_descr
Register_Object Wtypkin_Wtypkin_Module


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                        
    Use Globals.Inc
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbCmbfrm.Sub
    Use Txtbox.Sub
    Use dbGrid.Sub

    Use WTYPKIN.DD
    Use WFLAGKIN.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Wflagkin FOR Wflagkin

    Object Wflagkin is a dbViewSubS
        Set Label to "â†§„©ú†™ °ò† èò®·£ú´®¶† â†§„©ú‡§"
        Set Size to 249 468
        Set Location to 2 5

        //AB-DDOStart

        Object Wtypkin_DD is a Wtypkin_DataDictionary

            //AB-StoreStart
            Set Allow_Foreign_New_Save_State to True
            
            
            //AB-StoreEnd

        End_Object    // Wtypkin_DD

        Object Wflagkin_DD is a Wflagkin_DataDictionary
            Set DDO_Server to (Wtypkin_DD(self))
            Set Constrain_File to Wtypkin.File_Number
        End_Object    // Wflagkin_DD

        Set Main_DD to (Wtypkin_DD(self))
        Set Server to (Wtypkin_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 61 450
            Set Location to 4 5
            Object Wtypkin_Wtypkin_code is a dbFormSub
                Entry_Item Wtypkin.Wtypkin_code
                Set Size to 13 97
                Set Location to 7 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                        
                //AB-StoreEnd

            End_Object    // Wtypkin_Wtypkin_code

            Object Wtypkin_Wtypkin_descr is a dbFormSub
                Entry_Item Wtypkin.Wtypkin_descr
                Set Size to 13 366
                Set Location to 22 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Procedure Request_Clear
                    Forward Send Request_Clear
                    Send Activate to (Wtypkin_Wtypkin_Code(Container1(Self)))
                End_procedure
                
                Procedure Request_Clear_All
                    Forward Send Request_Clear_All
                    Send Activate to (Wtypkin_Wtypkin_Code(Container1(Self)))
                End_procedure
                
                
                
                //AB-StoreEnd

            End_Object    // Wtypkin_Wtypkin_descr

            Object Textbox5 is a Textbox
                Set Label to "â‡õ†°Ê™ âÂ§û©û™"
                Set Location to 8 7
                Set Size to 10 56
                Set TypeFace to "MS Sans Serif"
            End_Object    // Textbox5

            Object Textbox6 is a Textbox
                Set Label to "èú®†ö®ò≠„"
                Set Location to 23 7
                Set Size to 10 50
                Set TypeFace to "MS Sans Serif"
            End_Object    // Textbox6

            Object Wtypkin_Wtypkin_Module is a dbComboFormSub
                Entry_Item Wtypkin.Wtypkin_module
                Set Size to 13 97
                Set Location to 38 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Wtypkin_Wtypkin_Module

            Object TextBoxSub1 is a TextBoxSub
                Set Label to "âÁ°¢‡£ò"
                Set Location to 38 7
                Set Size to 10 35
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub1

            Object Wtypkin_Max_Days_Sx_Par is a dbFormSub
                Entry_Item Wtypkin.Max_days_sx_par
                Set Label to "Ü£‚®ú™ Ä§ò£¶§„™ ëÆú´†°¶Á èò®ò©/°¶Á"
                Set Size to 13 30
                Set Location to 38 274
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Wtypkin_Max_Days_Sx_Par

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "âÂ§û©û Sap"
                Set Location to 39 337
                Set Size to 12 46
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub5

            Object Wtypkin_Wtypkin_Anti is a dbFormSub
                Entry_Item Wtypkin.Wtypkin_anti
                Set Size to 12 45
                Set Location to 39 387
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Wtypkin_Wtypkin_Anti

        End_Object    // Container1

        Object The_Table is a dbGridSub

            //AB-StoreTopStart
            Procedure Request_Clear_All
                Forward Send Request_Clear_All
                Send Activate to (Wtypkin_Wtypkin_Code(Container1(Self)))
            End_procedure
            //AB-StoreTopEnd

            Set Main_File to Wflagkin.File_Number
            Set Server to (Wflagkin_DD(self))
            Set Size to 159 454
            Set Location to 69 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Wflagkin.Wflagkin_flag
                Entry_Item (Code_Description(Self))
            End_Row

            Set Form_Width    item 0 to 78
            Set Header_Label  item 0 to "Î§õú†•û"
            
            Set Form_Width    item 1 to 367
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            

            //AB-StoreStart
            Set Export_Code_Description_State Item 0 to true
            
            Function Child_entering returns Integer
                Integer rVal iRec
                Forward Get Child_Entering to rVal
                If (Not(rVal)) Begin
                    If (Should_Save(Wtypkin_DD(Self))) Send Request_Save to (Wtypkin_DD(Self))
                    Get Field_Current_Value Of Wtypkin_DD Field Wtypkin.Recnum to iRec
                    If (Not(iRec)) Begin
                        send info_box "Éú§ ‚Æú´ú úß†¢‚•ú† °·ß¶†¶ ´Áß¶ °Â§û©û™" 'ë≠·¢£ò'
                        Move 1 to rVal
                    End
                End
                Function_Return rVal
            End_Function
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table


        //AB-StoreStart
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
        //AB-StoreEnd

    End_Object    // Wflagkin

//AB/     End_Object    // prj
