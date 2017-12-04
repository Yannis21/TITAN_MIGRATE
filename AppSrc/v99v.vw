//AB/ Project V99V: ARXIKES TIMES
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V99V: ARXIKES TIMES"
//AB/     Set ProjectFileName to "V99V.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   V99V is a dbViewSubS
//     Caantlia_DD is a DataDictionary
//     Cakinytd_DD is a DataDictionary
//     Company_DD is a DataDictionary
//     Branch_DD is a DataDictionary
//     Year_DD is a DataDictionary
//     dbGroupSub1 is a dbGroupSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       ButtonSub1 is a ButtonSub
//       ButtonSub2 is a ButtonSub
//       ButtonSub3 is a ButtonSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object Branch_DD
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object ButtonSub3
Register_Object Caantlia_DD
Register_Object Cakinytd_DD
Register_Object Company_Company_Name
Register_Object Company_DD
Register_Object dbGroupSub1
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object V99V
Register_Object Year_DD
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
//Open Caitems
//Open Caitemsl
Use r40.rv
property string psstorecode
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGroup.Sub
Use Txtbox.Sub
Use dbForm.Sub
Use Button.Sub

//Use CAANTLIA.DD
//Use CAKINYTD.DD
Use COMPANY.DD
Use BRANCH.DD
Use YEAR.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V99V FOR V99V

Object V99V is a dbViewSubS

    //AB-StoreTopStart
                
                
        
    //AB-StoreTopEnd

    set label to "Ñ§û£‚®‡©û Ñ•¶ß¢†©£¶Á £‚ â†§„©ú†™ âò¨©Â£‡§" 
    Set Size to 95 525
    Set Location to 1 2

    //AB-DDOStart

    Object Caantlia_DD is a Caantlia_DataDictionary
    End_Object    // Caantlia_DD

    Object Cakinytd_DD is a Cakinytd_DataDictionary

        //AB-StoreTopStart
        property date pddate public ""
        
        //AB-StoreTopEnd

        Set DDO_Server to (Caantlia_DD(self))

        //AB-StoreStart
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
        //AB-StoreEnd

    End_Object    // Cakinytd_DD

    Object Company_DD is a Company_DataDictionary
    End_Object    // Company_DD

    Object Branch_DD is a Branch_DataDictionary
        Set DDO_Server to (Company_DD(self))
    End_Object    // Branch_DD

    Object Year_DD is a Year_DataDictionary
        Set DDO_Server to (Branch_DD(self))
    End_Object    // Year_DD

    Set Main_DD to (Cakinytd_DD(self))
    Set Server to (Cakinytd_DD(self))

    //AB-DDOEnd

    Object dbGroupSub1 is a dbGroupSub
        Set Size to 75 512
        Set Location to 2 5
        Set Color to clLtGray
        Object TextBoxSub5 is a TextBoxSub
            set label to "Ñ´ò†®úÂò" 
            Set Auto_Size_State to FALSE
            Set Color to clLtGray
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            set label to "ìß¶°/£ò :" 
            Set Auto_Size_State to FALSE
            Set Color to clLtGray
            Set FontSize to 4 0
            Set Location to 10 211
            Set Size to 10 47
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
            //AB-StoreEnd

        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            set label to "ï®„©û :          " 
            Set Auto_Size_State to FALSE
            Set Color to clLtGray
            Set FontSize to 4 0
            Set Location to 10 392
            Set Size to 10 40
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub7

        Object Company_Company_Name is a dbFormSub
            Entry_Item Company.Company_name
            Set Server to (Company_DD(self))
            Set Size to 13 145
            Set Location to 9 49
            Set Color to clLtGray
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Branch.Branch_name
            Set Server to (Branch_DD(self))
            Set Size to 13 125
            Set Location to 9 254
            Set Color to clLtGray
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub
            Entry_Item Year.Year_year
            Set Server to (Year_DD(self))
            Set Size to 13 64
            Set Location to 7 427
            Set Color to clLtGray
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Year_Year_Year

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            use doupitm.pkg
            //AB-StoreTopEnd

            set label to "Ñ§û£‚®‡©û Ñ•¶ß¢†©£¶Á ã‚ Ä®Æ†°‚™ í†£‚™" 
            Set Size to 42 178
            Set Location to 26 192
            Set Border_Style to Border_Normal
            Set Form_FontWeight Item 0 to 800

            //AB-StoreStart
            Procedure OnClick
              
                integer libpo05## listatus## retval
                string msgstr lsstore##
                get yesno_box "è®¶©¶Æ„ ! Ä®ÆÂùú† û É†òõ†°ò©Âò Ñ§û£‚®‡©û™ Ä®ÆúÂ‡§ !! å· ë¨§úÆÂ©‡ ??" to retval 
                If (RetVal =MBR_yes) begin
                    get psstorecode to lsstore##
                    move (oDoupitm(current_object)) to liBpo05##
                    send beg_upitm to libpo05##
                    move "Ñ§û£‚®‡©û Ä®ÆúÂ‡§ é¢¶°¢û®Èüû°ú Ñß†´¨ÆÈ™ !!" to msgstr 
                    Send Info_Box MsgStr
                end
                
            
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object ButtonSub2 is a ButtonSub

            //AB-StoreTopStart
            use doupytd.pkg
            //AB-StoreTopEnd

            set label to "çú£ò®°·®†©£ò Ä®ÆúÂ¶¨ âò¨©Â£‡§" 
            Set Size to 42 134
            Set Location to 26 374
            Set Border_Style to Border_Normal
            Set Form_FontWeight Item 0 to 800

            //AB-StoreStart
            Procedure OnClick
                integer libpo05## listatus## retval
                string msgstr lsstore##
                get yesno_box "è®¶©¶Æ„ ! Ä®ÆÂùú† û É†òõ†°ò©Âò Ñ§û£‚®‡©û™ Ä®ÆúÂ‡§ !! å· ë¨§úÆÂ©‡ ??" to retval 
                If (RetVal =MBR_yes) begin
                       move (oDoupytd(current_object)) to liBpo05##
                       send beg_upytd to libpo05##
                       move "Ñ§û£‚®‡©û Ä®ÆúÂ‡§ é¢¶°¢û®Èüû°ú Ñß†´¨ÆÈ™ !!" to msgstr 
                       Send Info_Box MsgStr
                end
            
            
            
            End_Procedure // OnClick
            
            Procedure refresh integer iMode
                local integer iRec
                Forward Send Refresh iMode
            End_procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub2

        Object ButtonSub3 is a ButtonSub

            //AB-StoreTopStart
            use doupzero.pkg
            //AB-StoreTopEnd

            set label to "ãûõú§†©£Ê™ ï¢£ - ó®È§ Ñ•¶ß¢†©£¶Á" 
            Set Size to 42 178
            Set Location to 26 6
            Set Form_FontWeight Item 0 to 800

            //AB-StoreStart
            Procedure OnClick
                integer libpo05## listatus## retval
                string msgstr lsstore##
                get yesno_box "è®¶©¶Æ„ ! Ä®ÆÂùú† û É†òõ†°ò©Âò Ñ§û£‚®‡©û™ Ä®ÆúÂ‡§ !! å· ë¨§úÆÂ©‡ ??" to retval 
                If (RetVal =MBR_yes) begin
                    move (oDoupzero(current_object)) to liBpo05##
                    send beg_upzero to libpo05##
                    move "Ñ§û£‚®‡©û Ä®ÆúÂ‡§ é¢¶°¢û®Èüû°ú Ñß†´¨ÆÈ™ !!" to msgstr 
                    Send Info_Box MsgStr
                end
            End_Procedure // OnClick
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub3

    End_Object    // dbGroupSub1


    //AB-StoreStart
    Set Verify_Exit_Msg To Get_No_Confirmation
    
    Procedure Request_Clear
        Forward Send Request_Clear
        Clear Company
        Move gs_Selected_Company_Code to Company.Company_Code
        Send Request_Find to (Company_DD(Self)) eq Company.File_Number 1
    
        Clear Branch
        Move gs_Selected_Company_Code to Branch.Company_Code
        Move gs_Selected_Branch_Code to Branch.Branch_Code
        Send Request_Find to (Branch_DD(Self)) eq Branch.File_Number 1
    
        Clear Year
        Move gs_Selected_Company_Code to year.Company_Code
        Move gs_Selected_Branch_Code to year.Branch_Code
        Move gi_Selected_Year to Year.Year_Year
        Send Request_Find to (Year_DD(Self)) eq Year.File_Number 1
    
    End_Procedure
    
    Procedure Activating //Activate_View Returns Integer
        Local Integer Rval
        Forward Send Activating //Get MSG_Activate_View to Rval
    
        Clear Company
        Move gs_Selected_Company_Code to Company.Company_Code
        Send Request_Find to (Company_DD(Self)) eq Company.File_Number 1
    
        Clear Branch
        Move gs_Selected_Branch_Code to Branch.Branch_Code
        Move gs_Selected_Branch_Code to Branch.Branch_Code
        Send Request_Find to (Branch_DD(Self)) eq Branch.File_Number 1
    
        Clear Year
        Move gs_Selected_Company_Code to year.Company_Code
        Move gs_Selected_Branch_Code to year.Branch_Code
        Move gi_Selected_Year to Year.Year_Year
        Send Request_Find to (Year_DD(Self)) eq Year.File_Number 1
    
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // V99V


//AB-StoreStart
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//AB-StoreEnd

//AB/ End_Object    // prj
