//AB/ Project slcodemast
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "slcodemast"
//AB/         Set ProjectFileName to "slcodemast.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   slcodemast is a dbModalPanelSub
//     Codetype_DD is a DataDictionary
//     Codemast_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Codemast_DD
Register_Object Codetype_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object slcodemast


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CodeType.dd
    Use CODEMAST.DD
    
    //AB-IgnoreEnd

    Object slcodemast is a dbModalPanelSub

        //AB-StoreTopStart
        Property string Fragmaqual Public ''
        //AB-StoreTopEnd

        Set Label to "äÂ©´ò ë´òüú®È§"
        Set Size to 215 297
        Set Location to 2 8
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Codetype_DD is a CodeType_dataDictionary
        End_Object    // Codetype_DD

        Object Codemast_DD is a Codemast_DataDictionary
            Set DDO_Server to (Codetype_DD(self))

            //AB-StoreStart
            begin_constraints
                constrain codemast.type eq (Fragmaqual(self))
            end_constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Codemast_DD

        Set Main_DD to (Codemast_DD(self))
        Set Server to (Codemast_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Codemast.File_Number
            Set Size to 172 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Codemast.Code
                Entry_Item Codemast.Description
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 212
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            

            //AB-StoreStart
                    
            Property string StoreFragmaqual Public ''
            
            
            Procedure Store_Defaults
                   Forward Send Store_Defaults
                   Set StoreFragmaqual to (Fragmaqual(Self))
            End_Procedure
            
            Procedure ReStore_Defaults
                   Forward Send ReStore_Defaults
                   Set Fragmaqual to (StoreFragmaqual(Self))
            End_Procedure
            
            Procedure Activating
               Forward Send Activating
               Send Rebuild_Constraints to (codemast_DD(Self))
            End_Procedure
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 184 131

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 184 186

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 184 241

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

    End_Object    // slcodemast

//AB/     End_Object    // prj
