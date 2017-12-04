//AB/ Project AxioStat
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "AxioStat"
//AB/         Set ProjectFileName to "AxioStat.VW"

// Project Object Structure
//   AxioStat is a dbViewSubS
//     Clients_DD2 is a Clients_DataDictionary
//     Baxiokat_DD2 is a Baxiokat_DataDictionary
//     Baxio_DD2 is a Baxio_DataDictionary
//     Baxiokat_DD3 is a Baxiokat_DataDictionary
//     Baxio_DD3 is a Baxio_DataDictionary
//     Baxiokat_DD is a DataDictionary
//     Baxio_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     TextBoxSub1 is a TextBoxSub
//     cSyDateForm1 is a cSyDateForm
//     TextBoxSub2 is a TextBoxSub
//     cSyDateForm2 is a cSyDateForm
//     TextBoxSub3 is a TextBoxSub
//     ComboFormSub1 is a ComboFormSub
//     TextBoxSub4 is a TextBoxSub
//     Ekdoths is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     Apodekths is a dbFormSub
//     ButtonSub1 is a ButtonSub
//     Baxio_ is a dbGridSub
//     ButtonSub2 is a ButtonSub
//     ComboFormSub2 is a ComboFormSub
//     TextBoxSub6 is a TextBoxSub

// Register all objects
Register_Object Apodekths
Register_Object Areas_DD
Register_Object AxioStat
Register_Object Baxio_
Register_Object Baxio_DD
Register_Object Baxio_DD2
Register_Object Baxio_DD3
Register_Object Baxiokat_DD
Register_Object Baxiokat_DD2
Register_Object Baxiokat_DD3
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object ComboFormSub1
Register_Object ComboFormSub2
Register_Object Country_DD
Register_Object cSyDateForm1
Register_Object cSyDateForm2
Register_Object Ekdoths
Register_Object Payresp_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object Towns_DD


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use cSyDateForm.Pkg
    Use Cmbfrm.Sub
    Use dbForm.Sub
    Use Button.Sub
    Use dbGrid.Sub

    Use BAXIOKAT.DD
    Use BAXIO.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_AxioStat FOR ;
    ;
    Object AxioStat is a dbViewSubS

        //AB-StoreTopStart

        Property String psEkdoths   Public ''
        Property String psApodekths Public ''

        Object Clients_DD2 is a Clients_DataDictionary
        End_Object

        Object Baxiokat_DD2 is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Baxio_DD2 is a Baxio_DataDictionary

            Set DDO_Server to (Baxiokat_DD2(self))

            Begin_Constraints
                Date    dApo dEos
                String  sStatus sCodeStatus sApodekths sEkdoths
                Get Value Of cSyDateForm1   Item 0  to dApo
                Get Value Of cSyDateForm2   Item 0  to dEos
                Get Value Of ComboFormSub1  Item 0  to sStatus
                Get psApodekths                     to sApodekths
                Get psEkdoths                       to sEkdoths

                If (dApo='') Move '01/01/1980'      to dApo
                If (dEos='') Move '31/12/2100'      to dEos

                Move (Trim(sStatus))                to sStatus
                Move (Trim(sApodekths))             to sApodekths
                Move (Trim(sEkdoths))               to sEkdoths

                If (sStatus<>'') ;
                    Move (Left(sStatus,1))          to sCodeStatus
                Else Move ''                        to sCodeStatus

                Constrain Baxio.Baxio_HmniaL Between dApo And dEos
                If (sCodeStatus<>'') Constrain Baxio.Baxio_Status   Eq sCodeStatus
                If (sApodekths <>'') Constrain Baxio.Baxio_Code_Out Eq sApodekths
                If (sEkdoths   <>'') Constrain Baxio.Baxio_Code_In  Eq sEkdoths
            End_Constraints
        End_Object

        Object Baxiokat_DD3 is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Baxio_DD3 is a Baxio_DataDictionary
            Set DDO_Server to (Baxiokat_DD3(self))
            Set Field_Options Field Baxio.Baxio_Status      To DD_Clear_Field_Options DD_DISPLAYONLY
        End_Object

        //AB-StoreTopEnd

        Set Label to "Status Ñß†´òöÈ§ ô·©û Ü£ú®¶£û§Âò™ ä„•û™"
        Set Size to 290 519
        Set Location to 2 4

        //AB-DDOStart

        Object Baxiokat_DD is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Baxio_DD is a Baxio_DataDictionary
            Set DDO_Server to (Baxiokat_DD(self))

            //AB-StoreStart

            Set Field_Options Field Baxio.Baxio_Status To DD_Clear_Field_Options  DD_DISPLAYONLY

            Procedure Field_Defaults
            End_Procedure

            Begin_Constraints
                Date    dApo dEos
                String  sStatus sCodeStatus sApodekths sEkdoths
                Get Value Of cSyDateForm1   Item 0  to dApo
                Get Value Of cSyDateForm2   Item 0  to dEos
                Get Value Of ComboFormSub1  Item 0  to sStatus
                Get psApodekths                     to sApodekths
                Get psEkdoths                       to sEkdoths

                If (dApo='') Move '01/01/1980'      to dApo
                If (dEos='') Move '31/12/2100'      to dEos

                Move (Trim(sStatus))                to sStatus
                Move (Trim(sApodekths))             to sApodekths
                Move (Trim(sEkdoths))               to sEkdoths

                If (sStatus<>'') ;
                    Move (Left(sStatus,1))          to sCodeStatus
                Else Move ''                        to sCodeStatus

                Constrain Baxio.Baxio_HmniaL Between dApo And dEos
                If (sCodeStatus<>'') Constrain Baxio.Baxio_Status   Eq sCodeStatus
                If (sApodekths <>'') Constrain Baxio.Baxio_Code_Out Eq sApodekths
                If (sEkdoths   <>'') Constrain Baxio.Baxio_Code_In  Eq sEkdoths
            End_Constraints



            //AB-StoreEnd

        End_Object    // Baxio_DD

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

        Set Main_DD to (Baxio_DD(self))
        Set Server to (Baxio_DD(self))

        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Äß¶:"
            Set Location to 5 13
            Set Size to 10 16
        End_Object    // TextBoxSub1

        Object cSyDateForm1 is a cSyDateForm
            Set Size to 13 66
            Set Location to 4 35
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"

            //AB-StoreStart
            Procedure Request_Clear
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Delegate Send Request_Clear
            End_Procedure


            //AB-StoreEnd

        End_Object    // cSyDateForm1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "Ñ‡™:"
            Set Location to 21 13
            Set Size to 10 17
        End_Object    // TextBoxSub2

        Object cSyDateForm2 is a cSyDateForm
            Set Size to 13 66
            Set Location to 20 35
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"

            //AB-StoreStart
            Procedure Request_Clear
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure


            //AB-StoreEnd

        End_Object    // cSyDateForm2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "Status:"
            Set Location to 5 336
            Set Size to 10 22
        End_Object    // TextBoxSub3

        Object ComboFormSub1 is a ComboFormSub
            Set Size to 14 87
            Set Location to 4 363
            Set Label_Col_Offset to 2

            //AB-StoreStart

            Procedure Combo_Fill_List
                Send Combo_Add_Item  "1 - Ñ°°®ú£‚™"
                Send Combo_Add_Item  "2 - Ñ•¶≠¢û£‚§¶"
                Send Combo_Add_Item  "3 - É†ò£ò®´¨®û£‚§¶"
                Send Combo_Add_Item  "4 - íò£úÂ¶"
                Send Combo_Add_Item  "5 - Éú©£ú¨£‚§¶"
            End_Procedure

            Procedure Combo_Item_Changed
                Forward Send Combo_Item_Changed
                Send KeyAction to ButtonSub1
            End_procedure

            Procedure Request_Clear
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure






            //AB-StoreEnd

        End_Object    // ComboFormSub1

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Ñ°õÊ´û™:"
            Set Location to 5 110
            Set Size to 10 31
        End_Object    // TextBoxSub4

        Object Ekdoths is a dbFormSub
            Entry_Item Clients.Client_name
            Set Server to (Clients_DD(self))
            Set Size to 13 177
            Set Location to 4 153
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Procedure Key Integer iKey
                Integer iRetVal
                Forward Send Key iKey
                If (iKey=277) Begin
                    Send Clear to Clients_DD
                    //Send KeyAction to ButtonSub1
                End
            End_Procedure

            Procedure Prompt
                Set psModule Of (sl100(Self)) to ''
                Forward Send Prompt
            End_Procedure

            Procedure Request_Clear
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure













            //AB-StoreEnd

        End_Object    // Ekdoths

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "Äß¶õ‚°´û™:"
            Set Location to 21 110
            Set Size to 10 40
        End_Object    // TextBoxSub5

        Object Apodekths is a dbFormSub
            Entry_Item Clients.Client_name
            Set Server to (Clients_DD(self))
            Set Size to 13 177
            Set Location to 20 153
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Set Server to (Clients_DD2(Self))

            Procedure Key Integer iKey
                Integer iRetVal
                Forward Send Key iKey
                If (iKey=277) Begin
                    Send Clear to Clients_DD2
                    //Send KeyAction to ButtonSub1
                End
            End_Procedure

            Procedure Request_Clear
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure








            //AB-StoreEnd

        End_Object    // Apodekths

        Object ButtonSub1 is a ButtonSub
            Set Label to "èú®†Ê®†©ú"
            Set Location to 4 462

            //AB-StoreStart

            Procedure OnClick
                String sCodeApo sCodeEkd
                Get Field_Current_Value Of Clients_DD  Field Clients.Client_ID to sCodeEkd
                Get Field_Current_Value Of Clients_DD2 Field Clients.Client_ID to sCodeApo
                Set psEkdoths   to (Trim(sCodeEkd))
                Set psApodekths to (Trim(sCodeApo))
                Send Rebuild_Constraints to Baxio_DD
                Send Rebuild_Constraints to Baxio_DD2
                Send Beginning_Of_Data to Baxio_ True
            End_Procedure // OnClick





            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object Baxio_ is a dbGridSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Main_File to Baxio.File_Number
            Set Ordering to 7
            Set Size to 219 509
            Set Location to 39 3
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Baxio.Baxio_hmnial
                Entry_Item Baxio.Baxio_no
                Entry_Item Baxio.Baxio_banka
                Entry_Item Baxio.Baxio_v2
                Entry_Item Baxio.Baxio_epon_in
                Entry_Item Baxio.Baxio_epon_out
                Entry_Item Baxio.Baxio_status
            End_Row

            Set Form_Width    item 0 to 55
            Set Header_Label  item 0 to "ä„•û"

            Set Form_Width    item 1 to 75
            Set Header_Label  item 1 to "Ä®†ü£Ê™"

            Set Form_Width    item 2 to 64
            Set Header_Label  item 2 to "í®·ßúùò"

            Set Form_Width    item 3 to 56
            Set Header_Label  item 3 to "è¶©Ê"

            Set Form_Width    item 4 to 116
            Set Header_Label  item 4 to "Ñ°õÊ´û™"

            Set Form_Width    item 5 to 111
            Set Header_Label  item 5 to "Äß¶õ‚°´û™"

            Set Form_Width    item 6 to 26
            Set Header_Label  item 6 to "S"


            //AB-StoreStart

            //Function Show_Status_Descr Returns String
            //    Integer iValue iSrv iField iObj liStatusId
            //    String sDesc sVal
            //    Get Server to iSrv
            //    Get_FieldNumber Baxio.Baxio_Status to iField
            //    Get Field_Current_Value of iSrv Field Baxio.Baxio_Status to sVal
            //    Move Baxio_Status_VT to iObj
            //    If (iObj) get Find_Code_Description of iObj sVal to sDesc
            //    Else Move '' to sDesc
            //    Function_Return sDesc
            //End_Function // Show_Status_Descr

            Set Numeric_Mask    Item 3 to 14 2 ' ,*'

            Set Column_Option   Item 0 to Noenter   True
            Set Column_Option   Item 1 to Noenter   True
            Set Column_Option   Item 2 to Noenter   True
            Set Column_Option   Item 3 to Noenter   True
            Set Column_Option   Item 4 to Noenter   True
            Set Column_Option   Item 5 to Noenter   True

            Procedure Request_Clear
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Send Activate to (cSyDateForm1(Self))
                Delegate Send Request_Clear
            End_Procedure

            Function row_save returns integer
                Integer rVal
                Forward Get row_save to rVal
                If (Not(rVal)) Send KeyAction to ButtonSub1
                Function_Return rVal
            End_Function












            //AB-StoreEnd

        End_Object    // Baxio_

        Object ButtonSub2 is a ButtonSub
            Set Label to "ãòù†°„ ò¢¢òö„ Status úß†¢úö£‚§‡§ úß†´òöÈ§ (¶©ú™ ô¢úßú´ú ©´¶§ ßò®òß·§‡ ßÂ§ò°ò)"
            Set Size to 14 342
            Set Location to 261 134
            Set Focus_Mode to Pointer_Only
            Set Form_FontHeight Item 0 to 12
            Set Form_FontWeight Item 0 to 600
            Set Form_TypeFace Item 0 to "MS sans SERIF"

            //AB-StoreStart

            Set TooltipValue to "Ä¨´Ê£ò´û Ñ•È≠¢û©û Ñß†´òöÈ§"

            Procedure OnClick
                Integer iyes iNum
                Number  nPct
                String  sStr sStatus sCodeStatus sStat
                String  sStatus2 sCodeStatus2 sLabel sRecr
                Get label to sLabel
                Set Enabled_State to False
                Move '' to sStr
                Move 0 to iNum

                Get Value Of ComboFormSub2  Item 0  to sStatus
                Move (Trim(sStatus))                to sStatus
                If (sStatus<>'') ;
                    Move (Left(sStatus,1))          to sCodeStatus
                Else Move ''                        to sCodeStatus

                Get Value Of ComboFormSub1  Item 0  to sStatus2
                Move (Trim(sStatus2))               to sStatus2
                If (sStatus2<>'') ;
                    Move (Left(sStatus2,1))         to sCodeStatus2
                Else Move ''                        to sCodeStatus2

                If (sCodeStatus=sCodeStatus2) Begin
                    Send Info_Box 'Éú§ úß†¢‚•ò´ú Status £ú´ò´®¶ß„™ (°·´‡ ò®†©´ú®·)' 'è¢û®¶≠¶®Âò'
                    Set Enabled_State to True
                    Set label to sLabel
                    Procedure_Return
                End

                If (sCodeStatus<>'') Begin
                    Send Rebuild_Constraints to Baxio_DD2
                    Send Find to Baxio_DD2 First_Record 0
                    While (Found)
                        Get Field_Current_Value Of Baxio_DD2 Field Baxio.Baxio_Status to sStat
                        If (Trim(sStat)<>Trim(sCodeStatus)) Add 1 to iNum
                        Send Find to Baxio_DD2 Next_Record 0
                    Loop

                    Append sStr 'Å®„°ò ' (String(iNum)) ' Ñß†´òö‚™ ß®¶™ ú§û£‚®‡©û.\ná‚¢ú´ú §ò ú§û£ú®‡ü¶Á§ Ê¢ú™ ò¨´Ê£ò´ò ?'
                    Get YesNo_Box sStr "Ñß†ôúôòÂ‡©û" 0 to iYes
                    If (iYes=MBR_No) Begin
                        Set Enabled_State to True
                        Set label to sLabel
                        Procedure_Return
                    End

                    Send Rebuild_Constraints to Baxio_DD2
                    Send Find to Baxio_DD2 First_Record 0
                    While (Found)
                        Get Field_Current_Value Of Baxio_DD2 Field Baxio.Baxio_Status   to sStat
                        Get Field_Current_Value Of Baxio_DD2 Field Baxio.Baxio_Recr     to sRecr
                        If (Trim(sStat)<>Trim(sCodeStatus)) Begin
                            Set Label to (String(Baxio.Baxio_Code))
                            Send Clear  to Baxio_DD3
                            Move sRecr  to Baxio.Baxio_Recr
                            Send Find to Baxio_DD3 Eq 2 // baxio:Index.2:Baxio_Recr
                            If (Found) Begin
                                Set Field_Changed_Value Of Baxio_DD3 Field Baxio.Baxio_Status to sCodeStatus
                                Send Request_Save to Baxio_DD3
                            End
                        End
                        Send Find to Baxio_DD2 Next_Record 0
                    Loop
                    Send Info_Box 'Ü £ú´ò´®¶ß„ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                    Send KeyAction to ButtonSub1
                End
                Else Send Info_Box 'Éú§ úß†¢‚•ò´ú Status °·´‡ ò®†©´ú®·' 'è¢û®¶≠¶®Âò'

                Set Enabled_State to True
                Set label to sLabel
            End_Procedure // OnClick










            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object ComboFormSub2 is a ComboFormSub
            Set Size to 14 96
            Set Location to 261 30
            Set Label_Col_Offset to 2

            //AB-StoreStart

            Procedure Combo_Fill_List
                Send Combo_Add_Item  "1 - Ñ°°®ú£‚™"
                Send Combo_Add_Item  "2 - Ñ•¶≠¢û£‚§¶"
                Send Combo_Add_Item  "3 - É†ò£ò®´¨®û£‚§¶"
                Send Combo_Add_Item  "4 - íò£úÂ¶"
                Send Combo_Add_Item  "5 - Éú©£ú¨£‚§¶"
            End_Procedure





            //AB-StoreEnd

        End_Object    // ComboFormSub2

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Status:"
            Set Location to 262 4
            Set Size to 10 22
        End_Object    // TextBoxSub6


        //AB-StoreStart

        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation

        Procedure Activate_View Returns Integer
            Integer rVal iCboID iNum
            String  sVal
            Forward Get Msg_Activate_View to rVal
            Move (ComboFormSub1(Self)) to iCboID
            Move "1 - Ñ°°®ú£‚™" to sVal
            Get Combo_Item_Matching Of iCboID sVal to iNum
                If (iNum>=0) Begin
                    Set Combo_Current_Item Of iCboID to iNum
                    Set Value Of iCboID Item 0 to sVal
                End
                Else Begin
                    Set Value Of iCboID Item 0 to sVal
                End
                Send Combo_Item_Changed to iCboID
                Send KeyAction to ButtonSub1
            Procedure_Return rVal
        End_Procedure

        Procedure Request_Clear
            Forward Send Request_Clear
            Send Clear to Clients_DD2
            Send Clear to Clients_DD
            Set Value Of cSyDateForm1   Item 0  to ''
            Set Value Of cSyDateForm2   Item 0  to ''
            Set psApodekths                     to ''
            Set psEkdoths                       to ''
            Send KeyAction to ButtonSub1
        End_Procedure

        Procedure Request_Clear_All
            Send Request_Clear
        End_Procedure










        //AB-StoreEnd

    CD_End_Object    // AxioStat

//AB/     End_Object    // prj
