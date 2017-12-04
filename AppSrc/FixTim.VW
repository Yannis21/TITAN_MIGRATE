//AB/ Project FixTim
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "FixTim"
//AB/         Set ProjectFileName to "FixTim.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   FixTim is a dbViewSubs
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object FixTim


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Open Syscurxr
    Open Witemx
    Open Witemxt
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_FixTim FOR FixTim

    Object FixTim is a dbViewSubs

        //AB-StoreTopStart
                                                                                                                                                                        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û í†£¶°ò´ò¢Êö‡§"
        Set Size to 89 425
        Set Location to 7 10

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
                String  sLabel sStr sNomisma
                Integer iCount iErr
                Number  nAxia nPosothta nUnitPrice nIsotimia
                Date    dHmnia
            
                Indicate Err False
                Move 0 to iCount
            
                Get Label to sLabel
            
                Clear Witemxt
                Move SyscurXr.Company_Code  to Witemxt.Company_Code
                Move SyscurXr.Branch_Code   to Witemxt.Branch_Code
                Move SyscurXr.Year_Year     to Witemxt.Year_Year
                Find Ge Witemxt By Index.1
                While ((Found) And (SyscurXr.Company_Code=Witemxt.Company_Code) And (SyscurXr.Branch_Code=Witemxt.Branch_Code) And (SyscurXr.Year_Year=Witemxt.Year_Year))
                    Set Label to ('Ñ§û£‚®‡©û í†£¶°ò´ò¢Êö¶¨  ' + Trim(Witemxt.Witemx_Recr))
                    If (Trim(Witemxt.Item_Code)="") Begin
                        Clear Witemx
                        Move Witemxt.Witemx_Recr to Witemx.Witemx_recr
                        Find Eq Witemx By Index.2
                        If (Found) Begin
                            Reread Witemxt
                            //Move 9999               to Witemxt.Qty
                            Move Witemx.Item_Code   to Witemxt.Item_Code
                            Saverecord Witemxt
                            Unlock
                            Set Label to ('Ñ§û£‚®‡©û í†£¶°ò´ò¢Êö¶¨  ' + Trim(Witemxt.Witemx_Recr)+ "  " + Trim(Witemxt.Item_Code))
                        End
                    End
                    Find GT Witemxt By Index.1
                Loop
                Send Info_Box "Ü Ñßú•ú®öò©Âò ´ú¢úÂ‡©ú" "è¢û®¶≠¶®Âò"
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // FixTim


    //AB-StoreStart
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
