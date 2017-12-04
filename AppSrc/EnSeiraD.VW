//AB/ Project EnSeiraD
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnSeiraD"
//AB/         Set ProjectFileName to "EnSeiraD.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnSeiraD is a dbViewSubS
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Pseira_DD is a DataDictionary
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object Ctypkin_DD
Register_Object EnSeiraD
Register_Object Pseira_DD
Register_Object Ptyppar_DD
Register_Object Wtypkin_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    
    Open Ptyppar
    Open PSeira
    
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use Button.Sub

    Use CTYPKIN.DD
    Use WTYPKIN.DD
    Use PTYPPAR.DD
    Use PSEIRA.DD
    
    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnSeiraD FOR ;
    ;
    Object EnSeiraD is a dbViewSubS

        //AB-StoreTopStart
                                                                                                                        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£‚®‡©û 2û™ Ç®ò££û™ ëú†®·™ (íú¢úÂò - Form - Ä)"
        Set Size to 89 425
        Set Location to 2 7

        //AB-DDOStart

        Object Ctypkin_DD is a Ctypkin_DataDictionary
        End_Object    // Ctypkin_DD

        Object Wtypkin_DD is a Wtypkin_DataDictionary
        End_Object    // Wtypkin_DD

        Object Ptyppar_DD is a Ptyppar_DataDictionary
            Set DDO_Server to (Ctypkin_DD(self))
            Set DDO_Server to (Wtypkin_DD(self))
        End_Object    // Ptyppar_DD

        Object Pseira_DD is a Pseira_DataDictionary
            Set DDO_Server to (Ptyppar_DD(self))
            Set Constrain_File to Ptyppar.File_Number
        End_Object    // Pseira_DD

        Set Main_DD to (Ptyppar_DD(self))
        Set Server to (Ptyppar_DD(self))

        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "Ñ§û£ú®‡©û è®Ê©üú´‡§ ëú†®È§ òß¶ ´ú¢úÂò ©ú form"
            Set Size to 14 287
            Set Location to 17 67
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û è®Ê©üú´‡§ ëú†®È§ òß¶ ´ú¢úÂò ©ú form'
            
            Procedure OnClick
                String  sLabel
                Get Label to sLabel
                Integer iAuto iPlus iMinus iRec iCount2
                String sForm
            
                Clear Ptyppar
                Move SyscurXr.Company_Code  to Ptyppar.Company_Code
                Move SyscurXr.Branch_Code   to Ptyppar.Branch_Code
                Move '115'                  to Ptyppar.Ptyppar_Code
                Find GE Ptyppar By Index.1
                While ((Found) And (SyscurXr.Company_Code=Ptyppar.Company_Code) And (SyscurXr.Branch_Code=Ptyppar.Branch_Code))
                    Integer iCount
                    Move 0 to iCount
                    Add 1 to iCount2
            
                    Set Label to ("èò®ò©´ò´†°¶ = "+Trim(Ptyppar.Ptyppar_Descr)+"  "+String(iCount2))
            
                    Move Ptyppar.Recnum to iRec
                    Clear Pseira
                    Move Ptyppar.Ptyppar_Recr to Pseira.Ptyppar_Recr
                    Find GE Pseira By Index.3
                    While ((Found=1) And (Ptyppar.Ptyppar_Recr=Pseira.Ptyppar_Recr))
                        Add 1 to iCount
                        If (Pseira.Pseira_Seira=".") Begin
                            Move Pseira.Pseira_Form     to sForm
                            Move Pseira.Pseira_Autonum  to iAuto
                            Move Pseira.Autonum_Plus    to iPlus
                            Move Pseira.Autonum_Minus   to iMinus
                        End
                        Find GT Pseira By Index.3
                    Loop
                    If ((iCount=1) And (sForm<>""))  Begin
                        Send Clear to Pseira_DD
                        Send Clear to Ptyppar_DD
                        Send Find_By_Recnum to Ptyppar_DD Ptyppar.File_Number iRec
                        If (Found) Begin
                            Set Field_Changed_Value Of Pseira_DD Field Pseira.Pseira_Seira      to (Trim(sForm))
                            Set Field_Changed_Value Of Pseira_DD Field Pseira.Pseira_Autonum    to iAuto
                            Set Field_Changed_Value Of Pseira_DD Field Pseira.Autonum_Plus      to iPlus
                            Set Field_Changed_Value Of Pseira_DD Field Pseira.Autonum_Minus     to iMinus
                            Set Field_Changed_Value Of Pseira_DD Field Pseira.Pseira_Printer    to "LPT1"
                            Send Request_Save to Pseira_DD
                        End
                    End
                    Find Gt Ptyppar By Index.1
                Loop
            
            
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú ' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1

        Object ButtonSub2 is a ButtonSub

            //AB-StoreTopStart
                    
            //AB-StoreTopEnd

            Set Label to "Ñ§û£ú®‡©û form òß¶ ©ú†®·"
            Set Size to 14 287
            Set Location to 42 67
            Set Focus_Mode to Pointer_Only
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
                    
            Set Label to 'Ñ§û£ú®‡©û form òß¶ ©ú†®·'
            
            Procedure OnClick
                String  sLabel
                Get Label to sLabel
                Integer iAuto iPlus iMinus iRec iCount2
                String sForm
            
                Clear Pseira
                Find Ge Pseira By Index.2
                While (Found)
                    If ((Pseira.Pseira_Seira<>".") And (Pseira.Pseira_Seira<>"") And (Pseira.Pseira_Form="")) Begin
                        Reread Pseira
                        Move Pseira.Pseira_Seira to Pseira.Pseira_Form
                        Saverecord Pseira
                        Unlock
                    End
                    Find GT Pseira By Index.2
                Loop
            
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú ' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub2


        //AB-StoreStart
                                                                                                                        
        //AB-StoreEnd

    CD_End_Object    // EnSeiraD


    //AB-StoreStart
    
    //AB-StoreEnd

//AB/     End_Object    // prj
