//AB/ Project changePump
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "changePump"
//AB/     Set ProjectFileName to "changePump.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   changePump is a dbViewSubS
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
//     Wapokat_DD is a DataDictionary
//     Wapomast_DD is a DataDictionary
//     Wax_DD is a DataDictionary
//     Units_DD is a DataDictionary
//     Witemkat_DD is a DataDictionary
//     Fpa_DD is a DataDictionary
//     Item_DD is a DataDictionary
//     Witemx_DD is a DataDictionary
//     Pmoves_DD is a DataDictionary
//     Pmoves_ is a dbGridSub
//     Particle_Partl_Recr is a dbFormSub
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Partl_No is a dbFormSub
//     Particle_Pseira_Seira is a dbFormSub
//     Clients_Client_Id is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object Cities_DD
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object changePump
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Recr
Register_Object Particle_Pseira_Seira
Register_Object Payresp_DD
Register_Object Pmoves_
Register_Object Pmoves_DD
Register_Object Ptyppar_DD
Register_Object TextBoxSub10
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Towns_DD
Register_Object Units_DD
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart

Use sl053.sl
Use sl054.sl
Use sl064.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub
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
Use WAPOKAT.DD
Use WAPOMAST.DD
Use WAX.DD
Use UNITS.DD
Use WITEMKAT.DD
Use FPA.DD
Use ITEM.DD
Use WITEMX.DD
Use PMOVES.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_changePump FOR changePump

Object changePump is a dbViewSubS

    //AB-StoreTopStart
    Property Integer psRecr Public 0
    
    //AB-StoreTopEnd

    Set Label to "Ä¢¢òö„ Ä§´¢Âò™ °ò† éÆ„£ò´¶™"
    Set Size to 230 358
    Set Location to 2 7
    Set Color to 12279296

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

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

    Object Areas_DD is a Areas_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
                
        Set Read_Only_State to True
        
        Set Ordering to 2
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Wapokat_DD is a Wapokat_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary
        Set DDO_Server to (Wapokat_DD(self))

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary
        Set DDO_Server to (Wapomast_DD(self))

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary
        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary
        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
                                
        Set Read_Only_State to True
        
        //AB-StoreEnd

    End_Object    // Witemx_DD

    Object Pmoves_DD is a Pmoves_DataDictionary
        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))
        Set Constrain_File to Particle.File_Number

        //AB-StoreStart
                
        Set Ordering to 3
        
        //AB-StoreEnd

    End_Object    // Pmoves_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object Pmoves_ is a dbGridSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Main_File to Pmoves.File_Number
        Set Server to (Pmoves_DD(self))
        Set Ordering to 3
        Set Size to 150 306
        Set Location to 60 13
        Set Color to 16771022
        Set CurrentRowColor to 16762250
        Set CurrentRowTextColor to clNavy
        Set CurrentCellColor to 16771022
        Set CurrentCellTextColor to clNavy
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Units.Units_code
            Entry_Item Pmoves.Witemx_code
            Entry_Item Witemx.Witemx_descr
            Entry_Item Pmoves.Pump_id
            Entry_Item Pmoves.Car_id
            Entry_Item Pmoves.Zone
        End_Row

        Set Form_Width    item 0 to 0
        Set Header_Label  item 0 to ""
        
        Set Form_Width    item 1 to 58
        Set Header_Label  item 1 to "ÑÂõ¶™"
        
        Set Form_Width    item 2 to 122
        Set Header_Label  item 2 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 3 to 41
        Set Header_Label  item 3 to "Ä§´¢Âò"
        
        Set Form_Width    item 4 to 43
        Set Header_Label  item 4 to "éÆû£ò"
        
        Set Form_Width    item 5 to 35
        Set Header_Label  item 5 to "ÖÈ§û"
        

        //AB-StoreStart
        
        Set Column_Option Item 0 to NoEnter True
        Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 2 to NoEnter True
        
        Set Column_Option Item 0 to NoPut   True
        Set Column_Option Item 1 to NoPut   True
        Set Column_Option Item 2 to NoPut   True
        
        Set Column_Prompt_Object Item 3 to (sl053(Self))
        Set Column_Prompt_Object Item 4 to (sl054(Self))
        Set Column_Prompt_Object Item 5 to (sl064(Self))
        Set Ordering to 3
        
        Procedure Key Integer iKey
            Integer iCol
            Get Current_Col to iCol
            If (NOT((iCol=3) Or (iCol=4) Or (iCol=5))) Forward Send Key iKey
        End_Procedure
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Pmoves_

    Object Particle_Partl_Recr is a dbFormSub
        Entry_Item Particle.Partl_recr
        Set Size to 13 66
        Set Location to 6 49
        Set Color to 12279296
        Set TextColor to clNavy
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color to 16771022
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Recr

    Object Particle_Partl_Hmnia is a dbFormSub
        Entry_Item Particle.Partl_hmnia
        Set Size to 13 66
        Set Location to 23 49
        Set Color to 12279296
        Set TextColor to clNavy
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color to 16771022
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Hmnia

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 57
        Set Location to 23 147
        Set Color to 12279296
        Set TextColor to clNavy
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color to 16771022
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_No

    Object Particle_Pseira_Seira is a dbFormSub
        Entry_Item Particle.Pseira_seira
        Set Size to 13 27
        Set Location to 23 293
        Set Color to 12279296
        Set TextColor to clNavy
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color to 16771022
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Pseira_Seira

    Object Clients_Client_Id is a dbFormSub
        Entry_Item Clients.Client_id
        Set Size to 13 66
        Set Location to 41 49
        Set Color to 12279296
        Set TextColor to clNavy
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color to 16771022
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_Client_Id

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 172
        Set Location to 41 147
        Set Color to 12279296
        Set TextColor to clNavy
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color to 16771022
        
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_Client_Name

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "ëú†®·"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 23 268
        Set Size to 10 22
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 23 118
        Set Size to 10 28
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 23 12
        Set Size to 10 34
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "Recr"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 6 12
        Set Size to 10 17
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "î¶®‚ò™"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 41 12
        Set Size to 10 31
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Saveim~1.bmp"
        Set Size to 17 20
        Set Location to 60 328
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                        
        Set TooltipValue to 'Äß¶ü„°ú¨©û Ä¢¢òöÈ§'
        
        Procedure OnClick
            Integer iRecnum
            Get Field_Current_Value Of Pmoves_DD Field Pmoves.Recnum to iRecnum
            If (iRecnum) Send Request_Save to Pmoves_DD
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Exit_m.bmp"
        Set Size to 17 20
        Set Location to 88 328
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to 'Ñß†©´®¶≠„ ©´¶ ßò®ò©´ò´†°Ê'
        
        Procedure OnClick
            Send Request_Cancel
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // ButtonSub2


    //AB-StoreStart
                        
    Procedure Activate_View Returns Integer
        Integer rVal
        Forward get Msg_Activate_View to rVal
        If (Not(rVal)) Begin
            If (Trim(psRecr(Self))='') Move 1 to rVal
            Else Begin
                Send Clear to Particle_DD
                Move (psRecr(Self)) to Particle.Partl_Recr
                Send Find to Particle_DD Eq 2
                Send Beginning_Of_Data to Pmoves_ True
            End
        End
        Procedure_Return rVal
    End_Procedure
    
    //Procedure Close_Panel
    //    Set Modal_State to False
    //    Forward Send Close_Panel
    //End_Procedure
    
    //Procedure Request_Cancel
    //    Set Modal_State to False
    //    Forward Send Request_Cancel
    //End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // changePump


//AB-StoreStart


//AB-StoreEnd

//AB/ End_Object    // prj
