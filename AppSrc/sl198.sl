//AB/ Project sl198:cities
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl198:cities"
//AB/     Set ProjectFileName to "sl198.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl198 is a dbModalPanelSub
//     Cities_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Cities_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl198


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CITIES.DD

//AB-IgnoreEnd

Object sl198 is a dbModalPanelSub
    Set Label to "Ä®ÆúÂ¶ èÊ¢ú‡§"
    Set Size to 148 297
    Set Location to 4 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Cities_DD is a Cities_DataDictionary

        //AB-StoreStart
                
                
        //AB-StoreEnd

    End_Object    // Cities_DD

    Set Main_DD to (Cities_DD(self))
    Set Server to (Cities_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Cities.File_Number
        Set Size to 105 280
        Set Location to 6 6

        Begin_Row
            Entry_Item Cities.City_id
            Entry_Item Cities.City_descr
        End_Row

        Set Form_Width    item 0 to 50
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 221
        Set Header_Label  item 1 to "é§¶£ò©Âò"
        

        //AB-StoreStart
        
        Set Column_Option Item 0 to NoEnter True
        
        
        
        
        
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

End_Object    // sl198

//AB/ End_Object    // prj
