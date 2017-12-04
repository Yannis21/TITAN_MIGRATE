//AB/ Project sl007r:Ctypkin lookup with RecR 1st Col
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl007r:Ctypkin lookup with RecR 1st Col"
//AB/         Set ProjectFileName to "sl007r.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl007r is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
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
Register_Object sl007r


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CTYPKIN.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object sl007r is a dbModalPanelSub
        Set Label to "Ctypkin"
        Set Size to 148 480
        Set Location to 12 16
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Set Main_DD to (Ctypkin_DD(self))
        Set Server to (Ctypkin_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Ctypkin.File_Number
            Set Size to 105 465
            Set Location to 6 6

            Begin_Row
                Entry_Item Ctypkin.Ctypkin_recr
                Entry_Item Ctypkin.Ctypkin_code
                Entry_Item Ctypkin.Ctypkin_descr
                Entry_Item Ctypkin.Ctypkin_anti
            End_Row

            Set Form_Width    item 0 to 72
            Set Header_Label  item 0 to "RecR"
            
            Set Form_Width    item 1 to 58
            Set Header_Label  item 1 to "Ctypkin code"
            
            Set Form_Width    item 2 to 209
            Set Header_Label  item 2 to "Ctypkin descr"
            
            Set Form_Width    item 3 to 120
            Set Header_Label  item 3 to "Ctypkin anti"
            

            //AB-StoreStart
            
            Set Column_Option Item 0 to Noenter True
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            set label to "&Ñß†¢¶ö„" 
            Set Location to 114 312

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            set label to "&Ä°Á®‡©û" 
            Set Location to 114 367

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            set label to "Ä&§òù„´û©û" 
            Set Location to 114 422

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

    CD_End_Object    // sl007r

//AB/     End_Object    // prj
