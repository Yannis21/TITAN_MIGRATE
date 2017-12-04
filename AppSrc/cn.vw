//AB/ Project CN : Constructions
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "CN : Constructions"
//AB/     Set ProjectFileName to "CN.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   CN is a dbViewSubS
//     Cities_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Salesmen_DD is a DataDictionary
//     Constrct_DD is a DataDictionary
//     Mhxanik_DD is a DataDictionary
//     Cn_DD is a DataDictionary
//     Container2 is a dbContainer3d
//       Clients_Client_id is a dbForm
//       Clients_Client_name is a dbForm
//       Clients_Client_afm is a dbForm
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//     Cn_ is a dbGridSub
//     btnPartl is a ButtonSub

// Register all objects
Register_Object btnPartl
Register_Object Cities_DD
Register_Object Clients_Client_afm
Register_Object Clients_Client_id
Register_Object Clients_Client_name
Register_Object Clients_DD
Register_Object CN
Register_Object Cn_
Register_Object Cn_DD
Register_Object Constrct_DD
Register_Object Container2
Register_Object Mhxanik_DD
Register_Object Payresp_DD
Register_Object Salesmen_DD
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7


//AB/ AppBuild VIEW


//AB-StoreTopStart
use v041.vw
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use Txtbox.Sub
Use dbGrid.Sub
Use Button.Sub

Use CITIES.DD
Use PAYRESP.DD
Use CLIENTS.DD
Use SALESMEN.DD
Use CONSTRCT.DD
Use MHXANIK.DD
Use CN.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_CN FOR CN

Object CN is a dbViewSubS

    //AB-StoreTopStart
    Property string psmodule public ''
    Property String psClientID public ''
    
    //AB-StoreTopEnd

    Set Label to "èú¢·´ú™ - Ñ®öò"
    Set Size to 284 513
    Set Location to 2 9

    //AB-DDOStart

    Object Cities_DD is a Cities_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary
        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Payresp_DD(self))

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Salesmen_DD is a Salesmen_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        
        //AB-StoreEnd

    End_Object    // Salesmen_DD

    Object Constrct_DD is a Constrct_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        
        //AB-StoreEnd

    End_Object    // Constrct_DD

    Object Mhxanik_DD is a Mhxanik_DataDictionary

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        
        //AB-StoreEnd

    End_Object    // Mhxanik_DD

    Object Cn_DD is a Cn_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Salesmen_DD(self))
        Set DDO_Server to (Constrct_DD(self))
        Set DDO_Server to (Mhxanik_DD(self))
        Set Constrain_File to Clients.File_Number

        //AB-StoreStart
        Set Read_Only_State to True
        
        
        //AB-StoreEnd

    End_Object    // Cn_DD

    Set Main_DD to (Clients_DD(self))
    Set Server to (Clients_DD(self))

    //AB-DDOEnd

    Object Container2 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 58 491
        Set Location to 6 9
        Object Clients_Client_id is a dbForm
            Entry_Item Clients.Client_id
            Set Size to 13 126
            Set Location to 6 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure Prompt
                Set psModule Of (sl100(Self)) to (psModule(cn(Self)))
                Forward Send Prompt
            End_Procedure
            //AB-StoreEnd

        End_Object    // Clients_Client_id

        Object Clients_Client_name is a dbForm
            Entry_Item Clients.Client_name
            Set Size to 13 306
            Set Location to 20 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_name

        Object Clients_Client_afm is a dbForm
            Entry_Item Clients.Client_afm
            Set Size to 13 71
            Set Location to 36 66
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // Clients_Client_afm

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "â‡õ†°Ê™ èú¢·´û"
            Set Location to 7 7
            Set Size to 10 57
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "Ñß‡§¨£Âò"
            Set Location to 22 7
            Set Size to 10 41
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "Ä.î.ã."
            Set Location to 36 7
            Set Size to 10 35
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub7


        //AB-StoreStart
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
        //AB-StoreEnd

    End_Object    // Container2

    Object Cn_ is a dbGridSub
        Set Main_File to Cn.File_Number
        Set Server to (Cn_DD(self))
        Set Size to 168 493
        Set Location to 70 8
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Cn.Cn_code
            Entry_Item Cn.Cn_descr
            Entry_Item Constrct.Cnt_name
            Entry_Item Salesmen.Sls_name
            Entry_Item Payresp.Presp_name
            Entry_Item Mhxanik.Mhx_name
            Entry_Item Cn.Cn_start_date
            Entry_Item Cn.Hm_tel_fortio
        End_Row

        Set Form_Width    item 0 to 45
        Set Header_Label  item 0 to "â‡õ†°Ê™ "
        
        Set Form_Width    item 1 to 88
        Set Header_Label  item 1 to "èú®†ö®ò≠„ Î®ö¶¨"
        
        Set Form_Width    item 2 to 65
        Set Header_Label  item 2 to "Ñ®ö¶¢·ô¶™"
        
        Set Form_Width    item 3 to 65
        Set Header_Label  item 3 to "è‡¢û´„™"
        
        Set Form_Width    item 4 to 70
        Set Header_Label  item 4 to "ìßúÁü. è¢û®‡£È§"
        
        Set Form_Width    item 5 to 60
        Set Header_Label  item 5 to "ãûÆò§†°Ê™"
        
        Set Form_Width    item 6 to 47
        Set Header_Label  item 6 to "Ñ§ò®•û"
        
        Set Form_Width    item 7 to 47
        Set Header_Label  item 7 to "íú¢.î¶®´Â¶"
        

        //AB-StoreStart
        set read_only_state to true
        
        //AB-StoreEnd

    End_Object    // Cn_

    Object btnPartl is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Filesys3.bmp"
        Set Size to 22 25
        Set Location to 246 11
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                        
        Set TooltipValue to "ãú´ò≠¶®· ©´¶ ò®ÆúÂ¶ ‚®ö‡§"
        
        Procedure OnClick
                string scnid
                get field_current_value of cn_dd field cn.cn_code to scnid
                set pscncode of (v041(self)) to scnid
                send activate_v041
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPartl


    //AB-StoreStart
            
            
    Procedure Activate_View Returns Integer
        String  sModule
        Integer rVal iCurRec
        Get psMenuModule  Of Main_Menu  to sModule
        Set psModule to sModule
        Forward Get Msg_Activate_View to rVal
        If (psClientID(Self)<>'') Begin
            Send Clear to Clients_DD
            Move (psClientID(Self)) to Clients.Client_ID
            Send Find to Clients_DD Eq 6
        End
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // CN


//AB-StoreStart
                        
//AB-StoreEnd

//AB/ End_Object    // prj
