//AB/ Project slNomism
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "slNomism"
//AB/     Set ProjectFileName to "slNomism.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   slNomism is a dbModalPanelSub
//     Nomisma_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Nomisma_DD
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object slNomism


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use NOMISMA.DD

//AB-IgnoreEnd

Object slNomism is a dbModalPanelSub

    //AB-StoreTopStart
    
    
    
    //AB-StoreTopEnd

    Set Label to "å¶£Â©£ò´ò"
    Set Size to 175 397
    Set Location to 5 7
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Set Main_DD to (Nomisma_DD(self))
    Set Server to (Nomisma_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Nomisma.File_Number
        Set Size to 130 382
        Set Location to 6 6

        Begin_Row
            Entry_Item Nomisma.Nomisma_code
            Entry_Item Nomisma.Nomisma_descr
            Entry_Item Nomisma.Dekadika
            Entry_Item Nomisma.Euro_zone
            Entry_Item Nomisma.Einai_drx
            Entry_Item Nomisma.Einai_euro
        End_Row

        Set Form_Width    item 0 to 49
        Set Header_Label  item 0 to "â‡õ†°¶™"
        
        Set Form_Width    item 1 to 115
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 47
        Set Header_Label  item 2 to "Éú°òõ†°·"
        
        Set Form_Width    item 3 to 55
        Set Header_Label  item 3 to "ÖÈ§û EURO"
        Set Column_Checkbox_State  item 3 to True
        
        Set Form_Width    item 4 to 55
        Set Header_Label  item 4 to "ÑÂ§ò† Éêï"
        Set Column_Checkbox_State  item 4 to True
        
        Set Form_Width    item 5 to 55
        Set Header_Label  item 5 to "ÑÂ§ò† Ñ¨®È"
        Set Column_Checkbox_State  item 5 to True
        

        //AB-StoreStart
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 140 279
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 140 339
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        
        
        Set Visible_State to False
        Set Enabled_State to False
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    
    On_Key Key_Alt+Key_s Send KeyAction To (oSearch_bn(current_object))
    
    
    
    
    //AB-StoreEnd

End_Object    // slNomism

//AB/ End_Object    // prj
