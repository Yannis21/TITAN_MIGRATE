//AB/ Project EnhDoy
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhDoy"
//AB/         Set ProjectFileName to "EnhDoy.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhDoy is a dbViewSubS
//     TextBoxSub1 is a TextBoxSub
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhDoy
Register_Object TextBoxSub1


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open doy
    Open Codetype
    Open Codemast
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Txtbox.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnhDoy FOR ;
    ;
    Object EnhDoy is a dbViewSubS
        Set Label to "„¤ž£œ¨à©ž ˜¨®œ ¦¬ Codemast š ˜ ƒŽ“ ˜§¦ Betolink"
        Set Size to 89 300
        Set Location to 14 49

        //AB-DDOStart


        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "TextBoxSub1"
            Set Location to 4 14
            Set Size to 13 272
        End_Object    // TextBoxSub1

        Object ButtonSub1 is a ButtonSub
            Set Label to "ButtonSub1"
            Set Location to 39 125

            //AB-StoreStart
            
            Set Label to '„¤ž£œ¨à©ž'
            
            Procedure OnClick
                Clear CodeMast
                Lock
                Move 'DOY' to Codemast.Type
                Find Gt Codemast By Index.1
                While ((Found=1) And (Codemast.Type='DOY'))
                    Set Label to (String(Codemast.Recnum))
                    Delete Codemast
                    Find Gt Codemast By Index.1
                Loop
                Unlock
            
                Local String s1 s2
                Direct_Input "c:\doy.txt"
                Readln s1 s2
                While (Not(Seqeof))
                    Clear CodeMast
                    Move 'DOY'          to Codemast.Type
                    Move (Replaces('"',S1,'')) to S1
                    Move (Replaces('"',S2,'')) to S2
                    Move (Trim(S1))     to Codemast.Code
                    Move (trim(S2))     to Codemast.Description
                    Saverecord Codemast
                    Set Label to (String(Codemast.Recnum))
                    Readln s1 s2
                Loop
                Set Label to '„¤ž£œ¨à©ž'
            End_Procedure // OnClick
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

    CD_End_Object    // EnhDoy


    //AB-StoreStart
        
    //AB-StoreEnd

//AB/     End_Object    // prj
