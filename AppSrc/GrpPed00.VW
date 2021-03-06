//AB/ Project GrpPed00
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "GrpPed00"
//AB/         Set ProjectFileName to "GrpPed00.VW"

// Project Object Structure
//   GrpPed00 is a dbView
//     Usergrps_DD is a DataDictionary
//     Arxeia_DD is a DataDictionary
//     Grparx0_DD is a DataDictionary
//     Pedia_DD is a DataDictionary
//     Grpped0_DD is a DataDictionary
//     Usergrps_Grp_Id is a dbFormSub
//     Usergrps_Grp_Name is a dbFormSub
//     The_Table is a dbGrid
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     Grppedia_ is a dbGridSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub

// Register all objects
Register_Object Arxeia_DD
Register_Object Grparx0_DD
Register_Object GrpPed00
Register_Object Grpped0_DD
Register_Object Grppedia_
Register_Object Pedia_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object The_Table
Register_Object Usergrps_DD
Register_Object Usergrps_Grp_Id
Register_Object Usergrps_Grp_Name


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Txtbox.Sub
    Use dbGrid.Sub

    Use USERGRPS.DD
    Use ARXEIA.DD
    Use GRPARX0.DD
    Use PEDIA.DD
    Use GRPPED0.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_GrpPed00 FOR GrpPed00

    Object GrpPed00 is a dbView
        Set Label to "��橙��� �� ����� ��� ����  ��� ��ᛘ ������"
        Set Size to 290 473
        Set Location to 2 28

        //AB-DDOStart

        Object Usergrps_DD is a Usergrps_DataDictionary
        End_Object    // Usergrps_DD

        Object Arxeia_DD is a Arxeia_DataDictionary
        End_Object    // Arxeia_DD

        Object Grparx0_DD is a Grparx0_DataDictionary
            Set DDO_Server to (Usergrps_DD(self))
            Set DDO_Server to (Arxeia_DD(self))
            Set Constrain_File to Usergrps.File_Number
        End_Object    // Grparx0_DD

        Object Pedia_DD is a Pedia_DataDictionary
            Set DDO_Server to (Arxeia_DD(self))
        End_Object    // Pedia_DD

        Object Grpped0_DD is a Grpped0_DataDictionary
            Set DDO_Server to (Grparx0_DD(self))
            Set DDO_Server to (Pedia_DD(self))
            Set Constrain_File to Grparx0.File_Number
        End_Object    // Grpped0_DD

        Set Main_DD to (Usergrps_DD(self))
        Set Server to (Usergrps_DD(self))

        //AB-DDOEnd

        Object Usergrps_Grp_Id is a dbFormSub
            Entry_Item Usergrps.Grp_id
            Set Size to 13 80
            Set Location to 10 67
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"
        End_Object    // Usergrps_Grp_Id

        Object Usergrps_Grp_Name is a dbFormSub
            Entry_Item Usergrps.Grp_name
            Set Size to 13 241
            Set Location to 10 197
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Usergrps_Grp_Name

        Object The_Table is a dbGrid
            Set Main_File to Grparx0.File_Number
            Set Server to (Grparx0_DD(self))
            Set Size to 93 450
            Set Location to 36 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Arxeia.Arxeio_name
                Entry_Item Arxeia.Access_name
                Entry_Item Grparx0.Allow_read
                Entry_Item Grparx0.Allow_change
                Entry_Item Grparx0.Allow_create
                Entry_Item Grparx0.Allow_delete
            End_Row

            Set Form_Width    item 0 to 108
            Set Header_Label  item 0 to "������ ����� ����妬"
            
            Set Form_Width    item 1 to 271
            Set Header_Label  item 1 to "������ ���� �� ��㩫� ��"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "R"
            Set Column_Checkbox_State  item 2 to True
            
            Set Form_Width    item 3 to 16
            Set Header_Label  item 3 to "E"
            Set Column_Checkbox_State  item 3 to True
            
            Set Form_Width    item 4 to 16
            Set Header_Label  item 4 to "C"
            Set Column_Checkbox_State  item 4 to True
            
            Set Form_Width    item 5 to 16
            Set Header_Label  item 5 to "D"
            Set Column_Checkbox_State  item 5 to True
            

            //AB-StoreStart
            Set CurrentRowColor to 11468799
            Set CurrentCellColor to 11468799
            
            Function Child_Entering Returns Integer
                Integer rVal iParent
                Forward Get Child_Entering to rVal
                If (Should_Save(UserGrps_DD(Self))) Send Request_Save to UserGrps_DD
                Get Field_Current_Value Of UserGrps_DD Field Usergrps.Grp_id to iParent
                If (NOT(iParent)) Begin
                    Send Info_Box "��⧜� ��高 �� ����⥜�� ��ᛘ ������" "���������"
                    Move 1 to rVal
                End
                Function_Return rVal
            End_Function
            
            Procedure Select_Toggling Integer iInt1 Integer iInt2
                Forward Send Select_Toggling iInt1 iInt2
                Send Request_Save to GrpArx0_DD
            End_procedure
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // The_Table

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "R = �����⧜��� ��ᙘ��� ������� ��� ����妬"
            Set Auto_Size_State to FALSE
            Set Location to 130 6
            Set Size to 10 174
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "E = �����⧜��� ��樟ਫ਼ �������"
            Set Auto_Size_State to FALSE
            Set Location to 130 237
            Set Size to 10 154
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "C = �����⧜��� �� �������"
            Set Auto_Size_State to FALSE
            Set Location to 141 7
            Set Size to 10 109
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "D = �����⧜��� �������� �������"
            Set Auto_Size_State to FALSE
            Set Location to 142 237
            Set Size to 10 129
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "����᝜��� �������夞�� �����ᣣ����  ��� �� ����� �������� �� ������"
            Set Color to clTeal
            Set TextColor to clWhite
            Set Location to 26 6
            Set Size to 10 386
            Set FontWeight to 600
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "P = �����⧜��� ��������� - ����梢��� ���������� ���妬"
            Set Auto_Size_State to FALSE
            Set Location to 152 7
            Set Size to 10 219
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object Grppedia_ is a dbGridSub
            Set Main_File to Grpped0.File_Number
            Set Server to (Grpped0_DD(self))
            Set Size to 112 450
            Set Location to 163 6
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Pedia.Pedio_name
                Entry_Item Pedia.Pedio_descr
                Entry_Item Grpped0.Allow_read
                Entry_Item Grpped0.Allow_change
                Entry_Item Grpped0.Allow_copy
            End_Row

            Set Form_Width    item 0 to 122
            Set Header_Label  item 0 to "�� ���妬"
            
            Set Form_Width    item 1 to 275
            Set Header_Label  item 1 to "��������� ���妬"
            
            Set Form_Width    item 2 to 16
            Set Header_Label  item 2 to "R"
            Set Column_Checkbox_State  item 2 to True
            
            Set Form_Width    item 3 to 16
            Set Header_Label  item 3 to "E"
            Set Column_Checkbox_State  item 3 to True
            
            Set Form_Width    item 4 to 16
            Set Header_Label  item 4 to "P"
            Set Column_Checkbox_State  item 4 to True
            

            //AB-StoreStart
                                                                    
            Procedure Prompt_CallBack Integer hPrompt
                Integer Arxeio_ID
                Get Field_Current_Value Of Arxeia_DD Field Arxeia.Arxeio_ID to Arxeio_ID
                Set FragmaArxeio Of hPrompt to Arxeio_ID
            End_Procedure
            
            Procedure Select_Toggling Integer iInt1 Integer iInt2
                Forward Send Select_Toggling iInt1 iInt2
                Send Request_Save to GrpPed0_DD
            End_procedure
            
            Function Child_Entering Returns Integer
                Integer rVal iParent
                Forward Get Child_Entering to rVal
                If (Should_Save(GrpArx0_DD(Self))) Send Request_Save to GrpArx0_DD
                Get Field_Current_Value Of GrpArx0_DD Field GrpArx0.Group_ID to iParent
                If (NOT(iParent)) Begin
                    Send Info_Box "��⧜� ��高 �� ����⥜�� �����" "���������"
                    Move 1 to rVal
                End
                Function_Return rVal
            End_Function
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Grppedia_

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "������ ��ᛘ�  "
            Set Location to 11 5
            Set Size to 10 57
        End_Object    // TextBoxSub7

        Object TextBoxSub8 is a TextBoxSub
            Set Label to "�������"
            Set Location to 12 152
            Set Size to 10 39
        End_Object    // TextBoxSub8


        //AB-StoreStart
                                            
        Set Verify_Data_Loss_Msg TO Get_No_Confirmation
        Set Verify_Delete_Msg    TO Get_No_Confirmation
        Set Verify_Save_Msg      TO Get_No_Confirmation
        Set Verify_Exit_Msg      TO Get_No_confirmation
        
        Procedure Activate_View Returns Integer
            Integer rVal iGroup iUser
            String sUser
            Forward Get Msg_Activate_View to rVal
            Get fsLoginUserID to sUser
            Clear Users
            Move sUser to Users.Login_ID
            Find eq Users by Index.1 // Users:Index.1:Users.Login_ID
            If (Found=1) Begin
                Move Users.User_ID  to iUser
                Move Users.Grp_ID   to iGroup
            End
            Clear UserGrps
            Move iGroup to UserGrps.Grp_ID
            Find eq UserGrps By Index.1 // UserGrps:Index.1:Grp_ID
            If (Found) Send Find to UserGrps_DD eq 1 // UserGrps:Index.1:Grp_ID
            Procedure_Return rVal
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // GrpPed00

//AB/     End_Object    // prj
