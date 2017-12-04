//AB/ Project sl065 : Zones ana Xrhsh
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl065 : Zones ana Xrhsh"
//AB/         Set ProjectFileName to "sl065.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl065 is a dbModalPanelSub
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Zones_DD is a DataDictionary
//     Brzones_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Branch_DD
Register_Object Brzones_DD
Register_Object Company_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl065
Register_Object Zones_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use COMPANY.DD
    Use BRANCH.DD
    Use ZONES.DD
    Use BRZONES.DD
    
    //AB-IgnoreEnd

    Object sl065 is a dbModalPanelSub
        Set Label to "ÖÈ§ú™ ò§ò ¨ß¶°ò´·©´û£ò"
        Set Size to 146 515
        Set Location to 4 3
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary
        End_Object    // Company_DD

        Object Branch_DD is a Branch_DataDictionary
            Set DDO_Server to (Company_DD(self))
        End_Object    // Branch_DD

        Object Zones_DD is a Zones_DataDictionary
        End_Object    // Zones_DD

        Object Brzones_DD is a BrZones_DataDictionary
            Set DDO_Server to (Branch_DD(self))
            Set DDO_Server to (Zones_DD(self))
        End_Object    // Brzones_DD

        Set Main_DD to (Brzones_DD(self))
        Set Server to (Brzones_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Brzones.File_Number
            Set Server to (Company_DD(self))
            Set Size to 105 501
            Set Location to 6 6

            Begin_Row
                Entry_Item Company.Company_name
                Entry_Item Branch.Branch_name
                Entry_Item Zones.Zone_id
                Entry_Item Zones.Zone_descr
                Entry_Item Brzones.Beto_site
                Entry_Item Brzones.Zone_km
                Entry_Item Brzones.Zone_charge0
                Entry_Item Brzones.Zone_charge1
                Entry_Item Brzones.Zone_charge2
            End_Row

            Set Form_Width    item 0 to 61
            Set Header_Label  item 0 to "Ñ´ò†®Âò"
            
            Set Form_Width    item 1 to 61
            Set Header_Label  item 1 to "ìß¶°ò´/£ò"
            
            Set Form_Width    item 2 to 34
            Set Header_Label  item 2 to "ÖÈ§û"
            
            Set Form_Width    item 3 to 107
            Set Header_Label  item 3 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 4 to 42
            Set Header_Label  item 4 to "Beto Site"
            
            Set Form_Width    item 5 to 48
            Set Header_Label  item 5 to "ï¢£"
            
            Set Form_Width    item 6 to 48
            Set Header_Label  item 6 to "ï®‚‡©û 0"
            
            Set Form_Width    item 7 to 48
            Set Header_Label  item 7 to "ï®‚‡©û 1"
            
            Set Form_Width    item 8 to 48
            Set Header_Label  item 8 to "ï®‚‡©û 2"
            
        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 112 348

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 112 403

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 112 458

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

    End_Object    // sl065

//AB/     End_Object    // prj
