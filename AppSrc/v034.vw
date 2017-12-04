//AB/ Project V034:BAXIOKAT
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V034:BAXIOKAT"
//AB/     Set ProjectFileName to "V034.VW"

// Project Object Structure
//   V034 is a dbViewSubs
//     Baxiokat_DD is a DataDictionary
//     Baxiokat_Baxiokat_Code is a dbFormSub
//     Baxiokat_Baxiokat_Descr is a dbFormSub
//     Baxiokat_Baxiokat_Type is a dbComboFormSub
//     Baxiokat_Baxio_Lcode is a dbFormSub
//     Baxiokat_Baxiokat_Yn5390 is a dbComboFormSub
//     Baxiokat_Baxiokat_Bank is a dbComboFormSub
//     Baxiokat_Baxiokat_Lno is a dbFormSub
//     Baxiokat_Baxiokat_Formul is a dbComboFormSub
//     Textbox1 is a Textbox
//     Textbox2 is a Textbox
//     Textbox3 is a Textbox
//     Textbox4 is a Textbox
//     Textbox5 is a Textbox
//     Textbox6 is a Textbox
//     Textbox7 is a Textbox
//     Textbox8 is a Textbox

// Register all objects
Register_Object Baxiokat_Baxio_Lcode
Register_Object Baxiokat_Baxiokat_Bank
Register_Object Baxiokat_Baxiokat_Code
Register_Object Baxiokat_Baxiokat_Descr
Register_Object Baxiokat_Baxiokat_Formul
Register_Object Baxiokat_Baxiokat_Lno
Register_Object Baxiokat_Baxiokat_Type
Register_Object Baxiokat_Baxiokat_Yn5390
Register_Object Baxiokat_DD
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object Textbox5
Register_Object Textbox6
Register_Object Textbox7
Register_Object Textbox8
Register_Object V034


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbCmbfrm.Sub

Use BAXIOKAT.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_V034 FOR ;
;
Object V034 is a dbViewSubs
    Set Label to "íÁß¶† Ä•†¶ö®·≠‡§"
    Set Size to 148 378
    Set Location to 3 4

    //AB-DDOStart

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Set Main_DD to (Baxiokat_DD(self))
    Set Server to (Baxiokat_DD(self))

    //AB-DDOEnd

    Object Baxiokat_Baxiokat_Code is a dbFormSub
        Entry_Item Baxiokat.Baxiokat_code
        Set Size to 13 42
        Set Location to 7 122
        Set Label_Col_Offset to 110
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Baxiokat_Baxiokat_Code

    Object Baxiokat_Baxiokat_Descr is a dbFormSub
        Entry_Item Baxiokat.Baxiokat_descr
        Set Size to 13 246
        Set Location to 22 122
        Set Label_Col_Offset to 110
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        //AB-StoreEnd

    End_Object    // Baxiokat_Baxiokat_Descr

    Object Baxiokat_Baxiokat_Type is a dbComboFormSub
        Entry_Item Baxiokat.Baxiokat_type
        Set Size to 13 132
        Set Location to 36 122
        Set Label_Col_Offset to 110
    End_Object    // Baxiokat_Baxiokat_Type

    Object Baxiokat_Baxio_Lcode is a dbFormSub
        Entry_Item Baxiokat.Baxio_lcode
        Set Size to 13 90
        Set Location to 50 122
        Set Label_Col_Offset to 110
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Baxiokat_Baxio_Lcode

    Object Baxiokat_Baxiokat_Yn5390 is a dbComboFormSub
        Entry_Item Baxiokat.Baxiokat_yn5390
        Set Size to 13 66
        Set Location to 71 122
        Set Label_Col_Offset to 110
    End_Object    // Baxiokat_Baxiokat_Yn5390

    Object Baxiokat_Baxiokat_Bank is a dbComboFormSub
        Entry_Item Baxiokat.Baxiokat_bank
        Set Size to 13 66
        Set Location to 85 122
        Set Label_Col_Offset to 110
    End_Object    // Baxiokat_Baxiokat_Bank

    Object Baxiokat_Baxiokat_Lno is a dbFormSub
        Entry_Item Baxiokat.Baxiokat_lno
        Set Size to 13 90
        Set Location to 100 122
        Set Label_Col_Offset to 110
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Baxiokat_Baxiokat_Lno

    Object Baxiokat_Baxiokat_Formul is a dbComboFormSub
        Entry_Item Baxiokat.Baxiokat_formul
        Set Size to 13 132
        Set Location to 114 122
        Set Label_Col_Offset to 110
    End_Object    // Baxiokat_Baxiokat_Formul

    Object Textbox1 is a Textbox
        Set Label to "â‡õ†°Ê™ íÁß¶¨ Ä•†¶ö®·≠¶¨:"
        Set Auto_Size_State to FALSE
        Set Location to 8 11
        Set Size to 10 98
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox1

    Object Textbox2 is a Textbox
        Set Label to "èú®†ö®ò≠„ íÁß¶¨ Ä•†¶ö®·≠¶¨:"
        Set Auto_Size_State to FALSE
        Set Location to 22 11
        Set Size to 10 106
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox2

    Object Textbox3 is a Textbox
        Set Label to "Ñ†©ß®ò°´‚¶ / è¢û®‡´‚¶:"
        Set Auto_Size_State to FALSE
        Set Location to 38 11
        Set Size to 10 95
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox3

    Object Textbox4 is a Textbox
        Set Label to "íú¢ú¨´òÂ¶™ °‡õ†°Ê™:"
        Set Location to 52 11
        Set Size to 10 74
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox4

    Object Textbox5 is a Textbox
        Set Label to "ãûÆò§¶ö®ò≠û£‚§ú™ Ñß†´òö‚™;"
        Set Location to 71 11
        Set Size to 10 109
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox5

    Object Textbox6 is a Textbox
        Set Label to "í®·ßúùò"
        Set Location to 86 11
        Set Size to 10 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox6

    Object Textbox7 is a Textbox
        Set Label to "íú¢ú¨´òÂ¶™ Ä®†ü£Ê™:"
        Set Location to 100 11
        Set Size to 10 81
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox7

    Object Textbox8 is a Textbox
        Set Label to "Ä¢öÊ®†ü£¶™ Check Digit:"
        Set Location to 114 11
        Set Size to 10 91
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox8


    //AB-StoreStart
        
    //AB-StoreEnd

CD_End_Object    // V034

//AB/ End_Object    // prj
