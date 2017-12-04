//AB/ Project sl92:lista prosforon
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "sl92:lista prosforon"
//AB/         Set ProjectFileName to "sl92.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl92 is a dbModalPanelSub
//     Yclients_DD is a DataDictionary
//     Ypoprosf_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl92
Register_Object Yclients_DD
Register_Object Ypoprosf_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use YCLIENTS.DD
    Use YPOPROSF.DD
    
    //AB-IgnoreEnd

    Object sl92 is a dbModalPanelSub

        //AB-StoreTopStart
        
        property string psclient     public ''
        property string pscn         public ''
        
        Function fsstatus String lsstatus Returns string
                 string sret
                 if (lsstatus = '3') move 'åò†' to sret
                 else move 'éÆ†' to sret
                 function_return sret
        End_Function
        
        //AB-StoreTopEnd

        Set Label to "Ä®ÆúÂ¶ è®¶©≠¶®È§"
        Set Size to 233 508
        Set Location to 0 5
        Set Exit_Application_Local_State to FALSE
        Set Modal_State to FALSE

        //AB-DDOStart

        Object Yclients_DD is a Yclients_DataDictionary
        End_Object    // Yclients_DD

        Object Ypoprosf_DD is a Ypoprosf_DataDictionary
            Set DDO_Server to (Yclients_DD(self))

            //AB-StoreStart
                                                        
            Begin_Constraints
                String sID scn
                Get psclient to sID
                get pscn     to scn
                If (sID<>'') Constrain ypoprosf.pelaths   eq sID
                If (scn<>'') constrain ypoprosf.cn_code   eq scn
            End_Constraints
            
            
            
            //AB-StoreEnd

        End_Object    // Ypoprosf_DD

        Set Main_DD to (Ypoprosf_DD(self))
        Set Server to (Ypoprosf_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Ypoprosf.File_Number
            Set Ordering to 1
            Set Size to 192 495
            Set Location to 7 6

            Begin_Row
                Entry_Item Ypoprosf.Aa_ypoprosf
                Entry_Item Yclients.Id
                Entry_Item Yclients.Name
                Entry_Item Ypoprosf.Cn_code
                Entry_Item (fscndescr(self,ypoprosf.cn_code))
                Entry_Item Ypoprosf.Enarxh
                Entry_Item Ypoprosf.Lhxh
                Entry_Item (fsstatus(self,ypoprosf.status))
            End_Row

            Set Form_Width    item 0 to 78
            Set Header_Label  item 0 to "â‡õ†°Ê™ è®¶©≠¶®·™"
            
            Set Form_Width    item 1 to 53
            Set Header_Label  item 1 to "â‡õ.èú¢·´û"
            
            Set Form_Width    item 2 to 90
            Set Header_Label  item 2 to "Ñß‡§¨£Âò èú¢·´û"
            
            Set Form_Width    item 3 to 55
            Set Header_Label  item 3 to "â‡õ.Ñ®ö¶¨"
            
            Set Form_Width    item 4 to 106
            Set Header_Label  item 4 to "èú®†ö®ò≠„ Ñ®ö¶¨"
            
            Set Form_Width    item 5 to 44
            Set Header_Label  item 5 to "Î§ò®•û"
            
            Set Form_Width    item 6 to 44
            Set Header_Label  item 6 to "ä„•û"
            
            Set Form_Width    item 7 to 19
            Set Header_Label  item 7 to "Ok"
            

            //AB-StoreStart
            //Set Points          Item 0 to       0
            Procedure Activating Returns Integer
                Integer rVal
                Forward Get Msg_Activating to rVal
                Send Rebuild_Constraints to (ypoprosf_DD(Self))
                Procedure_Return rVal
            End_Procedure
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 201 335

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 201 389

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û"
            Set Location to 201 445

            //AB-StoreStart
            Procedure OnClick
                Send Search To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
        On_Key Key_Alt+Key_A Send KeyAction To (oCancel_bn(current_object))
        On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
        
        Procedure Activating Returns Integer
            Integer rVal
            Forward Get Msg_ActivatING to rVal
            Send Beginning_Of_Data to oSelList
            Procedure_Return rVal
        End_Procedure
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl92

//AB/     End_Object    // prj
