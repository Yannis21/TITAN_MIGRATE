//AB/ Project V197:AREAS
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "V197:AREAS"
//AB/         Set ProjectFileName to "V197.vw"
//AB/         Set GenerateFileName to "V197.vw"

// Project Object Structure
//   V197 is a dbView
//     Areas_DD is a DataDictionary
//     The_Table is a dbGrid

// Register all objects
Register_Object Areas_DD
Register_Object The_Table
Register_Object V197


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg

    Use AREAS.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_V197 FOR V197

    Object V197 is a dbView
        Set Label to "èú®†¶Æ‚™"
        Set Size to 114 287
        Set Location to 6 6

        //AB-DDOStart

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Set Main_DD to (Areas_DD(self))
        Set Server to (Areas_DD(self))

        //AB-DDOEnd

        Object The_Table is a dbGrid
            Set Main_File to Areas.File_Number
            Set Ordering to 1
            Set Size to 81 272
            Set Location to 7 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Areas.Area_id
                Entry_Item Areas.Area_descr
                Entry_Item Areas.Area_site
            End_Row

            Set Form_Width    item 0 to 50
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 180
            Set Header_Label  item 1 to "é§¶£ò©Âò"
            
            Set Form_Width    item 2 to 35
            Set Header_Label  item 2 to "í¶£‚ò™"
            
        End_Object    // The_Table

    End_Object    // V197

//AB/     End_Object    // prj
