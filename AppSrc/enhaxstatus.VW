//AB/ Project enhaxstatus:allagh status palias xrhshs
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "enhaxstatus:allagh status palias xrhshs"
//AB/         Set ProjectFileName to "enhaxstatus.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   enhaxstatus is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object enhaxstatus


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                                    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_enhaxstatus FOR ;
    ;
    Object enhaxstatus is a dbViewSubS

        //AB-StoreTopStart
                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "Ä¢¢òö„ Status Ä•†¶ö®·≠‡§ ßò¢†·™ Æ®„©û™"
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
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel
                date ddate
                Get Label to sLabel
                move '31/12/2003' to ddate
                Open Syscurxr
                Open Baxio
            
                Clear baxio
                Lock
                Find Gt baxio.Recnum
                While (Found)
                    if ((baxio.year_year=2003) and (baxio.baxio_status=2) and (baxio.baxio_hmnial>ddate)) begin
                        Set Label to baxio.recnum
                        move 1 to baxio.baxio_status
                        move 1 to baxio.baxio_place
                        Saverecord Baxio
                     end
                     Find Gt Baxio.Recnum
                Loop
                UnLock
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú ' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                                                                                                                                
        //AB-StoreEnd

    CD_End_Object    // enhaxstatus

//AB/     End_Object    // prj
