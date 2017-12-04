//AB/ Project DELSXET
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "DELSXET"
//AB/         Set ProjectFileName to "DELSXET.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   DELSXET is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object DELSXET


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open WCMOVES
    Open clients
    open payresp
    open constrct
    open salesmen
    open mhxanik
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_DELSXET FOR ;
    ;
    Object DELSXET is a dbViewSubS
        Set Label to "Ñ§û£ú®‡©û ò®ÆúÂ¶¨ Ñ®ö‡§ £ú ©‡©´Ê ìßúÁü¨§¶ è¢û®‡£È§"
        Set Size to 89 331
        Set Location to 14 49

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub
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
                Find Gt WCMOVES.RECNUM
                While (Found)
                    move wcmoves.recnum to iint
                    if (wcmoves.year_year<2005) begin
                        Set Label to ('úöö®ò≠„ '+String(wcmoves.recnum)+trim(wcmoves.wcmove_hmnia) + ' ')
                        delete wcmoves
                        move iint to wcmoves.recnum
                    end
                Find Gt wcmoves.Recnum
                Loop
                Set Label to sLabel
                Send Info_Box 'Ü Ñ§û£‚®‡©û íú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    CD_End_Object    // DELSXET


    //AB-StoreStart
        
        
    //AB-StoreEnd

//AB/     End_Object    // prj
