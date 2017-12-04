//AB/ Project Axioexofl
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Axioexofl"
//AB/         Set ProjectFileName to "Axioexofl.VW"

// Project Object Structure
//   Axioexofl is a dbViewSubS
//     Clients_DD2 is a Clients_DataDictionary
//     Baxiokat_DD2 is a Baxiokat_DataDictionary
//     Baxio_DD2 is a Baxio_DataDictionary
//     Baxiokat_DD3 is a Baxiokat_DataDictionary
//     Baxio_DD3 is a Baxio_DataDictionary
//     Baxiokat_DD4 is a Baxiokat_DataDictionary
//     Baxio_DD4 is a Baxio_DataDictionary
//     Btypkin_DD4 is a Btypkin_DataDictionary
//     Barticl_DD4 is a Barticl_DataDictionary
//     Bmove_DD4 is a Bmove_DataDictionary
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
//     datearxh is a cSyDateForm
//     datelhxh is a cSyDateForm
//     ComboFormSub1 is a ComboFormSub
//     TextBoxSub4 is a TextBoxSub
//     Ekdoths is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     Apodekths is a dbFormSub
//     ComboFormSub2 is a ComboFormSub
//     ButtonSub1 is a ButtonSub
//     Baxio_ is a dbGridSub
//     Textbox1 is a Textbox
//     TextBoxSub6 is a TextBoxSub
//     FormSub3 is a FormSub
//     FormSub1 is a FormSub
//     FormSub2 is a FormSub
//     ButtonSub3 is a ButtonSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     dbGrpYear is a dbGroupSub
//       otxtCompany is a TextBoxSub
//       cboCompany is a ComboFormSub
//       otxtBranch is a TextBoxSub
//       cboBranch is a ComboFormSub
//       otxtYear is a TextBoxSub
//       cboYear is a ComboFormSub
//       btnChangeXr is a ButtonSub

// Register all objects
Register_Object Apodekths
Register_Object Areas_DD
Register_Object Axioexofl
Register_Object Barticl_DD4
Register_Object Baxio_
Register_Object Baxio_DD
Register_Object Baxio_DD2
Register_Object Baxio_DD3
Register_Object Baxio_DD4
Register_Object Baxiokat_DD
Register_Object Baxiokat_DD2
Register_Object Baxiokat_DD3
Register_Object Baxiokat_DD4
Register_Object Bmove_DD4
Register_Object Btypkin_DD4
Register_Object ButtonSub1
Register_Object ButtonSub3
Register_Object btnChangeXr
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object ComboFormSub1
Register_Object ComboFormSub2
Register_Object Country_DD
Register_Object cboBranch
Register_Object cboCompany
Register_Object cboYear
Register_Object cSyDateForm1
Register_Object cSyDateForm2
Register_Object datearxh
Register_Object datelhxh
Register_Object dbGrpYear
Register_Object Ekdoths
Register_Object FormSub1
Register_Object FormSub2
Register_Object FormSub3
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Payresp_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use btypkin.dd
    use barticl.dd
    use bmove.dd
    use v036.vw
    open codemast
    open branch
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Txtbox.Sub
    Use cSyDateForm.Pkg
    Use Cmbfrm.Sub
    Use dbForm.Sub
    Use Button.Sub
    Use dbGrid.Sub
    Use Form.Sub
    Use dbGroup.Sub

    Use BAXIOKAT.DD
    Use BAXIO.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use AREAS.DD
    Use PAYRESP.DD
    Use CLIENTS.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Axioexofl FOR Axioexofl

    Object Axioexofl is a dbViewSubS

        //AB-StoreTopStart
        property integer    piTxtID        public 0

        Property String     psEkdoths      Public ''
        Property String     psApodekths    Public ''
        property string     psbtypkinrecr  public ''

        Function fiMasKanei Returns Integer
            Integer rVal
                    If (baxio.baxiokat_code = 201) Move 1 to rVal
            else    If (baxio.baxiokat_code = 206) Move 1 to rVal
            Else    Move 0 to rval
            Function_Return rVal
        End_Function



        Object Clients_DD2 is a Clients_DataDictionary
        End_Object

        Object Baxiokat_DD2 is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Baxio_DD2 is a Baxio_DataDictionary

            Set DDO_Server to (Baxiokat_DD2(self))

            Begin_Constraints
                Date    dApo dEos darxh dlhxh
                String  sStatus sCodeStatus sApodekths sEkdoths splace splacestatus
                Get Value Of cSyDateForm1   Item 0  to dApo
                Get Value Of cSyDateForm2   Item 0  to dEos
                Get Value Of Datearxh       Item 0  to darxh
                Get Value Of Datelhxh       Item 0  to dlhxh

                Get Value Of ComboFormSub1  Item 0  to sStatus
                Get Value Of ComboFormSub2  Item 0  to sPlace
                Get psApodekths                     to sApodekths
                Get psEkdoths                       to sEkdoths

                If (dApo='') Move '01/01/1980'      to dApo
                If (dEos='') Move '31/12/2100'      to dEos

                Move (Trim(sStatus))                to sStatus
                Move (Trim(sPlace))                 to sPlace
                Move (Trim(sApodekths))             to sApodekths
                Move (Trim(sEkdoths))               to sEkdoths

                If (sStatus<>'') ;
                    Move (Left(sStatus,1))          to sCodeStatus
                Else Move ''                        to sCodeStatus
                If (sPlace<>'') ;
                    Move (Left(sPlace,1))           to sPlaceStatus
                Else Move ''                        to sPlacestatus
                constrain baxio.company_code eq syscurxr.company_code
                constrain baxio.branch_code  eq syscurxr.branch_code
                constrain baxio.year_year    eq syscurxr.year_year
                if (splacestatus eq '2');
                    Constrain baxio as (fimaskanei(Self)=1)
                Constrain Baxio.Baxio_HmniaL Between dApo And dEos
                if (darxh<>'')        Constrain baxio.baxio_hmniae   ge darxh
                if (dlhxh<>'')        Constrain baxio.baxio_hmniae   le dlhxh
                If (sPlacestatus<>'') Constrain baxio.baxio_place    Eq sPlacestatus
                If (sCodeStatus<>'')  Constrain Baxio.Baxio_Status   Eq sCodeStatus
                If (sApodekths <>'')  Constrain Baxio.Baxio_Code_Out Eq sApodekths
                If (sEkdoths   <>'')  Constrain Baxio.Baxio_Code_In  Eq sEkdoths
            End_Constraints
        End_Object

        Object Baxiokat_DD3 is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Baxio_DD3 is a Baxio_DataDictionary
            Set DDO_Server to (Baxiokat_DD3(self))
            Set Field_Options Field Baxio.Baxio_Status      To DD_Clear_Field_Options DD_DISPLAYONLY
        End_Object

        Object Baxiokat_DD4 is a Baxiokat_DataDictionary
        End_Object    // Baxiokat_DD

        Object Baxio_DD4 is a Baxio_DataDictionary
            Set DDO_Server to (Baxiokat_DD4(self))
        end_object

        Object Btypkin_DD4 is a Btypkin_DataDictionary
        end_object

        Object Barticl_DD4 is a Barticl_DataDictionary
             Set DDO_Server to (Btypkin_DD4(self))
        end_object

        Object Bmove_DD4 is a Bmove_DataDictionary
             Set DDO_Server to (Barticl_DD4(self))
             Set DDO_Server to (Baxio_DD4(self))
             Set Constrain_File to Barticl.File_Number
        end_object


        //AB-StoreTopEnd

        Set Label to "Ä¢¢òö„ °ò´·©´ò©û™ Ä•†¶ö®·≠‡§"
        Set Size to 292 519
        Set Location to 1 6

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
                Date    dApo dEos darxh dlhxh
                String  sStatus sCodeStatus sApodekths sEkdoths sPlace sPlacestatus
                Get Value Of cSyDateForm1   Item 0  to dApo
                Get Value Of cSyDateForm2   Item 0  to dEos
                Get Value Of ComboFormSub1  Item 0  to sStatus
                Get Value Of ComboFormSub2  Item 0  to sPlace
                Get Value Of Datearxh       Item 0  to darxh
                Get Value Of Datelhxh       Item 0  to dlhxh
                Get psApodekths                     to sApodekths
                Get psEkdoths                       to sEkdoths

                If (dApo='') Move '01/01/1980'      to dApo
                If (dEos='') Move '31/12/2100'      to dEos

                Move (Trim(sStatus))                to sStatus
                Move (Trim(sPlace))                 to sPlace
                Move (Trim(sApodekths))             to sApodekths
                Move (Trim(sEkdoths))               to sEkdoths

                If (sStatus<>'') ;
                    Move (Left(sStatus,1))          to sCodeStatus
                Else Move ''                        to sCodeStatus

                If (sPlace<>'') ;
                    Move (Left(sPlace,1))           to sPlaceStatus
                Else Move ''                        to sPlacestatus
                set ordering to 8
                constrain baxio.company_code eq syscurxr.company_code
                constrain baxio.branch_code  eq syscurxr.branch_code
                constrain baxio.year_year    eq syscurxr.year_year
                if (splacestatus eq '2');
                Constrain baxio as (fimaskanei(Self)=1)

                Constrain Baxio.Baxio_HmniaL Between dApo And dEos
                if (darxh<>'')        Constrain baxio.baxio_hmniae   ge darxh
                if (dlhxh<>'')        Constrain baxio.baxio_hmniae   le dlhxh
                If (sPlacestatus<>'') Constrain baxio.baxio_place    Eq sPlacestatus
                If (sCodeStatus<>'')  Constrain Baxio.Baxio_Status   Eq sCodeStatus
                If (sApodekths <>'')  Constrain Baxio.Baxio_Code_Out Eq sApodekths
                If (sEkdoths   <>'')  Constrain Baxio.Baxio_Code_In  Eq sEkdoths
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
            Set Label to "ä„•û òßÊ"
            Set Location to 34 1
            Set Size to 10 31
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object cSyDateForm1 is a cSyDateForm
            Set Size to 13 65
            Set Location to 32 35
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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
            Set Label to "ä„•û úÈ™"
            Set Location to 49 1
            Set Size to 10 31
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object cSyDateForm2 is a cSyDateForm
            Set Size to 13 65
            Set Location to 48 35
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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
            Set Location to 33 336
            Set Size to 10 22
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object datearxh is a cSyDateForm
            Set Size to 13 63
            Set Location to 31 138
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure Request_Clear
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Delegate Send Request_Clear
            End_Procedure


            //AB-StoreEnd

        End_Object    // datearxh

        Object datelhxh is a cSyDateForm
            Set Size to 13 63
            Set Location to 47 138
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure Request_Clear
                Send Activate to (datelhxh(Self))
                Delegate Send Request_Clear
            End_Procedure

            Procedure Request_Clear_All
                Send Activate to (datelhxh(Self))
                Delegate Send Request_Clear
            End_Procedure



            //AB-StoreEnd

        End_Object    // datelhxh

        Object ComboFormSub1 is a ComboFormSub
            Set Size to 14 87
            Set Location to 32 363
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
            Set Location to 33 204
            Set Size to 10 31
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object Ekdoths is a dbFormSub
            Entry_Item Clients.Client_name
            Set Server to (Clients_DD(self))
            Set Size to 13 85
            Set Location to 32 246
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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
            Set Location to 49 204
            Set Size to 10 40
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object Apodekths is a dbFormSub
            Entry_Item Clients.Client_name
            Set Server to (Clients_DD(self))
            Set Size to 14 83
            Set Location to 47 246
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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

        Object ComboFormSub2 is a ComboFormSub
            Set Size to 14 149
            Set Location to 49 363
            Set Label_Col_Offset to 2

            //AB-StoreStart
            Procedure Combo_Fill_List
                string stype
                move 'BAXIOPLACE' To Stype
                Clear Codemast
                move stype to Codemast.type
                Find Ge codemast by index.1
                While ((Found) and (codemast.type=stype))
                    Send Combo_Add_Item (Trim(Codemast.code)+' - '+ Trim(Codemast.description))
                    Find Gt codemast by index.1
                Loop
            End_procedure

            Procedure Combo_Item_Changed
                Forward Send Combo_Item_Changed
                Send KeyAction to ButtonSub1
            End_procedure




            //AB-StoreEnd

        End_Object    // ComboFormSub2

        Object ButtonSub1 is a ButtonSub
            Set Label to "èú®†Ê®†©ú"
            Set Location to 32 462
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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
            Set Size to 196 509
            Set Location to 64 2
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Baxio.Baxio_hmnial
                Entry_Item Baxio.Baxio_hmniae
                Entry_Item Baxio.Baxio_no
                Entry_Item Baxio.Baxio_banka
                Entry_Item Baxio.Baxio_v2
                Entry_Item Baxio.Baxio_epon_in
                Entry_Item Baxio.Baxio_epon_out
                Entry_Item Baxio.Baxio_status
            End_Row

            Set Form_Width    item 0 to 50
            Set Header_Label  item 0 to "ä„•û"

            Set Form_Width    item 1 to 48
            Set Header_Label  item 1 to "Ü£/§Âò Ñ°õ."

            Set Form_Width    item 2 to 71
            Set Header_Label  item 2 to "Ä®†ü£Ê™"

            Set Form_Width    item 3 to 45
            Set Header_Label  item 3 to "í®·ßúùò"

            Set Form_Width    item 4 to 56
            Set Header_Label  item 4 to "è¶©Ê"

            Set Form_Width    item 5 to 112
            Set Header_Label  item 5 to "Ñ°õÊ´û™"

            Set Form_Width    item 6 to 103
            Set Header_Label  item 6 to "Äß¶õ‚°´û™"

            Set Form_Width    item 7 to 18
            Set Header_Label  item 7 to "ST"


            //AB-StoreStart
            Set Numeric_Mask    Item 4 to 14 2 ' ,*'
            Set Column_Option   Item 0 to Noenter   True
            Set Column_Option   Item 1 to Noenter   True
            Set Column_Option   Item 2 to Noenter   True
            Set Column_Option   Item 3 to Noenter   True
            Set Column_Option   Item 4 to Noenter   True
            Set Column_Option   Item 6 to Noenter   True

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

        Object Textbox1 is a Textbox
            Set Label to "âÂ§û©û"
            Set Location to 262 107
            Set Size to 10 30
            Set TypeFace to "MS Sans Serif"
        End_Object    // Textbox1

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Ü£/§Âò"
            Set Location to 262 5
            Set Size to 10 28
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object FormSub3 is a FormSub
            Set Size to 12 57
            Set Location to 262 37
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_FontWeight Item 0 to 800
            Set Form_Mask Item 0 to "dd/MM/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // FormSub3

        Object FormSub1 is a FormSub
            Set Size to 13 82
            Set Location to 261 140
            Set Label_Col_Offset to 2
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_FontWeight Item 0 to 800
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set Numeric_Mask Item 0 to 14 0
            Set Prompt_Object to (sl031(Current_object))
            procedure onchange
                clear btypkin
                move syscurxr.company_code to btypkin.company_code
                move syscurxr.branch_code  to btypkin.branch_code
                move syscurxr.year_year    to btypkin.year_year
                get value item 0           to btypkin.btypkin_code
                find eq btypkin by index.1
                if (found=1) begin
                    set value of (formsub2(self)) to btypkin.btypkin_descr
                    set psbtypkinrecr             to btypkin.btypkin_recr
                end
                else         set value of (formsub2(self)) to ''
            end_procedure



            //AB-StoreEnd

        End_Object    // FormSub1

        Object FormSub2 is a FormSub
            Set Size to 13 193
            Set Location to 261 228
            Set Label_Col_Offset to 2
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set enabled_state to false
            //AB-StoreEnd

        End_Object    // FormSub2

        Object ButtonSub3 is a ButtonSub
            Set Label to "ButtonSub2"
            Set Bitmap to "aggel.bmp"
            Set Size to 20 23
            Set Location to 257 475
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Set TooltipValue to "ãòù†°„ Ä¢¢òö„ °ò´·©´ò©û™ Ä•†¶ö®·≠‡§ £ú õû£†¶¨®öÂò èò®ò©´ò´†°¶Á"
            Procedure OnClick
                date    ddate
                integer ikin retval iVal iyes iNum
                Number  nPct ncode
                String  sStr sStatus sCodeStatus sStat sStatus2 sCodeStatus2 sLabel sRecr
                String  nrecr
                Set piTxtID                         to (Wait(Self))
                Set Button_State    of (Wait(Self)) to False
                Set BarVisibleState of (Wait(Self)) to '' False
                Send Popup                          to (Wait(Self))
                Get Value Of comboFormSub1  Item 0  to sStatus
                Move (Trim(sStatus))                to sStatus
                If (sStatus<>'') ;
                    Move (Left(sStatus,1))          to sCodeStatus
                get value of (formsub3(self)) to ddate
                get value of (formsub1(self)) to ikin

                If (sCodeStatus<>'') Begin
                    Send Rebuild_Constraints to Baxio_DD2
                    Send Find to Baxio_DD2 First_Record 8
                    While (Found)
                        Get Field_Current_Value Of Baxio_DD2 Field Baxio.Baxio_Status to sStat
                        If (Trim(sStat)=Trim(sCodeStatus)) Add 1 to iNum
                        Send Find to Baxio_DD2 Next_Record 8
                    Loop

                    Append sStr 'Å®‚üû°ò§ ' (String(iNum)) ' Ä•†Êö®ò≠ò ß®¶™ Ä¢¢òö„ °ò´·©´ò©û™.\ná‚¢ú´ú §ò ©¨§úÆÂ©‡ £ú õû£†¶¨®öÂò ßò®ò©´ò´†°¶Á ??'
                    Get YesNo_Box sStr "Ñß†ôúôòÂ‡©û" 0 to iYes
                    If (iYes=MBR_No) Begin
                        Set Enabled_State to True
                        Set label to sLabel
                        If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                        Procedure_Return
                    End
                    else begin
                        if (inum=0) begin
                            send stop_box 'Éú§ ¨ß·®Æ¶¨§ ò•†Êö®ò≠ò ß®¶™ Ä¢¢òö„ °ò´·©´ò©û™' 'ë≠·¢£ò'
                            If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                            procedure_return
                        end
                    end
                    clear branch
                    move syscurxr.company_code to branch.company_code
                    move syscurxr.branch_code  to branch.branch_code
                    find eq branch by index.1
                    If (NOT((dDate>branch.date_locked))) begin
                        send stop_box 'Ü Ü£ú®¶£û§Âò úÂ§ò† é®†©´†°¶ß¶†û£‚§û. Ü Ñ•Ê≠¢û©û ÉÑå ‚ö†§ú' 'ë≠·¢£ò'
                        If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                        procedure_return
                    End
                    if (ddate ne '' and ikin <> 0) begin
                      Send clear to barticl_dd4
                      move (psbtypkinrecr(self)) to btypkin.btypkin_recr
                      send find to btypkin_dd4 eq 2
                      if (not(found)) begin
                         send stop_box 'Ä§Áßò®°´¶™ °‡õ†°Ê™ °Â§û©û™ !!' 'ë≠·¢£ò'
                         If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                         procedure_return
                      end
                      set field_changed_value of barticl_dd4 field barticl.barticl_hmnia to ddate
                      set field_changed_value of barticl_dd4 field barticl.PAE_arithm to '99999999'
                      set field_changed_value of barticl_dd4 field barticl.pae_hmnia to ddate
                      send request_save to barticl_dd4
                      get field_current_value of barticl_dd4 field barticl.barticl_recr to nrecr
                      Send Rebuild_Constraints to Baxio_DD2
                      Send Find to Baxio_DD2 First_Record 1
                      While (Found)
                         Get Field_Current_Value Of Baxio_DD2 Field Baxio.Baxio_Recr     to sRecr
                         Get Field_Current_Value Of Baxio_DD2 Field Baxio.Baxio_code     to ncode
                         send clear to bmove_dd4
                         move srecr to baxio.baxio_recr
                         send find to baxio_dd4 eq 2
                         if (found=1) begin
                            set field_changed_value of bmove_dd4 field bmove.baxio_code  to ncode
                            send request_save to bmove_dd4
                            Send UpdateWait to (piTxtID(Self))  ('Ñ§û£‚®‡©û ßò®ò©´ò´†°¶Á £ú °‡õ†°Ê Ä•†¶ö®·≠¶¨ '+(String(ncode)))
                         end
                      Send Find to Baxio_DD2 Next_Record 1
                      Loop
                      Send Info_Box 'Ü Ä¢¢òö„ °ò´·©´ò©û™ Ä•†¶ö®·≠‡§ ¶¢¶°¢û®Èüû°ú' 'è¢û®¶≠¶®Âò'
                      If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
                      set value of (formsub1(self)) to ''
                      set value of (formsub2(self)) to ''
                      set value of (formsub3(self)) to ''
                      set psfromexofl of (v036(self)) to nrecr
                      send activate_v036
                      Send Request_Cancel
                    end
                    else begin
                      send stop_box 'Äßò®òÂ´û´û û û£/§Âò °ò† °Â§û©û £òù†°„™ Ä¢¢òö„™ °ò´·©´ò©û™  Ä•†¶ö®·≠‡§ !!' 'ë≠·¢£ò'
                    end
                End
                Else Send Info_Box 'Éú§ úß†¢‚•ò´ú Status ß·§‡ õú•†·' 'è¢û®¶≠¶®Âò'
                If (piTxtID(Self)<>0) Send Deactivate to (piTxtID(Self))
            End_Procedure // OnClick
























































            //AB-StoreEnd

        End_Object    // ButtonSub3

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "á‚©û:"
            Set Location to 50 336
            Set Size to 10 22
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub8

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "Ñ°õ.òßÊ"
            Set Location to 33 103
            Set Size to 10 33
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "Ñ°õ.úÈ™"
            Set Location to 48 102
            Set Size to 10 29
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub10

        Object dbGrpYear is a dbGroupSub

            //AB-StoreTopStart
            Open Company
            Open Branch
            Open Year
            Open SysCurXr
            Open Nomisma

            Use Wax.DD
            Use Witemx.DD
            Use Witemxen.DD
            Use Witemxtr.DD
            Use Witemxt.DD
            Use Ptyppar.DD
            Use Itemd.DD
            Use Bmove.DD
            Use Baxio.DD

            Property String     psCurrentCompany    Public ''
            Property String     psCurrentBranch     Public ''
            Property Integer    piCurrentYear       Public  0

            Property String     psChoosenCompany    Public ''
            Property String     psChoosenBranch     Public ''
            Property Integer    piChoosenYear       Public  0

            Property Integer    pidbGrpYearID       Public  0
            Property Integer    picboCompanyID      Public  0
            Property Integer    picboBranchID       Public  0
            Property Integer    picboYearID         Public  0
            Property Integer    pibtnChangeXrID     Public  0

            //Procedure Reset_The_Constraints_After_Changing_Syscurxr
            //    Send Rebuild_Constraints to Wax_DD
            //    Send Rebuild_Constraints to Witemx_DD
            //    Send Rebuild_Constraints to Witemxen_DD
            //    Send Rebuild_Constraints to Witemxtr_DD
            //    Send Rebuild_Constraints to Witemxt_DD
            //    Send Rebuild_Constraints to Ptyppar_DD
            //    Send Rebuild_Constraints to Itemd_DD
            //    Send Rebuild_Constraints to Bmove_DD
            //    Send Rebuild_Constraints to Baxio_DD
            //End_Procedure


            //AB-StoreTopEnd

            Set Size to 26 514
            Set Location to 1 1
            Object otxtCompany is a TextBoxSub
                Set Label to "Ñ´ò†®úÂò"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 11 5
                Set Size to 10 31
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtCompany

            Object cboCompany is a ComboFormSub

                //AB-StoreTopStart

                //AB-StoreTopEnd

                Set Size to 13 141
                Set Location to 9 46
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart

                Procedure Exiting Integer WhereTo Returns Integer
                    Integer rVal iID iYes
                    Forward Get Msg_Exiting WhereTo to rVal
                    If rVal Procedure_Return rVal
                    If ((WhereTo<>picboCompanyID (Self)) And ;
                        (WhereTo<>picboBranchID  (Self)) And ;
                        (WhereTo<>picboYearID    (Self)) And ;
                        (WhereTo<>pibtnChangeXrID(Self))) Begin
                        If ((psChoosenCompany(Self)<>SyscurXr.Company_Code) Or ;
                            (psChoosenBranch (Self)<>SyscurXr.Branch_Code ) Or ;
                            (piChoosenYear   (Self)<>SyscurXr.year_Year   )) Begin
                            Get YesNo_Box 'è®¶©¶Æ„ ! Ä¢¢·•ò´ú ©´¶†ÆúÂò Ñ´ò†®Âò™/ìß¶°ò´./ï®„©û™\nò¢¢· ÉÑå ßò´„©ò´ú ´¶ °¶¨£ßÂ ö†ò ú§ú®ö¶ß¶Âû©û ò¢¢òö„™ Æ®„©û™\ná‚¢ú´ú §ò ú§ú®ö¶ß¶†„©‡ ´È®ò ´û§ ò¢¢òö„ ò¨´„ ?' to iYes
                            If (iYes=MBR_YES) Send KeyAction to (pibtnChangeXrID(Self))
                            Else Send Reset_Combos
                        End
                    End
                    Procedure_return rVal
                End_Procedure

                Procedure Key Integer iKey
                End_Procedure

                Procedure Combo_Fill_List
                    Clear Company
                    Find Gt Company.Recnum
                    While (Found)
                        Send Combo_Add_Item (Trim(Company.Company_Code)+' - '+ Trim(Company.Company_Name))
                        Find Gt Company.Recnum
                    Loop

                    // Find Current Company to display in Combo
                    Clear Company
                    Move (psChoosenCompany(Self))   to Company.Company_Code
                    Find Eq Company By Index.1
                    If (Found)  Set Value Of cboCompany Item 0 to (Trim(Company.Company_Code)+' - '+ Trim(Company.Company_Name))
                    Else        Set Value Of cboCompany Item 0 to ''
                End_procedure

                Procedure Combo_Item_Changed
                    String  sVal
                    Integer iPos
                    Forward Send Combo_Item_Changed
                    Get Value Of cboCompany Item 0  to sVal
                    If (Trim(sVal)='') Begin
                        Clear Company
                        Move (psChoosenCompany(Self))   to Company.Company_Code
                        Find Eq Company By Index.1
                        If (Found)  Set Value Of cboCompany Item 0 to (Trim(Company.Company_Code)+' - '+ Trim(Company.Company_Name))
                        Else        Set Value Of cboCompany Item 0 to ''
                    End
                    Else Begin
                        Move (Pos('-',sVal)-1) to iPos
                        Set psChoosenCompany            to (Trim(Left(sVal,iPos)))
                    End
                    Send Fill_Branch
                End_procedure

                Procedure End_Construct_Object
                    Integer iID
                    Forward Send End_Construct_Object
                    Get Object_ID Of Self   to iID
                    Set picboCompanyID      to iID
                End_Procedure








                //AB-StoreEnd

            End_Object    // cboCompany

            Object otxtBranch is a TextBoxSub
                Set Label to "ìß¶°/£ò :"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 11 195
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // otxtBranch

            Object cboBranch is a ComboFormSub
                Set Size to 13 147
                Set Location to 9 235
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart

                Procedure Exiting Integer WhereTo Returns Integer
                    Integer rVal iID iYes
                    Forward Get Msg_Exiting WhereTo to rVal
                    If rVal Procedure_Return rVal
                    If ((WhereTo<>picboCompanyID (Self)) And ;
                        (WhereTo<>picboBranchID  (Self)) And ;
                        (WhereTo<>picboYearID    (Self)) And ;
                        (WhereTo<>pibtnChangeXrID(Self))) Begin
                        If ((psChoosenCompany(Self)<>SyscurXr.Company_Code) Or ;
                            (psChoosenBranch (Self)<>SyscurXr.Branch_Code ) Or ;
                            (piChoosenYear   (Self)<>SyscurXr.year_Year   )) Begin
                            Get YesNo_Box 'è®¶©¶Æ„ ! Ä¢¢·•ò´ú ©´¶†ÆúÂò Ñ´ò†®Âò™/ìß¶°ò´./ï®„©û™\nò¢¢· ÉÑå ßò´„©ò´ú ´¶ °¶¨£ßÂ ö†ò ú§ú®ö¶ß¶Âû©û ò¢¢òö„™ Æ®„©û™\ná‚¢ú´ú §ò ú§ú®ö¶ß¶†„©‡ ´È®ò ´û§ ò¢¢òö„ ò¨´„ ?' to iYes
                            If (iYes=MBR_YES) Send KeyAction to (pibtnChangeXrID(Self))
                            Else Send Reset_Combos
                        End
                    End
                    Procedure_return rVal
                End_Procedure

                Procedure Key Integer iKey
                End_Procedure

                Procedure Combo_Fill_List
                End_procedure

                Procedure Combo_Item_Changed
                    String  sVal
                    Integer iPos
                    Forward Send Combo_Item_Changed
                    Get Value Of cboBranch Item 0  to sVal
                    If (Trim(sVal)='') Begin
                        Clear Branch
                        Move (psChoosenCompany(Self))   to Branch.Company_Code
                        Move (psChoosenBranch (Self))   to Branch.Branch_Code
                        Find Eq Branch By Index.1
                        If (Found)  Set Value Of cboBranch Item 0 to (Trim(Branch.Branch_Code)+' - '+ Trim(Branch.Branch_Name))
                        Else        Set Value Of cboBranch Item 0 to ''
                    End
                    Else Begin
                        Move (Pos('-',sVal)-1) to iPos
                        Set psChoosenBranch    to (Trim(Left(sVal,iPos)))
                    End
                    Send Fill_Year
                End_procedure

                Procedure End_Construct_Object
                    Integer iID
                    Forward Send End_Construct_Object
                    Get Object_ID Of Self   to iID
                    Set picboBranchID       to iID
                End_Procedure





                //AB-StoreEnd

            End_Object    // cboBranch

            Object otxtYear is a TextBoxSub
                Set Label to "ï®„©û :          "
                Set Auto_Size_State to FALSE
                Set FontSize to 4 0
                Set Location to 11 392
                Set Size to 10 23
                Set FontWeight to 600
                Set Justification_Mode to jMode_Left
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE

                //AB-StoreStart

                Set TextColor to clYellow

                //AB-StoreEnd

            End_Object    // otxtYear

            Object cboYear is a ComboFormSub
                Set Size to 13 54
                Set Location to 9 423
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right

                //AB-StoreStart

                Procedure Exiting Integer WhereTo Returns Integer
                    Integer rVal iID iYes
                    Forward Get Msg_Exiting WhereTo to rVal
                    If rVal Procedure_Return rVal
                    If ((WhereTo<>picboCompanyID (Self)) And ;
                        (WhereTo<>picboBranchID  (Self)) And ;
                        (WhereTo<>picboYearID    (Self)) And ;
                        (WhereTo<>pibtnChangeXrID(Self))) Begin
                        If ((psChoosenCompany(Self)<>SyscurXr.Company_Code) Or ;
                            (psChoosenBranch (Self)<>SyscurXr.Branch_Code ) Or ;
                            (piChoosenYear   (Self)<>SyscurXr.year_Year   )) Begin
                            Get YesNo_Box 'è®¶©¶Æ„ ! Ä¢¢·•ò´ú ©´¶†ÆúÂò Ñ´ò†®Âò™/ìß¶°ò´./ï®„©û™\nò¢¢· ÉÑå ßò´„©ò´ú ´¶ °¶¨£ßÂ ö†ò ú§ú®ö¶ß¶Âû©û ò¢¢òö„™ Æ®„©û™\ná‚¢ú´ú §ò ú§ú®ö¶ß¶†„©‡ ´È®ò ´û§ ò¢¢òö„ ò¨´„ ?' to iYes
                            If (iYes=MBR_YES) Send KeyAction to (pibtnChangeXrID(Self))
                            Else Send Reset_Combos
                        End
                    End
                    Procedure_return rVal
                End_Procedure

                Procedure Key Integer iKey
                End_Procedure

                Procedure Combo_Fill_List
                End_procedure

                Procedure Combo_Item_Changed
                    Integer iVal
                    Forward Send Combo_Item_Changed
                    Get Value Of cboYear Item 0 to iVal
                    Set piChoosenYear           to iVal
                End_procedure

                Procedure End_Construct_Object
                    Integer iID
                    Forward Send End_Construct_Object
                    Get Object_ID Of Self   to iID
                    Set picboYearID         to iID
                End_Procedure




                //AB-StoreEnd

            End_Object    // cboYear

            Object btnChangeXr is a ButtonSub
                Set Bitmap to "Convert2.bmp"
                Set Size to 20 23
                Set Location to 5 487
                Set Border_Style to Border_Normal
                Set Focus_Mode to Pointer_Only
                Set Form_TypeFace Item 0 to "MS Sans Serif"

                //AB-StoreStart

                Set TooltipValue to 'Ñß†ôúôòÂ‡©û ò¢¢òö„™ ©´¶†ÆúÂ‡§ Æ®„©û™'

                Procedure OnClick
                    String  sOld sNew
                    Integer iYes
                    Append sOld 'Ä¢¢òö„ òß¶ -> ' (Trim(SyscurXr.Company_Name)) ' - ' (Trim(SyscurXr.Branch_Name)) ' - ' (String(SyscurXr.Year_Year)) '\n'
                    Append sNew '        ©ú -> ' (Trim(Value(cboCompany(Self),0))) ' - ' (Trim(Value(cboBranch(Self),0))) ' - ' (Trim(String(Value(cboYear(Self),0)))) ' ?'
                    Get YesNo_Box (sOld+sNew) to iYes
                    If (iYes=MBR_NO) Begin
                        Send Reset_Combos
                        Procedure_Return
                    End


                    Send Reset_All_Files_Except_System

                    // Verify that choosen company+branch+year
                    // is a valid record and existing record
                    Clear Year
                    Move (psChoosenCompany(Self)) to Year.Company_Code
                    Move (psChoosenBranch (Self)) to Year.Branch_Code
                    Move (piChoosenYear   (Self)) to Year.Year_Year
                    Find Eq Year By Index.1
                    If (Not(Found)) Begin
                        Send Stop_Box 'Ä§Áßò®°´û úß†¢¶ö„ Ñ´ò†®Âò™/ìß¶°ò´ò©´„£ò´¶™/ï®„©û™' 'ë≠·¢£ò 8000'
                        Send Reset_Combos
                        Procedure_Return
                    End
                    // First Close All the Views and Check if
                    // function returns 0 = all views closed OK
                    //                  1 = Not ok

                    If (Close_All_Views(Self,False)=1) Begin
                        Send Reset_Combos
                        Procedure_Return
                    End
                    // Change Current Xrhsh
                    Send Change_Current_Xrhsh
                End_Procedure // OnClick

                Procedure Change_Current_Xrhsh
                    Integer iRetVal00 iBreak00 iID
                    String  ldcheck00 lsYearRecr00 lsSite00 sCname00 sBname00
                    String  sYname00 sNom100 sNom200 sNom300 sCode00
                    Date    ldYearXrhsh_From00 ldYearXrhsh_To00

                    // Exoume Current Year record apo ton elegxo sthn onclick
                    // tou button allaghs xrhshs mesa sto combo group.
                    // energopoioume kai tous mpampades.
                    Relate Year
                    //
                    Move Company.Company_Code   to gs_Selected_Company_Code
                    Move Company.Company_Name   to sCname00

                    Move Branch.Branch_Code     to gs_Selected_Branch_Code
                    Move Branch.Beto_Site       to gs_Selected_Beto_Site
                    Move Branch.Branch_Site     to lsSite00
                    Move Branch.Branch_name     to sBname00

                    Move Year.Year_Year         to gi_Selected_Year
                    Move Year.Year_Recr         to lsYearRecr00
                    Move Year.Year_C_Code0      to sNom100
                    Move Year.Year_C_Code00     to sNom200
                    Move Year.Year_C_CodeR      to sNom300
                    Move Year.Year_Descr        to sYname00

                    Move Year.Year_Xrhshfrom    to ldYearXrhsh_From00
                    Move Year.Year_XrhshTo      to ldYearXrhsh_To00

                    Move 0 to iBreak00
                    Clear Nomisma
                    Find Gt Nomisma.Recnum
                    While ((Found=1) And (iBreak00=0))
                        If (Nomisma.Einai_Euro='1') Begin
                            Move 1 to iBreak00
                            Move Nomisma.Nomisma_Code to sCode00
                        End
                        If (Not(iBreak00)) Find Gt Nomisma.Recnum
                    Loop
                    Move (Trim(sCode00)) to sCode00

                    Reread SysCurXR
                    Move gs_Selected_Company_Code   to SysCurXR.Company_Code
                    Move sCname00                   to SysCurXR.Company_Name
                    Move gs_Selected_beto_site      to SysCurXR.beto_site
                    Move gs_Selected_Branch_Code    to SysCurXR.Branch_Code
                    Move lsSite00                   to SysCurXR.Branch_Site
                    Move sBname00                   to SysCurXR.Branch_Name
                    Move gi_Selected_Year           to SysCurXR.Year_Year
                    Move lsYearRecr00               to SysCurXR.Year_Recr
                    Move sYname00                   to SysCurXR.Year_Descr
                    Move ldYearXrhsh_From00         to SysCurXr.Year_XrhshFrom
                    Move ldYearXrhsh_To00           to SysCurXr.Year_XrhshTo
                    Move  (Trim(sNom100))           to SysCurXR.C_Code0
                    Move  (Trim(sNom200))           to SysCurXR.C_Code00
                    Move  (Trim(sNom300))           to SysCurXR.C_CodeR
                    Move sCode00                    to SysCurXR.Euro_Code

                    Saverecord SysCurXR
                    Unlock

                    If (Syscurxr_DD(Self)<>0) Send Find_By_Recnum to Syscurxr_DD Syscurxr.File_Number Syscurxr.Recnum

                    Move lsYearRecr00               to gs_Selected_Year_Recr
                    Send Reset_Combos

                    //Send Reset_The_Constraints_After_Changing_Syscurxr

                    // Ta pidbViewID kai psdbViewName einai nea property
                    // apo thn klash dbViewSubS kai kratane to ID tou view
                    // kai to onoma tou.
                    Send Activate_View Of (pidbViewID(Self))
                    Send Reset_Combos
                End_Procedure

                Procedure End_Construct_Object
                    Integer iID
                    Forward Send End_Construct_Object
                    Get Object_ID Of Self   to iID
                    Set pibtnChangeXrID     to iID
                End_Procedure




















                //AB-StoreEnd

            End_Object    // btnChangeXr


            //AB-StoreStart


            Procedure Reset_Combos
                Set psCurrentCompany    to SysCurXr.Company_Code
                Set psCurrentBranch     to SysCurXr.Branch_Code
                Set piCurrentYear       to SysCurXr.Year_Year
                Set psChoosenCompany    to SysCurXr.Company_Code
                Set psChoosenBranch     to SysCurXr.Branch_Code
                Set piChoosenYear       to SysCurXr.Year_Year
                Send Combo_Item_Changed to cboCompany
            End_Procedure

            Procedure Activating
                Forward Send Activating
                Send Reset_Combos
            End_Procedure

            Procedure Fill_Branch
                Send Combo_Delete_Data to cboBranch
                Clear Branch
                Move (psChoosenCompany(Self)) to Branch.Company_Code
                Find Gt Branch By Index.1
                While ((Found=1) And (Branch.Company_Code=(psChoosenCompany(Self))))
                    Send Combo_Add_Item to cboBranch (Trim(Branch.Branch_Code)+' - '+ Trim(Branch.Branch_Name))
                    Find Gt Branch By Index.1
                Loop

                // Find Current Branch to display in Combo
                Clear Branch
                Move (psChoosenCompany(Self))   to Branch.Company_Code
                Move (psChoosenBranch (Self))   to Branch.Branch_Code
                Find Eq Branch By Index.1
                If (Found)  Set Value Of cboBranch Item 0 to (Trim(Branch.Branch_Code)+' - '+ Trim(Branch.Branch_Name))
                Else        Set Value Of cboBranch Item 0 to ''
                Send Fill_Year
            End_Procedure

            Procedure Fill_Year
                Send Combo_Delete_Data to cboYear
                Clear Year
                Move (psChoosenCompany(Self))   to Year.Company_Code
                Move (psChoosenBranch (Self))   to Year.Branch_Code
                Find Gt Year By Index.1
                While ((Found=1) And (Year.Company_Code=(psChoosenCompany(Self))) And (Year.Branch_Code=(psChoosenBranch(Self))))
                    Send Combo_Add_Item to cboYear (Trim(String(Year.Year_Year)))
                    Find Gt Year By Index.1
                Loop

                // Find Current Year to display in Combo
                Clear Year
                Move (psChoosenCompany(Self))   to Year.Company_Code
                Move (psChoosenBranch (Self))   to Year.Branch_Code
                Move (piChoosenYear   (Self))   to Year.Year_Year
                Find Eq Year By Index.1
                If (Found=1)    Set Value Of cboYear Item 0 to (Trim(String(Year.Year_Year)))
                Else            Set Value Of cboYear Item 0 to ''
            End_Procedure

            Procedure End_Construct_Object
                Integer iID
                Forward Send End_Construct_Object
                Get Object_ID Of Self   to iID
                Set pidbGrpYearID       to iID
            End_Procedure












            //AB-StoreEnd

        End_Object    // dbGrpYear


        //AB-StoreStart

        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation

        Procedure Activate_View Returns Integer
            Integer rVal iCboID iNum iBboId inum1
            String  sVal svalue
            Forward Get Msg_Activate_View to rVal
            Move (ComboFormSub1(Self)) to iCboID
            Move (ComboFormSub2(Self)) to iBboID
            Move "1 - Ñ°°®ú£‚™" to sVal
            Move "1 - ë´¶ ïò®´¶≠¨¢·°†¶" to svalue
            Get Combo_Item_Matching Of iCboID sVal to iNum
            Get Combo_Item_Matching Of iBboID sVal to iNum1
                If (iNum>=0) Begin
                    Set Combo_Current_Item Of iCboID to iNum
                    Set Value Of iCboID Item 0 to sVal
                End
                Else Begin
                    Set Value Of iCboID Item 0 to sVal
                End

                If (iNum1>=0) Begin
                    Set Combo_Current_Item Of iBboID to iNum1
                    Set Value Of iBboID Item 0 to sValue
                End
                Else Begin
                    Set Value Of iBboID Item 0 to sValue
                End
                Send Combo_Item_Changed to iCboID
                Send Combo_Item_Changed to iBboID
                Send KeyAction to ButtonSub1
            Procedure_Return rVal
        End_Procedure

        Procedure Request_Clear
            Forward Send Request_Clear
            Send Clear to Clients_DD2
            Send Clear to Clients_DD
            Set Value Of cSyDateForm1   Item 0  to ''
            Set Value Of cSyDateForm2   Item 0  to ''
            Set Value Of Datearxh       Item 0  to ''
            Set Value Of Datelhxh       Item 0  to ''
            Set psApodekths                     to ''
            Set psEkdoths                       to ''
            Send KeyAction to ButtonSub1
        End_Procedure

        Procedure Request_Clear_All
            Send Request_Clear
        End_Procedure




































        //AB-StoreEnd

    End_Object    // Axioexofl


    //AB-StoreStart




    //AB-StoreEnd

//AB/     End_Object    // prj
