//AB/ Project LockTest
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "LockTest"
//AB/     Set ProjectFileName to "LockTest.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   LockTest is a dbViewSubS
//     ButtonSub1 is a ButtonSub
//     exo is a FormSub
//     mesa is a FormSub

// Register all objects
Register_Object ButtonSub1
Register_Object exo
Register_Object LockTest
Register_Object mesa


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open Cflagkin
Open Wflagkin

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub
Use Form.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_LockTest FOR ;
;
Object LockTest is a dbViewSubS
    Set Label to "Lock test"
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
            Integer i1 i2 iInt1 iInt2
            String sLabel
        
            Open Cmoves
        
            Get Label to sLabel
            Get Value Of Exo    item 0 to i1
            Get Value Of Mesa   item 0 to i2
        
            For iInt1 from 1 to i1
                Clear Cmoves
                Find Gt Cmoves.Recnum
                Reread
                For iInt2 from 1 to i2
                    Set Label to (String(iInt1)+'/'+String(iInt2))
                Loop
                Unlock
            Loop
            Set Label to sLabel
            Send Info_Box 'Ü Ñ§û£‚®‡©û íú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object exo is a FormSub
        Set Size to 13 85
        Set Location to 9 33
        Set Label_Col_Offset to 2
    End_Object    // exo

    Object mesa is a FormSub
        Set Size to 13 85
        Set Location to 9 195
        Set Label_Col_Offset to 2
    End_Object    // mesa

CD_End_Object    // LockTest

//AB/ End_Object    // prj
