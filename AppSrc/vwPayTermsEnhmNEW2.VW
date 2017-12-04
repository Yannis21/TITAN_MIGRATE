//AB/ Project vwPayTermsEnhmNEW2
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwPayTermsEnhmNEW2"
//AB/     Set ProjectFileName to "vwPayTermsEnhmNEW2.VW"

// Project Object Structure
//   vwPayTermsEnhmNEW2 is a dbViewSubs
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object vwPayTermsEnhmNEW2


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open PayTerms
Open Clients
Open BtnOrdH

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use Button.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vwPayTermsEnhmNEW2 FOR vwPayTermsEnhmNEW2

Object vwPayTermsEnhmNEW2 is a dbViewSubs

    //AB-StoreTopStart
            
    Set Verify_Exit_Msg         to Get_No_Confirmation
    Set Verify_Save_Msg         to Get_No_Confirmation
    Set Verify_Data_Loss_Msg    to Get_No_Confirmation
    
    //AB-StoreTopEnd

    Set Label to "Éû£†¶¨®öÂò úöö®ò≠È§ òß¶ 30/30 ú‡™ 30/300 ©´¶ ò®ÆúÂ¶ Payterms"
    Set Size to 80 399
    Set Location to 9 7

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û"
        Set Size to 14 189
        Set Location to 31 103
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            String  sLabel sNewTP
            Integer iClientsHPAL iClientsHPSO iTPClientHPAL iTPClientsHPSO iInt
            Integer iTPErgaHPAL iTPErgaHPSO iHaveFound iHaveNotFound iHaveTotal
            Integer iHaveFoundCN iHaveNotFoundCN iHaveTotalCN i
        
            Get Label to sLabel
            Zerofile PayTerms
            Integer iHPAL isDone
            Move 0 to isDone
        
            //-------
            // xxx einai ena 2sthlo Array pou dhmiourgeitai sthn ClientArea 
            // kai exei hard coded ton kodiko kai thn perigrafh ton neon tropon plhromhs
            //-------
            Integer iRows
            String sVal1 sVal2
            Get RecordCount of xxx to iRows  
            For iInt From 0 to (iRows-1)
                Get Cell_Value Of xxx 0 iInt to sVal1
                Get Cell_Value Of xxx 1 iInt to sVal2

                Clear PayTerms
                Move (Trim(sVal1)) to Payterms.Payterms_Code
                Move (Trim(sVal2)) to Payterms.Payterms_Descr
                Saverecord PayTerms
                Set Label to ("Creating Record...."+Trim(sVal1)+" - "+Trim(sVal2))
                
            Loop
            //-------
            //-------
            Set Label to sLabel
            Send Info_Box 'Ü õû£†¶¨®öÂò ´‡§ úöö®ò≠È§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1


    //AB-StoreStart
            
            
            
            
            
            
            
            
    //AB-StoreEnd

End_Object    // vwPayTermsEnhmNEW2


//AB-StoreStart





//AB-StoreEnd

//AB/ End_Object    // prj
