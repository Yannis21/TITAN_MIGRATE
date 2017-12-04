//AB/ Project Wax:Lookup Apothikhs
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Wax:Lookup Apothikhs"
//AB/     Set ProjectFileName to "Wax.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Wax is a dbModalPanelSub
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax
Register_Object Wax_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD

//AB-IgnoreEnd

Object Wax is a dbModalPanelSub

    //AB-StoreTopStart
                                    
    Property Integer    piMustConstrain Public  0
    Property Integer    piYear          Public  0
    Property String     psCompany       Public ''
    Property String     psBranch        Public ''
    Property String     psWapokat       Public ''
    
    //AB-StoreTopEnd

    Set Label to "âò´·¢¶ö¶™ Äß¶üû°È§"
    Set Size to 148 355
    Set Location to 8 21
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Wapokat_DD is a Wapokat_DataDictionary
    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))
    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))

        //AB-StoreStart
        
        Begin_Constraints
            Integer iMustConstrain iYear
            String  sCompany sBranch sWapokat
            Get piMustConstrain to iMustConstrain
            If (iMustConstrain) Begin
                Get piYear     to  iYear
                Get psCompany  to  sCompany
                Get psBranch   to  sBranch
                Get psWapokat  to  sWapokat
                If (sCompany<>'') Begin
                    Constrain Wax.Company_Code eq sCompany
                    If (sBranch<>'') Begin
                        Constrain Wax.Branch_Code eq sBranch
                        If (iYear<>0) Begin
                            Constrain Wax.Year_Year eq iYear
                            If (sWapokat<>'') Begin
                                Constrain Wax.Wapokat_Code eq sWapokat
                            End
                        End
                    End
                End
            End
        End_Constraints
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Wax_DD

    Set Main_DD to (Wax_DD(self))
    Set Server to (Wax_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Wax.File_Number
        Set Size to 105 340
        Set Location to 5 6

        Begin_Row
            Entry_Item Wax.Wax_recr
            Entry_Item Wax.Wax_code
            Entry_Item Wax.Wax_descr
        End_Row

        Set Form_Width    item 0 to 33
        Set Header_Label  item 0 to "Recr"
        
        Set Form_Width    item 1 to 80
        Set Header_Label  item 1 to "â‡õ†°Ê™"
        
        Set Form_Width    item 2 to 219
        Set Header_Label  item 2 to "èú®†ö®ò≠„"
        

        //AB-StoreStart
        
        Procedure Activate
            Send Rebuild_Constraints to Wax_DD
            Send Beginning_Of_Data to oSelList True
            Forward Send Activate
        End_procedure
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Location to 113 186

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Location to 113 241

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Location to 113 296

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
                                    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Wax

//AB/ End_Object    // prj
