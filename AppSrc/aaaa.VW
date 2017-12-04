//AB/ Project aaaa
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "aaaa"
//AB/         Set ProjectFileName to "aaaa.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   aaaa is a dbViewSubS
//     Company_DD is a DataDictionary
//     dbComboFormSub1 is a dbComboFormSub
//     dbComboForm1 is a dbComboForm

// Register all objects
Register_Object aaaa
Register_Object Company_DD
Register_Object dbComboForm1
Register_Object dbComboFormSub1


//AB/     AppBuild VIEW


    //AB-StoreTopStart
            
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbCmbfrm.Sub

    Use COMPANY.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_aaaa FOR aaaa

    Object aaaa is a dbViewSubS

        //AB-StoreTopStart
        Open CodeType
        Open CodeMast
        
        //AB-StoreTopEnd

        Set Label to "Put The Label of The View Here"
        Set Size to 150 300
        Set Location to 10 14

        //AB-DDOStart

        Object Company_DD is a Company_DataDictionary
        End_Object    // Company_DD

        Set Main_DD to (Company_DD(self))
        Set Server to (Company_DD(self))

        //AB-DDOEnd

        Object dbComboFormSub1 is a dbComboFormSub
            Entry_Item Company.Company_doy
            Set Size to 14 155
            Set Location to 20 29
            Set Label_Col_Offset to 2
        End_Object    // dbComboFormSub1

        Object dbComboForm1 is a dbComboForm
            Entry_Item Company.Company_doy
            Set Size to 13 147
            Set Location to 76 131
        End_Object    // dbComboForm1


        //AB-StoreStart
                                
                                
        //AB-StoreEnd

    End_Object    // aaaa


    //AB-StoreStart
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
