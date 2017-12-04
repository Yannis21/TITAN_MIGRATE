//AB/ Project Enhcarid:enhmerosh pmoves metropo metafo
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Enhcarid:enhmerosh pmoves metropo metafo"
//AB/         Set ProjectFileName to "Enhcarid.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Enhcarid is a dbViewSubS
//     Country_DD is a DataDictionary
//     Towns_DD is a DataDictionary
//     Payresp_DD is a DataDictionary
//     Areas_DD is a DataDictionary
//     Cities_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     TextBoxSub1 is a TextBoxSub
//     F_HME_APO is a FormSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Country_DD
Register_Object Enhcarid
Register_Object F_HME_APO
Register_Object Payresp_DD
Register_Object TextBoxSub1
Register_Object Towns_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
        
        
    open Pmoves
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Button.Sub
    Use Txtbox.Sub
    Use Form.Sub

    Use COUNTRY.DD
    Use TOWNS.DD
    Use PAYRESP.DD
    Use AREAS.DD
    Use CITIES.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Enhcarid FOR ;
    ;
    Object Enhcarid is a dbViewSubS

        //AB-StoreTopStart
                                                                                        
        //AB-StoreTopEnd

        Set Label to "Ä§òõ®¶£†°„ ú§û£‚®‡©û É.Ä £ú ©‡©´Ê ´®Êß¶ £ú´ò≠¶®·™"
        Set Size to 89 289
        Set Location to 4 7

        //AB-DDOStart

        Object Country_DD is a Country_DataDictionary
        End_Object    // Country_DD

        Object Towns_DD is a Towns_DataDictionary
            Set DDO_Server to (Country_DD(self))
        End_Object    // Towns_DD

        Object Payresp_DD is a Payresp_DataDictionary
        End_Object    // Payresp_DD

        Object Areas_DD is a Areas_DataDictionary
        End_Object    // Areas_DD

        Object Cities_DD is a Cities_DataDictionary
            Set DDO_Server to (Towns_DD(self))
        End_Object    // Cities_DD

        Set Main_DD to (Payresp_DD(self))
        Set Server to (Payresp_DD(self))

        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñ§û£‚®‡©û"
            Set Size to 14 265
            Set Location to 41 10
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            open clients
            Open Pmoves
            Open Wcmoves
            open cars
            Set Label to 'Ñ§û£‚®‡©û'
            reread syscurxr
            unlock
            
            Procedure OnClick
                integer irecnum ival inum
                String  sLabel sPelaths sclient sname safm sdoy saddres sjob scar
                number ncity narea
                string szipcode sphone msgstr smobile saoh semail sidiot saddno sid srecr
                Integer iFs iInt iProblem ino itypos i3 i4
                Date dhmnia
                Get Label to sLabel
            
                Get Value Of f_hme_apo Item 0 to dhmnia
                If (dhmnia='') Begin
                    Send Stop_Box 'Ü£/§Âò Ñöö®ò≠È§ ìß¶Æ®ú‡´†°„' 'è¢û®¶≠¶®Âò'
                    Procedure_Return
                End
                Move 0 to iProblem
            
            
                Clear pmoves
                Move dhmnia to pmoves.partl_hmnia
                Find gt pmoves by index.9
                While ((Found) And (pmoves.partl_hmnia=dhmnia))
                   if (pmoves.ptyppar_code<>'099') goto next_elegxos
                   if (pmoves.company_code<>syscurxr.company_code) goto next_elegxos
                   if (pmoves.branch_code <>syscurxr.branch_code)  goto next_elegxos
                   if (pmoves.year_year   <>syscurxr.year_year)    goto next_elegxos
                   if (pmoves.witemkat_code<>'03')                 goto next_elegxos
                   lock
                   move pmoves.partl_no to ino
                   Set Label to ('Ä®.É.ò '+(String(ino))+'/'+(String(dhmnia)))
                   move pmoves.wcmoves_recr to srecr
                   move pmoves.car_id       to scar
                   clear wcmoves
                   move srecr to wcmoves.wcmove_recr
                   find eq wcmoves by index.2
                   if (found) begin
                        clear cars
                        move SCAR to cars.car_id
                        find eq cars by index.2
                        if (found) begin
                                        if (cars.ctype_id = '1') move 20 to itypos
                                else    if (cars.ctype_id = '2') move 30 to itypos
                                else    if (cars.ctype_id = '3') move 10 to itypos
            
                                if ((wcmoves.wcmove_open<>itypos) and (itypos<>0)) begin
                                    add 1 to iproblem
                                    move itypos to wcmoves.wcmove_open
                                    saverecord wcmoves
                                End
                        End
            
                   end
                   Unlock
                   next_elegxos:
                   find gt pmoves by index.9
                Loop
            
                move '' to msgstr
                move 'Ä®†ü£Ê™ Ñöö®ò≠È§ ß¶¨ Ñßú•ú®ö·©´û°ò§ = ' to msgstr
                append msgstr iproblem
                Send Info_Box msgstr 'è¢û®¶≠¶®Âò'
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "ÉÈ©´ú ´û§ û£/§Âò ö†ò ´¶§ Ñ¢úöÆ¶ ´‡§ É.Ä "
            Set TextColor to 4210688
            Set Location to 2 3
            Set Size to 10 229
            Set FontWeight to 800
            Set Justification_Mode to jMode_Center
            Set TypeFace to "MS Sans Serif"
        End_Object    // TextBoxSub1

        Object F_HME_APO is a FormSub
            Set Size to 13 69
            Set Location to 19 113
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_Datatype Item 0 to Mask_Date_Window
            Set Prompt_Button_Mode to pb_PromptOn
            Set Form_Mask Item 0 to "d/M/yyyy"
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            set prompt_object to (ocalendar(self))
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // F_HME_APO


        //AB-StoreStart
                                                                                        
        //AB-StoreEnd

    CD_End_Object    // Enhcarid


    //AB-StoreStart
        
        
        
        
        
        
    //AB-StoreEnd

//AB/     End_Object    // prj
