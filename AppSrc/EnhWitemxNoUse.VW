//AB/ Project EnhWitemxNoUse
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhWitemxNoUse"
//AB/     Set ProjectFileName to "EnhWitemxNoUse.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhWitemxNoUse is a dbViewSubs
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object EnhWitemxNoUse


//AB/ AppBuild VIEW


//AB-StoreTopStart
    
Open Item
Open Witemx

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhWitemxNoUse FOR ;
;
Object EnhWitemxNoUse is a dbViewSubs

    //AB-StoreTopStart
            
            
    //AB-StoreTopEnd

    Set Label to "Ñ§û£ú®‡©û ò®Æú†¶¨ WITEMX òß¶ Item.Orio"
    Set Size to 89 425
    Set Location to 2 7

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£ú®‡©û Witemx ò®ÆúÂ¶¨"
        Set Size to 14 235
        Set Location to 19 93
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Label to 'Ñ§û£ú®‡©û Witemx ò®ÆúÂ¶¨'
        
        Procedure OnClick
            String  sLabel
            Integer iFS iCount
            number nnunit nnqty nnpcdisc nnaxia nnnet nntotal
            Get Label to sLabel
        
            File_Size Item to iFS
            Move 0 to iCount
        
            Clear Item
            Find GE Item.Recnum
            While (Found)
                Add 1 to iCount
                Set Label to (String(iCount)+" / "+String(iFS))
                If (Item.Item_Orio>0) Begin
        
                    Clear Branch
                    Find GE Branch.Recnum
                    While (Found)
        
                        Clear Witemx
                        Move Branch.Company_Code  to Witemx.Company_Code
                        Move Branch.branch_Code   to Witemx.branch_Code
                        Move SysCurXR.Year_Year   to Witemx.Year_Year
                        Move Item.Item_Code       to Witemx.Witemx_Code
                        Find Eq Witemx By Index.5
                        If (Found) Begin
                            Reread Witemx
                            Move 1 to Witemx.Not_To_Be_Used
                            Saverecord Witemx
                            Unlock
                        End
        
                        Find GT Branch.Recnum
                    Loop
                End
                Find GT Item.Recnum
            Loop
        
            Send Info_Box 'Ü ú§û£‚®‡©û ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ãûõú§†©£Ê™ Item.Orio ò≠¶Á ´ú¢ú†È©ú† °ò† ú¢úöÆüúÂ û õ†òõ†°ò©Âò"
        Set Size to 14 235
        Set Location to 47 93
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set Label to 'ãûõú§†©£Ê™ Item.Orio ò≠¶Á ´ú¢ú†È©ú† °ò† ú¢úöÆüúÂ û õ†òõ†°ò©Âò'
        
        Procedure OnClick
            String  sLabel
            Integer iFS iCount
            number nnunit nnqty nnpcdisc nnaxia nnnet nntotal
            Get Label to sLabel
        
            File_Size Item to iFS
            Move 0 to iCount
        
            Clear Item
            Find GE Item.Recnum
            While (Found)
                Add 1 to iCount
                Set Label to (String(iCount)+" / "+String(iFS))
                If (Item.Item_Orio>0) Begin
                    Reread Item
                    Move 0 to Item.Item_Orio
                    Saverecord Item
                    Unlock
                End
                Find GT Item.Recnum
            Loop
        
            Send Info_Box 'Ü ú§û£‚®‡©û ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2


    //AB-StoreStart
            
            
            
            
    //AB-StoreEnd

CD_End_Object    // EnhWitemxNoUse


//AB-StoreStart
    
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
