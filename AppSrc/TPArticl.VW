//AB/ Project TPArticl
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "TPArticl"
//AB/     Set ProjectFileName to "TPArticl.VW"

// Project Object Structure
//   TPArticl is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     Baxiokat_DD is a DataDictionary
//     Tparticl_DD is a DataDictionary
//     Particle_Partl_Recr is a dbFormSub
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Partl_No is a dbFormSub
//     Particle_Pseira_Seira is a dbFormSub
//     Clients_Client_Id is a dbFormSub
//     Clients_Client_Name is a dbFormSub
//     Totamad is a dbFormSub
//     TOTAL_VAT_POSO is a dbFormSub
//     Payam is a dbFormSub
//     Nomisma_Nomisma_Descr is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     TextBoxSub5 is a TextBoxSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub7 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     TPArticl_ is a dbGridSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub11 is a TextBoxSub
//     TextBoxSub12 is a TextBoxSub
//     TextBoxSub13 is a TextBoxSub
//     TextBoxSub14 is a TextBoxSub
//     TextBoxSub15 is a TextBoxSub
//     TextBoxSub16 is a TextBoxSub
//     TextBoxSub17 is a TextBoxSub
//     TextBoxSub18 is a TextBoxSub
//     TextBoxSub19 is a TextBoxSub
//     TextBoxSub20 is a TextBoxSub
//     TextBoxSub21 is a TextBoxSub
//     TextBoxSub22 is a TextBoxSub
//     TextBoxSub24 is a TextBoxSub
//     TextBoxSub25 is a TextBoxSub
//     TextBoxSub26 is a TextBoxSub
//     TextBoxSub27 is a TextBoxSub
//     ButtonSub2 is a ButtonSub
//     TextBoxSub28 is a TextBoxSub
//     TextBoxSub29 is a TextBoxSub
//     TextBoxSub30 is a TextBoxSub
//     TextBoxSub31 is a TextBoxSub
//     ButtonSub3 is a ButtonSub
//     ButtonSub4 is a ButtonSub

// Register all objects
Register_Object Areas_DD
Register_Object Baxiokat_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object ButtonSub4
Register_Object Cities_DD
Register_Object Clients_Client_Id
Register_Object Clients_Client_Name
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object Nomisma_DD
Register_Object Nomisma_Nomisma_Descr
Register_Object Particle_DD
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Recr
Register_Object Particle_Pseira_Seira
Register_Object Payam
Register_Object Payresp_DD
Register_Object Ptyppar_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub15
Register_Object TextBoxSub16
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub26
Register_Object TextBoxSub27
Register_Object TextBoxSub28
Register_Object TextBoxSub29
Register_Object TextBoxSub3
Register_Object TextBoxSub30
Register_Object TextBoxSub31
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Totamad
Register_Object Towns_DD
Register_Object TPArticl
Register_Object TPArticl_
Register_Object Tparticl_DD
Register_Object TOTAL_VAT_POSO
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
                                                        
Open TPErga
Open TPClient
Open TPPresp

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use dbGrid.Sub
Use Button.Sub

Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use COUNTRY.DD
Use TOWNS.DD
Use CITIES.DD
Use PAYRESP.DD
Use AREAS.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD
Use BAXIOKAT.DD
Use TPARTICL.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_TPArticl FOR TPArticl

Object TPArticl is a dbViewSubS

    //AB-StoreTopStart
    Property String     psOldNomismaCode    Public ''
    Property Integer    piDecimals          Public 0
    Property String     psParticleRecr      Public ''
    Property string     psnomismacode       public ''
    
    //AB-StoreTopEnd

    Set Label to "Ä§·¢¨©û ´®Êß‡§ ß¢û®‡£„™"
    Set Size to 263 523
    Set Location to 2 4

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

    Object Payresp_DD is a Payresp_DataDictionary
    End_Object    // Payresp_DD

    Object Areas_DD is a Areas_DataDictionary
    End_Object    // Areas_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Payresp_DD(self))
        Set DDO_Server to (Areas_DD(self))
    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))
    End_Object    // Particle_DD

    Object Baxiokat_DD is a Baxiokat_DataDictionary
    End_Object    // Baxiokat_DD

    Object Tparticl_DD is a Tparticl_DataDictionary
        Set DDO_Server to (Particle_DD(self))
        Set DDO_Server to (Baxiokat_DD(self))
        Set Constrain_File to Particle.File_Number
    End_Object    // Tparticl_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object Particle_Partl_Recr is a dbFormSub
        Entry_Item Particle.Partl_recr
        Set Size to 13 66
        Set Location to 6 42
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                
        //AB-StoreEnd

    End_Object    // Particle_Partl_Recr

    Object Particle_Partl_Hmnia is a dbFormSub
        Entry_Item Particle.Partl_hmnia
        Set Size to 13 66
        Set Location to 23 42
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                                                                                
        //AB-StoreEnd

    End_Object    // Particle_Partl_Hmnia

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 66
        Set Location to 23 170
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Partl_No

    Object Particle_Pseira_Seira is a dbFormSub
        Entry_Item Particle.Pseira_seira
        Set Size to 13 27
        Set Location to 23 294
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Particle_Pseira_Seira

    Object Clients_Client_Id is a dbFormSub
        Entry_Item Clients.Client_id
        Set Size to 13 66
        Set Location to 41 42
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Id

    Object Clients_Client_Name is a dbFormSub
        Entry_Item Clients.Client_name
        Set Size to 13 185
        Set Location to 41 136
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Clients_Client_Name

    Object Totamad is a dbFormSub
        Entry_Item Particle.Partl_totamad
        Set Size to 13 66
        Set Location to 6 379
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                        
                                                        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        
        //AB-StoreEnd

    End_Object    // Totamad

    Object TOTAL_VAT_POSO is a dbFormSub
        Entry_Item particle.Total_Vat_Poso
        Set Size to 13 66
        Set Location to 23 379
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                        
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        
        
        //AB-StoreEnd

    End_Object    // TOTAL_VAT_POSO

    Object Payam is a dbFormSub
        Entry_Item Particle.Partl_payam
        Set Size to 13 66
        Set Location to 41 379
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 12 (piDecimals(Self)) " ,*"
        
        
        //AB-StoreEnd

    End_Object    // Payam

    Object Nomisma_Nomisma_Descr is a dbFormSub
        Entry_Item Nomisma.Nomisma_descr
        Set Size to 13 153
        Set Location to 6 168
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Nomisma_Nomisma_Descr

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "è®¶ î.è.Ä."
        Set Location to 9 335
        Set Size to 10 39
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "î.è.Ä."
        Set Location to 23 341
        Set Size to 10 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "è¢û®‡´‚¶"
        Set Location to 41 341
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "ëú†®·"
        Set Location to 23 265
        Set Size to 10 23
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™"
        Set Location to 23 136
        Set Size to 10 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "åÊ£†©£ò"
        Set Location to 6 136
        Set Size to 10 30
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object TextBoxSub8 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set Location to 23 5
        Set Size to 10 34
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object TextBoxSub9 is a TextBoxSub
        Set Label to "Recr"
        Set Location to 6 5
        Set Size to 10 17
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub9

    Object TextBoxSub10 is a TextBoxSub
        Set Label to "î¶®‚ò™"
        Set Location to 41 5
        Set Size to 10 31
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object TPArticl_ is a dbGridSub
        Set Main_File to Tparticl.File_Number
        Set Server to (Tparticl_DD(self))
        Set Ordering to 1
        Set Size to 101 510
        Set Location to 102 5
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Baxiokat.Baxiokat_descr
            Entry_Item Tparticl.Pct_epi_synolou
            Entry_Item Tparticl.Paralabh_meres
            Entry_Item Tparticl.Xarhtos_meres
            Entry_Item Tparticl.Mera_tou_mhna
            Entry_Item Tparticl.Plhroteo_meres
            Entry_Item Tparticl.Poso
            Entry_Item Tparticl.Paralabh
            Entry_Item Tparticl.Exoflhsh
            Entry_Item Tparticl.Isok
        End_Row

        Set Form_Width    item 0 to 96
        Set Header_Label  item 0 to ""
        
        Set Form_Width    item 1 to 45
        Set Header_Label  item 1 to ""
        
        Set Form_Width    item 2 to 42
        Set Header_Label  item 2 to ""
        
        Set Form_Width    item 3 to 43
        Set Header_Label  item 3 to ""
        
        Set Form_Width    item 4 to 55
        Set Header_Label  item 4 to ""
        
        Set Form_Width    item 5 to 49
        Set Header_Label  item 5 to ""
        
        Set Form_Width    item 6 to 55
        Set Header_Label  item 6 to ""
        
        Set Form_Width    item 7 to 53
        Set Header_Label  item 7 to ""
        
        Set Form_Width    item 8 to 51
        Set Header_Label  item 8 to ""
        
        Set Form_Width    item 9 to 18
        Set Header_Label  item 9 to "éâ"
        Set Column_Checkbox_State  item 9 to True
        

        //AB-StoreStart
                                
        //set column_combo_state item 4 9 to true
        
        //Set Points          item 6 to 0
        Set Column_Option   Item 4 to NoEnter True
        
        Procedure Entering
            Integer Rval
            Forward Send Entering
            Send Beginning_Of_Data True
        End_Procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // TPArticl_

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„ ´®Êß¶¨ ß¢û®‡£„™ ≠¶®‚ò"
        Set Size to 14 248
        Set Location to 230 5
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Procedure Bring_Records_From_Client String asClient String asRecr
            Clear TPClient
            Move asClient to TPClient.Client_ID
            Find Gt TPClient By Index.1 // Client_ID+...
            While ((Found=1) And (TPClient.Client_ID=asClient))
                Clear TPArticl
                Move asRecr                     to TPArticl.Partl_Recr
                Move TPClient.Baxiokat_Code     to TPArticl.Baxiokat_Code
                Move TPClient.Pct_Epi_Synolou   to TPArticl.Pct_Epi_Synolou
                Move TPClient.Paralabh_Meres    to TPArticl.Paralabh_Meres
                Move TPClient.Xarhtos_Meres     to TPArticl.Xarhtos_Meres
                Move TPClient.Plhroteo_Meres    to TPArticl.Plhroteo_Meres
                Move (Sysrecc.TPArticl_Rec0+1)  to TPArticl.TPArticl_Rec0
                Reread Sysrecc
                Move (Sysrecc.TPArticl_Rec0+1)  to Sysrecc.TPArticl_Rec0
                Saverecord Sysrecc
                UnLock
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                 (Trim(String(TPArticl.TPArticl_Rec0))))));
                                                to TPArticl.TPArticl_Recr
                Saverecord TPArticl
                If (TParticl.Recnum) Begin
                    Send Find_By_Recnum to Tparticl_DD TParticl.File_Number TParticl.Recnum
                    Send Calc_All_The_Fields to TPArticl_DD
                    Send request_Save to Tparticl_DD
                End
                Find Gt TPClient By Index.1 // Client_ID+...
            Loop
            Send Beginning_Of_Data to TPArticl_ True
        End_Procedure
        
        Procedure OnClick
            Integer iRecnum iErga rVal iVal iArticle iTpayRecnum iFoundOne
            String sClient sRecr
            Send Beginning_Of_Data to TPArticl_ True
            Get Field_Current_Value Of Particle_DD Field Particle.Recnum        to iArticle
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr    to sRecr
            Get Field_Current_Value Of TPArticl_DD Field TPArticl.Recnum        to iTpayRecnum
            Get Field_Current_Value Of Particle_DD Field Particle.Client_ID     to sClient
            If ((Trim(sClient)<>'') And (iArticle<>0)) Begin
                Get Message_Box "åò ò§´†ö®·Ø‡ ´¶¨™ ´®Êß¶¨™ ß¢û®‡£„™ ´¶¨ ≠¶®‚ò ?" "Ñß†ôúôòÂ‡©û";
                    MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                If (iVal=1) Begin
                    If (iTpayRecnum) Begin
                        Get Message_Box "üò õ†òö®·Ø‡ ´¶¨™ ¨ß·®Æ¶§´ú™ ´®Êß¶¨™ ß¢û®‡£„™\ná‚¢ú´ú ßò®òö£ò´†°· §ò öÂ§ú† ò¨´Ê ?" "Ñß†ôúôòÂ‡©û";
                            MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                        If (iVal=1) Begin
                            Move 0 to iFoundOne
                            Clear TPClient
                            Move sClient to TPClient.Client_ID
                            Find Gt TPClient By Index.1 // TPClient_ID+...
                            If ((Found=1) And (TPClient.Client_ID=sClient)) Move 1 to iFoundOne
                            If (iFoundOne) Begin
                                Clear TPArticl
                                Move sRecr to TPArticl.Partl_Recr
                                Find Gt TPArticl By Index.1 // CN_Code+.....
                                While ((Found=1) And (TPArticl.Partl_Recr=sRecr))
                                    Delete TPArticl
                                    Find Gt TPArticl By Index.1 // Partl_Recr+.....
                                Loop
                                Send Bring_Records_From_Client sClient sRecr
                            End
                            Else Begin
                                Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™\nÉú§ ‚ö†§ú û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
                            End
                        End
                    End
                    Else Begin
                        Move 0 to iFoundOne
                        Clear TPClient
                        Move sClient to TPClient.Client_ID
                        Find Gt TPClient By Index.1 // TPClient_ID+...
                        If ((Found=1) And (TPClient.Client_ID=sClient)) Move 1 to iFoundOne
                        If (iFoundOne) Send Bring_Records_From_Client sClient sRecr
                        Else           Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™" "è¢û®¶≠¶®Âò"
                    End
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "í®Êß¶™"
        Set Location to 76 5
        Set Size to 10 27
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub11

    Object TextBoxSub12 is a TextBoxSub
        Set Label to "è¶©¶©´Ê"
        Set Location to 76 102
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub12

    Object TextBoxSub13 is a TextBoxSub
        Set Label to "è¢û®‡£„™"
        Set Location to 88 5
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub13

    Object TextBoxSub14 is a TextBoxSub
        Set Label to "èò®ò¢òô„"
        Set Location to 76 145
        Set Size to 10 37
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub14

    Object TextBoxSub15 is a TextBoxSub
        Set Label to "(©ú û£‚®ú™)"
        Set Location to 88 146
        Set Size to 10 39
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub15

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "Î§ò®•û"
        Set Location to 65 188
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub16

    Object TextBoxSub17 is a TextBoxSub
        Set Label to "è¢û®‡£„™"
        Set Location to 76 188
        Set Size to 10 35
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub17

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "è¢û®‡´‚¶"
        Set Location to 65 288
        Set Size to 10 36
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object TextBoxSub19 is a TextBoxSub
        Set Label to "(©ú û£‚®ú™)"
        Set Location to 88 288
        Set Size to 10 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub19

    Object TextBoxSub20 is a TextBoxSub
        Set Label to "è¶©Ê"
        Set TextColor to clAqua
        Set Location to 88 357
        Set Size to 10 21
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub20

    Object TextBoxSub21 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set TextColor to clBlue
        Set Location to 76 388
        Set Size to 10 33
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub21

    Object TextBoxSub22 is a TextBoxSub
        Set Label to "èò®ò¢òô„™"
        Set TextColor to clBlue
        Set Location to 88 388
        Set Size to 10 39
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub22

    Object TextBoxSub24 is a TextBoxSub
        Set Label to "Ü£ú®/§Âò"
        Set TextColor to clRed
        Set Location to 76 441
        Set Size to 10 32
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub24

    Object TextBoxSub25 is a TextBoxSub
        Set Label to "è¢û®‡£„™"
        Set TextColor to clRed
        Set Location to 88 441
        Set Size to 10 35
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub25

    Object TextBoxSub26 is a TextBoxSub
        Set Label to "ÑßÂ ë¨§Ê¢¶¨"
        Set Location to 88 101
        Set Size to 10 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub26

    Object TextBoxSub27 is a TextBoxSub
        Set Label to "(©ú û£‚®ú™)"
        Set Location to 88 188
        Set Size to 10 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub27

    Object ButtonSub2 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„ ´®Êß¶¨ ß¢û®‡£„™ ‚®ö¶¨"
        Set Size to 14 248
        Set Location to 230 267
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Procedure Bring_Records_From_Ergo String asErgo String asRecr
            Clear TPErga
            Move asErgo to TPErga.CN_Code
            Find Gt TPErga By Index.1 // CN_Code+...
            While ((Found=1) And (TPErga.CN_Code=asErgo))
                Clear TPArticl
                Move asRecr                     to TPArticl.Partl_Recr
                Move TPErga.Baxiokat_Code       to TPArticl.Baxiokat_Code
                Move TPErga.Pct_Epi_Synolou     to TPArticl.Pct_Epi_Synolou
                Move TPErga.Paralabh_Meres      to TPArticl.Paralabh_Meres
                Move TPErga.Xarhtos_Meres       to TPArticl.Xarhtos_Meres
                Move TPErga.Plhroteo_Meres      to TPArticl.Plhroteo_Meres
                Move (Sysrecc.TPArticl_Rec0+1)  to TPArticl.TPArticl_Rec0
                Reread Sysrecc
                Move (Sysrecc.TPArticl_Rec0+1)  to Sysrecc.TPArticl_Rec0
                Saverecord Sysrecc
                UnLock
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                 (Trim(String(TPArticl.TPArticl_Rec0))))));
                                                to TPArticl.TPArticl_Recr
                Saverecord TPArticl
                If (TParticl.Recnum) Begin
                    Send Find_By_Recnum to Tparticl_DD TParticl.File_Number TParticl.Recnum
                    Send Calc_All_The_Fields to TPArticl_DD
                    Send request_Save to Tparticl_DD
                End
                Find Gt TPErga By Index.1 // CN_Code+...
            Loop
            Send Beginning_Of_Data to TPArticl_ True
        End_Procedure
        
        Procedure OnClick
            Integer iRecnum iErga rVal iVal iArticle iTpayRecnum iFoundOne
            String  sErgo sRecr
            Send Beginning_Of_Data to TPArticl_ True
        
            Get Field_Current_Value Of Particle_DD Field Particle.Recnum        to iArticle
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr    to sRecr
            Get Field_Current_Value Of Particle_DD Field Particle.CN_Code       to sErgo
            Get Field_Current_Value Of TPArticl_DD Field TPArticl.Recnum        to iTpayRecnum
        
            If ((Trim(sErgo)<>'') And (iArticle<>0)) Begin
                Get Message_Box "åò ò§´†ö®·Ø‡ ´¶¨™ ´®Êß¶¨™ ß¢û®‡£„™ ´¶¨ ‚®ö¶¨ ?" "Ñß†ôúôòÂ‡©û";
                    MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                If (iVal=1) Begin
                    If (iTpayRecnum) Begin
                        Get Message_Box "üò õ†òö®·Ø‡ ´¶¨™ ¨ß·®Æ¶§´ú™ ´®Êß¶¨™ ß¢û®‡£„™\ná‚¢ú´ú ßò®òö£ò´†°· §ò öÂ§ú† ò¨´Ê ?" "Ñß†ôúôòÂ‡©û";
                            MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                        If (iVal=1) Begin
                            Move 0 to iFoundOne
                            Clear TPErga
                            Move sErgo to TPErga.CN_Code
                            Find Gt TPErga By Index.1 // CN_Code+...
                            If ((Found=1) And (TPErga.CN_Code=sErgo)) Move 1 to iFoundOne
                            If (iFoundOne) Begin
                                Clear TPArticl
                                Move sRecr to TPArticl.Partl_Recr
                                Find Gt TPArticl By Index.1 // Partl_Recr_Code+.....
                                While ((Found=1) And (TPArticl.Partl_Recr=sRecr))
                                    Delete TPArticl
                                    Find Gt TPArticl By Index.1 // Partl_Recr+.....
                                Loop
                                Send Bring_Records_From_Ergo sErgo sRecr
                            End
                            Else Begin
                                Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™\nÉú§ ‚ö†§ú û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
                            End
                        End
                    End
                    Else Begin
                        Move 0 to iFoundOne
                        Clear TPErga
                        Move sErgo to TPErga.CN_Code
                        Find Gt TPErga By Index.1 // CN_Code+...
                        If ((Found=1) And (TPErga.CN_Code=sErgo)) Move 1 to iFoundOne
                        If (iFoundOne) Send Bring_Records_From_Ergo sErgo sRecr
                        Else Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™" "è¢û®¶≠¶®Âò"
                    End
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object TextBoxSub28 is a TextBoxSub
        Set Label to "Î§ò®•û"
        Set Location to 65 230
        Set Size to 10 42
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub28

    Object TextBoxSub29 is a TextBoxSub
        Set Label to "è¢û®‡£„™"
        Set Location to 76 230
        Set Size to 10 37
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub29

    Object TextBoxSub30 is a TextBoxSub
        Set Label to "(Ü£ú®¶£û§†ò°·)"
        Set Location to 88 230
        Set Size to 10 53
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub30

    Object TextBoxSub31 is a TextBoxSub
        Set Label to "£ú´· òßÊ"
        Set Location to 76 288
        Set Size to 10 38
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub31

    Object ButtonSub3 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„ ´®Êß¶¨ ß¢û®‡£„™ ¨ßúÁü¨§¶¨ ß¢û®‡£„™"
        Set Size to 14 248
        Set Location to 209 267
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Procedure Bring_Records_From_Presp String asPresp String asRecr
            Clear TPPresp
            Move asPresp to TPPresp.PayResp_ID
            Find Gt TPPresp By Index.1 // Presp_ID+...
            While ((Found=1) And (TPPresp.PAYRESP_ID=asPresp))
                Clear TPArticl
                Move asRecr                    to TPArticl.Partl_Recr
                Move TPPresp.Baxiokat_Code     to TPArticl.Baxiokat_Code
                Move TPPresp.Pct_Epi_Synolou   to TPArticl.Pct_Epi_Synolou
                Move TPPresp.Paralabh_Meres    to TPArticl.Paralabh_Meres
                Move TPPresp.Xarhtos_Meres     to TPArticl.Xarhtos_Meres
                Move TPPresp.Plhroteo_Meres    to TPArticl.Plhroteo_Meres
                Move (Sysrecc.TPArticl_Rec0+1) to TPArticl.TPArticl_Rec0
                Reread Sysrecc
                Move (Sysrecc.TPArticl_Rec0+1)  to Sysrecc.TPArticl_Rec0
                Saverecord Sysrecc
                UnLock
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                 (Trim(String(TPArticl.TPArticl_Rec0))))));
                                                to TPArticl.TPArticl_Recr
                Saverecord TPArticl
                If (TParticl.Recnum) Begin
                    Send Find_By_Recnum to Tparticl_DD TParticl.File_Number TParticl.Recnum
                    Send Calc_All_The_Fields to TPArticl_DD
                    Send request_Save to Tparticl_DD
                End
                Find Gt TPPresp By Index.1 // Presp_ID+...
            Loop
            Send Beginning_Of_Data to TPArticl_ True
        End_Procedure
        
        Procedure OnClick
            Integer iRecnum iErga rVal iVal iArticle iTpayRecnum iFoundOne
            String sPresp sRecr
            Send Beginning_Of_Data to TPArticl_ True
            Get Field_Current_Value Of Particle_DD Field Particle.Recnum        to iArticle
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr    to sRecr
            Get Field_Current_Value Of TPArticl_DD Field TPArticl.Recnum        to iTpayRecnum
            Get Field_Current_Value Of Particle_DD Field Particle.Presp_ID     to sPresp
            If ((Trim(sPresp)<>'') And (iArticle<>0)) Begin
                Get Message_Box "åò ò§´†ö®·Ø‡ ´¶¨™ ´®Êß¶¨™ ß¢û®‡£„™ ´¶¨ ¨ß. ß¢û®‡£È§ ?" "Ñß†ôúôòÂ‡©û";
                    MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                If (iVal=1) Begin
                    If (iTpayRecnum) Begin
                        Get Message_Box "üò õ†òö®·Ø‡ ´¶¨™ ¨ß·®Æ¶§´ú™ ´®Êß¶¨™ ß¢û®‡£„™\ná‚¢ú´ú ßò®òö£ò´†°· §ò öÂ§ú† ò¨´Ê ?" "Ñß†ôúôòÂ‡©û";
                            MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                        If (iVal=1) Begin
                            Move 0 to iFoundOne
                            Clear TPPresp
                            Move sPresp to TPPresp.PayResp_ID
                            Find Gt TPPresp By Index.1 // Presp_ID+...
                            If ((Found=1) And (TPPresp.PAYRESP_ID=sPresp)) Move 1 to iFoundOne
                            If (iFoundOne) Begin
                                Clear TPArticl
                                Move sRecr to TPArticl.Partl_Recr
                                Find Gt TPArticl By Index.1 // CN_Code+.....
                                While ((Found=1) And (TPArticl.Partl_Recr=sRecr))
                                    Delete TPArticl
                                    Find Gt TPArticl By Index.1 // Partl_Recr+.....
                                Loop
                                Send Bring_Records_From_Presp sPresp sRecr
                            End
                            Else Begin
                                Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™\nÉú§ ‚ö†§ú û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
                            End
                        End
                    End
                    Else Begin
                        Move 0 to iFoundOne
                        Clear TPPresp
                        Move sPresp to TPPresp.PayResp_ID
                        Find Gt TPPresp By Index.1 // Presp_ID+...
                        If ((Found=1) And (TPPresp.PAYRESP_ID=sPresp)) Move 1 to iFoundOne
                        If (iFoundOne) Send Bring_Records_From_Presp sPresp sRecr
                        Else Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™" "è¢û®¶≠¶®Âò"
                    End
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object ButtonSub4 is a ButtonSub

        //AB-StoreTopStart
                                                                                                                                                                                                
        //AB-StoreTopEnd

        Set Label to "Ñ†©òö‡ö„ ´®Êß¶¨ ß¢û®‡£„™ ¨ß¶°ò´ò©´„£ò´¶™"
        Set Size to 14 248
        Set Location to 209 5
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                                                                
        Procedure Bring_Records_From_Branch String asBranch String asRecr
            Clear TPBranch
            Move asBranch to TPBranch.Branch_Recr
            Find Gt TPBranch By Index.1 // Branch_Recr+...
            While ((Found=1) And (TPBranch.Branch_Recr=asBranch))
                Clear TPArticl
                Move asRecr                     to TPArticl.Partl_Recr
                Move TPBranch.Baxiokat_Code     to TPArticl.Baxiokat_Code
                Move TPBranch.Pct_Epi_Synolou   to TPArticl.Pct_Epi_Synolou
                Move TPBranch.Paralabh_Meres    to TPArticl.Paralabh_Meres
                Move TPBranch.Xarhtos_Meres     to TPArticl.Xarhtos_Meres
                Move TPBranch.Plhroteo_Meres    to TPArticl.Plhroteo_Meres
                Move (Sysrecc.TPArticl_Rec0+1)  to TPArticl.TPArticl_Rec0
                Reread Sysrecc
                Move (Sysrecc.TPArticl_Rec0+1)  to Sysrecc.TPArticl_Rec0
                Saverecord Sysrecc
                UnLock
                Move (Append('',((Trim(SysCurXR.Branch_Site))+;
                                 (Trim(String(TPArticl.TPArticl_Rec0))))));
                                                to TPArticl.TPArticl_Recr
                Saverecord TPArticl
                If (TParticl.Recnum) Begin
                    Send Find_By_Recnum to Tparticl_DD TParticl.File_Number TParticl.Recnum
                    Send Calc_All_The_Fields to TPArticl_DD
                    Send request_Save to Tparticl_DD
                End
                Find Gt TPBranch By Index.1 // Branch_ID+...
            Loop
            Send Beginning_Of_Data to TPArticl_ True
        End_Procedure
        
        Procedure OnClick
            Integer iRecnum iErga rVal iVal iArticle iTpayRecnum iFoundOne
            String sBranch sRecr
        
            Clear Branch
            Move SysCurXr.Company_Code  to Branch.Company_Code
            Move SysCurXr.Branch_Code   to Branch.Branch_Code
            Find Eq Branch By Index.1 // Company_Code+Branch_Code
            Move Branch.Branch_Recr to sBranch
        
            Send Beginning_Of_Data to TPArticl_ True
            Get Field_Current_Value Of Particle_DD Field Particle.Recnum        to iArticle
            Get Field_Current_Value Of Particle_DD Field Particle.Partl_Recr    to sRecr
            Get Field_Current_Value Of TPArticl_DD Field TPArticl.Recnum        to iTpayRecnum
            If ((Trim(sBranch)<>'') And (iArticle<>0)) Begin
                Get Message_Box "åò ò§´†ö®·Ø‡ ´¶¨™ ´®Êß¶¨™ ß¢û®‡£„™ ´¶¨ ¨ß¶°ò´ò©´„£ò´¶™ ?" "Ñß†ôúôòÂ‡©û";
                    MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
                If (iVal=1) Begin
                    If (iTpayRecnum) Begin
                        Get Message_Box "üò õ†òö®·Ø‡ ´¶¨™ ¨ß·®Æ¶§´ú™ ´®Êß¶¨™ ß¢û®‡£„™\ná‚¢ú´ú ßò®òö£ò´†°· §ò öÂ§ú† ò¨´Ê ?" "Ñß†ôúôòÂ‡©û";
                            MB_OKCANCEL (MB_ICONQUESTION IOR MB_DEFBUTTON1) to iVal  // 1=ok 2=cancel
        
                        If (iVal=1) Begin
                            Move 0 to iFoundOne
                            Clear TPBranch
                            Move sBranch to TPBranch.Branch_Recr
                            Find Gt TPBranch By Index.1 // Branch_Recr+...
                            If ((Found=1) And (TPBranch.Branch_Recr=sBranch)) Move 1 to iFoundOne
                            If (iFoundOne) Begin
                                Clear TPArticl
                                Move sRecr to TPArticl.Partl_Recr
                                Find Gt TPArticl By Index.1 // CN_Code+.....
                                While ((Found=1) And (TPArticl.Partl_Recr=sRecr))
                                    Delete TPArticl
                                    Find Gt TPArticl By Index.1 // Partl_Recr+.....
                                Loop
                                Send Bring_Records_From_Branch sBranch sRecr
                            End
                            Else Begin
                                Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™\nÉú§ ‚ö†§ú û õ†òö®ò≠„" "è¢û®¶≠¶®Âò"
                            End
                        End
                    End
                    Else Begin
                        Move 0 to iFoundOne
                        Clear TPBranch
                        Move sBranch to TPBranch.Branch_Recr
                        Find Gt TPBranch By Index.1 // Branch_Recr+...
                        If ((Found=1) And (TPBranch.Branch_Recr=sBranch)) Move 1 to iFoundOne
                        If (iFoundOne) Send Bring_Records_From_Branch sBranch sRecr
                        Else Send Info_Box "Éú§ ô®‚üû°ò§ ´®Êß¶† ß¢û®‡£„™" "è¢û®¶≠¶®Âò"
                    End
                End
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub4


    //AB-StoreStart
                            
    Procedure Set_The_Decimal_Points
        Integer iGridID iAmount
        String  sCode sOld
      //  georg õú§ úÆú† ´†£„ °ò† ©ú´·®ú´ò† ßò§´ò 0
      //  Get Field_Current_Value Of Particle_DD Field Particle.Nomisma_Code to sCode
      //  Get psOldNomismaCode to sOld
        Get psNomismaCode to scode
        Move (Trim(sCode))  to sCode
        Move (Trim(sOld))   to sOld
        If (sCode<>sOld) Begin
            Set psOldNomismaCode to sCode
            Move (TPArticl_(self)) to iGridID
    
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma by Index.1
    
            Set piDecimals to Nomisma.Dekadika
            Set Dynamic_Update_State    Of iGridID to False
            Set Visible_State           Of iGridID to False
    
            // ëú´ò®†©£ò õú°òõ†°È§ ö†ò ´ò ©Á§¶¢ò ´¶¨ ´†£¶¢¶öÂ¶¨
    
            Set Numeric_Mask Of Totamad Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of TOTAL_VAT_POSO   Item 0 to 12 (piDecimals(Self)) " ,*"
            Set Numeric_Mask Of Payam   Item 0 to 12 (piDecimals(Self)) " ,*"
    
            Set Visible_State           Of iGridID to True
            Set Dynamic_Update_State    Of iGridID to True
        End
    
            Move (TPArticl_(self)) to iGridID
            Clear Nomisma
            Move sCode to Nomisma.Nomisma_Code
            Find eq Nomisma by Index.1
            Set piDecimals to Nomisma.Dekadika
            Set Points Of iGridID   Item  6 to Nomisma.Dekadika
            Set Numeric_Mask Of igridid Item 6 to 12 (piDecimals(Self)) " ,*"
    End_procedure
    
    Procedure Activate_View Returns Integer
        Integer rVal
        String sErgo sClient sPresp
        Send Set_The_Decimal_Points
        Clear Particle
        Move (psParticleRecr(Self)) to Particle.Partl_Recr
        Find Eq Particle By Index.2 // Partl_Recr
        If (Found) Send Find to Particle_DD Eq 2
        Get Field_Current_Value Of Particle_DD Field Particle.Presp_ID  to sPresp
        Get Field_Current_Value Of Particle_DD Field Particle.Client_ID to sClient
        Get Field_Current_Value Of Particle_DD Field Particle.CN_Code   to sErgo
        Move (Trim(sErgo))      to sErgo
        Move (Trim(sPresp))     to sPresp
        Move (Trim(sClient))    to sClient
        Set Enabled_State Of ButtonSub1 to (Trim(sClient)<>'')
        Set Enabled_State Of ButtonSub2 to (Trim(sErgo  )<>'')
        Set Enabled_State Of ButtonSub3 to (Trim(sPresp )<>'')
        Send Find to TParticl_DD First_Record 1
        //Send Beginning_Of_Data to Tparticl_ True
        Set Modal_State to True
        Forward get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    Procedure Close_Panel
        Set psFindParticleRecr  Of (Particle(Self)) to (psParticleRecr(Self))
        Set piFromTparticl      Of (Particle(Self)) to true
        Set Modal_State to False
        Forward Send Close_Panel
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // TPArticl


//AB-StoreStart
                                                            
//AB-StoreEnd

//AB/ End_Object    // prj
