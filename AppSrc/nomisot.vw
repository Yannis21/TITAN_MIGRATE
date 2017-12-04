//AB/ Project nomisot
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "nomisot"
//AB/     Set ProjectFileName to "Nomisot.vw"

// Project Object Structure
//   nomisot is a dbViewSubS
//     Nomisma_DD is a DataDictionary
//     Isotimia_DD is a DataDictionary
//     Nomisma_Nomisma_Code is a dbFormSub
//     Isotimia_ is a dbGridSub
//     Nomisma_Euro_Zone is a dbCheckBoxSub
//     Nomisma_Dekadika is a dbFormSub
//     Nomisma_Einai_Drx is a dbCheckBoxSub
//     Nomisma_Einai_Euro is a dbCheckBoxSub
//     Nomisma_Monades is a dbFormSub
//     Nomisma_Kl_Isot_Euro is a dbFormSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox

// Register all objects
Register_Object Isotimia_
Register_Object Isotimia_DD
Register_Object Nomisma_DD
Register_Object Nomisma_Dekadika
Register_Object Nomisma_Einai_Drx
Register_Object Nomisma_Einai_Euro
Register_Object Nomisma_Euro_Zone
Register_Object Nomisma_Kl_Isot_Euro
Register_Object Nomisma_Monades
Register_Object Nomisma_Nomisma_Code
Register_Object nomisot
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbGrid.Sub
Use dbChkbox.Sub

Use NOMISMA.DD
Use ISOTIMIA.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_nomisot FOR ;
;
Object nomisot is a dbViewSubS
    Set Label to "ç‚§ò å¶£Â©£ò´ò / à©¶´†£Âú™"
    Set Size to 250 471
    Set Location to 2 3

    //AB-DDOStart

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Isotimia_DD is a Isotimia_DataDictionary
        Set DDO_Server to (Nomisma_DD(self))
        Set Constrain_File to Nomisma.File_Number
    End_Object    // Isotimia_DD

    Set Main_DD to (Nomisma_DD(self))
    Set Server to (Nomisma_DD(self))

    //AB-DDOEnd

    Object Nomisma_Nomisma_Code is a dbFormSub
        Entry_Item Nomisma.Nomisma_code
        Set Size to 13 104
        Set Location to 5 45
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Nomisma_Nomisma_Code

    Object Isotimia_ is a dbGridSub

        //AB-StoreTopStart
                                                                                    
        //AB-StoreTopEnd

        Set Main_File to Isotimia.File_Number
        Set Server to (Isotimia_DD(self))
        Set Size to 171 456
        Set Location to 60 4
        Set Color to 14280447
        Set CurrentRowColor to 11783679
        Set CurrentRowTextColor to clNavy
        Set CurrentCellColor to 11783679
        Set CurrentCellTextColor to clNavy
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Isotimia.Isotimia_hmnia
            Entry_Item Isotimia.Isotimia_agora
            Entry_Item Isotimia.Isotimia_polhsh
            Entry_Item Isotimia.Isotimia_fixing
            Entry_Item Isotimia.Isotimia_privat
            Entry_Item Isotimia.Isotimia_euro
            Entry_Item Isotimia.Poia_metatrepei
        End_Row

        Set Form_Width    item 0 to 63
        Set Header_Label  item 0 to "Ü£ú®¶£û§Âò"
        
        Set Form_Width    item 1 to 65
        Set Header_Label  item 1 to "Äö¶®·"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "èÈ¢û©û"
        
        Set Form_Width    item 3 to 65
        Set Header_Label  item 3 to "Fixing"
        
        Set Form_Width    item 4 to 65
        Set Header_Label  item 4 to "àõ†òÂ´ú®û"
        
        Set Form_Width    item 5 to 65
        Set Header_Label  item 5 to "à©¶´†£Âò Ñ¨®È"
        
        Set Form_Width    item 6 to 63
        Set Header_Label  item 6 to "ãú´ò´®¶ß„"
        

        //AB-StoreStart
                                                                                    
        //AB-StoreEnd

    End_Object    // Isotimia_

    Object Nomisma_Euro_Zone is a dbCheckBoxSub
        Entry_Item Nomisma.Euro_zone
        Set Label to "Euro Zone"
        Set Size to 13 60
        Set Location to 2 249
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Euro_Zone

    Object Nomisma_Dekadika is a dbFormSub
        Entry_Item Nomisma.Dekadika
        Set Size to 13 21
        Set Location to 6 203
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Dekadika

    Object Nomisma_Einai_Drx is a dbCheckBoxSub
        Entry_Item Nomisma.Einai_drx
        Set Label to "Einai Drx"
        Set Size to 13 60
        Set Location to 33 249
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Einai_Drx

    Object Nomisma_Einai_Euro is a dbCheckBoxSub
        Entry_Item Nomisma.Einai_euro
        Set Label to "Einai Euro"
        Set Size to 13 60
        Set Location to 17 249
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Einai_Euro

    Object Nomisma_Monades is a dbFormSub
        Entry_Item Nomisma.Monades
        Set Size to 13 104
        Set Location to 21 45
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Monades

    Object Nomisma_Kl_Isot_Euro is a dbFormSub
        Entry_Item Nomisma.Kl_isot_euro
        Set Size to 13 104
        Set Location to 37 45
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Kl_Isot_Euro

    Object Textbox1 is a Textbox
        Set Label to "åÊ£†©£ò"
        Set Location to 7 7
        Set Size to 10 33
    End_Object    // Textbox1

    Object Textbox2 is a Textbox
        Set Label to "ã¶§·õú™"
        Set Location to 23 7
        Set Size to 10 32
    End_Object    // Textbox2

    Object Textbox3 is a Textbox
        Set Label to "à©¶´.Ñ¨®È"
        Set Location to 39 7
        Set Size to 10 34
    End_Object    // Textbox3

    Object Textbox4 is a Textbox
        Set Label to "Éú°òõ†°·"
        Set Location to 7 158
        Set Size to 10 40
    End_Object    // Textbox4

CD_End_Object    // nomisot

//AB/ End_Object    // prj
