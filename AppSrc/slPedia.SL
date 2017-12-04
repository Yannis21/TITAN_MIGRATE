//AB/ Project slPedia
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slPedia"
//AB/         Set ProjectFileName to "slPedia.SL"

// Project Object Structure
//   slPedia is a dbModalPanelSub
//     Arxeia_DD is a DataDictionary
//     Pedia_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Arxeia_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Pedia_DD
Register_Object slPedia


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use ARXEIA.DD
    Use PEDIA.DD
    
    //AB-IgnoreEnd

    CD_Popup_Object slPedia is a dbModalPanelSub

        //AB-StoreTopStart
                                    
        Property Integer FragmaArxeio Public 0
        
        
        //AB-StoreTopEnd

        Set Label to "Ñß†¢¶ö„ èúõÂ‡§"
        Set Size to 148 398
        Set Location to 6 8
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Arxeia_DD is a Arxeia_DataDictionary
        End_Object    // Arxeia_DD

        Object Pedia_DD is a Pedia_DataDictionary
            Set DDO_Server to (Arxeia_DD(self))

            //AB-StoreStart
                                                        
            //Begin_Constraints
            //    If (FragmaArxeio(self)<>0) Constrain Pedia.Arxeio_ID eq (FragmaArxeio(Self))
            //End_Constraints
            
            Procedure OnConstrain
                Forward Send OnConstrain
                If (FragmaArxeio(self)<>0) Constrain Pedia.Arxeio_ID eq (FragmaArxeio(Self))
            End_Procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Pedia_DD

        Set Main_DD to (Pedia_DD(self))
        Set Server to (Pedia_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Pedia.File_Number
            Set Size to 105 384
            Set Location to 6 6

            Begin_Row
                Entry_Item Arxeia.Access_name
                Entry_Item Pedia.Pedio_name
                Entry_Item Pedia.Pedio_descr
            End_Row

            Set Form_Width    item 0 to 128
            Set Header_Label  item 0 to "î†¢†°Ê ß®¶™ ´¶§ ï®„©´û é§¶£ò"
            
            Set Form_Width    item 1 to 86
            Set Header_Label  item 1 to "é§¶£ò èúõÂ¶¨"
            
            Set Form_Width    item 2 to 161
            Set Header_Label  item 2 to "èú®†ö®ò≠„ èúõÂ¶¨"
            

            //AB-StoreStart
                                                                    
            Property Integer StoreFragmaArxeio Public 0
            
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaArxeio to (FragmaArxeio(Self))
            End_Procedure
            
            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set FragmaArxeio to (StoreFragmaArxeio(Self))
            End_Procedure
            
            Procedure Activating
               Forward Send Activating
               Send Rebuild_Constraints to (Pedia_DD(Self))
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 114 231
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 114 285
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 114 341
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

    CD_End_Object    // slPedia

//AB/     End_Object    // prj
