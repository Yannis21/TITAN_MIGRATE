//AB/ Project v057 : Towns - Nomoi
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v057 : Towns - Nomoi"
//AB/         Set ProjectFileName to "v057.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   v057 is a dbView
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     The_Table is a dbGrid

// Register all objects
Register_Object Country_DD
Register_Object The_Table
Register_Object Towns_DD
Register_Object v057


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use Country.DD
    Use Towns.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v057 FOR v057

    Object v057 is a dbViewSubS
        Set Label to "å¶£¶Â - Ñ¨®Á´ú®ú™ ßú®†¶Æ‚™"
        Set Size to 199 378
        Set Location to 6 11

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Set Main_DD to (Towns_DD(self))
        Set Server to (Towns_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGrid
            Set Main_File to Towns.File_Number
            Set Ordering to 1
            Set Size to 167 364
            Set Location to 10 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Towns.Town_id
                Entry_Item Towns.Town_descr
                Entry_Item Country.Country_descr
            End_Row

            Set Form_Width    item 0 to 80
            Set Header_Label  item 0 to "â‡õ†°Ê™"

            Set Form_Width    item 1 to 154
            Set Header_Label  item 1 to "èú®†ö®ò≠„"

            Set Form_Width    item 2 to 123
            Set Header_Label  item 2 to "ïÈ®ò"

        End_Object    // The_Table

    End_Object    // v057

//AB/     End_Object    // prj
