//AB/ Project EnBaxioIs
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnBaxioIs"
//AB/         Set ProjectFileName to "EnBaxioIs.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnBaxioIs is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnBaxioIs


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnBaxioIs FOR ;
    ;
    Object EnBaxioIs is a dbViewSubS

        //AB-StoreTopStart
                                                                        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û ß¶¢¢òß¢È§ §¶£†©£·´‡§ ©´ò ò•†Êö®ò≠ò"
        Set Size to 89 425
        Set Location to 2 7

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 39 120

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel
                Get Label to sLabel
            
                Open Syscurxr
                Open Baxio
            
                Clear Baxio
                Lock
                Find Gt Baxio.Recnum
                While (Found)
                    Set Label to Baxio.Baxio_Recr
            
                    Get fngConvertPoso  Baxio.Baxio_C_Code2 ;
                                        Baxio.Baxio_V2      ;
                                        SysCurXr.C_Code0    ;
                                        Baxio.Baxio_HmniaL  ;
                                        Baxio.Baxio_Rate0       to Baxio.Baxio_V0
                    Get fngConvertPoso  Baxio.Baxio_C_Code2 ;
                                        Baxio.Baxio_V2      ;
                                        SysCurXr.C_Code00   ;
                                        Baxio.Baxio_HmniaL  ;
                                        Baxio.Baxio_Rate00      to Baxio.Baxio_V00
                    Get fngConvertPoso  Baxio.Baxio_C_Code2 ;
                                        Baxio.Baxio_V2      ;
                                        SysCurXr.C_CodeR    ;
                                        Baxio.Baxio_HmniaL  ;
                                        Baxio.Baxio_RateR       to Baxio.Baxio_VR
                    Saverecord Baxio
                    Find Gt Baxio.Recnum
                Loop
                UnLock
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                                                                        
        //AB-StoreEnd

    CD_End_Object    // EnBaxioIs

//AB/     End_Object    // prj
