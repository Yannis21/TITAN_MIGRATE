//AB/ Project Migrate2
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Migrate2"
//AB/     Set ProjectFileName to "Migrate2.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Migrate2 is a dbViewSubs
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Migrate2
Register_Object Payresp_DD
Register_Object Radio1
Register_Object Radio2
Register_Object RadioGroupSub1
Register_Object Towns_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart


//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Rgroup.Sub
Use Radio.Sub

Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Migrate2 FOR Migrate2

Object Migrate2 is a dbViewSubs

    //AB-StoreTopStart
    
    
    //AB-StoreTopEnd

    Set Label to "Ñ°´Áß‡©û Ñ¢‚öÆ¶¨ ãò®°ò®†©£‚§‡§ Ñöö®ò≠È§"
    Set Size to 151 406
    Set Location to 7 9

    //AB-DDOStart

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 54 77
        Set Location to 20 23
        Object Radio1 is a RadioSub
            Set Label to "èú¢·´ú™"
            Set Size to 10 45
            Set Location to 13 9
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "Î®öò"
            Set Size to 10 33
            Set Location to 31 9
        End_Object    // Radio2


        //AB-StoreStart
        
        Procedure Notify_Select_State integer iToItem integer iFromItem
            //for augmentation
        End_Procedure
        
        // If you set Current_radio you must set this after the
        // radio objects have been created AND after Notify_select_State has been
        // created. i.e. Set in bottom-code at end!!
        //Set Current_Radio to 0
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub1


    //AB-StoreStart
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Migrate2


//AB-StoreStart







//AB-StoreEnd

//AB/ End_Object    // prj
