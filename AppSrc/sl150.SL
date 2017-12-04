//AB/ Project sl150:GL Gplan
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl150:GL Gplan"
//AB/         Set ProjectFileName to "sl150.SL"

// Project Object Structure
//   sl150 is a dbModalPanelSub
//     Gplan_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object Gplan_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl150


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub


    Use GPLAN.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object sl150 is a dbModalPanelSub

        //AB-StoreTopStart
        Property Integer piFragmaLast -1
        Property String  psFragmaFromCode ""
        Property String  psFragmaToCode ""
        
        //AB-StoreTopEnd

        Set Minimize_Icon to FALSE
        Set Label to "äÂ©´ò ä¶öò®†ò©£È§"
        Set Size to 204 393
        Set Location to 5 16
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Gplan_DD is a Gplan_DataDictionary

            //AB-StoreStart
                        
            Procedure OnConstrain
                Integer liFragmaLast
                String lsFragmaFromCode lsFragmaToCode
                Get piFragmaLast     to liFragmaLast
                Get psFragmaFromCode to lsFragmaFromCode
                Get psFragmaToCode   to lsFragmaToCode
                If (liFragmaLast <> -1)     Constrain Gplan.Gplan_Yn_Last eq liFragmaLast
                If (lsFragmaFromCode <> "") Constrain Gplan.Gplan_Code    ge lsFragmaFromCode
                If (lsFragmaToCode <> "")   Constrain Gplan.Gplan_Code    le lsFragmaToCode
            End_Procedure // OnConstrain
            
            
            //AB-StoreEnd

        End_Object    // Gplan_DD

        Set Main_DD to (Gplan_DD(self))
        Set Server to (Gplan_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Gplan.File_Number
            Set Ordering to 3
            Set Size to 164 378
            Set Location to 4 6

            Begin_Row
                Entry_Item Gplan.Gplan_code
                Entry_Item Gplan.Gplan_descr1
                Entry_Item Gplan.Gplan_bathmos
                Entry_Item Gplan.Gplan_yn_last
            End_Row

            Set Form_Width    item 0 to 105
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 212
            Set Header_Label  item 1 to "é§¶£ò©Âò"
            
            Set Form_Width    item 2 to 34
            Set Header_Label  item 2 to "Åòü£Ê™"
            
            Set Form_Width    item 3 to 19
            Set Header_Label  item 3 to " í"
            Set Column_Checkbox_State  item 3 to True
            

            //AB-StoreStart
                        
            Property String piStoredFragmaLast -1
            Property String psStoredFragmaFromCode ""
            Property String psStoredFragmaToCode ""
            
            Procedure Store_Defaults
                forward send Store_Defaults
                Set piStoredFragmaLast     to (piFragmaLast(Self))
                Set psStoredFragmaFromCode to (psFragmaFromCode(Self))
                Set psStoredFragmaToCode   to (psFragmaToCode(Self))
            end_Procedure // Store_Defaults
            
            Procedure Restore_Defaults
                forward send Restore_Defaults
                Set piFragmaLast     to (piStoredFragmaLast(self))
                Set psFragmaFromCode to (psStoredFragmaFromCode(self))
                Set psFragmaToCode   to (psStoredFragmaToCode(self))
            end_Procedure // Restore_Defaults
            
            Procedure Activating
                Forward Send Activating
                Send Rebuild_Constraints to (Gplan_DD(self))
            End_Procedure // Activating
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a Button
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 170 226

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a Button
            Set Label to "&Ä°Á®‡©û"
            Set Location to 170 279

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a Button
            Set Label to "&Ä§òù„´û©û..."
            Set Location to 170 334

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
                
        On_Key Key_Alt+Key_O Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_C Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_S Send KeyAction To (oSearch_bn(current_object))
        
        
        
        //AB-StoreEnd

    CD_End_Object    // sl150

//AB/     End_Object    // prj
