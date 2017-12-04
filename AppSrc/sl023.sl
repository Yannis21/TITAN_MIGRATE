//AB/ Project sl023:apothkes
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl023:apothkes"
//AB/     Set ProjectFileName to "sl023.SL"

// Project Object Structure
//   sl023 is a dbModalPanelSub
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl023
Register_Object Wapokat_DD
Register_Object Wapomast_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WAPOKAT.DD
Use WAPOMAST.DD

//AB-IgnoreEnd

Object sl023 is a dbModalPanelSub

    //AB-StoreTopStart
    property string psapokat public ''
    //AB-StoreTopEnd

    Set Label to "Äß¶ü„°ú™"
    Set Size to 126 260
    Set Location to 4 19
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))

        //AB-StoreStart
        
        begin_constraints
          if (psapokat(self) <> '') constrain wapomast.wapokat_code eq (psapokat(self))
        
        end_constraints
        
        //AB-StoreEnd

    End_Object    // Wapomast_DD

    Set Main_DD to (Wapomast_DD(self))
    Set Server to (Wapomast_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Wapomast.File_Number
        Set Server to (Wapokat_DD(self))
        Set Size to 89 240
        Set Location to 6 6

        Begin_Row
            Entry_Item Wapomast.Wapomast_code
            Entry_Item Wapomast.Wapomast_descr
        End_Row

        Set Form_Width    item 0 to 70
        Set Header_Label  item 0 to "Äß¶ü„°û      :"
        
        Set Form_Width    item 1 to 160
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
                    
                    
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 92 81

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 92 135

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 92 191

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
    
    procedure activate
        send rebuild_constraints to wapomast_dd
        send beginning_of_data to osellist true
        forward send activate
    end_procedure
    
    
    //AB-StoreEnd

End_Object    // sl023

//AB/ End_Object    // prj
