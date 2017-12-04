//AB/ Project COPEN
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "COPEN"
//AB/         Set ProjectFileName to "Copen.vw"

// Project Object Structure
//   Copen is a dbViewSub
//     Ctypkin_DD2 is a Ctypkin_DataDictionary
//     Country_DD2 is a Country_DataDictionary
//     Towns_DD2 is a Towns_DataDictionary
//     Cities_DD2 is a Cities_DataDictionary
//     Payresp_DD2 is a Payresp_DataDictionary
//     Areas_DD2 is a Areas_DataDictionary
//     Clients_DD2 is a Clients_DataDictionary
//     Cmoves_DD2 is a Cmoves_DataDictionary
//     Cmovesa_DD2 is a Cmovesa_DataDictionary
//     Copen_DD2 is a Copen_DataDictionary
//     Ctypkin_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cmoves_DD is a DataDictionary
//     Cmovesa_DD is a DataDictionary
//     Copen_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Clients_Clients_Code is a dbFormSub
//     Clients_Clients_Descr is a dbFormSub
//     frmHmApo is a cSyDateForm
//     frmHmEos is a cSyDateForm
//     btnPeriorise is a ButtonSub
//     dbTabDialogSub1 is a dbTabDialogSub
//       dbTabPage1 is a dbTabPage
//         TextBoxSub8 is a TextBoxSub
//         Cmoves_Cmoves_Hmnia is a dbFormSub
//         Cmoves_Cmoves_Par is a dbFormSub
//         Cmoves_Cmoves_Axia is a dbFormSub
//         Cmoves_Cmoves_X0 is a dbFormSub
//         Cmoves_Cmoves_P0 is a dbFormSub
//         TextBoxSub18 is a TextBoxSub
//         TextBoxSub19 is a TextBoxSub
//         TextBoxSub20 is a TextBoxSub
//         TextBoxSub21 is a TextBoxSub
//         TextBoxSub22 is a TextBoxSub
//         Cmoves_Axia_Pros_Sysx is a dbFormSub
//         Cmoves_Axia_Sysxet is a dbFormSub
//         Cmoves_Axia_Ypol_Sysx is a dbFormSub
//         TextBoxSub23 is a TextBoxSub
//         TextBoxSub24 is a TextBoxSub
//         TextBoxSub25 is a TextBoxSub
//         dbGridSub6 is a dbGridSub
//         Cmoves_Cmoves_Recr is a dbFormSub
//         Cmovesa_Cmoves_Recr is a dbFormSub
//         btnKleisimo is a ButtonSub
//         frmIsClosed is a FormSub
//     TextBoxSub13 is a TextBoxSub
//     TextBoxSub16 is a TextBoxSub
//     TextBoxSub17 is a TextBoxSub
//     dbContYear is a dbContainer3dSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       Syscurxr_Company_Name is a dbFormSub
//       Syscurxr_Branch_Name is a dbFormSub
//       Syscurxr_Year_Year is a dbFormSub

// Register all objects
Register_Object Areas_DD
Register_Object Areas_DD2
Register_Object btnKleisimo
Register_Object btnPeriorise
Register_Object Cities_DD
Register_Object Cities_DD2
Register_Object Clients_Clients_Code
Register_Object Clients_Clients_Descr
Register_Object Clients_DD
Register_Object Clients_DD2
Register_Object Cmoves_Axia_Pros_Sysx
Register_Object Cmoves_Axia_Sysxet
Register_Object Cmoves_Axia_Ypol_Sysx
Register_Object Cmoves_Cmoves_Axia
Register_Object Cmoves_Cmoves_Hmnia
Register_Object Cmoves_Cmoves_P0
Register_Object Cmoves_Cmoves_Par
Register_Object Cmoves_Cmoves_Recr
Register_Object Cmoves_Cmoves_X0
Register_Object Cmoves_DD
Register_Object Cmoves_DD2
Register_Object Cmovesa_Cmoves_Recr
Register_Object Cmovesa_DD
Register_Object Cmovesa_DD2
Register_Object Copen
Register_Object Copen_DD
Register_Object Copen_DD2
Register_Object Country_DD
Register_Object Country_DD2
Register_Object Ctypkin_DD
Register_Object Ctypkin_DD2
Register_Object dbContYear
Register_Object dbGridSub6
Register_Object dbTabDialogSub1
Register_Object dbTabPage1
Register_Object frmHmApo
Register_Object frmHmEos
Register_Object frmIsClosed
Register_Object Payresp_DD
Register_Object Payresp_DD2
Register_Object Syscurxr_Branch_Name
Register_Object Syscurxr_Company_Name
Register_Object Syscurxr_DD
Register_Object Syscurxr_Year_Year
Register_Object TextBoxSub13
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object Towns_DD
Register_Object Towns_DD2


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    Open Ctypkin
    Open Clients
    Use bp2ndCop.dg

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use cSyDateForm.Pkg
    Use Button.Sub
    Use dbTabdlg.Sub
    Use Txtbox.Sub
    Use dbGrid.Sub
    Use Form.Sub
    Use dbCont3.Sub

    Use CTYPKIN.DD
    Use COUNTRY.DD
    Use TOWNS.DD
    Use CITIES.DD
    Use PAYRESP.DD
    Use AREAS.DD
    Use CLIENTS.DD
    Use CMOVES.DD
    Use CMOVESA.DD
    Use COPEN.DD
    Use SYSCURXR.DD

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Copen FOR Copen

    Object Copen is a dbViewSub

        //AB-StoreTopStart
        Property String psModule    Public ''

        On_Key Key_Alt+Key_O Send OpenMe

        Use sl006a1.sl

        Property String psClientID  Public ''
        Property date pdApo         Public ''
        Property date pdEos         Public ''

        Property Integer piXr_or_Pi Public  0

        Object Ctypkin_DD2 is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD2

        Object Country_DD2 is a Country_DataDictionary
        End_Object    // Country_DD2

        Object Towns_DD2 is a Towns_DataDictionary
            Set DDO_Server to (Country_DD2(self))
        End_Object    // Towns_DD2

        Object Cities_DD2 is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD2(self))
        End_Object    // Cities_DD2

        Object Payresp_DD2 is a Payresp_DataDictionary
        End_Object    // Payresp_DD2

        Object Areas_DD2 is a Areas_DataDictionary
        End_Object    // Areas_DD2

        Object Clients_DD2 is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD2(self))
            Set DDO_Server to (Payresp_DD2(self))
            Set DDO_Server to (Areas_DD2(self))
        End_Object    // Clients_DD2

        Object Cmoves_DD2 is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD2(self))
            Set DDO_Server to (Clients_DD2(self))
        End_Object    // Cmoves_DD2

        Object Cmovesa_DD2 is a Cmovesa_DataDictionary
            Set DDO_Server to (Ctypkin_DD2(self))
            Set DDO_Server to (Clients_DD2(self))
        End_Object    // Cmovesa_DD2

        Object Copen_DD2 is a Copen_DataDictionary
            Set DDO_Server to (Cmoves_DD2(self))
            Set DDO_Server to (Cmovesa_DD2(self))
        End_Object    // Copen_DD2



        //AB-StoreTopEnd

        Set Label to "�����娠�� Open Items"
        Set Size to 286 526
        Set Location to 2 3

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary

            //AB-StoreStart

            Set Read_Only_State to True

            //AB-StoreEnd

        End_Object    // Ctypkin_DD

        Object Country_DD is a Country_DataDictionary

            //AB-StoreStart

            Set Read_Only_State to True



            //AB-StoreEnd

        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))

            //AB-StoreStart

            Set Read_Only_State to True



            //AB-StoreEnd

        End_Object    // Towns_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))

            //AB-StoreStart

            Set Read_Only_State to True



            //AB-StoreEnd

        End_Object    // Cities_DD

        Object Payresp_DD is a Payresp_DataDictionary

            //AB-StoreStart

            Set Read_Only_State to True



            //AB-StoreEnd

        End_Object    // Payresp_DD

        Object Areas_DD is a Areas_DataDictionary

            //AB-StoreStart

            Set Read_Only_State to True



            //AB-StoreEnd

        End_Object    // Areas_DD

        Object Clients_DD is a Clients_DataDictionary
            Set DDO_Server to (Cities_DD(self))
            Set DDO_Server to (Payresp_DD(self))
            Set DDO_Server to (Areas_DD(self))

            //AB-StoreStart

            Set Read_Only_State to True



            //AB-StoreEnd

        End_Object    // Clients_DD

        Object Cmoves_DD is a Cmoves_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Clients_DD(self))
            Set Constrain_File to Clients.File_Number

            //AB-StoreStart

            Set piFromBP        to 1


            //Set Read_Only_State to True

            //Begin_Constraints
                //If (pdApo   (Self)<>'') Constrain Cmoves.Cmoves_Hmnia   Ge (pdApo   (Self))
                //If (pdEos   (Self)<>'') Constrain Cmoves.Cmoves_Hmnia   Le (pdEos   (Self))
                //If (psModule(Self)<>'') Constrain Cmoves.Module_From    Eq (psModule(Self))
                //Constrain Cmoves.Flag_Ypol Eq 1
            //End_Constraints

            //Procedure Request_Save
            //End_procedure

            //Procedure Request_Delete
            //End_Procedure
























            //AB-StoreEnd

        End_Object    // Cmoves_DD

        Object Cmovesa_DD is a Cmovesa_DataDictionary

            //AB-StoreStart

            Begin_Constraints
                Constrain Cmovesa.Client_ID Eq (psClientID(Self))
            //    If (psModule(Self)<>'') Constrain Cmovesa.Module_From Eq (psModule(Self))
            //    If        (piXr_or_Pi(Copen(Self))=1) Constrain Cmovesa.Flag_Copen Eq 2
            //    Else If   (piXr_or_Pi(Copen(Self))=2) Constrain Cmovesa.Flag_Copen Eq 1
            //    Else                                Constrain Cmovesa.Flag_Copen Eq 99
            //    // Ayto gia na kopsei ola ta records pou exoun flag_copen <> 1 kai 2
            End_Constraints

























            //AB-StoreEnd

        End_Object    // Cmovesa_DD

        Object Copen_DD is a Copen_DataDictionary
            Set DDO_Server to (Cmoves_DD(self))
            Set DDO_Server to (Cmovesa_DD(self))
            Set Constrain_File to Cmoves.File_Number

            //AB-StoreStart




            //AB-StoreEnd

        End_Object    // Copen_DD

        Object Syscurxr_DD is a Syscurxr_DataDictionary
        End_Object    // Syscurxr_DD

        Set Main_DD to (Clients_DD(self))
        Set Server to (Clients_DD(self))

        //AB-DDOEnd

        Object Clients_Clients_Code is a dbFormSub
            Entry_Item Clients.Client_id
            Set Size to 13 138
            Set Location to 30 50
            Set Label_Col_Offset to 85
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart

            Procedure Exiting Integer WhereTo returns integer
                Integer Ret_Val
                forward get msg_exiting whereTo to Ret_Val
                If Ret_Val Procedure_Return Ret_Val
                Send KeyAction to btnPeriorise
                Procedure_Return Ret_Val
            End_procedure

            Procedure Prompt
                Forward Send Prompt
                Send KeyAction to btnPeriorise
            End_Procedure






            //AB-StoreEnd

        End_Object    // Clients_Clients_Code

        Object Clients_Clients_Descr is a dbFormSub
            Entry_Item Clients.Client_name
            Set Size to 13 242
            Set Location to 30 194
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Clients_Clients_Descr

        Object frmHmApo is a cSyDateForm
            Set Size to 13 66
            Set Location to 46 50
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart

            Procedure Exiting Integer WhereTo returns integer
                Integer Ret_Val
                forward get msg_exiting whereTo to Ret_Val
                If Ret_Val Procedure_Return Ret_Val
                Send KeyAction to btnPeriorise
                Procedure_Return Ret_Val
            End_procedure

            //AB-StoreEnd

        End_Object    // frmHmApo

        Object frmHmEos is a cSyDateForm
            Set Size to 13 66
            Set Location to 46 194
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Mask Item 0 to "dd/MM/yyyy"

            //AB-StoreStart

            Procedure Exiting Integer WhereTo returns integer
                Integer Ret_Val
                forward get msg_exiting whereTo to Ret_Val
                If Ret_Val Procedure_Return Ret_Val
                Send KeyAction to btnPeriorise
                Procedure_Return Ret_Val
            End_procedure

            //AB-StoreEnd

        End_Object    // frmHmEos

        Object btnPeriorise is a ButtonSub
            Set Label to "����樠�� ���㩜�� �ᩞ ����������"
            Set Size to 14 145
            Set Location to 46 292
            Set Focus_Mode to Pointer_Only

            //AB-StoreStart

            Procedure OnClick
                Date dApo dEos
                String sClientID
                Get Field_Current_Value of Clients_DD ;
                    Field Clients.Client_ID     to sClientID
                Get Value Of frmHmApo Item 0    to dApo
                Get Value Of frmHmEos Item 0    to dEos
                Set psClientID                  to (Trim(sClientID))
                Set pdApo to dApo
                Set pdEos to dEos
                Send Rebuild_Constraints to Cmoves_DD
                Send Rebuild_Constraints to CmovesA_DD
                Send Rebuild_Constraints to Copen_DD
                Send Beginning_Of_Data To (dbGridSub6(dbTabPage1(dbTabDialogSub1(Self)))) True
            End_Procedure // OnClick











            //AB-StoreEnd

        End_Object    // btnPeriorise

        Object dbTabDialogSub1 is a dbTabDialogSub
            Set Size to 188 518
            Set Location to 74 2
            Set Buttons_State to TRUE
            Object dbTabPage1 is a dbTabPage
                Set Label to "dbTabPage1"
                Object TextBoxSub8 is a TextBoxSub
                    Set Label to "��������棜��� ���㩜��"
                    Set Location to 65 4
                    Set Size to 10 89
                    Set TypeFace to "MS Sans Serif"
                End_Object    // TextBoxSub8

                Object Cmoves_Cmoves_Hmnia is a dbFormSub
                    Entry_Item Cmoves.Cmoves_hmnia
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 2 50
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right

                    //AB-StoreStart

                    Set Item_Option Item 0 to NoPut true

                    Procedure Set_The_Flag
                        Integer iXP
                        Get Field_Current_Value Of (Cmoves_DD(Copen(Self))) Field Cmoves.Flag_Copen to iXP
                        Set piXr_or_Pi Of (Copen(Self)) to iXP
                        Send Rebuild_Constraints to Cmovesa_DD
                        Send Beginning_Of_Data to dbGridSub6 True
                    End_Procedure

                    Procedure Prompt
                        Integer iXP
                        Set pdApo       Of (sl006(Self)) to (pdApo      (Self))
                        Set pdEos       Of (sl006(Self)) to (pdEos      (Self))
                        Set psClientID  Of (sl006(Self)) to (psClientID (Self))
                        Set psModule    Of (sl006(Self)) to (psModule   (Self))
                        Forward Send Prompt
                        Send Set_The_Flag
                    End_Procedure

                    Procedure Refresh Integer iMode
                        Forward Send Refresh iMode
                        If (Cmoves.Is_Closed='1')   Set Color Of frmIsClosed to clred
                        Else                        Set Color Of frmIsClosed to clLime
                    End_Procedure

                    Procedure Exiting Integer WhereTo Returns Integer
                        Integer ret_val iXP
                        Forward Get Msg_Exiting WhereTo to ret_val
                        If Ret_Val Procedure_Return Ret_Val
                        Send Set_The_Flag
                        Procedure_Return ret_val
                    End_procedure

                    Procedure Find_Next
                        Forward Send Find_Next
                        Send Set_The_Flag
                    End_procedure

                    Procedure Find_Previous
                        Forward Send Find_Previous
                        Send Set_The_Flag
                    End_procedure

                    Procedure Find_GE
                        Forward Send Find_GE
                        Send Set_The_Flag
                    End_procedure







                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Hmnia

                Object Cmoves_Cmoves_Par is a dbFormSub
                    Entry_Item Cmoves.Cmoves_par
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 67
                    Set Location to 2 199
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE
                End_Object    // Cmoves_Cmoves_Par

                Object Cmoves_Cmoves_Axia is a dbFormSub
                    Entry_Item Cmoves.Cmoves_axia
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 21 50
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0       to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure


                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Axia

                Object Cmoves_Cmoves_X0 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_x0
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 21 199
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0       to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure




                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_X0

                Object Cmoves_Cmoves_P0 is a dbFormSub
                    Entry_Item Cmoves.Cmoves_p0
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 21 349
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0 to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure




                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_P0

                Object TextBoxSub18 is a TextBoxSub
                    Set Label to "����/��"
                    Set Location to 2 4
                    Set Size to 13 39
                End_Object    // TextBoxSub18

                Object TextBoxSub19 is a TextBoxSub
                    Set Label to "�����������"
                    Set Location to 2 144
                    Set Size to 13 49
                End_Object    // TextBoxSub19

                Object TextBoxSub20 is a TextBoxSub
                    Set Label to "���"
                    Set Location to 21 4
                    Set Size to 13 18
                End_Object    // TextBoxSub20

                Object TextBoxSub21 is a TextBoxSub
                    Set Label to "���ਫ਼"
                    Set Location to 21 144
                    Set Size to 13 29
                End_Object    // TextBoxSub21

                Object TextBoxSub22 is a TextBoxSub
                    Set Label to "�婫ਫ਼"
                    Set Location to 21 292
                    Set Size to 13 31
                End_Object    // TextBoxSub22

                Object Cmoves_Axia_Pros_Sysx is a dbFormSub
                    Entry_Item Cmoves.Axia_pros_sysx
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 42 50
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0       to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure




                    //AB-StoreEnd

                End_Object    // Cmoves_Axia_Pros_Sysx

                Object Cmoves_Axia_Sysxet is a dbFormSub
                    Entry_Item Cmoves.Axia_sysxet
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 42 199
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0 to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure




                    //AB-StoreEnd

                End_Object    // Cmoves_Axia_Sysxet

                Object Cmoves_Axia_Ypol_Sysx is a dbFormSub
                    Entry_Item Cmoves.Axia_ypol_sysx
                    Set Server to (Cmoves_DD(self))
                    Set Size to 13 69
                    Set Location to 42 349
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos "" to iDecs
                        Set Points          Item 0 to iDecs
                        Set Numeric_Mask    Item 0 to 14 iDecs '*, '
                    End_Procedure




                    //AB-StoreEnd

                End_Object    // Cmoves_Axia_Ypol_Sysx

                Object TextBoxSub23 is a TextBoxSub
                    Set Label to "���� ���� ����⫠��"
                    Set Location to 40 4
                    Set Size to 16 41
                    Set Justification_Mode to jMode_Left
                End_Object    // TextBoxSub23

                Object TextBoxSub24 is a TextBoxSub
                    Set Label to "���� ���������⤦"
                    Set Location to 39 144
                    Set Size to 15 49
                    Set Justification_Mode to jMode_Left
                End_Object    // TextBoxSub24

                Object TextBoxSub25 is a TextBoxSub
                    Set Label to "��梦��� ���� ����⫠��"
                    Set Location to 39 292
                    Set Size to 17 52
                    Set Justification_Mode to jMode_Left
                End_Object    // TextBoxSub25

                Object dbGridSub6 is a dbGridSub

                    //AB-StoreTopStart

                    Function sfXP Returns String
                        If (Cmovesa.Cmoves_X0 <> 0) Function_Return "�"
                        Function_Return "�"
                    End_Function //nfarxiki_axia

                    //AB-StoreTopEnd

                    Set Main_File to Copen.File_Number
                    Set Server to (Copen_DD(self))
                    Set Size to 90 507
                    Set Location to 75 4
                    Set CurrentRowColor to 11468799
                    Set Wrap_State to TRUE

                    Begin_Row
                        Entry_Item Cmovesa.Cmoves_hmnia
                        Entry_Item Cmovesa.Cmoves_par
                        Entry_Item Cmovesa.Ctypkin_code
                        Entry_Item Cmovesa.Ctypkin_descr
                        Entry_Item (sfXP(Self))
                        Entry_Item Cmovesa.Axia_pros_sysx
                        Entry_Item Cmovesa.Axia_sysxet
                        Entry_Item Cmovesa.Axia_ypol_sysx
                        Entry_Item Copen.Copen_axia0
                        Entry_Item Copen.Copen_recr
                    End_Row

                    Set Form_Width    item 0 to 48
                    Set Header_Label  item 0 to "��/��"

                    Set Form_Width    item 1 to 60
                    Set Header_Label  item 1 to "�����/��"

                    Set Form_Width    item 2 to 32
                    Set Header_Label  item 2 to "���"

                    Set Form_Width    item 3 to 58
                    Set Header_Label  item 3 to "�夞��"

                    Set Form_Width    item 4 to 24
                    Set Header_Label  item 4 to "��"

                    Set Form_Width    item 5 to 57
                    Set Header_Label  item 5 to "������"

                    Set Form_Width    item 6 to 61
                    Set Header_Label  item 6 to "��� ������"

                    Set Form_Width    item 7 to 63
                    Set Header_Label  item 7 to "���� ������"

                    Set Form_Width    item 8 to 53
                    Set Header_Label  item 8 to "����"

                    Set Form_Width    item 9 to 47
                    Set Header_Label  item 9 to "Copen recr"


                    //AB-StoreStart

                    Set Column_Option Item 1 to NoEnter True
                    Set Column_Option Item 2 to NoEnter True
                    Set Column_Option Item 3 to NoEnter True
                    Set Column_Option Item 4 to NoEnter True
                    Set Column_Option Item 5 to NoEnter True
                    Set Column_Option Item 6 to NoEnter True
                    Set Column_Option Item 7 to NoEnter True
                    Set Column_Option Item 9 to NoEnter True


                    //Function Row_Save Returns Integer
                    //    Integer iRetval iRecnum iLathos
                    //    String sCopen_Recr sCMoves_Recr sCMovesA_Recr sCtypkin_Recr sMessage
                    //    Begin_Transaction
                    //    Forward Get Row_Save to iRetval
                    //    If (iRetval=0) Begin
                    //        Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Recr      to sCopen_Recr
                    //        Get Field_Current_Value Of CMoves_DD    Field CMoves.CMoves_Recr    to sCMoves_Recr
                    //        Get Field_Current_Value Of Ctypkin_DD   Field Ctypkin.Ctypkin_Recr  to sCtypkin_Recr
                    //        Get Field_Current_Value Of CMoves_DD    Field CMoves.Recnum         to iRecnum
                    //        Get Field_Current_Value Of CMovesA_DD   Field CMovesA.CMoves_Recr   to sCMovesA_Recr
                    //        If ((Trim(sCopen_Recr)<>'') And (Trim(sCmoves_Recr)<>'') And (Trim(sCmovesA_Recr)<>'')) Begin
                    //            Set psCopenRecr     Of bp2ndCop to (Trim(sCopen_Recr))
                    //            Set psCmovesRecr    Of bp2ndCop to (Trim(sCmoves_Recr))
                    //            Set psCmovesARecr   Of bp2ndCop to (Trim(sCmovesA_Recr))
                    //            Set piLathos        Of bp2ndCop to False
                    //            Send DoProcess                  to bp2ndCop
                    //            Get piLathos        Of bp2ndCop to iLathos

                    //            If (iLathos) Begin
                    //                Move '' to sMessage
                    //                Append sMessage '�����婫��� �៦� ���� 2� ������� \n�� ������ �៦�� ' (String(iLathos)) '\n� ��������� ����餜��� ���棘��'
                    //                Send Stop_Box sMessage '��ᢣ� ���� ��� ���������'
                    //                Move 1 to iRetVal
                    //                Abort_Transaction
                    //            End

                    //            Send Clear to Ctypkin_DD
                    //            Send Clear to Cmoves_DD
                    //            Move sCtypkin_Recr to Ctypkin.Ctypkin_Recr
                    //            Send Find to Ctypkin_DD Eq 2
                    //            If (Not(Found)) Begin
                    //                Move 1 to iRetVal
                    //                Abort_Transaction
                    //            End
                    //            Move sCMoves_Recr to CMoves.CMoves_Recr
                    //            Send Find to Cmoves_DD Eq 2
                    //            If (Not(Found)) Begin
                    //                Move 1 to iRetVal
                    //                Abort_Transaction
                    //            End
                    //            Send Rebuild_Constraints to Copen_DD
                    //            Send Beginning_Of_Data to (dbGridSub6(dbTabPage1(dbTabDialogSub1(Self))))
                    //            //Send Find to Copen_DD First_Record 1
                    //        End
                    //        Else Begin
                    //            Send Info_Box 'At least one recr is blank' 'Error 60000 - Copen Grid / Row_Save'
                    //            Move 1 to iRetVal
                    //            Abort_Transaction
                    //        End
                    //    End
                    //    Else Begin
                    //        Move 1 to iRetVal
                    //        Abort_Transaction
                    //    End
                    //    End_Transaction
                    //    Function_Return iRetval
                    //End_Function //Row_Save

                    Procedure Request_Clear_All
                    End_Procedure // Request_Clear_All

                    Procedure Prompt_CallBack Integer hPrompt
                        Set Export_Item_State   Of hPrompt to True
                        Set Export_Column       Of hPrompt to 0
                        Set FragmaClientID      Of hPrompt to (psClientID(Copen(Self)))
                        Set psModule            Of hPrompt to (psModule  (Copen(Self)))
                        Set piXr_Or_Pi          Of hPrompt to (piXr_Or_Pi(Copen(Self)))
                    End_procedure

                    Procedure Prompt
                        String sRecr
                        Forward Send Prompt
                    End_procedure

                    Procedure End_Construct_Object
                        Integer iDecs
                        Forward Send End_Construct_Object
                        Get fiDekadika_Nomismatos ""    to    iDecs
                        Set Points       Item 5         to    iDecs
                        Set Points       Item 6         to    iDecs
                        Set Points       Item 7         to    iDecs
                        Set Points       Item 8         to    iDecs

                        Set Numeric_Mask Item 5         to 14 iDecs '*, '
                        Set Numeric_Mask Item 6         to 14 iDecs '*, '
                        Set Numeric_Mask Item 7         to 14 iDecs '*, '
                        Set Numeric_Mask Item 8         to 14 iDecs '*, '
                    End_Procedure















                    //AB-StoreEnd

                End_Object    // dbGridSub6

                Object Cmoves_Cmoves_Recr is a dbFormSub
                    Entry_Item Cmoves.Cmoves_recr
                    Set Server to (Cmoves_DD(self))
                    Set Label to "CMV Recr:"
                    Set Size to 13 78
                    Set Location to 2 307
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Set Item_Option Item 0 to NoEnter True


                    //AB-StoreEnd

                End_Object    // Cmoves_Cmoves_Recr

                Object Cmovesa_Cmoves_Recr is a dbFormSub
                    Entry_Item Cmovesa.Cmoves_recr
                    Set Server to (Copen_DD(self))
                    Set Label to "CMVA Recr:"
                    Set Size to 13 78
                    Set Location to 2 435
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Label_Justification_Mode to jMode_Right
                    Set Enabled_State to FALSE
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Set Item_Option Item 0 to NoEnter True


                    //AB-StoreEnd

                End_Object    // Cmovesa_Cmoves_Recr

                Object btnKleisimo is a ButtonSub
                    Set Label to "���婠��"
                    Set Bitmap to "open1.bmp"
                    Set Size to 21 23
                    Set Location to 34 440
                    Set Focus_Mode to Pointer_Only
                    Set Form_TypeFace Item 0 to "MS Sans Serif"

                    //AB-StoreStart

                    Set TooltipValue to "������� / ���婠�� ������������. ��������� ��� ���娜�� ������婜�"

                    Procedure OnClick
                        Integer iRetval iRecnum iLathos isClosed iOpenRecnum iCopenRecnum
                        String  sCopen_Recr sCMoves_Recr sCMovesA_Recr sMessage
                        String  sAliasCtypkinRecr sMasterCtypkinRecr sClient_Recr
                        Number nMeion nAxia nXr nPi


                        //Move 0 to iSynoloLathon
                        Send Beginning_Of_Data to dbGridSub6 True
                        Get Field_Current_Value Of Clients_DD   Field Clients.Client_Recr   to sClient_Recr
                        Get Field_Current_Value Of CMoves_DD    Field CMoves.CMoves_Recr    to sCMoves_Recr
                        Get Field_Current_Value Of CMovesA_DD   Field CMovesA.CMoves_Recr   to sCMovesA_Recr
                        Get Field_Current_Value Of CMoves_DD    Field CMoves.Recnum         to iRecnum
                        Get Field_Current_Value Of CMoves_DD    Field Cmoves.Ctypkin_Recr   to sMasterCtypkinRecr
                        Get Field_Current_Value Of CMoves_DD    Field CMoves.Is_Closed      to isClosed
                        If ((Trim(sCmoves_Recr) <>'') And ;
                            (Trim(sClient_Recr) <>'') And ;
                            (Trim(sCmovesA_Recr)<>'') And ;
                            (Trim(sMasterCtypkinRecr)<>'')) Begin

                            Move 0 to nMeion

                            Begin_Transaction

                                Clear Copen
                                Move sCMoves_Recr   to Copen.Cmoves_Recr
                                Move sCopen_Recr    to Copen.Copen_Recr
                                Find GE Copen by Index.4
//                                If (Found) Begin
//                                    Send Find to Copen_DD Eq 4
//                                End


//                                Send Find To Copen_DD First_Record 4 // Copen:Index.4:Cmoves_Recr+Copen_recr
                                While ((Found=1) And ())
                                    Get Field_Current_Value Of Copen_DD     Field Copen.Recnum          to iCopenRecnum
                                    Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Recr      to sCopen_Recr
                                    Get Field_Current_Value Of CMoves_DD    Field CMoves.CMoves_Recr    to sCMoves_Recr
                                    Get Field_Current_Value Of CMovesA_DD   Field CMovesA.CMoves_Recr   to sCMovesA_Recr
                                    Get Field_Current_Value Of CMovesA_DD   Field CmovesA.Ctypkin_Recr  to sAliasCtypkinRecr
                                    Get Field_Current_Value Of Copen_DD     Field Copen.Copen_Axia0     to nMeion
                                    Get Field_Current_Value Of Copen_DD     Field Copen.Copen_X0        to nXr
                                    Get Field_Current_Value Of Copen_DD     Field Copen.Copen_P0        to nPi
                                    If ((Trim(sCMoves_Recr)<>'') And (Trim(sCMovesA_Recr)<>'') And (Trim(sAliasCtypkinRecr)<>'')) Begin
                                        //
                                        If (isClosed=1) Begin
                                            Clear Copen
                                            Move (Trim(sCmovesA_Recr))  to Copen.Cmoves_Recr
                                            Move (Trim(sCmoves_Recr))   to Copen.CmovesA_Recr
                                            Find Eq Copen By Index.5
                                            If (Found) Begin
                                                Move Copen.Recnum to iOpenRecnum
                                                Send Find_By_Recnum to Copen_DD2 Copen.File_Number iOpenRecnum
                                                Set piFromBP Of Copen_DD2 to True
                                                Send Request_Delete to Copen_DD2
                                                Set piFromBP Of Copen_DD2 to False
                                            End

                                            // js 08/02/2002
                                            // Procedural giati mexri na diagrafei h grammh
                                            // to copen me to cmovesa den exei afairesei tis axies
                                            // opote h klash synexizei na to theori xoris ypoloipo
                                            Clear Cmoves
                                            Move sCMoves_Recr to Cmoves.Cmoves_recr
                                            Find Eq Cmoves By Index.2 // Cmoves:Index.2:Cmoves_recr
                                            If (Found) Begin
                                                Move 1 to Cmoves.Flag_Copen
                                                Saverecord Cmoves
                                            End
                                            Send Clear to Cmoves_DD
                                            Move sCMoves_Recr to Cmoves.Cmoves_recr
                                            Send Find to Cmoves_DD Eq 2 // Cmoves:Index.2:Cmoves_recr

                                            Send Clear to Copen_DD
                                            Move sCopen_Recr to Copen.Copen_Recr
                                            Send Find to Copen_DD Eq 2

                                        End
                                        Else If (IsClosed=0) Begin
                                            Move 0                              to iLathos
                                            Set piLathos            Of bp2ndCop to False
                                            Set psCopenRecr         Of bp2ndCop to (Trim(sCopen_Recr))
                                            Set psCmovesRecr        Of bp2ndCop to (Trim(sCmoves_Recr))
                                            Set psCmovesARecr       Of bp2ndCop to (Trim(sCmovesA_Recr))
                                            Set psClientRecr        Of bp2ndCop to (Trim(sClient_Recr))
                                            Set psMasterCtypkinRecr Of bp2ndCop to (Trim(sMasterCtypkinRecr))
                                            Set psAliasCtypkinRecr  Of bp2ndCop to (Trim(sAliasCtypkinRecr))

                                            Set pnAxia              Of bp2ndCop to nMeion
                                            Set pnX0                Of bp2ndCop to nXr
                                            Set pnP0                Of bp2ndCop to nPi

                                            Send DoProcess                      to bp2ndCop
                                            Get piLathos            Of bp2ndCop to iLathos
                                            If (iLathos) Begin
                                                Abort_Transaction
                                                Procedure_Return
                                            End
                                        End
                                    End

                                    Clear Copen
                                    Move sCMoves_Recr   to Copen.Cmoves_Recr
                                    Move sCopen_Recr    to Copen.Copen_Recr
                                    Find Eq Copen by Index.4
                                    If (Found) Begin
                                        Send Find to Copen_DD Eq 4
                                    End

                                    Send Find To Copen_DD Next_Record 4 // Copen:Index.4:Cmoves_Recr+Copen_recr
                                Loop



                                If (IsClosed=0) Begin
                                    Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Is_Closed to '1'
                                    Send Request_Save to Cmoves_DD
                                End
                                Else If (isClosed=1) Begin
                                    Set Field_Changed_Value Of Cmoves_DD Field Cmoves.Is_Closed to ''
                                    Send Request_Save to Cmoves_DD
                                End
                            End_Transaction


                            Get Field_Current_Value Of CMoves_DD    Field CMoves.Is_Closed  to isClosed

                            If (iLathos<>0) Begin
                                     If (iLathos=99888) Send Stop_Box '��ᢣ� ���� ��� ��������� ��������\n�� ���婫���� ���㩜� ����⫠���' '��ᢣ� 99888'
                                Else If (iLathos=99888) Send Stop_Box '��ᢣ� ���� ��� ��������� ��������\n�� ���婫���� ���㩜� ����⫠���' '��ᢣ� 99888'
                                Else                    Send Stop_Box '��ᢣ� �� �����ਞ�⤦' '��ᢣ� 88888'
                            End
                            Else Begin
                                If (isClosed=0)  Begin
                                    Send Info_Box '�� ����������� �夘� �騘 �������.\n�����⧜��� � �������垩� ���' '���������'
                                    Set Color      Of frmIsClosed to clLime
                                    Set Bitmap     Of BtnKleisimo to 'Close1.bmp'
                                End
                                Else If (isClosed=1) Begin
                                    Send Info_Box '�� ����������� ⡢����.\n��� �����⧜��� � �������垩� ���' '���������'
                                    Set Color  Of frmIsClosed to clRed
                                    Set Bitmap Of BtnKleisimo to 'Open1.bmp'
                                End
                            End


                        End
                    End_Procedure // OnClick







                    //AB-StoreEnd

                End_Object    // btnKleisimo

                Object frmIsClosed is a FormSub
                    Set Size to 29 34
                    Set Location to 26 469
                    Set Color to clBtnFace
                    Set Label_Col_Offset to 2
                    Set Enabled_State to FALSE
                    Set Form_TypeFace Item 0 to "MS Sans Serif"
                    Set Item_Shadow_State Item 0 to TRUE
                    Set Shadow_State Item 0 to TRUE

                    //AB-StoreStart

                    Set Shadow_State to True


                    //AB-StoreEnd

                End_Object    // frmIsClosed


                //AB-StoreStart
                Set Label to "������� �����������"
                //AB-StoreEnd

            End_Object    // dbTabPage1


            //AB-StoreStart

            //AB-StoreEnd

        End_Object    // dbTabDialogSub1

        Object TextBoxSub13 is a TextBoxSub
            Set Label to "���☪"
            Set Location to 30 9
            Set Size to 13 31
        End_Object    // TextBoxSub13

        Object TextBoxSub16 is a TextBoxSub
            Set Label to "��� ��/��"
            Set Location to 46 9
            Set Size to 13 38
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub16

        Object TextBoxSub17 is a TextBoxSub
            Set Label to "�� ��/��"
            Set Location to 46 149
            Set Size to 13 39
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub17

        Object dbContYear is a dbContainer3dSub
            Set Border_Style to Border_StaticEdge
            Set Size to 21 518
            Set Location to 2 3
            Object TextBoxSub4 is a TextBoxSub
                Set Label to "������:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 7
                Set Size to 10 30
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub4

            Object TextBoxSub5 is a TextBoxSub
                Set Label to "����/��:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 214
                Set Size to 10 33
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub5

            Object TextBoxSub6 is a TextBoxSub
                Set Label to "��㩞:"
                Set Auto_Size_State to FALSE
                Set TextColor to clNavy
                Set FontSize to 4 0
                Set Location to 6 408
                Set Size to 10 26
                Set FontWeight to 800
                Set Justification_Mode to jMode_Right
                Set TypeFace to "MS Sans Serif"
                Set Enabled_State to TRUE
            End_Object    // TextBoxSub6

            Object Syscurxr_Company_Name is a dbFormSub
                Entry_Item Syscurxr.Company_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 159
                Set Location to 4 47
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Company_Name

            Object Syscurxr_Branch_Name is a dbFormSub
                Entry_Item Syscurxr.Branch_name
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 141
                Set Location to 4 259
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Branch_Name

            Object Syscurxr_Year_Year is a dbFormSub
                Entry_Item Syscurxr.Year_year
                Set Server to (Syscurxr_DD(self))
                Set Size to 13 53
                Set Location to 4 446
                Set Color to clBtnFace
                Set TextColor to clNavy
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
                Set Enabled_State to FALSE
                Set Item_Shadow_State Item 0 to TRUE
                Set Shadow_State Item 0 to TRUE
            End_Object    // Syscurxr_Year_Year

        End_Object    // dbContYear


        //AB-StoreStart

        //***************** Predefined Procedures and Functions Section **************

        Procedure Activate_View Returns Integer
            Integer Rval
            String  sModule
            Forward Get MSG_Activate_View to Rval
            If (Not(Rval)) Begin
                If (Trim(psModule(Self))='') Begin
                    Get psMenuModule Of Main_Menu   to sModule
                    Set psModule                    to sModule
                End
            End
            Procedure_Return rVal
        End_Procedure // Activate_View

        Procedure OpenMe
            Integer isEnabled
            Get Enabled_State Of (Cmoves_Axia_Pros_Sysx(dbTabPage1(dbTabDialogSub1(Self)))) to isEnabled
            Set Enabled_State Of (Cmoves_Axia_Pros_Sysx(dbTabPage1(dbTabDialogSub1(Self)))) to (1-isEnabled)
            Set Enabled_State Of (Cmoves_Axia_Sysxet   (dbTabPage1(dbTabDialogSub1(Self)))) to (1-isEnabled)
            Set Enabled_State Of (Cmoves_Axia_Ypol_Sysx(dbTabPage1(dbTabDialogSub1(Self)))) to (1-isEnabled)
        End_Procedure

        //Set Verify_Exit_Msg To Get_No_Confirmation




        //AB-StoreEnd

    End_Object    // Copen


    //AB-StoreStart





    //AB-StoreEnd

//AB/     End_Object    // prj
