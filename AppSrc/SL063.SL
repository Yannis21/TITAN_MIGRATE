//AB/ Project SL063
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "SL063"
//AB/         Set ProjectFileName to "SL063.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   SL063 is a dbModalPanel
//     Gthhmgio_DD is a DataDictionary
//     Gthaa_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object Gthaa_DD
Register_Object Gthhmgio_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL063


    //AB-IgnoreStart

    Use DFAllEnt.pkg


    Use GTHHMGIO.DD
    Use GTHAA.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object SL063 is a dbModalPanel
        Set Minimize_Icon to FALSE
        Set Label to "sl063:Ü£ú®¶£û§Âú™ Ü£ú®¶¢¶öÂ‡§"
        Set Size to 148 379
        Set Location to 4 5

        //AB-DDOStart

        Object Gthhmgio_DD is a Gthhmgio_DataDictionary
        End_Object    // Gthhmgio_DD

        Object Gthaa_DD is a Gthaa_DataDictionary
            Set DDO_Server to (Gthhmgio_DD(self))
        End_Object    // Gthaa_DD

        Set Main_DD to (Gthaa_DD(self))
        Set Server to (Gthaa_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList

            //AB-StoreTopStart
                                                                                
            //AB-StoreTopEnd

            Set Main_File to Gthaa.File_Number
            Set Size to 105 363
            Set Location to 6 6

            Begin_Row
                Entry_Item Gthaa.Gthaa_recr
                Entry_Item Gthhmgio.Gthhmgio_code
                Entry_Item Gthhmgio.Gthhmgio_descr
                Entry_Item Gthaa.Gthaa_lhmnia
            End_Row

            Set Form_Width    item 0 to 52
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 52
            Set Header_Label  item 1 to "Ü£ú®¶¢Êö†¶"
            
            Set Form_Width    item 2 to 187
            Set Header_Label  item 2 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 3 to 64
            Set Header_Label  item 3 to "Ü£ú®¶£û§Âò"
            

            //AB-StoreStart
                                                                                
                                                                                
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a Button
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 114 209

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a Button
            Set Label to "&Ä°Á®‡©û"
            Set Location to 114 264

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a Button
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 114 319

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
        //AB-StoreEnd

    CD_End_Object    // SL063

//AB/     End_Object    // prj
