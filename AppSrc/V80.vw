//AB/ Project V80:kathgories pagion
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V80:kathgories pagion"
//AB/     Set ProjectFileName to "V80.vw"
//AB/     Set GenerateFileName to "V80.vw"

// Project Object Structure
//   V80 is a dbView
//     Pagkat_DD is a DataDictionary
//     Pagkat_ is a dbGridSub

// Register all objects
Register_Object Pagkat_
Register_Object Pagkat_DD
Register_Object V80


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbGrid.Sub

Use PAGKAT.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V80 FOR V80

Object V80 is a dbView
    Set Label to "âò´ûö¶®Âú™ èòöÂ‡§"
    Set Size to 270 413
    Set Location to 2 5

    //AB-DDOStart

    Object Pagkat_DD is a Pagkat_DataDictionary
    End_Object    // Pagkat_DD

    Set Main_DD to (Pagkat_DD(self))
    Set Server to (Pagkat_DD(self))

    //AB-DDOEnd

    Object Pagkat_ is a dbGridSub
        Set Main_File to Pagkat.File_Number
        Set Size to 242 402
        Set Location to 4 1
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Pagkat.Pagkat_code
            Entry_Item Pagkat.Pagkat_descr
            Entry_Item Pagkat.Pagkat_pososto
            Entry_Item Pagkat.Pagia_code
            Entry_Item Pagkat.Codegl
        End_Row

        Set Form_Width    item 0 to 80
        Set Header_Label  item 0 to "â‡õ.°ò´ûö¶®Âò™"
        
        Set Form_Width    item 1 to 150
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 60
        Set Header_Label  item 2 to "% ÄßÊ©ôú©û"
        
        Set Form_Width    item 3 to 54
        Set Header_Label  item 3 to "Ä/Ä ßòöÂ¶¨"
        
        Set Form_Width    item 4 to 50
        Set Header_Label  item 4 to "â‡õ.Ç.ä"
        

        //AB-StoreStart
        set column_shadow_state item 3 to true
        
        
        
        //AB-StoreEnd

    End_Object    // Pagkat_

End_Object    // V80

//AB/ End_Object    // prj
