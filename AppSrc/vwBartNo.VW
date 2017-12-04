//AB/ Project vwBartNo
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "vwBartNo"
//AB/         Set ProjectFileName to "vwBartNo.VW"

// Project Object Structure
//   vwBartNo is a dbViewSubS
//     Bartlno_DD is a DataDictionary
//     Bartlno_ is a dbGridSub

// Register all objects
Register_Object Bartlno_
Register_Object Bartlno_DD
Register_Object vwBartNo


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub

    Use BARTLNO.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_vwBartNo FOR vwBartNo

    Object vwBartNo is a dbViewSubS

        //AB-StoreTopStart
        Function fsCompany String asCompany Returns String
            Clear Company
            Move asCompany To Company.Company_Code
            Find eq Company by Index.1
            Function_Return (Trim(Company.Company_Name))
        End_Function
        
        Function fssBranch String asCompany String asBranch Returns String
            Clear Branch
            Move asCompany  to Branch.Company_Code
            Move asBranch   To Branch.Branch_Code
            Find eq Branch by Index.1
            Function_Return (Trim(Branch.Branch_Name))
        End_Function
        
        //AB-StoreTopEnd

        Set Label to "Ä®Âü£û©û Ä•†¶ö®·≠‡§"
        Set Size to 166 429
        Set Location to 6 6
        Set Color to 14401693

        //AB-DDOStart

        Object Bartlno_DD is a Bartlno_DataDictionary
        End_Object    // Bartlno_DD

        Set Main_DD to (Bartlno_DD(self))
        Set Server to (Bartlno_DD(self))

        //AB-DDOEnd

        Object Bartlno_ is a dbGridSub

            //AB-StoreTopStart
                                        
            //AB-StoreTopEnd

            Set Main_File to Bartlno.File_Number
            Set Ordering to 1
            Set Size to 138 411
            Set Location to 5 7
            Set Color to 16775660
            Set CurrentRowColor to 16771515
            Set CurrentRowTextColor to clNavy
            Set CurrentCellColor to 16771515
            Set CurrentCellTextColor to clNavy
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Bartlno.Company_code
                Entry_Item (fsCompany(Self,BartlNo.Company_Code))
                Entry_Item Bartlno.Btypkin_code
                Entry_Item (FindBtypkinDescr(Self,BartlNo.Btypkin_Code))
                Entry_Item Bartlno.Last_no
            End_Row

            Set Form_Width    item 0 to 41
            Set Header_Label  item 0 to "Ñ´ò†®Âò"
            
            Set Form_Width    item 1 to 90
            Set Header_Label  item 1 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 2 to 46
            Set Header_Label  item 2 to "âÂ§û©û"
            
            Set Form_Width    item 3 to 171
            Set Header_Label  item 3 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 4 to 57
            Set Header_Label  item 4 to "íú¢. Ä®†ü£Ê™"
            

            //AB-StoreStart
                                        
                                        
            //AB-StoreEnd

        End_Object    // Bartlno_


        //AB-StoreStart
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // vwBartNo

//AB/     End_Object    // prj
