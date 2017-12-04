//AB/ Project PtypMet
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "PtypMet"
//AB/         Set ProjectFileName to "PtypMet.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   PtypMet is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Ptypmet_DD is a DataDictionary
//     Ptyppar_Ptyppar_Code is a dbFormSub
//     Ptyppar_Ptyppar_Descr is a dbFormSub
//     Ptypmet_ is a dbGridSub

// Register all objects
Register_Object Ctypkin_DD
Register_Object PtypMet
Register_Object Ptypmet_
Register_Object Ptypmet_DD
Register_Object Ptyppar_DD
Register_Object Ptyppar_Ptyppar_Code
Register_Object Ptyppar_Ptyppar_Descr
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open Ptypparl
    use sl012.sl
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use dbGrid.Sub

    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use PTYPMET.DD

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_PtypMet FOR ;
    ;
    Object PtypMet is a dbViewSubS

        //AB-StoreTopStart
        property string psmodule public ''
        //AB-StoreTopEnd

        Set Label to "Ñß†´®úß´¶Â ãú´ò©Æû£ò´†©£¶Â ßò®ò©´ò´†°È§"
        Set Size to 158 461
        Set Location to 6 7

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))

            //AB-StoreStart
            Procedure OnConstrain
                Forward Send OnConstrain
                     If (psModule(ptypmet(Self))='01')  Constrain ptyppar.ptyppar_module  Eq (psModule(ptypmet(Self)))
                Else If (psModule(ptypmet(Self))='02')  Constrain ptyppar.ptyppar_module  Eq (psModule(ptypmet(Self)))
            End_Procedure

            //AB-StoreEnd

        End_Object    // Ptyppar_DD

        Object Ptypmet_DD is a Ptypmet_DataDictionary
            Set DDO_Server to (Ptyppar_DD(self))
            Set Constrain_File to Ptyppar.File_Number

            //AB-StoreStart
            Function Validate_Save  Returns Integer
                Integer iReturnVal
                String sModule  sDescr scode
                Forward Get Validate_Save  To iReturnVal
                If (Not(iReturnVal)) Begin
                    clear ptypparl
                    move PtypMet.Se_Ptyppar_Code to scode
                    Move Syscurxr.Company_Code  to Ptypparl.Company_Code
                    Move Syscurxr.Branch_Code   to Ptypparl.Branch_Code
                    Move Syscurxr.year_Year     to Ptypparl.year_Year
                    Move sCode                  to Ptypparl.Ptyppar_Code
                    Find eq Ptypparl by index.1
                    if (not(found)) Move 77772 to iReturnVal
                End
                If (iReturnVal) Send Operation_Not_Allowed iReturnVal

                Function_Return iReturnVal
            End_Function   // Validate_Save

            Procedure Operation_Not_Allowed Integer iError_Num
                String lsError_Message
                Case Begin
                  Case (iError_Num = 77772)
                    Move "DDC 010:ÄõÁ§ò´û û úöö®ò≠û!\n\â‡õ†°Ê™ ßò®ò©´ò´†°¶Á ò§Áßò®°´¶™" to lsError_Message
                  Case Break
                Case End
                Error iError_Num lsError_Message
            End_Procedure // operation_not_allowed














            //AB-StoreEnd

        End_Object    // Ptypmet_DD

        Set Main_DD to (Ptyppar_DD(self))
        Set Server to (Ptyppar_DD(self))

        //AB-DDOEnd

        Object Ptyppar_Ptyppar_Code is a dbFormSub
            Entry_Item Ptyppar.Ptyppar_code
            Set Label to "èò®ò©´ò´†°Ê"
            Set Size to 13 70
            Set Location to 7 71
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure Prompt
                String sVal
                Set Modal_State Of (sl012(Current_object)) to True
                Set psModule Of (sl012(Current_object)) to (psModule(Self))
                Forward Send Prompt
            End_procedure

            //AB-StoreEnd

        End_Object    // Ptyppar_Ptyppar_Code

        Object Ptyppar_Ptyppar_Descr is a dbFormSub
            Entry_Item Ptyppar.Ptyppar_descr
            Set Size to 13 304
            Set Location to 7 146
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Ptyppar_Ptyppar_Descr

        Object Ptypmet_ is a dbGridSub

            //AB-StoreTopStart


            //AB-StoreTopEnd

            Set Main_File to Ptypmet.File_Number
            Set Server to (Ptypmet_DD(self))
            Set Size to 102 423
            Set Location to 34 27
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Ptypmet.Recnum
                Entry_Item Ptypmet.Se_ptyppar_code
                Entry_Item (Fsptyppar(self,ptypmet.se_ptyppar_code))
                Entry_Item Ptypmet.Ena_pros_ena
            End_Row

            Set Form_Width    item 0 to 0
            Set Header_Label  item 0 to ""

            Set Form_Width    item 1 to 124
            Set Header_Label  item 1 to "ãß¶®úÂ §ò £ú´ò©Æ. ©ú"

            Set Form_Width    item 2 to 208
            Set Header_Label  item 2 to "èú®†ö®ò≠„"

            Set Form_Width    item 3 to 83
            Set Header_Label  item 3 to "ãÊ§¶ Ñ§ò è®¶™ Ñ§ò"
            Set Column_Checkbox_State  item 3 to True


            //AB-StoreStart
            Set Column_Option Item 0 to NoEnter True
            procedure item_change integer fromi integer toi returns integer
                local integer rval  icol iBase_item
                Local String rval##
                forward get msg_item_change fromi toi to rval
                if (focus(Desktop) = ptypmet_(self)) begin
                    Get Column fromi to iCol
                    if (icol=1) begin
                        Get Base_Item to iBase_item
                        Get Value Item (iBase_item+1) to rval##
                        Move (Fsptyppar(self,Rval##))   to rval##
                        Set value item (iBase_item+2) to Rval##
                    End
                end
                procedure_return rval
            end_procedure











            //AB-StoreEnd

        End_Object    // Ptypmet_


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            String  sModule sIsClient sIsPromhtheyths
            Integer rVal iCurRec
            Forward Get Msg_Activate_View to rVal
            Get psMenuModule  Of Main_Menu  to sModule
            Set psModule to sModule
            if (smodule = "01") begin
               Set Label Of ptypmet to "Ñß†´®úß´¶Â £ú´ò©Æû£ò´†©£¶Â ßò®ò©´ò´†°È§ ©´¶ °Á°¢‡£ò ß‡¢„©ú‡§ "
            end
             if (smodule = "02") begin
               Set Label Of ptypmet to "Ñß†´®úß´¶Â £ú´ò©Æû£ò´†©£¶Â ßò®ò©´ò´†°È§ ©´¶ °Á°¢‡£ò òö¶®È§"
            end
            Send Rebuild_Constraints to ptyppar_dd
            Procedure_Return rVal
        End_Procedure














        //AB-StoreEnd

    CD_End_Object    // PtypMet


    //AB-StoreStart



    //AB-StoreEnd

//AB/     End_Object    // prj
