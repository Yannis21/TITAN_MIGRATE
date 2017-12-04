//AB/ Project v198:cities
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "v198:cities"
//AB/         Set ProjectFileName to "v198.vw"
//AB/         Set GenerateFileName to "v198.vw"

// Project Object Structure
//   v198 is a dbView
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     The_Table is a dbGrid

// Register all objects
Register_Object Cities_DD
Register_Object Country_DD
Register_Object The_Table
Register_Object Towns_DD
Register_Object v198


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use Country.DD
    Use Towns.DD
    Use CITIES.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_v198 FOR v198

    Object v198 is a dbView
        Set Label to "èÊ¢ú†™"
        Set Size to 199 378
        Set Location to 6 11

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Set Main_DD to (Cities_DD(self))
        Set Server to (Cities_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGrid
            Set Main_File to Cities.File_Number
            Set Ordering to 1
            Set Size to 167 364
            Set Location to 10 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Cities.City_id
                Entry_Item Cities.City_descr
                Entry_Item Towns.Town_descr
                Entry_Item Country.Country_descr
            End_Row

            Set Form_Width    item 0 to 56
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 117
            Set Header_Label  item 1 to "é§¶£ò©Âò"
            
            Set Form_Width    item 2 to 93
            Set Header_Label  item 2 to "å¶£Ê™"
            
            Set Form_Width    item 3 to 90
            Set Header_Label  item 3 to "ïÈ®ò"
            
        End_Object    // The_Table

    End_Object    // v198

//AB/     End_Object    // prj
