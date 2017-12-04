//AB/ Project sl060
//AB/     Object prj is a LOOKUP_Project
//AB/         Set ProjectName to "sl060"
//AB/         Set ProjectFileName to "sl060.SL"
//AB/         Set GenerateFileName to "NONAME"

    //AB-IgnoreStart




    Use ISOTIMIA.DD

    //AB-IgnoreEnd

    CD_Popup_Object sl060 is a dbModalPanelSub

        //AB-StoreTopStart
        Property Integer Fragmasl060 Public 0

        //AB-StoreTopEnd

        Set Minimize_Icon to FALSE
        set label to "à©¶´†£Âú™" 
        Set Size to 148 353
        Set Location to 4 5

        //AB-DDOStart

        Object Isotimia_DD is a Isotimia_DataDictionary

            //AB-StoreTopStart

            //AB-StoreTopEnd


            //AB-StoreStart
            Begin_Constraints
                Local Integer liNomisma
                Get Fragmasl060 to liNomisma
                If liNomisma ne 0 Constrain Isotimia.Nomisma_Code eq liNomisma
            End_Constraints
            //AB-StoreEnd

        End_Object    // Isotimia_DD

        Set Main_DD to (Isotimia_DD(Current_Object))
        Set Server to (Isotimia_DD(Current_Object))

        //AB-DDOEnd

        Object oSelList is a dbListSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Main_File to Isotimia.File_Number
            Set Size to 105 337
            Set Location to 6 6

            Begin_Row
                Entry_Item Isotimia.Isotimia_hmnia
                Entry_Item Isotimia.Isotimia_agora
                Entry_Item Isotimia.Isotimia_polhsh
                Entry_Item Isotimia.Isotimia_fixing
                Entry_Item Isotimia.Isotimia_privat
            End_Row

            Set Form_Width    item 0 to 53
            set header_label  item 0 to "Ü£ú®¶£û§Âò" 

            Set Form_Width    item 1 to 66
            set header_label  item 1 to "Äö¶®·" 

            Set Form_Width    item 2 to 71
            set header_label  item 2 to "èÈ¢û©û" 

            Set Form_Width    item 3 to 70
            Set Header_Label  item 3 to "Fixing"

            Set Form_Width    item 4 to 70
            set header_label  item 4 to "è®¶©‡ß†°„" 


            //AB-StoreStart
            Property Integer StoreFragmasl060 Public 0


            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmasl060 to (Fragmasl060(Self))
            End_Procedure

            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set Fragmasl060 to (StoreFragmasl060(Self))
            End_Procedure

            Procedure Activating
               Forward Send Activating
               Send Rebuild_Constraints to (Isotimia_DD(Self))
            End_Procedure

            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 115 183

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 115 238

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 115 293

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

    CD_End_Object    // sl060

//AB/     End_Object    // prj
