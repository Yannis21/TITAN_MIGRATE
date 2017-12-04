//AB/ Project sl036r:Barticle with recr 1st col
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl036r:Barticle with recr 1st col"
//AB/         Set ProjectFileName to "sl036r.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl036r is a dbModalPanelSub
//     Btypkin_DD is a DataDictionary
//     Barticl_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Barticl_DD
Register_Object Btypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl036r


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use BTYPKIN.DD
    Use BARTICL.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object sl036r is a dbModalPanelSub
        set label to "â†§„©ú†™  Ä•†¶ö®·≠‡§" 
        Set Size to 148 440
        Set Location to 4 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Btypkin_DD is a Btypkin_DataDictionary
        End_Object    // Btypkin_DD

        Object Barticl_DD is a Barticl_DataDictionary
            Set DDO_Server to (Btypkin_DD(self))
        End_Object    // Barticl_DD

        Set Main_DD to (Barticl_DD(self))
        Set Server to (Barticl_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Barticl.File_Number
            Set Server to (Btypkin_DD(self))
            Set Size to 105 424
            Set Location to 6 6

            Begin_Row
                Entry_Item Barticl.Barticl_recr
                Entry_Item Barticl.Barticl_no
                Entry_Item Barticl.Barticl_hmnia
                Entry_Item Btypkin.Btypkin_code
                Entry_Item Btypkin.Btypkin_descr
            End_Row

            Set Form_Width    item 0 to 56
            Set Header_Label  item 0 to "Barticl recr"
            
            Set Form_Width    item 1 to 84
            set header_label  item 1 to "Ä®†ü£Ê™" 
            
            Set Form_Width    item 2 to 60
            set header_label  item 2 to "Ü£ú®¶£û§Âò" 
            
            Set Form_Width    item 3 to 38
            set header_label  item 3 to "âÂ§û©û" 
            
            Set Form_Width    item 4 to 179
            set header_label  item 4 to "èú®†ö®ò≠„" 
            

            //AB-StoreStart
            Set Column_Option Item 0 to NoEnter True
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 114 271

            //AB-StoreStart
            Procedure OnClick
                Send OK To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 114 327

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 114 381

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

    CD_End_Object    // sl036r

//AB/     End_Object    // prj
