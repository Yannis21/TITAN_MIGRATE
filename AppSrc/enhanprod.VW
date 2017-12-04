//AB/ Project enhanprod:allagh anprod
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "enhanprod:allagh anprod"
//AB/     Set ProjectFileName to "enhanprod.VW"

// Project Object Structure
//   enhanprod is a dbViewSubs
//     Anprod_DD is a DataDictionary
//     Witemxtr_DD is a DataDictionary
//     Witemxtd_DD is a DataDictionary
//     Particle_Partl_Recr is a dbFormSub
//     Particle_Partl_Hmnia is a dbFormSub
//     Particle_Partl_No is a dbFormSub
//     TextBoxSub6 is a TextBoxSub
//     TextBoxSub8 is a TextBoxSub
//     TextBoxSub9 is a TextBoxSub
//     TextBoxSub10 is a TextBoxSub
//     ButtonSub2 is a ButtonSub
//     Witemxtd_Witemx_Code is a dbFormSub
//     TextBoxSub11 is a TextBoxSub
//     Witemxtd_Fpa_From is a dbFormSub
//     TextBoxSub12 is a TextBoxSub
//     Witemxtd_Qty_From is a dbFormSub
//     LineControlSub1 is a LineControlSub
//     TextBoxSub13 is a TextBoxSub
//     fritemapo is a FormSub
//     FormSub1 is a FormSub
//     TextBoxSub14 is a TextBoxSub
//     Fold is a FormSub
//     Fedit is a FormSub
//     Fsxolia is a FormSub
//     itemnew is a FormSub
//     FormSub4 is a FormSub
//     TextBoxSub16 is a TextBoxSub
//     TextBoxSub18 is a TextBoxSub
//     TextBoxSub19 is a TextBoxSub
//     TextBoxSub20 is a TextBoxSub
//     TextBoxSub21 is a TextBoxSub
//     fqty is a FormSub
//     TextBoxSub22 is a TextBoxSub
//     TextBoxSub23 is a TextBoxSub
//     Fsxolia1 is a FormSub
//     ButtonSub3 is a ButtonSub
//     btnCbo2Add is a ButtonSub
//     btnCbo2Sub is a ButtonSub
//     TextBoxSub24 is a TextBoxSub
//     Fnea is a FormSub
//     TextBoxSub25 is a TextBoxSub
//     ButtonSub1 is a ButtonSub
//     frmTropos is a FormSub
//     frmTroposDescr is a FormSub
//     TextBoxSub26 is a TextBoxSub

// Register all objects
Register_Object Anprod_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object btnCbo2Add
Register_Object btnCbo2Sub
Register_Object enhanprod
Register_Object Fedit
Register_Object Fnea
Register_Object Fold
Register_Object FormSub1
Register_Object FormSub4
Register_Object Fsxolia
Register_Object Fsxolia1
Register_Object fqty
Register_Object fritemapo
Register_Object frmTropos
Register_Object frmTroposDescr
Register_Object itemnew
Register_Object LineControlSub1
Register_Object Particle_Partl_Hmnia
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Recr
Register_Object TextBoxSub10
Register_Object TextBoxSub11
Register_Object TextBoxSub12
Register_Object TextBoxSub13
Register_Object TextBoxSub14
Register_Object TextBoxSub16
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub20
Register_Object TextBoxSub21
Register_Object TextBoxSub22
Register_Object TextBoxSub23
Register_Object TextBoxSub24
Register_Object TextBoxSub25
Register_Object TextBoxSub26
Register_Object TextBoxSub6
Register_Object TextBoxSub8
Register_Object TextBoxSub9
Register_Object Witemxtd_DD
Register_Object Witemxtd_Fpa_From
Register_Object Witemxtd_Qty_From
Register_Object Witemxtd_Witemx_Code
Register_Object Witemxtr_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
open gmove
open sysrecg
Use sl22.sl
//Use sl054.sl
//Use sl064.sl
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use Button.Sub
Use Line.Sub
Use Form.Sub

Use ANPROD.DD
Use WITEMXTR.DD
Use WITEMXTD.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_enhanprod FOR enhanprod

Object enhanprod is a dbViewSubs

    //AB-StoreTopStart
        
    Property string  psRecr     Public ''
    property date    pddate     public ''
    property string  psform     public ''
    property string  psitem     public ''
    property string  pssite     public ''
    property integer pimetaf    public 0
    property integer piekleise  public 0
    property string  psmixer    public ''
    property string  pstexnikh  public ''
    property integer pirec      public 0
    
    
    Procedure Request_Cancel
        set value of (frItemApo     (self)) Item 0 to ""
        set value of (fOld          (self)) Item 0 to ""
        set value of (fEdit         (self)) Item 0 to ""
        set value of (fQty          (self)) Item 0 to ""
        set value of (fSxolia       (self)) Item 0 to ''
        set value of (itemnew       (self)) Item 0 to ''
        set value of (fsxolia1      (self)) Item 0 to ''
        set value of (frmTropos     (self)) Item 0 to ""
        set value of (frmTroposDescr(self)) Item 0 to ""
        Forward Send request_Cancel
    End_Procedure
    
    
    //AB-StoreTopEnd

    Set Label to "Ñ§û£‚®‡©û Ä§ò¢È©ú‡§ è®¶†Ê§´‡§"
    Set Size to 301 358
    Set Location to 6 15
    Set Color to 12279296

    //AB-DDOStart

    Object Anprod_DD is a Anprod_DataDictionary
    End_Object    // Anprod_DD

    Object Witemxtr_DD is a Witemxtr_DataDictionary
    End_Object    // Witemxtr_DD

    Object Witemxtd_DD is a Witemxtd_DataDictionary
        Set DDO_Server to (Witemxtr_DD(self))
        Set Constrain_File to Witemxtr.File_Number
    End_Object    // Witemxtd_DD

    Set Main_DD to (Witemxtd_DD(self))
    Set Server to (Witemxtd_DD(self))

    //AB-DDOEnd

    Object Particle_Partl_Recr is a dbFormSub
        Entry_Item Witemxtr.Recr
        Set Size to 13 66
        Set Location to 6 49
        Set Color to 12279296
        Set TextColor to clWhite
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
        
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Recr

    Object Particle_Partl_Hmnia is a dbFormSub
        Entry_Item Witemxtr.Hmnia
        Set Size to 13 66
        Set Location to 23 49
        Set Color to 12279296
        Set TextColor to clYellow
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
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_Hmnia

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Witemxtr.Code
        Set Size to 13 57
        Set Location to 23 147
        Set Color to 12279296
        Set TextColor to clYellow
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
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_Partl_No

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
        Set Label to "ÑÂõ¶™"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 42 12
        Set Size to 10 22
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub10

    Object ButtonSub2 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Exit_m.bmp"
        Set Size to 17 20
        Set Location to 4 329
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to 'Ñß†©´®¶≠„ ©´¶ ßò®ò©´ò´†°Ê'
        
        Procedure OnClick
            set value of (frItemApo     (self)) Item 0 to ""
            set value of (fOld          (self)) Item 0 to ""
            set value of (fEdit         (self)) Item 0 to ""
            set value of (fQty          (self)) Item 0 to ""
            set value of (fSxolia       (self)) Item 0 to ''
            set value of (itemnew       (self)) Item 0 to ''
            set value of (fsxolia1      (self)) Item 0 to ''
            set value of (frmTropos     (self)) Item 0 to ""
            set value of (frmTroposDescr(self)) Item 0 to ""
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object Witemxtd_Witemx_Code is a dbFormSub
        Entry_Item Witemxtd.Witemx_code
        Set Size to 13 67
        Set Location to 43 49
        Set Color to 12279296
        Set TextColor to clYellow
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOff
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        //AB-StoreEnd

    End_Object    // Witemxtd_Witemx_Code

    Object TextBoxSub11 is a TextBoxSub
        Set Label to "í.ã"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 43 124
        Set Size to 12 16
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub11

    Object Witemxtd_Fpa_From is a dbFormSub
        Entry_Item Witemxtd.Fpa_from
        Set Size to 13 35
        Set Location to 43 148
        Set Color to 12279296
        Set TextColor to clYellow
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Points Item 0 to 0
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        
        //AB-StoreEnd

    End_Object    // Witemxtd_Fpa_From

    Object TextBoxSub12 is a TextBoxSub
        Set Label to "è¶©Ê´û´ò É†ò°†§."
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 45 191
        Set Size to 10 62
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub12

    Object Witemxtd_Qty_From is a dbFormSub
        Entry_Item Witemxtd.Qty_from
        Set Size to 13 61
        Set Location to 44 259
        Set Color to 12279296
        Set TextColor to clYellow
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Points Item 0 to 2
        Procedure Prompt
        End_Procedure
        
        Set Enabled_State to False
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        //AB-StoreEnd

    End_Object    // Witemxtd_Qty_From

    Object LineControlSub1 is a LineControlSub
        Set Line_Style to lnBUMP
        Set Line_Thickness to 2
        Set Size to 1 352
        Set Location to 83 1
    End_Object    // LineControlSub1

    Object TextBoxSub13 is a TextBoxSub
        Set Label to "ÑÂõ¶™ Ä§·¢‡©û™"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 96 4
        Set Size to 12 65
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub13

    Object fritemapo is a FormSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 13 59
        Set Location to 98 73
        Set Color to 12279296
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        
        Set Enabled_State to False
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        procedure onchange
            string witem sdescr
            get value item 0 to witem
            move (fsitem(self,witem)) to sdescr
            set value of (formsub1(self)) to sdescr
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // fritemapo

    Object FormSub1 is a FormSub
        Set Size to 13 145
        Set Location to 98 135
        Set Color to 12279296
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        set enabled_state to false
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object TextBoxSub14 is a TextBoxSub
        Set Label to "èò¢†· è¶©Ê´û´ò"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 115 3
        Set Size to 12 61
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub14

    Object Fold is a FormSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 13 59
        Set Location to 117 73
        Set Color to 12279296
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        
        Set Numeric_Mask Item 0 to 14 4 ' ,*'
        
        Set Enabled_State to False
        
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        
        
        //AB-StoreEnd

    End_Object    // Fold

    Object Fedit is a FormSub
        Set Size to 13 58
        Set Location to 135 72
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 14 4 ' ,*'
        //Procedure Prompt
        //End_Procedure
        
        //Set Enabled_State to False
        //Set Color to 16771022
        
        
        //AB-StoreEnd

    End_Object    // Fedit

    Object Fsxolia is a FormSub
        Set Size to 13 275
        Set Location to 154 73
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Fsxolia

    Object itemnew is a FormSub

        //AB-StoreTopStart
                                                
        //AB-StoreTopEnd

        Set Size to 13 59
        Set Location to 190 78
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                
        Set Prompt_Object to (sl22s(current_object))
        
        Procedure Prompt_Callback integer hPrompt
            set Export_Column of hPrompt to 0
            Set Initial_Column of hPrompt to 0
        end_procedure
        
        procedure onchange
            string witem sdescr
            get value item 0                to witem
            move (fsitem(self,witem))       to sdescr
            set value of (formsub4(self))   to sdescr
        end_procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // itemnew

    Object FormSub4 is a FormSub
        Set Size to 13 145
        Set Location to 189 145
        Set Color to 12279296
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        set enabled_state to false
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        //AB-StoreEnd

    End_Object    // FormSub4

    Object TextBoxSub16 is a TextBoxSub
        Set Label to "å‚¶ ÑÂõ¶™ Ä§·¢‡©û™"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 191 6
        Set Size to 10 72
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub16

    Object TextBoxSub18 is a TextBoxSub
        Set Label to "ëÆÊ¢†ò"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 152 2
        Set Size to 12 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub18

    Object TextBoxSub19 is a TextBoxSub
        Set Label to "É†Ê®ü‡©û ß¶©Ê´û´ò™ ò§·¢‡©û™ "
        Set Color to clAqua
        Set Location to 84 2
        Set Size to 10 351
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub19

    Object TextBoxSub20 is a TextBoxSub
        Set Label to "Ñ†©òö‡ö„ §‚ò™ ò§·¢‡©û™"
        Set Color to clAqua
        Set Location to 174 1
        Set Size to 10 352
        Set Justification_Mode to jMode_Center
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub20

    Object TextBoxSub21 is a TextBoxSub
        Set Label to "è¶©Ê´û´ò"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 210 4
        Set Size to 10 44
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub21

    Object fqty is a FormSub
        Set Size to 13 58
        Set Location to 210 78
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 14 4 ' ,*'
        //Procedure Prompt
        //End_Procedure
        
        //Set Enabled_State to False
        //Set Color to 16771022
        
        
        //AB-StoreEnd

    End_Object    // fqty

    Object TextBoxSub22 is a TextBoxSub
        Set Label to "ëÆÊ¢†ò"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 152 2
        Set Size to 12 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub22

    Object TextBoxSub23 is a TextBoxSub
        Set Label to "ëÆÊ¢†ò"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 230 3
        Set Size to 12 33
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub23

    Object Fsxolia1 is a FormSub
        Set Size to 13 211
        Set Location to 231 78
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Fsxolia1

    Object ButtonSub3 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Saveim~1.bmp"
        Set Size to 17 20
        Set Location to 189 329
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        Set TooltipValue to 'Äß¶ü„°ú¨©û Ä¢¢òöÈ§'
        
        Procedure OnClick
            Integer iRecnum iTropos iMin iHour iSec iLen
            number  nqty
            string  sitem ssxolia sOtherItem sUser
            string  sText sTime sMin sHour sSec
            Date    dDate  Shmer dHmnia
        
            Sysdate dDate iHour iMin iSec
        
            Move iHour  to sHour
            Move iMin   to sMin
            Move iSec   to sSec
        
            If (Length(sHour)=1) Insert "0" in sHour at 1
            If (Length(sMin )=1) Insert "0" in sMin  at 1
            If (Length(sSec )=1) Insert "0" in sSec  at 1
            Move (Trim(sHour)+":"+Trim(sMin)+"."+Trim(sSec)) to sTime
        
            get pirec to irecnum
            get value of (itemnew   (self)) Item 0 to sitem
            get value of (fqty      (self)) Item 0 to nqty
            get value of (fsxolia1  (self)) Item 0 to ssxolia
            Get Value Of (fritemapo (self)) Item 0 to sOtherItem
            Get Value Of (frmTropos (self)) Item 0 to iTropos
        
            if (NOT((iTropos=10) Or (iTropos=20) Or (iTropos=30))) begin
               send info_box "é ´®Êß¶™ £ú´ò≠¶®·™ ß®‚ßú† §ò úÂ§ò† 10(Ä§ú¨), 20(à.ï.) „ 30(É.ï.)"  "è¢û®¶≠¶®Âò"
               procedure_return
            end
            if (sOtherItem = '') begin
               send info_box "Éú§ ´¶ß¶üú´ûü„°ò´ú ©ú ·¢¢û Ä' Á¢û ´û™ Âõ†ò™ ©¨§´òö„™"  "è¢û®¶≠¶®Âò"
               procedure_return
            end
            if (sitem = '') begin
               send info_box 'ÑÂõ¶™ Ä§·¢‡©û™ ©ú §‚ò Ñöö®ò≠„ Äßò®òÂ´û´¶' 'è¢û®¶≠¶®Âò'
               procedure_return
            end
            if (nqty = 0) begin
               send info_box 'è¶©Ê´û´ò Ä§·¢‡©û™ ©ú §‚ò Ñöö®ò≠„ Äßò®òÂ´û´û' 'è¢û®¶≠¶®Âò'
               procedure_return
            end
        
            If (iRecnum>0) begin
                clear anprod
                move irecnum to anprod.recnum
                find eq anprod.recnum
                If (Found) Begin
                    move 0          to anprod.recnum
                    move sitem      to anprod.anprod_item
                    move nqty       to anprod.anprod_qty
                    move ssxolia    to anprod.sxolia
                    Move iTropos    to anprod.anprod_cartp
                    saverecord anprod
        
                    clear gmove
                    Get fsLoginUserID to sUser
                    move syscurxr.company_code  to gmove.company_code
                    move syscurxr.branch_code   to gmove.branch_code
                    move syscurxr.year_year     to gmove.year_year
                    move  8                     to gmove.gtypkin_code// Apo Clients
                    move ddate                  to gmove.garticl_hmnia
                    move suser                  to gmove.gplan_code
                    move Clients.Client_Recr    to gmove.garticl_recr
                    reread sysrecg
                    move (sysrecg.gmove_rec0+1) to sysrecg.gmove_rec0
                    move (sysrecg.gmove_rec0+1) to gmove.gmove_rec0
                    saverecord sysrecg
                    unlock
                    Move (Append('',((Trim(SysCurxr.Branch_Site))+(Trim(String(Gmove.Gmove_Rec0)))))) ;
                                                        to Gmove.Gmove_Recr
                    Move (Trim(sUser))                  to Gmove.Login_ID
                    Move dDate                          to Gmove.Hmnia_Metabolhs
                    Move sTime                          to Gmove.Ora_Metabolhs
                    Move Anprod.anprod_form             to gmove.cur_item
                    move anprod.anprod_date             to gmove.cur_hmnia
                    move anprod.sxolia                  to gmove.label1
                    Move Anprod.Anprod_Item             to Gmove.Cur_ID              //
                    Move Anprod.Anprod_Qty              to Gmove.Cur_Stoxos1         //
                    Move Anprod.Anprod_CarTP            to Gmove.Cur_AFM             //
                    Move Anprod.Anprod_ItemTN           to Gmove.Cur_Name            //
                    Move Anprod.Entolh_Recr             to Gmove.Cur_AFM             //
                    Move Anprod.Recnum                  to Gmove.Cur_Antlia          //
                    Move (String(Anprod.Recnum))        to Gmove.Partl_Recr
                    Move (String(Anprod.Recnum))        to Gmove.Pms_Recr
        
                    Move "Éû£†¶¨®öÂò §‚ò™ Ä§·¢‡©û™"     to Gmove.Gmove_Aitiol
                    Move "N" to Gmove.Eidos_Metabolhs
                    saverecord gmove
                End
            End
        
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3

    Object btnCbo2Add is a ButtonSub
        Set Label to "+"
        Set Size to 9 11
        Set Location to 137 44
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                                    
        Set TooltipValue to 'è®¶©ü„°û è¶©Ê´û´ò™ Ä§·¢‡©û™ ©´û§ úß†¢úö£‚§û Ä ì¢û'
        
            Procedure OnClick
                String  sVal
                Number  nPct nPoso nqty
                Integer iPanoKato iMet
             //   Get pnPct                       to nPct
             //   Get pnPoso                      to nPoso
             //   Get piPanoKato                  to iPanoKato
                get value of (fold(self)) to nposo
                get value of (fedit(self)) to nqty
                If (nqty=0)  Begin
                    Send Info_Box 'Éú§ ‚Æú´ú õÈ©ú† ß¶©Ê´û´ò ß¶¨ üò ß®¶©´úüúÂ ©´û§ ¨ß·®Æ¶¨©ò ò§·¢‡©û Ä ì¢û™.\nÜ õ†òõ†°ò©Âò õ†ò°Êßû°ú' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
                set value of (fnea(self)) to (nposo+nqty)
            End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnCbo2Add

    Object btnCbo2Sub is a ButtonSub
        Set Label to "-"
        Set Size to 9 11
        Set Location to 137 58
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                                                                        
        Set TooltipValue to 'Ä≠òÂ®ú©û è¶©Ê´û´ò™ Ä§·¢‡©û™ ©´û§ úß†¢úö£‚§û Ä ì¢û'
        
            Procedure OnClick
                String  sVal
                Number  nPct nPoso nqty
                Integer iPanoKato iMet
             //   Get pnPct                       to nPct
             //   Get pnPoso                      to nPoso
             //   Get piPanoKato                  to iPanoKato
                get value of (fold(self)) to nposo
                get value of (fedit(self)) to nqty
                If (nqty=0)  Begin
                    Send Info_Box 'Éú§ ‚Æú´ú õÈ©ú† ß¶©Ê´û´ò ß¶¨ üò a≠ò†®úüúÂ òßÊ ´û§  ¨ß·®Æ¶¨©ò ò§·¢‡©û Ä ì¢û™.\nÜ õ†òõ†°ò©Âò õ†ò°Êßû°ú' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
                set value of (fnea(self)) to (nposo-nqty)
            End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnCbo2Sub

    Object TextBoxSub24 is a TextBoxSub
        Set Label to "É†Ê®ü‡©û"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 135 4
        Set Size to 12 36
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub24

    Object Fnea is a FormSub
        Set Size to 13 70
        Set Location to 135 222
        Set Color to 12279296
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Form_Datatype Item 0 to Mask_Numeric_Window
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 800
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        Set Numeric_Mask Item 0 to 14 4 ' ,*'
        //Procedure Prompt
        //End_Procedure
        
        //Set Enabled_State to False
        //Set Color to 16771022
        
        
        
        //AB-StoreEnd

    End_Object    // Fnea

    Object TextBoxSub25 is a TextBoxSub
        Set Label to "É†¶®ü‡£‚§û ¶®†©´†°„"
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 134 145
        Set Size to 14 72
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub25

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Saveim~1.bmp"
        Set Size to 17 20
        Set Location to 98 326
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                                            
        Set TooltipValue to 'Ñ§û£‚®‡©û £ú ´†™ ò¢¢òö‚™'
        
        Procedure OnClick
            Integer iRecnum
            number nqty nold narx
            string sitem ssxolia
            String  sUser sText sTime sMin sHour sSec
            Date    dDate  Shmer
            Integer iMin iHour iSec iLen
            Sysdate dDate iHour iMin iSec
            Move iHour  to sHour
            Move iMin   to sMin
            Move iSec   to sSec
            If (Length(sHour)=1) Insert "0" in sHour at 1
            If (Length(sMin )=1) Insert "0" in sMin  at 1
            If (Length(sSec )=1) Insert "0" in sSec  at 1
            Move (Trim(sHour)+":"+Trim(sMin)+"."+Trim(sSec)) to sTime
        
            get pirec to irecnum
            get value of (itemnew(self)) to sitem
            get value of (fnea(self)) to nqty
            get value of (fold(self)) to nold
            get value of (fsxolia(self))  to ssxolia
            if (nqty = 0) begin
               send info_box 'è®¶©¶Æ„ õú§ õ†¶®üÈ©ò´ú ´û§ ß¶©Ê´û´ò'
               goto end_verify
            end
        
            Send Find_By_Recnum to anprod_DD anprod.File_Number iRecnum
            get field_current_value of anprod_dd field anprod.anprod_nqty to narx
            if (nqty<>0) begin
               set field_changed_value of anprod_dd field anprod.anprod_qty to nqty
        ///       set field_changed_value of anprod_dd field anprod.anprod_nqty to (anprod.anprod_nqty + (nqty-nold))
               set field_changed_value of anprod_dd field anprod.sxolia to ssxolia
               Send Request_Save to anprod_DD
               if (narx=0) begin
                  set field_changed_value of anprod_dd field anprod.anprod_nqty to nold
                  Send Request_Save to anprod_DD
               end
            End
            end_verify:
            set value of (itemnew(self)) to ''
            set value of (fsxolia(self)) to ''
            set value of (fnea(self)) to 0
            set value of (fold(self)) to 0
            set value of (fedit(self)) to 0
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object frmTropos is a FormSub

        //AB-StoreTopStart
                
        Function fsmtfanpr integer imetaf returns String
            string speri
            if      (imetaf=10) move 'Ä§ú¨' to speri
            else if (imetaf=20) move 'à.ï'  to speri
            else if (imetaf=30) move 'É.ï'  to speri
            Function_Return speri
        End_Function
        
        
        //AB-StoreTopEnd

        Set Size to 13 58
        Set Location to 250 78
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        procedure onchange
            string  sdescr
            Integer iTr
            get value item 0                            to itr
            move (fsmtfanpr(self,iTr))                  to sdescr
            set value of (frmTroposDescr(self)) Item 0  to sdescr
        end_procedure
        
        
        
        
        //AB-StoreEnd

    End_Object    // frmTropos

    Object frmTroposDescr is a FormSub
        Set Size to 13 145
        Set Location to 251 145
        Set Color to 12279296
        Set TextColor to clWhite
        Set Label_Col_Offset to 2
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
        
        Set Enabled_State to False
        Set Color       to 12279296
        Set TextColor   to clWhite
        
        //AB-StoreEnd

    End_Object    // frmTroposDescr

    Object TextBoxSub26 is a TextBoxSub
        Set Label to "í®. ãú´ò≠¶®·™"
        Set Auto_Size_State to FALSE
        Set Color to 12279296
        Set TextColor to clWhite
        Set Location to 250 6
        Set Size to 10 57
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub26


    //AB-StoreStart
        
    Procedure Activate_View Returns Integer
        Integer rVal irec
    
        set value of (frItemApo     (self)) Item 0 to ""
        set value of (fOld          (self)) Item 0 to ""
        set value of (fEdit         (self)) Item 0 to ""
        set value of (fQty          (self)) Item 0 to ""
        set value of (fSxolia       (self)) Item 0 to ''
        set value of (itemnew       (self)) Item 0 to ''
        set value of (fsxolia1      (self)) Item 0 to ''
        set value of (frmTropos     (self)) Item 0 to ""
        set value of (frmTroposDescr(self)) Item 0 to ""
    
        get pirec to irec
    
        If ((Trim(psRecr(Self))='') Or (irec<=0)) Procedure_Return (-1)
        Else Begin
            Clear witemxtd
            Move (psRecr(Self)) to witemxtd.Recr
            Find Eq witemxtd By Index.2
            Send Find to witemxtd_DD Eq 2
    
            clear Anprod
            move irec to anprod.recnum
            Find eq anprod.recnum
            set value of (fritemapo(self)) Item 0 to anprod.anprod_item
            set value of (foLD     (self)) Item 0 to anprod.anprod_qty
        End
    
        Forward get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // enhanprod


//AB-StoreStart
                    
                    
                    
                    
//AB-StoreEnd

//AB/ End_Object    // prj
