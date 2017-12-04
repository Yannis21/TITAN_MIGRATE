//AB/ Project Enhsapcl:enhmerosh gia SAP
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Enhsapcl:enhmerosh gia SAP"
//AB/         Set ProjectFileName to "Enhsapcl.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Enhsapcl is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Enhsapcl


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open clients
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Enhsapcl FOR ;
    ;
    Object Enhsapcl is a dbViewSubS

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "Ñ•òö‡ö„ Ñß†¢úö£‚§‡§ èú¢ò´È§"
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

            Set Label to 'Ñ§û£‚®‡©û'

            Procedure OnClick
                String  sLabel
                date ddate dldate
                move '31/12/2004' to ddate
                move '01/01/2003' to dldate
                integer isap iyear iint
                Get Label to sLabel
                move 0 to iint
                Lock
                Clear clients
                Find Gt Clients.recnum
                While (Found)
                   Set Label to clients.client_id
                   move 0 to isap
                   if ((clients.client_ptyppar='100') and (clients.is_xondr='')) begin
                       move '1' to clients.is_xondr
                       move 1 to isap
                   end
                   if ((CLIENTS.SAP_HMNIA<=ddate)    and;
                      (CLIENTS.CLIENT_PTYPPAR <>'' ) and;
                      (CLIENTS.LAST_XREOSH < dldate) and;
                      (CLIENTS.LAST_PISTOSH < dldate)and;
                      (CLIENTS.status=''))
                       move 1 to isap
                    move (TheYearSegment(CLIENTS.LAST_XREOSH))  to IYEAR
                    if ((CLIENTS.SAP_HMNIA<=ddate) and (iyear=2004) and (CLIENTS.status=''));
                        move 1 to isap
                    move (TheYearSegment(CLIENTS.LAST_pistosh))  to IYEAR
                    if ((CLIENTS.SAP_HMNIA<=ddate) and (iyear=2004) and (CLIENTS.status=''));
                        move 1 to isap
                   if  (isap=1) begin
                       add 1 to iint
                       //showln iint '=' clients.client_id
                       Set Label to (clients.client_id+": "+string(iint))
                       move '' to clients.status
                       move '' to clients.sap_hmnia
                       //saverecord clients
                   end
                   Find Gt clients.recnum
                Loop
                Unlock
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'

            End_Procedure // OnClick
































            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart




        //AB-StoreEnd

    CD_End_Object    // Enhsapcl


    //AB-StoreStart



    //AB-StoreEnd

//AB/     End_Object    // prj
