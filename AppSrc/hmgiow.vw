//AB/ Project HmgioW
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "HmgioW"
//AB/         Set ProjectFileName to "HmgioW.vw"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   HmgioW is a dbViewSubS
//     Wtypkin_DD is a DataDictionary
//     Hmgiow_DD is a DataDictionary
//     Hmwtyp_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       TextBoxSub1 is a TextBoxSub
//       Hmgiow_Hmgiow_Code is a dbFormSub
//       Hmgiow_Hmgiow_descr is a dbForm
//       TextBoxSub3 is a TextBoxSub
//       Hmgiow_Hmgiow_Module is a dbComboFormSub
//       btnEktyposh is a ButtonSub
//     The_Table is a dbGrid

// Register all objects
Register_Object btnEktyposh
Register_Object Container1
Register_Object HmgioW
Register_Object Hmgiow_DD
Register_Object Hmgiow_Hmgiow_Code
Register_Object Hmgiow_Hmgiow_descr
Register_Object Hmgiow_Hmgiow_Module
Register_Object Hmwtyp_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub3
Register_Object The_Table
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use r105.rv
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use dbForm.Sub
    Use dbCmbfrm.Sub
    Use Button.Sub

    Use WTYPKIN.DD
    Use HMGIOW.DD
    Use HMWTYP.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_HmgioW FOR ;
    ;
    Object HmgioW is a dbViewSubS
        Set Label to "Ü£ú®¶¢Êö†ò Äß¶ü„°û™"
        Set Size to 258 444
        Set Location to 2 5

        //AB-DDOStart

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Hmgiow_DD is a Hmgiow_DataDictionary
        End_Object    // Hmgiow_DD

        Object Hmwtyp_DD is a Hmwtyp_DataDictionary
            Set DDO_Server to (Hmgiow_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
            Set Constrain_File to Hmgiow.File_Number
        End_Object    // Hmwtyp_DD

        Set Main_DD to (Hmgiow_DD(self))
        Set Server to (Hmgiow_DD(self))

        //AB-DDOEnd

        Object Container1 is a dbContainer3d
            Set Border_Style to Border_Normal
            Set Size to 42 426
            Set Location to 4 5
            Object TextBoxSub1 is a TextBoxSub
                Set Label to "Ü£ú®¶¢Êö†¶"
                Set Location to 3 3
                Set Size to 10 43
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub1

            Object Hmgiow_Hmgiow_Code is a dbFormSub
                Entry_Item Hmgiow.Hmgiow_code
                Set Size to 13 99
                Set Location to 2 45
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Hmgiow_Hmgiow_Code

            Object Hmgiow_Hmgiow_descr is a dbForm
                Entry_Item Hmgiow.Hmgiow_descr
                Set Size to 13 262
                Set Location to 2 153
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Hmgiow_Hmgiow_descr

            Object TextBoxSub3 is a TextBoxSub
                Set Label to "âÁ°¢‡£ò"
                Set Location to 18 3
                Set Size to 10 33
                Set TypeFace to "MS Sans Serif"
            End_Object    // TextBoxSub3

            Object Hmgiow_Hmgiow_Module is a dbComboFormSub
                Entry_Item Hmgiow.Hmgiow_module
                Set Size to 13 100
                Set Location to 18 45
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Hmgiow_Hmgiow_Module

            Object btnEktyposh is a ButtonSub
                Set Label to "Ñ°´Á&ß‡©û"
                Set Bitmap to "Print17.bmp"
                Set Size to 21 23
                Set Location to 18 393
                Set Focus_Mode to Pointer_Only
                Set Form_FontHeight Item 0 to 12
                Set Form_FontWeight Item 0 to 600
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart
                Set TooltipValue to "Ñ°´Áß‡©û Ü£ú®¶¢¶öÂ‡§"
                
                Procedure OnClick
                   integer ncode
                   get field_current_value of hmgiow_dd field hmgiow.hmgiow_code  to ncode
                   Set pnhmgio  of (r105(self)) to ncode
                   Send runparReport to (parWQLReport(r105(Self)))
                End_Procedure // OnClick
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // btnEktyposh

        End_Object    // Container1

        Object The_Table is a dbGrid
            Set Main_File to Hmwtyp.File_Number
            Set Server to (Hmwtyp_DD(self))
            Set Ordering to 3
            Set Size to 188 427
            Set Location to 50 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Wtypkin.Wtypkin_code
                Entry_Item Wtypkin.Wtypkin_descr
            End_Row

            Set Form_Width    item 0 to 125
            Set Header_Label  item 0 to "â‡õ†°Ê™ âÂ§û©û™"
            
            Set Form_Width    item 1 to 293
            Set Header_Label  item 1 to "èú®†ö®ò≠„ â†§„©ú‡§"
            
        End_Object    // The_Table

    CD_End_Object    // HmgioW


    //AB-StoreStart
                    
                    
    //AB-StoreEnd

//AB/     End_Object    // prj
