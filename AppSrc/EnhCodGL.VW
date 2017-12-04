//AB/ Project Enhmerosh Codemast apo GL
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Enhmerosh Codemast apo GL"
//AB/     Set ProjectFileName to "EnhCodGL.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhCodGL is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhCodGL


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open mastGL
Open typeGL

Open Codemast
Open Codetype

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhCodGL FOR ;
;
Object EnhCodGL is a dbViewSubS
    Set Label to "„¤ž£â¨à©ž ¡˜  ©¬£§¢ã¨à©ž ˜¨®œåà¤ CodeType ¡˜  CodeMast „£§¦¨ ¡¦ç ˜§¦ ‚.Š."
    Set Size to 150 495
    Set Location to 6 6

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub
        Set Label to "„¤ž£â¨à©ž"
        Set Size to 14 393
        Set Location to 87 54

        //AB-StoreStart
        
        
        Procedure OnClick
            String sLabel
            Set Enabled_State to False
            Get Label to sLabel
            Clear TypeGL
            LOCK
            Find Gt TypeGL.Recnum
            While (Found)
                Clear CodeType
                Move TypeGL.Type to CodeType.Type
                Find Eq CodeType By Index.1
                If (Not(Found)) Begin
                    Move TypeGL.Description to CodeType.Description
                    Move TypeGL.Comment     to CodeType.Comment
                    Saverecord CodeType
                    Clear MastGL
                    Move TypeGL.Type to MastGL.Type
                    Find Gt MastGL By Index.1
                    While ((Found=1) And (MastGL.Type=TypeGL.Type))
                        Clear CodeMast
                        Move MastGL.Type    to CodeMast.Type
                        Move MastGL.Code    to CodeMast.Code
                        Set Label to (Trim(MastGL.Type)+' - '+Trim(MastGL.Code))
                        Find Eq Codemast By Index.1
                        If (Not(Found)) Begin
                            Move MastGL.Description to CodeMast.Description
                            Saverecord CodeMast
                        End
                        Find Gt MastGL By Index.1
                    Loop
                End
                Find Gt TypeGL.Recnum
            Loop
            UNLOCK
            Set Label to sLabel
            Send Info_Box 'Finished' 'Info'
            Set Enabled_State to True
        End_Procedure // OnClick
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

CD_End_Object    // EnhCodGL


//AB-StoreStart



//AB-StoreEnd

//AB/ End_Object    // prj
