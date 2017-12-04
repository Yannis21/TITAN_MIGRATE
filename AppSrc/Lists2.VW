//AB/ Project Lists2 - FormulaArray
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Lists2 - FormulaArray"
//AB/         Set ProjectFileName to "Lists2.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Lists2 is a dbViewSubs
//     frmKey is a FormSub
//     oFormArrList1 is a ListSub
//     oFormArrList2 is a ListSub
//     oFormArrList3 is a ListSub
//     oFormArrList4 is a ListSub
//     oFormArrList5 is a ListSub
//     oFormArrList6 is a ListSub
//     oFormArrList7 is a ListSub
//     oFormArrList8 is a ListSub

// Register all objects
Register_Object frmKey
Register_Object Lists2
Register_Object oFormArrList1
Register_Object oFormArrList2
Register_Object oFormArrList3
Register_Object oFormArrList4
Register_Object oFormArrList5
Register_Object oFormArrList6
Register_Object oFormArrList7
Register_Object oFormArrList8


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Use FormlArr.DD
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use Form.Sub
    Use List.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Lists2 FOR Lists2

    Object Lists2 is a dbViewSubs

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Formula Array Selections"
        Set Size to 287 449
        Set Location to 1 4

        //AB-DDOStart


        //AB-DDOEnd

        Object frmKey is a FormSub
            Set Size to 13 374
            Set Location to 22 35
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // frmKey

        Object oFormArrList1 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 56 14
            Set Color to 15794175
            Set TextColor to clNavy
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            // Set Form_color item iCount to clPurple clBtnFace
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList1

        Object oFormArrList2 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 56 123
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList2

        Object oFormArrList3 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 56 229
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList3

        Object oFormArrList4 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 56 335
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList4

        Object oFormArrList5 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 162 14
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList5

        Object oFormArrList6 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 162 123
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList6

        Object oFormArrList7 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 162 229
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList7

        Object oFormArrList8 is a ListSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Size to 93 91
            Set Location to 162 335
            Set Color to 15794175
            Set Label_Col_Offset to 0
            Set Label_Row_Offset to 1
            Set Label_Justification_Mode to jMode_Top

            //AB-StoreStart
            
            procedure mouse_Down integer window integer char_pos
                local integer hDD srv1# cr# srv2#
                forward send mouse_Down window char_pos
                Send ReconstructString
            end_procedure
            
            //Set Color       to 15263976
            Set TextColor   to clNavy
            Set Select_Mode to Single_Select
            
            
            
            //AB-StoreEnd

        End_Object    // oFormArrList8


        //AB-StoreStart
        
        Function ScanList Integer aiID Returns String
            String sValue
            Integer iItemCount i
            Move "" to sValue
            Move (Item_Count(aiID)) to iItemCount
            Move "" to sValue
            For i from 0 to (iItemCount-1)
                If (Select_state(aiID,i)) Begin
                    Get Value Of aiID Item i to sValue
                    Function_Return (ToOEM(Trim(sValue)))
                End
            Loop
            Function_Return sValue
        End_Procedure
        
        
        Procedure Fill_The_Lists integer aiListID String asConstrainFilter
            Integer iFS iCount
            File_Size FormlArr to iFS
            Send Delete_Data Of aiListID
            Send Add_Item to aiListID Msg_None ""
            Clear FormlArr
            Move asConstrainFilter to FormlArr.FormArr_ID
            Find GE FormlArr By Index.1
            While ((Found) And (FormlArr.FormArr_ID=asConstrainFilter))
                Send Add_Item to aiListID Msg_None (ToAnsi(Trim(FormlArr.FormArr_Descr)))
                Find GT FormlArr By Index.1
            Loop
        End_Procedure
        
        Procedure Activate_View Returns Integer
            Integer rVal i iID
            Forward Get Msg_Activate_View to rVal
            For i from 1 to 8
                String sObj
                Move ("(oFormArrList"+String(i)+"(Self))") to sObj
                Move (EVAL(sObj)) to iID
                Send Fill_The_Lists iID (String(i-1))
            Loop
            Procedure_Return rVal
        End_Procedure
        
        Procedure ReconstructString
            String s1 s2 s3 s4 s5 s6 s7 s8 sValue sSep sAll
            Integer iItemCount iSelectedCount i iID
            Move "_" to sSep
            Move "" to sValue
        
        //==========================
        // SOS WORKING PERFECTLY 1
        //    Move (Item_Count(oFormArrList1(Self))) to iItemCount
        //    Move "" to sValue
        //    For i from 0 to (iItemCount-1)
        //        If (Select_state(oFormArrList1(Self),i)) Begin
        //            Get Value Of oFormArrList1 Item i to sValue
        //            Move (Trim(sValue)) to s1
        //            Break
        //        End
        //    Loop
        //==========================
        
        //==========================
        // SOS WORKING PERFECTLY 2
        //    Move (oFormArrList1(Self))  to iID
        //    //Move (ScanList(iID,Self))   to s1
        //    Move (Item_Count(oFormArrList1(Self))) to iItemCount
        //    Move "" to sValue
        //    For i from 0 to (iItemCount-1)
        //        If (Select_state(iID,i)) Begin
        //            Get Value Of iID Item i to sValue
        //            Move (ToOEM(Trim(sValue))) to s1
        //            Break
        //        End
        //    Loop
        //==========================
        
            Move (oFormArrList1(Self))  to iID
            Move (ScanList(Self,iID))   to s1
            Move (oFormArrList2(Self))  to iID
            Move (ScanList(Self,iID))   to s2
            Move (oFormArrList3(Self))  to iID
            Move (ScanList(Self,iID))   to s3
            Move (oFormArrList4(Self))  to iID
            Move (ScanList(Self,iID))   to s4
            Move (oFormArrList5(Self))  to iID
            Move (ScanList(Self,iID))   to s5
            Move (oFormArrList6(Self))  to iID
            Move (ScanList(Self,iID))   to s6
            Move (oFormArrList7(Self))  to iID
            Move (ScanList(Self,iID))   to s7
            Move (oFormArrList8(Self))  to iID
            Move (ScanList(Self,iID))   to s8
        
            If (Trim(s1)<>"") Append sAll (Trim(s1)) sSep
            If (Trim(s2)<>"") Append sAll (Trim(s2)) sSep
            If (Trim(s3)<>"") Append sAll (Trim(s3)) sSep
            If (Trim(s4)<>"") Append sAll (Trim(s4)) sSep
            If (Trim(s5)<>"") Append sAll (Trim(s5)) sSep
            If (Trim(s6)<>"") Append sAll (Trim(s6)) sSep
            If (Trim(s7)<>"") Append sAll (Trim(s7)) sSep
            If (Trim(s8)<>"") Append sAll (Trim(s8))
        
            If (sAll=sSep) Move "" to sAll
            If (Right(sAll,1)=sSep) Move (Left(sAll,Length(sAll)-1)) to sAll
        
            Set Value Of frmKey Item 0 to (Trim(sAll))
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Lists2


    //AB-StoreStart
    
    //AB-StoreEnd

//AB/     End_Object    // prj
