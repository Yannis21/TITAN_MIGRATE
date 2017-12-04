//AB/ Project V036:BARTICL
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V036:BARTICL"
//AB/     Set ProjectFileName to "V036.VW"

// Project Object Structure
//   V036 is a dbViewSub
//     Btypkin_DD is a DataDictionary
//     Baxiokat_DD is a DataDictionary
//     Barticl_DD is a DataDictionary
//     Bsum_DD is a DataDictionary
//     Baxio_DD is a DataDictionary
//     Syscurxr_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Bmove_DD is a DataDictionary
//     Btypkin_Btypkin_Code is a dbFormSub
//     Btypkin_Btypkin_Descr is a dbFormSub
//     Barticl_Barticl_Hmnia is a dbFormSub
//     Barticl_Barticl_No is a dbFormSub
//     Barticl_Barticl_Code1 is a dbFormSub
//     Barticl_Barticl_Epon1 is a dbFormSub
//     Barticl_Barticl_Code2 is a dbFormSub
//     Barticl_Barticl_Epon2 is a dbFormSub
//     Barticl_Barticl_Aitiol is a dbFormSub
//     Barticl_Barticl_Rec0 is a dbFormSub
//     dbTbDlgMove is a dbTabDialogSub
//       TP_Bmove is a dbTabPage
//         dbGrdBmove is a dbGridSub
//       TP_Synola is a dbTabPage
//         Bsum_ is a dbGridSub
//       TP_Modules is a dbTabPage
//         Barticl_Garticl_Rec0 is a dbFormSub
//         Barticl_Gmove_Mrec0 is a dbFormSub
//         Barticl_Gplan_Mrec0 is a dbFormSub
//         Barticl_Carticl_Rec0 is a dbFormSub
//         Barticl_Varticl_Rec0 is a dbFormSub
//         TextBoxSub12 is a TextBoxSub
//         TextBoxSub13 is a TextBoxSub
//         TextBoxSub14 is a TextBoxSub
//     dbGrpYear is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       otxtCompany is a TextBoxSub
//       otxtBranch is a TextBoxSub
//       otxtYear is a TextBoxSub
//     frmIsClosed is a FormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TextBoxSub11 is a TextBoxSub
//     Barticle_Cn_Code is a dbFormSub
//     FormSub1 is a FormSub
//     Cn_Cn_Descr is a dbFormSub
//     Textbox1 is a Textbox
//     TextBoxSub16 is a TextBoxSub
//     oDetail_bn is a ButtonSub
//     oPrint_Bn is a ButtonSub
//     btnKleisimo is a ButtonSub
//     Barticl_Barticl_Sv2 is a dbFormSub
//     Barticl_Barticl_Lines is a dbFormSub
//     ButtonSub1 is a ButtonSub
//     RadioGroupSub1 is a RadioGroupSub
//       Radio2 is a RadioSub
//       Radio3 is a RadioSub
//     TextBoxSub17 is a TextBoxSub

// Register all objects
Register_Object Barticl_Barticl_Aitiol
Register_Object Barticl_Barticl_Code1
Register_Object Barticl_Barticl_Code2
Register_Object Barticl_Barticl_Epon1
Register_Object Barticl_Barticl_Epon2
Register_Object Barticl_Barticl_Hmnia
Register_Object Barticl_Barticl_Lines
Register_Object Barticl_Barticl_No
Register_Object Barticl_Barticl_Rec0
Register_Object Barticl_Barticl_Sv2
Register_Object Barticl_Carticl_Rec0
Register_Object Barticl_DD
Register_Object Barticl_Garticl_Rec0
Register_Object Barticl_Gmove_Mrec0
Register_Object Barticl_Gplan_Mrec0
Register_Object Barticl_Varticl_Rec0
Register_Object Barticle_Cn_Code
Register_Object Baxio_DD
Register_Object Baxiokat_DD
Register_Object Bmove_DD
Register_Object Branch_Branch_Name
Register_Object Bsum_
Register_Object Bsum_DD
Register_Object Btypkin_Btypkin_Code
Register_Object Btypkin_Btypkin_Descr
Register_Object Btypkin_DD
Register_Object ButtonSub1
Register_Object btnKleisimo
Register_Object Clients_DD
Register_Object Cn_Cn_Descr
Register_Object Cn_DD
Register_Object Company_Company_Name
Register_Object dbGrdBmove
Register_Object dbGrpYear
Register_Object dbTbDlgMove
Register_Object FormSub1
Register_Object frmIsClosed
Register_Object oDetail_bn
Register_Object oPrint_Bn
Register_Object otxtBranch
Register_Object otxtCompany
Register_Object otxtYear
Register_Object Radio2
Register_Object Radio3
Register_Object RadioGroupSub1
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object TP_Bmove
Register_Object TP_Modules
Register_Object TP_Synola
Register_Object V036
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Register_Object sl033
Register_Object R044
Register_Object sl100
Register_Object R36
//Register_Object v144
//Register_Procedure Activate_vw144
Use sl041.sl

Use bpEnCmv3.dg // Business Process Finilizing Barticle
//@@Use bpEnCmv2.dg // Business Process Finilizing Barticle

Use slNomism.sl
Use Globals.Inc
Use sl033.sl
Use r044.rv
Use v037.vw
Use sl100.sl
Use sl036.sl
use r36.rv
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbTabdlg.Sub
Use dbGrid.Sub
Use Txtbox.Sub
Use dbGroup.Sub
Use Form.Sub
Use Button.Sub
Use Rgroup.Sub
Use Radio.Sub

Use BTYPKIN.DD
Use BAXIOKAT.DD
Use BARTICL.DD
Use BSUM.DD
Use BAXIO.DD
Use SYSCURXR.DD
Use CLIENTS.DD
Use CN.DD
Use BMOVE.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V036 FOR V036

Object V036 is a dbViewSub

    //AB-StoreTopStart
    Property Integer    piChangedBarticl    Public False
    Property String     psModule            Public ''
    Property String     psClientRecr        Public ''
    Property String     psFromCmoves        Public ''
    Property String     psCTypkinModule     Public ''
    Property integer    piepil              public 0
    
    Set Verify_Data_Loss_Msg TO Get_No_Confirmation
    Set Verify_Delete_Msg    TO Get_No_Confirmation
    Set Verify_Save_Msg      TO Get_No_Confirmation
    Set Verify_Exit_Msg      TO Get_No_confirmation
    
    Register_Function GetEponymia Integer aiCode1Or2 String asCode Returns String
    
    Procedure Find_Eponymia Integer aiOneOrTwo
        String sCode
        Integer iCode
        If (aiOneOrTwo=1) Begin
            Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Code1 to sCode
            Move (Trim(sCode)) to sCode
            Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Epon1 to (GetEponymia(Self,1,sCode))
        End
        Else If (aiOneOrTwo=2) Begin
            Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Code2 to sCode
            Move (Trim(sCode)) to sCode
            Set Field_Changed_Value Of Barticl_DD Field Barticl.Barticl_Epon2 to (GetEponymia(Self,2,sCode))
        End
    End_Procedure
    
    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®†©û Ä•†¶ö®·≠‡§"
    Set Size to 289 530
    Set Location to 0 0

    //AB-DDOStart

    Object Btypkin_DD is a Btypkin_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                        
        Set Foreign_Field_Options DD_KEYFIELD           to DD_Clear_Field_Options DD_FindReq
        Set Foreign_Field_Options DD_INDEXFIELD         to DD_Clear_Field_Options DD_FindReq
        Set Field_Options Field Btypkin.Btypkin_Code    to DD_Clear_Field_Options DD_Required
        
        
        
        
        //AB-StoreEnd

    End_Object    // Btypkin_DD

    Object Baxiokat_DD is a Baxiokat_DataDictionary

        //AB-StoreStart
        Set Field_Prompt_Object Field Baxiokat.Baxiokat_Code to (sl033(Self))
        
        
        
        //AB-StoreEnd

    End_Object    // Baxiokat_DD

    Object Barticl_DD is a Barticl_DataDictionary

        //AB-StoreTopStart
                                                                                                                                                                                                                        
        Property Integer piNoChangesAllowed Public 0
        
        //AB-StoreTopEnd

        Set DDO_Server to (Btypkin_DD(self))

        //AB-StoreStart
                                                                                                                                                                                                                        
        Set Allow_Foreign_New_Save_State to True
        
        Procedure Request_Save
            Integer iRecnum
            Move Barticl.Recnum to iRecnum
            If (piNoChangesAllowed(Self)<>1) Forward Send Request_Save
            Else Begin
                If (iRecnum) Send Find_By_Recnum to Barticl_DD Barticl.File_Number iRecnum
            End
        End_Procedure
        
        Procedure Request_Delete
            Integer iErr isClosed isPrinted isReadOnly iRecnum
            Move Barticl.Recnum to iRecnum
            If (piNoChangesAllowed(Self)<>1) Begin
                Forward Send Request_Delete to Barticl_DD
        //                Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Ektyposh to isPrinted
        //                If (Not(isPrinted)) Forward Send Request_Delete to Barticl_DD
        //                Else Begin
        //                    Send Info_Box "í¶ ßò®ò©´ò´†°Ê ‚Æú† ú°´¨ß‡üúÂ.\nÜ õ†òö®ò≠„ ÉÑå ‚ö†§ú" "è¢û®¶≠¶®Âò"
        //                    If (iRecnum) Send Find_By_Recnum to Barticl_DD Barticl.File_Number iRecnum
        //                End
            End
            Else Begin
                Send Info_Box "í¶ ßò®ò©´ò´†°Ê úÂ§ò† °¢ú†õ‡£‚§¶.\nÜ õ†òö®ò≠„ ÉÑå ‚ö†§ú" "è¢û®¶≠¶®Âò"
                If (iRecnum) Send Find_By_Recnum to Barticl_DD Barticl.File_Number iRecnum
            End
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Barticl_DD

    Object Bsum_DD is a Bsum_DataDictionary
        Set DDO_Server to (Barticl_DD(self))
        Set Constrain_File to Barticl.File_Number

        //AB-StoreStart
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // Bsum_DD

    Object Baxio_DD is a Baxio_DataDictionary
        Set DDO_Server to (Baxiokat_DD(self))

        //AB-StoreStart
                                                                                                                                                                                                                        
        Set allow_foreign_new_save_state to true
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Baxio_DD

    Object Syscurxr_DD is a Syscurxr_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // Syscurxr_DD

    Object Clients_DD is a Clients_DataDictionary

        //AB-StoreStart
                                                                                                                                                                                                                        
        Procedure OnConstrain
            String sModule
            Get psCTypkinModule to sModule
            Move (Trim(sModule)) to sModule
            If (sModule<>'') Begin
                     If (sModule='01') Constrain Clients.Is_Client          Eq '1'
                Else If (sModule='02') Constrain Clients.Is_Promhtheyths    Eq '1'
            End
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))

        //AB-StoreStart
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // Cn_DD

    Object Bmove_DD is a Bmove_DataDictionary

        //AB-StoreTopStart
        Property Integer piNoChangesAllowed Public 0
        
        //AB-StoreTopEnd

        Set DDO_Server to (Barticl_DD(self))
        Set DDO_Server to (Baxio_DD(self))
        Set Constrain_File to Barticl.File_Number

        //AB-StoreStart
                                                                                                                                                                                                                        
        Set Ordering to 3
        
        Procedure Request_Save
            Integer iRecnum
            Move Bmove.Recnum to iRecnum
            If (piNoChangesAllowed(Self)<>1) Begin
                Forward Send Request_Save
            End
            Else Send Display_UI
        End_Procedure
        
        Procedure Request_Delete
            Integer iErr isClosed isPrinted isReadOnly iRecnum
            Move Bmove.Recnum to iRecnum
            If (piNoChangesAllowed(Self)<>1) Begin
        //                Get Field_Current_Value Of Barticl_DD Field Barticl.Bartl_Ektyposh to isPrinted
        //                If (Not(isPrinted)) Forward Send Request_Delete
                Forward Send Request_Delete
            End
            Else Begin
                Send Info_Box "í¶ ßò®ò©´ò´†°Ê úÂ§ò† °¢ú†õ‡£‚§¶.\nÜ õ†òö®ò≠„ ÉÑå ‚ö†§ú" "è¢û®¶≠¶®Âò"
                Send Beginning_Of_Data to (dbGrdBmove(TP_Bmove(dbTbDlgMove(Self)))) True
            End
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Bmove_DD

    Set Main_DD to (Barticl_DD(self))
    Set Server to (Barticl_DD(self))

    //AB-DDOEnd

    Object Btypkin_Btypkin_Code is a dbFormSub
        Entry_Item Btypkin.Btypkin_code
        Set Size to 13 42
        Set Location to 34 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                            
        Procedure Refresh Integer iMode
            String  sCtypkinRecr sModule
            Forward Send Refresh iMode
            Set Enabled_State Of Barticl_Barticl_Code2 to ;
                ((Btypkin.Btypkin_Anti2 <> (-1)) And (Btypkin.Btypkin_Anti2 <> (5)))
            Set Enabled_State Of Barticl_Barticl_Epon2 to ;
                ((Btypkin.Btypkin_Anti2 <> (-1)) And (Btypkin.Btypkin_Anti2 <> (5)))
            Move Btypkin.Ctypkin_Recr to sCtypkinRecr
            Clear Ctypkin
            Move sCtypkinRecr to Ctypkin.Ctypkin_Recr
            Find Eq Ctypkin By Index.2 // Ctypkin:Index.2:Ctypkin_Recr
            If (Ctypkin.Ctypkin_Module<>'') Move Ctypkin.Ctypkin_Module to sModule
            Else                            Move '' to sModule
            Set psCTypkinModule to sModule
            set enabled_state of barticl_barticl_no to (btypkin.btypkin_flag05<>1)
            Send Rebuild_Constraints to Clients_DD
        End_Procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Btypkin_Btypkin_Code

    Object Btypkin_Btypkin_Descr is a dbFormSub
        Entry_Item Btypkin.Btypkin_descr
        Set Size to 13 185
        Set Location to 34 110
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Btypkin_Btypkin_Descr

    Object Barticl_Barticl_Hmnia is a dbFormSub
        Entry_Item Barticl.Barticl_hmnia
        Set Size to 13 66
        Set Location to 34 333
        Set Label_Row_Offset to 1
        Set Label_Col_Offset to 30
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                    
                                                                                                    
        Procedure Prompt_CallBack Integer hPromptID
            Integer iTypkinCode
            String  sClientID
            Date    dHmnia
            Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Hmnia to dHmnia
            Get Field_Current_Value Of Btypkin_DD Field Btypkin.Btypkin_Code  to iTypkinCode
            Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Code1 to sClientID
            Set FragmaTypkinCode    Of hPromptID to iTypkinCode
            Set FragmaClientID      Of hPromptID to sClientID
            Set FragmaHmnia         Of hPromptID to dHmnia
        End_Procedure
        
        Procedure Refresh Integer iMode
            Integer iRecn
            Forward Send Refresh iMode
            Set Enabled_State   Of oPrint_Bn            to True
            Set Enabled_State   Of BtnKleisimo          to True
            Set Enabled_State   Of Buttonsub1           to True
            Set piChangedBarticl                        to True
        
            Move Barticl.Recnum to iRecn
        
            Set piNoChangesAllowed Of Barticl_DD    to (Barticl.Barticl_Ekleise='1')
            Set piNoChangesAllowed Of Bmove_DD      to (Barticl.Barticl_Ekleise='1')
        
            Set Enabled_State   Of buttonsub1       to (Barticl.Barticl_Ekleise='1')
            Set Enabled_State   Of oPrint_Bn        to (Barticl.Barticl_Ekleise='1')
            Set Enabled_State   Of BtnKleisimo      to (irecn>0)
            Set Enabled_State   Of oDetail_Bn       to (Current_Record(Baxio_DD(Self)))
        
            If (Barticl.Barticl_Ekleise='1') Begin
                Set Color           Of FrmIsClosed  to clRed
                set label           Of Btnkleisimo  to 'Ä§¶†ö£ò'
                Set Bitmap          Of BtnKleisimo  to 'Open1.bmp'
            End
            Else Begin
                Set Color           Of FrmIsClosed  to clLime
                set label           Of Btnkleisimo  to "â¢úÂ©†£¶"
                Set Bitmap          Of BtnKleisimo  to 'Close1.bmp'
            End
            Send Show_CN
        End_Procedure // Refresh
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Barticl_Barticl_Hmnia

    Object Barticl_Barticl_No is a dbFormSub
        Entry_Item Barticl.Barticl_no
        Set Size to 13 47
        Set Location to 34 473
        Set Label_Row_Offset to 1
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Barticl_Barticl_No

    Object Barticl_Barticl_Code1 is a dbFormSub
        Entry_Item Barticl.Barticl_code1
        Set Size to 13 126
        Set Location to 49 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
        //        Procedure Request_Find integer mode integer entUpdtFlag
        //        //    Integer DataFile srvr# dfrdState
        //        //    If (Should_delegate_Find(Current_Object)) ;
        //        //       Delegate Send Request_Find mode entUpdtFlag
        //        //    Else Begin
        //        //       get Data_File to dataFile
        //        //       get Server to srvr#
        //        //       get Deferred_State to dfrdState
        //        //       if (srvr# <> 0 AND dataFile > 0) begin
        //        //         send Item_Find to srvr# mode dataFile ;
        //        //           (Data_Field(current_object,CURRENT)) entUpdtFlag TRUE dfrdState
        //        //         If (Found) if dfrdState send entry_display 0 0
        //        //       end
        //        //    End
        //        End_Procedure
                
                Procedure OnChange
                    String sCode
                    Integer iCode
                    If (Focus(Desktop)=Barticl_Barticl_Code1(Self)) Begin
                        Send Find_Eponymia 1
                        Send Show_CN
                    End
                End_Procedure // OnChange
                
                Procedure Prompt
                    String sModule
                    Get psModule    Of (sl100(Self))    to sModule
                    Set psModule    Of (sl100(Self))    to (psCTypkinModule(Self))
                    Set Modal_State Of (sl100(Self))    to True
                    Send Clear                          to Clients_DD
                    Send Clear                          to CN_DD
                    Set Value       Of Barticle_CN_Code to ''
                    Forward Send Prompt
                    Send Find_Eponymia 1
                    Send Show_CN
                    Set psModule    Of (sl100(Self))    to sModule
                End_Procedure // Prompt
                
                //Procedure Prompt_Callback Integer hPrompt
                //    Integer liSrv
                //    String lsFromGplanCode lsToGplanCode
                
                //    Get Server of (Parent(hPrompt)) to liSrv
                //    // jsjsjs 24/01/2001
                //    //If (Main_File(lisrv) = Gplan.File_Number) Begin
                //    //    Set piFragmaLast     of hPrompt to 1
                //    //    Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Apo1 to lsFromGplanCode
                //    //    Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Eos1 to lsToGplanCode
                //    //    Set psFragmaFromCode of hPrompt to lsFromGplanCode
                //    //    Set psFragmaToCode   of hPrompt to lsToGplanCode
                //    //End
                //    // jsjsjs 24/01/2001
                //End_Procedure // Propmpt_Callback
                
                //Procedure Request_Clear
                //    Send Clear to Clients_DD
                //    Send Rebuild_Constraints to CN_DD
                //    Send Find_Eponymia 1
                //    Send Show_CN
                //End_Procedure
                
                //Procedure Request_Clear_All
                //    Send Clear to Clients_DD
                //    Send Rebuild_Constraints to CN_DD
                //    Send Find_Eponymia 1
                //    Send Show_CN
                //End_Procedure
                
                //Procedure Find_Next
                //    Send Clear to CN_DD
                //    Send Clear to CN_DD2
                //    Set Value Of Barticle_CN_Code to ''
                //    Forward Send Find_Next
                //    Send rebuild_Constraints to Cn_DD
                //    Send Find_Eponymia 1
                //    Send Show_CN
                //End_procedure
                
                //Procedure Find_Previous
                //    Send Clear to CN_DD
                //    Send Clear to CN_DD2
                //    Set Value Of Barticle_CN_Code to ''
                //    Forward Send Find_Previous
                //    Send rebuild_Constraints to Cn_DD
                //    Send Find_Eponymia 1
                //    Send Show_CN
                //End_procedure
                
                //Procedure Find_Ge
                //    Send Clear to CN_DD
                //    Send Clear to CN_DD2
                //    Set Value Of Barticle_CN_Code to ''
                //    Forward Send Find_GE
                //    Send rebuild_Constraints to Cn_DD
                //    Send Find_Eponymia 1
                //    Send Show_CN
                //End_procedure
                
                
                
                
                
        //AB-StoreEnd

    End_Object    // Barticl_Barticl_Code1

    Object Barticl_Barticl_Epon1 is a dbFormSub
        Entry_Item Barticl.Barticl_epon1
        Set Size to 13 254
        Set Location to 49 267
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Barticl_Barticl_Epon1

    Object Barticl_Barticl_Code2 is a dbFormSub
        Entry_Item Barticl.Barticl_code2
        Set Size to 13 126
        Set Location to 63 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                                        
        //        Procedure Request_Find integer mode integer entUpdtFlag
        //        //    Integer DataFile srvr# dfrdState
        //        //    If (Should_delegate_Find(Current_Object)) ;
        //        //       Delegate Send Request_Find mode entUpdtFlag
        //        //    Else Begin
        //        //       get Data_File to dataFile
        //        //       get Server to srvr#
        //        //       get Deferred_State to dfrdState
        //        //       if (srvr# <> 0 AND dataFile > 0) begin
        //        //         send Item_Find to srvr# mode dataFile ;
        //        //           (Data_Field(current_object,CURRENT)) entUpdtFlag TRUE dfrdState
        //        //         If (Found) if dfrdState send entry_display 0 0
        //        //       end
        //        //    End
        //        End_Procedure
                
                Procedure OnChange
                    String sCode
                    Integer iCode
                    If (Focus(Desktop)=Barticl_Barticl_Code2(Self)) Begin
                        Send Find_Eponymia 2
                    End
                End_Procedure // OnChange
                
                Procedure Prompt
                    Set Modal_State Of (sl100(Self)) to True
                    Forward Send Prompt
                    Send Find_Eponymia 2
                End_Procedure // Prompt
                
                //Procedure Prompt_Callback Integer hPrompt
                //    Integer liSrv
                //    String lsFromGplanCode lsToGplanCode
                //
                //    Get Server of (Parent(hPrompt)) to liSrv
                //    // jsjsjs 24/01/2001
                ////            If (Main_File(lisrv) = Gplan.File_Number) Begin
                ////                Set piFragmaLast     of hPrompt to 1
                ////                Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Apo2 to lsFromGplanCode
                ////                Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Eos2 to lsToGplanCode
                ////                Set psFragmaFromCode of hPrompt to lsFromGplanCode
                ////                Set psFragmaToCode   of hPrompt to lsToGplanCode
                ////            End
                ////            // jsjsjs 24/01/2001
                //End_Procedure // Propmpt_Callback
                
                
        //AB-StoreEnd

    End_Object    // Barticl_Barticl_Code2

    Object Barticl_Barticl_Epon2 is a dbFormSub
        Entry_Item Barticl.Barticl_epon2
        Set Size to 13 254
        Set Location to 63 267
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Barticl_Barticl_Epon2

    Object Barticl_Barticl_Aitiol is a dbFormSub
        Entry_Item Barticl.Barticl_aitiol
        Set Size to 13 283
        Set Location to 77 66
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Barticl_Barticl_Aitiol

    Object Barticl_Barticl_Rec0 is a dbFormSub
        Entry_Item Barticl.Barticl_rec0
        Set Size to 13 71
        Set Location to 77 421
        Set Color to clBtnFace
        Set Label_Col_Offset to 50
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set Enabled_state to False
        //AB-StoreEnd

    End_Object    // Barticl_Barticl_Rec0

    Object dbTbDlgMove is a dbTabDialogSub
        Set Size to 118 523
        Set Location to 130 2
        Object TP_Bmove is a dbTabPage
            Set Label to "â†§„©ú†™    "
            Object dbGrdBmove is a dbGridSub

                //AB-StoreTopStart
                
                Function private.Check_If_Bmove_Is_Last Integer liBmove_aa Integer liBaxio_Bmove_Laa Returns Integer
                         If (liBmove_aa <> liBaxio_Bmove_Laa) Function_Return 0
                         Else                                 Function_Return 1
                End_Function //private.check_if_last
                
                //AB-StoreTopEnd

                Set Main_File to Bmove.File_Number
                Set Server to (Bmove_DD(self))
                Set Ordering to 3
                Set Size to 91 511
                Set Location to 3 2
                Set CurrentRowColor to 11468799
                Set CurrentCellColor to 11468799
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Bmove.Bmove_aa
                    Entry_Item Baxiokat.Baxiokat_code
                    Entry_Item Baxiokat.Baxiokat_descr
                    Entry_Item Baxio.Baxio_code
                    Entry_Item Baxio.Baxio_hmnial
                    Entry_Item Baxio.Baxio_c_code2
                    Entry_Item Baxio.Baxio_v2
                    Entry_Item Baxio.Baxio_banka
                    Entry_Item (Code_Description(Self))
                    Entry_Item Baxio.Baxio_no
                    Entry_Item (private.Check_If_Bmove_Is_Last(Self,Bmove.Baxio_aa,Baxio.Baxio_Bmove_Laa))
                End_Row

                Set Form_Width    item 0 to 23
                Set Header_Label  item 0 to "ò/ò"
                
                Set Form_Width    item 1 to 33
                Set Header_Label  item 1 to "ÑÂõ¶™"
                
                Set Form_Width    item 2 to 55
                Set Header_Label  item 2 to "èú®†ö®ò≠„"
                
                Set Form_Width    item 3 to 45
                Set Header_Label  item 3 to "â‡õ†°Ê™"
                
                Set Form_Width    item 4 to 60
                Set Header_Label  item 4 to "Ü£/§Âò ä„•û™"
                
                Set Form_Width    item 5 to 45
                Set Header_Label  item 5 to "åÊ£†©£ò"
                
                Set Form_Width    item 6 to 64
                Set Header_Label  item 6 to "è¶©Ê§"
                
                Set Form_Width    item 7 to 18
                Set Header_Label  item 7 to "í"
                
                Set Form_Width    item 8 to 48
                Set Header_Label  item 8 to "í®·ßúùò"
                
                Set Form_Width    item 9 to 70
                Set Header_Label  item 9 to "Ä®†ü£Ê™"
                
                Set Form_Width    item 10 to 45
                Set Header_Label  item 10 to "íú¢ú¨´òÂò"
                Set Column_Checkbox_State  item 10 to True
                

                //AB-StoreStart
                
                Set Child_Table_State to True
                Set Export_Code_Description_State   Item 7 to True
                
                Set Points                          Item 6 to 2
                Set Numeric_Mask                    Item 6 to 14 2 ' ,*'
                
                Set Column_Option                   Item 2 to Noenter True
                Set Column_Option                   Item 3 to Noenter True
                
                Set Column_Prompt_Object            Item 5 to (slNomism(Self))
                
                
                Procedure FindBaxioStatusPlace Integer hPrompt
                   Integer liBkinkatRec0 liStatus liBtypkinCode liBaxiokatCode
                   String sBkinkatRecr sclient
                
                   Move Bkinkat.Bkinkat_Recr to sBkinkatRecr
                   Get Field_Current_Value of Baxiokat_DD Field Baxiokat.Baxiokat_Code to liBaxiokatCode
                   Get Field_Current_Value of Btypkin_DD  Field Btypkin.Btypkin_Code   to liBtypkinCode
                
                   Clear Bkinkat
                   Move Syscurxr.Company_Code to Bkinkat.Company_Code
                   Move Syscurxr.Branch_Code  to Bkinkat.Branch_Code
                   Move Syscurxr.Year_Year    to Bkinkat.Year_Year
                   Move liBtypkinCode         to Bkinkat.Btypkin_Code
                   Move liBaxiokatCode        to Bkinkat.Baxiokat_Code
                   Find eq Bkinkat by Index.1 //Bkinkat:Index.1:Company-Branch-Year-Btypkin_Code-Baxiokat_Code
                   Set piFragmaBaxioStatus of hPrompt to (If((Found),Bkinkat.Baxio_Stat_From,0))
                   Set piFragmaBaxioPlace  of hPrompt to (If((Found),Bkinkat.Baxio_Plac_From,0))
                   if (piepil(self)=1) begin
                      get field_current_value of barticl_dd field barticl.barticl_code1 to sclient
                      set psfragmaclient of (sl037(self)) to sclient
                   end
                   else set psfragmaclient of (sl037(self)) to ''
                
                   Clear Bkinkat
                   Move sBkinkatRecr to Bkinkat.Bkinkat_Recr
                   Find eq Bkinkat by Index.2 // Bkinkat_Recr
                End_Procedure // FindBaxioStatusPlace
                
                Procedure Request_Clear_All
                    Delegate Send Request_Clear_All
                End_Procedure // Request_Clear_All
                
                Procedure Prompt_Callback Integer hPrompt
                   Integer liBaxiokatOffset liBaxioOffset liBaxiokatCode liSrv liBtypkinCode
                   Move 1 to liBaxiokatOffset
                   Move 4 to liBaxioOffset //apo 3
                   If (Current_Col(Self) = liBaxioOffset) Begin
                       Get Server of (Parent(hPrompt)) to liSrv
                       Set Ordering of liSrv to 6
                       Set Auto_Index_State of hPrompt to False
                       Get Field_Current_Value of Baxiokat_DD Field  Baxiokat.Baxiokat_Code to liBaxiokatCode
                       Set piFragmaBaxiokatCode of hPrompt to liBaxiokatCode
                       Send FindBaxioStatusPlace hPrompt
                   End
                   Else Begin
                       If (Current_Col(Self) = liBaxiokatOffset) Begin
                           Get Field_Current_Value of Btypkin_DD Field  Btypkin.Btypkin_Code to liBtypkinCode
                           Set piFragmaBtypkinCode of hPrompt to liBtypkinCode
                       End
                   End
                End_Procedure // Prompt_Callback
                
                
                Function Child_entering returns Integer
                    Integer rVal iRec
                    Forward Get Child_Entering to rVal
                    If (Not(rVal)) Begin
                        If (Should_Save(Barticl_DD(Self))) Send Request_Save to (Barticl_DD(Self))
                        Get Field_Current_Value Of Btypkin_DD Field Btypkin.Recnum to iRec
                        If (Not(iRec)) Begin
                            Send Info_Box "Éú§ ‚Æú´ú úß†¢‚•ú† °Â§û©û ò•†¶ö®·≠¶¨" "ë≠·¢£ò"
                            Function_Return 1
                        End
                        If ((Current_Record(Self)) and (Not(Current_Record(Baxio_DD(Self))))) ;
                            Send Beginning_Of_Data True
                    End
                    Function_Return rVal
                End_Function
                
                Procedure Item_Change Integer FromI Integer ToI Returns Integer
                    Integer rVal iCol iBase_item iCI iGridID iNomismaOffset iBaxioCode
                    String  sNom
                    Get Field_Current_Value Of Baxio_DD Field Baxio.Baxio_Code to iBaxioCode
                    Move (dbGrdBmove(TP_Bmove(dbTbDlgMove(self)))) to iGridID
                    If (Focus(Desktop) = iGridID) begin
                        Get Column FromI to iCol
                        If ((iCol>0) And (iCol<5) And (iBaxioCode)) Begin
                            Get Field_Current_Value Of Baxio_DD Field Baxio.Baxio_C_Code2 to sNom
                            If (Trim(sNom)='') Set Field_Changed_Value Of Baxio_DD Field Baxio.Baxio_C_Code2 to SysCurXr.C_Code0 // Nomisma Xrhshs
                        End
                        Forward Get Msg_Item_Change Fromi toi to rVal
                    End
                    Procedure_return rVal
                End_Procedure
                
                On_key kExit_application Send None
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //AB-StoreEnd

            End_Object    // dbGrdBmove


            //AB-StoreStart
            set label to "Ä§·¢¨©û ë¨§ò¢¢òö„™"
            
            
            //AB-StoreEnd

        End_Object    // TP_Bmove

        Object TP_Synola is a dbTabPage
            Set Label to "ëÁ§¶¢ò"
            Object Bsum_ is a dbGridSub

                //AB-StoreTopStart
                                                                                                                                                                                                                                                                                                                                                                                                                        
                Function private.Baxiokat_Code String lsBaxiokat_Recr Returns Integer
                     Integer liBaxiokatCode
                     String  lsBaxiokatRecr
                
                     Move Baxiokat.Baxiokat_Recr to lsBaxiokatRecr
                
                     Clear Baxiokat
                     Move lsBaxiokat_Recr to Baxiokat.Baxiokat_Recr
                     Find Eq Baxiokat by Index.2 //baxiokat_recr
                     [Found] Move Baxiokat.Baxiokat_Code to liBaxiokatCode
                     Clear Baxiokat
                     Move lsBaxiokatRecr to Baxiokat.Baxiokat_Recr
                     Find eq Baxiokat by Index.2 //baxiokat_rec0
                
                     Function_Return liBaxiokatCode
                End_Function //private.baxiokat_code
                
                Function private.Baxiokat_Descr String lsBaxiokat_Recr Returns String
                     String lsBaxiokatDescr lsBaxiokatRecr
                     Move Baxiokat.Baxiokat_Recr to lsBaxiokatRecr
                     Clear Baxiokat
                     Move lsBaxiokat_Recr to Baxiokat.Baxiokat_Recr
                     Find Eq Baxiokat by Index.2 //baxiokat_recr
                     [Found] Move Baxiokat.Baxiokat_Descr to lsBaxiokatDescr
                     Clear Baxiokat
                     Move lsBaxiokatRecr to Baxiokat.Baxiokat_Recr
                     Find eq Baxiokat by Index.2 //baxiokat_recr
                     Function_Return lsBaxiokatDescr
                End_Function //private.baxiokat_descr
                
                //AB-StoreTopEnd

                Set Main_File to Bsum.File_Number
                Set Server to (Bsum_DD(self))
                Set Size to 110 407
                Set Location to 5 4
                Set Wrap_State to TRUE
                Set Read_Only_State to TRUE

                Begin_Row
                    Entry_Item (private.Baxiokat_Code (Self,Bsum.BAxiokat_Recr))
                    Entry_Item (private.Baxiokat_Descr(Self,Bsum.BAxiokat_Recr))
                    Entry_Item Bsum.Bsum_sv2
                    Entry_Item Bsum.Gmove_srec0
                End_Row

                Set Form_Width    item 0 to 84
                Set Header_Label  item 0 to "ÑÂõ¶™"
                
                Set Form_Width    item 1 to 85
                Set Header_Label  item 1 to "èú®†ö®ò≠„"
                
                Set Form_Width    item 2 to 132
                Set Header_Label  item 2 to "ëÁ§¶¢¶"
                
                Set Form_Width    item 3 to 98
                Set Header_Label  item 3 to "â‡õ†°Ê™ ©Á§õú©û™ £ú Ç.ä."
                

                //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                        
                Procedure Set Col_Entry_State Integer iItem Integer iState
                    Integer liPrototype
                    Get Prototype_Object to liPrototype
                    Set Entry_State of liPrototype Item iItem to iState
                End_Procedure // Col_Entry_State
                
                Set Col_Entry_State to 0 False
                Set Col_Entry_State to 1 False
                Set Col_Entry_State to 2 False
                Set Col_Entry_State to 3 False
                
                //***************** Predefined Procedures and Functions Section **************
                
                //Set Points          Item 2 to 0
                //Set Numeric_Mask    Item 2 to 14 0 ' ,*'
                
                Procedure Request_Clear_All
                End_Procedure // Request_Clear_All
                
                Procedure Mouse_Up Integer aiWindow Integer iChar_Pos
                End_Procedure // Mouse_Up
                
                Procedure End_Construct_Object
                    Integer iDecimals
                    Forward Send End_Construct_Object
                    Get fiDekadika_Nomismatos  to    iDecimals
                    Set Points Item 2 to iDecimals
                    Set Numeric_Mask Item 2 to 14 iDecimals ' ,*'
                End_Procedure
                
                
                
                
                //AB-StoreEnd

            End_Object    // Bsum_


            //AB-StoreStart
            set label to "Ñß†£‚®¶¨™ ëÁ§¶¢ò Ä•†È§"
            
            
            //AB-StoreEnd

        End_Object    // TP_Synola

        Object TP_Modules is a dbTabPage
            Set Label to "Modules"
            Object Barticl_Garticl_Rec0 is a dbFormSub
                Entry_Item Barticl.Garticl_rec0
                Set Size to 13 90
                Set Location to 14 145
                Set Label_Col_Offset to 140
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Barticl_Garticl_Rec0

            Object Barticl_Gmove_Mrec0 is a dbFormSub
                Entry_Item Barticl.Gmove_mrec0
                Set Size to 13 90
                Set Location to 28 145
                Set Label_Col_Offset to 140
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Barticl_Gmove_Mrec0

            Object Barticl_Gplan_Mrec0 is a dbFormSub
                Entry_Item Barticl.Gplan_mrec0
                Set Size to 13 90
                Set Location to 42 145
                Set Label_Col_Offset to 140
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Barticl_Gplan_Mrec0

            Object Barticl_Carticl_Rec0 is a dbFormSub
                Entry_Item Barticl.Carticl_rec0
                Set Label to "Carticl Rec0:"
                Set Size to 13 90
                Set Location to 64 145
                Set Label_Col_Offset to 140
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Barticl_Carticl_Rec0

            Object Barticl_Varticl_Rec0 is a dbFormSub
                Entry_Item Barticl.Varticl_rec0
                Set Label to "Varticl Rec0:"
                Set Size to 13 90
                Set Location to 79 145
                Set Label_Col_Offset to 140
                Set Form_TypeFace Item 0 to "MS Sans Serif"
            End_Object    // Barticl_Varticl_Rec0

            Object TextBoxSub12 is a TextBoxSub
                Set Label to "Ä®. ·®ü®¶¨ Ç.ä.:"
                Set Location to 11 6
                Set Size to 10 59
            End_Object    // TextBoxSub12

            Object TextBoxSub13 is a TextBoxSub
                Set Label to "Ñöö®ò≠„ °Â§û©û™ Ç.ä.ö†ò ©¨§/©¶£ú§¶:"
                Set Location to 26 6
                Set Size to 10 133
            End_Object    // TextBoxSub13

            Object TextBoxSub14 is a TextBoxSub
                Set Label to "Ñöö®ò≠„ °‡õ†°¶Á ©¨§/©Ê£ú§¶¨ ©´û§ Ç.ä.:"
                Set Location to 42 6
                Set Size to 10 136
            End_Object    // TextBoxSub14


            //AB-StoreStart
            set label to "ëÁ§õú©û £ú ·¢¢ò Modules"
            //AB-StoreEnd

        End_Object    // TP_Modules


        //AB-StoreStart
                                                                                                                                                                                                                                                        
        Function tab_change integer pageNumber integer focus_mode returns integer
            Integer rVal
            Forward Get Tab_Change PageNumber Focus_Mode to rVal
            If (PageNumber=1) Send Beginning_Of_Data to (Bsum_(Tp_Synola(Self))) True
            Function_Return rVal
        End_Function
        
        
        //AB-StoreEnd

    End_Object    // dbTbDlgMove

    Object dbGrpYear is a dbGroupSub
        Set Size to 26 514
        Set Location to 2 6
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 146
            Set Location to 9 47
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 148
            Set Location to 9 245
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Syscurxr.Year_year
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 69
            Set Location to 8 439
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object otxtCompany is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 8
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtCompany

        Object otxtBranch is a TextBoxSub
            Set Label to "ìß¶°/£ò :"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 204
            Set Size to 10 32
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtBranch

        Object otxtYear is a TextBoxSub
            Set Label to "ï®„©û :          "
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 406
            Set Size to 10 23
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // otxtYear

    End_Object    // dbGrpYear

    Object frmIsClosed is a FormSub
        Set Size to 13 18
        Set Location to 77 503
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                                                                        
        Set Shadow_State to True
        
        
        //AB-StoreEnd

    End_Object    // frmIsClosed

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "âÂ§û©û"
        Set Location to 34 6
        Set Size to 10 34
    End_Object    // TextBoxSub1

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "ë¨§ò¢¢ò©Ê£ú§¶™"
        Set Location to 49 6
        Set Size to 10 58
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "èò®ò¢„ß´û™"
        Set Location to 63 6
        Set Size to 10 49
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "Ä†´†¶¢¶öÂò"
        Set Location to 78 6
        Set Size to 10 56
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "Ñß‡§¨£Âò"
        Set Location to 50 222
        Set Size to 10 33
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "Ñß‡§¨£Âò"
        Set Location to 65 222
        Set Size to 10 33
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set Location to 34 298
        Set Size to 10 33
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™ èò®ò©/°¶¨"
        Set Location to 34 405
        Set Size to 10 67
    End_Object    // TextBoxSub8

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "Ä®. Ä®ü®¶¨:"
        Set Location to 78 367
        Set Size to 10 44
    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "Çú§†°Ê ëÁ§¶¢¶"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 259 245
        Set Size to 10 51
        Set FontWeight to 600
    End_Object    // TextBoxSub10

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "íú£·Æ†ò"
        Set Color to clNavy
        Set TextColor to clYellow
        Set Location to 259 150
        Set Size to 10 30
        Set FontWeight to 600
    End_Object    // TextBoxSub11

    Object Barticle_Cn_Code is a dbFormSub

        //AB-StoreTopStart
                                                                                                                                                                                                                                                        
        //AB-StoreTopEnd

        Entry_Item Barticl.Cn_code
        Set Size to 14 126
        Set Location to 92 66
        Set Label_Col_Offset to 4
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn

        //AB-StoreStart
                                                                                                                                                                                                                                                        
        Set Prompt_Object to (sl041(Self))
        
        Procedure Request_Clear
            Send Clear to Cn_DD
        End_Procedure
        
        Procedure Request_Clear_All
            Send Clear to Cn_DD
        End_Procedure
        
        Procedure Prompt_CallBack Integer hPromptID
            String sID
            Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Code1 to sID
            Set FragmaClient_ID Of hPromptID to sID
        End_Procedure
        
        Procedure Prompt
            Send Rebuild_Constraints to Clients_DD
            Send Rebuild_Constraints to CN_DD
            Forward Send Prompt
            Send Show_CN
        End_Procedure
        
        Procedure OnChange
            Send Show_CN
        End_procedure
        
        
        Procedure Find_Next
        End_Procedure
        
        Procedure Find_Previous
        End_Procedure
        
        Procedure Find_GE
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // Barticle_Cn_Code

    Object FormSub1 is a FormSub
        Set Size to 7 9
        Set Location to 96 199
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Shadow_State    to True
        Set Enabled_State   to False
        Set Color           to clLime
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object Cn_Cn_Descr is a dbFormSub
        Entry_Item Barticl.Cn_descr
        Set Size to 13 254
        Set Location to 93 267
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                        
        //AB-StoreEnd

    End_Object    // Cn_Cn_Descr

    Object Textbox1 is a Textbox
        Set Label to "Ñ®ö¶/ìß¶°ò´"
        Set Location to 92 6
        Set Size to 10 49
    End_Object    // Textbox1

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "èú®†ö®ò≠„"
        Set Location to 95 222
        Set Size to 10 39
    End_Object    // TextBoxSub16

    Object oDetail_bn is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Sxetika.bmp"
        Set Size to 21 23
        Set Location to 251 58
        Set Focus_Mode to Pointer_Only

        //AB-StoreStart
        set tooltipvalue to "ë&´¶†ÆúÂò Ä•†¶ö®·≠¶¨ (CTRL+T)"
        Set MDI_Container to (V036(Self))
        
        Procedure OnClick
            If (Current_Record(Baxio_DD(Self))) send Activate_Vw037 to Client_Area
            Else Forward Send OnClick
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // oDetail_bn

    Object oPrint_Bn is a ButtonSub
        Set Label to "Ñ°´Á&ß‡©û"
        Set Bitmap to "Print17.bmp"
        Set Size to 21 23
        Set Location to 251 30
        Set Focus_Mode to Pointer_Only
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Set Visible_State to False
        
        //Set tooltipvalue    to "Ñ°´Á&ß‡©û ·®ü®¶¨ (CTRL+P)"
        //Set MDI_Container   to (V036(Self))
        
        //Procedure OnClick
        //    Integer liGthaa_145 liBarticlStatusE
        //    String lsBtypekinForm lsPrinter lsBtypkinCode lsRecr
        //    Date ldHmnia
        
        //    get field_current_value of Btypkin_dd  Field Btypkin.Btypkin_Form    to lsBtypekinForm
        //    get field_current_value of Btypkin_dd  Field Btypkin.Btypkin_Code    to lsBtypkinCode
        //    get field_current_value of Barticl_dd  Field Barticl.Barticl_Recr    to lsRecr
        //    get field_current_value of Barticl_dd  Field Barticl.barticl_Hmnia   to ldHmnia
        //    get field_current_value of Btypkin_dd  Field Btypkin.Btypkin_Printer to lsPrinter
        
        //    Move 'Lpt1:' to lsPrinter
        
        //    If (lsBtypekinForm = "") send PrintCurrArthro to r044 lsRecr lsPrinter lsBtypkinCode ldHmnia
        //    Else Begin
        //        Move (Append(lsBtypekinForm,(" " + lsRecr))) to lsBtypekinForm
        //        Send DoRunTheForm lsBtypekinForm
        //    End
        //    //Forward Send OnClick
        //End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oPrint_Bn

    Object btnKleisimo is a ButtonSub
        Set Label to "â¢úÂ©†£¶"
        Set Bitmap to "open1.bmp"
        Set Size to 21 23
        Set Location to 251 2
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                        
        Set TooltipValue to "Ä§¶†ö£ò / â¢úÂ©†£¶ ßò®ò©´ò´†°¶Á"
        
        Procedure OnClick
            String sRecr sStr
            Integer isClosed iErr iRecnum ilogik
            Get Field_Current_Value Of Barticl_DD Field Barticl.Barticl_Recr  to sRecr
            Get Field_Current_Value Of Barticl_DD Field Barticl.Recnum        to iRecnum
            Get Field_Current_Value Of Barticl_DD Field Barticl.se_logik      to ilogik
            if (ilogik=1) begin
               Send Stop_Box 'Ñö†§ú ¢¶ö†©´†°¶ß¶Âû©û ßò®ò©´ò´†°¶Á !! É‚§ •ú°¢ú†õÈ§ú† !!' 'ë≠·¢£ò 60112'
               procedure_return
            end
            Move (Trim(sRecr)) to sRecr
            If (sRecr<>'') Begin
                Send Beginning_Of_Data to (dbgrdbmove(tp_bmove(dbtbdlgmove(v036(Self))))) True
                If Status Bmove Begin
                    Begin_Transaction
                        Set psModule        Of (bpEnCmv3(Self)) to (psModule(Self))
                        Set psBarticleRecr  Of (bpEnCmv3(Self)) to sRecr
                        Send DoProcess                          to (bpEnCmv3(Self))
                        Get piLathos        Of (bpEnCmv3(Self)) to iErr
                        If (iErr) Abort_Transaction
                    End_Transaction
                End
                If (iErr) Begin
                         If (iErr=50000) Send Stop_Box "Éú§ ¨ß·®Æú† ò®Æ†°Ê Barticle Recr"                           "Error 50000"
                    Else If (iErr=50001) Send Stop_Box "í¶ ò®Æ†°Ê Barticle Recr õú§ ô®‚üû°ú"                        "Error 50001"
                    Else If (iErr=60002) Send Stop_Box "ë≠·¢£ò ©´û§ ß®¶©ß·üú†ò õ†òö®ò≠„™ Cmoves"                    "Error 60002"
                    Else If (iErr=60003) Send Stop_Box "Éú§ ô®‚üû°ú Cmoves £ú ´¶ Cmoves Recr ´¶¨ ßò®ò©´ò´†°¶Á"      "Error 60003"
                    Else If (iErr=60004) Send Stop_Box "ë≠·¢£ò úöö®ò≠„™ Barticle úßú†´ò òß¶ õ†òö®ò≠„ Cmoves"        "Error 60004"
                    Else If (iErr=50005) Send Stop_Box "Client record not found"                                    "Error 50005"
                    Else If (iErr=50006) Send Stop_Box "Ctypkin record not found"                                   "Error 50006"
                    Else If (iErr=50007) Send Stop_Box "Error While Saving Cmoves"                                  "Error 50007"
                    Else If (iErr=50008) Send Stop_Box "Saved Cmoves but dont have Recr"                            "Error 50008"
                    Else If (iErr=50009) Send Stop_Box "Error While Saving Barticle after Saving Cmoves"            "Error 50009"
                    Else If (iErr=50099) Send Stop_Box "Error While Saving Barticle after Saving Cmoves"            "Error 50099"
                    Else If (iErr=50010) Send Stop_Box "Nomisma record not found"                                   "Error 50010"
                    Else If (iErr=50011) Send Stop_Box "Client record not found while saving cmoves"                "Error 50011"
                    Else If (iErr=50012) Send Stop_Box "No Flags found in Cflagkin to process"                      "Error 50012"
                    Else If (iErr=61000) Send Stop_Box "Found Cmoves Record on Open Barticl"                        "Error 61000"
                    Else If (iErr=59999) Send Stop_Box "Business Process Called without setting psModule property"  "Error 59999"
                    Else If (iErr=77777) Send Stop_Box "Äö§‡©´¶ ¢·ü¶™" "Error Unknown 77777"
                    Else If (iErr=71111) Send Stop_Box "Error while saving Bmove after updating Cmoves_Recr"        "Error 71111"
                    Else If (iErr=60111) Send Stop_Box "Éú§ ô®‚üû°ú Cmoves ö†ò õ†òö®ò≠„"                            "Error 60111"
                End
                Send Find_By_Recnum to Barticl_DD Barticl.File_Number iRecnum
            End
            Else Send Info_Box "Éú§ ô®‚üû°ú úöö®ò≠„ °Â§û©û™ ò•†¶ö®·≠¶¨" "è¢û®¶≠¶®†ò"
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnKleisimo

    Object Barticl_Barticl_Sv2 is a dbFormSub
        Entry_Item Barticl.Barticl_sv0
        Set Size to 13 64
        Set Location to 257 306
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
        //Set Points          Item 0  to 0
        //Set Numeric_Mask    Item 0  to 14 0 '*, '
        
        Set Shadow_State            to True
        Set Enabled_State           to False
        
        Set Color                   to clNavy
        Set TextColor               to clAqua
        
        
        
        //AB-StoreEnd

    End_Object    // Barticl_Barticl_Sv2

    Object Barticl_Barticl_Lines is a dbFormSub
        Entry_Item Barticl.Barticl_lines
        Set Size to 13 37
        Set Location to 258 186
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right

        //AB-StoreStart
                                                                                                                                                                                                                                                        
        Set Shadow_State            to True
        Set Enabled_State           to False
        
        Set Color                   to clNavy
        Set TextColor               to clAqua
        
        
        //AB-StoreEnd

    End_Object    // Barticl_Barticl_Lines

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub3"
        Set Bitmap to "printer.bmp"
        Set Size to 21 27
        Set Location to 253 496

        //AB-StoreStart
        Set TooltipValue to "Ñ°´Áß‡©û èò®ò©´ò´†°¶Á "
        Procedure OnClick
          string wrecr
          Get Field_Current_Value Of barticl_dd Field barticl.barticl_recr To wrecr
          Set psRecr  of (r36(self)) to Wrecr
          Send startreport to (AXIO_BasicReport(r36(Self)))
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 20 125
        Set Location to 107 65
        Object Radio2 is a RadioSub
            Set Label to "Éú©£ú¨£‚§ú™"
            Set Size to 10 62
            Set Location to 7 61
        End_Object    // Radio2

        Object Radio3 is a RadioSub
            Set Label to "é¢ú™"
            Set Size to 10 34
            Set Location to 7 3
        End_Object    // Radio3


        //AB-StoreStart
                
        Procedure Notify_Select_State integer iToItem integer iFromItem
             IF itoitem eq 0 set piepil to 0
             else if itoitem eq 1 set piepil to 1
        
            //for augmentation
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub1

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "Status Ñß†´òöÈ§ "
        Set Location to 113 6
        Set Size to 10 57
    End_Object    // TextBoxSub17


    //AB-StoreStart
        
    Procedure Activate_View Returns Integer
        String  sModule sStr
        Integer rVal idecimals
        Reread SysCurXr
        Unlock
        Move '' to sStr
        Move (append(sstr, 'Ä•†Êö®ò≠ò    '            +'        ' +;
                           (Trim(SyscurXr.Company_Name))   +' - '      +;
                           (Trim(SyscurXr.Branch_Name))    +' - '      +;
                           (Trim(SyscurXr.Year_Descr)))) to sStr
    
        Set Label Of V036 to sStr
    
        If (psFromCmoves(Self)='') Begin
            //Get psMenuModule  Of Main_Menu  to sModule
            Set psModule                  to  '04' ///////// jsjsjs 10/09/2001  to sModule
        End
        Else Begin
            Set psModule to '04'
            Clear Barticl
            Move (psFromCmoves(Self)) to Barticl.Barticl_Recr
            Find Eq Barticl By Index.2 // Barticl_Recr
            If (Found)  Send Find   to Barticl_DD Eq 2
            Else        Send Clear  to Barticl_DD
        End
        Get fiDekadika_Nomismatos  to    iDecimals
        Set Points         of barticl_barticl_sv2 item 0   to idecimals
        Set Numeric_Mask   of barticl_barticl_sv2 item 0   to 14 idecimals " ,*"
        Forward Get Msg_Activate_View to rVal
    
        Set psFromCmoves to ''
    
    End_Procedure
    //
    //Procedure DoRunTheForm for Baseclass String asFile
    //    string sRunPath lsWspcName
    //    Move (WorkspaceName(ProgramWorkspace(Self))) to lsWspcName
    //    get_profile_string ("workspaces\"+lsWspcName) "programpath" to sRunPath
    //    append sRunPath "\" asFile
    //    send DoRunApplication sRunPath
    //End_Procedure // DoRunTheForm
    //
    //Procedure DoDeleteBarticl
    //    Integer liLines
    //    If (Current_Record(Barticl_DD(Self))) Begin
    //        Get Field_Current_Value of Barticl_DD Field Barticl.Barticl_Lines to liLines
    //        If (Not(liLines)) Begin
    //            Send request_Delete to Barticl_dd
    //        End
    //    End
    //    Send request_Clear  to V036
    //End_Procedure // DoDeleteBarticl
    //
    //
    Function GetEponymia Integer aiCode1Or2 String asCode Returns String
        String lsEponymia lsApoCode lsEosCode
        Integer liBtypkin_Anti
    //
    //                 Btypkin_Anti1 û 2  "-1" "É‚§ ìß·®Æú†"
    //                                     "0" "Data Entry"
    //                                     "1" "ä¶öò®†ò©£È§ Çä"
    //                                     "2" "èú¢ò´È§"
    //                                     "3" "è®¶£ûüú¨´È§"
    //                                     "5" "é ë¨§ò¢¢ò©Ê£ú§¶™"
    //                                     "6" "íú¢.èò®ò¢„ß´û™"
    //
        If (aiCode1Or2 = 1) Begin
            Get Field_Current_Value of Btypkin_DD Field Btypkin.Btypkin_Anti1   to liBtypkin_Anti
            Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Apo1 to lsApoCode
            Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Eos1 to lsEosCode
        End
        Else Begin
            If (aiCode1Or2 = 2) Begin
                Get Field_Current_Value of Btypkin_DD Field Btypkin.Btypkin_Anti2   to liBtypkin_Anti
                Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Apo2 to lsApoCode
                Get Field_Current_Value of Btypkin_DD Field Btypkin.Gplan_Code_Eos2 to lsEosCode
            End
        End
    //
        Case Begin
            Case (liBtypkin_Anti = -1) // Éú§ ¨ß·®Æú†
                Case Break
            Case (liBtypkin_Anti =  0) // Data Entry
                Case Break
            Case (liBtypkin_Anti = 1)  // Çú§†°„ ä¶ö†©´†°„
            // jsjsjs 24/01/2001
    //                Clear Gplan
    //                Move gs_Selected_Company_Code to Gplan.Company_Code
    //                Move gs_Selected_Branch_Code  to Gplan.Branch_Code
    //                Move gi_Selected_Year         to Gplan.Year_Year
    //                Move asCode                   to Gplan.Gplan_Code
    //                Find eq Gplan by Index.1 //Gplan:Index.1:Company_Code-Branch_Code-Year_Year-Gplan_Code
    //                [Found] Begin
    //                    If ((asCode >= lsApoCode) and (asCode <= lsEosCode) and (Gplan.Gplan_Yn_Last = 1)) ;
    //                        Move  Gplan.Gplan_Descr1 to lsEponymia
    //                End
            // jsjsjs 24/01/2001
                Case Break
            Case ((liBtypkin_Anti = 2) Or (liBtypkin_Anti = 3)) // Ä®ÆúÂ¶ èú¢ò´È§/è®¶£ûüú¨´È§
                Clear Clients
    //                move syscurxr.company_code  to clients.company_code
    //                move syscurxr.branch_code   to clients.branch_code
    //                move syscurxr.year_year     to clients.year_year
                move (trim(ascode))         to clients.client_id
    //                Find Eq Clients by Index.5 //company_code+branch_code+year_year+Client_ID
                Find Eq Clients by Index.6 //Client_ID
                move clients.client_name    to lseponymia
    //            If (aiCode1Or2=1) Begin
    //                set psclientrecr to clients.client_recr
    //                Send Rebuild_Constraints to Clients_DD
    //                Send Rebuild_Constraints to CN_DD
    //            End
              Case Break
            Case (liBtypkin_Anti = 4) // ???????????
                Case Break
            Case (liBtypkin_Anti = 5) // é ë¨§ò¢¢ò©Ê£ú§¶™
                Case Break
            Case (liBtypkin_Anti = 6) // íú¢. èò®ò¢„ß´û™
                Case Break
        Case End
        Function_Return (Trim(lsEponymia))
    End_Function // SetEponymia
    //
    //
    Procedure Close_Panel
        //Send DoDeleteBarticl
        Set psFromCmoves to ''
        Forward Send Close_Panel
    End_Procedure // Close_Panel
    
    Procedure Request_Cancel
        //Send DoDeleteBarticl
        Set psFromCmoves to ''
        Forward Send Request_Cancel
    End_Procedure // Close_Panel
    
    //
    //On_Key Key_Ctrl+Key_P    Send KeyAction to (oPrint_bn(TP_Bmove(dbTbDlgMove(Self))))
    On_Key Key_Ctrl+Key_T    Send KeyAction to (oDetail_bn(TP_Bmove(dbTbDlgMove(Self))))
    //
    //
    Procedure Show_CN
        String  sCode sCompany sBranch sCustprom sCN_Recr
        String sClient_ID sClient_Recr sCN sCNd sCN_Code sCN_Descr
        Integer iYear ret_val
        Get Value Of Barticle_CN_Code Item 0 to sCode
        Clear Cn
        Move (Trim(sCode))      to CN.CN_Code
        Find Eq CN By Index.5
        If (Found)  Begin
            Move CN.CN_Recr     to sCN_Recr
            Move CN.CN_Descr    to sCN_Descr
            Set Field_Changed_Value Of Barticl_DD  Field Barticl.CN_Recr    to sCN_Recr
            Set Field_Changed_Value Of Barticl_DD  Field Barticl.CN_Descr   to sCN_Descr
            Set Color Of FormSub1 to clLime
        End
        Else Begin
            Send Clear to CN_DD
            Set Field_Changed_Value Of Barticl_DD  Field Barticl.CN_Recr    to ''
            Set Field_Changed_Value Of Barticl_DD  Field Barticl.CN_Descr   to ''
            Set Color Of FormSub1 to clRed
        End
    End_procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V036


//AB-StoreStart
                
                
                
                
                
                
                
//AB-StoreEnd

//AB/ End_Object    // prj
