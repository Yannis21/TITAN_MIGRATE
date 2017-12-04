//AB/ Project Pedia
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Pedia"
//AB/         Set ProjectFileName to "Pedia.VW"

// Project Object Structure
//   Pedia is a dbViewSubS
//     Arxeia_DD is a DataDictionary
//     Pedia_DD is a DataDictionary
//     Arxeia_Arxeio_Id is a dbFormSub
//     Arxeia_Arxeio_Name is a dbFormSub
//     Arxeia_Access_Name is a dbFormSub
//     TextFlatButtonSub1 is a TextFlatButtonSub
//     Pedia_ is a dbGridSub
//     TextBoxSub1 is a TextBoxSub
//     TextBoxSub2 is a TextBoxSub
//     TextBoxSub3 is a TextBoxSub

// Register all objects
Register_Object Arxeia_Access_Name
Register_Object Arxeia_Arxeio_Id
Register_Object Arxeia_Arxeio_Name
Register_Object Arxeia_DD
Register_Object Pedia
Register_Object Pedia_
Register_Object Pedia_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub2
Register_Object TextBoxSub3
Register_Object TextFlatButtonSub1


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbForm.Sub
    Use Flatbtn.Sub
    Use dbGrid.Sub
    Use Txtbox.Sub

    Use ARXEIA.DD
    Use PEDIA.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Pedia FOR ;
    ;
    Object Pedia is a dbViewSubS
        Set Label to "èúõÂò"
        Set Size to 229 517
        Set Location to 2 4

        //AB-DDOStart

        Object Arxeia_DD is a Arxeia_DataDictionary
        End_Object    // Arxeia_DD

        Object Pedia_DD is a Pedia_DataDictionary
            Set DDO_Server to (Arxeia_DD(self))
            Set Constrain_File to Arxeia.File_Number
        End_Object    // Pedia_DD

        Set Main_DD to (Arxeia_DD(self))
        Set Server to (Arxeia_DD(self))

        //AB-DDOEnd

        Object Arxeia_Arxeio_Id is a dbFormSub
            Entry_Item Arxeia.Arxeio_id
            Set Size to 13 73
            Set Location to 7 131
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                                            
            //Procedure OnChange
            //    If (Focus(Desktop)=Arxeia_Arxeio_ID(Self)) Begin
            //        Send Rebuild_Constraints to Pedia_DD
            //        Send Beginning_Of_Data to Pedia_ True
            //    End
            //End_procedure
            //
            //Procedure Prompt
            //    Forward Send Prompt
            //    Send Rebuild_Constraints to Pedia_DD
            //    Send Beginning_Of_Data to Pedia_ True
            //End_procedure
            
            
            
            //AB-StoreEnd

        End_Object    // Arxeia_Arxeio_Id

        Object Arxeia_Arxeio_Name is a dbFormSub
            Entry_Item Arxeia.Arxeio_name
            Set Size to 13 276
            Set Location to 23 131
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Arxeia_Arxeio_Name

        Object Arxeia_Access_Name is a dbFormSub
            Entry_Item Arxeia.Access_name
            Set Size to 13 276
            Set Location to 38 131
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_TypeFace Item 0 to "MS Sans Serif"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE
        End_Object    // Arxeia_Access_Name

        Object TextFlatButtonSub1 is a TextFlatButtonSub
            Set Label to "Ñ§û£‚®‡©û èúõÂ‡§ ´¶¨ Ä®ÆúÂ¶¨"
            Set Auto_Size_State to FALSE
            Set Transparent_State to TRUE
            Set Location to 57 137
            Set Size to 15 215
            Set FontWeight to 600
            Set TypeFace to "MS Sans Serif"

            //AB-StoreStart
                                            
            Procedure Gemise_Pedia_File Integer aiFileNumber
                Integer iFields iInt iField_Number iField_Type iField_Length iField_Precision
                String  sField_Name
                Get_Attribute DF_FILE_NUMBER_FIELDS Of aiFileNumber to iFields
                For iInt From 1 to iFields
                    Get_Attribute DF_FIELD_NUMBER     Of aiFileNumber iInt  to iField_Number
                    Get_Attribute DF_FIELD_LENGTH     Of aiFileNumber iInt  to iField_Length
                    Get_Attribute DF_FIELD_NAME       Of aiFileNumber iInt  to sField_Name
                    Get_Attribute DF_FIELD_PRECISION  Of aiFileNumber iInt  to iField_Precision
                    Get_Attribute DF_FIELD_TYPE       Of aiFileNumber iInt  to iField_Type
                    Clear Pedia
                    Move aiFileNumber   to Pedia.Arxeio_ID
                    Move iField_Number  to Pedia.Pedio_Number
                    Find eq Pedia By Index.1 //Pedia:Index.1:Arxeio_ID+Pedio_Number
                    If (Not(Found)) Begin
                        Move iField_Length      to Pedia.Pedio_Length
                        Move sField_Name        to Pedia.Pedio_Name
                        Move iField_Precision   to Pedia.Pedio_Precision
                        Move iField_Type        to Pedia.Pedio_Type
                        Move (Trim((String(Pedia.Arxeio_ID))-(String(Pedia.Pedio_Number)))) to ;
                        Pedia.Pedio_Recr
                        Saverecord Pedia
                    End
                Loop
            End_Procedure
            
            Procedure OnClick
                Integer iFile
                Get Field_Current_Value Of Arxeia_DD Field Arxeia.Arxeio_ID to iFile
                Send Gemise_Pedia_File iFile
                Send Beginning_Of_Data to Pedia_ True
            End_procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // TextFlatButtonSub1

        Object Pedia_ is a dbGridSub

            //AB-StoreTopStart
            Register_Function fsFieldType Integer aiType Returns String
            Register_Function fsDecimals Integer aiPrecision Integer aiType Returns String
            
            //AB-StoreTopEnd

            Set Main_File to Pedia.File_Number
            Set Server to (Pedia_DD(self))
            Set Size to 129 505
            Set Location to 79 4
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Pedia.Pedio_number
                Entry_Item Pedia.Pedio_name
                Entry_Item (fsFieldType(Self,Pedia.Pedio_Type))
                Entry_Item Pedia.Pedio_length
                Entry_Item (fsDecimals(Self,Pedia.Pedio_Precision,Pedia.Pedio_Type))
                Entry_Item Pedia.Pedio_descr
            End_Row

            Set Form_Width    item 0 to 22
            Set Header_Label  item 0 to "Ä/Ä"
            
            Set Form_Width    item 1 to 83
            Set Header_Label  item 1 to "é§¶£ò©Âò èúõÂ¶¨"
            
            Set Form_Width    item 2 to 57
            Set Header_Label  item 2 to "TÁß¶™"
            
            Set Form_Width    item 3 to 38
            Set Header_Label  item 3 to "ã„°¶™"
            
            Set Form_Width    item 4 to 45
            Set Header_Label  item 4 to "Éú°òõ†°·"
            
            Set Form_Width    item 5 to 253
            Set Header_Label  item 5 to "èú®†ö®ò≠„ èúõÂ¶¨"
            

            //AB-StoreStart
                                            
            Function fsFieldType Integer aiType Returns String
                     If (aiType=0) Function_Return 'ASCII'
                Else If (aiType=1) Function_Return 'NUMERIC'
                Else If (aiType=2) Function_Return 'DATE'
                Else If (aiType=3) Function_Return 'OVERLAP'
                Else If (aiType=5) Function_Return 'TEXT'
                Else If (aiType=6) Function_Return 'BINARY'
                //    df_ascii          0
                //    df_bcd            1
                //    df_date           2
                //    df_overlap        3
                //    df_text           5
                //    df_binary         6
            End_Function
            
            Function fsDecimals Integer aiPrecision Integer aiType Returns String
                     If ((aiPrecision=0) And (aiType<>1)) Function_Return ''
                Else If ((aiPrecision=0) And (aiType =1)) Function_Return (String(aiPrecision))
                Else Function_Return (String(aiPrecision))
            End_Function
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Pedia_

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ä/Ä Ä®ÆúÂ¶¨"
            Set Location to 7 72
            Set Size to 10 49
        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "é§¶£ò©Âò"
            Set Location to 23 80
            Set Size to 10 39
        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "î†¢†°Ê ß®¶™ ´¶  ï®„©´û Ó§¶£ò"
            Set Location to 39 9
            Set Size to 10 114
        End_Object    // TextBoxSub3


        //AB-StoreStart
                            
                            
        //AB-StoreEnd

    CD_End_Object    // Pedia

//AB/     End_Object    // prj
