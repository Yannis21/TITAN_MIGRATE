//AB/ Project enhdeopsls:enhmerosh deop me sls_id
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "enhdeopsls:enhmerosh deop me sls_id"
//AB/     Set ProjectFileName to "enhdeopsls.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   enhdeopsls is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object enhdeopsls


//AB/ AppBuild VIEW


//AB-StoreTopStart
                                                            
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_enhdeopsls FOR ;
;
Object enhdeopsls is a dbViewSubS

    //AB-StoreTopStart
                                                                                                                                                    
    //AB-StoreTopEnd

    Set Label to "Ä§õ®¶£†°„ ú§û£‚®‡©û ÉÑéè £ú è‡¢û´„"
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
            MOVE '31/12/2004' TO DDATE
            Get Label to sLabel
            Open Syscurxr
            Open cn
            open btnordh
            Clear btnordh
            Lock
            Find Gt btnordh.Recnum
            While (Found)
                IF (btnordh.deop_lhxh ge ddate) begin
                    relate btnordh
                    Set Label to btnordh.recnum
                    move cn.cn_sls_id to btnordh.user_id
                    Saverecord Btnordh
                end
                Find Gt Btnordh.Recnum
            Loop
            UnLock
            Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú ' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
                                                                                                                                                    
    //AB-StoreEnd

CD_End_Object    // enhdeopsls

//AB/ End_Object    // prj
