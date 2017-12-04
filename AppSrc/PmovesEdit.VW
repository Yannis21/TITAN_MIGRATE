//AB/ Project PmovesEdit
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "PmovesEdit"
//AB/     Set ProjectFileName to "PmovesEdit.VW"
//AB/     Set GenerateFileName to "Partledit.vw"

// Project Object Structure
//   PmovesEdit is a dbView
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
//     ButtonSub1 is a ButtonSub
//     Pmoves_Witemx_Code is a dbFormSub
//     Pmoves_Partl_Recr is a dbFormSub
//     Pmoves_Pms_Recr is a dbFormSub
//     Pmoves_Pms_Qty is a dbFormSub
//     Pmoves_Pms_Unitprice is a dbFormSub
//     Pmoves_Pms_Ambd is a dbFormSub
//     Pmoves_Pms_Pctdisc is a dbFormSub
//     Pmoves_Pms_Discam is a dbFormSub
//     Pmoves_Pms_Amaftdisc is a dbFormSub
//     Pmoves_Pms_Vatpct is a dbFormSub
//     Pmoves_Pms_Vatam is a dbFormSub
//     Pmoves_Pms_Payable is a dbFormSub
//     Pmoves_Pms_Axia is a dbFormSub
//     Pmoves_Qty_Ypol is a dbCheckBoxSub

// Register all objects
Register_Object Areas_DD
Register_Object ButtonSub1
Register_Object Cities_DD
Register_Object Clients_DD
Register_Object Country_DD
Register_Object Ctypkin_DD
Register_Object Fpa_DD
Register_Object Item_DD
Register_Object Nomisma_DD
Register_Object Particle_DD
Register_Object Payresp_DD
Register_Object Pmoves_DD
Register_Object Pmoves_Partl_Recr
Register_Object Pmoves_Pms_Amaftdisc
Register_Object Pmoves_Pms_Ambd
Register_Object Pmoves_Pms_Axia
Register_Object Pmoves_Pms_Discam
Register_Object Pmoves_Pms_Payable
Register_Object Pmoves_Pms_Pctdisc
Register_Object Pmoves_Pms_Qty
Register_Object Pmoves_Pms_Recr
Register_Object Pmoves_Pms_Unitprice
Register_Object Pmoves_Pms_Vatam
Register_Object Pmoves_Pms_Vatpct
Register_Object Pmoves_Qty_Ypol
Register_Object Pmoves_Witemx_Code
Register_Object PmovesEdit
Register_Object Ptyppar_DD
Register_Object Towns_DD
Register_Object Units_DD
Register_Object Wapokat_DD
Register_Object Wapomast_DD
Register_Object Wax_DD
Register_Object Witemkat_DD
Register_Object Witemx_DD
Register_Object Wtypkin_DD


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Button.Sub
Use dbForm.Sub
Use dbChkbox.Sub

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

ACTIVATE_VIEW Activate_PmovesEdit FOR PmovesEdit

Object PmovesEdit is a dbView

    //AB-StoreTopStart
            
    Property Integer piRecnum   Public 0
    Property Integer piRecnumP  Public 0
    
    //AB-StoreTopEnd

    Set Label to "ƒ ¦¨Ÿé©œ ª PMOVES"
    Set Size to 305 237
    Set Location to 8 28

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Ptyppar_DD

    Object Country_DD is a Country_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Country_DD

    Object Towns_DD is a Towns_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Country_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Towns_DD

    Object Cities_DD is a Cities_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Towns_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Cities_DD

    Object Areas_DD is a Areas_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Areas_DD

    Object Payresp_DD is a Payresp_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Payresp_DD

    Object Clients_DD is a Clients_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Cities_DD(self))
        Set DDO_Server to (Areas_DD(self))
        Set DDO_Server to (Payresp_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Object Wapokat_DD is a Wapokat_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Wapokat_DD

    Object Wapomast_DD is a Wapomast_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Wapokat_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Wapomast_DD

    Object Wax_DD is a Wax_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Wapomast_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Wax_DD

    Object Units_DD is a Units_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Units_DD

    Object Witemkat_DD is a Witemkat_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Witemkat_DD

    Object Fpa_DD is a Fpa_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd


        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Fpa_DD

    Object Item_DD is a Item_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Units_DD(self))
        Set DDO_Server to (Witemkat_DD(self))
        Set DDO_Server to (Fpa_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Item_DD

    Object Witemx_DD is a Witemx_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Item_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Witemx_DD

    Object Pmoves_DD is a Pmoves_DataDictionary

        //AB-StoreTopStart
                                        
        //AB-StoreTopEnd

        Set DDO_Server to (Wax_DD(self))
        Set DDO_Server to (Witemx_DD(self))
        Set DDO_Server to (Particle_DD(self))

        //AB-StoreStart
                                        
        Procedure Request_Delete
        End_Procedure
        
        
        
        //AB-StoreEnd

    End_Object    // Pmoves_DD

    Set Main_DD to (Pmoves_DD(self))
    Set Server to (Pmoves_DD(self))

    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
                        
        //AB-StoreTopEnd

        Set Label to "ButtonSub1"
        Set Bitmap to "Saveim~1.bmp"
        Set Size to 17 20
        Set Location to 254 207
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                        
        Set TooltipValue to '€§¦Ÿã¡œ¬©ž €¢¢˜šé¤'
        
        Procedure OnClick
            Set piDoNotCalculate    Of Particle_DD to 0
        
            If (Current_Record(Pmoves_DD(Self))) Begin
        
                Send Request_Save       Of Pmoves_DD
                Send Clear              Of Pmoves_DD
        
                Send Clear              Of (Pmoves_DD  (Particle(Self)))
                Send Clear              Of (Particle_DD(Particle(Self)))
        
                Send Find_By_Recnum     Of (Particle_DD(Particle(Self))) Particle.File_Number (piRecnumP(Self))
                Send Beginning_Of_Data  Of (Pmoves_(dbTabPageSubS1(dbTabDialogSubS1(Particle(Self))))) True
                //Send Find_By_Recnum     Of (Pmoves_DD(Particle(Self))) Pmoves.File_Number (piRecnum(Self))
            End
            Set piRecnum    to 0
            Set piRecnumP   to 0
            Send Request_Cancel
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object Pmoves_Witemx_Code is a dbFormSub
        Entry_Item Pmoves.Witemx_code
        Set Label to "Witemx Code:"
        Set Size to 13 126
        Set Location to 55 65
        Set Color to 14737632
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Form_TypeFace Item 0 to "MS Sans Serif"
    End_Object    // Pmoves_Witemx_Code

    Object Pmoves_Partl_Recr is a dbFormSub
        Entry_Item Particle.Partl_recr
        Set Label to "Partl Recr:"
        Set Size to 13 89
        Set Location to 15 65
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Pmoves_Partl_Recr

    Object Pmoves_Pms_Recr is a dbFormSub
        Entry_Item Pmoves.Pms_recr
        Set Label to "Pms Recr:"
        Set Size to 13 89
        Set Location to 33 65
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Prompt_Button_Mode to pb_PromptOn
        Set Enabled_State to FALSE
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE
    End_Object    // Pmoves_Pms_Recr

    Object Pmoves_Pms_Qty is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_qty
        Set Label to "Pms Qty:"
        Set Size to 13 126
        Set Location to 87 65
        Set Color to 15395562
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Qty

    Object Pmoves_Pms_Unitprice is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_unitprice
        Set Label to "Pms Unitprice:"
        Set Size to 13 126
        Set Location to 101 65
        Set Color to 15395562
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Unitprice

    Object Pmoves_Pms_Ambd is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_ambd
        Set Label to "Pms Ambd:"
        Set Size to 13 126
        Set Location to 124 65
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Ambd

    Object Pmoves_Pms_Pctdisc is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_pctdisc
        Set Label to "Pms Pctdisc:"
        Set Size to 13 126
        Set Location to 146 65
        Set Color to 14024703
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Pctdisc

    Object Pmoves_Pms_Discam is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_discam
        Set Label to "Pms Discam:"
        Set Size to 13 126
        Set Location to 160 65
        Set Color to 14024703
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Discam

    Object Pmoves_Pms_Amaftdisc is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_amaftdisc
        Set Label to "Pms Amaftdisc:"
        Set Size to 13 126
        Set Location to 182 65
        Set Color to 14024703
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Amaftdisc

    Object Pmoves_Pms_Vatpct is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_vatpct
        Set Label to "Pms Vatpct:"
        Set Size to 13 126
        Set Location to 204 65
        Set Color to 14811105
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Vatpct

    Object Pmoves_Pms_Vatam is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_vatam
        Set Label to "Pms Vatam:"
        Set Size to 13 126
        Set Location to 218 65
        Set Color to 16772829
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Vatam

    Object Pmoves_Pms_Payable is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_payable
        Set Label to "Pms Payable:"
        Set Size to 13 126
        Set Location to 242 65
        Set Color to 14540287
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Payable

    Object Pmoves_Pms_Axia is a dbFormSub

        //AB-StoreTopStart
                                
        //AB-StoreTopEnd

        Entry_Item Pmoves.Pms_axia
        Set Label to "Pms Axia:"
        Set Size to 13 126
        Set Location to 256 65
        Set Color to 14540287
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                
        Set Numeric_Mask item 0 to 14 2 ",*"
        
        //AB-StoreEnd

    End_Object    // Pmoves_Pms_Axia

    Object Pmoves_Qty_Ypol is a dbCheckBoxSub
        Entry_Item Pmoves.Qty_ypol
        Set Label to "€§¦ ‹œ«˜©®/£æ"
        Set Size to 10 69
        Set Location to 72 65
    End_Object    // Pmoves_Qty_Ypol


    //AB-StoreStart
            
    Procedure Activate_View Returns Integer
        Integer rVal
        If (piRecnum(Self)>0) Begin
            Send Find_By_Recnum Of Pmoves_DD Pmoves.File_Number (piRecnum(Self))
            If (Found) Begin
                Forward Get Msg_Activate_View to rVal
                Procedure_Return rVal
            End
        End
        Procedure_Return -1
    End_Procedure
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // PmovesEdit


//AB-StoreStart
        
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
