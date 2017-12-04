//AB/ Project sl194_2
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl194_2"
//AB/     Set ProjectFileName to "sl194_2.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl194_2 is a dbModalPanelSub
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Clorder_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Clorder_DD
Register_Object Country_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Payresp_DD
Register_Object sl194_2
Register_Object Towns_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use CLORDER.DD

//AB-IgnoreEnd

Object sl194_2 is a dbModalPanelSub

    //AB-StoreTopStart
    property string fragmapromi public ''
    //AB-StoreTopEnd

    Set Label to "(Xlate(Label(Self)))"
    Set Size to 148 297
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Object Clorder_DD is a Clorder_DataDictionary
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
        Procedure OnConstrain
            If (fragmapromi(Self)<>'') Begin
                Constrain clorder.clients_code eq (fragmapromi(Self))
            End
        End_Procedure
        //AB-StoreEnd

    End_Object    // Clorder_DD

    Set Main_DD to (Clorder_DD(self))
    Set Server to (Clorder_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Clorder.File_Number
        Set Size to 105 280
        Set Location to 6 6

        Begin_Row
            Entry_Item Clorder.Aapar
            Entry_Item Clorder.Armod
            Entry_Item Clorder.Date
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "Aapar"
        
        Set Form_Width    item 1 to 131
        Set Header_Label  item 1 to "Armod"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "Date"
        

        //AB-StoreStart
        Procedure Activate
            Forward Send Activate
            Send Rebuild_Constraints to clorder_DD
            Send Beginning_Of_Data to oSelList True
        End_procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 115 126

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 115 181

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 115 236

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

End_Object    // sl194_2

//AB/ End_Object    // prj
