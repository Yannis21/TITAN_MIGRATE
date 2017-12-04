//AB/ Project Wax
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Wax"
//AB/     Set ProjectFileName to "Wax.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Wax is a dbViewSubS
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     dbGridSub1 is a dbGridSub
//     Textbox5 is a Textbox
//     Wapokat_ is a dbGridSub
//     Wapomast_ is a dbGridSub
//     Textbox6 is a Textbox
//     Textbox7 is a Textbox

// Register all objects
Register_Object dbGridSub1
Register_Object Textbox5
Register_Object Textbox6
Register_Object Textbox7
Register_Object Wapokat_
Register_Object Wapokat_DD
Register_Object Wapomast_
Register_Object Wapomast_DD
Register_Object Wax
Register_Object Wax_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub

Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Wax FOR ;
;
Object Wax is a dbViewSubS
    Set Label to "É†òÆúÂ®û©û Äß¶üû°È§"
    Set Size to 258 474
    Set Location to 10 32

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))
        Set Constrain_File to Wapokat.File_Number
    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))
        Set Constrain_File to Wapomast.File_Number
    End_Object    // Wax_DD

    Set Main_DD to (Wapomast_DD(self))
    Set Server to (Wapomast_DD(self))

    //AB-DDOEnd

    Object dbGridSub1 is a dbGridSub
        Set Main_File to Wax.File_Number
        Set Server to (Wax_DD(self))
        Set Size to 94 239
        Set Location to 143 129
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Wax.Wax_code
            Entry_Item Wax.Wax_descr
        End_Row

        Set Form_Width    item 0 to 50
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 180
        Set Header_Label  item 1 to "èú®†ö®ò≠„ òß¶üû°ú¨´†°¶Á ÆÈ®¶¨ Æ®„©û™"
        

        //AB-StoreStart
        set currentrowcolor to 11468799
        set currentcellcolor to 11468799
        //AB-StoreEnd

    End_Object    // dbGridSub1

    Object Textbox5 is a Textbox
        Set Label to "Äß¶üû°ú¨´†°¶Â ïÈ®¶† ï®„©û™"
        Set TextColor to clNavy
        Set Location to 130 1
        Set Size to 10 394
        Set FontWeight to 800
        Set Border_Style to Border_Normal
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox5

    Object Wapokat_ is a dbGridSub
        Set Main_File to Wapokat.File_Number
        Set Server to (Wapokat_DD(self))
        Set Size to 114 249
        Set Location to 14 3
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Wapokat.Wapokat_code
            Entry_Item Wapokat.Wapokat_descr
            Entry_Item Wapokat.Enhm_sap
            Entry_Item Wapokat.Sap_descr
            Entry_Item Wapokat.Gl
            Entry_Item Wapokat.Oximm1
        End_Row

        Set Form_Width    item 0 to 40
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 70
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 41
        Set Header_Label  item 2 to "Ñ§û£.Sap"
        Set Column_Checkbox_State  item 2 to True
        
        Set Form_Width    item 3 to 31
        Set Header_Label  item 3 to "â‡õ."
        
        Set Form_Width    item 4 to 25
        Set Header_Label  item 4 to "Ç.ä"
        
        Set Form_Width    item 5 to 36
        Set Header_Label  item 5 to "éÆ† ãã"
        Set Column_Checkbox_State  item 5 to True
        

        //AB-StoreStart
        set currentrowcolor to 11468799
        set currentcellcolor to 11468799
        //AB-StoreEnd

    End_Object    // Wapokat_

    Object Wapomast_ is a dbGridSub
        Set Main_File to Wapomast.File_Number
        Set Size to 114 209
        Set Location to 12 255
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Wapomast.Wapomast_code
            Entry_Item Wapomast.Wapomast_descr
        End_Row

        Set Form_Width    item 0 to 50
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 150
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
        set currentrowcolor to 11468799
        set currentcellcolor to 11468799
        //AB-StoreEnd

    End_Object    // Wapomast_

    Object Textbox6 is a Textbox
        Set Label to "âò´ûö¶®Âú™ Äß¶üû°È§"
        Set TextColor to clPurple
        Set Location to 2 4
        Set Size to 10 207
        Set FontWeight to 800
        Set Border_Style to Border_Normal
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox6

    Object Textbox7 is a Textbox
        Set Label to "Äß¶ü„°ú™"
        Set TextColor to clBlue
        Set Location to 1 253
        Set Size to 10 177
        Set FontWeight to 800
        Set Border_Style to Border_Normal
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox7


    //AB-StoreStart
                                                                                                                            
                                                                                                                            
    //AB-StoreEnd

CD_End_Object    // Wax

//AB/ End_Object    // prj
