//AB/ Project FixTxt
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "FixTxt"
//AB/         Set ProjectFileName to "FixTxt.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   FixTxt is a dbViewSubS
//     xx is a c2dArray
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object FixTxt
Register_Object xx


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Use OBarray2d
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_FixTxt FOR ;
    ;
    Object FixTxt is a dbViewSubS

        //AB-StoreTopStart
        
        Object xx is a c2dArray
            Set piNumColumns to 2
        End_Object
        
        //AB-StoreTopEnd

        Set Label to "Ñß†õ†Ê®ü‡©û Hpal.txt ò®ÆúÂ¶¨"
        Set Size to 89 210
        Set Location to 10 14

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 32 13
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                Integer iPos iCount iLength ii iLine
                String  sLabel sLine sStr sStr2 sLine2
                Move '' to sLine2
                Move 0 to iCount
                Get Label to sLabel
                Direct_Input    Channel 9 'C:\Hpal.txt'
            //    Direct_Output   Channel 7 'C:\HpalFix.txt'
                Readln Channel 9 sLine
                While (Not(Seqeof))
                    Add 1 to iLine
                    While (Pos('01.A',sLine)<>0)
                        Add 1 to iCount
                        Send InsertRow to xx iCount
                        Set Cell_Value Of xx 0 iCount to (String(iLine))
                        Set Cell_Value Of xx 1 iCount to (String(iPos ))
                        Move (Replace('01.A',sLine,'')) to sLine
                    Loop
                    Readln Channel 9 sLine
                Loop
                Close_Input Channel 9
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú ' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
        
        
        //AB-StoreEnd

    CD_End_Object    // FixTxt


    //AB-StoreStart
    
    //AB-StoreEnd

//AB/     End_Object    // prj
