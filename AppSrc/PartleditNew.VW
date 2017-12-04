//AB/ Project PartleditNew
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "PartleditNew"
//AB/     Set ProjectFileName to "PartleditNew.VW"
//AB/     Set GenerateFileName to "Partledit.vw"

// Project Object Structure
//   PartleditNew is a dbView
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Particle_Partl_Ekleise is a dbCheckBoxSub
//     Particle_Partl_Ektyposh is a dbCheckBoxSub
//     Particle_Partl_Timol is a dbCheckBoxSub
//     Particle_Timol_Qty is a dbFormSub
//     Particle_Timol_Ypol is a dbFormSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub7 is a TextBoxSub
//     Particle_Partl_No is a dbFormSub
//     TextBoxSub8 is a TextBoxSub
//     Particle_Sap_Hmnia is a dbFormSub
//     Particle_Partl_Totamad is a dbFormSub
//     Particle_Partl_Vatam is a dbFormSub
//     Particle_Fpa_On_Total is a dbFormSub
//     Particle_Total_Vat_Poso is a dbFormSub
//     Particle_Partl_Payam is a dbFormSub
//     Particle_Ss_Arithmos is a dbFormSub
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Pseira_Seira is a dbFormSub
//     Particle_Partl_No is a dbFormSub
//     Ptyppar_Ptyppar_Descr is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     Clients_Client_Id is a dbFormSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Particle_Fpa_On_Total
Register_Object Particle_Partl_Ekleise
Register_Object Particle_Partl_Ektyposh
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Payam
Register_Object Particle_Partl_Timol
Register_Object Particle_Partl_Totamad
Register_Object Particle_Partl_Vatam
Register_Object Particle_Pseira_Seira
Register_Object Particle_Sap_Hmnia
Register_Object Particle_Ss_Arithmos
Register_Object Particle_Timol_Qty
Register_Object Particle_Timol_Ypol
Register_Object Particle_Total_Vat_Poso
Register_Object PartleditNew
Register_Object Payresp_DD
Register_Object Ptyppar_DD
Register_Object Ptyppar_Ptyppar_Descr
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object Towns_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbChkbox.Sub
Use dbForm.Sub
Use Txtbox.Sub
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
Use NOMISMA.DD
Use PARTICLE.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_PartleditNew FOR PartleditNew

Object PartleditNew is a dbView

    //AB-StoreTopStart
                    
    Property Integer    piRecnum    Public  0
    
    //AB-StoreTopEnd

    Set Label to "‘«¦ ®œå˜ €€‘’€’ˆ‰Ž“"
    Set Size to 262 417
    Set Location to 7 8
    Set Color to 18655

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

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
                                                                                                
        Procedure Request_Delete
        End_Procedure
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object Particle_Partl_Ekleise is a dbCheckBoxSub
        Entry_Item Particle.Partl_ekleise
        Set Size to 13 20
        Set Location to 6 75
        Set Color to 18655
    End_Object    // Particle_Partl_Ekleise

    Object Particle_Partl_Ektyposh is a dbCheckBoxSub
        Entry_Item Particle.Partl_ektyposh
        Set Size to 12 15
        Set Location to 22 75
        Set Color to 18655
    End_Object    // Particle_Partl_Ektyposh

    Object Particle_Partl_Timol is a dbCheckBoxSub
        Entry_Item Particle.Partl_timol
        Set Size to 13 17
        Set Location to 39 75
        Set Color to 18655
    End_Object    // Particle_Partl_Timol

    Object Particle_Timol_Qty is a dbFormSub
        Entry_Item Particle.Timol_qty
        Set Size to 13 61
        Set Location to 55 75
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 14 1 ' ,*'
        //AB-StoreEnd

    End_Object    // Particle_Timol_Qty

    Object Particle_Timol_Ypol is a dbFormSub
        Entry_Item Particle.Timol_ypol
        Set Size to 13 61
        Set Location to 75 75
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 14 1 ' ,*'
        //AB-StoreEnd

    End_Object    // Particle_Timol_Ypol

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "‰¢œ ©«æ"
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 6 41
        Set Size to 12 27
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "„¡«¬§."
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 22 44
        Set Size to 12 24
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "’ £¦¢."
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 38 42
        Set Size to 10 26
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "¦©.’ £¦¢."
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 54 31
        Set Size to 12 37
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "“§æ¢¦ §¦"
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 74 35
        Set Size to 12 32
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Saveim~1.bmp"
        Set Size to 17 20
        Set Location to 201 383
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to '€§¦Ÿã¡œ¬©ž €¢¢˜šé¤'
        
        Procedure OnClick
            Integer iRecnum itim
            string sekleise sektyp sRecr sSS
            number ntimol nypol
            date ddate
        
            Set piDoNotCalculate Of Particle_DD to 1
        
            Get Field_Current_Value Of Particle_dd Field Particle.partl_ekleise     to sekleise
            Get Field_Current_Value Of Particle_dd Field Particle.partl_ektyposh    to sektyp
            Get Field_Current_Value Of Particle_dd Field Particle.partl_timol       to itim
            Get Field_Current_Value Of Particle_dd Field Particle.timol_qty         to ntimol
            Get Field_Current_Value Of Particle_dd Field Particle.timol_ypol        to nypol
            Get Field_Current_Value Of Particle_dd Field Particle.sap_hmnia         to ddate
            Get Field_Current_Value Of Particle_dd Field Particle.SS_Arithmos       to sSS
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr        to sRecr
        
            Send Find_By_Recnum Of Particle_DD Particle.File_Number (piRecnum(Self))
        
            if (not(found)) begin
                send info_box 'ƒœ¤ £§¦¨é ¤˜ œ§˜¤˜«¦§¦Ÿœ«žŸé !' '¢ž¨¦­¦¨å˜'
                Set piDoNotCalculate Of Particle_DD to 0
                procedure_return
            end
        
            Set Field_Changed_Value Of Particle_DD Field Particle.partl_ekleise     to  sekleise
            Set Field_Changed_Value Of Particle_DD Field Particle.partl_ektyposh    to  sektyp
            Set Field_Changed_Value Of Particle_DD Field Particle.partl_timol       to  itim
            Set Field_Changed_Value Of Particle_DD Field Particle.timol_ypol        to  nypol
            Set Field_Changed_Value Of Particle_DD Field Particle.timol_qty         to  ntimol
            Set Field_Changed_Value Of Particle_DD Field particle.sap_hmnia         to  ddate
            Set Field_Changed_Value Of Particle_DD Field particle.SS_Arithmos       to  (Trim(sSS))
        
            Send Request_Save to Particle_DD
        
            Set piDoNotCalculate Of Particle_DD to 0
        
        
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "€¨ Ÿ£æª"
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 93 39
        Set Size to 12 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 61
        Set Location to 94 75
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 14 0
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_No

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "SAP ž£/¤å˜"
        Set Color to 18655
        Set TextColor to clWhite
        Set Location to 110 27
        Set Size to 12 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object Particle_Sap_Hmnia is a dbFormSub
        Entry_Item Particle.Sap_hmnia
        Set Size to 13 61
        Set Location to 110 75
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Particle_Sap_Hmnia

    Object Particle_Partl_Totamad is a dbFormSub

        //AB-StoreTopStart
                                                                        
        //AB-StoreTopEnd

        Entry_Item Particle.Partl_totamad
        Set Label to "Totamad"
        Set Size to 13 80
        Set Location to 129 57
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                        
        Set Numeric_Mask Item 0 to 14 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Totamad

    Object Particle_Partl_Vatam is a dbFormSub

        //AB-StoreTopStart
                                                                        
        //AB-StoreTopEnd

        Entry_Item Particle.Partl_vatam
        Set Label to "Vatam"
        Set Size to 13 80
        Set Location to 145 56
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                        
        Set Numeric_Mask Item 0 to 14 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Vatam

    Object Particle_Fpa_On_Total is a dbFormSub

        //AB-StoreTopStart
                                                            
        //AB-StoreTopEnd

        Entry_Item Particle.Fpa_on_total
        Set Label to "FpaOnTotal"
        Set Size to 13 80
        Set Location to 161 56
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                            
        Set Numeric_Mask Item 0 to 14 2 ' ,*'
        
        
        //AB-StoreEnd

    End_Object    // Particle_Fpa_On_Total

    Object Particle_Total_Vat_Poso is a dbFormSub

        //AB-StoreTopStart
                                                                        
        //AB-StoreTopEnd

        Entry_Item Particle.Total_vat_poso
        Set Label to "TotalVATPoso"
        Set Size to 13 80
        Set Location to 183 56
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                        
        Set Numeric_Mask Item 0 to 14 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Particle_Total_Vat_Poso

    Object Particle_Partl_Payam is a dbFormSub

        //AB-StoreTopStart
                                                                        
        //AB-StoreTopEnd

        Entry_Item Particle.Partl_payam
        Set Label to "Payam"
        Set Size to 13 80
        Set Location to 199 56
        Set Label_Col_Offset to 10
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                        
        Set Numeric_Mask Item 0 to 14 2 ' ,*'
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Payam

    Object Particle_Ss_Arithmos is a dbFormSub
        Entry_Item Particle.Ss_arithmos
        Set Label to "Ss Arithmos:"
        Set Size to 13 351
        Set Location to 224 55
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Particle_Ss_Arithmos

    Object Particle_Partl_Hmnia is a dbFormSub
        Entry_Item Particle.Partl_hmnia
        Set Size to 13 179
        Set Location to 52 229
        Set Color to 18655
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Partl_Hmnia

    Object Particle_Pseira_Seira is a dbFormSub
        Entry_Item Particle.Pseira_seira
        Set Size to 13 27
        Set Location to 68 229
        Set Color to 18655
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Pseira_Seira

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 76
        Set Location to 68 259
        Set Color to 18655
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Partl_No

    Object Ptyppar_Ptyppar_Descr is a dbFormSub
        Entry_Item Ptyppar.Ptyppar_descr
        Set Size to 13 179
        Set Location to 37 229
        Set Color to 18655
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Ptyppar_Ptyppar_Descr

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 179
        Set Location to 22 229
        Set Color to 18655
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Name

    Object Clients_Client_Id is a dbFormSub
        Entry_Item Clients.Client_id
        Set Size to 13 179
        Set Location to 6 229
        Set Color to 18655
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Id


    //AB-StoreStart
                    
    Procedure Activate_View Returns Integer
        String  sRecr
        Integer rVal
        If (piRecnum(Self)>0) Begin
            Send Find_By_Recnum Of Particle_DD Particle.File_Number (piRecnum(Self))
            If (Found) Begin
                Forward Get Msg_Activate_View to rVal
            End
            Else Procedure_Return -1
        End
        Procedure_Return -1
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // PartleditNew


//AB-StoreStart
                
                
                
//AB-StoreEnd

//AB/ End_Object    // prj
