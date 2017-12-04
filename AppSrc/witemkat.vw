//AB/ Project Witemkat
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Witemkat"
//AB/         Set ProjectFileName to "Witemkat.vw"
//AB/         Set GenerateFileName to "Witemkat.vw"

// Project Object Structure
//   Witemkat is a dbViewSubS
//     Witemkat_DD is a DataDictionary
//     dbGridSub1 is a dbGridSub

// Register all objects
Register_Object dbGridSub1
Register_Object Witemkat
Register_Object Witemkat_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub

    Use WITEMKAT.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Witemkat FOR Witemkat

    Object Witemkat is a dbViewSubS
        Set Label to "âò´ûö¶®Âú™ Ñ†õÈ§"
        Set Size to 223 517
        Set Location to 6 6

        //AB-DDOStart

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Set Main_DD to (Witemkat_DD(self))
        Set Server to (Witemkat_DD(self))

        //AB-DDOEnd

        Object dbGridSub1 is a dbGridSub
            Set Main_File to Witemkat.File_Number
            Set Size to 198 507
            Set Location to 4 3
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Witemkat.Witemkat_code
                Entry_Item Witemkat.Witemkat_descr
                Entry_Item Witemkat.Codeglpol
                Entry_Item Witemkat.Codeglago
            End_Row

            Set Form_Width    item 0 to 85
            Set Header_Label  item 0 to "â‡õ†°Ê™ âò´ûö¶®Âò™"
            
            Set Form_Width    item 1 to 177
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 122
            Set Header_Label  item 2 to "í£„£ò ¢¶ö/©£¶Á Ç.ä. ß‡¢„©ú‡§"
            
            Set Form_Width    item 3 to 115
            Set Header_Label  item 3 to "í£„£ò ¢¶ö/©£¶Á Ç.ä. òö¶®È§"
            
        End_Object    // dbGridSub1

    End_Object    // Witemkat

//AB/     End_Object    // prj
