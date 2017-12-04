//AB/ Project Enhclients:enhmerosh gia SAP
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Enhclients:enhmerosh gia SAP"
//AB/     Set ProjectFileName to "Enhclients.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Enhclients is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Enhclients


//AB/ AppBuild VIEW


//AB-StoreTopStart
open clients
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Enhclients FOR ;
;
Object Enhclients is a dbViewSubS

    //AB-StoreTopStart
        
    //AB-StoreTopEnd

    Set Label to "Ñ§û£‚®‡©û ò®ÆúÂ¶¨ èú¢ò´È§ Ä§òõ®¶£†°·"
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
            date ddate
            integer isap iyear
            Get Label to sLabel
            Clear clients
            Find Gt Clients.recnum
            While (Found)
               Set Label to clients.client_id
               move 0 to isap
               if (clients.client_ptyppar='') goto next_read
               if (clients.ypoloipo <> 0);
                    move 1 to isap
               Move (TheYearSegment (clients.last_xreosh)) to iYear
               if (iyear=2003);
                    move 1 to isap
               Move (TheYearSegment (clients.last_pistosh)) to iYear
               if (iyear=2003);
                    move 1 to isap
               Move (TheYearSegment (clients.client_hmnia)) to iYear
               if (iyear=2004);
                    move 1 to isap
               if  (isap=1) begin
                   Set Label to clients.client_id
                   move '' to clients.status
                   move '' to clients.sap_hmnia
                   saverecord clients
               end
               next_read:
               Find Gt clients.recnum
            Loop
            Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
        
        
        
        
    //AB-StoreEnd

CD_End_Object    // Enhclients


//AB-StoreStart



//AB-StoreEnd

//AB/ End_Object    // prj
