//AB/ Project sl182:diakiniseis eidon
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl182:diakiniseis eidon"
//AB/     Set ProjectFileName to "sl182.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl182 is a dbModalPanelSub
//     Witemxtr_DD is a DataDictionary
//     Witemxtd_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl182
Register_Object Witemxtd_DD
Register_Object Witemxtr_DD



//AB-StoreTopStart
open wax
//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WITEMXTR.DD
Use WITEMXTD.DD

//AB-IgnoreEnd

Object sl182 is a dbModalPanelSub

    //AB-StoreTopStart
                    
    //AB-StoreTopEnd

    Set Label to "Éú¢´Âò Ñ©‡´ú®†°„™ É†ò°Â§û©û™ Ñ†õÈ§"
    Set Size to 262 331
    Set Location to 5 72
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Witemxtr_DD is a Witemxtr_DataDictionary
    End_Object    // Witemxtr_DD

    Object Witemxtd_DD is a Witemxtd_DataDictionary
        Set DDO_Server to (Witemxtr_DD(self))
        Set Constrain_File to Witemxtr.File_Number
    End_Object    // Witemxtd_DD

    Set Main_DD to (Witemxtr_DD(self))
    Set Server to (Witemxtr_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Witemxtr.File_Number
        Set Size to 220 311
        Set Location to 6 6

        Begin_Row
            Entry_Item Witemxtr.Hmnia
            Entry_Item Witemxtr.Descr
            Entry_Item Witemxtr.Qty
            Entry_Item Witemxtr.Ekleise
        End_Row

        Set Form_Width    item 0 to 48
        Set Header_Label  item 0 to "Ü£/§Âò"
        
        Set Form_Width    item 1 to 200
        Set Header_Label  item 1 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 2 to 35
        Set Header_Label  item 2 to "è¶©¶´."
        
        Set Form_Width    item 3 to 20
        Set Header_Label  item 3 to "éâ"
        Set Column_Checkbox_State  item 3 to True
        

        //AB-StoreStart
        
        Procedure End_Construct_Object
            String  sNom
            Integer iDecs
            Forward Send End_Construct_Object
            Move SysCurxr.C_Code0 to sNom
            Clear Nomisma
            Move sNom to Nomisma.Nomisma_Code
            Find eq Nomisma By Index.1 // Nomisma:Index.1:Nomisma_Code
            If (Found=1)    Move Nomisma.Dekadika to iDecs
            Else            Move 0 to iDecs
        
            // é®†ù¶¨£ú ß‡™ ò§ ´¶ ôò©†°Ê §¶£†©£ò Æ®„©û™ ÉÑå úÆú† õú°òõ†°·
            // ´Ê´ú ú•' ¶®†©£¶Á ô·ù¶¨£ú ú£ú†™ 2
            If (iDecs=0) Move 2 to iDecs
            //
            Set Points          Item 2 to      2
        
        End_Procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 230 158
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 230 214
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û..."
        Set Location to 230 268
        Set Form_TypeFace Item 0 to "MS Sans Serif"

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

End_Object    // sl182


//AB-StoreStart
                                    
//AB-StoreEnd

//AB/ End_Object    // prj
