//AB/ Project slBanks
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "slBanks"
//AB/     Set ProjectFileName to "slBanks.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   slBanks is a dbModalPanelSub
//     Banks_DD is a DataDictionary
//     oSelList is a dbListSub
//     frmPeriexei is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub

// Register all objects
Register_Object Banks_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object frmPeriexei
Register_Object oSelList
Register_Object slBanks
Register_Object TextBoxSub1


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Form.Sub
Use Txtbox.Sub
Use Button.Sub


Use BANKS.DD

//AB-IgnoreEnd

Object slBanks is a dbModalPanelSub

    //AB-StoreTopStart
            
    Property String psBanks Public ""
    
    //AB-StoreTopEnd

    Set Label to "í®·ßúùú™"
    Set Size to 231 493
    Set Location to 77 128

    //AB-DDOStart

    Object Banks_DD is a Banks_DataDictionary

        //AB-StoreTopStart
                        
                        
        //AB-StoreTopEnd


        //AB-StoreStart
                        
        //Begin_Constraints
        //    String sStr
        //    Get psBanks to sStr
        //    If (Trim(sStr)<>"") Constrain Banks as (Banks.Bank_Name contains sStr)
        //End_Constraints
        
        
        
        //AB-StoreEnd

    End_Object    // Banks_DD

    Set Main_DD to (Banks_DD(self))
    Set Server to (Banks_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Main_File to Banks.File_Number
        Set Size to 181 475
        Set Location to 6 6
        Set Auto_Server_State to TRUE

        Begin_Row
            Entry_Item Banks.Bank_older_code
            Entry_Item Banks.Bank_older_desc
            Entry_Item Banks.Bank_id
            Entry_Item Banks.Bank_name
        End_Row

        Set Form_Width    item 0 to 64
        Set Header_Label  item 0 to "èò¢ò†Ê™ â‡õ."
        
        Set Form_Width    item 1 to 150
        Set Header_Label  item 1 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 2 to 66
        Set Header_Label  item 2 to "â‡õ†°Ê™ SAP"
        
        Set Form_Width    item 3 to 195
        Set Header_Label  item 3 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
                        
                        
                        
                        
                        
        //AB-StoreEnd

    End_Object    // oSelList

    Object frmPeriexei is a FormSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Size to 13 121
        Set Location to 193 46
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Set Enabled_State to False
        Set Visible_State to False
        
        //AB-StoreEnd

    End_Object    // frmPeriexei

    Object TextBoxSub1 is a TextBoxSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "èú®†ö®ò≠„ èú®†‚Æú†"
        Set Auto_Size_State to FALSE
        Set Location to 191 5
        Set Size to 17 39
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"

        //AB-StoreStart
                        
        Set Enabled_State to False
        Set Visible_State to False
        
        //AB-StoreEnd

    End_Object    // TextBoxSub1

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "Å®ú™"
        Set Bitmap to "filter.bmp"
        Set Location to 193 177
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Set Enabled_State to False
        Set Visible_State to False
        
        Procedure OnClick00
            String sStr
            Get Value of frmPeriexei Item 0 to sStr
            Move (Trim(sStr))               to sStr
            Set psBanks                     to sStr
            Send Rebuild_Constraints Of Banks_DD
            Send Beginning_Of_Data Of oSelList True
            Set Value of frmPeriexei Item 0 to ""
        End_Procedure // OnClick
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "Ó¢ú™"
        Set Location to 193 237
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Set Enabled_State to False
        Set Visible_State to False
        
        Procedure OnClick00
            String sStr
            Set psBanks to ""
            Set Value of frmPeriexei Item 0 to ""
            Send Rebuild_Constraints Of Banks_DD
            Send Beginning_Of_Data Of oSelList True
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2


    //AB-StoreStart
            
            
            
    //AB-StoreEnd

End_Object    // slBanks

//AB/ End_Object    // prj
