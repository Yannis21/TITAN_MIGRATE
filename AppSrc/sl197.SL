//AB/ Project sl197:areas
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl197:areas"
//AB/         Set ProjectFileName to "sl197.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl197 is a dbModalPanelSub
//     Areas_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl197


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use AREAS.DD
    
    //AB-IgnoreEnd

    Object sl197 is a dbModalPanelSub

        //AB-StoreTopStart
                    
        //AB-StoreTopEnd

        Set Label to "Ä®ÆúÂ¶ èú®†¶ÆÈ§"
        Set Size to 148 297
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Areas_DD is a Areas_DataDictionary

            //AB-StoreStart
                                    
            //AB-StoreEnd

        End_Object    // Areas_DD

        Set Main_DD to (Areas_DD(self))
        Set Server to (Areas_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Areas.File_Number
            Set Ordering to 2
            Set Size to 105 280
            Set Location to 5 5
            Set Export_Item_State to TRUE

            Begin_Row
                Entry_Item Areas.Area_id
                Entry_Item Areas.Area_descr
                Entry_Item Areas.Area_site
            End_Row

            Set Form_Width    item 0 to 45
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 192
            Set Header_Label  item 1 to "é§¶£ò©Âò"
            
            Set Form_Width    item 2 to 35
            Set Header_Label  item 2 to "í¶£‚ò™"
            

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

    End_Object    // sl197

//AB/     End_Object    // prj
