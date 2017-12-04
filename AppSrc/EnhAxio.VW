//AB/ Project EnhAxio
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhAxio"
//AB/     Set ProjectFileName to "EnhAxio.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhAxio is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhAxio


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open doy
Open Codetype
Open Codemast

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhAxio FOR ;
;
Object EnhAxio is a dbViewSubS
    Set Label to "„¤ž£œ¨à©ž œ¡›¦«é¤ §˜¨˜¢ž§«é¤ ˜¥ ¦š¨á­à¤"
    Set Size to 89 300
    Set Location to 9 15

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub
        Set Label to "„¤ž£œ¨à©ž"
        Set Size to 14 173
        Set Location to 45 61

        //AB-StoreStart
        
        Set Label to '„¤ž£œ¨à©ž'
        
        Procedure OnClick
            String sLabel
            Get Label to sLabel
        
        
        
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

CD_End_Object    // EnhAxio

//AB/ End_Object    // prj
