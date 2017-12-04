//AB/ Project EnhFlags
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhFlags"
//AB/     Set ProjectFileName to "EnhFlags.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhFlags is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhFlags


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open Cflagkin
Open Wflagkin

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhFlags FOR ;
;
Object EnhFlags is a dbViewSubS
    Set Label to "Ñ§û£ú®‡©û ò®ÆúÂ¶¨ CFlagkin + Wflagkin ö†ò §ú¶ Numeric ßúõÂ¶"
    Set Size to 89 331
    Set Location to 14 49

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub
        Set Label to "Ñ§û£‚®‡©û"
        Set Size to 14 275
        Set Location to 46 31

        //AB-StoreStart
        
        Set Label to 'Ñ§û£ú®‡©û'
        
        Procedure OnClick
            String sLabel
            Get Label to sLabel
            Clear Cflagkin
            Lock
            Find Gt Cflagkin.Recnum
            While (Found)
                Set Label to ('Cflagkin '+String(Cflagkin.Recnum))
                Move Cflagkin.Cflagkin_Flag to Cflagkin.Flag_Numeric
                Saverecord Cflagkin
                Find Gt Cflagkin.Recnum
            Loop
            Unlock
        
            Clear Wflagkin
            Lock
            Find Gt Wflagkin.Recnum
            While (Found)
                Set Label to ('Wflagkin '+String(Wflagkin.Recnum))
                Move Wflagkin.Wflagkin_Flag to Wflagkin.Flag_Numeric
                Saverecord Wflagkin
                Find Gt Wflagkin.Recnum
            Loop
            Unlock
            Set Label to sLabel
            Send Info_Box 'Ü Ñ§û£‚®‡©û íú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

CD_End_Object    // EnhFlags

//AB/ End_Object    // prj
