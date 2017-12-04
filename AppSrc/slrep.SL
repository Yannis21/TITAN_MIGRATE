//AB/ Project slrep:lista ektyposeon
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slrep:lista ektyposeon"
//AB/         Set ProjectFileName to "slrep.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   slrep is a dbModalPanelSub
//     Sysfile_DD is a DataDictionary
//     Sysrep_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Sysfile_DD
Register_Object Sysrep_DD
Register_Object slrep


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use SYSFILE.DD
    Use SYSREP.DD
    
    //AB-IgnoreEnd

    Object slrep is a dbModalPanelSub

        //AB-StoreTopStart
        property string pskathg public ''
        //AB-StoreTopEnd

        Set Label to "äÂ©´ò Ñ°´¨ßÈ©ú‡§"
        Set Size to 148 388
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Sysfile_DD is a Sysfile_DataDictionary
        End_Object    // Sysfile_DD

        Object Sysrep_DD is a Sysrep_DataDictionary

            //AB-StoreStart
            begin_constraints
                constrain sysrep.view eq (pskathg(self))
                if (sysfile.titan=1) constrain sysrep.titan eq ''
            end_constraints
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Sysrep_DD

        Set Main_DD to (Sysrep_DD(self))
        Set Server to (Sysrep_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Sysrep.File_Number
            Set Ordering to 1
            Set Size to 105 372
            Set Location to 6 6

            Begin_Row
                Entry_Item Sysrep.Name
                Entry_Item Sysrep.Descr
                Entry_Item Sysrep.Descr1
            End_Row

            Set Form_Width    item 0 to 101
            Set Header_Label  item 0 to "é§¶£ò Report"
            
            Set Form_Width    item 1 to 263
            Set Header_Label  item 1 to "èú®†ö®ò≠„ Ñ°´Áß‡©û™"
            
            Set Form_Width    item 2 to 263
            Set Header_Label  item 2 to "èú®†ö®ò≠„ Ñ°´Áß‡©û™"
            

            //AB-StoreStart
            
            Set Resize_Column_State to FALSE
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 113 219

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 113 273

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 113 329

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
        
        Procedure Activate
            string smodule
            Forward Send Activate
            /////////Get psMenuModule  Of Main_Menu  to sModule
            if (smodule = '02') begin
                Set Form_Width      Of oSelList Item 1  to 0
                Set Column_Option   Of oSelList Item 1  to NoEnter True
                Set Form_Width      Of oSelList Item 2  to 263
            end
            else begin
                Set Form_Width      Of oSelList Item 2 to 0
                Set Column_Option   Of oSelList Item 2 to NoEnter True
                Set Form_Width      Of oSelList Item 1 to 263
            end
            Send Rebuild_Constraints to sysrep_DD
            Send Beginning_Of_Data to oSelList True
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // slrep

//AB/     End_Object    // prj
