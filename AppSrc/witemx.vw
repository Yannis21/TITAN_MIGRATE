//AB/ Project Witemx
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Witemx"
//AB/         Set ProjectFileName to "Witemx.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Witemx is a dbViewSubS
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Witemx_Witemx_Code is a dbFormSub
//     Witemx_Witemx_Descr is a dbFormSub
//     Witemkat_Witemkat_Descr is a dbFormSub
//     Units_Units_Descr is a dbFormSub
//     Item_Item_Code is a dbFormSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox

// Register all objects
Register_Object Item_DD
Register_Object Item_Item_Code
Register_Object Syscurxr_DD
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Units_DD
Register_Object Units_Units_Descr
Register_Object Witemkat_DD
Register_Object Witemkat_Witemkat_Descr
Register_Object Witemx
Register_Object Witemx_DD
Register_Object Witemx_Witemx_Code
Register_Object Witemx_Witemx_Descr


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub

    Use WITEMKAT.DD
    Use UNITS.DD
    Use ITEM.DD
    Use WITEMX.DD
    Use SYSCURXR.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Witemx FOR ;
    ;
    Object Witemx is a dbViewSubS
        set label to "„å›ž •¨ã©œàª" 
        Set Size to 89 461
        Set Location to 9 7

        //AB-DDOStart

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Item_DD is a Item_DataDictionary
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Units_DD(self))
        End_Object    // Item_DD

        Object Witemx_DD is a Witemx_DataDictionary
            Set DDO_Server to (Item_DD(self))
        End_Object    // Witemx_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Witemx_DD(self))
        Set Server to (Witemx_DD(self))

        //AB-DDOEnd

        Object Witemx_Witemx_Code is a dbFormSub
            Entry_Item Witemx.Witemx_code
            Set Size to 13 73
            Set Location to 54 97
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Witemx_Witemx_Code

        Object Witemx_Witemx_Descr is a dbFormSub
            Entry_Item Witemx.Witemx_descr
            Set Size to 13 249
            Set Location to 54 172
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Witemx_Witemx_Descr

        Object Witemkat_Witemkat_Descr is a dbFormSub
            Entry_Item Witemkat.Witemkat_descr
            Set Size to 13 322
            Set Location to 7 97
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Witemkat_Witemkat_Descr

        Object Units_Units_Descr is a dbFormSub
            entry_item units.units_descr 
            Set Size to 13 73
            Set Location to 22 97
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Units_Units_Descr

        Object Item_Item_Code is a dbFormSub
            Entry_Item Item.Item_code
            Set Size to 13 74
            Set Location to 38 97
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Item_Item_Code

        Object Textbox1 is a Textbox
            set label to "‰˜«žš¦¨å˜ „ ›¦¬ª" 
            Set Location to 6 5
            Set Size to 10 64
        End_Object    // Textbox1

        Object Textbox2 is a Textbox
            set label to "‹¦¤á›˜ ‹â«¨ž©žª" 
            Set Location to 23 5
            Set Size to 10 64
        End_Object    // Textbox2

        Object Textbox3 is a Textbox
            set label to "‰à› ¡æª „ ›¦¬ª" 
            Set Location to 39 5
            Set Size to 10 58
        End_Object    // Textbox3

        Object Textbox4 is a Textbox
            set label to "‰à› ¡æª „å›¦¬ª •¨ã©œàª" 
            Set Location to 55 6
            Set Size to 10 87
        End_Object    // Textbox4


        //AB-StoreStart
                                
                                
                                
                                
        //AB-StoreEnd

    CD_End_Object    // Witemx

//AB/     End_Object    // prj
