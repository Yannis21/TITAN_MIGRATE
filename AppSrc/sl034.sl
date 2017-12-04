//AB/ Project SL034:BAXIOKAT
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL034:BAXIOKAT"
//AB/     Set ProjectFileName to "SL034.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   SL034 is a dbModalPanelSub
//     Baxiokat_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Baxiokat_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL034


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use BAXIOKAT.DD

//AB-IgnoreEnd

CD_Popup_Object SL034 is a dbModalPanelSub
    set label to "âò´ûö¶®Âú™ Ä•†¶ö®·≠‡§" 
    Set Size to 206 347
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Set Main_DD to (Baxiokat_DD(self))
    Set Server to (Baxiokat_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Baxiokat.File_Number
        Set Size to 164 335
        Set Location to 5 4

        Begin_Row
            Entry_Item Baxiokat.Baxiokat_code
            Entry_Item Baxiokat.Baxiokat_descr
            Entry_Item Baxiokat.Baxiokat_type
            Entry_Item (Export_Code_Description(Self,2,Baxiokat.Baxiokat_type))
        End_Row

        Set Form_Width    item 0 to 55
        set header_label  item 0 to "â‡õ†°¶™" 

        Set Form_Width    item 1 to 172
        set header_label  item 1 to "èú®†ö®ò≠„" 

        Set Form_Width    item 2 to 16
        set header_label  item 2 to "íÁß¶™" 

        Set Form_Width    item 3 to 83
        set header_label  item 3 to "Ñ†©./è¢û®." 

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&Ñß†¢¶ö„" 
        Set Location to 172 180

        //AB-StoreStart
        Procedure OnClick
            Send OK To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ä°Á®‡©û" 
        Set Location to 172 234

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "Ä&§òù„´û©û" 
        Set Location to 172 289

        //AB-StoreStart
        Procedure OnClick
            Send Search To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
    On_Key Key_Alt+Key_E Send KeyAction To oOk_bn
    On_Key Key_Alt+Key_A Send KeyAction To oCancel_bn
    On_Key Key_Alt+Key_N Send KeyAction To oSearch_bn
    //AB-StoreEnd

CD_End_Object    // SL034

//AB/ End_Object    // prj
