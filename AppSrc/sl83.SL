//AB/ Project sl83:pagia
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl83:pagia"
//AB/     Set ProjectFileName to "sl83.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl83 is a dbModalPanelSub
//     Pagkat_DD is a DataDictionary
//     Pagia_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Pagia_DD
Register_Object Pagkat_DD
Register_Object sl83



//AB-StoreTopStart

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use PAGKAT.DD
Use PAGIA.DD

//AB-IgnoreEnd

Object sl83 is a dbModalPanelSub
    Set Label to "è·ö†¶™ Ñ•¶ß¢†©£Ê™"
    Set Size to 143 478
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Pagkat_DD is a Pagkat_DataDictionary
    End_Object    // Pagkat_DD

    Object Pagia_DD is a Pagia_DataDictionary
        Set DDO_Server to (Pagkat_DD(self))
    End_Object    // Pagia_DD

    Set Main_DD to (Pagia_DD(self))
    Set Server to (Pagia_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Pagia.File_Number
        Set Size to 105 467
        Set Location to 6 6

        Begin_Row
            Entry_Item Pagia.Pagia_code
            Entry_Item Pagia.Pagia_codea
            Entry_Item Pagia.Pagia_descr
            Entry_Item Pagkat.Pagkat_descr
            Entry_Item Pagia.Pagia_bydate
            Entry_Item Pagia.Pagia_axia
            Entry_Item Pagia.Pagia_lastdate
        End_Row

        Set Form_Width    item 0 to 74
        Set Header_Label  item 0 to "â‡õ†°Ê™ èòöÂ¶¨"

        Set Form_Width    item 1 to 31
        Set Header_Label  item 1 to "Ñßú°´."

        Set Form_Width    item 2 to 109
        Set Header_Label  item 2 to "èú®†ö®ò≠„"

        Set Form_Width    item 3 to 79
        Set Header_Label  item 3 to "âò´ûö¶®Âò"

        Set Form_Width    item 4 to 50
        Set Header_Label  item 4 to "Ü£.Äö¶®·™"

        Set Form_Width    item 5 to 60
        Set Header_Label  item 5 to "âòüò®„ í†£„"

        Set Form_Width    item 6 to 56
        Set Header_Label  item 6 to "íú¢.ÄßÊ©ôú©û"


        //AB-StoreStart
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0   to    iDecimals
            Set Points Item 5 to iDecimals
            Set Numeric_Mask  Item 5 to 14 iDecimals " ,*"

        End_Procedure






        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 111 312

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure




        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 111 366

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 111 422

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
        String  sNom
        Integer iDecimals rVal
        Move SysCurxr.C_Code0                   to sNom
        open nomisma
        Clear Nomisma
        Move sNom                               to Nomisma.Nomisma_Code
        Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
        If (Found=1)    Move Nomisma.Dekadika   to iDecimals
        Else            Move 0                  to iDecimals
        Set Points Of oSelList Item 5   to iDecimals
        Forward Send Activate
    End_procedure

    //AB-StoreEnd

End_Object    // sl83


//AB-StoreStart


//AB-StoreEnd

//AB/ End_Object    // prj
