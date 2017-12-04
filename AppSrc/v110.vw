//AB/ Project v110
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "v110"
//AB/     Set ProjectFileName to "v110.vw"
//AB/     Set GenerateFileName to "v110.vw"

// Project Object Structure
//   v110 is a dbView
//     Constrgr_DD is a DataDictionary
//     The_Table is a dbGrid

// Register all objects
Register_Object Constrgr_DD
Register_Object The_Table
Register_Object v110


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg

Use CONSTRGR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_v110 FOR v110

Object v110 is a dbView
    set label to "é£†¢¶† Ñ®ö¶¢·ô‡§" 
    Set Size to 145 265
    Set Location to 6 6

    //AB-DDOStart

    Object Constrgr_DD is a Constrgr_DataDictionary
    End_Object    // Constrgr_DD

    Set Main_DD to (Constrgr_DD(self))
    Set Server to (Constrgr_DD(self))

    //AB-DDOEnd

    Object The_Table is a dbGrid
        Set Main_File to Constrgr.File_Number
        Set Size to 117 250
        Set Location to 8 5
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Constrgr.Cntgrp_code
            Entry_Item Constrgr.Cntgrp_descr
        End_Row

        Set Form_Width    item 0 to 70
        set header_label  item 0 to "â‡õ†°Ê™ é£Â¢¶¨" 
        
        Set Form_Width    item 1 to 171
        set header_label  item 1 to "èú®†ö®ò≠„" 
        
    End_Object    // The_Table

End_Object    // v110

//AB/ End_Object    // prj
