//AB/ Project sl031r:Btypkin with recr 1st col
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl031r:Btypkin with recr 1st col"
//AB/         Set ProjectFileName to "sl031r.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   SL031r is a dbModalPanelSub
//     Btypkin_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Btypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL031r


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use BTYPKIN.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object SL031r is a dbModalPanelSub
        set label to "â†§„©ú†™  Ä•†¶ö®·≠‡§" 
        Set Size to 213 362
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Btypkin_DD is a Btypkin_DataDictionary
        End_Object    // Btypkin_DD

        Set Main_DD to (Btypkin_DD(self))
        Set Server to (Btypkin_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Btypkin.File_Number
            Set Size to 173 347
            Set Location to 2 6

            Begin_Row
                Entry_Item Btypkin.Btypkin_recr
                Entry_Item Btypkin.Btypkin_code
                Entry_Item Btypkin.Btypkin_descr
                Entry_Item Btypkin.Gtypkin_code
                Entry_Item Btypkin.Ctypkin_code
                Entry_Item Btypkin.Vtypkin_code
                Entry_Item Btypkin.Btypkin_anti_xp
            End_Row

            Set Form_Width    item 0 to 58
            Set Header_Label  item 0 to "Btypkin recr"
            
            Set Form_Width    item 1 to 36
            set header_label  item 1 to "âÂ§û©û" 
            
            Set Form_Width    item 2 to 86
            set header_label  item 2 to "èú®†ö®ò≠„" 
            
            Set Form_Width    item 3 to 36
            set header_label  item 3 to "âÂ§û©û Çä" 
            
            Set Form_Width    item 4 to 36
            set header_label  item 4 to "â†§„©ú†™ èú¢ò´È§        " 
            
            Set Form_Width    item 5 to 36
            set header_label  item 5 to "âÂ§û©û è®¶£ûüú¨´È§" 
            
            Set Form_Width    item 6 to 53
            set header_label  item 6 to "ïè ë¨§ò¢¢ò©¶£‚§¶¨" 
            

            //AB-StoreStart
            Set Column_Option Item 0 to NoEnter True
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 178 194

            //AB-StoreStart
            Procedure OnClick
                Send OK To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 178 249

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 178 304

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

    CD_End_Object    // SL031r

//AB/     End_Object    // prj
