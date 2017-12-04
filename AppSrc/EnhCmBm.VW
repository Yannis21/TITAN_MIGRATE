//AB/ Project EnhCmBm
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "EnhCmBm"
//AB/     Set ProjectFileName to "EnhCmBm.VW"

// Project Object Structure
//   EnhCmBm is a dbViewSubS
//     ButtonSub1 is a ButtonSub
//     FCP_ProgressBar1 is a FCP_ProgressBar

// Register all objects
Register_Object ButtonSub1
Register_Object EnhCmBm
Register_Object FCP_ProgressBar1


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open Bmove
Open Cmoves
Use For_All
Use Fcp.pkg
Use FCP_ProgressBar

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub
Use FCP_ProgressBar.PKG

//AB-IgnoreEnd

DEFERRED_VIEW Activate_EnhCmBm FOR ;
;
Object EnhCmBm is a dbViewSubS

    //AB-StoreTopStart
                                                                                                        
    //AB-StoreTopEnd

    Set Label to "Ñ§û£‚®‡©û Cmoves.Custprom_Code £ú Bmove Recr"
    Set Size to 126 425
    Set Location to 5 7

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
        
        Set Label to 'Ñ§û£ú®‡©û'
        
        Procedure OnClick
            Integer iCount iFS
            String  sLabel
            Get Label to sLabel
            File_Size Bmove to iFS
            Set piMinimum   Of FCP_ProgressBar1 to 1
            Set piMaximum   Of FCP_ProgressBar1 to iFS
            Set piAdvanceBy Of FCP_ProgressBar1 to 1
        
            Clear Bmove
            Lock
            Find Gt Bmove.Recnum
            While (Found)
                //Send Advance_Progress To (FCP_ProgressBar1(Self))
                Send DoAdvance Of FCP_ProgressBar1
                Add 1 to iCOunt
                Set Label to (String(iCount)+'/'+String(iFS))
                Clear Cmoves
                Move Bmove.Cmoves_Recr to Cmoves.Cmoves_Recr
                Find Eq Cmoves By Index.2
                If (Found) Begin
                    Move Bmove.Bmove_Recr to Cmoves.Custprom_Code
                    Saverecord Cmoves
                End
                Find Gt Bmove.Recnum
            Loop
            UnLock
            Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
            Set Label to sLabel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object FCP_ProgressBar1 is a FCP_ProgressBar
        Set Size to 93 18
        Set Location to 7 11

        //AB-StoreStart
                
        Set piBarColor1 to clAqua
        Set pbPercent   to True
        Set pbSmooth    to true
        Set pbVertical  to True
        
        
        
        
        //AB-StoreEnd

    End_Object    // FCP_ProgressBar1


    //AB-StoreStart
                                                                                                        
    //AB-StoreEnd

CD_End_Object    // EnhCmBm


//AB-StoreStart
    
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
