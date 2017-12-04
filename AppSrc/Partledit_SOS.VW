//AB/ Project Partledit_SOS
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Partledit_SOS"
//AB/     Set ProjectFileName to "Partledit_SOS.VW"
//AB/     Set GenerateFileName to "Partledit.vw"

// Project Object Structure
//   Partledit_SOS is a dbView
//     Particle_DD is a DataDictionary
//     FormSub1 is a FormSub
//     TextBoxSub1 is a TextBoxSub
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

// Register all objects
Register_Object ButtonSub1
Register_Object FormSub1
Register_Object Particle_DD
Register_Object Particle_Partl_Ekleise
Register_Object Particle_Partl_Ektyposh
Register_Object Particle_Partl_No
Register_Object Particle_Partl_Timol
Register_Object Particle_Sap_Hmnia
Register_Object Particle_Timol_Qty
Register_Object Particle_Timol_Ypol
Register_Object Partledit_SOS
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub8


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Form.Sub
Use Txtbox.Sub
Use dbChkbox.Sub
Use dbForm.Sub
Use Button.Sub

Use PARTICLE.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Partledit_SOS FOR Partledit_SOS

Object Partledit_SOS is a dbView

    //AB-StoreTopStart
    
    //AB-StoreTopEnd

    Set Label to "É†Ê®ü‡©û •ú°¢†õ‡£‚§‡§ É.Ä"
    Set Size to 162 135
    Set Location to 12 153

    //AB-DDOStart

    Object Particle_DD is a Particle_DataDictionary
        Set Constrain_File to Particle.File_Number

        //AB-StoreStart
        
        Procedure Request_Delete
        End_Procedure
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object FormSub1 is a FormSub

        //AB-StoreTopStart
                
        //AB-StoreTopEnd

        Set Size to 13 67
        Set Location to 8 53
        Set Label_Col_Offset to 2
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        procedure onkillfocus
            string srecr
            get value item 0 to srecr
            if (srecr<>'') begin
                send clear to particle_dd
                move srecr to particle.partl_recr
                send find to particle_dd eq 2
            end
        end_procedure
        
        
        
        //AB-StoreEnd

    End_Object    // FormSub1

    Object TextBoxSub1 is a TextBoxSub
        Set Label to "â¢ú†õÂ"
        Set Location to 7 5
        Set Size to 10 28
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub1

    Object Particle_Partl_Ekleise is a dbCheckBoxSub
        Entry_Item Particle.Partl_ekleise
        Set Size to 13 20
        Set Location to 25 53
    End_Object    // Particle_Partl_Ekleise

    Object Particle_Partl_Ektyposh is a dbCheckBoxSub
        Entry_Item Particle.Partl_ektyposh
        Set Size to 12 15
        Set Location to 41 53
    End_Object    // Particle_Partl_Ektyposh

    Object Particle_Partl_Timol is a dbCheckBoxSub
        Entry_Item Particle.Partl_timol
        Set Size to 13 17
        Set Location to 58 53
    End_Object    // Particle_Partl_Timol

    Object Particle_Timol_Qty is a dbFormSub
        Entry_Item Particle.Timol_qty
        Set Size to 13 61
        Set Location to 74 53
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
        Set Location to 94 53
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set Numeric_Mask Item 0 to 14 1 ' ,*'
        //AB-StoreEnd

    End_Object    // Particle_Timol_Ypol

    Object TextBoxSub2 is a TextBoxSub
        Set Label to "â¢ú†©´Ê"
        Set Location to 25 5
        Set Size to 12 27
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub2

    Object TextBoxSub3 is a TextBoxSub
        Set Label to "Ñ°´¨ß."
        Set Location to 41 5
        Set Size to 12 24
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub3

    Object TextBoxSub4 is a TextBoxSub
        Set Label to "í†£¶¢."
        Set Location to 58 5
        Set Size to 10 26
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub4

    Object TextBoxSub5 is a TextBoxSub
        Set Label to "è¶©.í†£¶¢."
        Set Location to 74 5
        Set Size to 12 37
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub5

    Object TextBoxSub6 is a TextBoxSub
        Set Label to "ìßÊ¢¶†ß¶"
        Set Location to 94 5
        Set Size to 12 32
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub6

    Object ButtonSub1 is a ButtonSub
        Set Label to "ButtonSub1"
        Set Bitmap to "Saveim~1.bmp"
        Set Size to 17 20
        Set Location to 41 97
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                
        Set TooltipValue to 'Äß¶ü„°ú¨©û Ä¢¢òöÈ§'
        
        Procedure OnClick
            Integer iRecnum itim
            string sekleise sektyp srecr
            number ntimol nypol
            date ddate
            get value of (formsub1(self)) to srecr
            Get Field_Current_Value Of Particle_dd Field Particle.partl_ekleise     to sekleise
            Get Field_Current_Value Of Particle_dd Field Particle.partl_ektyposh    to sektyp
            Get Field_Current_Value Of Particle_dd Field Particle.partl_timol       to itim
            Get Field_Current_Value Of Particle_dd Field Particle.timol_qty         to ntimol
            Get Field_Current_Value Of Particle_dd Field Particle.timol_ypol        to nypol
            Get Field_Current_Value Of Particle_dd Field Particle.sap_hmnia         to ddate
            clear particle
            move srecr to particle.partl_recr
            find eq particle by index.2
            if (not(found)) begin
                send info_box 'Éú§ £ß¶®È §ò úßò§ò´¶ß¶üú´ûüÈ !' 'è¢û®¶≠¶®Âò'
                procedure_return
            end
            Send Find to Particle_DD Eq 2
            If (Found) Begin
                Set Field_Changed_Value Of Particle_DD Field Particle.partl_ekleise    to  sekleise
                Set Field_Changed_Value Of Particle_DD Field Particle.partl_ektyposh   to  sektyp
                Set Field_Changed_Value Of Particle_DD Field Particle.partl_timol      to  itim
                Set Field_Changed_Value Of Particle_DD Field Particle.timol_ypol       to  nypol
                Set Field_Changed_Value Of Particle_DD Field Particle.timol_qty        to  ntimol
                Set Field_Changed_Value Of Particle_DD Field particle.sap_hmnia        to  ddate
        
                Send Request_Save to Particle_DD
            End
            Else Error 6500 'è®Êô¢û£ò úÁ®ú©û™ ´¶¨ èò®ò©´ò´†°¶Á'
        
        // 13/12/2007 Prosthikh JS gia na katagrafei h allagh ths piso portas sto Auditing
        //    reread particle
        //    move sekleise to Particle.partl_ekleise
        //    move sektyp   to Particle.partl_ektyposh
        //    move itim     to Particle.partl_timol
        //    move nypol    to Particle.timol_ypol
        //    move ntimol   to Particle.timol_qty
        //    move ddate    to particle.sap_hmnia
        //    saverecord particle
        //    set value of (formsub1(self)) to ''
        //    unlock
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object TextBoxSub7 is a TextBoxSub
        Set Label to "Ä®†ü£Ê™"
        Set Location to 110 5
        Set Size to 12 29
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub7

    Object Particle_Partl_No is a dbFormSub
        Entry_Item Particle.Partl_no
        Set Size to 13 61
        Set Location to 112 53
        Set Color to clBtnFace
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
        Set Label to "SAP û£/§Âò"
        Set Location to 129 5
        Set Size to 12 41
        Set TypeFace to "MS Sans Serif"
    End_Object    // TextBoxSub8

    Object Particle_Sap_Hmnia is a dbFormSub
        Entry_Item Particle.Sap_hmnia
        Set Size to 13 61
        Set Location to 129 53
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Particle_Sap_Hmnia


    //AB-StoreStart
    
    Procedure Activate_View Returns Integer
        String  sStr sModule sDescr sRecr
        Integer rVal iRecnum
        Send Clear to Particle_DD
        Forward Get Msg_Activate_View to rVal
    End_Procedure
    
    
    //AB-StoreEnd

End_Object    // Partledit_SOS


//AB-StoreStart



//AB-StoreEnd

//AB/ End_Object    // prj
