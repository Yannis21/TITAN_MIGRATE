//AB/ Project sl071:Katastrosi Periodikhs FPA
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl071:Katastrosi Periodikhs FPA"
//AB/         Set ProjectFileName to "sl071.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl071 is a dbModalPanel
//     Gvath_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object Gvath_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl071


    //AB-IgnoreStart

    Use DFAllEnt.pkg


    Use GVATH.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object sl071 is a dbModalPanel
        Set Label to "sl071:èú®†¶õ†°„ É„¢‡©û îèÄ"
        Set Size to 215 418

        //AB-DDOStart

        Object Gvath_DD is a Gvath_DataDictionary
        End_Object    // Gvath_DD

        Set Main_DD to (Gvath_DD(self))
        Set Server to (Gvath_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Gvath.File_Number
            Set Ordering to 1
            Set Size to 159 403
            Set Location to 7 5

            Begin_Row
                Entry_Item Gvath.Gvath_code
                Entry_Item Gvath.Gvath_descr
                Entry_Item Gvath.Gvath_pct
            End_Row

            Set Form_Width    item 0 to 120
            Set Header_Label  item 0 to "â‡õ†°Ê™ îèÄ"
            
            Set Form_Width    item 1 to 229
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 48
            Set Header_Label  item 2 to "%ë¨§´."
            
        End_Object    // oSelList

        Object oOK_bn is a Button
            Set Label to "&OK"
            Set Location to 175 247

            //AB-StoreStart
            Procedure OnClick
                Send OK To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a Button
            Set Label to "&Cancel"
            Set Location to 175 300

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a Button
            Set Label to "&Search..."
            Set Location to 175 356

            //AB-StoreStart
            Procedure OnClick
                Send Search To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_O Send KeyAction To oOk_bn
        On_Key Key_Alt+Key_C Send KeyAction To oCancel_bn
        On_Key Key_Alt+Key_S Send KeyAction To oSearch_bn
        //AB-StoreEnd

    CD_End_Object    // sl071

//AB/     End_Object    // prj
