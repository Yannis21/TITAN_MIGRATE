//AB/ Project viewFlds:lookup
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "viewFlds:lookup"
//AB/         Set ProjectFileName to "viewFlds.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   viewFlds is a dbModalPanelSub
//     Oth_DD is a DataDictionary
//     Viewflds_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub
//     frmView is a FormSub
//     TextBoxSub1 is a TextBoxSub

// Register all objects
Register_Object frmView
Register_Object Oth_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object TextBoxSub1
Register_Object Viewflds_DD
Register_Object viewFlds



    //AB-StoreTopStart
    Use Oth.sl
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub
    Use Form.Sub
    Use Txtbox.Sub


    Use OTH.DD
    Use VIEWFLDS.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object viewFlds is a dbModalPanelSub

        //AB-StoreTopStart
                                                    
        Property String psViewName Public ''
        
        //AB-StoreTopEnd

        Set Label to "File / Fields Per VIEW"
        Set Size to 162 466
        Set Location to 9 8
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Oth_DD is a Oth_DataDictionary
        End_Object    // Oth_DD

        Object Viewflds_DD is a Viewflds_DataDictionary
            Set DDO_Server to (Oth_DD(self))

            //AB-StoreStart
            
            Begin_Constraints
                String sStr
                Get psViewName          to sStr
                Move (Trim(sStr))       to sStr
                If (sStr<>'') Constrain ViewFlds.View_Name eq sStr
            End_Constraints
            
            
            //AB-StoreEnd

        End_Object    // Viewflds_DD

        Set Main_DD to (Viewflds_DD(self))
        Set Server to (Viewflds_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Viewflds.File_Number
            Set Size to 105 448
            Set Location to 6 6

            Begin_Row
                Entry_Item Oth.View_name
                Entry_Item Oth.View_label
                Entry_Item Viewflds.Scr_field_name
                Entry_Item Viewflds.Usr_field_name
            End_Row

            Set Form_Width    item 0 to 88
            Set Header_Label  item 0 to "View"
            
            Set Form_Width    item 1 to 113
            Set Header_Label  item 1 to "View Title"
            
            Set Form_Width    item 2 to 114
            Set Header_Label  item 2 to "View Field"
            
            Set Form_Width    item 3 to 126
            Set Header_Label  item 3 to "User Friendly View Field Name"
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 122 293
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 122 349
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 122 404
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn

        Object frmView is a FormSub
            Set Size to 13 190
            Set Location to 125 6
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                        
            Set Prompt_Object to (Oth(Self))
            
            Procedure OnChange
                String sVal
                If (Focus(Desktop)=FrmView(Self)) Begin
                    Get Value Item 0 to sVal
                    Set psViewName to sVal
                    Send rebuild_Constraints to ViewFlds_DD
                    Send Beginning_Of_Data to oSelList
                End
            End_Procedure
            
            Procedure Prompt
                String sVal
                Forward Send Prompt
                Get Value Item 0 to sVal
                Set psViewName to sVal
                Send rebuild_Constraints to ViewFlds_DD
                Send Beginning_Of_Data to oSelList
            End_Procedure
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // frmView

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Choose a View Name to Restrict Fields"
            Set Location to 115 6
            Set Size to 10 139
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1


        //AB-StoreStart
        On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
        
        
        
        //AB-StoreEnd

    CD_End_Object    // viewFlds


    //AB-StoreStart
                
                
    //AB-StoreEnd

//AB/     End_Object    // prj
