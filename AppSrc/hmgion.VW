//AB/ Project Hmgion:Hmerologia kai kinhseis
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Hmgion:Hmerologia kai kinhseis"
//AB/     Set ProjectFileName to "hmgion.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Hmgion is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Hmgio_DD is a DataDictionary
//     Hmctyp_DD is a DataDictionary
//     Hmgio_Hmgio_Code is a dbFormSub
//     Hmgio_Hmgio_Descr is a dbFormSub
//     Hmgio_Hmgio_Module is a dbComboFormSub
//     Hmctyp_ is a dbGridSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub3 is a TextBoxSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//     btnEktyposh is a ButtonSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object btnEktyposh
Register_Object Company_Company_Name
Register_Object Ctypkin_DD
Register_Object dbGroupSub1
Register_Object Hmctyp_
Register_Object Hmctyp_DD
Register_Object Hmgio_DD
Register_Object Hmgio_Hmgio_Code
Register_Object Hmgio_Hmgio_Descr
Register_Object Hmgio_Hmgio_Module
Register_Object Hmgion
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use sl007.sl
use hmgio.sl
use r101.rv
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbCmbfrm.Sub
Use dbGrid.Sub
Use Txtbox.Sub
Use dbGroup.Sub
Use Button.Sub

Use CTYPKIN.DD
Use SYSCURXR.DD
Use HMGIO.DD
Use HMCTYP.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Hmgion FOR ;
;
Object Hmgion is a dbViewSubS

    //AB-StoreTopStart
    Property String psModule Public ''
    property number nhmgio   public 0
    //AB-StoreTopEnd

    Set Label to "é®†©£Ê™ Ü£ú®¶¢¶öÂ‡§ °ò† â†§„©ú‡§"
    Set Size to 248 449
    Set Location to 2 3

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                
        Begin_Constraints
            If (psModule(Self)<>'') Constrain Ctypkin.Ctypkin_Module eq (psModule(Self))
        End_Constraints
        
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object Hmgio_DD is a Hmgio_DataDictionary

        //AB-StoreTopStart
        
        //AB-StoreTopEnd


        //AB-StoreStart
        
        Begin_Constraints
         //   If (psModule(Self)<>'') Constrain Hmgio.Hmgio_Module eq (psModule(Self))
        End_Constraints
        
        Procedure Update
            String sModule sDescr
            Forward Send Update
            Move (psModule(Self)) to sModule
            Get gsfCode_Mast "MODULE" sModule   to sDescr
            Move (Trim(sDescr))                 to sDescr
            If (Trim(Hmgio.Hmgio_Module)='') Move sModule to Hmgio.Hmgio_Module
        End_Procedure
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Hmgio_DD

    Object Hmctyp_DD is a Hmctyp_DataDictionary
        Set DDO_Server to (Hmgio_DD(self))
        Set DDO_Server to (Ctypkin_DD(self))
        Set Constrain_File to Hmgio.File_Number
    End_Object    // Hmctyp_DD

    Set Main_DD to (Hmgio_DD(self))
    Set Server to (Hmgio_DD(self))

    //AB-DDOEnd

    Object Hmgio_Hmgio_Code is a dbFormSub
        Entry_Item Hmgio.Hmgio_code
        Set Size to 13 97
        Set Location to 34 93
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        
        procedure prompt
        //    if (psmodule(self)<>'') set psmodule of (hmgio(self)) to (psmodule(self))
            forward send prompt
        end_procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Hmgio_Hmgio_Code

    Object Hmgio_Hmgio_Descr is a dbFormSub
        Entry_Item Hmgio.Hmgio_descr
        Set Size to 13 237
        Set Location to 34 199
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
    End_Object    // Hmgio_Hmgio_Descr

    Object Hmgio_Hmgio_Module is a dbComboFormSub
        Entry_Item Hmgio.Hmgio_module
        Set Size to 13 97
        Set Location to 49 93
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
                            
                            
                            
        //AB-StoreEnd

    End_Object    // Hmgio_Hmgio_Module

    Object Hmctyp_ is a dbGridSub
        Set Main_File to Hmctyp.File_Number
        Set Server to (Hmctyp_DD(self))
        Set Size to 159 437
        Set Location to 72 2
        Set Wrap_State to TRUE
        Set Prompt_Button_Mode to pb_PromptOn

        Begin_Row
            Entry_Item Ctypkin.Ctypkin_code
            Entry_Item Ctypkin.Ctypkin_descr
        End_Row

        Set Form_Width    item 0 to 85
        Set Header_Label  item 0 to "â‡õ†°Ê™ âÂ§û©û™"
        
        Set Form_Width    item 1 to 344
        Set Header_Label  item 1 to "èú®†ö®ò≠„ âÂ§û©û™"
        

        //AB-StoreStart
        
        Set Column_Prompt_Object Item 0 to (sl007(Self))
        Set Column_Prompt_Object Item 1 to (sl007(Self))
        
        Procedure Prompt
        //    Set psModule Of (sl007(Self)) to (psModule(Self))
            Forward Send Prompt
        End_procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Hmctyp_

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "â‡õ†°Ê™ Ü£ú®¶¢¶öÂ¶¨"
        Set Location to 35 7
        Set Size to 10 80
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "âÁ°¢‡£ò"
        Set Location to 49 7
        Set Size to 10 29
    End_Object    // TextBoxSub2

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 437
        Set Location to 0 3
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 91
            Set Location to 9 54
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 103
            Set Location to 9 203
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 61
            Set Location to 9 371
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 153
            Set Size to 10 39
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 11 322
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub5

    End_Object    // dbGroupSub1

    Object btnEktyposh is a ButtonSub
        Set Label to "Ñ°´Á&ß‡©û"
        Set Bitmap to "Print17.bmp"
        Set Size to 21 23
        Set Location to 49 413
        Set Focus_Mode to Pointer_Only
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "Ñ°´Áß‡©û Ü£ú®¶¢¶öÂ‡§"
        
        Procedure OnClick
           integer ncode
           get field_current_value of hmgio_dd field hmgio.hmgio_code  to ncode
           Set pnhmgio  of (r101(self)) to ncode
           Set psmodule of (r101(self)) to (psmodule(self))
           Send runparReport to (parWQLReport(r101(Self)))
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnEktyposh


    //AB-StoreStart
                            
    Procedure Activate_View Returns Integer
        Integer rVal
        String sModule sDescr
        Forward Get Msg_Activate_View   to rVal
    
        Get psMenuModule  Of Main_Menu  to sModule
        Get gsfCode_Mast "MODULE" sModule to sDescr
        Move (Trim(sDescr)) to sDescr
        Set psModule                    to sModule
    
        Send Clear to Hmgio_DD
        Send Rebuild_Constraints        to Hmgio_DD
        Send Rebuild_Constraints        to Ctypkin_DD
        Send Rebuild_Constraints        to Hmctyp_DD
        Send Beginning_Of_Data          to HmCtyp_ True
    
             If (psModule(Self)='01')   ;
                Set label of hmgio to "Ü£ú®¶¢Êö†ò °ò† °†§„©ú†™ èú¢ò´È§ / è‡¢„©ú‡§    "
        Else If (psModule(Self)='02')   ;
                set label of hmgio to "Ü£ú®¶¢Êö†ò °ò† °†§„©ú†™ è®¶£ûüú¨´È§ / Äö¶®È§    "
    
        Procedure_Return rVal
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // Hmgion


//AB-StoreStart
        
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
