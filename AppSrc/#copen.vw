//AB/ Project Copen
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Copen"
//AB/         Set ProjectFileName to "Copen.VW"

// Project Object Structure
//   Copen is a dbViewSubS
//     Ctypkin_DD2 is a Ctypkin_DataDictionary
//     Cities_DD2 is a Cities_DataDictionary
//     Clients_DD2 is a Clients_DataDictionary
//     Cmoves_DD2 is a Cmoves_DataDictionary
//     Cmovesa_DD2 is a Cmovesa_DataDictionary
//     Copen_DD2 is a Copen_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Clients_Clients_Code is a dbFormSub
//     Clients_Clients_Descr is a dbFormSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPage1 is a dbTabPage
//         dbGridSub6 is a dbGridSub
//         TextBoxSub8 is a TextBoxSub
//         Cmoves_Cmoves_Hmnia is a dbFormSub
//         Cmoves_Cmoves_Par is a dbFormSub
//         Cmoves_Cmoves_Axia is a dbFormSub
//         Cmoves_Cmoves_X0 is a dbFormSub
//         Cmoves_Cmoves_P0 is a dbFormSub
//         TextBoxSub18 is a TextBoxSub
//         TextBoxSub19 is a TextBoxSub
//         TextBoxSub20 is a TextBoxSub
//         TextBoxSub21 is a TextBoxSub
//         TextBoxSub22 is a TextBoxSub
//         Cmoves_Axia_Pros_Sysx is a dbFormSub
//         Cmoves_Axia_Sysxet is a dbFormSub
//         Cmoves_Axia_Ypol_Sysx is a dbFormSub
//         TextBoxSub23 is a TextBoxSub
//         TextBoxSub24 is a TextBoxSub
//         TextBoxSub25 is a TextBoxSub
//     TextBoxSub13 is a TextBoxSub
//     dbContYear is a dbContainer3dSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       Syscurxr_Company_Name is a dbFormSub
//       Syscurxr_Branch_Name is a dbFormSub
//       Syscurxr_Year_Year is a dbFormSub
//     TextBoxSub16 is a TextBoxSub
//     TextBoxSub17 is a TextBoxSub
//     frmHmApo is a cSyDateForm
//     frmHmEos is a cSyDateForm
//     btnPeriorise is a ButtonSub

// Register all objects
Register_Object btnPeriorise
Register_Object Cities_DD
Register_Object Cities_DD2
Register_Object Clients_Clients_Code
Register_Object Clients_Clients_Descr
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object Cmoves_Axia_Pros_Sysx
Register_Object Cmoves_Axia_Sysxet
Register_Object Cmoves_Axia_Ypol_Sysx
Register_Object Cmoves_Cmoves_Axia
Register_Object Cmoves_Cmoves_Hmnia
Register_Object Cmoves_Cmoves_P0
Register_Object Cmoves_Cmoves_Par
Register_Object Cmoves_Cmoves_X0
Register_Object Cmoves_DD
Register_Object Cmoves_DD2
Register_Object Cmovesa_DD
Register_Object Cmovesa_DD2
Register_Object Copen
Register_Object Copen_DD
Register_Object Copen_DD2
Register_Object Ctypkin_DD
Register_Object Ctypkin_DD2
Register_Object dbContYear
Register_Object dbGridSub6
Register_Object dbTabDialogSubS1
Register_Object dbTabPage1
Register_Object frmHmApo
Register_Object frmHmEos
Register_Object Syscurxr_Branch_Name
Register_Object Syscurxr_Company_Name
Register_Object Syscurxr_DD
Register_Object Syscurxr_Year_Year
Register_Object TextBoxSub13
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8


//AB/     AppBuild VIEW


    //AB-StoreTopStart
                                        
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbTabDlgS.Sub
    Use dbGrid.Sub
    Use Txtbox.Sub
    Use dbCont3.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub

    Use CTYPKIN.DD
    Use CITIES.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    Use CMOVESA.DD
    Use COPEN.DD
    Use SYSCURXR.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Copen FOR ;
    ;
    Object Copen is a dbViewSubS

        //AB-StoreTopStart
                                
        Property String psClientID  Public ''
        Property date pdApo         Public ''
        Property date pdEos         Public ''
        
        Object Ctypkin_DD2 is a Ctypkin_DataDictionary
        End_Object
        
        Object Cities_DD2 is a Cities_DataDictionary
        End_Object
        
        Object Clients_DD2 is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD2 (self))
        End_Object
        
        Object Cmoves_DD2 is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD2 (self))
            Set DDO_Server to (Clients_DD2 (self))
        End_Object
        
        Object Cmovesa_DD2 is a Cmovesa_DataDictionary
        End_Object
        
        Object Copen_DD2 is a Copen_DataDictionary
            Set DDO_Server to (Cmoves_DD2 (self))
            Set DDO_Server to (Cmovesa_DD2(self))
        End_Object
        
        
        //AB-StoreTopEnd

        Set Label to "É†òÆúÂ®†©û Open Items"
        Set Size to 286 526
        Set Location to 1 3

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Cities_DD is a Cities_DataDictionary
        End_Object    // Cities_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
            set constrain_file to clients.file_number 

            //AB-StoreStart
            set pifrombp to 1
            
            Procedure OnConstrain
                If (pdApo(Self)<>'') Constrain Cmoves.Cmoves_Hmnia Ge (pdApo(Self))
                If (pdEos(Self)<>'') Constrain Cmoves.Cmoves_Hmnia Le (pdEos(Self))
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Cmoves_DD

        Object Cmovesa_DD is a Cmovesa_DataDictionary

            //AB-StoreStart
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
            //AB-StoreEnd

        End_Object    // Cmovesa_DD

        Object Copen_DD is a Copen_DataDictionary

            //AB-StoreTopStart
                                    
            //AB-StoreTopEnd

            Set DDO_Server to (Cmoves_DD(self))
            Set DDO_Server to (Cmovesa_DD(self))
            Set Constrain_File to Cmoves.File_Number

            //AB-StoreStart
                                    
                                    
                                    
            //AB-StoreEnd

        End_Object    // Copen_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Clients_DD(self))
        Set Server to (Clients_DD(self))

        //AB-DDOEnd

        Object Clients_Clients_Code is a dbFormSub
            entry_item clients.client_id 
            Set Size to 13 138
            Set Location to 30 50
            Set Label_Col_Offset to 85
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                
            Procedure OnChange
                String sClientID
                Get Field_Current_Value Of Clients_DD ;
                    field clients.client_id to sclientid 
                Set psClientID              to sClientID
            End_Procedure
            
            Procedure Prompt
                String sClientID
                Forward Send Prompt
                Get Field_Current_Value Of Clients_DD ;
                    field clients.client_id to sclientid 
                Set psClientID              to sClientID
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_Clients_Code

        Object Clients_Clients_Descr is a dbFormSub
            entry_item clients.client_name 
            Set Size to 13 242
            Set Location to 30 194
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Clients_Clients_Descr

        Object dbTabDialogSubS1 is a dbTabDialogSubS
            Set Size to 188 518
            Set Location to 75 4
            Set Buttons_State to TRUE
            Object dbTabPage1 is a dbTabPage
                Set Label to "dbTabPage1"
                Object dbGridSub6 is a dbGridSub

                    //AB-StoreTopStart
                    
                    //Function nfArxiki_Axia Returns Number
                    //    If (Cmovesa.Cmoves_X0 <> 0) Function_Return Cmovesa.Cmoves_X0
                    //    Function_Return Cmovesa.Cmoves_P0
                    //End_Function //nfarxiki_axia
                    
                    //Function nfSysxetismeni_Axia Returns Number
                    //    If (Cmovesa.Cmoves_Open_SX0 <> 0) Function_Return Cmovesa.Cmoves_Open_SX0
                    //    Function_Return Cmovesa.Cmoves_Open_SP0
                    //End_Function //nfSysxetismeni_Axia
                    
                    //Function nfYpolipo_Pros_Sysxetisi Returns Number
                    //    If (Cmovesa.Cmoves_Open_YX0 <> 0) Function_Return Cmovesa.Cmoves_Open_YX0
                    //    Function_Return Cmovesa.Cmoves_Open_YP0
                    //End_Function //nfYpolipo_Pros_Sysxetisi
                    
                    Function sfXP Returns String
                        If (Cmovesa.Cmoves_X0 <> 0) Function_Return "  ï"
                        Function_Return "  è"
                    End_Function //nfarxiki_axia
                    
                    Function fsCtypkinDescr String asCtypkinCode Returns String
                        Clear Ctypkin
                        Move SysCurXr.Company_Code  to Ctypkin.Company_Code
                        Move SysCurXr.Branch_Code   to Ctypkin.Branch_Code
                        Move SysCurXr.Year_Year     to Ctypkin.Year_Year
                        Move asCtypkinCode          to Ctypkin.Ctypkin_Code
                        Find Eq Ctypkin By Index.1
                        Function_Return Ctypkin.Ctypkin_Descr
                    End_Function
                    
                    
                    //AB-StoreTopEnd

                    Set Main_File to Copen.File_Number
                    Set Server to (Copen_DD(self))
                    Set Size to 91 507
                    Set Location to 76 4
                    Set CurrentRowColor to 11468799
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Cmovesa.Cmoves_hmnia
                        Entry_Item Cmovesa.Cmoves_par
                        Entry_Item Cmovesa.Ctypkin_code
                        Entry_Item (fsCtypkinDescr(Self,Cmovesa.Ctypkin_code))
                        Entry_Item (sfXP(Self))
                        Entry_Item (nfArxiki_Axia(Self))
                        Entry_Item (nfSysxetismeni_Axia(Self))
                        Entry_Item Copen.Copen_x0
                        Entry_Item Copen.Copen_p0
                        Entry_Item (nfYpolipo_Pros_Sysxetisi(Self))
                    End_Row

                    Set Form_Width    item 0 to 47
                    Set Header_Label  item 0 to "Ü£/§Âò"
                    
                    Set Form_Width    item 1 to 56
                    Set Header_Label  item 1 to "èò®ò©/°Ê"
                    
                    Set Form_Width    item 2 to 30
                    Set Header_Label  item 2 to "â‡õ"
                    
                    Set Form_Width    item 3 to 45
                    Set Header_Label  item 3 to "âÂ§û©û"
                    
                    Set Form_Width    item 4 to 24
                    Set Header_Label  item 4 to "ïè"
                    
                    Set Form_Width    item 5 to 60
                    Set Header_Label  item 5 to "Ä®Æ.Ä•Âò"
                    
                    Set Form_Width    item 6 to 60
                    Set Header_Label  item 6 to "ë¨©Æ/§û Ä•Âò"
                    
                    Set Form_Width    item 7 to 60
                    Set Header_Label  item 7 to "ë¨©Æ. ï®."
                    
                    Set Form_Width    item 8 to 60
                    Set Header_Label  item 8 to "ë¨©Æ. è†©."
                    
                    Set Form_Width    item 9 to 60
                    Set Header_Label  item 9 to "ìßÊ¢¶†ß¶"
                    

                    //AB-StoreStart
                    
                    Function Row_Save Returns Integer
                        Integer liRetval
                        Forward Get Row_Save to liRetval
                        If (liRetval = 0) Send Display to (dbGridSub6(Self))
                        Function_Return liRetval
                    End_Function //row_save
                    
                    Procedure Request_Clear_All
                    End_Procedure // Request_Clear_All
                    
                    Procedure Prompt
                        Set psClientID Of sl006a to (psClientID(Copen(Self)))
                        Forward Send Prompt
                    End_Procedure
                    
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos ""    to    iDecs
                        Set Points       Item 5         to    iDecs
                        Set Points       Item 6         to    iDecs
                        Set Points       Item 7         to    iDecs
                        Set Points       Item 8         to    iDecs
                        Set Points       Item 9         to    iDecs
                        Set Numeric_Mask Item 5         to 14 iDecs '*, '
                        Set Numeric_Mask Item 6         to 14 iDecs '*, '
                        Set Numeric_Mask Item 7         to 14 iDecs '*, '
                        Set Numeric_Mask Item 8         to 14 iDecs '*, '
                        Set Numeric_Mask Item 9         to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    //AB-StoreEnd

                End_Object    // dbGridSub6

                Object TextBoxSub8 is a TextBoxSub
                    Set Label to "ë¨©Æú´†ùÊ£ú§ú™ â†§„©ú†™"
                    Set Location to 65 4
                    Set Size to 10 89
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub8

                Object Cmoves_Cmoves_Hmnia is a dbFormSub
                    Entry_Item Cmoves.Cmoves_hmnia
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 2 50
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                                                                                                                                                                                                                                    
                    Set Item_Option Item 0 to NoPut true
                    
                    Procedure Prompt
                        Set psClientID Of (sl006(Self)) to (psClientID(Self))
                        Forward Send Prompt
                    End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Hmnia

                Object Cmoves_Cmoves_Par is a dbFormSub
                    Entry_Item Cmoves.Cmoves_par
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 290
                    Set Location to 2 199
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // Cmoves_Cmoves_Par

                Object Cmoves_Cmoves_Axia is a dbFormSub
                    Entry_Item Cmoves.Cmoves_axia
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 21 50
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                                                                                                                                    
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0       to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Axia

                Object Cmoves_Cmoves_X0 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_x0
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 21 199
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0       to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_X0

                Object Cmoves_Cmoves_P0 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_p0
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 21 349
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0 to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_P0

                Object TextBoxSub18 is a TextBoxSub
                    Set Label to "Ü£ú®/§Âò"
                    Set Location to 2 4
                    Set Size to 13 39
                End_Object    // TextBoxSub18

                Object TextBoxSub19 is a TextBoxSub
                    Set Label to "èò®ò©´ò´†°Ê"
                    Set Location to 2 144
                    Set Size to 13 49
                End_Object    // TextBoxSub19

                Object TextBoxSub20 is a TextBoxSub
                    Set Label to "Ä•Âò"
                    Set Location to 21 4
                    Set Size to 13 18
                End_Object    // TextBoxSub20

                Object TextBoxSub21 is a TextBoxSub
                    Set Label to "ï®‚‡©û"
                    Set Location to 21 144
                    Set Size to 13 29
                End_Object    // TextBoxSub21

                Object TextBoxSub22 is a TextBoxSub
                    Set Label to "èÂ©´‡©û"
                    Set Location to 21 292
                    Set Size to 13 31
                End_Object    // TextBoxSub22

                Object Cmoves_Axia_Pros_Sysx is a dbFormSub
                    Entry_Item Cmoves.Axia_pros_sysx
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 42 50
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0       to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Axia_Pros_Sysx

                Object Cmoves_Axia_Sysxet is a dbFormSub
                    Entry_Item Cmoves.Axia_sysxet
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 42 199
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0 to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Axia_Sysxet

                Object Cmoves_Axia_Ypol_Sysx is a dbFormSub
                    Entry_Item Cmoves.Axia_ypol_sysx
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 42 349
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart
                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0 to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure
                    
                    
                    
                    //AB-StoreEnd

                End_Object    // Cmoves_Axia_Ypol_Sysx

                Object TextBoxSub23 is a TextBoxSub
                    Set Label to "è¶©Ê ß®¶™ ë¨©Æ‚´†©û"
                    Set Location to 40 4
                    Set Size to 16 41
                    Set Justification_Mode to jMode_Left
                End_Object    // TextBoxSub23

                Object TextBoxSub24 is a TextBoxSub
                    Set Label to "è¶©Ê ë¨©Æú´†©£‚§¶"
                    Set Location to 39 144
                    Set Size to 15 49
                    Set Justification_Mode to jMode_Left
                End_Object    // TextBoxSub24

                Object TextBoxSub25 is a TextBoxSub
                    Set Label to "ìßÊ¢¶†ß¶ ß®¶™ ë¨©Æ‚´†©û"
                    Set Location to 39 292
                    Set Size to 17 52
                    Set Justification_Mode to jMode_Left
                End_Object    // TextBoxSub25


                //AB-StoreStart
                Set Label to "Ñ°°®ú£„ èò®ò©´ò´†°·"
                //AB-StoreEnd

            End_Object    // dbTabPage1


            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                        
            //AB-StoreEnd

        End_Object    // dbTabDialogSubS1

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "î¶®‚ò™"
            Set Location to 30 9
            Set Size to 13 31
        End_Object    // TextBoxSub13

        Object dbContYear is a dbContainer3dSub
            Set Server to (Cmovesa_DD(self))
            Set Border_Style to Border_StaticEdge
            Set Size to 21 518
            Set Location to 2 3
            Object TextBoxSub4 is a TextBoxSub
                Set Label to "Ñ´ò†®Âò:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 7
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "ìß¶°/£ò:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 214
                Set Size to 10 33
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "ï®„©û:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 408
                Set Size to 10 26
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub6

            Object Syscurxr_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 159
                Set Location to 4 47
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Company_Name

            Object Syscurxr_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 141
                Set Location to 4 259
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Branch_Name

            Object Syscurxr_Year_Year is a dbFormSub
                Entry_Item Syscurxr.Year_year
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 53
                Set Location to 4 446
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Year_Year

        End_Object    // dbContYear

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "ÄßÊ Ü£/§Âò"
            Set Location to 46 9
            Set Size to 13 38
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub16

        Object TextBoxSub17 is a TextBoxSub
            Set Label to "Ñ‡™ Ü£/§Âò"
            Set Location to 46 149
            Set Size to 13 39
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub17

        Object frmHmApo is a cSyDateForm
            Set Size to 13 66
            Set Location to 46 50
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // frmHmApo

        Object frmHmEos is a cSyDateForm
            Set Size to 13 66
            Set Location to 46 194
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // frmHmEos

        Object btnPeriorise is a ButtonSub
            Set Label to "èú®†Ê®†©ú ô·©û Ü£ú®¶£û§†È§"
            Set Size to 14 123
            Set Location to 46 314

            //AB-StoreStart
                                                                                                                                                                                    
            Procedure OnClick
                Date dApo dEos
                String sClientID
                get field_current_value of clients_dd field clients.client_id to sclientid 
                Get Value Of frmHmApo Item 0 to dApo
                Get Value Of frmHmEos Item 0 to dEos
                Set psClientID to sClientID
                Set pdApo to dApo
                Set pdEos to dEos
                Send Rebuild_Constraints to Cmoves_DD
                Send Rebuild_Constraints to Copen_DD
                Send Beginning_Of_Data To (dbGridSub6(dbTabPage1(dbTabDialogSubS1(Self)))) True
            End_Procedure // OnClick
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // btnPeriorise


        //AB-StoreStart
                                
        //***************** Predefined Procedures and Functions Section **************
        
        Procedure Activate_View Returns Integer
             Integer Rval
             Forward Get MSG_Activate_View to Rval
             If (Not(Rval)) Begin
                Move '01' to gs_Module_Code
             End
             Procedure_Return rVal
        End_Procedure // Activate_View
        
        
        //Set Verify_Exit_Msg To Get_No_Confirmation
        
        
        
        
        
        
        //AB-StoreEnd

    CD_End_Object    // Copen


    //AB-StoreStart
                                        
                                        
                                        
                                        
    //AB-StoreEnd

//AB/     End_Object    // prj
