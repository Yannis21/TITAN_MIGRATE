//AB/ Project V00:SYSTEM
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V00:SYSTEM"
//AB/     Set ProjectFileName to "V00.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V00 is a dbViewSubs
//     Sysfile_DD is a DataDictionary
//     Sysrecw_DD is a DataDictionary
//     Sysrecc_DD is a DataDictionary
//     Sysfile_Client_Digits is a dbFormSub
//     Textbox1 is a Textbox
//     Sysfile_Check_Afm is a dbCheckBoxSub
//     Textbox3 is a Textbox
//     Sysfile_Enhm_Witemxt is a dbCheckBoxSub
//     Textbox5 is a Textbox
//     Sysfile_Chk_Apothema is a dbCheckBoxSub
//     Textbox6 is a Textbox
//     Sysfile_Enhm_Arxeia is a dbCheckBoxSub
//     Textbox7 is a Textbox
//     Textbox9 is a Textbox
//     Sysfile_Enhm_Arxeia is a dbCheckBoxSub
//     Textbox10 is a Textbox
//     Sysfile_Titan is a dbCheckBoxSub
//     Textbox11 is a Textbox
//     Textbox12 is a Textbox
//     Textbox13 is a Textbox
//     Sysfile_Wapokat_Etoima is a dbFormSub
//     Sysfile_Wapokat_Ayles is a dbFormSub
//     Sysfile_Elleipes is a dbFormSub
//     Sysfile_Mast_Elleipes is a dbFormSub
//     Textbox15 is a Textbox
//     Sysfile_Online_Logist is a dbCheckBoxSub
//     Textbox17 is a Textbox
//     Textbox18 is a Textbox
//     Sysfile_Aajob is a dbFormSub
//     Sysfile_Aadoy is a dbFormSub
//     Sysfile_Use_Sql_Reports is a dbCheckBoxSub
//     Textbox19 is a Textbox
//     Sysfile_Fpa_On_Total is a dbCheckBoxSub
//     Textbox20 is a Textbox
//     Textbox21 is a Textbox
//     Sysrecc_Btnemp_Rec0 is a dbFormSub
//     Textbox22 is a Textbox
//     Sysfile_Version_Number is a dbCheckBoxSub
//     Textbox23 is a Textbox
//     Sysfile_Orio_Myf is a dbFormSub
//     Textbox24 is a Textbox
//     Textbox25 is a Textbox
//     Sysrecg_Pagmoves_Rec0 is a dbCheckBox
//     Textbox26 is a Textbox
//     Sysrecc_Cmoves_Rec0 is a dbFormSub
//     Sysfile_Last_Hmnia_Ekt is a dbFormSub
//     TextBoxSub1 is a TextBoxSub
//     Sysfile_Check_Article is a dbCheckBoxSub
//     Sysrecw_Wtyppar_Rec0 is a dbFormSub
//     TextBoxSub2 is a TextBoxSub
//     Sysrecw_Wseira_Rec0 is a dbCheckBoxSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub
//     Sysfile_Use_Audit is a dbCheckBoxSub
//     Sysfile_Mhdeniko_Partl is a dbCheckBoxSub
//     Sysfile_Company_Name is a dbCheckBoxSub
//     Sysfile_Serial_Number is a dbCheckBoxSub
//     Sysrecc_Clorder_Rec0 is a dbCheckBoxSub
//     TextBoxSub5 is a TextBoxSub
//     LineControlSub1 is a LineControlSub
//     LineControlSub2 is a LineControlSub
//     LineControlSub3 is a LineControlSub

// Register all objects
Register_Object LineControlSub1
Register_Object LineControlSub2
Register_Object LineControlSub3
Register_Object Sysfile_Aadoy
Register_Object Sysfile_Aajob
Register_Object Sysfile_Check_Afm
Register_Object Sysfile_Check_Article
Register_Object Sysfile_Chk_Apothema
Register_Object Sysfile_Client_Digits
Register_Object Sysfile_Company_Name
Register_Object Sysfile_DD
Register_Object Sysfile_Elleipes
Register_Object Sysfile_Enhm_Arxeia
Register_Object Sysfile_Enhm_Witemxt
Register_Object Sysfile_Fpa_On_Total
Register_Object Sysfile_Last_Hmnia_Ekt
Register_Object Sysfile_Mast_Elleipes
Register_Object Sysfile_Mhdeniko_Partl
Register_Object Sysfile_Online_Logist
Register_Object Sysfile_Orio_Myf
Register_Object Sysfile_Serial_Number
Register_Object Sysfile_Titan
Register_Object Sysfile_Use_Audit
Register_Object Sysfile_Use_Sql_Reports
Register_Object Sysfile_Version_Number
Register_Object Sysfile_Wapokat_Ayles
Register_Object Sysfile_Wapokat_Etoima
Register_Object Sysrecc_Btnemp_Rec0
Register_Object Sysrecc_Clorder_Rec0
Register_Object Sysrecc_Cmoves_Rec0
Register_Object Sysrecc_DD
Register_Object Sysrecg_Pagmoves_Rec0
Register_Object Sysrecw_DD
Register_Object Sysrecw_Wseira_Rec0
Register_Object Sysrecw_Wtyppar_Rec0
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object Textbox1
Register_Object Textbox10
Register_Object Textbox11
Register_Object Textbox12
Register_Object Textbox13
Register_Object Textbox15
Register_Object Textbox17
Register_Object Textbox18
Register_Object Textbox19
Register_Object Textbox20
Register_Object Textbox21
Register_Object Textbox22
Register_Object Textbox23
Register_Object Textbox24
Register_Object Textbox25
Register_Object Textbox26
Register_Object Textbox3
Register_Object Textbox5
Register_Object Textbox6
Register_Object Textbox7
Register_Object Textbox9
Register_Object V00


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl022.sl
use sl22s.sl
use sl023.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use dbChkbox.Sub
Use Txtbox.Sub
Use Line.Sub

Use SYSFILE.DD
Use SYSRECW.DD
Use SYSRECC.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V00 FOR V00

Object V00 is a dbViewSubs

    //AB-StoreTopStart
                                                                
                                                                
    //AB-StoreTopEnd

    Set Label to "ë´òüú®‚™ è®¶ö®·££ò´¶™"
    Set Size to 316 507
    Set Location to 3 19

    //AB-DDOStart

    Object Sysfile_DD is a Sysfile_DataDictionary
    End_Object    // Sysfile_DD

    Object Sysrecw_DD is a Sysrecw_DataDictionary
    End_Object    // Sysrecw_DD

    Object Sysrecc_DD is a Sysrecc_DataDictionary
    End_Object    // Sysrecc_DD

    Set Main_DD to (Sysfile_DD(self))
    Set Server to (Sysfile_DD(self))

    //AB-DDOEnd

    Object Sysfile_Client_Digits is a dbFormSub
        Entry_Item Sysfile.Client_digits
        Set Size to 13 19
        Set Location to 4 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysfile_Client_Digits

    Object Textbox1 is a Textbox
        Set Label to "Ä®†ü£Ê™ Øû≠Â‡§ °‡õ†°¶Á ë¨§ò¢¢ò©¶£‚§‡§"
        Set Location to 5 12
        Set Size to 10 145
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox1

    Object Sysfile_Check_Afm is a dbCheckBoxSub
        Entry_Item Sysfile.Check_afm
        Set Size to 13 26
        Set Location to 18 263
    End_Object    // Sysfile_Check_Afm

    Object Textbox3 is a Textbox
        Set Label to "Ñ¢úöÆ¶™ ¶®üÊ´û´ò™ Ä.î.ã"
        Set Location to 20 12
        Set Size to 10 91
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox3

    Object Sysfile_Enhm_Witemxt is a dbCheckBoxSub
        Entry_Item Sysfile.Enhm_witemxt
        Set Size to 13 16
        Set Location to 32 263
    End_Object    // Sysfile_Enhm_Witemxt

    Object Textbox5 is a Textbox
        Set Label to "ë¨££ú´¶Æ„  ´†£¶°ò´ò¢Êö¶¨ Æ®„©û™ ©´¶§ £ú´ò©Æû£ò´†©£Ê "
        Set Location to 33 12
        Set Size to 10 198
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox5

    Object Sysfile_Chk_Apothema is a dbCheckBoxSub
        Entry_Item Sysfile.Chk_apothema
        Set Size to 13 15
        Set Location to 46 263
    End_Object    // Sysfile_Chk_Apothema

    Object Textbox6 is a Textbox
        Set Label to "Ñ¢úöÆ¶™ òß¶ü‚£ò´¶™ ú†õÈ§ ©´û§ í†£¶¢Êöû©û "
        Set Location to 49 12
        Set Size to 10 154
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox6

    Object Sysfile_Enhm_Arxeia is a dbCheckBoxSub
        Entry_Item Sysfile.Enhm_arxeia
        Set Size to 13 16
        Set Location to 61 263
    End_Object    // Sysfile_Enhm_Arxeia

    Object Textbox7 is a Textbox
        Set Label to "çú°Â§û£ò Ñ≠ò®£¶ö„™ ú§û£‚®‡©û £ú ò¢¢òö‚™ Security"
        Set Location to 64 12
        Set Size to 10 182
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox7

    Object Textbox9 is a Textbox
        Set Label to "Ä§ò¢¨´†°Ê™ £ú´ò©Æû£ò´†©£Ê™ ú†õÈ§"
        Set Location to 78 12
        Set Size to 10 125
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox9

    Object Sysfile_Enhm_Arxeia is a dbCheckBoxSub
        Entry_Item Sysfile.Analytika_dap
        Set Size to 13 16
        Set Location to 76 263
    End_Object    // Sysfile_Enhm_Arxeia

    Object Textbox10 is a Textbox
        Set Label to "èò®ò©´ò´†°· òßÊ ßú¢·´û ©´¶§ £ú´ò©Æû£ò´†©£Ê"
        Set Location to 91 12
        Set Size to 12 166
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox10

    Object Sysfile_Titan is a dbCheckBoxSub
        Entry_Item Sysfile.Titan
        Set Size to 13 14
        Set Location to 91 263
    End_Object    // Sysfile_Titan

    Object Textbox11 is a Textbox
        Set Label to "âò´ûö¶®Âò Äß¶ü„°û™ Ñ´¶Â£‡§"
        Set Location to 111 12
        Set Size to 10 102
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox11

    Object Textbox12 is a Textbox
        Set Label to "â‡õ†°Ê™ ÑÂõ¶¨™ Ñ¢¢ú†ß‚™ î¶®´Â¶¨"
        Set Location to 143 12
        Set Size to 12 115
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox12

    Object Textbox13 is a Textbox
        Set Label to "Äß¶ü„°û Ñ¢¢ú†ß‚™ ÑÂõ¶¨™"
        Set Location to 159 12
        Set Size to 12 86
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox13

    Object Sysfile_Wapokat_Etoima is a dbFormSub
        Entry_Item Sysfile.Wapokat_etoima
        Set Size to 13 66
        Set Location to 110 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl022(current_object))
        //AB-StoreEnd

    End_Object    // Sysfile_Wapokat_Etoima

    Object Sysfile_Wapokat_Ayles is a dbFormSub
        Entry_Item Sysfile.Wapokat_ayles
        Set Size to 13 66
        Set Location to 126 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl022(current_object))
        //AB-StoreEnd

    End_Object    // Sysfile_Wapokat_Ayles

    Object Sysfile_Elleipes is a dbFormSub
        Entry_Item Sysfile.Elleipes
        Set Size to 13 66
        Set Location to 143 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl22s(current_object))
        //AB-StoreEnd

    End_Object    // Sysfile_Elleipes

    Object Sysfile_Mast_Elleipes is a dbFormSub
        Entry_Item Sysfile.Mast_elleipes
        Set Size to 13 66
        Set Location to 157 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Prompt_Object to (sl023(current_object))
        //AB-StoreEnd

    End_Object    // Sysfile_Mast_Elleipes

    Object Textbox15 is a Textbox
        Set Label to "âò´ûö¶®Âò Äß¶ü„°û™ Ä'ì¢È§"
        Set Location to 127 12
        Set Size to 12 98
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox15

    Object Sysfile_Online_Logist is a dbCheckBoxSub
        Entry_Item Sysfile.Online_logist
        Set Size to 13 10
        Set Location to 183 263
        Set Visible_State to FALSE
    End_Object    // Sysfile_Online_Logist

    Object Textbox17 is a Textbox
        Set Label to "íú¢ú¨´òÂ¶™ ò/ò úßòööú¢£·´‡§"
        Set Location to 185 12
        Set Size to 10 199
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox17

    Object Textbox18 is a Textbox
        Set Label to "íú¢ú¨´òÂ¶™ ò/ò   É.é.ì"
        Set Location to 200 12
        Set Size to 10 199
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox18

    Object Sysfile_Aajob is a dbFormSub
        Entry_Item Sysfile.Aajob
        Set Size to 13 66
        Set Location to 182 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysfile_Aajob

    Object Sysfile_Aadoy is a dbFormSub
        Entry_Item Sysfile.Aadoy
        Set Size to 13 66
        Set Location to 199 263
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysfile_Aadoy

    Object Sysfile_Use_Sql_Reports is a dbCheckBoxSub
        Entry_Item Sysfile.Use_sql_reports
        Set Size to 13 10
        Set Location to 214 263
    End_Object    // Sysfile_Use_Sql_Reports

    Object Textbox19 is a Textbox
        Set Label to "ï®„©û î¶®¶¢¶ö†°¶Á ú°´¨ß‡´„"
        Set Location to 214 12
        Set Size to 12 199
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox19

    Object Sysfile_Fpa_On_Total is a dbCheckBoxSub
        Entry_Item Sysfile.Fpa_on_total
        Set Size to 13 10
        Set Location to 228 263
    End_Object    // Sysfile_Fpa_On_Total

    Object Textbox20 is a Textbox
        Set Label to "îèÄ ©´¶ ©Á§¶¢¶"
        Set Location to 228 12
        Set Size to 12 199
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox20

    Object Textbox21 is a Textbox
        Set Label to "Ñ§õú†•û £ú´®û´„ Sysrecc Btnemp"
        Set Location to 222 344
        Set Size to 17 66
        Set FontWeight to 600
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox21

    Object Sysrecc_Btnemp_Rec0 is a dbFormSub
        Entry_Item Sysrecc.Btnemp_rec0
        Set Server to (Sysrecc_DD(self))
        Set Size to 13 70
        Set Location to 223 422
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysrecc_Btnemp_Rec0

    Object Textbox22 is a Textbox
        Set Label to "ãú´ò´®¶ß„ Ñ¢¢û§†°È§ Aging"
        Set Location to 243 12
        Set Size to 12 199
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox22

    Object Sysfile_Version_Number is a dbCheckBoxSub
        Entry_Item Sysfile.Version_number
        Set Size to 13 10
        Set Location to 243 263
    End_Object    // Sysfile_Version_Number

    Object Textbox23 is a Textbox
        Set Label to "é®†¶ ã.ì.î    (ò¨©´û®· £úöò¢Á´ú®¶ òß¶)"
        Set Location to 3 343
        Set Size to 25 61
        Set FontWeight to 600
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox23

    Object Sysfile_Orio_Myf is a dbFormSub
        Entry_Item Sysfile.Orio_myf
        Set Size to 13 48
        Set Location to 7 418
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysfile_Orio_Myf

    Object Textbox24 is a Textbox
        Set Label to "Ñ¨®È"
        Set Location to 8 468
        Set Size to 10 19
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox24

    Object Textbox25 is a Textbox
        Set Label to "ÑÂ§ò† É¶£†°„"
        Set Location to 242 355
        Set Size to 10 49
        Set FontWeight to 600
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox25

    Object Sysrecg_Pagmoves_Rec0 is a dbCheckBox
        Entry_Item Sysrecw.Wmoves_rec0
        Set Server to (Sysrecw_DD(self))
        Set Size to 13 14
        Set Location to 243 419
    End_Object    // Sysrecg_Pagmoves_Rec0

    Object Textbox26 is a Textbox
        Set Label to "Ñ§õú†•û £ú´®û´„ Sysrecc"
        Set Location to 198 344
        Set Size to 15 60
        Set FontWeight to 600
        Set Justification_Mode to jMode_Right
        Set TypeFace to "MS Sans Serif"
    End_Object    // Textbox26

    Object Sysrecc_Cmoves_Rec0 is a dbFormSub
        Entry_Item Sysrecc.Cmoves_rec0
        Set Server to (Sysrecc_DD(self))
        Set Size to 13 70
        Set Location to 199 422
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysrecc_Cmoves_Rec0

    Object Sysfile_Last_Hmnia_Ekt is a dbFormSub
        Entry_Item Sysfile.Last_hmnia_ekt
        Set Size to 13 49
        Set Location to 36 418
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Sysfile_Last_Hmnia_Ekt

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "Ü£/§Âò Äß¶ö®ò≠„™ Aging "
        Set Location to 33 343
        Set Size to 25 43
        Set FontWeight to 800
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object Sysfile_Check_Article is a dbCheckBoxSub
        Entry_Item Sysfile.Check_article
        Set Size to 10 9
        Set Location to 68 344
    End_Object    // Sysfile_Check_Article

    Object Sysrecw_Wtyppar_Rec0 is a dbFormSub

        //AB-StoreTopStart
                                                                                                                                        
        //AB-StoreTopEnd

        Entry_Item Sysrecw.Wtyppar_rec0
        Set Server to (Sysrecw_DD(self))
        Set Size to 13 70
        Set Location to 182 422
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                        
                                                                                                                                        
        //AB-StoreEnd

    End_Object    // Sysrecw_Wtyppar_Rec0

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "©ú ´† £ß¶®úÂ §ò £ú´ò©Æû£ò´†©´úÂ °·üú ßò®ò©´ò´†°Ê"
        Set Location to 70 357
        Set Size to 18 124
        Set Justification_Mode to jMode_Left
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object Sysrecw_Wseira_Rec0 is a dbCheckBoxSub
        Entry_Item Sysrecw.Wseira_rec0
        Set Server to (Sysrecw_DD(self))
        Set Size to 13 9
        Set Location to 91 344
    End_Object    // Sysrecw_Wseira_Rec0

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "Ñ¢úöÆ¶™ ©´¶¨™ £ú´ò©Æû£ò´†©£¶Á™"
        Set Location to 61 357
        Set Size to 10 125
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "â¢ú†õ‡£‚§û í†£„ ©´ò ßò®ò©´ò´†°·"
        Set Location to 91 357
        Set Size to 12 124
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object Sysfile_Use_Audit is a dbCheckBoxSub
        Entry_Item Sysfile.Use_audit
        Set Label to "Ñ§ú®ö¶ß¶Âû©û âò´òö®ò≠È§"
        Set Size to 10 115
        Set Location to 112 344
    End_Object    // Sysfile_Use_Audit

    Object Sysfile_Mhdeniko_Partl is a dbCheckBoxSub
        Entry_Item Sysfile.Mhdeniko_partl
        Set Label to "å‚¶ FI3"
        Set Size to 10 42
        Set Location to 244 451
    End_Object    // Sysfile_Mhdeniko_Partl

    Object Sysfile_Company_Name is a dbCheckBoxSub
        Entry_Item Sysfile.Company_name
        Set Label to "èú¢·´ú™ Ä§ò¢¨´†°· SAP"
        Set Size to 10 102
        Set Location to 127 344
    End_Object    // Sysfile_Company_Name

    Object Sysfile_Serial_Number is a dbCheckBoxSub
        Entry_Item Sysfile.Serial_number
        Set Label to "ï®„©û èÄÑ"
        Set Size to 10 54
        Set Location to 143 344
    End_Object    // Sysfile_Serial_Number

    Object Sysrecc_Clorder_Rec0 is a dbCheckBoxSub
        Entry_Item Sysrecc.Clorder_rec0
        Set Server to (Sysrecc_DD(self))
        Set Label to "Ñ°´Áß‡©û ßò®ò©´ò´†°È§ £ú Ñ°ß´‡©û"
        Set Size to 10 141
        Set Location to 159 344
    End_Object    // Sysrecc_Clorder_Rec0

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "ñû≠Âò èò®òööú¢†È§"
        Set Auto_Size_State to FALSE
        Set Location to 183 345
        Set Size to 10 74
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object LineControlSub1 is a LineControlSub
        Set Size to 4 508
        Set Location to 106 1
    End_Object    // LineControlSub1

    Object LineControlSub2 is a LineControlSub
        Set Size to 4 508
        Set Location to 174 1
    End_Object    // LineControlSub2

    Object LineControlSub3 is a LineControlSub
        Set Size to 4 508
        Set Location to 260 1
    End_Object    // LineControlSub3


    //AB-StoreStart
                                                                
    Procedure Activate_View Returns Integer
        integer rval
        Forward Get Msg_Activate_View to rVal
        reread sysfile
        unlock
        reread sysrecc
        unlock
        reread sysrecW
        unlock
        Set Enabled_State Of Sysfile_Use_Audit to (fig_Is_Admin()=1)
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V00


//AB-StoreStart
                
//AB-StoreEnd

//AB/ End_Object    // prj
