//AB/ Project Wapokat
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Wapokat"
//AB/         Set ProjectFileName to "Wapokat.vw"
//AB/         Set GenerateFileName to "Wapokat.vw"

// Project Object Structure
//   Wapokat is a dbViewSubS
//     Wapokat_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Wapokat_Wapokat_code is a dbForm
//       Wapokat_Wapokat_descr is a dbForm
//       Textbox1 is a Textbox
//       Textbox2 is a Textbox

// Register all objects
Register_Object Container1
Register_Object Textbox1
Register_Object Textbox2
Register_Object Wapokat
Register_Object Wapokat_DD
Register_Object Wapokat_Wapokat_code
Register_Object Wapokat_Wapokat_descr


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg

    Use WAPOKAT.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Wapokat FOR Wapokat

    Object Wapokat is a dbViewSubS
        Set Label to "âò´ûö¶®Âú™ Äß¶üû°È§"
        Set Size to 66 284
        Set Location to 6 4

        //AB-DDOStart

        Object Wapokat_DD is a Wapokat_DataDictionary
        End_Object    // Wapokat_DD

        Set Main_DD to (Wapokat_DD(self))
        Set Server to (Wapokat_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_None
            Set Size to 40 268
            Set Location to 5 5
            Object Wapokat_Wapokat_code is a dbForm
                Entry_Item Wapokat.Wapokat_code
                Set Size to 13 46
                Set Location to 5 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Wapokat_Wapokat_code

            Object Wapokat_Wapokat_descr is a dbForm
                Entry_Item Wapokat.Wapokat_descr
                Set Size to 13 186
                Set Location to 20 66
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Wapokat_Wapokat_descr

            Object Textbox1 is a Textbox
                Set Label to "â‡õ†°Ê™"
                Set Location to 7 2
                Set Size to 10 40
            End_Object    // Textbox1

            Object Textbox2 is a Textbox
                Set Label to "èú®†ö®ò≠„"
                Set Location to 20 2
                Set Size to 10 61
            End_Object    // Textbox2

        End_Object    // Container1

    End_Object    // Wapokat

//AB/     End_Object    // prj
