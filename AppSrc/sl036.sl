//AB/ Project SL036:BARTICL
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "SL036:BARTICL"
//AB/         Set ProjectFileName to "SL036.SL"

// Project Object Structure
//   SL036 is a dbModalPanelSub
//     Btypkin_DD is a DataDictionary
//     Barticl_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Barticl_DD
Register_Object Btypkin_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object SL036


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use BTYPKIN.DD
    Use BARTICL.DD
    
    //AB-IgnoreEnd

    Object SL036 is a dbModalPanelSub

        //AB-StoreTopStart
        Property String     psClientID      Public ''
        Property String     psEponymo       Public ''
        Property Date       pdHmnia         Public ''
        Property Integer    piTypkinCode    Public  0
        
        
        //AB-StoreTopEnd

        Set Label to "â†§„©ú†™  Ä•†¶ö®·≠‡§"
        Set Size to 288 522
        Set Location to 6 3
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Btypkin_DD is a Btypkin_DataDictionary
        End_Object    // Btypkin_DD

        Object Barticl_DD is a Barticl_DataDictionary
            Set DDO_Server to (Btypkin_DD(self))

            //AB-StoreStart
                                            
            Begin_Constraints
                String  sClientID
                Date    dHmnia
                Integer iTypkinCode
            
                Get piTypkinCode    to iTypkinCode
                Get psClientID      to sClientID
                Get pdHmnia         to dHmnia
            
                Constrain Barticl.Company_Code  Eq Syscurxr.Company_Code
                Constrain Barticl.Branch_Code   Eq Syscurxr.Branch_Code
                Constrain Barticl.Year_Year     Eq Syscurxr.Year_Year
            
                If (sClientID  <> 0) Begin
                    If (iTypkinCode<> 0) Begin
                        Set Ordering to 8
                        Constrain Barticl.Btypkin_Code  Eq iTypkinCode
                        Constrain Barticl.Barticl_Code1 Eq sClientID
                    End
                    Else Begin
                        Set Ordering to 10
                        Constrain Barticl.Barticl_Code1 Eq sClientID
                    End
                End
                Else If (dHmnia     <>'') Begin
                    Set Ordering to 9
                    Constrain Barticl.Barticl_Hmnia Eq dHmnia
                End
                Else If (iTypkinCode<> 0) Begin
                    Set Ordering to 1
                    Constrain Barticl.Btypkin_Code  Eq iTypkinCode
                End
            End_Constraints
            
            //AB-StoreEnd

        End_Object    // Barticl_DD

        Set Main_DD to (Barticl_DD(self))
        Set Server to (Barticl_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Barticl.File_Number
            Set Server to (Btypkin_DD(self))
            Set Size to 238 508
            Set Location to 4 5

            Begin_Row
                Entry_Item Barticl.Barticl_no
                Entry_Item Barticl.Arith_orist
                Entry_Item Barticl.Barticl_hmnia
                Entry_Item Btypkin.Btypkin_code
                Entry_Item Btypkin.Btypkin_descr
                Entry_Item Barticl.Barticl_epon1
                Entry_Item Barticl.Barticl_sv0
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "Ä®†ü£Ê™"
            
            Set Form_Width    item 1 to 60
            Set Header_Label  item 1 to "é®†©´.ò®†ü."
            
            Set Form_Width    item 2 to 57
            Set Header_Label  item 2 to "Ü£ú®¶£û§Âò"
            
            Set Form_Width    item 3 to 41
            Set Header_Label  item 3 to "âÂ§û©û"
            
            Set Form_Width    item 4 to 140
            Set Header_Label  item 4 to "èú®†ö®ò≠„"
            
            Set Form_Width    item 5 to 90
            Set Header_Label  item 5 to "ë¨§ò¢¢ò©Ê£ú§¶™"
            
            Set Form_Width    item 6 to 54
            Set Header_Label  item 6 to "è¶©Ê"
            

            //AB-StoreStart
            
            Set Numeric_mask Item 6 to 14 0 ' ,*'
            
            Procedure Activating
                Send Rebuild_Constraints    to Barticl_DD
                Send Beginning_Of_Data      to oSelList True
                Forward Send Activating
            End_Procedure
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 255 354
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 255 410
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 255 464
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Search To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_E Send KeyAction To oOk_bn
        On_Key Key_Alt+Key_A Send KeyAction To oCancel_bn
        On_Key Key_Alt+Key_N Send KeyAction To oSearch_bn
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // SL036

//AB/     End_Object    // prj
