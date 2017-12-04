//AB/ Project sl001 : Etairies
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl001 : Etairies"
//AB/         Set ProjectFileName to "sl001.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl001 is a dbModalPanel
//     Company_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Company_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl001


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use Button.Sub


    Use COMPANY.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object sl001 is a dbModalPanel
        Set Label to "Ñ´ò†®Âú™"
        Set Size to 148 297
        Set Location to 12 27

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary
        End_Object    // Company_DD

        Set Main_DD to (Company_DD(self))
        Set Server to (Company_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Company.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Company.Company_code
                Entry_Item Company.Company_name
                Entry_Item Company.Company_afm
            End_Row

            Set Form_Width    item 0 to 42
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 150
            Set Header_Label  item 1 to "Ñß‡§¨£Âò"
            
            Set Form_Width    item 2 to 80
            Set Header_Label  item 2 to "Ä.î.ã"
            
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
            Set Label to "Ä&§òù„´û©û"
            Set Location to 115 236

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_O Send KeyAction To oOk_bn
        On_Key Key_Alt+Key_C Send KeyAction To oCancel_bn
        On_Key Key_Alt+Key_S Send KeyAction To oSearch_bn
        //AB-StoreEnd

    CD_End_Object    // sl001

//AB/     End_Object    // prj
