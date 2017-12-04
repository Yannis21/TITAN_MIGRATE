//AB/ Project Barticl:Lookup
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "Barticl:Lookup"
//AB/     Set ProjectFileName to "Barticl.SL"

// Project Object Structure
//   Barticl is a dbModalPanelSub
//     Btypkin_DD2 is a Btypkin_DataDictionary
//     Btypkin_DD is a DataDictionary
//     Barticl_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     oSelList is a dbListSub
//     Btypkin_Btypkin_Code is a dbFormSub
//     Btypkin_Btypkin_Descr is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     cSyDateForm1 is a cSyDateForm
//     chkOpen is a CheckBoxSub
//     ButtonSub1 is a ButtonSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Barticl
Register_Object Barticl_DD
Register_Object Btypkin_Btypkin_Code
Register_Object Btypkin_Btypkin_Descr
Register_Object Btypkin_DD
Register_Object Btypkin_DD2
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object chkOpen
Register_Object cSyDateForm1
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSelList
Register_Object Payresp_DD
Register_Object Towns_DD


//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use dbForm.Sub
Use cSyDateForm.Pkg
Use Chkbox.Sub
Use Button.Sub


Use BTYPKIN.DD
Use BARTICL.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD

//AB-IgnoreEnd

Object Barticl is a dbModalPanelSub

    //AB-StoreTopStart
                    
    Property Integer    piWhat              Public  0
    Property Integer    FragmaTypkinCode    Public  0
    Property Integer    piIsOpen            Public  0
    Property String     FragmaClientID      Public ''
    Property String     FragmaClientEpon    Public ''
    Property Date       FragmaHmnia         Public ''
    
    Object Btypkin_DD2 is a Btypkin_DataDictionary
    End_Object
    
    
    //AB-StoreTopEnd

    Set Label to "â†§„©ú†™ Ä•†¶ö®·≠‡§"
    Set Size to 289 519
    Set Location to 2 5
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Btypkin_DD is a Btypkin_DataDictionary
    End_Object    // Btypkin_DD

    Object Barticl_DD is a Barticl_DataDictionary
        Set DDO_Server to (Btypkin_DD(self))

        //AB-StoreStart
                                                
        Begin_Constraints
            Integer iTypkinCode iWhat isOpen
            String  sClientID sClientEpon
            Date    dHmnia
        
            Get FragmaTypkinCode    to iTypkinCode
            Get FragmaClientID      to sClientID
            Get FragmaClientEpon    to sClientEpon
            Get FragmaHmnia         to dHmnia
            Get piIsOpen            to isOpen
        
            If (iTypkinCode<>'') Begin
                If (sClientID<>'') Begin
                    Set Ordering Of Barticl_DD to 8
                    // Comp+Br+Year+Btypkin_Code+Epon1+Hmnia+Recnum
                    Constrain Barticl.Company_Code  Eq SyscurXr.Company_Code
                    Constrain Barticl.Branch_Code   Eq SyscurXr.Branch_Code
                    Constrain Barticl.Year_Year     Eq SyscurXr.Year_Year
                    Constrain Barticl.Btypkin_Code  Eq iTypkinCode
                    Constrain Barticl.Barticl_Epon1 Eq sClientEpon
                    If (dHmnia<>'') Constrain Barticl.Barticl_Hmnia Eq dHmnia
                End
                Else Begin
                    Set Ordering Of Barticl_DD to 11
                    // Comp+Br+Year+Btypkin_Code+Hmnia+Epon1+Recnum
                    Constrain Barticl.Company_Code  Eq SyscurXr.Company_Code
                    Constrain Barticl.Branch_Code   Eq SyscurXr.Branch_Code
                    Constrain Barticl.Year_Year     Eq SyscurXr.Year_Year
                    Constrain Barticl.Btypkin_Code  Eq iTypkinCode
                    If (dHmnia<>'') Constrain Barticl.Barticl_Hmnia Eq dHmnia
                End
            End
            Else If (dHmnia<>'') Begin
                Set Ordering Of Barticl_DD to 9
                // Comp+Br+Year+Hmnia+Epon1+Recnum
                Constrain Barticl.Company_Code  Eq SyscurXr.Company_Code
                Constrain Barticl.Branch_Code   Eq SyscurXr.Branch_Code
                Constrain Barticl.Year_Year     Eq SyscurXr.Year_Year
                Constrain Barticl.Barticl_Hmnia Eq dHmnia
                If (sClientID<>'') Constrain Barticl.Barticl_Epon1 Eq sClientEpon
            End
            Else If (sClientID<>'') Begin
                Set Ordering Of Barticl_DD to 8
                // Comp+Br+Year+Epon1+Hmnia+Recnum
                Constrain Barticl.Company_Code  Eq SyscurXr.Company_Code
                Constrain Barticl.Branch_Code   Eq SyscurXr.Branch_Code
                Constrain Barticl.Year_Year     Eq SyscurXr.Year_Year
                Constrain Barticl.Barticl_Epon1 Eq sClientEpon
            End
            Else Begin
                Constrain Barticl.Company_Code  Eq SyscurXr.Company_Code
                Constrain Barticl.Branch_Code   Eq SyscurXr.Branch_Code
                Constrain Barticl.Year_Year     Eq SyscurXr.Year_Year
            End
            If (isOpen) Constrain Barticl.Barticl_Ekleise NE '1'
        End_Constraints
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Barticl_DD

    Object Country_DD is a Country_DataDictionary
    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary
        Set DDO_Server to (Country_DD(self))
    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary
        Set DDO_Server to (Towns_DD(self))
    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))
    End_Object    // Clients_DD

    Set Main_DD to (Barticl_DD(self))
    Set Server to (Barticl_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Barticl.File_Number
        Set Size to 219 505
        Set Location to 6 6

        Begin_Row
            Entry_Item Barticl.Barticl_no
            Entry_Item Barticl.Arith_orist
            Entry_Item Barticl.Barticl_hmnia
            Entry_Item Btypkin.Btypkin_code
            Entry_Item Btypkin.Btypkin_descr
            Entry_Item Barticl.Barticl_code1
            Entry_Item Barticl.Barticl_epon1
            Entry_Item Barticl.Barticl_sv0
            Entry_Item Barticl.Barticl_ekleise
            Entry_Item Barticl.Isotimia
        End_Row

        Set Form_Width    item 0 to 47
        Set Header_Label  item 0 to "Ä®†ü£Ê™"
        
        Set Form_Width    item 1 to 47
        Set Header_Label  item 1 to "é®†©´.ò®†ü."
        
        Set Form_Width    item 2 to 48
        Set Header_Label  item 2 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 3 to 39
        Set Header_Label  item 3 to "âÂ§û©û"
        
        Set Form_Width    item 4 to 80
        Set Header_Label  item 4 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 5 to 55
        Set Header_Label  item 5 to "ë¨§ò¢/§¶™"
        
        Set Form_Width    item 6 to 96
        Set Header_Label  item 6 to "Ñß‡§¨£Âò"
        
        Set Form_Width    item 7 to 50
        Set Header_Label  item 7 to "è¶©Ê"
        
        Set Form_Width    item 8 to 16
        Set Header_Label  item 8 to "â"
        Set Column_Checkbox_State  item 8 to True
        
        Set Form_Width    item 9 to 22
        Set Header_Label  item 9 to "Ñ°´."
        Set Column_Checkbox_State  item 9 to True
        

        //AB-StoreStart
        
        //Property Integer StoreFragmaTypkinCode  Public 0
        //Property String  StoreFragmaClientID    Public ''
        //Property String  StoreFragmaClientEpon  Public ''
        //Property Date    StoreFragmaHmnia       Public ''
        
        Procedure End_Construct_Object
            Integer iDecimals
            Forward Send End_Construct_Object
            Get fiDekadika_Nomismatos SysCurXr.C_Code0   to    iDecimals
            Set Points Item 7 to iDecimals
            Set Numeric_Mask Item 7 to 14 iDecimals ' ,*'
        End_Procedure
        
        //Procedure Store_Defaults
        //       Forward Send Store_Defaults
        //       Set StoreFragmaTypkinCode    to (FragmaTypkinCode(Self))
        //       Set StoreFragmaClientID      to (FragmaClientID  (Self))
        //       Set StoreFragmaClientEpon    to (FragmaClientEpon(Self))
        //       Set StoreFragmaHmnia         to (FragmaHmnia     (Self))
        //End_Procedure
        
        //Procedure ReStore_Defaults
        //       Forward Send ReStore_Defaults
        //       Set FragmaTypkinCode to (StoreFragmaTypkinCode(Self))
        //       Set FragmaClientID   to (StoreFragmaClientID  (Self))
        //       Set FragmaClientEpon to (StoreFragmaClientEpon(Self))
        //       Set FragmaHmnia      to (StoreFragmaHmnia     (Self))
        //End_Procedure
        
        Procedure Activate
            Send Keyaction to ButtonSub1
            Forward Send Activate
        End_procedure
        
        Procedure Activating
            Forward Send Activating
            Set Auto_Index_State to True
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object Btypkin_Btypkin_Code is a dbFormSub
        Entry_Item Btypkin.Btypkin_code
        Set Label to "íÁß¶™ âÂ§û©û™"
        Set Size to 13 49
        Set Location to 229 84
        Set Label_Col_Offset to 5
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                        
        Set Server to (Btypkin_DD2(Self))
        
        Procedure Key Integer iKey
            Integer iRetVal
            Forward Send Key iKey
            If (iKey=277) Send Clear to Btypkin_DD2
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Btypkin_Btypkin_Code

    Object Btypkin_Btypkin_Descr is a dbFormSub
        Entry_Item Btypkin.Btypkin_descr
        Set Size to 13 133
        Set Location to 229 139
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set Server to (Btypkin_DD2(Self))
        
        //AB-StoreEnd

    End_Object    // Btypkin_Btypkin_Descr

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Server to (Clients_DD(self))
        Set Label to "ë¨§ò¢¢ò©Ê£ú§¶™"
        Set Size to 13 188
        Set Location to 244 84
        Set Label_Col_Offset to 5
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                        
        Procedure Key Integer iKey
            Integer iRetVal
            Forward Send Key iKey
            If (iKey=277) Send Clear to Clients_DD
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // Clients_Client_Name

    Object cSyDateForm1 is a cSyDateForm
        Set Label to "Ü£ú®¶£û§Âò"
        Set Size to 13 66
        Set Location to 258 84
        Set Label_Col_Offset to 5
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                        
        On_Key KClear Send ClearMe
        
        Procedure ClearMe
            Set Value Item 0 to ''
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // cSyDateForm1

    Object chkOpen is a CheckBoxSub
        Set Label to "ãÊ§¶ ò§¶†Æ´·"
        Set Size to 10 62
        Set Location to 260 156
    End_Object    // chkOpen

    Object ButtonSub1 is a ButtonSub
        Set Label to "èú®†Ê®†©ú"
        Set Size to 13 52
        Set Location to 258 219
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                        
        Procedure OnClick
            String  sEpon sID
            Integer iTypkin isOpen
            Date    dHmnia
        
            Get Value Of cSyDateForm1 Item 0                                  to dHmnia
            Get Field_Current_Value Of Clients_DD  Field Clients.Client_ID    to sID
            Get Field_Current_Value Of Clients_DD  Field Clients.Client_Name  to sEpon
            Get Field_Current_Value Of Btypkin_DD2 Field Btypkin.Btypkin_Code to iTypkin
        
            Get Checked_State Of chkOpen to isOpen
        
            Set FragmaTypkinCode    to iTypkin
            Set FragmaClientID      to sID
            Set FragmaClientEpon    to sEpon
            Set FragmaHmnia         to dHmnia
            Set piIsOpen            to isOpen
        
            Send Rebuild_Constraints    to Barticl_DD
            Send Beginning_Of_Data      to oSelList True
        End_Procedure // OnClick
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Size to 13 50
        Set Location to 258 406
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oCancel_bn is a ButtonSub
        Set Label to "&Ä°Á®‡©û"
        Set Size to 13 50
        Set Location to 258 461
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
            Send Cancel To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oCancel_bn


    //AB-StoreStart
                    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    Set Modal_State to True
    
    Procedure Activate
        If (FragmaTypkinCode(Self)<>0) Begin
            Send Clear to Btypkin_DD2
            Move (FragmaTypkinCode(Self)) to Btypkin.Btypkin_Code
            Send Find to Btypkin_DD2 Eq 1
        End
        Else Send Clear to Btypkin_DD2
        If (FragmaClientID(Self)<>'') Begin
            Send Clear to Clients_DD
            Move (FragmaClientID(Self)) to Clients.Client_ID
            Send Find to Clients_DD Eq 6
        End
        Else Send Clear to Clients_DD
        If (FragmaHmnia(Self)<>'') Set Value Of cSyDateForm1 Item 0 to (FragmaHmnia(Self))
        Else                       Set Value Of cSyDateForm1 Item 0 to ''
        Forward Send Activate
    End_Procedure
    
    //AB-StoreEnd

End_Object    // Barticl

//AB/ End_Object    // prj
