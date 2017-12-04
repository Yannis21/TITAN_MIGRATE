//AB/ Project SL037:BAXIO
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "SL037:BAXIO"
//AB/     Set ProjectFileName to "SL037.SL"

// Project Object Structure
//   SL037 is a dbModalPanelSub
//     Baxiokat_DD is a DataDictionary
//     Baxio_DD is a DataDictionary
//     oSelList is a dbListSub
//     TextBoxSub1 is a TextBoxSub
//     cSyDateForm1 is a cSyDateForm
//     TextBoxSub2 is a TextBoxSub
//     cSyDateForm2 is a cSyDateForm
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     FormSub1 is a FormSub
//     FormSub2 is a FormSub
//     FormSub3 is a FormSub
//     FormSub4 is a FormSub
//     ButtonSub1 is a ButtonSub
//     oOK_bn is a ButtonSub

// Register all objects
Register_Object Baxio_DD
Register_Object Baxiokat_DD
Register_Object ButtonSub1
Register_Object cSyDateForm1
Register_Object cSyDateForm2
Register_Object FormSub1
Register_Object FormSub2
Register_Object FormSub3
Register_Object FormSub4
Register_Object oOK_bn
Register_Object oSelList
Register_Object SL037
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub4
Register_Object TextBoxSub5



//AB-StoreTopStart
    
Use sl100.sl


//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Txtbox.Sub
Use cSyDateForm.Pkg
Use Form.Sub
Use Button.Sub


Use BAXIOKAT.DD
Use BAXIO.DD

//AB-IgnoreEnd

Object SL037 is a dbModalPanelSub

    //AB-StoreTopStart
                        
    Property Integer piFragmaBaxiokatRec0 Public  0
    Property Integer piFragmaBaxiokatCode Public  0
    Property Integer piFragmaBaxioStatus  Public  0
    Property Integer piFragmaBaxioPlace   Public  0
    Property string  psfragmaclient       Public ''
    Property String  psFragmaBaxioStatus  Public ''
    Property String  psEkdoths            Public ''
    Property String  psApodekths          Public ''
    Property Date pdApo                   Public ''
    Property Date pdEos                   Public ''
    
    //AB-StoreTopEnd

    Set Label to "âò´·¢¶ö¶™ Ä•†¶ö®·≠‡§"
    Set Size to 287 527
    Set Location to 2 3
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Object Baxio_DD is a Baxio_DataDictionary
        Set DDO_Server to (Baxiokat_DD(self))

        //AB-StoreStart
                                                    
        Function fiIsOK Returns Integer
            String lsBaxioStatus sclient
            Get psFragmaBaxioStatus  to lsBaxioStatus
            Get psfragmaclient       to sclient
            If (Trim(sClient)='') Begin
                If (lsBaxioStatus Contains Baxio.Baxio_Status) Function_Return 1
            End
            Else Begin
                If (baxio.baxio_desm Eq sClient And lsBaxioStatus Contains Baxio.Baxio_Status) Function_Return 1
            End
            Function_Return 0
        End_Function
        
        Procedure OnConstrain
        
            Integer liBaxiokatCode liBaxioStatus liBaxioPlace
            string  sclient lsBaxioStatus sApodekths sEkdoths
            Date    dApo dEos
        
            Forward Send OnConstrain
        
            Get piFragmaBaxiokatCode    to liBaxiokatCode
            Get psFragmaBaxioStatus     to lsBaxioStatus
            Get piFragmaBaxioPlace      to liBaxioPlace
        
            Get psApodekths             to sApodekths
            Get psEkdoths               to sEkdoths
            Get pdApo                   to dApo
            Get pdEos                   to dEos
        
            If (liBaxioKatCode <> 0) Begin
                Constrain Baxio.Baxiokat_Code eq liBaxiokatCode
                If (liBaxioPlace  <> 0)  Constrain Baxio.Baxio_Place eq liBaxioPlace
                If (lsBaxioStatus <> '') Constrain Baxio as (fiIsOK(Self)=1)
            End
        
            If (sApodekths  <>'') Constrain Baxio.Baxio_Code_Out    Eq sApodekths
            If (sEkdoths    <>'') Constrain Baxio.Baxio_Code_In     Eq sEkdoths
            If (dApo        <>'') Constrain Baxio.Baxio_HmniaL      Ge dApo
            If (dEos        <>'') Constrain Baxio.Baxio_HmniaL      Le dEos
        
        End_Procedure // OnConstrain
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Baxio_DD

    Set Main_DD to (Baxio_DD(self))
    Set Server to (Baxio_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Baxio.File_Number
        Set Size to 228 514
        Set Location to 4 6

        Begin_Row
            Entry_Item Baxio.Baxio_code
            Entry_Item Baxio.Baxio_epon_in
            Entry_Item Baxio.Baxio_epon_out
            Entry_Item Baxiokat.Baxiokat_descr
            Entry_Item Baxio.Baxio_hmnial
            Entry_Item Baxio.Baxio_v2
            Entry_Item Baxio.Baxio_banka
            Entry_Item (Export_Code_Description(Self,6,Baxio.Baxio_banka))
            Entry_Item Baxio.Baxio_no
        End_Row

        Set Form_Width    item 0 to 41
        Set Header_Label  item 0 to "â‡õ†°¶™"
        
        Set Form_Width    item 1 to 98
        Set Header_Label  item 1 to "Ñ°õÊ´û™"
        
        Set Form_Width    item 2 to 94
        Set Header_Label  item 2 to "Äß¶õ‚°´û™"
        
        Set Form_Width    item 3 to 75
        Set Header_Label  item 3 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 4 to 47
        Set Header_Label  item 4 to "ä„•û"
        
        Set Form_Width    item 5 to 48
        Set Header_Label  item 5 to "è¶©Ê"
        
        Set Form_Width    item 6 to 12
        Set Header_Label  item 6 to "â‡õ†°Ê™ í®·ßúùò"
        
        Set Form_Width    item 7 to 42
        Set Header_Label  item 7 to "í®·ßúùò"
        
        Set Form_Width    item 8 to 53
        Set Header_Label  item 8 to "Ä®†ü£Ê™"
        

        //AB-StoreStart
                
        Property Integer piStoreFragmaBaxiokatRec0 Public 0
        Property Integer piStoreFragmaBaxiokatCode Public 0
        Property Integer piStoreFragmaBaxioStatus  Public 0
        Property Integer piStoreFragmaBaxioPlace   Public 0
        Property String  psStoreFragmaBaxioStatus  Public ''
        
        Procedure Store_Defaults
            Forward Send Store_Defaults
            Set piStoreFragmaBaxiokatRec0 to (piFragmaBaxiokatRec0(Self))
            Set piStoreFragmaBaxiokatCode to (piFragmaBaxiokatCode(Self))
            Set piStoreFragmaBaxioStatus  to (piFragmaBaxioStatus(Self))
            Set piStoreFragmaBaxioPlace   to (piFragmaBaxioPlace(Self))
            Set psStoreFragmaBaxioStatus  to (psFragmaBaxioStatus(Self))
        End_Procedure // Store_Defaults
        
        Procedure Restore_Defaults
            Forward Send Restore_Defaults
            Set piFragmaBaxiokatRec0 to (piStoreFragmaBaxiokatRec0(Self))
            Set piFragmaBaxiokatCode to (piStoreFragmaBaxiokatCode(Self))
            Set piFragmaBaxioStatus  to (piStoreFragmaBaxioStatus(Self))
            Set piFragmaBaxioPlace   to (piStoreFragmaBaxioPlace(Self))
            Set psFragmaBaxioStatus  to (psStoreFragmaBaxioStatus(Self))
        End_Procedure // Restore_Defaults
        
        Procedure Activating
            Forward Send Activating
         //   Set Auto_Index_State        to True
            Send Rebuild_Constraints    to Baxio_DD
        End_Procedure
        
        Procedure End_Construct_Object
            Integer iDecs
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0  to    iDecs
            Set Points Item 5 to iDecs
            Set Numeric_Mask Item 5 to 10 iDecs ' ,*'
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "ä„•û òß¶"
        Set Location to 241 7
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object cSyDateForm1 is a cSyDateForm
        Set Size to 13 66
        Set Location to 240 45
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "d/M/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                    
        Procedure Key Integer iKey
            Integer iRetVal
            Forward Send Key iKey
            If (iKey=277) Begin
                Set Value Item 0 to ''
                //Send KeyAction to ButtonSub1
            End
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // cSyDateForm1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "ä„•û ú‡™"
        Set Location to 258 7
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object cSyDateForm2 is a cSyDateForm
        Set Size to 13 66
        Set Location to 256 45
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "d/M/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                    
        Procedure Key Integer iKey
            Integer iRetVal
            Forward Send Key iKey
            If (iKey=277) Begin
                Set Value Item 0 to ''
                //Send KeyAction to ButtonSub1
            End
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // cSyDateForm2

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "Ñ°õÊ´û™"
        Set Location to 241 118
        Set Size to 10 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "Äß¶õ‚°´û™"
        Set Location to 258 118
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object FormSub1 is a FormSub
        Set Size to 13 77
        Set Location to 240 159
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                    
        Set Prompt_Object to (sl100(Self))
        
        Procedure OnChange
            String s1
            Get Value Item 0 to s1
            Set Value Of FormSub2 Item 0 to (fsClient(Self,s1))
            Set psEkdoths to s1
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object FormSub2 is a FormSub
        Set Size to 13 187
        Set Location to 240 240
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // FormSub2

    Object FormSub3 is a FormSub
        Set Size to 13 77
        Set Location to 256 159
        Set Label_Col_Offset to 2
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                    
        Set Prompt_Object to (sl100(Self))
        
        Procedure OnChange
            String s1
            Get Value Item 0 to s1
            Set Value Of FormSub4 Item 0 to (fsClient(Self,s1))
            Set psApodekths to s1
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub3

    Object FormSub4 is a FormSub
        Set Size to 13 187
        Set Location to 256 240
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // FormSub4

    Object ButtonSub1 is a ButtonSub
        Set Label to "èú®†Ê®†©ú"
        Set Size to 14 43
        Set Location to 256 430
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                    
        Procedure OnClick
            Date dApo dEos
            Get Value Of cSyDateForm1 Item 0 to dApo
            Get Value Of cSyDateForm2 Item 0 to dEos
            Set pdApo to dApo
            Set pdEos to dEos
            Send Rebuild_Constraints to Baxio_DD
            Send Beginning_Of_Data to oSelList True
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Size to 14 43
        Set Location to 256 478
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To oSelList
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn


    //AB-StoreStart
                        
    On_Key Key_Alt+Key_E Send KeyAction To oOk_bn
    
    Procedure Request_Cancel
        Set Value Of cSyDateForm1 Item 0 to ''
        Set Value Of cSyDateForm2 Item 0 to ''
        Set Value Of FormSub1     Item 0 to ''
        Set Value Of FormSub2     Item 0 to ''
        Forward Send Request_Cancel
    End_Procedure
    
    
    
    
    
    //AB-StoreEnd

End_Object    // SL037


//AB-StoreStart
    
//AB-StoreEnd

//AB/ End_Object    // prj
