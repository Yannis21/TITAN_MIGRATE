//AB/ Project Lists1 - ( lists for FormulaArr
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Lists1 - ( lists for FormulaArr"
//AB/     Set ProjectFileName to "Lists1.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Lists1 is a dbViewSub
//     FormlArr_DD1 is a FormlArr_DataDictionary
//     FormlArr_DD2 is a FormlArr_DataDictionary
//     FormlArr_DD3 is a FormlArr_DataDictionary
//     FormlArr_DD4 is a FormlArr_DataDictionary
//     FormlArr_DD5 is a FormlArr_DataDictionary
//     FormlArr_DD6 is a FormlArr_DataDictionary
//     FormlArr_DD7 is a FormlArr_DataDictionary
//     FormlArr_DD8 is a FormlArr_DataDictionary
//     FormlArr_DD9 is a FormlArr_DataDictionary
//     ListSub1 is a ListSub
//     ListSub2 is a ListSub
//     ListSub3 is a ListSub
//     ListSub4 is a ListSub
//     ListSub5 is a ListSub
//     ListSub6 is a ListSub
//     ListSub7 is a ListSub
//     ListSub8 is a ListSub
//     ListSub9 is a ListSub
//     frmKey is a FormSub

// Register all objects
Register_Object ListSub1
Register_Object ListSub2
Register_Object ListSub3
Register_Object ListSub4
Register_Object ListSub5
Register_Object ListSub6
Register_Object ListSub7
Register_Object ListSub8
Register_Object ListSub9
Register_Object FormlArr_DD1
Register_Object FormlArr_DD2
Register_Object FormlArr_DD3
Register_Object FormlArr_DD4
Register_Object FormlArr_DD5
Register_Object FormlArr_DD6
Register_Object FormlArr_DD7
Register_Object FormlArr_DD8
Register_Object FormlArr_DD9
Register_Object frmKey
Register_Object Lists1


//AB/ AppBuild VIEW


//AB-StoreTopStart
                    
Open FormlArr
Use FormlArr.DD

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use List.Sub
Use Form.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Lists1 FOR Lists1

Object Lists1 is a dbViewSub

    //AB-StoreTopStart
                        
    Property Integer psCode1    Public 0
    Property Integer psCode2    Public 0
    Property Integer psCode3    Public 0
    Property Integer psCode4    Public 0
    Property Integer psCode5    Public 0
    Property Integer psCode6    Public 0
    Property Integer psCode7    Public 0
    Property Integer psCode8    Public 0
    Property Integer psCode9    Public 0
    
    Object FormlArr_DD1 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode1(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD2 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode2(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD3 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode3(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD4 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode4(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD5 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode5(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD6 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode6(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD7 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode7(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD8 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode8(Self))
        End_Constraints
    End_Object
    
    Object FormlArr_DD9 is a FormlArr_DataDictionary
        Begin_Constraints
            Constrain FormlArr.FormArr_ID Eq (psCode9(Self))
        End_Constraints
    End_Object
    
    
    //AB-StoreTopEnd

    Set Label to "Formula Array - Multiple Constrained lists"
    Set Size to 418 505
    Set Location to 20 33

    //AB-DDOStart


    //AB-DDOEnd

    Object ListSub1 is a ListSub
        Set Ordering to 5
        Set Size to 110 150
        Set Location to 30 16
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                                                                        
       
        //AB-StoreEnd

    End_Object    // ListSub1

    Object ListSub2 is a ListSub

        //AB-StoreTopStart
                                                                                        
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 30 174
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                                                                        
       
        //AB-StoreEnd

    End_Object    // ListSub2

    Object ListSub3 is a ListSub

        //AB-StoreTopStart
                                                                                        
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 30 333
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                                                                        
        Set Server to (FormlArr_DD3(self))
        
        //AB-StoreEnd

    End_Object    // ListSub3

    Object ListSub4 is a ListSub

        //AB-StoreTopStart
                                            
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 149 16
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                            
        Set Server to (FormlArr_DD4(self))
        
        //AB-StoreEnd

    End_Object    // ListSub4

    Object ListSub5 is a ListSub

        //AB-StoreTopStart
                                            
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 149 174
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                            
        Set Server to (FormlArr_DD5(self))
        
        //AB-StoreEnd

    End_Object    // ListSub5

    Object ListSub6 is a ListSub

        //AB-StoreTopStart
                                            
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 148 333
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                            
        Set Server to (FormlArr_DD6(self))
        
        //AB-StoreEnd

    End_Object    // ListSub6

    Object ListSub7 is a ListSub

        //AB-StoreTopStart
                                            
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 270 16
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                            
        Set Server to (FormlArr_DD7(self))
        
        //AB-StoreEnd

    End_Object    // ListSub7

    Object ListSub8 is a ListSub

        //AB-StoreTopStart
                                            
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 270 174
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                            
        Set Server to (FormlArr_DD8(self))
        
        //AB-StoreEnd

    End_Object    // ListSub8

    Object ListSub9 is a ListSub

        //AB-StoreTopStart
                                            
        //AB-StoreTopEnd

        Set Ordering to 5
        Set Size to 110 150
        Set Location to 270 333
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Formlarr.Formarr_id
            Entry_Item Formlarr.Formarr_array
            Entry_Item Formlarr.Formarr_descr
        End_Row

        Set Form_Width    item 0 to 32
        Set Header_Label  item 0 to "CT"
        
        Set Form_Width    item 1 to 29
        Set Header_Label  item 1 to "PT"
        
        Set Form_Width    item 2 to 83
        Set Header_Label  item 2 to "PT Desc"
        

        //AB-StoreStart
                                            
        Set Server to (FormlArr_DD9(self))
        
        //AB-StoreEnd

    End_Object    // ListSub9

    Object frmKey is a FormSub
        Set Size to 13 465
        Set Location to 6 16
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // frmKey


    //AB-StoreStart
                        
    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get Msg_Activate_View to rVal
        Set psCode1 to "0"
        Set psCode2 to "1"
        Set psCode3 to "2"
        Set psCode4 to "3"
        Set psCode5 to "4"
        Set psCode6 to "5"
        Set psCode7 to "6"
        Set psCode8 to "7"
        Set psCode9 to ""
        Send Rebuild_Constraints Of (FormlArr_DD1(Self))
        Send Rebuild_Constraints Of (FormlArr_DD2(Self))
        Send Rebuild_Constraints Of (FormlArr_DD3(Self))
        Send Rebuild_Constraints Of (FormlArr_DD4(Self))
        Send Rebuild_Constraints Of (FormlArr_DD5(Self))
        Send Rebuild_Constraints Of (FormlArr_DD6(Self))
        Send Rebuild_Constraints Of (FormlArr_DD7(Self))
        Send Rebuild_Constraints Of (FormlArr_DD8(Self))
        Send Rebuild_Constraints Of (FormlArr_DD9(Self))
        Send beginning_Of_Data of (ListSub1(Self)) true
        Send beginning_Of_Data of (ListSub2(Self)) true
        Send beginning_Of_Data of (ListSub3(Self)) true
        Send beginning_Of_Data of (ListSub4(Self)) true
        Send beginning_Of_Data of (ListSub5(Self)) true
        Send beginning_Of_Data of (ListSub6(Self)) true
        Send beginning_Of_Data of (ListSub7(Self)) true
        Send beginning_Of_Data of (ListSub8(Self)) true
        Send beginning_Of_Data of (ListSub9(Self)) true
        Procedure_return rVal
    End_Procedure
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Lists1

//AB/ End_Object    // prj
