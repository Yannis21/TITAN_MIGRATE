//AB/ Project sl94:paraggelies
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl94:paraggelies"
//AB/         Set ProjectFileName to "sl94.SL"

// Project Object Structure
//   sl94 is a dbModalPanelSub
//     order1_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object order1_DD
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl94


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use ORDER1.DD
    
    //AB-IgnoreEnd

    Object sl94 is a dbModalPanelSub

        //AB-StoreTopStart
        Property String     psModule
        //AB-StoreTopEnd

        Set Label to "Ä®ÆúÂ¶ Çú§†°È§ èò®òööú¢†È§"
        Set Size to 148 472
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object order1_DD is a Order1_DataDictionary

            //AB-StoreStart
            Begin_Constraints
                Constrain order1.company_code  eq SysCurXR.Company_Code
                Constrain order1.Branch_Code   eq SysCurXR.Branch_Code
                Constrain order1.Year_Year     eq SysCurXR.Year_Year
                constrain order1.module eq (psmodule(self))
            End_Constraints
            
            
            //AB-StoreEnd

        End_Object    // order1_DD

        Set Main_DD to (order1_DD(self))
        Set Server to (order1_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Order1.File_Number
            Set Size to 105 460
            Set Location to 5 5

            Begin_Row
                Entry_Item Order1.Date
                Entry_Item Order1.Recr
                Entry_Item Order1.Descr
                Entry_Item Order1.Resp
                Entry_Item Order1.Finish
                Entry_Item Order1.Akyrh
                Entry_Item Order1.Eggrish
                Entry_Item Order1.Metasx
            End_Row

            Set Form_Width    item 0 to 46
            Set Header_Label  item 0 to "Ü£/§Âò"
            
            Set Form_Width    item 1 to 69
            Set Header_Label  item 1 to "Ä/ò èò®òööú¢Âò™"
            
            Set Form_Width    item 2 to 111
            Set Header_Label  item 2 to "Ä†´†¶¢¶öÂò"
            
            Set Form_Width    item 3 to 91
            Set Header_Label  item 3 to "ë¨§´·Æüû°ú ÄßÊ"
            
            Set Form_Width    item 4 to 35
            Set Header_Label  item 4 to "Ñ°¢ú†©ú"
            Set Column_Checkbox_State  item 4 to True
            
            Set Form_Width    item 5 to 29
            Set Header_Label  item 5 to "Ä°¨®û"
            Set Column_Checkbox_State  item 5 to True
            
            Set Form_Width    item 6 to 33
            Set Header_Label  item 6 to "Ñöö®Âü."
            Set Column_Checkbox_State  item 6 to True
            
            Set Form_Width    item 7 to 38
            Set Header_Label  item 7 to "ãú´ò©Æ."
            Set Column_Checkbox_State  item 7 to True
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "Äß¶õ¶Æ„"
            Set Location to 113 303

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "Ä°Á®‡©û"
            Set Location to 113 358

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä§òù„´û©û"
            Set Location to 113 414

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
        
        
        Procedure Activating Returns Integer
            Integer rVal
            string smodule
            Get psMenuModule  Of Main_Menu  to sModule
            Set psModule to sModule
            if (psmodule(self)='01') set label of sl94 to 'Ä®ÆúÂ¶ Çú§†°È§ èò®òööú¢†È§ èú¢ò´È§'
            else if (psmodule(self)='02') set label of sl94 to 'Ä®ÆúÂ¶ Çú§†°È§ èò®òööú¢†È§ è®¶£ûüú¨´È§'
            Forward Get Msg_Activating to rVal
            Get psMenuModule  Of Main_Menu  to sModule
            Set psModule to sModule
                 if (psmodule(self)='01') set label of sl94 to 'Ä®ÆúÂ¶ Çú§†°È§ èò®òööú¢†È§ èú¢ò´È§'
            else if (psmodule(self)='02') set label of sl94 to 'Ä®ÆúÂ¶ Çú§†°È§ èò®òööú¢†È§ è®¶£ûüú¨´È§'
            Send Rebuild_Constraints to order1_DD
        //    Send Beginning_Of_Data to oSelList True
            Procedure_Return rVal
        End_procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl94

//AB/     End_Object    // prj
