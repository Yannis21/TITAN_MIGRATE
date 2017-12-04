//AB/ Project Enhwitemcl
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Enhwitemcl"
//AB/         Set ProjectFileName to "enhwitemcl.VW"

// Project Object Structure
//   Enhwitemcl is a dbViewSubS
//     Witemkat_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemcl_DD is a DataDictionary
//     Sysrecw_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Enhwitemcl
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Sysrecw_DD
Register_Object Units_DD
Register_Object Witemcl_DD
Register_Object Witemkat_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Button.Sub

    Use WITEMKAT.DD
    Use UNITS.DD
    Use FPA.DD
    Use ITEM.DD
    Use WITEMCL.DD
    Use SYSRECW.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Enhwitemcl FOR ;
    ;
    Object Enhwitemcl is a dbViewSubS

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "„¤ž£â¨à©ž witemcl_rec0"
        Set Size to 89 425
        Set Location to 2 7

        //AB-DDOStart

        Object Witemkat_DD is a Witemkat_DataDictionary
        End_Object    // Witemkat_DD

        Object Units_DD is a Units_DataDictionary
        End_Object    // Units_DD

        Object Fpa_DD is a Fpa_DataDictionary
        End_Object    // Fpa_DD

        Object Item_DD is a Item_DataDictionary
            Set DDO_Server to (Units_DD(self))
            Set DDO_Server to (Witemkat_DD(self))
            Set DDO_Server to (Fpa_DD(self))
        End_Object    // Item_DD

        Object Witemcl_DD is a Witemcl_DataDictionary
            Set DDO_Server to (Item_DD(self))
        End_Object    // Witemcl_DD

        Object Sysrecw_DD is a Sysrecw_DataDictionary
        End_Object    // Sysrecw_DD

        Set Main_DD to (Witemcl_DD(self))
        Set Server to (Witemcl_DD(self))

        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            
            
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 39 120

            //AB-StoreStart
            
            Set Label to '„¤ž£œ¨à©ž'
            
            Procedure OnClick
                String  sLabel sStr
                integer icount
                move  1 to icount
                Clear Witemcl
                Lock
                Find Gt witemcl.Recnum
                While (Found)
                    add 1 to icount
                    Move icount to witemcl.rec0
                    Saverecord Witemcl
                    Find Gt witemcl.Recnum
                Loop
                move icount to sysrecw.witemcl_rec0
                saverecord sysrecw
                Unlock
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                        
        //AB-StoreEnd

    CD_End_Object    // Enhwitemcl

//AB/     End_Object    // prj
