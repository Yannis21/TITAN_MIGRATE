//AB/ Project sl054:cars
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl054:cars"
//AB/     Set ProjectFileName to "sl054.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl054 is a dbModalPanelSub
//     Cars_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Cars_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl054


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use Cars.DD

//AB-IgnoreEnd

Object sl054 is a dbModalPanelSub
    Set Label to "Ä®ÆúÂ¶ éÆû£·´‡§"
    Set Size to 148 420
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Cars_DD is a Cars_DataDictionary
    End_Object    // Cars_DD

    Set Main_DD to (Cars_DD(self))
    Set Server to (Cars_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Cars.File_Number
        Set Size to 105 403
        Set Location to 6 6

        Begin_Row
            Entry_Item Cars.Car_id
            Entry_Item Cars.Car_descr
            Entry_Item Cars.Car_license
            Entry_Item Cars.Car_maxm3
            Entry_Item Cars.Car_driverid
        End_Row

        Set Form_Width    item 0 to 80
        Set Header_Label  item 0 to "â‡õ.éÆ„£ò´¶™"
        
        Set Form_Width    item 1 to 120
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 80
        Set Header_Label  item 2 to "Ä®†ü.â¨°¢¶≠¶®Âò™"
        
        Set Form_Width    item 3 to 50
        Set Header_Label  item 3 to "Max.m3"
        
        Set Form_Width    item 4 to 65
        Set Header_Label  item 4 to "â‡õ.éõûö¶Á"
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 114 249

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 114 305

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 114 359

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

End_Object    // sl054

//AB/ End_Object    // prj
