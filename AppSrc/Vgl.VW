//AB/ Project Vgl:gefyra se g.l
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Vgl:gefyra se g.l"
//AB/         Set ProjectFileName to "Vgl.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Vgl is a dbViewSubS
//     TextBoxSub1 is a TextBoxSub
//     FormSub1 is a FormSub
//     TextBoxSub2 is a TextBoxSub
//     CheckBoxSub1 is a CheckBoxSub
//     ButtonSub1 is a ButtonSub
//     TextBoxSub3 is a TextBoxSub
//     TextBoxSub4 is a TextBoxSub

// Register all objects
Register_Object ButtonSub1
Register_Object CheckBoxSub1
Register_Object FormSub1
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextBoxSub4
Register_Object Vgl


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open tmplg
    use doenhmgl.dg
    use doenhgls.dg
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Txtbox.Sub
    Use Form.Sub
    Use Chkbox.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Vgl FOR Vgl

    Object Vgl is a dbViewSubS

        //AB-StoreTopStart
        property integer pierr public 0
        //AB-StoreTopEnd

        Set Label to "é®†©´†°¶ß¶Âû©û úöö®ò≠È§ ú£ß¶®†°¶Á ö‚≠¨®ò £ú Ç.ä"
        Set Size to 74 300
        Set Location to 8 5

        //AB-DDOStart


        //AB-DDOEnd

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "ÉÈ©´ú û£/§Âò Ç‚≠¨®ò™ £ú Ç.ä"
            Set Location to 8 3
            Set Size to 10 107
        End_Object    // TextBoxSub1

        Object FormSub1 is a FormSub
            Set Size to 13 52
            Set Location to 6 117
            Set TextColor to clNavy
            Set Label_Col_Offset to 2
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Form_FontWeight Item 0 to 800
            Set Form_Mask Item 0 to "dd/MM/yyyy"
        End_Object    // FormSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ë¨ö°ú§´®‡´†°‚™ úöö®ò≠‚™"
            Set Location to 35 3
            Set Size to 10 94
        End_Object    // TextBoxSub2

        Object CheckBoxSub1 is a CheckBoxSub
            Set Size to 13 25
            Set Location to 34 117
            Set TextColor to clNavy
        End_Object    // CheckBoxSub1

        Object ButtonSub1 is a ButtonSub
            Set Label to "ButtonSub1"
            Set Bitmap to "aggel0.bmp"
            Set Size to 22 24
            Set Location to 35 269

            //AB-StoreStart
            Set TooltipValue to "Ñ§û£‚®‡©û Ç.ä £ú úöö®ò≠‚™ ú£ß¶®†°¶Á"
            Procedure OnClick
               date dhmnia
               integer isum  ibpoid ierr imsg iError_Object_ID
               Get checked_State of (checkBoxSub1(self))  to isum
               get value of (formsub1(self))         to dhmnia
               get yesno_box "åò ß®¶Æ‡®„©‡ ©´û§ õû£†¶¨®öÂò ·®ü®‡§ ©´û§ Ç.ä ??" to imsg
               If (imsg =MBR_yes) begin
                   if (isum=0) begin
                      begin_transaction
                      Move  Error_Object_ID  to iError_Object_ID
                      move (Doenhmgl(Self)) to iBPOID
                      Set pddate  of iBPOID to dhmnia
                      Send DoProcess      to iBPOID
                      end_transaction
                      move iError_Object_ID to Error_Object_ID
                      [err] Send Info_Box 'èò®¶¨©†·©´û°ú ·ö§‡©´¶ ¢·ü¶™ °ò´· ´û§ õ†òõ†°ò©Âò' 'è¢û®¶≠¶®Âò'
                   end
                   else begin
                      if (dhmnia='') begin
                         send stop_box 'Ü£/§Âò ©¨ö°ú§´®‡´†°È§ úöö®ò≠È§ òßò®òÂ´û´û !!' 'ë≠·¢£ò'
                         procedure_return
                      end
                      else begin
                         zerofile tmplg
                         begin_transaction
                         Move  Error_Object_ID  to iError_Object_ID
                         move (Doenhgls(Self)) to iBPOID
                         Set pddate  of iBPOID to dhmnia
                         Send DoProcess      to iBPOID
                         end_transaction
                         move iError_Object_ID to Error_Object_ID
                        [err] Send Info_Box 'èò®¶¨©†·©´û°ú ·ö§‡©´¶ ¢·ü¶™ °ò´· ´û§ õ†òõ†°ò©Âò' 'è¢û®¶≠¶®Âò'
                      end
                   end
                   if (not(err)) Send Info_Box "Ñ§û£‚®‡©û Ç.ä ¶¢¶°¢û®Èüû°ú !! " "è¢û®¶≠¶®Âò"
               end
               else send info_box 'É†òõ†°ò©Âò ò°¨®Èüû°ú òßÊ ´¶§ Æ®„©´û' 'è¢û®¶≠¶®Âò'
               indicate err false
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "âú§„ = û£/§Âò úöö®ò≠È§"
            Set Color to clWhite
            Set Location to 18 3
            Set Size to 10 85
        End_Object    // TextBoxSub3

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Å·©û °Â§û©û™ Ç.ä"
            Set Location to 46 3
            Set Size to 10 63
        End_Object    // TextBoxSub4


        //AB-StoreStart
        Procedure Activate_View Returns Integer
            date ddate
            integer rval
            sysdate4 ddate
            set value of formsub1 to ddate
            Forward Get Msg_Activate_View to rVal
        End_Procedure
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Vgl


    //AB-StoreStart
                
                
                
                
    //AB-StoreEnd

//AB/     End_Object    // prj
