//AB/ Project sl012 : Ptyppar
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl012 : Ptyppar"
//AB/     Set ProjectFileName to "sl012.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl012 is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
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
Register_Object Ptyppar_DD
Register_Object sl012
Register_Object Wtypkin_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD

//AB-IgnoreEnd

Object sl012 is a dbModalPanelSub

    //AB-StoreTopStart
    Property String psModule Public ''
    Property integer pifromclient Public 0
    
    //AB-StoreTopEnd

    Set Label to "íÁß¶† ßò®ò©´ò´†°È§"
    Set Size to 203 490
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

        //AB-StoreStart
        
        Procedure OnConstrain
            Forward Send OnConstrain
            If (psModule(Self)<>'') Begin
                Constrain Ptyppar.Ptyppar_Module eq (psModule(Self))
            End
            If (pifromclient(self)=1) Begin
                Constrain Ptyppar.constrain eq '1'
            End
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Set Main_DD to (Ptyppar_DD(self))
    Set Server to (Ptyppar_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Ptyppar.File_Number
        Set Size to 161 474
        Set Location to 6 6

        Begin_Row
            Entry_Item Ptyppar.Ptyppar_code
            Entry_Item Ptyppar.Ptyppar_descr
            Entry_Item Ctypkin.Ctypkin_descr
            Entry_Item Wtypkin.Wtypkin_descr
        End_Row

        Set Form_Width    item 0 to 77
        Set Header_Label  item 0 to "â‡õ. èò®ò©´ò´†°¶Á"
        
        Set Form_Width    item 1 to 125
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 137
        Set Header_Label  item 2 to "âÂ§û©û"
        
        Set Form_Width    item 3 to 129
        Set Header_Label  item 3 to "âÂ§û©û Äß¶ü„°û™"
        

        //AB-StoreStart
        
        Procedure Activate
            Forward Send Activate
            Send Rebuild_Constraints to Ptyppar_DD
            Send Beginning_Of_Data to oSelList True
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 171 323
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 171 377
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 171 433
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

End_Object    // sl012

//AB/ End_Object    // prj
