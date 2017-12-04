//AB/ Project sl013:SeiraP
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl013:SeiraP"
//AB/         Set ProjectFileName to "sl013.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl013 is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Ctypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Pseira_DD
Register_Object Ptyppar_DD
Register_Object sl013
Register_Object Wtypkin_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use PSEIRA.DD
    
    //AB-IgnoreEnd

    Object sl013 is a dbModalPanelSub

        //AB-StoreTopStart
        Property String FragmaPtyppar_Recr Public ''
        
        //AB-StoreTopEnd

        Set Label to "âò´·¢¶ö¶™ ëú†®È§"
        Set Size to 148 214
        Set Location to 1 7
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD

        Object Pseira_DD is a Pseira_DataDictionary
            Set DDO_Server to (Ptyppar_DD(self))

            //AB-StoreStart
            Procedure OnConstrain
                String sID
                Forward Send OnConstrain
                Get FragmaPtyppar_Recr to sID
                Move (trim(sID)) to sID
                If (sID<>'') Constrain Pseira.Ptyppar_Recr eq sID
            End_procedure
            
            //AB-StoreEnd

        End_Object    // Pseira_DD

        Set Main_DD to (Pseira_DD(self))
        Set Server to (Pseira_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Pseira.File_Number
            Set Size to 105 197
            Set Location to 6 6

            Begin_Row
                Entry_Item Pseira.Pseira_seira
                Entry_Item Pseira.Pseira_printer
                Entry_Item Pseira.Pseira_autonum
            End_Row

            Set Form_Width    item 0 to 40
            Set Header_Label  item 0 to "ëú†®·"
            
            Set Form_Width    item 1 to 135
            Set Header_Label  item 1 to "Ñ°´¨ß‡´„™"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "Autonum"
            Set Column_Checkbox_State  item 2 to True
            

            //AB-StoreStart
                    
            Property String StoreFragmaPtyppar_Recr Public ''
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaPtyppar_Recr to (FragmaPtyppar_Recr(Self))
            End_Procedure
            
            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set FragmaPtyppar_Recr to (StoreFragmaPtyppar_Recr(Self))
            End_Procedure
            
            Procedure Activating
                Forward Send Activating
                Send Rebuild_Constraints to (Pseira_DD(Self))
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 114 42
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 114 98
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 114 153
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
            
        On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl013

//AB/     End_Object    // prj
