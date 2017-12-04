//AB/ Project vwParAsc
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "vwParAsc"
//AB/     Set ProjectFileName to "vwParAsc.vw"

// Project Object Structure
//   vwParAsc is a dbViewSubs
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     oClients_Client_Id is a dbFormSub
//     oClients_Client_Name is a dbFormSub
//     oCn_Cn_Code is a dbFormSub
//     oCn_Cn_Descr is a dbFormSub
//     oPtyppar_Ptyppar_Code is a dbFormSub
//     oPtyppar_Ptyppar_Descr is a dbFormSub
//     HmApo is a cSyDateForm
//     HmEos is a cSyDateForm
//     frmFileName is a FormSub
//     oButton1 is a ButtonSub
//     oSaveAsDialog1 is a SaveAsDialog

// Register all objects
Register_Object Areas_DD
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object frmFileName
Register_Object HmApo
Register_Object HmEos
Register_Object Mhxanik_DD
Register_Object oButton1
Register_Object oClients_Client_Id
Register_Object oClients_Client_Name
Register_Object oCn_Cn_Code
Register_Object oCn_Cn_Descr
Register_Object oPtyppar_Ptyppar_Code
Register_Object oPtyppar_Ptyppar_Descr
Register_Object oSaveAsDialog1
Register_Object Payresp_DD
Register_Object Ptyppar_DD
Register_Object Salesmen_DD
Register_Object Towns_DD
Register_Object vwParAsc
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use sl100.sl
Use sl041.sl
Use sl012.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use cSyDateForm.Pkg
Use Form.Sub
Use Button.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use AREAS.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use SALESMEN.DD
Use MHXANIK.DD
Use CONSTRCT.DD
Use CN.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_vwParAsc FOR ;
;
Object vwParAsc is a dbViewSubs
    Set Border_Style to Border_Thick
    Set Label to "Ñ•òö‡ö„ èò®ò©´ò´†°È§ ©ú ASCII"
    Set Size to 190 441
    Set Location to 4 6

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

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

    Object Salesmen_DD is a Salesmen_DataDictionary
    End_Object    // Salesmen_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary
    End_Object    // Mhxanik_DD

    Object Constrct_DD is a Constrct_DataDictionary
    End_Object    // Constrct_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set Constrain_File to Clients.File_Number
    End_Object    // Cn_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object oClients_Client_Id is a dbFormSub

        //AB-StoreTopStart
                                                                                    
                                                                                    
        //AB-StoreTopEnd

        Entry_Item Clients.Client_id
        Set Label to "èú¢·´û™"
        Set Size to 13 95
        Set Location to 8 83
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                    
                                                                                    
        //AB-StoreEnd

    End_Object    // oClients_Client_Id

    Object oClients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 229
        Set Location to 8 186
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // oClients_Client_Name

    Object oCn_Cn_Code is a dbFormSub

        //AB-StoreTopStart
                                                                                    
                                                                                    
        //AB-StoreTopEnd

        Entry_Item Cn.Cn_code
        Set Server to (Cn_DD(self))
        Set Label to "Î®ö¶"
        Set Size to 13 95
        Set Location to 25 83
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                    
        Procedure Prompt
            String sClient
            Get Field_Current_Value Of CLients_DD Field Clients.Client_id To sClient
            Set FragmaClient_ID Of sl041 To sClient
            Forward Send Prompt
            Set FragmaClient_ID Of sl041 To ""
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // oCn_Cn_Code

    Object oCn_Cn_Descr is a dbFormSub
        Entry_Item Cn.Cn_descr
        Set Server to (Cn_DD(self))
        Set Size to 13 229
        Set Location to 25 186
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // oCn_Cn_Descr

    Object oPtyppar_Ptyppar_Code is a dbFormSub
        Entry_Item Ptyppar.Ptyppar_code
        Set Server to (Ptyppar_DD(self))
        Set Label to "èò®ò©´ò´†°Ê"
        Set Size to 13 95
        Set Location to 41 83
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // oPtyppar_Ptyppar_Code

    Object oPtyppar_Ptyppar_Descr is a dbFormSub
        Entry_Item Ptyppar.Ptyppar_descr
        Set Server to (Ptyppar_DD(self))
        Set Size to 13 229
        Set Location to 41 186
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // oPtyppar_Ptyppar_Descr

    Object HmApo is a cSyDateForm
        Set Label to "Ü£/§Âò òß¶"
        Set Size to 13 66
        Set Location to 58 83
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // HmApo

    Object HmEos is a cSyDateForm
        Set Label to "Ü£/§Âò ú‡™"
        Set Size to 13 66
        Set Location to 74 83
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_Mask Item 0 to "dd/MM/yyyy"
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // HmEos

    Object frmFileName is a FormSub

        //AB-StoreTopStart
                                                                            
        //AB-StoreTopEnd

        Set Label to "Äß¶ü„°ú¨©û ‡™ ...."
        Set Size to 13 330
        Set Location to 102 83
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                            
        Procedure Prompt
            Boolean bSave
            String sFileTitle sFileName
            Get Show_Dialog Of (oSaveAsDialog1(Self)) To bSave
            If (bSave) Begin
                Get File_Title Of (oSaveAsDialog1(Self)) To sFileTitle
                Get File_Name  Of (oSaveAsDialog1(Self)) To sFileName
                Send Info_Box ("File Title=" +sFileTitle +"\nFile Name=" +sFileName)
                Set Value Of frmFileName Item 0 To sFileName
            End
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // frmFileName

    Object oButton1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ•òö‡ö„ ©´¶†ÆúÂ‡§"
        Set Size to 14 330
        Set Location to 139 83
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            Date ddApo ddEos
            String sClient sErgo sPtyppar sFileName sLabel sD sM sY
            String sQty sQtyDec sStr sAFM lsStr
            Integer iCount iCNCode
            Get Value Of oClients_Client_Id     Item 0 To sClient
            Get Value Of oCN_CN_Code            Item 0 To sErgo
            Get Value Of HmApo                  Item 0 To ddApo
            Get Value Of HmEos                  Item 0 To ddEos
            Get Value Of oPtyppar_Ptyppar_Code  Item 0 To sPtyppar
            Get Value Of frmFileName            Item 0 To sFileName
        
            If (sClient="") Begin
                Send Stop_Box "?e??t?? ?" "Error 1001"
                Procedure_Return
            End
            If (sPtyppar="") Begin
                Send Stop_Box "?a?astat??? ?" "Error 1006"
                Procedure_Return
            End
            If (ddApo="") Begin
                Send Stop_Box "?_e?/??a ap? ?" "Error 1002"
                Procedure_Return
            End
            If (ddEos="") Begin
                Send Stop_Box "?_e?/??a e?? ?" "Error 1003"
                Procedure_Return
            End
            If (ddApo>ddEos) Begin
                Send Stop_Box "?a??as_??e? ?_e??_???e?" "Error 1004"
                Procedure_Return
            End
            If (sFileName="") Begin
                Send Stop_Box "???_a a??e??? ?" "Error 1005"
                Procedure_Return
            End
        
            Get Label To sLabel
            Direct_Output Channel 9 sFileName
            Clear Particle
            Move ddApo To Particle.Partl_Hmnia
            Find gt Particle by Index.3
            While ((Found) and (Particle.Partl_Hmnia<=ddEos))
                If ((sClient=Particle.Client_ID)                        and ;
                    ((sPtyppar="") or (sPtyppar=Particle.Ptyppar_Code)) and ;
                    ((sErgo   ="") or (sErgo=Particle.Cn_code))) Begin
                    Move "" to sAFM
                    Clear CN
                    Move Particle.Cn_code to CN.CN_Code
                    Find Eq CN By Index.5
                    If ((Found) And (Cn.Cn_exfd3<>"")) Move Cn.Cn_exfd3 to sAFM
                    Move CN.Sum_pct_tper to iCNCode
                    Clear Pmoves
                    Move Particle.Partl_Recr To Pmoves.Partl_Recr
                    Find gt Pmoves by Index.3
                    While ((Found=1) and (Particle.Partl_Recr=Pmoves.Partl_Recr))
                        Relate Pmoves
                        Add 1 To iCount
                        Set Label To (String(iCount)+"  -  "+String(Particle.Partl_Hmnia))
                        Move (TheDaySegment(Particle.Partl_Hmnia))   To sD
                        Move (TheMonthSegment(Particle.Partl_Hmnia)) To sM
                        Move (TheYearSegment (Particle.Partl_Hmnia)) To sY
                        If (Length(sD)=1) Insert "0" in sD At 1
                        If (Length(sM)=1) Insert "0" in sM At 1
                        Move (Trim(sY)) To sY
        
                        //------Seira       1   2
                        Write   Channel 9 (Pad(Particle.Pseira_seira                ,02 ))
        
                        //------Arithmos    3   6
                        Write   Channel 9 (Sfi_All_Numbers(Particle.Partl_no        ,6,0))
        
                        //------Hmeromhnia  9   8
                        Write   Channel 9 sD
                        Write   Channel 9 sM
                        Write   Channel 9 sY
        
                        //------AFM         17  9
                        /////Write   Channel 9 (Pad(Clients.Client_AFM                   ,09 ))
                        // Allagh 28/06/2007 Theloun to afm ths trigonikhs paradoshs
                        // Apo ta pedia pou prosthesame sto ergo sto tab page ths trigonikhs paradoshs
                        If (sAFM<>"") Write   Channel 9 (Pad(sAFM                   ,09 ))
                        Else          Write   Channel 9 (Pad(Clients.Client_AFM     ,09 ))
        
                        //------Kodikos Ergou Dikos tous
                        //                  26  3
                        //Clear CN
                        //Move Particle.CN_Recr To CN.CN_Recr
                        //Find eq CN by Index.2
                        Write   Channel 9 (Sfi_All_Numbers(iCNCode                  ,3,0))
                        //Write   Channel 9 (Sfi_All_Numbers(CN.Sum_pct_tper          ,3,0))
                        ////Write   Channel 9 (Sfi_All_Numbers(Right(Particle.Cn_Code,5),5,0))
                        //
        
                        //------Eidos       29 20
                        Write   Channel 9 (Pad(Pmoves.Item_Code                     ,20 ))
        
                        //------Posothta    49 13 (9 psifia, teleia, 3 dekadika
                        Move (Sfi_All_Numbers(Pmoves.Pms_qty,9,3)) To sStr
                        Insert "." in sStr At 10
                        Write   Channel 9 sStr
        
                        //-------------------
                        Writeln Channel 9
                        Find gt Pmoves by Index.3
                    Loop
                End
                Find gt Particle by Index.3
            Loop
            Close_Output Channel 9
            Set Label To sLabel
        
            // js 28/06/2007 Metatroph tou ascii arxeiou
            Move '' to lsStr
            Move (Append(lsStr,'C:\windows\Dns.bat '+(Trim(sFileName)))) to lsStr
            RunProgram Wait  lsStr
        
            Send Info_Box "Ü ú•òö‡ö„ ¶¢¶°¢û®Èüû°ú" "è¢û®¶≠¶®Âò"
        End_Procedure // OnClick
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oButton1

    Object oSaveAsDialog1 is a SaveAsDialog

        //AB-StoreTopStart
                                                                                    
        //AB-StoreTopEnd

        Set Location to 130 7

        //AB-StoreStart
                                                                                    
        Set Filter_String To 'Text Files|*.txt'
        
        Set Initial_Folder To 'C:\'
        Set Dialog_Caption To 'Save As...'
        Set File_Title To 'ParAscii.txt'
        
        Procedure DoCallSaveAsDialog
            Boolean bOk
        
            Get Show_Dialog To bOk
            If (bOk) Begin
        
            End
        End_Procedure // DoCallSaveAsDialog
        //AB-StoreEnd

    End_Object    // oSaveAsDialog1


    //AB-StoreStart
                                        
    Procedure Activate_View Returns Integer
        Integer rVal
        Forward Get Msg_Activate_View To rVal
        Set Value Of frmFileName Item 0 To "C:\ParAscii.txt"
        Procedure_Return rVal
    End_Procedure
    
    //AB-StoreEnd

CD_End_Object    // vwParAsc


//AB-StoreStart
            
//AB-StoreEnd

//AB/ End_Object    // prj
