//AB/ Project Fpa
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Fpa"
//AB/         Set ProjectFileName to "Fpa.vw"
//AB/         Set GenerateFileName to "Fpa.vw"

// Project Object Structure
//   Fpa is a dbViewSubS
//     Fpa_DD is a DataDictionary
//     dbGridSub1 is a dbGridSub

// Register all objects
Register_Object dbGridSub1
Register_Object Fpa
Register_Object Fpa_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub

    Use FPA.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Fpa FOR ;
    ;
    Object Fpa is a dbViewSubS
        Set Label to "è¶©¶©´· îèÄ"
        Set Size to 135 465
        Set Location to 7 9

        //AB-DDOStart

        Object Fpa_DD is a Fpa_DataDictionary

            //AB-StoreStart
            
            
            //AB-StoreEnd

        End_Object    // Fpa_DD

        Set Main_DD to (Fpa_DD(self))
        Set Server to (Fpa_DD(self))

        //AB-DDOEnd

        Object dbGridSub1 is a dbGridSub
            Set Main_File to Fpa.File_Number
            Set Ordering to 1
            Set Size to 110 455
            Set Location to 4 3
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Fpa.Fpa_pososto
                Entry_Item Fpa.Fpa_descr
                Entry_Item Fpa.Agora_codegl
                Entry_Item Fpa.Polhsh_codegl
            End_Row

            Set Form_Width    item 0 to 75
            Set Header_Label  item 0 to "è¶©¶©´Ê î.è.Ä."
            
            Set Form_Width    item 1 to 95
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 135
            Set Header_Label  item 2 to "í£„£ò ä¶öò®. Ç.ä î.è.Ä. òö¶®È§"
            
            Set Form_Width    item 3 to 141
            Set Header_Label  item 3 to "í£„£ò ä¶öò®. Ç.ä î.è.Ä. ß‡¢„©ú‡§"
            
        End_Object    // dbGridSub1

    CD_End_Object    // Fpa

//AB/     End_Object    // prj
