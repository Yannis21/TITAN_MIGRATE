//AB/ Project V82:kodikoi kinhsevn - g.l
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V82:kodikoi kinhsevn - g.l"
//AB/     Set ProjectFileName to "V82.vw"
//AB/     Set GenerateFileName to "V82.vw"

// Project Object Structure
//   V82 is a dbView
//     Pagkin_DD is a DataDictionary
//     Pagkinmv_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Pagkin_Pagkin_code is a dbForm
//       Pagkin_Pagkin_descr is a dbForm
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       is_what is a TextBoxSub
//       Pagkin_Is_What is a dbForm
//       FormSub1 is a FormSub
//     The_Table is a dbGrid
//     TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Container1
Register_Object FormSub1
Register_Object is_what
Register_Object Pagkin_DD
Register_Object Pagkin_Is_What
Register_Object Pagkin_Pagkin_code
Register_Object Pagkin_Pagkin_descr
Register_Object Pagkinmv_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object The_Table
Register_Object V82


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Txtbox.Sub
Use Form.Sub

Use PAGKIN.DD
Use PAGKINMV.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V82 FOR V82

Object V82 is a dbViewSubS

    //AB-StoreTopStart
    Function fscodemast string sflag Returns string
          string sdescr
          if (sflag='01')       move 'ÄßÊ °ò®´‚¢ò ßòöÂ¶¨'          to sdescr
          else if (sflag='02')  move 'ÄßÊ ¢¶ö/©£Ê ß¶¨ üò úß†¢‚•‡'  to sdescr
          else                  move ''                            to sdescr
          function_return sdescr
    end_Function

    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ ßòöÂ‡§ - ©Á§õú©û £ú  Ç.ä"
    Set Size to 201 387
    Set Location to 6 6

    //AB-DDOStart

    Object Pagkin_DD is a Pagkin_DataDictionary
    End_Object    // Pagkin_DD

    Object Pagkinmv_DD is a Pagkinmv_DataDictionary
        Set DDO_Server to (Pagkin_DD(self))
        Set Constrain_File to Pagkin.File_Number
    End_Object    // Pagkinmv_DD

    Set Main_DD to (Pagkin_DD(self))
    Set Server to (Pagkin_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 54 375
        Set Location to 5 5
        Object Pagkin_Pagkin_code is a dbForm
            Entry_Item Pagkin.Pagkin_code
            Set Size to 13 85
            Set Location to 5 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Pagkin_Pagkin_code

        Object Pagkin_Pagkin_descr is a dbForm
            Entry_Item Pagkin.Pagkin_descr
            Set Size to 13 301
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Pagkin_Pagkin_descr

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ °Â§û©û™"
            Set Location to 6 2
            Set Size to 10 56
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„"
            Set Location to 20 2
            Set Size to 10 41
        End_Object    // TextBoxSub2

        Object is_what is a TextBoxSub
            Set Label to "âÂ§û©û Ç.ä"
            Set Location to 34 1
            Set Size to 10 43
        End_Object    // is_what

        Object Pagkin_Is_What is a dbForm
            Entry_Item Pagkin.Gtypkin_code
            Set Size to 13 85
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn

            //AB-StoreStart
            set prompt_object to (gtypkin(current_object))
            Procedure OnChange
                String lsDescr
                Integer liCode
                get value item 0 to licode
                Move (FindGtypkinDescr(Self,liCode)) to lsDescr
                Set Value of (formsub1(self)) to lsDescr
            End_Procedure // OnChange

            //AB-StoreEnd

        End_Object    // Pagkin_Is_What

        Object FormSub1 is a FormSub
            Set Size to 13 215
            Set Location to 34 153
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub1

    End_Object    // Container1

    Object The_Table is a dbGrid
        Set Main_File to Pagkinmv.File_Number
        Set Server to (Pagkinmv_DD(self))
        Set Ordering to 2
        Set Size to 100 375
        Set Location to 72 5
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Pagkinmv.Recnum
            Entry_Item Pagkinmv.Flaggl
            Entry_Item (fscodemast(self,pagkinmv.flaggl))
            Entry_Item Pagkinmv.Codegl
            Entry_Item Pagkinmv.Sign
            Entry_Item Pagkinmv.Xp
            Entry_Item Pagkinmv.Order
        End_Row

        Set Form_Width    item 0 to 0
        Set Header_Label  item 0 to "Recnum"

        Set Form_Width    item 1 to 57
        Set Header_Label  item 1 to "Flag °Â§û©û™"

        Set Form_Width    item 2 to 110
        Set Header_Label  item 2 to "èú®†ö®ò≠„"

        Set Form_Width    item 3 to 85
        Set Header_Label  item 3 to "ä¶öò®. Ç.ä"

        Set Form_Width    item 4 to 42
        Set Header_Label  item 4 to "è®Ê©û£¶"

        Set Form_Width    item 5 to 27
        Set Header_Label  item 5 to "ï-è"

        Set Form_Width    item 6 to 46
        Set Header_Label  item 6 to "Ä/Ä Ñöö®."


        //AB-StoreStart
        set ordering to 2
        set column_prompt_object item 3 to (sl150(self))
        Set Column_Option Item 0 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        
        procedure item_change integer fromi integer toi returns integer
            local integer rval icol iBase_item iGridID iCurrItem
            Local String rval##
            Move (the_table(self)) to iGridID
            forward get msg_item_change fromi toi to rval
            if (focus(Desktop) = iGridID) begin
                Get Column fromi to iCol
                if (icol=1) begin
                    Get Base_Item to iBase_item
                    Get Value Item (iBase_item+1) to rval##
                    move (fscodemast(self,rval##)) to  rval##
                    Set value item (iBase_item+2) to Rval##
                end
            end
            procedure_return rval
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "@1 = á‚©û ¨ß¶°ò´ò©´„£ò´¶™  @2 = á‚©û °ò´ûö¶®Âò™ ßòöÂ¶¨   @3 = á‚©û ßòöÂ¶¨"
        Set Color to clNavy
        Set TextColor to clWhite
        Set Location to 60 5
        Set Size to 10 322
        Set FontWeight to 800
        Set Justification_Mode to jMode_Center
    End_Object    // TextBoxSub3


    //AB-StoreStart
    
    
    
    
    //AB-StoreEnd

End_Object    // V82

//AB/ End_Object    // prj
