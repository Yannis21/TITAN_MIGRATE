//AB/ Project Units
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Units"
//AB/     Set ProjectFileName to "Units.vw"
//AB/     Set GenerateFileName to "Units.vw"

// Project Object Structure
//   Units is a dbViewSubS
//     Units_DD is a DataDictionary
//     dbGridSub1 is a dbGridSub

// Register all objects
Register_Object dbGridSub1
Register_Object Units
Register_Object Units_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub

Use UNITS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Units FOR Units

Object Units is a dbViewSubS
    Set Label to "ã¶§·õú™ ã‚´®û©û™"
    Set Size to 159 213
    Set Location to 4 15

    //AB-DDOStart

    Object Units_DD is a Units_DataDictionary
    End_Object    // Units_DD

    Set Main_DD to (Units_DD(self))
    Set Server to (Units_DD(self))

    //AB-DDOEnd

    Object dbGridSub1 is a dbGridSub
        Set Main_File to Units.File_Number
        Set Ordering to 1
        Set Size to 135 203
        Set Location to 4 3
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Units.Units_code
            Entry_Item Units.Units_descr
        End_Row

        Set Form_Width    item 0 to 60
        Set Header_Label  item 0 to "â‡õ†°Ê™"
        
        Set Form_Width    item 1 to 133
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
    End_Object    // dbGridSub1

End_Object    // Units

//AB/ End_Object    // prj
