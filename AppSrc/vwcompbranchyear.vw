//AB/ Project VWCOMP+BRANCH+YEAR
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "VWCOMP+BRANCH+YEAR"
//AB/     Set ProjectFileName to "VWCOMPBRANCHYEAR.vw"
//AB/     Set GenerateFileName to "VWCOMPBRANCHYEAR.vw"

// Project Object Structure
//   VWCOMPBRANCHYEAR is a dbView
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       Company_Company_code is a dbForm
//       Company_Company_name is a dbForm
//       Branch_Branch_code is a dbForm
//       Branch_Branch_name is a dbForm
//       Branch_Branch_Site is a dbFormSub
//       Branch_Branch_Apoth is a dbFormSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//       TextBoxSub8 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//     The_Table is a dbGrid

// Register all objects
Register_Object Branch_Branch_Apoth
Register_Object Branch_Branch_code
Register_Object Branch_Branch_name
Register_Object Branch_Branch_Site
Register_Object Branch_DD
Register_Object Company_Company_code
Register_Object Company_Company_name
Register_Object Company_DD
Register_Object Container1
Register_Object TextBoxSub10
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object The_Table
Register_Object VWCOMPBRANCHYEAR
Register_Object Year_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub

Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_VWCOMPBRANCHYEAR FOR VWCOMPBRANCHYEAR

Object VWCOMPBRANCHYEAR is a dbView
    set label to "Ñ´ò†®úÂò - ìß¶°ò´·©´û£ò - ï®„©ú†™" 
    Set Size to 210 464
    Set Location to 2 9

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))
    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))
        Set Constrain_File to Branch.File_Number
    End_Object    // Year_DD

    Set Main_DD to (Branch_DD(self))
    Set Server to (Branch_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Size to 103 454
        Set Location to 2 3
        Object Company_Company_code is a dbForm
            Entry_Item Company.Company_code
            Set Size to 13 66
            Set Location to 5 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Company_Company_code

        Object Company_Company_name is a dbForm
            Entry_Item Company.Company_name
            Set Size to 13 366
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Company_Company_name

        Object Branch_Branch_code is a dbForm
            Entry_Item Branch.Branch_code
            Set Size to 13 66
            Set Location to 34 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_code

        Object Branch_Branch_name is a dbForm
            Entry_Item Branch.Branch_name
            Set Size to 13 366
            Set Location to 50 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_name

        Object Branch_Branch_Site is a dbFormSub
            Entry_Item Branch.Branch_site
            Set Size to 13 36
            Set Location to 65 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_Site

        Object Branch_Branch_Apoth is a dbFormSub
            Entry_Item Branch.Branch_apoth
            Set Size to 13 36
            Set Location to 80 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Branch_Branch_Apoth

        Object TextBoxSub4 is a TextBoxSub
            set label to "Ñ´ò†®úÂò" 
            Set Location to 5 7
            Set Size to 10 44
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            set label to "Ñß‡§¨£Âò" 
            Set Location to 21 7
            Set Size to 10 47
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            set label to "ìß¶°ò´ò©´„£ò´ò" 
            Set Location to 35 7
            Set Size to 10 55
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Location to 102 5
            Set Size to 3731 6307
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            set label to "Ñß‡§¨£Âò" 
            Set Location to 50 7
            Set Size to 10 36
        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            set label to "í¶£‚ò™" 
            Set Location to 66 7
            Set Size to 10 29
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            set label to "Äß¶ü„°û      :" 
            Set Location to 81 7
            Set Size to 10 44
        End_Object    // TextBoxSub10

    End_Object    // Container1

    Object The_Table is a dbGrid
        Set Main_File to Year.File_Number
        Set Server to (Year_DD(self))
        Set Ordering to 1
        Set Size to 70 456
        Set Location to 116 3
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Year.Year_year
            Entry_Item Year.Year_descr
            Entry_Item Year.Year_xrhshfrom
            Entry_Item Year.Year_xrhshto
            Entry_Item Year.Year_entrydate
            Entry_Item Year.Year_c_code0
            Entry_Item Year.Year_c_code00
            Entry_Item Year.Year_c_coder
        End_Row

        Set Form_Width    item 0 to 45
        set header_label  item 0 to "ï®„©û :          " 
        
        Set Form_Width    item 1 to 67
        set header_label  item 1 to "èú®†ö®ò≠„" 
        
        Set Form_Width    item 2 to 60
        set header_label  item 2 to "ï®„©û Äß¶" 
        
        Set Form_Width    item 3 to 57
        set header_label  item 3 to "ï®„©û Ñ‡™" 
        
        Set Form_Width    item 4 to 57
        set header_label  item 4 to "Ü£/§Âò âò´òÆ." 
        
        Set Form_Width    item 5 to 55
        set header_label  item 5 to "Ä' åÊ£†©£ò" 
        
        Set Form_Width    item 6 to 50
        set header_label  item 6 to "Å' åÊ£†©£ò" 
        
        Set Form_Width    item 7 to 60
        set header_label  item 7 to "åÊ£†©£ò Report" 
        

        //AB-StoreStart
        
        
        
        
        //AB-StoreEnd

    End_Object    // The_Table

End_Object    // VWCOMPBRANCHYEAR

//AB/ End_Object    // prj
