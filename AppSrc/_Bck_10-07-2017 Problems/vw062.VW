//AB/ Project vw062:Programmatismos
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vw062:Programmatismos"
//AB/     Set ProjectFileName to "vw062.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   vw062 is a dbViewSubs
//     Company_DD2 is a Company_DataDictionary
//     Branch_DD2 is a Branch_DataDictionary
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Hmerprog_DD is a DataDictionary
//     TextBoxSub1 is a TextBoxSub
//     Branch_Branch_Name is a dbFormSub
//     cSyDateForm1 is a cSyDateForm
//     ButtonSub1 is a ButtonSub
//     Hmerprog_ is a dbGridSub
//     Branch_Branch_Recr is a dbFormSub
//     ButtonSub2 is a ButtonSub
//     TextBoxSub5 is a TextBoxSub
//     frmFileName is a FormSub
//     oOpenFile is a OpenDialog
//     Hmerprog_Cn_Add is a dbFormSub
//     Hmerprog_Item_Code is a dbFormSub
//     Hmerprog_Pump_Id is a dbFormSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     Hmerprog_Cn_Client is a dbFormSub
//     TextBoxSub11 is a TextBoxSub
//     Hmerprog_Cn_Client is a dbFormSub
//     TextBoxSub12 is a TextBoxSub
//     txtMess is a TextBoxSub
//     ButtonSub3 is a ButtonSub
//     ButtonSub4 is a ButtonSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Branch_Branch_Recr
Register_Object Branch_DD
Register_Object Branch_DD2
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object Company_DD
Register_Object Company_DD2
Register_Object cSyDateForm1
Register_Object frmFileName
Register_Object Hmerprog_
Register_Object Hmerprog_Cn_Add
Register_Object Hmerprog_Cn_Client
Register_Object Hmerprog_DD
Register_Object Hmerprog_Item_Code
Register_Object Hmerprog_Pump_Id
Register_Object oOpenFile
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub5
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object txtMess
Register_Object vw062


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open DorderD
Open CnZones
Open Cn
Open Clients
Open Constrct
Open Mhxanik
Open Salesmen
Open Areas
Open Cities
Open Towns
Open Payresp
Use Sl002.sl
Use vw051.vw
Use FtpView.vw

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbForm.Sub
Use cSyDateForm.Pkg
Use Button.Sub
Use dbGrid.Sub
Use Form.Sub

Use COMPANY.DD
Use BRANCH.DD
Use HMERPROG.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_vw062 FOR vw062

Object vw062 is a dbViewSubs

    //AB-StoreTopStart
                    
    Property Date   pdHmnia         Public ''
    Property String psBranchRecr    Public ''
    Property String psPath          Public ''
    
    Function fsItemQual String asItem Returns String
        Clear Item
        move asItem to Item.Item_Code
        Find Eq Item by Index.5
        Function_Return Item.Item_Qual
    End_Function
    
    Function fsItemDescr String asItem Returns String
        Clear Item
        move asItem to Item.Item_Code
        Find Eq Item by Index.5
        Function_Return Item.Item_Descr
    End_Function
    
    Function fsClientName String asItem Returns String
        Clear CN
        move asItem to CN.CN_Code
        Find Eq CN by Index.5
        Clear Clients
        Move Cn.Client_ID to Clients.Client_ID
        Find Eq Clients by index.6
        Function_Return Clients.Client_Name
    End_Function
    
    Function fsCNDescr String asItem Returns String
        Clear CN
        move asItem to CN.CN_Code
        Find Eq CN by Index.5
        Function_Return CN.CN_Descr
    End_Function
    
    Function fsCNAddress String asItem Returns String
        Clear CN
        move asItem to CN.CN_Code
        Find Eq CN by Index.5
        Function_Return CN.CN_Address
    End_Function
    
    Function fsCNPhone String asItem Returns String
        Clear CN
        move asItem to CN.CN_Code
        Find Eq CN by Index.5
        Function_Return CN.CN_Phone
    End_Function
    
    Function fsPumpDescr String asItem Returns String
        Clear Pumps
        move asItem to Pumps.Pump_ID
        Find Eq Pumps by Index.3
        Function_Return Pumps.Pump_Descr
    End_Function
    
    Object Company_DD2 is a Company_DataDictionary
        Set Read_Only_State to True
    End_Object    // Company_DD2
    
    Object Branch_DD2 is a Branch_DataDictionary
        Set DDO_Server to (Company_DD2(self))
        Set Read_Only_State to True
        Set Field_Options Field Branch.Branch_Name to DD_Clear_Field_Options DD_Required
        Begin_Constraints
            Constrain Branch.Company_Code Eq Syscurxr.Company_Code
        End_Constraints
    End_Object    // Branch_DD2
    
    //AB-StoreTopEnd

    Set Label to "Ü£ú®„©†¶™ è®¶ö®ò££ò´†©£Ê™"
    Set Size to 287 524
    Set Location to 2 4

    //AB-DDOStart

    Object Company_DD is a Company_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        Set Field_Options Field Branch.Branch_Name to DD_Clear_Field_Options DD_Required
        
        Begin_Constraints
            Constrain Branch.Company_Code Eq Syscurxr.Company_Code
        End_Constraints
        
        
        
        
        //AB-StoreEnd

    End_Object    // Branch_DD

    Object Hmerprog_DD is a Hmerprog_DataDictionary

        //AB-StoreStart
                                        
        Begin_Constraints
            If (pdHmnia     (Self)<>'') Constrain HmerProg.Hmnia        Eq (pdHmnia     (Self))
            If (psBranchRecr(Self)<>'') Constrain HmerProg.Branch_Recr  Eq (psBranchRecr(Self))
        End_Constraints
        
        
        //AB-StoreEnd

    End_Object    // Hmerprog_DD

    Set Main_DD to (Hmerprog_DD(self))
    Set Server to (Hmerprog_DD(self))

    //AB-DDOEnd

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ñ®ö¶©´·©†¶"
        Set Location to 9 9
        Set Size to 10 43
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object Branch_Branch_Name is a dbFormSub
        Entry_Item Branch.Branch_name
        Set Server to (Branch_DD(self))
        Set Size to 13 167
        Set Location to 7 110
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Set Server to (Branch_DD2(Self))
        
        Procedure Key Integer iKey
        End_Procedure
        
        Procedure Find_Next
        End_Procedure
        
        Procedure Find_Previous
        End_Procedure
        
        Procedure Find_Ge
        End_Procedure
        
        Procedure Beginning_Of_Data
        End_Procedure
        
        Procedure End_Of_Data
        End_Procedure
        
        Procedure Prompt
            Set Modal_State         Of sl002 to True
            Set psFragmaCompanyCode Of sl002 to Syscurxr.Company_Code
            Forward Send Prompt
            Send KeyAction to ButtonSub1
        End_Procedure
        
        Procedure OnKillFocus
            Send KeyAction to ButtonSub1
        End_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Branch_Branch_Name

    Object cSyDateForm1 is a cSyDateForm
        Set Size to 13 66
        Set Location to 7 282
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Procedure Prompt
            Forward Send Prompt
            Send KeyAction to ButtonSub1
        End_Procedure
        
        Procedure OnKillFocus
            Send KeyAction to ButtonSub1
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // cSyDateForm1

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set Label to "èú®†Ê®†©ú"
        Set Location to 7 360
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Set Visible_State to False
        
        Procedure OnClick
            String  sBranch
            Date    dHmnia
            Get Field_Current_Value Of Branch_DD2 Field Branch.Branch_Recr  to sBranch
            Get Value               Of cSyDateForm1 Item 0                  to dHmnia
            Set pdHmnia                                                     to dHmnia
            Set psBranchRecr                                                to sBranch
            //Set Dynamic_Update_State Of HmerProg_ to False
            Send Rebuild_Constraints    to HmerProg_DD
            Send Beginning_Of_Data      to HmerProg_ True
            //Set Dynamic_Update_State Of HmerProg_ to True
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object Hmerprog_ is a dbGridSub

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set Main_File to Hmerprog.File_Number
        Set Ordering to 3
        Set Size to 190 509
        Set Location to 26 7
        Set Color to 16774365
        Set CurrentRowColor to 16766850
        Set CurrentRowTextColor to clNavy
        Set CurrentCellColor to 16766850
        Set CurrentCellTextColor to clNavy
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Hmerprog.Sitew
            Entry_Item (fsCNDescr(Self,HmerProg.Cn_Code))
            Entry_Item Hmerprog.Item_code
            Entry_Item (fsItemQual(Self,Hmerprog.Item_code))
            Entry_Item Hmerprog.Qty
            Entry_Item Hmerprog.Starttime
            Entry_Item Hmerprog.Pump_id
            Entry_Item Hmerprog.Pumpm
            Entry_Item Hmerprog.Selected
            Entry_Item Hmerprog.Sent
        End_Row

        Set Form_Width    item 0 to 39
        Set Header_Label  item 0 to "í¶£‚ò™"
        
        Set Form_Width    item 1 to 177
        Set Header_Label  item 1 to "Ñ®ö¶"
        
        Set Form_Width    item 2 to 51
        Set Header_Label  item 2 to "ÑÂõ¶™"
        
        Set Form_Width    item 3 to 48
        Set Header_Label  item 3 to "è¶†Ê´û´ò"
        
        Set Form_Width    item 4 to 45
        Set Header_Label  item 4 to "è¶©Ê´û´ò"
        
        Set Form_Width    item 5 to 40
        Set Header_Label  item 5 to "Ñ§ò®•û"
        
        Set Form_Width    item 6 to 36
        Set Header_Label  item 6 to "Ä§´¢Âò"
        
        Set Form_Width    item 7 to 39
        Set Header_Label  item 7 to "ï®.Ä§´¢"
        
        Set Form_Width    item 8 to 14
        Set Header_Label  item 8 to "Ñ"
        Set Column_Checkbox_State  item 8 to True
        
        Set Form_Width    item 9 to 14
        Set Header_Label  item 9 to "ë"
        Set Column_Checkbox_State  item 9 to True
        

        //AB-StoreStart
        //--------------------
        // Grid Items
        //--------------------
        // 00.Hmerprog.Sitew
        // 01.Hmerprog.Cn_code
        // 02.Hmerprog.Item_code
        // 03.(fsItemQual(Self,Hmerprog.Item_code))
        // 04.Hmerprog.Qty
        // 05.Hmerprog.Starttime
        // 06.Hmerprog.Pump_id
        // 07.Hmerprog.Pumpm
        // 08.Hmerprog.Selected
        // 09.Hmerprog.Sent
        //--------------------
        
        Set Points                  Item 4 to 2
        Set Column_Shadow_State     Item 1 to true
        Set Column_Shadow_State     Item 2 to true
        Set Column_Shadow_State     Item 9 to true
        Set Column_Prompt_Object    Item 0 to (Sl002(Self))
        
        Procedure Prompt_CallBack Integer hPromptID
            Integer iBase iCurrent iCol
            Get Current_Item    Of (HmerProg_(vw062(Self)))             to iCurrent
            Get Column          Of (HmerProg_(vw062(Self))) iCurrent    to iCol
            If (iCol=0) Begin
                Set Export_Item_State   Of hPromptID to True
                Set Export_Column       Of hPromptID to 4 // Beto_Site
            End
        End_Procedure
        
        Procedure Prompt
            Integer iBase iCurrent iCol
            Get Current_Item    Of (HmerProg_(vw062(Self)))             to iCurrent
            Get Column          Of (HmerProg_(vw062(Self))) iCurrent    to iCol
            If (iCol=0) Begin
                Set Modal_State         Of sl002 to True
                Set psFragmaCompanyCode Of sl002 to Syscurxr.Company_Code
            End
            Forward Send Prompt
        End_Procedure
        
        Procedure Mouse_Click Integer Item_Num Integer Char_Pos
            String  sID
            Forward Send Mouse_Click Item_Num Char_Pos
            Get Field_Current_Value Of HmerProg_DD Field HmerProg.DorderH_ID to sID
            If (Trim(sID)<>'') Begin
                Set psID Of vw051 to (Trim(sID))
                Send Activate_vw051
                Set psID Of vw051 to ''
            End
        End_Procedure
        
        Procedure Mouse_Down2 Integer i1 Integer i2
        End_Procedure
        
        Procedure Key Integer iKey
            Integer iCol
            Get Current_Col to iCol
            If (iCol<>6) Forward Send Key iKey
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Hmerprog_

    Object Branch_Branch_Recr is a dbFormSub
        Entry_Item Branch.Branch_recr
        Set Server to (Branch_DD(self))
        Set Size to 13 42
        Set Location to 7 64
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                        
        Set Server to (Branch_DD2(Self))
        
        //AB-StoreEnd

    End_Object    // Branch_Branch_Recr

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "ButtonSub2"
        Set Bitmap to "AbCode.bmp"
        Set Size to 15 18
        Set Location to 256 498
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Set TooltipValue to "Ñ•òö‡ö„ úß†¢úö£‚§‡§ ö®ò££È§ ©ú ASCII ò®ÆúÂ¶"
        
        Function fnTimhDEOP Integer aiOrderDRecnum Returns Number
            Clear Dorderd
            Move aiOrderDRecnum  to Dorderd.Recnum
            Find Eq Dorderd.Recnum
            Function_Return Dorderd.Timh_Monados
        End_Function
        
        //Procedure Export_Other_Files Integer aiFileNumber
        //    Local String sStr
        //    Integer iFields iInt iField_Number iErr iWait aiFileNumber
        //    Integer iField_Length iField_Type  iField_Precision
        //    String  sField_Name sFileName sPath sFullName
        
        //    Get psPath to sPath
        
        //End_procedure
        
        Procedure Write_Area String asPath
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr
        
            Move '' to sFullName
            Move Areas.File_Number                             to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of iFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of iFileNumber to sFileName
            Move (Trim(sFileName))                             to sFileName
            Append sFullName (Trim(asPath)) (Trim(sFileName)) '.txt'
        
            Append_Output Channel 8 sFullName
        
            For FieldIndex From 0 to iFields
                Move Areas.Recnum&  to sStr
                Get_Attribute DF_FIELD_TYPE Of iFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
        End_Procedure
        
        Procedure Write_City String asPath
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr
        
            Move '' to sFullName
            Move Cities.File_Number                            to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of iFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of iFileNumber to sFileName
            Move (Trim(sFileName))                             to sFileName
            Append sFullName (Trim(asPath)) (Trim(sFileName)) '.txt'
        
            Append_Output Channel 8 sFullName
        
            For FieldIndex From 0 to iFields
                Move Cities.Recnum&  to sStr
                Get_Attribute DF_FIELD_TYPE Of iFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))    to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
        End_Procedure
        
        Procedure Write_Town String asPath
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr
        
            Move '' to sFullName
            Move Towns.File_Number                             to iFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of iFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of iFileNumber to sFileName
            Move (Trim(sFileName))                             to sFileName
            Append sFullName (Trim(asPath)) (Trim(sFileName)) '.txt'
        
            Append_Output Channel 8 sFullName
        
            For FieldIndex From 0 to iFields
                Move Towns.Recnum&  to sStr
                Get_Attribute DF_FIELD_TYPE Of iFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
        End_Procedure
        
        Procedure Export_File_To_Ascii String asCnCode Integer aiZero
            Set_Argument_Size 2048
            Local String sStr
            Integer iFields iInt iField_Number iErr iWait aiFileNumber
            Integer iField_Length iField_Type  iField_Precision
            String  sField_Name sFileName sPath sFullName
        
            Get psPath to sPath
        
            Clear Cn
            Move asCnCode to Cn.Cn_Code
            Find Eq Cn by index.5
            If (Not(Found)) Procedure_Return
        
            ///////////////////////////////////////////////////////////////////////
            //1. CN
            Move '' to sFullName
            Move Cn.File_Number                                 to aiFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Move (Trim(sFileName))                              to sFileName
            Append_Output Channel 8 sFullName
            For FieldIndex From 0 to iFields
                Move Cn.Recnum&     to sStr
                Get_Attribute DF_FIELD_TYPE Of aiFileNumber FieldIndex to iField_Type
        
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
            Clear Areas
            Move Cn.Cn_Area to Areas.Area_ID
            Find Eq Areas by Index.1
            If (Found) Send Write_Area sPath
        
            Clear Towns
            Move Cn.Cn_City to Cities.City_ID
            Find Eq Cities By Index.1
            If (Found) Begin
                Send Write_City sPath
                Clear Towns
                Move Cities.Town_ID to Towns.Town_ID
                Find Eq Towns By Index.1
                If (Found) Send Write_Town sPath
            End
        
            Relate CN
        
            ///////////////////////////////////////////////////////////////////////
            //5. Clients
            Move '' to sFullName
            Move Clients.File_Number                            to aiFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Move (Trim(sFileName))                              to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Append_Output Channel 8 sFullName
            For FieldIndex From 0 to iFields
                Move Clients.Recnum&     to sStr
                Get_Attribute DF_FIELD_TYPE Of aiFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
            Clear Areas
            Move Clients.Client_Area to Areas.Area_ID
            Find Eq Areas by Index.1
            If (Found) Send Write_Area sPath
        
            Clear Towns
            Move Clients.Client_City_ID to Cities.City_ID
            Find Eq Cities By Index.1
            If (Found) Begin
                Send Write_City sPath
                Clear Towns
                Move Cities.Town_ID to Towns.Town_ID
                Find Eq Towns By Index.1
                If (Found) Send Write_Town sPath
            End
        
            ///////////////////////////////////////////////////////////////////////
            //2. Constrct
            Move '' to sFullName
            Move Constrct.File_Number                           to aiFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Move (Trim(sFileName))                              to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Append_Output Channel 8 sFullName
            For FieldIndex From 0 to iFields
                Move Constrct.Recnum&     to sStr
                Get_Attribute DF_FIELD_TYPE Of aiFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
            Clear Areas
            Move Constrct.Cnt_Area to Areas.Area_ID
            Find Eq Areas by Index.1
            If (Found) Send Write_Area sPath
        
            Clear Towns
            Move Constrct.Cnt_City to Cities.City_ID
            Find Eq Cities By Index.1
            If (Found) Begin
                Send Write_City sPath
                Clear Towns
                Move Cities.Town_ID to Towns.Town_ID
                Find Eq Towns By Index.1
                If (Found) Send Write_Town sPath
            End
            ///////////////////////////////////////////////////////////////////////
            //3. Mhxanik
            Move '' to sFullName
            Move Mhxanik.File_Number                            to aiFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Move (Trim(sFileName))                              to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Append_Output Channel 8 sFullName
            For FieldIndex From 0 to iFields
                Move Mhxanik.Recnum&     to sStr
                Get_Attribute DF_FIELD_TYPE Of aiFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
            Clear Areas
            Move Mhxanik.Mhx_Area to Areas.Area_ID
            Find Eq Areas by Index.1
            If (Found) Send Write_Area sPath
        
            Clear Towns
            Move Mhxanik.Mhx_City to Cities.City_ID
            Find Eq Cities By Index.1
            If (Found) Begin
                Send Write_City sPath
                Clear Towns
                Move Cities.Town_ID to Towns.Town_ID
                Find Eq Towns By Index.1
                If (Found) Send Write_Town sPath
            End
        
            ///////////////////////////////////////////////////////////////////////
            //4. Salesmen
            Move '' to sFullName
            Move Salesmen.File_Number                           to aiFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Move (Trim(sFileName))                              to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Append_Output Channel 8 sFullName
            For FieldIndex From 0 to iFields
                Move Salesmen.Recnum&     to sStr
                Get_Attribute DF_FIELD_TYPE Of aiFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
            Clear Areas
            Move Salesmen.Sls_Area to Areas.Area_ID
            Find Eq Areas by Index.1
            If (Found) Send Write_Area sPath
        
            Clear Towns
            Move Salesmen.Sls_City to Cities.City_ID
            Find Eq Cities By Index.1
            If (Found) Begin
                Send Write_City sPath
                Clear Towns
                Move Cities.Town_ID to Towns.Town_ID
                Find Eq Towns By Index.1
                If (Found) Send Write_Town sPath
            End
        
            ///////////////////////////////////////////////////////////////////////
            //5. Payresp
            Move '' to sFullName
            Move Payresp.File_Number                              to aiFileNumber
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Move (Trim(sFileName))                              to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Append_Output Channel 8 sFullName
            For FieldIndex From 0 to iFields
                Move Payresp.Recnum&     to sStr
                Get_Attribute DF_FIELD_TYPE Of aiFileNumber FieldIndex to iField_Type
                If ((iField_Type=DF_TEXT) Or (iField_Type=DF_ASCII)) ;
                    Get fsStripTextFieldFromEnter (Trim(sStr)) to sStr
                Move (Trim(sStr))   to sStr
                Write   Channel 8 sStr
                Write   Channel 8 '^'
            Loop
            Writeln Channel 8
            Close_Output Channel 8
        
            Clear Areas
            Move Payresp.Presp_Area to Areas.Area_ID
            Find Eq Areas by Index.1
            If (Found) Send Write_Area sPath
        
            Clear Towns
            Move Payresp.Presp_City_ID to Cities.City_ID
            Find Eq Cities By Index.1
            If (Found) Begin
                Send Write_City sPath
                Clear Towns
                Move Cities.Town_ID to Towns.Town_ID
                Find Eq Towns By Index.1
                If (Found) Send Write_Town sPath
            End
        End_Procedure
        
        Function fsCNZoneID String asCNCode String asBranchRecr Returns String
            String rVal
            Clear CnZones
            Move asCnCode       to CnZones.CN_Code
            Move asBranchRecr   to CnZones.Branch_Recr
            Find Eq CnZones by index.3
            Function_Return CnZones.Zone_ID
        End_Function
        
        Function fsJobID String asCnCode Returns String
            Clear CN
            Move asCnCode to Cn.Cn_Code
            Find Eq CN by index.5
            Clear Clients
            Move Cn.Client_ID to Clients.Client_ID
            Find Eq Clients By Index.6
            Function_Return (Trim(Clients.Client_Job))
        End_Function
        
        Function fsJobDescr String asCNCode Returns String
            String sDescr
            Clear CN
            Move asCnCode to Cn.Cn_Code
            Find Eq CN by index.5
            Clear Clients
            Move Cn.Client_ID to Clients.Client_ID
            Find Eq Clients By Index.6
            Get gsfCode_Mast 'JOB' (Trim(Clients.Client_Job)) to sDescr
            Function_Return (Trim(sDescr))
        End_Function
        
        Function fsDoyID String asCnCode Returns String
            Clear CN
            Move asCnCode to Cn.Cn_Code
            Find Eq CN by index.5
            Clear Clients
            Move Cn.Client_ID to Clients.Client_ID
            Find Eq Clients By Index.6
            Function_Return (Trim(Clients.Client_Doy))
        End_Function
        
        Function fsDoyDescr String asCNCode Returns String
            String sDescr
            Clear CN
            Move asCnCode to Cn.Cn_Code
            Find Eq CN by index.5
            Clear Clients
            Move Cn.Client_ID to Clients.Client_ID
            Find Eq Clients By Index.6
            Get gsfCode_Mast 'DOY' (Trim(Clients.Client_Doy)) to sDescr
            Function_Return (Trim(sDescr))
        End_Function
        
        Function fsSxoliaParag Integer aiOrderDRecnum Returns String
            Set_Argument_Size 2048
            Local String sStr
            Clear Dorderd
            Move aiOrderDRecnum  to Dorderd.Recnum
            Find Eq Dorderd.Recnum
            Clear DorderH
            Move DorderD.DorderH_Recr to DorderH.DorderH_Recr
            Find Eq DorderH By Index.6
            Get fsStripTextFieldFromEnter (Trim(Dorderh.Dorderh_sxolia)) to sStr
            Function_Return sStr
        End_Function
        
        Function fsSxoliaGrammhs Integer aiOrderDRecnum Returns String
            Clear Dorderd
            Move aiOrderDRecnum  to Dorderd.Recnum
            Find Eq Dorderd.Recnum
            Function_Return Dorderd.Sxolia
        End_Function
        
        Function fsKathish Integer aiOrderDRecnum Returns String
            Clear Dorderd
            Move aiOrderDRecnum  to Dorderd.Recnum
            Find Eq Dorderd.Recnum
            Function_Return Dorderd.Kathish
        End_Function
        
        Function fsXhmika Integer aiOrderDRecnum Returns String
            Clear Dorderd
            Move aiOrderDRecnum  to Dorderd.Recnum
            Find Eq Dorderd.Recnum
            Function_Return Dorderd.Xhmika_prosth
        End_Function
        
        Function fsMhtres Integer aiOrderDRecnum Returns String
            Clear Dorderd
            Move aiOrderDRecnum  to Dorderd.Recnum
            Find Eq Dorderd.Recnum
            Function_Return Dorderd.Mhtres
        End_Function
        
        Procedure Output_The_Other_Files Integer aiFileNumber
            String  sRecr sBitmap sLabel
            Integer iZero iCount
            Date    dHmnia
            Integer iFields iInt iField_Number iErr iWait
            Integer iField_Length iField_Type  iField_Precision
            Local String  sField_Name sFileName sPath sFullName sProgFile
        
            Get psPath                          to sPath
            Move (Trim(sPath))                  to sPath
            Get Value Of frmFileName    Item 0  to sFileName
            Move (Trim(sFileName))              to sFileName
            Move ''                             to sFullName
            Move 1                              to iZero // Always Create New File
        
            Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
            Get_Attribute DF_FILE_DISPLAY_NAME  Of aiFileNumber to sFileName
            Move (Trim(sFileName))                              to sFileName
            Append sFullName (Trim(sPath)) (Trim(sFileName)) '.txt'
            Set Label Of txtMess to (Trim(sFileName))
            If (iZero) Direct_Output Channel 8 sFullName
            // An einai neo arxeio vgazoume prota thn proth grammh me ta pedia
            If (iZero) Begin
                For iInt From 0 to iFields
                    Get_Attribute DF_FIELD_LENGTH    Of aiFileNumber iInt to iField_Length
                    Get_Attribute DF_FIELD_NAME      Of aiFileNumber iInt to sField_Name
                    Move (Trim(sField_Name)) to sField_Name
                    Write   Channel 8 sField_Name
                    Write   Channel 8 '^'
                Loop
                Writeln Channel 8
            End
            Close_Output Channel 8
        End_procedure
        
        
        Procedure OnClick
            String  sRecr sBitmap sLabel
            Integer iZero iCount
            Date    dHmnia
        
            Set_Argument_Size 640
        
            Integer iFields iInt iField_Number iErr iWait aiFileNumber
            Integer iField_Length iField_Type  iField_Precision
            Local String  sField_Name sFileName sPath sFullName sProgFile
        
            Get Label Of txtMess to sLabel
        
            //============================
            // Yannis 17/03/2016
            //============================
            Integer iSepDec iSepTho
            Get_Attribute DF_DECIMAL_SEPARATOR   To iSepDec
            Get_Attribute DF_THOUSANDS_SEPARATOR To iSepTho
        
            //============================
            // Yannis 11/05/2016 Na paixei mono an einai anapoda
            //============================
            If (iSepDec=Ascii(".")) Begin
                Set_Attribute DF_DECIMAL_SEPARATOR   To (Ascii(","))
                Set_Attribute DF_THOUSANDS_SEPARATOR To (Ascii("."))
            End
        
            Get psPath              to sPath
            Move (Trim(sPath))      to sPath
        
            Get Field_Current_Value Of Branch_DD2 Field Branch.Branch_Recr to sRecr
            Move (Trim(sRecr))                  to sRecr
            Get Value Of frmFileName    Item 0  to sFileName
            Move (Trim(sFileName))              to sFileName
            Get Value Of cSyDateForm1   Item 0  to dHmnia
            If (sFileName='') Procedure_Return
            If (dHmnia   ='') Procedure_Return
            If (sRecr    ='') Procedure_Return
            Get Bitmap                          to sBitmap
            Set Bitmap                          to ''
            Set Enabled_State                   to False
            Move 1 to iZero // Always Zerofile
            If (iZero)  Direct_Output Channel 9 sFileName
            Else        Append_Output Channel 9 sFileName
        
            ///////////////////////////////////////////////////////////////////////
            //1. CN
            Move Cn.File_Number         to  aiFileNumber
            Send Output_The_Other_Files     aiFileNumber
            //2. Constrct
            Move Constrct.File_Number   to  aiFileNumber
            Send Output_The_Other_Files     aiFileNumber
            //3. Mhxanik
            Move Mhxanik.File_Number    to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
            //4. Salesmen
            Move Salesmen.File_Number   to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
            //5. Clients
            Move Clients.File_Number    to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
            //6. Areas
            Move Areas.File_Number      to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
            //7. Cities
            Move Cities.File_Number     to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
            //8. Towns
            Move Towns.File_Number      to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
            //9. Payresp
            Move Payresp.File_Number    to aiFileNumber
            Send Output_The_Other_Files    aiFileNumber
        
            Clear HmerProg
            Lock
            Move dHmnia to HmerProg.Hmnia
            Find Gt HmerProg by index.2
            While ((Found=1) And (HmerProg.Hmnia=dHmnia))
                Add 1 to iCount
                Set Label to (String(iCount))
                If ((((sRecr<>'') And (HmerProg.Branch_Recr=sRecr) And (HmerProg.Selected=1)) Or ;
                      (sRecr='')) And (HmerProg.Selected=1)) Begin
                    Write   Channel 9 (Pad(HmerProg.HMNIA         ,10))
                    Write   Channel 9 (Pad(fsKathish       (Self,HmerProg.DORDERD_RECNUM), 10))
                    //removed from td 06/11/2003 Write   Channel 9 (Pad(HmerProg.SITE          ,10))
                    Write   Channel 9 (Pad(HmerProg.QTY           ,14))
                    Write   Channel 9 (Pad(HmerProg.STARTTIME     ,05))
                    Write   Channel 9 (Pad(HmerProg.SITEW         ,10))
                    Write   Channel 9 (Pad(HmerProg.COMPANY_CODE  ,03))
                    Write   Channel 9 (Pad(HmerProg.DORDERH_ID    ,15))
                    Write   Channel 9 (Pad(HmerProg.ITEM_CODE     ,20))
                    Write   Channel 9 (Pad(HmerProg.PUMP_ID       ,20))
                    Write   Channel 9 (Pad(HmerProg.PUMPM         ,02))
                    Write   Channel 9 (Pad(HmerProg.CN_CODE       ,20))
                    Write   Channel 9 (Pad(HmerProg.CARSONSITE    ,14))
                    Write   Channel 9 (Pad(HmerProg.M3ONSITE      ,14))
                    Write   Channel 9 (Pad(HmerProg.TIMELOAD      ,14))
                    Write   Channel 9 (Pad(HmerProg.BTMCODE1      ,10))
                    Write   Channel 9 (Pad(HmerProg.BTMCODE2      ,10))
                    Write   Channel 9 (Pad(HmerProg.BTMCODE3      ,10))
                    Write   Channel 9 (Pad(HmerProg.DORDERD_RECNUM,14))
                    Write   Channel 9 (Pad(HmerProg.BRANCH_RECR   ,06))
                    Write   Channel 9 (Pad(fnTimhDEOP(Self,HmerProg.DORDERD_RECNUM),14))
                    Write   Channel 9 (Pad(fsCNZoneID(Self,HmerProg.CN_CODE,HmerProg.BRANCH_RECR),05))
                    Write   Channel 9 (Pad(HmerProg.RECNUM         ,14))
        
                    // nea pedia 21/12/2002
                    Write   Channel 9 (Pad(fsJobID        (Self,HmerProg.CN_CODE), 10))
                    Write   Channel 9 (Pad(fsJobDescr     (Self,HmerProg.CN_CODE), 20))
                    Write   Channel 9 (Pad(fsDoyID        (Self,HmerProg.CN_CODE), 10))
                    Write   Channel 9 (Pad(fsDoyDescr     (Self,HmerProg.CN_CODE), 20))
                    Write   Channel 9 (Pad(fsSxoliaParag  (Self,HmerProg.DORDERD_RECNUM),100))
                    Write   Channel 9 (Pad(fsSxoliaGrammhs(Self,HmerProg.DORDERD_RECNUM), 50))
                    Write   Channel 9 (Pad(fsXhmika       (Self,HmerProg.DORDERD_RECNUM), 20))
                    Write   Channel 9 (Pad(fsMhtres       (Self,HmerProg.DORDERD_RECNUM), 20))
        
                    Writeln Channel 9
                    Move 1 to HmerProg.Export
                    Move 0 to HmerProg.Selected
                    Saverecord HmerProg
                    Set Label Of txtMess to ('è®¶ö®ò££ò´†©£Ê™ #'+String(HmerProg.Recnum))
                    Send Export_File_To_Ascii (Trim(HmerProg.CN_CODE)) iZero
                End
                Find Gt HmerProg by index.2
            Loop
            Unlock
            Close_Output Channel 9
        
            //============================
            // Yannis 09/02/2015
            //============================
            Set_Attribute DF_DECIMAL_SEPARATOR   To iSepDec
            Set_Attribute DF_THOUSANDS_SEPARATOR To iSepTho
            //============================
            // Yannis 09/02/2015
            //============================
        
            Send Beginning_Of_Data to HmerProg_ True
        
            Set piFromProgrammatismo Of FTPView to 1
            Set psBranchRecr         Of FTPView to sRecr
        
        
            Send Activate_FtpView
        
            Set Label Of txtMess to sLabel
            Set label to ''
            Set Enabled_State to True
            Set Bitmap to sBitmap
            //Send Info_Box 'Ü úßú•ú®öò©Âò ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
        End_Procedure // OnClick
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "Ñß†¢¶ö„ ò®ÆúÂ¶¨"
        Set Location to 259 248
        Set Size to 10 57
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object frmFileName is a FormSub
        Set Size to 13 186
        Set Location to 258 306
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Procedure Prompt
            String  sFileName
            Integer bOpen
            Get Show_Dialog of oOpenFile To bOpen
            If bOpen Begin
                Get File_Name of oOpenFile to sFileName
                If (Trim(sFileName)<>'') Set Value Item 0 to sFileName
            End
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // frmFileName

    Object oOpenFile is a OpenDialog
        Set Location to 256 225
        Set Size to 15 18

        //AB-StoreStart
        Set Filter_String   to 'Text Files|*.txt|All Files|*.*'
        Set Initial_Folder  to 'C:\VDF6\Develop\Empor'
        Set Filter_Index    to 1
        
        //AB-StoreEnd

    End_Object    // oOpenFile

    Object Hmerprog_Cn_Add is a dbFormSub
        Entry_Item (fsCNAddress(Self,Hmerprog.Cn_Code))
        Set Size to 13 189
        Set Location to 228 55
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Hmerprog_Cn_Add

    Object Hmerprog_Item_Code is a dbFormSub
        Entry_Item (fsItemDescr(Self,Hmerprog.Item_code))
        Set Size to 13 138
        Set Location to 242 270
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Hmerprog_Item_Code

    Object Hmerprog_Pump_Id is a dbFormSub
        Entry_Item (fsPumpDescr(Self,Hmerprog.Pump_ID))
        Set Size to 13 75
        Set Location to 242 441
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Hmerprog_Pump_Id

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "É†ú¨ü. Ñ®ö¶¨"
        Set Location to 230 6
        Set Size to 10 45
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "ÑÂõ¶™"
        Set Location to 244 247
        Set Size to 10 19
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "Ä§´¢Âò"
        Set Location to 244 413
        Set Size to 10 24
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "ãú õ†ß¢Ê °¢Â° ©ú £†ò ö®ò££„ ´¶¨ ßÂ§ò°ò, ≠‚®§ú´ú ´û§ ¶üÊ§û ´¶¨ ò§´Â©´¶†Æ¶¨ õú¢´Â¶¨ û£ú®„©†ò™ ßò®òööú¢Âò™"
        Set Color to 14995902
        Set TextColor to clBlue
        Set Location to 216 6
        Set Size to 10 509
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object Hmerprog_Cn_Client is a dbFormSub
        Entry_Item (fsClientName(Self,Hmerprog.Cn_Code))
        Set Size to 13 189
        Set Location to 241 55
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Hmerprog_Cn_Client

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "èú¢·´û™"
        Set Location to 244 6
        Set Size to 10 43
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub11

    Object Hmerprog_Cn_Client is a dbFormSub
        Entry_Item (fsCnPhone(Self,Hmerprog.Cn_Code))
        Set Size to 13 244
        Set Location to 228 271
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Hmerprog_Cn_Client

    Object TextBoxSub12 is a TextBoxSub
        Set Label to "íû¢."
        Set Location to 228 248
        Set Size to 12 19
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub12

    Object txtMess is a TextBoxSub
        Set Label to "Éû£†¶¨®öÂò ASCII ò®ÆúÂ‡§"
        Set Location to 257 6
        Set Size to 10 211
        Set TypeFace to "MS Sans Serif"
    End_Object    // txtMess

    Object ButtonSub3 is a ButtonSub
        Set Label to "'é¢ò"
        Set Size to 14 35
        Set Location to 7 424
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Procedure OnClick
            String  sLabel sBranch
            Integer iMet
            Date    dHmnia
        
            Get pdHmnia         to dHmnia
            Get psBranchRecr    to sBranch
        
            Get Label to sLabel
            Set Enabled_State to False
        
            If ((sBranch<>'') And (dHmnia='')) Begin
                Clear Hmerprog
                Move sBranch to Hmerprog.Branch_Recr
                Find Gt Hmerprog By Index.1
                While ((Found=1) And (Hmerprog.Branch_Recr=sBranch))
                    Add 1 to iMet
                    Set Label to (String(iMet))
                    Move 1 to HmerProg.Selected
                    Saverecord HmerProg
                    Find Gt Hmerprog By Index.1
                Loop
            End
            Else If ((sBranch='') And (dHmnia<>'')) Begin
                Clear Hmerprog
                Move dHmnia to Hmerprog.Hmnia
                Find Gt Hmerprog By Index.2
                While ((Found=1) And (Hmerprog.Hmnia=dHmnia))
                    Add 1 to iMet
                    Set Label to (String(iMet))
                    Move 1 to HmerProg.Selected
                    Saverecord HmerProg
                    Find Gt Hmerprog By Index.2
                Loop
            End
            Else If ((sBranch<>'') And (dHmnia<>'')) Begin
                Clear Hmerprog
                Move dHmnia     to Hmerprog.Hmnia
                Move sBranch    to Hmerprog.Branch_Recr
                Find Gt Hmerprog By Index.2
                While ((Found=1) And (Hmerprog.Hmnia=dHmnia) And (Hmerprog.Branch_Recr=sBranch))
                    Add 1 to iMet
                    Set Label to (String(iMet))
                    Move 1 to HmerProg.Selected
                    Saverecord HmerProg
                    Find Gt Hmerprog By Index.2
                Loop
            End
        
            Send Beginning_Of_Data to HmerProg_ True
            Set Label to sLabel
            Set Enabled_State to True
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object ButtonSub4 is a ButtonSub
        Set Label to "âò§‚§ò"
        Set Size to 14 35
        Set Location to 7 463
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Procedure OnClick
            String  sLabel sBranch
            Integer iMet
            Date    dHmnia
        
            Get pdHmnia         to dHmnia
            Get psBranchRecr    to sBranch
        
            Get Label to sLabel
            Set Enabled_State to False
        
            If ((sBranch<>'') And (dHmnia='')) Begin
                Clear Hmerprog
                Move sBranch to Hmerprog.Branch_Recr
                Find Gt Hmerprog By Index.1
                While ((Found=1) And (Hmerprog.Branch_Recr=sBranch))
                    Add 1 to iMet
                    Set Label to (String(iMet))
                    Move 0 to HmerProg.Selected
                    Saverecord HmerProg
                    Find Gt Hmerprog By Index.1
                Loop
            End
            Else If ((sBranch='') And (dHmnia<>'')) Begin
                Clear Hmerprog
                Move dHmnia to Hmerprog.Hmnia
                Find Gt Hmerprog By Index.2
                While ((Found=1) And (Hmerprog.Hmnia=dHmnia))
                    Add 1 to iMet
                    Set Label to (String(iMet))
                    Move 0 to HmerProg.Selected
                    Saverecord HmerProg
                    Find Gt Hmerprog By Index.2
                Loop
            End
            Else If ((sBranch<>'') And (dHmnia<>'')) Begin
                Clear Hmerprog
                Move dHmnia     to Hmerprog.Hmnia
                Move sBranch    to Hmerprog.Branch_Recr
                Find Gt Hmerprog By Index.2
                While ((Found=1) And (Hmerprog.Hmnia=dHmnia) And (Hmerprog.Branch_Recr=sBranch))
                    Add 1 to iMet
                    Set Label to (String(iMet))
                    Move 0 to HmerProg.Selected
                    Saverecord HmerProg
                    Find Gt Hmerprog By Index.2
                Loop
            End
        
            Send Beginning_Of_Data to HmerProg_ True
            Set Label to sLabel
            Set Enabled_State to True
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4


    //AB-StoreStart
                    
    Procedure Activate_View Returns Integer
        Integer rVal
        Date    dHmnia
        String  sStr
        Forward Get Msg_Activate_View to rVal
        Clear Branch
        Move Syscurxr.Company_Code  to Branch.Company_Code
        Move Syscurxr.Branch_Code   to Branch.Branch_Code
        Find Eq Branch By Index.1
        Send Find_By_Recnum to Branch_DD2 Branch.File_Number Branch.Recnum
        Move '' to sStr
        Move (Trim(Branch.Path_Exp)) to sStr
        If (Right(sStr,1)<>'\') Append sStr '\'
        Set Value Of frmFileName Item 0 to (Trim(sStr)+Trim(Branch.Exp_TxtName))
        Set Initial_Folder Of oOpenFile to (Trim(sStr))
        Set psPath                      to (Trim(sStr))
        Sysdate dHmnia
        Set Value Of cSyDateForm1 Item 0 to dHmnia
        Send KeyAction to ButtonSub1
        Procedure_Return rVal
    End_Procedure
    
    
    //AB-StoreEnd

End_Object    // vw062


//AB-StoreStart


//AB-StoreEnd

//AB/ End_Object    // prj
