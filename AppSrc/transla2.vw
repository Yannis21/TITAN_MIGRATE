//AB/ Project Transla2
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Transla2"
//AB/         Set ProjectFileName to "Transla2.VW"

// Project Object Structure
//   Transla2 is a dbViewSubS
//     Translat_DD is a DataDictionary
//     Translat_ is a dbGridSub
//     frmGreek is a FormSub
//     btnGreek is a ButtonSub
//     frmCode is a FormSub
//     btnCode is a ButtonSub
//     frmEnglish is a FormSub
//     btnEnglish is a ButtonSub

// Register all objects
Register_Object btnCode
Register_Object btnEnglish
Register_Object btnGreek
Register_Object frmCode
Register_Object frmEnglish
Register_Object frmGreek
Register_Object Transla2
Register_Object Translat_
Register_Object Translat_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub
    Use Form.Sub
    Use Button.Sub

    Use Translat.dd
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Transla2 FOR ;
    ;
    Object Transla2 is a dbViewSubS

        //AB-StoreTopStart
        Property String psGreek   Public ''
        Property String psEnglish Public ''
        Property String psCode    Public ''
        
        //AB-StoreTopEnd

        set label to "€¤« ©«¦å® ©ž" 
        Set Size to 282 515
        Set Location to 4 6

        //AB-DDOStart

        Object Translat_DD is a Translat_DataDictionary

            //AB-StoreStart
            
            Function fiEnglish String asStr Returns Integer
                Integer rVal
                String sEnglish
                Get psEnglish           to sEnglish
                Move (Trim(sEnglish))   to sEnglish
                If (Translat.Lang_English Contains sEnglish) Move 1 to rVal
                Function_return rVal
            End_Function
            
            Function fiGreek String asStr Returns Integer
                Integer rVal
                String sGreek
                Get psGreek           to sGreek
                Move (Trim(sGreek))   to sGreek
                If (Translat.Lang_Greek Contains sGreek) Move 1 to rVal
                Function_return rVal
            End_Function
            
            Function fiCode String asStr Returns Integer
                Integer rVal
                String sCode
                Get psCode           to sCode
                Move (Trim(sCode))   to sCode
                If (Translat.Lang_Code Contains sCode) Move 1 to rVal
                Function_return rVal
            End_Function
            
            Begin_Constraints
                String sGreek sEnglish sCode
            
                Get psGreek             to sGreek
                Get psEnglish           to sEnglish
                Get psCode              to sCode
            
                Move (Trim(sEnglish))   to sEnglish
                Move (Trim(sGreek))     to sGreek
                Move (Trim(sCode))      to sCode
                If (sEnglish<>'') Begin
                    Constrain Translat as (fiEnglish(Self,Translat.Lang_Greek)=1)
                    If (sGreek  <>'') Begin
                        Constrain Translat as (fiGreek(Self,Translat.Lang_Greek)=1)
                        If (sCode   <>'') Begin
                            Constrain Translat as (fiCode(Self,Translat.Lang_Greek)=1)
                        End
                    End
                    Else If (sCode   <>'') Begin
                        Constrain Translat as (fiCode(Self,Translat.Lang_Greek)=1)
                    End
              End
                Else If (sGreek  <>'') Begin
                    Constrain Translat as (fiGreek(Self,Translat.Lang_Greek)=1)
                    If (sCode   <>'') Begin
                        Constrain Translat as (fiCode(Self,Translat.Lang_Greek)=1)
                    End
                End
                Else If (sCode   <>'') Begin
                    Constrain Translat as (fiCode(Self,Translat.Lang_Greek)=1)
                End
            End_Constraints
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Translat_DD

        Set Main_DD to (Translat_DD(self))
        Set Server to (Translat_DD(self))

        //AB-DDOEnd

        Object Translat_ is a dbGridSub
            Set Main_File to Translat.File_Number
            Set Size to 246 502
            Set Location to 21 5
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Translat.Lang_greek
                Entry_Item Translat.Lang_code
                Entry_Item Translat.Lang_english
            End_Row

            Set Form_Width    item 0 to 186
            Set Header_Label  item 0 to "Greek"
            
            Set Form_Width    item 1 to 133
            Set Header_Label  item 1 to "Code"
            
            Set Form_Width    item 2 to 176
            Set Header_Label  item 2 to "English"
            

            //AB-StoreStart
                                                                        
            Procedure Header_Mouse_Click Integer iCol
                Forward Send Header_Mouse_Click iCol
                     If (iCol=0) Set Ordering to 1 // Greek
                Else If (iCol=1) Set Ordering to 2 // Code
                Else If (iCol=2) Set Ordering to 3 // English
                Send Beginning_Of_Data True
            End_procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Translat_

        Object frmGreek is a FormSub
            Set Size to 13 167
            Set Location to 5 5
            Set Label_Col_Offset to 2
        End_Object    // frmGreek

        Object btnGreek is a ButtonSub
            Set Label to "Ok"
            Set Size to 13 17
            Set Location to 5 173

            //AB-StoreStart
            Procedure OnClick
                String sStr
                Get Value Of frmGreek Item 0 to sStr
                Set psGreek to sStr
                Send Rebuild_Constraints to Translat_DD
                Send Beginning_Of_Data to Translat_ True
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // btnGreek

        Object frmCode is a FormSub
            Set Size to 13 112
            Set Location to 5 191
            Set Label_Col_Offset to 2
        End_Object    // frmCode

        Object btnCode is a ButtonSub
            Set Label to "Ok"
            Set Size to 13 17
            Set Location to 5 304

            //AB-StoreStart
            Procedure OnClick
                String sStr
                Get Value Of frmCode Item 0 to sStr
                Set psCode to sStr
                Send Rebuild_Constraints to Translat_DD
                Send Beginning_Of_Data to Translat_ True
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // btnCode

        Object frmEnglish is a FormSub
            Set Size to 13 165
            Set Location to 5 323
            Set Label_Col_Offset to 2
        End_Object    // frmEnglish

        Object btnEnglish is a ButtonSub
            Set Label to "Ok"
            Set Size to 13 17
            Set Location to 5 490

            //AB-StoreStart
            Procedure OnClick
                String sStr
                Get Value Of frmEnglish Item 0 to sStr
                Set psEnglish to sStr
                Send Rebuild_Constraints to Translat_DD
                Send Beginning_Of_Data to Translat_ True
            End_Procedure // OnClick
            
            //AB-StoreEnd

        End_Object    // btnEnglish


        //AB-StoreStart
                        
        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation
        
        
        
        //AB-StoreEnd

    CD_End_Object    // Transla2

//AB/     End_Object    // prj
