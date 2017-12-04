
//AB/ Project TestView2
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "TestView2"
//AB/         Set ProjectFileName to "TestView2.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   TestView2 is a dbViewSub
//     Ptyppar_DD1 is a Ptyppar_DataDictionary
//     Ptyppar_DD2 is a Ptyppar_DataDictionary
//     Ptyppar_DD3 is a Ptyppar_DataDictionary
//     dblistSub1 is a dbListSub
//     dblistSub2 is a dbListSub
//     dblistSub3 is a dbListSub

// Register all objects
Register_Object dblistSub1
Register_Object dblistSub2
Register_Object dblistSub3
Register_Object Ptyppar_DD1
Register_Object Ptyppar_DD2
Register_Object Ptyppar_DD3
Register_Object TestView2


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
    Use Ptyppar.DD
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use dbList.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_TestView2 FOR TestView2

    Object TestView2 is a dbViewSub

        //AB-StoreTopStart
        
        Property Integer psCode1    Public 0
        Property Integer psCode2    Public 0
        Property Integer psCode3    Public 0
        
        Object Ptyppar_DD1 is a Ptyppar_DataDictionary
            Begin_Constraints
                Constrain Ptyppar.Ctypkin_Code Eq (psCode1(Self))
            End_Constraints
        End_Object
        
        Object Ptyppar_DD2 is a Ptyppar_DataDictionary
            Begin_Constraints
                Constrain Ptyppar.Ctypkin_Code Eq (psCode2(Self))
            End_Constraints
        End_Object
        
        Object Ptyppar_DD3 is a Ptyppar_DataDictionary
            Begin_Constraints
                Constrain Ptyppar.Ctypkin_Code Eq (psCode3(Self))
            End_Constraints
        End_Object
        
        
        //AB-StoreTopEnd

        Set Label to "TestView2 - Multiple Constrained lists"
        Set Size to 289 523
        Set Location to 10 17

        //AB-DDOStart


        //AB-DDOEnd

        Object dblistSub1 is a dbListSub
            Set Ordering to 5
            Set Size to 110 150
            Set Location to 70 23
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Ptyppar.Ctypkin_code
                Entry_Item Ptyppar.Ptyppar_code
                Entry_Item Ptyppar.Ptyppar_descr
                Entry_Item Ptyppar.Ptyppar_module
            End_Row

            Set Form_Width    item 0 to 32
            Set Header_Label  item 0 to "CT"
            
            Set Form_Width    item 1 to 29
            Set Header_Label  item 1 to "PT"
            
            Set Form_Width    item 2 to 63
            Set Header_Label  item 2 to "PT Desc"
            
            Set Form_Width    item 3 to 20
            Set Header_Label  item 3 to "M"
            

            //AB-StoreStart
                    
            Set Server to (Ptyppar_DD1(self))
            
            //AB-StoreEnd

        End_Object    // dblistSub1

        Object dblistSub2 is a dbListSub

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set Ordering to 5
            Set Size to 110 150
            Set Location to 70 181
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Ptyppar.Ctypkin_code
                Entry_Item Ptyppar.Ptyppar_code
                Entry_Item Ptyppar.Ptyppar_descr
                Entry_Item Ptyppar.Ptyppar_module
            End_Row

            Set Form_Width    item 0 to 32
            Set Header_Label  item 0 to "CT"
            
            Set Form_Width    item 1 to 29
            Set Header_Label  item 1 to "PT"
            
            Set Form_Width    item 2 to 63
            Set Header_Label  item 2 to "PT Desc"
            
            Set Form_Width    item 3 to 20
            Set Header_Label  item 3 to "M"
            

            //AB-StoreStart
                    
            Set Server to (Ptyppar_DD2(self))
            
            
            //AB-StoreEnd

        End_Object    // dblistSub2

        Object dblistSub3 is a dbListSub

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set Ordering to 5
            Set Size to 110 150
            Set Location to 70 345
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Ptyppar.Ctypkin_code
                Entry_Item Ptyppar.Ptyppar_code
                Entry_Item Ptyppar.Ptyppar_descr
                Entry_Item Ptyppar.Ptyppar_module
            End_Row

            Set Form_Width    item 0 to 32
            Set Header_Label  item 0 to "CT"
            
            Set Form_Width    item 1 to 29
            Set Header_Label  item 1 to "PT"
            
            Set Form_Width    item 2 to 63
            Set Header_Label  item 2 to "PT Desc"
            
            Set Form_Width    item 3 to 20
            Set Header_Label  item 3 to "M"
            

            //AB-StoreStart
                    
            Set Server to (Ptyppar_DD3(self))
            
            //AB-StoreEnd

        End_Object    // dblistSub3


        //AB-StoreStart
        
        Procedure Activate_View Returns Integer
            Integer rVal
            Forward Get Msg_Activate_View to rVal
            Set psCode1 to 119
            Set psCode2 to 216
            Set psCode3 to 220
            Send Rebuild_Constraints Of (Ptyppar_DD1(Self))
            Send Rebuild_Constraints Of (Ptyppar_DD2(Self))
            Send Rebuild_Constraints Of (Ptyppar_DD3(Self))
            Send beginning_Of_Data of (dblistSub1(Self)) true
            Send beginning_Of_Data of (dblistSub2(Self)) true
            Send beginning_Of_Data of (dblistSub3(Self)) true
            Procedure_return rVal
        End_Procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // TestView2


    //AB-StoreStart
        
    //AB-StoreEnd

//AB/     End_Object    // prj
