//AB/ Project sl013b : Pseira
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl013b : Pseira"
//AB/     Set ProjectFileName to "sl013b.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl013b is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Ctypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Pseira_DD
Register_Object Ptyppar_DD
Register_Object sl013b
Register_Object Wtypkin_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use PSEIRA.DD

//AB-IgnoreEnd

Object sl013b is a dbModalPanelSub
    set label to "ëú†®ú™ ßò®ò©´ò´†°È§ ßÈ¢û©û™" 
    Set Size to 148 297
    Set Location to 4 4
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

    Object Pseira_DD is a Pseira_DataDictionary
        Set DDO_Server to (Ptyppar_DD(self))
    End_Object    // Pseira_DD

    Set Main_DD to (Pseira_DD(self))
    Set Server to (Pseira_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Pseira.File_Number
        Set Size to 105 280
        Set Location to 6 6

        Begin_Row
            Entry_Item Pseira.Pseira_seira
        End_Row

        Set Form_Width    item 0 to 270
        set header_label  item 0 to "ëú†®ò" 
        
    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        set label to "&Ñß†¢¶ö„" 
        Set Location to 115 126
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        set label to "&Ä°Á®‡©û" 
        Set Location to 115 181
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        set label to "Ä&§òù„´û©û" 
        Set Location to 115 236
        Set Form_TypeFace Item 0 to "MS Sans Serif"

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

End_Object    // sl013b

//AB/ End_Object    // prj
