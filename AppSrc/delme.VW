//AB/ Project delme2
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "delme2"
//AB/     Set ProjectFileName to "delme.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   delme is a dbViewSubS
//     dbGridSub1 is a dbGridSub
//     dbGridSub2 is a dbGridSub

// Register all objects
Register_Object dbGridSub1
Register_Object dbGridSub2
Register_Object delme


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use dbGrid.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_delme FOR delme

Object delme is a dbViewSubS
    Set Label to "Put The Label of The View Here"
    Set Size to 284 516
    Set Location to 2 5

    //AB-DDOStart


    //AB-DDOEnd

    Object dbGridSub1 is a dbGridSub

        //AB-StoreTopStart
        Function nfArxiki_Axia Returns Number
                 If (Gmove.Gmove_X0 <> 0) Function_Return Gmove.Gmove_X0
                                            Function_Return Gmove.Gmove_P0
        End_Function //nfarxiki_axia
        
        Function nfSysxetismeni_Axia Returns Number
                 If (Gmove.Gmove_Open_SX0 <> 0) Function_Return Gmove.Gmove_Open_SX0
                                                  Function_Return Gmove.Gmove_Open_SP0
        End_Function //nfSysxetismeni_Axia
        
        Function nfYpolipo_Pros_Sysxetisi Returns Number
                 If (Gmove.Gmove_Open_YX0 <> 0) Function_Return Gmove.Gmove_Open_YX0
                                                  Function_Return Gmove.Gmove_Open_YP0
        End_Function //nfYpolipo_Pros_Sysxetisi
        
        Function sfXP Returns String
                 If (Gmove.Gmove_X0 <> 0) Function_Return "  ï"
                                            Function_Return "  è"
        End_Function //nfarxiki_axia
        //AB-StoreTopEnd

        Set Ordering to 4
        Set Size to 70 507
        Set Location to 42 3
        Set CurrentRowColor to 11468799
        Set Wrap_State to TRUE
        Set Auto_Regenerate_State to FALSE

        Begin_Row
            Entry_Item Gtypkin.Gtypkin_code
            Entry_Item Gtypkin.Gtypkin_abr
            Entry_Item Garticl.Garticl_no
            Entry_Item Garticl.Garticl_hmnia
            Entry_Item (sfXP(Self))
            Entry_Item (nfArxiki_Axia(Self))
            Entry_Item (nfSysxetismeni_Axia(Self))
            Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
            Entry_Item Gmove.Recnum
        End_Row

        Set Form_Width    item 0 to 38
        Set Header_Label  item 0 to "âÂ§û©û"
        
        Set Form_Width    item 1 to 60
        Set Header_Label  item 1 to "ë¨§´/≠Âò"
        
        Set Form_Width    item 2 to 36
        Set Header_Label  item 2 to "Ä®†ü£Ê™"
        
        Set Form_Width    item 3 to 42
        Set Header_Label  item 3 to "Ü£/§Âò"
        
        Set Form_Width    item 4 to 18
        Set Header_Label  item 4 to "ïè"
        
        Set Form_Width    item 5 to 74
        Set Header_Label  item 5 to "Ä®Æ†°„ Ä•Âò"
        
        Set Form_Width    item 6 to 74
        Set Header_Label  item 6 to "ë¨©Æú´†©£‚§û Ä•Âò"
        
        Set Form_Width    item 7 to 74
        Set Header_Label  item 7 to "ìßÊ¢¶†ß¶"
        
        Set Form_Width    item 8 to 48
        Set Header_Label  item 8 to "Recnum"
        

        //AB-StoreStart
            
        Procedure Request_Clear_All
        End_Procedure // Request_Clear_All
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // dbGridSub1

    Object dbGridSub2 is a dbGridSub

        //AB-StoreTopStart
        Function nfArxiki_Axia Returns Number
                 If (Gmovea.Gmove_X0 <> 0) Function_Return Gmovea.Gmove_X0
                                             Function_Return Gmovea.Gmove_P0
        End_Function //nfarxiki_axia
        
        Function nfSysxetismeni_Axia Returns Number
                 If (Gmovea.Gmove_Open_SX0 <> 0) Function_Return Gmovea.Gmove_Open_SX0
                                                   Function_Return Gmovea.Gmove_Open_SP0
        End_Function //nfSysxetismeni_Axia
        
        Function nfYpolipo_Pros_Sysxetisi Returns Number
                 If (Gmovea.Gmove_Open_YX0 <> 0) Function_Return Gmovea.Gmove_Open_YX0
                                                   Function_Return Gmovea.Gmove_Open_YP0
        End_Function //nfYpolipo_Pros_Sysxetisi
        
        Function sfXP Returns String
                 If (Gmovea.Gmove_X0 <> 0) Function_Return "  ï"
                                             Function_Return "  è"
        End_Function //nfarxiki_axia
        //AB-StoreTopEnd

        Set Ordering to 1
        Set Size to 70 507
        Set Location to 128 3
        Set CurrentRowColor to 11468799
        Set Wrap_State to TRUE
        Set Child_Table_State to FALSE

        Begin_Row
            Entry_Item Gmovea.Recnum
            Entry_Item Gmovea.Gtypkin_code
            Entry_Item Gmovea.Garticl_no
            Entry_Item Gmovea.Garticl_hmnia
            Entry_Item (sfXP(Self))
            Entry_Item (nfArxiki_Axia(Self))
            Entry_Item (nfSysxetismeni_Axia(Self))
            Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
            Entry_Item Gopen.Gopen_x0
            Entry_Item Gopen.Gopen_p0
        End_Row

        Set Form_Width    item 0 to 35
        Set Header_Label  item 0 to "Recnum"
        
        Set Form_Width    item 1 to 38
        Set Header_Label  item 1 to "âÂ§û©û"
        
        Set Form_Width    item 2 to 36
        Set Header_Label  item 2 to "Ä®†ü£Ê™"
        
        Set Form_Width    item 3 to 42
        Set Header_Label  item 3 to "Ü£/§Âò"
        
        Set Form_Width    item 4 to 18
        Set Header_Label  item 4 to "ïè"
        
        Set Form_Width    item 5 to 74
        Set Header_Label  item 5 to "Ä®Æ†°„ Ä•Âò"
        
        Set Form_Width    item 6 to 74
        Set Header_Label  item 6 to "ë¨©Æú´†©£‚§û Ä•Âò"
        
        Set Form_Width    item 7 to 74
        Set Header_Label  item 7 to "ìßÊ¢¶†ß¶"
        
        Set Form_Width    item 8 to 60
        Set Header_Label  item 8 to "ë¨©Æú´†ùÊ£ú§û ï®‚‡©û"
        
        Set Form_Width    item 9 to 60
        Set Header_Label  item 9 to "ë¨©Æú´†ùÊ£ú§û èÂ©´‡©û"
        

        //AB-StoreStart
        Function Row_Save Returns Integer
                 Integer liRetval
                 Forward Get Row_Save to liRetval
                 If (liRetval = 0) Send Display to (dbGridSub5(Self))
                 Function_Return liRetval
        End_Function //row_save
        
        Procedure Request_Clear_All
        End_Procedure // Request_Clear_All
        
        
        
        //AB-StoreEnd

    End_Object    // dbGridSub2

End_Object    // delme

//AB/ End_Object    // prj
