//AB/ Project EnBstatus
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnBstatus"
//AB/         Set ProjectFileName to "Enbstatus.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnBstatus is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnBstatus


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                        
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnBstatus FOR ;
    ;
    Object EnBstatus is a dbViewSubS

        //AB-StoreTopStart
                                                                                                        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û Status ö†ò °†§„©ú†™ òß¶ö®ò≠„™ - Æ®ú‡©´†°È§ - ß†©´‡´†°È§ Ä•†¶ö®·≠‡§"
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
                open bmove
                Clear bmove
                Lock
                Find Gt bmove.Recnum
                While (Found)
                    if ((bmove.btypkin_code=200) or (bmove.btypkin_code=201) or (bmove.btypkin_code=205) or (bmove.btypkin_code=206)) begin
                        Set Label to bmove.recnum
                        relate bmove
                        move 2 to baxio.baxio_status
                        move 2 to baxio.baxio_place
                        Saverecord Baxio
                     end
                     Find Gt Bmove.Recnum
                Loop
                UnLock
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú ' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                                                                                                        
        //AB-StoreEnd

    CD_End_Object    // EnBstatus

//AB/     End_Object    // prj
