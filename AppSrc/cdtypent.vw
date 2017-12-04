//AB/ Project Maintenance View
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Maintenance View"
//AB/     Set ProjectFileName to "Cdtypent.vw"

// Project Object Structure
//   Types_Maint is a dbViewSubS
//     Codetype_DD is a DataDictionary
//     Codemast_DD is a DataDictionary
//     CodeTypeGroup is a dbGroupSub
//       Codetype_Type is a dbFormSub
//       Codetype_Description is a dbFormSub
//       Codetype_Comment is a dbEditSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//     CodeMastGroup is a dbGroupSub
//       CodeMastGrid is a dbGridSub

// Register all objects
Register_Object CodeMastGrid
Register_Object CodeMastGroup
Register_Object Codemast_DD
Register_Object CodeTypeGroup
Register_Object Codetype_Comment
Register_Object Codetype_DD
Register_Object Codetype_Description
Register_Object Codetype_Type
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object Types_Maint


//AB/ AppBuild VIEW


//AB-StoreTopStart
use slcodemast.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use dbForm.Sub
Use dbEdit.Sub
Use Txtbox.Sub
Use dbGrid.Sub

Use CodeType.dd
Use CODEMAST.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Types_Maint FOR Types_Maint

Object Types_Maint is a dbViewSubS

    //AB-StoreTopStart
                                                        
    //AB-StoreTopEnd

    Set Label to "ë¨§´„®û©û ò®ÆúÂ‡§ â‡õ†°È§"
    Set Size to 276 416
    Set Location to 6 6

    //AB-DDOStart

    Object Codetype_DD is a CodeType_dataDictionary
    End_Object    // Codetype_DD

    Object Codemast_DD is a Codemast_DataDictionary
        Set DDO_Server to (Codetype_DD(self))
        Set Constrain_File to Codetype.File_Number
    End_Object    // Codemast_DD

    Set Main_DD to (Codetype_DD(self))
    Set Server to (Codetype_DD(self))

    //AB-DDOEnd

    Object CodeTypeGroup is a dbGroupSub
        Set Label to "íÁß¶† â‡õ†°È§:"
        Set Size to 82 400
        Set Location to 4 6
        Object Codetype_Type is a dbFormSub
            Entry_Item Codetype.Type
            Set Size to 13 107
            Set Location to 8 60
            Set Label_Col_Offset to 50
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Codetype_Type

        Object Codetype_Description is a dbFormSub
            Entry_Item Codetype.Description
            Set Size to 13 334
            Set Location to 23 60
            Set Label_Col_Offset to 50
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Codetype_Description

        Object Codetype_Comment is a dbEditSub
            Entry_Item Codetype.Comment
            Set Label to "ëÆÊ¢†ò:          "
            Set Size to 32 384
            Set Location to 45 10
        End_Object    // Codetype_Comment

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "íÁß¶™"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 47
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„"
            Set Auto_Size_State to FALSE
            Set FontSize to 4 0
            Set Location to 23 10
            Set Size to 10 47
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub2


        //AB-StoreStart
        // Return non-zero if table entry should not be allowed.
        //
        // Rules:
        // 1. if no data, disallow movement
        // 2. if new ask
        // 3. if old just save it
        //
        Function Allow_Child_Entry Returns Integer
            Local Integer Obj# Srvr# SaveMsg
            Get Server to Srvr#
            // new unchanged record...don't allow
            If (Should_Save(Current_Object)=0 AND Current_record(Srvr#)=0) Begin
                Error 300 'You must enter a TYPE code first.'
                Function_Return 1
            End
            // save if needed
            If (Current_record(Srvr#) OR confirmation("Save New Type Information?")=0) Begin
                Get Verify_Save_MSG to SaveMsg             // the old confirmation
                Set Verify_Save_MSG to GET_No_Confirmation // disable confirmation
                Send Request_Save_no_Clear                 // save it
                Set Verify_Save_MSG to SaveMsg             // restore old confirm
            End
            // If save is still required, don't allow exit.
            Function_Return (Should_Save(Current_Object))
        End_Function  // Allow_Child_Entry
        //AB-StoreEnd

    End_Object    // CodeTypeGroup

    Object CodeMastGroup is a dbGroupSub
        Set Label to "Åò©†°Ê Ä®ÆúÂ¶ â‡õ†°È§:"
        Set Size to 167 400
        Set Location to 90 6
        Object CodeMastGrid is a dbGridSub
            Set Main_File to Codemast.File_Number
            Set Server to (Codemast_DD(self))
            Set Ordering to 1
            Set Size to 153 387
            Set Location to 10 7
            Set CurrentRowColor to 11468799
            Set CurrentCellColor to 11468799
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Codemast.Code
                Entry_Item Codemast.Description
            End_Row

            Set Form_Width    item 0 to 99
            Set Header_Label  item 0 to "â‡õ†°Ê™ "
            
            Set Form_Width    item 1 to 280
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            

            //AB-StoreStart
            Set Child_Table_State to TRUE  // force save on exit
            set column_prompt_object item 1 to (slcodemast(self))
            set column_prompt_object item 0 to (slcodemast(self))
            Function Child_Entering
                Local Integer rVal
                //
                Get Allow_Child_Entry of (CodeTypeGroup(Current_Object)) to rVal
                Function_Return rVal
            End_Function  // Child_Entering
            
            procedure prompt
                Set fragmaqual Of (slcodemast(self)) to CODETYPE.TYPE
                forward send prompt
                Set fragmaqual Of (slcodemast(self)) to ''
            end_procedure
            
            
            //AB-StoreEnd

        End_Object    // CodeMastGrid

    End_Object    // CodeMastGroup


    //AB-StoreStart
                                                        
    Set icon to "Rigaft.ico"
    
    //AB-StoreEnd

End_Object    // Types_Maint


//AB-StoreStart
        
//AB-StoreEnd

//AB/ End_Object    // prj
