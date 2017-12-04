//AB/ Project VWKARTEL
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "VWKARTEL"
//AB/     Set ProjectFileName to "VWKARTEL.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   VWKARTEL is a dbViewSubS
//     CN_DD2 is a CN_DataDictionary
//     Ctypkin_DD2 is a Ctypkin_DataDictionary
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//     dbContainer3dSub2 is a dbContainer3dSub
//       Clients_Client_Id is a dbFormSub
//       Clients_Client_Name is a dbFormSub
//       Clients_Client_Afm is a dbFormSub
//       TextBoxSub13 is a TextBoxSub
//       TextBoxSub14 is a TextBoxSub
//       TextBoxSub15 is a TextBoxSub
//       Cn_Cn_Code is a dbFormSub
//       Cn_Cn_Descr is a dbFormSub
//       TextBoxSub22 is a TextBoxSub
//     SelectGroup is a dbContainer3dSub
//       TextBoxSub19 is a TextBoxSub
//       frmCtypkin is a FormSub
//       HmApo is a cSyDateForm
//       HmEos is a cSyDateForm
//       ButtonSub1 is a ButtonSub
//       TextBoxSub20 is a TextBoxSub
//       TextBoxSub21 is a TextBoxSub
//     Cmoves_ is a dbGridSub
//     btnPartl is a ButtonSub
//     TextBoxSub16 is a TextBoxSub
//     TextBoxSub17 is a TextBoxSub
//     frmXre is a FormSub
//     frmPis is a FormSub
//     frmYpol is a FormSub
//     TextBoxSub18 is a TextBoxSub
//     CN_Cn_Code is a dbFormSub
//     Cn_Cn_Descr is a dbFormSub
//     TextBoxSub23 is a TextBoxSub
//     Cmoves_Cn_Code is a dbFormSub
//     btnAutoCopen is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Branch_Branch_Name
Register_Object Branch_DD
Register_Object ButtonSub1
Register_Object btnAutoCopen
Register_Object btnPartl
Register_Object Cities_DD
Register_Object Clients_Client_Afm
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Cmoves_
Register_Object Cmoves_Cn_Code
Register_Object Cmoves_DD
Register_Object CN_Cn_Code
Register_Object CN_DD2
Register_Object Cn_Cn_Code
Register_Object Cn_Cn_Descr
Register_Object Cn_DD
Register_Object Company_Company_Name
Register_Object Company_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object Ctypkin_DD2
Register_Object dbContainer3dSub2
Register_Object dbGroupSub1
Register_Object frmCtypkin
Register_Object frmPis
Register_Object frmXre
Register_Object frmYpol
Register_Object HmApo
Register_Object HmEos
Register_Object Mhxanik_DD
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object SelectGroup
Register_Object Syscurxr_DD
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Towns_DD
Register_Object VWKARTEL
Register_Object Year_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use sl007.sl
Use sl041.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use Txtbox.Sub
Use dbCont3.Sub
Use Form.Sub
Use cSyDateForm.Pkg
Use Button.Sub
Use dbGrid.Sub

Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD
Use CTYPKIN.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use CMOVES.DD
Use SYSCURXR.DD
Use CONSTRCT.DD
Use SALESMEN.DD
Use MHXANIK.DD
Use CN.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_VWKARTEL FOR VWKARTEL

Object VWKARTEL is a dbViewSubS

    //AB-StoreTopStart
    use cmovesa.dd
    
    Property String     psCtypkinCode   Public ''
    Property String     psClientID      Public ''
    Property Date       pdHmApo         Public ''
    Property Date       pdHmEos         Public ''
    Property String     psModule        Public ''
    Property String     psErgo          Public ''
    Property Integer    piWhere         Public 0
    
    Object CN_DD2 is a CN_DataDictionary
    End_Object
    
    Object Ctypkin_DD2 is a Ctypkin_DataDictionary
        Begin_Constraints
            Constrain Ctypkin.Ctypkin_Module eq (psModule(Self))
        End_Constraints
    End_Object
    
    Procedure Find_Current_Cmoves_Ergo
        String  sErgo sDescr
        Send Clear to Cn_DD2
        Get Field_Current_Value Of CMoves_DD Field CMoves.CN_Code to sErgo
        If (Trim(sErgo)<>'') Begin
            Move sErgo to Cn.CN_Code
            Send Find to CN_DD2 Eq 5
        End
    End_Procedure
    
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ èú¢ò´È§ / âò®´‚¢¢ò â†§„©ú‡§"
    Set Size to 288 520
    Set Location to 2 3

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Year_DD

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))

        //AB-StoreStart
        Begin_Constraints
            If (psModule(Self)='01') Begin
                Constrain Clients.is_Client        Eq '1'
            End
            Else If (psModule(Self)='02') Begin
                Constrain Clients.is_Promhtheyths  Eq '1'
            End
        End_Constraints
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Cmoves_DD is a Cmoves_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Clients_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
                                                                        
        Set Ordering to 4
        
        Begin_Constraints
            String  sCtypkinCode sErgo sClient sModule
            Date    dHmApo dHmEos
        
            Get     psErgo         Of (vwKartel(Self)) to sErgo
            Get     psCtypkinCode  Of (vwKartel(Self)) to sCtypkinCode
            Get     pdHmApo        Of (vwKartel(Self)) to dHmApo
            Get     pdHmEos        Of (vwKartel(Self)) to dHmEos
            Get     psClientID     Of (vwKartel(Self)) to sClient
        
            Constrain Cmoves.Company_Code   Eq Syscurxr.Company_Code
            Constrain Cmoves.Branch_Code    Eq Syscurxr.Branch_Code
            Constrain Cmoves.Year_Year      Eq Syscurxr.Year_Year
            Constrain Cmoves.Client_ID      Eq sClient
        
            If (dHmApo<>'')             Constrain Cmoves.Cmoves_Hmnia   Ge dHmApo
            If (dHmEos<>'')             Constrain Cmoves.Cmoves_Hmnia   Le dHmEos
            If (psModule(Self)<>'')     Constrain Cmoves.Module_From    Eq (psModule(Self))
            If (Trim(sCtypkinCode)<>'') Constrain Cmoves.Ctypkin_Code   Eq (Trim(sCtypkinCode))
            If (Trim(sErgo)<>'')        Constrain Cmoves.CN_Code        Eq (Trim(sErgo))
        
        End_Constraints
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cmoves_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
                                                                                                            
        //Begin_Constraints
        //    String  sClient
        //    Get psClientID Of (vwKartel(Self)) to sClient
        //    Constrain CN.Client_ID Eq sClient
        //End_Constraints
        
        
        
        //AB-StoreEnd

    End_Object    // Cn_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 23 510
        Set Location to -3 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 135
            Set Location to 7 57
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 168
            Set Location to 7 228
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 70
            Set Location to 7 432
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 10
            Set Size to 10 31
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ìß¶°/£ò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 196
            Set Size to 10 32
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "ï®„©û"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 9 404
            Set Size to 10 25
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub6

    End_Object    // dbGroupSub1

    Object dbContainer3dSub2 is a dbContainer3dSub
        Set Border_Style to Border_Normal
        Set Size to 32 510
        Set Location to 23 3
        Object Clients_Client_Id is a dbFormSub

            //AB-StoreTopStart
                                                                    
            //AB-StoreTopEnd

            Entry_Item Clients.Client_id
            Set Size to 13 82
            Set Location to 2 56
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_FontWeight Item 0 to 800
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                    
            Procedure Request_Clear
                Delegate Send Request_Clear
            End_Procedure
            
            Procedure Request_Clear_All
                Delegate Send Request_Clear_All
            End_Procedure
            
            Procedure Prompt
                String  sID
                Get Field_Current_Value Of Clients_DD Field Clients.CLient_ID to sID
                Set Modal_State  Of (sl100(Self)) to True
                Set psModule     Of (sl100(Self)) to (psModule(vwKartel(Self)))
                Set FragmaClient Of (sl100(Self)) to sID
                Forward Send Prompt
                Set psModule     Of (sl100(Self)) to ''
                Set FragmaClient Of (sl100(Self)) to ''
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure Find_Next
                Forward Send Find_Next
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure Find_Previous
                Forward Send Find_Previous
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure Find_Ge
                Forward Send Find_Ge
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure Beginning_Of_Data
                Forward Send Beginning_Of_Data
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure End_Of_Data
                Forward Send End_Of_Data
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_Client_Id

        Object Clients_Client_Name is a dbFormSub
            Entry_Item Clients.Client_name
            Set Size to 13 216
            Set Location to 2 180
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_FontWeight Item 0 to 800
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Clients_Client_Name

        Object Clients_Client_Afm is a dbFormSub
            Entry_Item Clients.Client_afm
            Set Size to 13 70
            Set Location to 2 432
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Clients_Client_Afm

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "â‡õ†°Ê™"
            Set Location to 3 9
            Set Size to 10 33
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub13

        Object TextBoxSub14 is a TextBoxSub
            Set Label to "Ñß‡§¨£Âò"
            Set Location to 3 142
            Set Size to 10 34
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub14

        Object TextBoxSub15 is a TextBoxSub
            Set Label to "Ä.î.ã."
            Set Location to 3 406
            Set Size to 10 23
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub15

        Object Cn_Cn_Code is a dbFormSub
            Entry_Item Cn.Cn_code
            Set Server to (Cn_DD(self))
            Set Size to 13 82
            Set Location to 16 56
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                
            Procedure Prompt_CallBack Integer hPromptID
                Set FragmaClient_ID Of hPromptID to (psClientID(vwKartel(Self)))
            End_Procedure
            
            Procedure Prompt
                Set FragmaClient_ID Of (sl041(self)) to (psClientID(Self))
                Forward Send Prompt
                Set FragmaClient_ID Of (sl041(self)) to ''
                Set piWhere to 2
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure OnKillFocus
                Set piWhere to 2
                Send KeyAction to (ButtonSub1(SelectGroup(Self))) //Allaxe_Record
            End_Procedure
            
            Procedure Find_Next
            End_Procedure
            
            Procedure Find_Previous
            End_Procedure
            
            Procedure Find_Ge
            End_Procedure
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Cn_Cn_Code

        Object Cn_Cn_Descr is a dbFormSub
            Entry_Item Cn.Cn_descr
            Set Server to (Cn_DD(self))
            Set Size to 13 323
            Set Location to 16 180
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Cn_Cn_Descr

        Object TextBoxSub22 is a TextBoxSub
            Set Label to "'Ñ®ö¶"
            Set Location to 17 9
            Set Size to 12 20
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub22

    End_Object    // dbContainer3dSub2

    Object SelectGroup is a dbContainer3dSub
        Set Border_Style to Border_StaticEdge
        Set Size to 18 510
        Set Location to 58 3
        Object TextBoxSub19 is a TextBoxSub
            Set Label to "âÂ§û©û"
            Set Location to 3 8
            Set Size to 10 25
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub19

        Object frmCtypkin is a FormSub
            Set Size to 13 82
            Set Location to 2 56
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            Set Prompt_Object to (sl007(self))
            
            Procedure Prompt
                Set psModule Of (sl007(Self)) to (psModule(vwKartel(Self)))
                Forward Send prompt
                Set psModule Of (sl007(Self)) to ''
            End_procedure
            
            Procedure Request_Clear
                Delegate Send Request_Clear
            End_Procedure
            
            Procedure Request_Clear_All
                Delegate Send Request_Clear_All
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // frmCtypkin

        Object HmApo is a cSyDateForm
            Set Size to 13 66
            Set Location to 2 222
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            Procedure Request_Clear
                Delegate Send Request_Clear
            End_Procedure
            
            Procedure Request_Clear_All
                Delegate Send Request_Clear_All
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // HmApo

        Object HmEos is a cSyDateForm
            Set Size to 13 66
            Set Location to 2 332
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            Procedure Request_Clear
                Delegate Send Request_Clear
            End_Procedure
            
            Procedure Request_Clear_All
                Delegate Send Request_Clear_All
            End_Procedure
            
            //AB-StoreEnd

        End_Object    // HmEos

        Object ButtonSub1 is a ButtonSub
            Set Label to "èú®†Ê®†©ú"
            Set Size to 13 50
            Set Location to 2 453
            Set Form_FontHeight Item 0 to 14
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "Arial Greek"

            //AB-StoreStart
                                                                                    
            Procedure OnClick
                String  sCtypkinCode sErgo sClient smodule sClientName
                Date    dHmApo dHmEos
                Number  nXre nPist nYpol
            
                get psmodule to smodule
            
                Send Rebuild_Constraints to Clients_DD
            
                Get Field_Current_Value Of Clients_DD   Field Clients.Client_ID     to sClient
            
            
                If (piWhere(Self)=1) Begin
                    Send Clear to CN_DD
                    Send Clear to CN_DD2
                    Send Rebuild_Constraints to CN_DD
                End
                Else Begin
                    Send Rebuild_Constraints to CN_DD
                End
            
                Get Value Of frmCtypkin Item 0                                      to sCtypkinCode
                Get Value Of HmApo      Item 0                                      to dHmApo
                Get Value Of HmEos      Item 0                                      to dHmEos
                Get Field_Current_Value Of Clients_DD   Field Clients.Client_Name   to sClientName
                Set Value Of (Clients_Client_Name(dbContainer3dSub2(Self))) Item 0  to sClientName
            
                Get Field_Current_Value Of Cn_DD Field Cn.Cn_Code to sErgo
                //Get Value Of (CN_CN_Code(dbContainer3dSub2(Self))) Item 0 to sErgo
            
                If (dHmApo='') Move '01/01/2001' to dHmApo
                If (dHmEos='') Move '31/12/2100' to dHmEos
            
                Move 0 to nXre
                Move 0 to nPist
                Move 0 to nYpol
            
                Set psCtypkinCode   to (Trim(sCtypkinCode))
                Set pdHmApo         to dHmApo
                Set pdHmEos         to dHmEos
                Set psClientID      to sClient
                Set psErgo          to sErgo
            
                Send Rebuild_Constraints                            to Cmoves_DD
                Send Beginning_Of_Data                              to Cmoves_ True
            
                Send Find_Current_Cmoves_Ergo
            
                Clear Cmoves
                Move syscurxr.company_code  to cmoves.company_code
                Move syscurxr.branch_code   to cmoves.branch_code
                Move syscurxr.year_year     to cmoves.year_year
                move smodule                to cmoves.module_from
                Move sClient    to Cmoves.Client_ID
                Move dHmApo     to Cmoves.Cmoves_Hmnia
                Find Gt Cmoves by index.13
                While ((Found=1) And  (cmoves.company_code eq syscurxr.company_code) and;
                                      (cmoves.branch_code  eq syscurxr.branch_code)  and;
                                      (cmoves.year_year    eq syscurxr.year_year)    and;
                                      (cmoves.module_from  eq smodule)               and;
                                      (Cmoves.Client_ID=sClient)                     And;
                                      (Cmoves.Cmoves_Hmnia<=dHmEos))
                    If (sCtypkinCode<>'') Begin
                        If (sErgo<>'') Begin
                            If ((Cmoves.Ctypkin_Code=sCtypkinCode) And ;
                                (Cmoves.CN_Code     =sErgo       )) Begin
                                Add Cmoves.Cmoves_X0    to nXre
                                Add Cmoves.Cmoves_P0    to nPist
                            End
                        End
                        Else Begin
                            If (Cmoves.Ctypkin_Code=sCtypkinCode) Begin
                                Add Cmoves.Cmoves_X0    to nXre
                                Add Cmoves.Cmoves_P0    to nPist
                            End
                        End
                    End
                    Else Begin
                        If (sErgo<>'') Begin
                            If (Cmoves.CN_Code=sErgo) Begin
                                Add Cmoves.Cmoves_X0    to nXre
                                Add Cmoves.Cmoves_P0    to nPist
                            End
                        End
                        Else Begin
                            Add Cmoves.Cmoves_X0    to nXre
                            Add Cmoves.Cmoves_P0    to nPist
                        End
                    End
                    Find Gt Cmoves by index.13
                Loop
                Move (nXre-nPist) to nYpol
                Set Value Of frmXre item 0 to nXre
                Set Value Of frmPis item 0 to nPist
                Set Value Of frmYpol item 0 to nYpol
            
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub20 is a TextBoxSub
            Set Label to "ÄßÊ"
            Set Location to 4 204
            Set Size to 10 13
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub20

        Object TextBoxSub21 is a TextBoxSub
            Set Label to "ÑÈ™"
            Set Location to 4 314
            Set Size to 10 15
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub21

    End_Object    // SelectGroup

    Object Cmoves_ is a dbGridSub

        //AB-StoreTopStart
        
        
        //AB-StoreTopEnd

        Set Main_File to Cmoves.File_Number
        Set Server to (Cmoves_DD(self))
        Set Ordering to 4
        Set Size to 140 510
        Set Location to 79 3
        Set Wrap_State to TRUE
        Set Auto_Regenerate_State to FALSE

        Begin_Row
            Entry_Item Ctypkin.Ctypkin_code
            Entry_Item Ctypkin.Ctypkin_descr
            Entry_Item Cmoves.Cmoves_par
            Entry_Item Cmoves.Cmoves_hmnia
            Entry_Item Cmoves.Cmoves_x0
            Entry_Item Cmoves.Cmoves_p0
            Entry_Item Cmoves.Cmoves_sc_code2
            Entry_Item Cmoves.Cn_code
        End_Row

        Set Form_Width    item 0 to 45
        Set Header_Label  item 0 to "â‡õ. âÂ§."
        
        Set Form_Width    item 1 to 110
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 85
        Set Header_Label  item 2 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 3 to 55
        Set Header_Label  item 3 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "ï®‚‡©û"
        
        Set Form_Width    item 5 to 60
        Set Header_Label  item 5 to "èÂ©´‡©û"
        
        Set Form_Width    item 6 to 40
        Set Header_Label  item 6 to "åÊ£†©£ò"
        
        Set Form_Width    item 7 to 49
        Set Header_Label  item 7 to "Ñ®ö¶"
        

        //AB-StoreStart
        
        Set Read_Only_State To True
        
        Procedure Item_Change Integer aiFrom Integer aiTo Returns Integer
            Integer iTo
            String  sErgo sDescr
            Forward Get MSG_Item_Change aiFrom aiTo to ito
            Send Find_Current_Cmoves_Ergo
            Procedure_Return ito
        End_Procedure
        
        
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            move 2 to iDecimals
            Set Points          Item 4 to iDecimals
            Set Numeric_Mask    Item 4 to 14 iDecimals ' ,*'
            Set Points          Item 5 to iDecimals
            Set Numeric_Mask    Item 5 to 14 iDecimals ' ,*'
        End_Procedure
        
        Procedure Prompt
        End_Procedure
        
        Set Column_Option item 0 to NoPut True
        
        Set Column_Option item 1 to NoEnter True
        Set Column_Option item 2 to NoEnter True
        Set Column_Option item 3 to NoEnter True
        Set Column_Option item 4 to NoEnter True
        Set Column_Option item 5 to NoEnter True
        Set Column_Option item 6 to NoEnter True
        Set Column_Option item 7 to NoEnter True
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Cmoves_

    Object btnPartl is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Bitmap to "Filesys3.bmp"
        Set Size to 22 25
        Set Location to 247 3
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "Ñ£≠·§†©û ßò®ò©´ò´†°¶Á òß¶ è‡¢„©ú†™/Äö¶®‚™"
        Procedure OnClick
            String  sPartlRecr sModule sBarticlRecr
            Get Field_Current_Value Of Cmoves_DD Field Cmoves.Partl_Recr    to sPartlRecr
            Get Field_Current_Value Of Cmoves_DD Field Cmoves.Barticl_Recr  to sBarticlRecr
            Get Field_Current_Value Of Cmoves_DD Field Cmoves.Cmoves_M_Code to sModule
            Move (Trim(sPartlRecr))     to sPartlRecr
            Move (Trim(sBarticlRecr))   to sBarticlRecr
            If (sPartlRecr<>'') Begin
                If ( (sModule='01') Or (sModule='02') ) Begin
                    Set psModule Of (Particle(Self))            to sModule
                    Set psFindParticleRecr Of (Particle(Self))  to sPartlRecr
                    Send Activate_Particle
                End
            End
            Else Begin
                If (sBarticlRecr<>'') Begin
                    Set psFromCmoves Of (v036(Self)) to sBarticlRecr
                    Send Activate_v036
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPartl

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "°ò† ßò´„©´ú ö†ò ú£≠·§†©û ßò®ò©´ò´†°¶Á"
        Set TextColor to clNavy
        Set Location to 259 32
        Set Size to 10 162
        Set FontWeight to 800
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub16

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "Ñß†¢‚•´ú £†ò ©¨ö°ú°®†£‚§û °Â§û©û ©´¶§ ßÂ§ò°ò"
        Set TextColor to clNavy
        Set Location to 249 32
        Set Size to 10 162
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub17

    Object frmXre is a FormSub
        Set Size to 13 62
        Set Location to 243 340
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        Set Numeric_Mask item 0 to 10 2 ',* '
        
        
        
        //AB-StoreEnd

    End_Object    // frmXre

    Object frmPis is a FormSub
        Set Size to 13 59
        Set Location to 243 402
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        Set Numeric_Mask item 0 to 10 2 ',* '
        
        
        
        //AB-StoreEnd

    End_Object    // frmPis

    Object frmYpol is a FormSub
        Set Size to 13 59
        Set Location to 259 402
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        set enabled_state to false
        Set Numeric_Mask item 0 to 10 2 ',* '
        
        
        
        //AB-StoreEnd

    End_Object    // frmYpol

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "ìßÊ¢¶†ß¶"
        Set Location to 261 362
        Set Size to 10 33
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object CN_Cn_Code is a dbFormSub
        Entry_Item Cn.Cn_code
        Set Server to (Cn_DD(self))
        Set Size to 13 84
        Set Location to 221 3
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                                                                                                                            
        Set Server to (CN_DD2(Self))
        
        //AB-StoreEnd

    End_Object    // CN_Cn_Code

    Object Cn_Cn_Descr is a dbFormSub
        Entry_Item Cn.Cn_descr
        Set Server to (Cn_DD(self))
        Set Size to 13 423
        Set Location to 221 90
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                                                                                                                            
        Set Server to (CN_DD2(Self))
        
        //AB-StoreEnd

    End_Object    // Cn_Cn_Descr

    Object TextBoxSub23 is a TextBoxSub
        Set Label to "Ä¢¢òö„ Ñ®ö¶¨"
        Set Location to 245 234
        Set Size to 10 49
        Set FontWeight to 800
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub23

    Object Cmoves_Cn_Code is a dbFormSub
        Entry_Item Cmoves.Cn_code
        Set Server to (Cmoves_DD(self))
        Set Size to 13 69
        Set Location to 258 228
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Cmoves_Cn_Code

    Object btnAutoCopen is a ButtonSub
        Set Bitmap to "AutoCopen.bmp"
        Set Size to 21 23
        Set Location to 250 305
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        set tooltipvalue to "Ä¢¢òö„ Ñ®ö¶¨"
        
        
        Procedure OnClick
            String  sRecr sStr sCmovesRecr sModule scode
            Integer isClosed iErr iRecnum ilogik iYes iError_Object_ID
            get field_current_value of cmoves_dd field cmoves.cmoves_recr to srecr
            move cmoves.cmoves_recr to sstr
            get field_current_value of cmoves_dd field cmoves.cn_code to scode
            if (srecr=sstr) begin
                if (scode<>'') begin
                    reread cmoves
                    move scode to cmoves.cn_code
                    saverecord cmoves
                    unlock
                end
            end
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnAutoCopen


    //AB-StoreStart
                                    
    Set Verify_Data_Loss_Msg TO Get_No_Confirmation
    Set Verify_Delete_Msg    TO Get_No_Confirmation
    Set Verify_Save_Msg      TO Get_No_Confirmation
    Set Verify_Exit_Msg      TO Get_No_confirmation
    
    
    Procedure Request_Clear
        Forward Send Request_Clear_All
        Set Value Of (frmCtypkin(SelectGroup(Self))) Item 0 to ''
        Set Value Of (HmApo     (SelectGroup(Self))) Item 0 to ''
        Set Value Of (HmEos     (SelectGroup(Self))) Item 0 to ''
        Send Clear to CN_DD2
        Send KeyAction to (ButtonSub1(SelectGroup(Self)))
    End_Procedure
    
    Procedure Request_Clear_All
        Forward Send Request_Clear_All
        Set Value Of (frmCtypkin(SelectGroup(Self))) Item 0 to ''
        Set Value Of (HmApo     (SelectGroup(Self))) Item 0 to ''
        Set Value Of (HmEos     (SelectGroup(Self))) Item 0 to ''
        Send Clear to CN_DD2
        Send KeyAction to (ButtonSub1(SelectGroup(Self)))
    End_Procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal iCopenID
        String sModule
    
        Forward Get Msg_Activate_View to rVal
    
        Set prompt_button_mode of cmoves_ item 1 to pb_PromptOff
    
        Get psMenuModule  Of Main_Menu      to sModule
        Set psModule                        to sModule
    
        Set psCtypkinCode                   to ''
        Set psClientID                      to ''
        Set pdHmApo                         to ''
        Set pdHmEos                         to ''
        Set piWhere                         to 1
    
        Send Clear to Clients_DD
        Send Clear to CN_DD2
    
        Send KeyAction to (ButtonSub1(SelectGroup(Self)))
    
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                set label of vwKartel to "âò®´‚¢¢ò èú¢ò´È§ - â†§„©ú†™"
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                set label of vwKartel to "âò®´‚¢¢ò è®¶£ûüú¨´È§ - â†§„©ú†™"
              Case Break
        Case End
    
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // VWKARTEL


//AB-StoreStart
                                    
                                    
                                    
                                    
//AB-StoreEnd

//AB/ End_Object    // prj
