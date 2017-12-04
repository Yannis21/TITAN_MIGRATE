//AB/ Project v058 : Countries
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v058 : Countries"
//AB/         Set ProjectFileName to "v058.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   v058 is a dbView
//     Country_DD is a DataDictionary
//     The_Table is a dbGrid

// Register all objects
Register_Object Country_DD
Register_Object The_Table
Register_Object v058


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use Country.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v058 FOR v058

    Object v058 is a dbView
        Set Label to "ïÈ®ú™"
        Set Size to 199 378
        Set Location to 6 11

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Set Main_DD to (Country_DD(self))
        Set Server to (Country_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGrid
            Set Main_File to Country.File_Number
            Set Ordering to 1
            Set Size to 167 364
            Set Location to 10 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Country.Country_id
                Entry_Item Country.Country_descr
            End_Row

            Set Form_Width    item 0 to 100
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 256
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
        End_Object    // The_Table

    End_Object    // v058

//AB/     End_Object    // prj
