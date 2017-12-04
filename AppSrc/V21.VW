//AB/ Project V21:Parastatika  emporikoy-Gl
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V21:Parastatika  emporikoy-Gl"
//AB/     Set ProjectFileName to "V21.vw"

// Project Object Structure
//   V21 is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Ptypparh_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Ptyppar_ptyppar_code is a dbForm
//       Ptyppar_Ptyppar_descr is a dbForm
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//       Ptyppar_Gtypkin_Code is a dbFormSub
//       FormSub1 is a FormSub
//     The_Table is a dbGrid
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Company_Company_Name
Register_Object Container1
Register_Object Ctypkin_DD
Register_Object dbGroupSub1
Register_Object FormSub1
Register_Object Ptyppar_DD
Register_Object Ptyppar_Gtypkin_Code
Register_Object Ptyppar_Ptyppar_descr
Register_Object Ptyppar_ptyppar_code
Register_Object Ptypparh_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object The_Table
Register_Object V21
Register_Object Wtypkin_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart

Open GPLAN
//open Codemast
use sl150.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbForm.Sub
Use Form.Sub
Use dbGroup.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use PTYPPARH.DD
Use SYSCURXR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V21 FOR V21

Object V21 is a dbViewSubS

    //AB-StoreTopStart
    property string Psmodule public ''
    Function fscodemast string sflag Returns string
          string sdescr
          clear codemast
          move 'FLAGGL'          to codemast.type
          move sflag             to codemast.code
          find eq codemast by index.1
          if (found=1) move codemast.description to sdescr
          else         move ''                   to sdescr
          function_return sdescr
    end_Function
    
    Function fstypaxia string saxia Returns string
          string sdescr
          if (saxia='1') move 'âòüò®„ Ä•Âò' to sdescr
          if (saxia='2') move 'âòüò®„ ãú´· Ñ°ß´‡©û' to sdescr
          if (saxia='3') move 'Ä•Âò î.è.Ä' to sdescr
          if (saxia='4') move 'íú¢†°„ Ä•Âò' to sdescr
          function_return sdescr
    end_Function
    
    //AB-StoreTopEnd

    Set Label to "é®†©£Ê™ â†§„©ú‡§ èò®ò©´ò´†°È§ ©ú Çú§†°„ ä¶ö†©´†°„"
    Set Size to 249 519
    Set Location to 6 6

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

    Object Ptypparh_DD is a Ptypparh_DataDictionary
        Set DDO_Server to (Ptyppar_DD(self))
        Set Constrain_File to Ptyppar.File_Number

        //AB-StoreStart
        Function Validate_Save  Returns Integer
                Local Integer iReturnVal
                Forward Get Validate_Save  To iReturnVal
                If (Not(iReturnVal)) Begin
                    // Insert Code Here
                   if (ptyppar.gtypkin_code=0) begin
                      send stop_box 'É‚§ úÆú† ¶®†©´úÂ û °Â§û©û ©´„§ Ç.ä' 'ë≠·¢£ò V21'
                      move 1 to ireturnval
                   end
        
                End
                Function_Return iReturnVal
        End_Function   // Validate_Save
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Ptypparh_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Set Main_DD to (Ptyppar_DD(self))
    Set Server to (Ptyppar_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 50 511
        Set Location to 15 1
        Object Ptyppar_ptyppar_code is a dbForm
            Entry_Item Ptyppar.Ptyppar_code
            Set Size to 13 59
            Set Location to 5 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure Prompt
                Set Modal_State Of (sl012(Self)) to True
                Set psmodule of (sl012(self)) to ''
                Forward Send prompt
                send beginning_of_data to (the_table(self)) true
            End_procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Ptyppar_ptyppar_code

        Object Ptyppar_Ptyppar_descr is a dbForm
            Entry_Item Ptyppar.Ptyppar_descr
            Set Size to 13 438
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ptyppar_Ptyppar_descr

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "èò®ò©´ò´†°Ê"
            Set Location to 7 5
            Set Size to 10 50
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "èú®†ö®ò≠„"
            Set Location to 21 5
            Set Size to 10 41
        End_Object    // TextBoxSub5

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "âÂ§û©û Ç.ä"
            Set Location to 35 4
            Set Size to 12 41
        End_Object    // TextBoxSub7

        Object Ptyppar_Gtypkin_Code is a dbFormSub
            Entry_Item Ptyppar.Gtypkin_code
            Set Size to 13 59
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            set enabled_state to false
            procedure onchange
                  integer icode
                  get value item 0 to icode
                  clear gtypkin
                  move syscurxr.company_code to gtypkin.company_code
                  move syscurxr.branch_code  to gtypkin.branch_code
                  move syscurxr.year_year    to gtypkin.year_year
                  move icode                 to gtypkin.gtypkin_code
                  find eq gtypkin by index.1
                  if (found=1) begin
                    set value of (formsub1(container1(self))) to gtypkin.gtypkin_descr
                    set enabled_state of (the_table(self)) to true
                  end
                  else begin
                    set value of (formsub1(container1(self))) to ''
                    set enabled_state of (the_table(self)) to false
                  end
            end_procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Ptyppar_Gtypkin_Code

        Object FormSub1 is a FormSub
            Set Size to 13 375
            Set Location to 34 128
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub1

    End_Object    // Container1

    Object The_Table is a dbGrid
        Set Main_File to Ptypparh.File_Number
        Set Server to (Ptypparh_DD(self))
        Set Size to 153 512
        Set Location to 79 3
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Ptypparh.Recnum
            Entry_Item Ptypparh.Flaggl
            Entry_Item (fscodemast(self,Ptypparh.flaggl))
            Entry_Item Ptypparh.Codegl
            Entry_Item Ptypparh.Sign
            Entry_Item Ptypparh.Xp
            Entry_Item Ptypparh.Axia
            Entry_Item (fstypaxia(self,Ptypparh.axia))
            Entry_Item Ptypparh.Order
        End_Row

        Set Form_Width    item 0 to 0
        Set Header_Label  item 0 to "Recnum"
        
        Set Form_Width    item 1 to 55
        Set Header_Label  item 1 to "Flag °Â§û©û™"
        
        Set Form_Width    item 2 to 90
        Set Header_Label  item 2 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 3 to 94
        Set Header_Label  item 3 to "ä¶öò®. Ç.ä"
        
        Set Form_Width    item 4 to 50
        Set Header_Label  item 4 to "è®Ê©û£¶"
        
        Set Form_Width    item 5 to 33
        Set Header_Label  item 5 to "ï-è"
        
        Set Form_Width    item 6 to 34
        Set Header_Label  item 6 to "Ä•. "
        
        Set Form_Width    item 7 to 108
        Set Header_Label  item 7 to "èúõÂ¶ Ä®ÆúÂ¶¨"
        
        Set Form_Width    item 8 to 42
        Set Header_Label  item 8 to "Ä/Ä Ñöö®."
        

        //AB-StoreStart
        set ordering to 2
        set column_prompt_object item 3 to (sl150(self))
        Set Column_Option Item 0 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        Set Column_Option Item 7 to NoEnter True
        
        
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
        
                if (icol=6) begin
                    Get Base_Item to iBase_item
                    Get Value Item (iBase_item+6) to rval##
                    move (fstypaxia(self,rval##)) to  rval##
                    Set value item (iBase_item+7) to Rval##
                end
            end
            procedure_return rval
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // The_Table

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 26 512
        Set Location to 1 1
        Set Visible_State to FALSE
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 106
            Set Location to 9 63
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            SET ENABLED_STATE TO FALSE
            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 123
            Set Location to 9 245
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
            Set Size to 13 85
            Set Location to 8 422
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false
            
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub1 is a TextBoxSub
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

        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ìß¶°ò´·©´û£ò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 175
            Set Size to 10 54
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "ï®„©û"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 375
            Set Size to 10 32
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3


        //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // dbGroupSub1

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "Ñß†¢¶ö„ àõ†Ê´û´ò™ èò®ò©´ò´†°¶Á "
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 1 1
        Set Size to 13 438
        Set FontWeight to 800
        Set Justification_Mode to jMode_Center
    End_Object    // TextBoxSub6

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "@1 = á‚©û ¨ß¶°ò´ò©´„£ò´¶™  @2 = á‚©û °ò´ûö¶®Âò™ úÂõ¶¨™  @3 = á‚©û î.è.Ä  @4 = á‚©û úÂõ¶¨™"
        Set Color to clNavy
        Set TextColor to clWhite
        Set Location to 67 1
        Set Size to 10 437
        Set FontWeight to 800
        Set Justification_Mode to jMode_Center
    End_Object    // TextBoxSub8


    //AB-StoreStart
    Procedure Activate_View Returns Integer
        String   sModule
        integer  rval
        Get psMenuModule  Of Main_Menu  to sModule
        Set psModule to sModule
        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V21


//AB-StoreStart
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
//AB-StoreEnd

//AB/ End_Object    // prj
