//AB/ Project enhcnid:enhmerosh ergon me sosto ypeyuyn
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "enhcnid:enhmerosh ergon me sosto ypeyuyn"
//AB/         Set ProjectFileName to "enhcnid.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   enhcnid is a dbViewSubs
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object enhcnid


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open Cn
    Open clients
    open payresp
    open constrct
    open salesmen
    open mhxanik
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_enhcnid FOR ;
    ;
    Object enhcnid is a dbViewSubs
        Set Label to "Ñ§û£ú®‡©û ò®ÆúÂ¶¨ Ñ®ö‡§ £ú ©‡©´Ê ìßúÁü¨§¶ è¢û®‡£È§"
        Set Size to 89 331
        Set Location to 14 49

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 275
            Set Location to 46 31
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String sLabel
                Get Label to sLabel
                integer iint
                Clear Cn
                Find Gt Cn.Recnum
                While (Found)
                    lock
                    Set Label to ('Cn '+String(Cn.cn_code))
                    relate cn
                    if (cn.cn_presp_id <> payresp.presp_id) begin
                        Move payresp.presp_id to cn.cn_presp_id
                        add 1 to iint
                        Set Label to ('Ä¢¢òö„ '+String(Cn.cn_code)+'/' + String(iint))
                        Saverecord cn
                    end
                    Unlock
                    Find Gt Cn.Recnum
                Loop
                Set Label to sLabel
                Send Info_Box 'Ü Ñ§û£‚®‡©û íú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    CD_End_Object    // enhcnid


    //AB-StoreStart
                
    //AB-StoreEnd

//AB/     End_Object    // prj
