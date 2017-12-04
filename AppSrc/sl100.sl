//AB/ Project SL100:PELATES
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "SL100:PELATES"
//AB/         Set ProjectFileName to "SL100.SL"

// Project Object Structure
//   sl100 is a dbModalPanelSub
//     Clients_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oCancel_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Clients_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object sl100


    //AB-IgnoreStart

    Use DFAllEnt.pkg
    Use dbList.Sub
    Use Button.Sub


    Use CLIENTS.DD
    
    //AB-IgnoreEnd

    Object sl100 is a dbModalPanelSub

        //AB-StoreTopStart
                
        Property String     FragmaClient        Public ''
        Property String     psIsPromhtheyths    Public ''
        Property Integer    piMustConstrain     Public  0
        Property String     psModule            Public ''
        
        //AB-StoreTopEnd

        Set Label to "(Xlate(Label(Self)))"
        Set Size to 252 509
        Set Location to 4 5

        //AB-DDOStart

        Object Clients_DD is a Clients_DataDictionary

            //AB-StoreTopStart
                                                        
            //AB-StoreTopEnd


            //AB-StoreStart
                                                        
            Begin_Constraints
                     If (psModule(Self)='01') BEGIN
                        Constrain Clients.is_Client        Eq '1'
                     end
                     Else If (psModule(Self)='02') begin
                        Constrain Clients.is_Promhtheyths  Eq '1'
                     end
            End_Constraints
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // Clients_DD

        Set Main_DD to (Clients_DD(self))
        Set Server to (Clients_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbListSub
            Set Main_File to Clients.File_Number
            Set Size to 204 496
            Set Location to 7 5
            Set Auto_Index_State to FALSE

            Begin_Row
                Entry_Item Clients.Client_id
                Entry_Item Clients.Client_name
                Entry_Item Clients.Client_afm
                Entry_Item Clients.Last_xreosh
                Entry_Item Clients.Last_pistosh
                Entry_Item Clients.Client_codem
                Entry_Item Clients.Is_client
                Entry_Item Clients.Is_promhtheyths
            End_Row

            Set Form_Width    item 0 to 64
            Set Header_Label  item 0 to "â‡õ†°Ê™"
            
            Set Form_Width    item 1 to 133
            Set Header_Label  item 1 to "Ñß‡§¨£Âò"
            
            Set Form_Width    item 2 to 62
            Set Header_Label  item 2 to "Äîã"
            
            Set Form_Width    item 3 to 60
            Set Header_Label  item 3 to "íú¢. ï®‚‡©û"
            
            Set Form_Width    item 4 to 60
            Set Header_Label  item 4 to "íú¢. èÂ©´‡©û"
            
            Set Form_Width    item 5 to 59
            Set Header_Label  item 5 to "â‡õ.ëÁ§õú©û™"
            
            Set Form_Width    item 6 to 26
            Set Header_Label  item 6 to "èú¢"
            Set Column_Checkbox_State  item 6 to True
            
            Set Form_Width    item 7 to 26
            Set Header_Label  item 7 to "è®¶£"
            Set Column_Checkbox_State  item 7 to True
            

            //AB-StoreStart
                                                                                
            //Property String StoreFragmaClient   Public ''
            //Property String StorePsModule       Public ''
            
            //Procedure Store_Defaults
            //    Forward Send Store_Defaults
            //    Set StoreFragmaClient   to (FragmaClient(Self))
            //    Set StorePsModule       to (psModule    (Self))
            //End_Procedure
            
            //Procedure ReStore_Defaults
            //    Forward Send ReStore_Defaults
            //    Set FragmaClient to (StoreFragmaClient(Self))
            //    Set psModule     to (StorePsModule    (Self))
            //End_Procedure
            
            Set Column_Option Item 6 to NoEnter True
            Set Column_Option Item 7 to NoEnter True
            
            Procedure Activating
                Forward Send Activating
                Set Auto_Index_State to True
            End_Procedure
            
            Procedure Activate
                Send Rebuild_Constraints    to Clients_DD
                If (FragmaClient(Self)<>'') Begin
                    Clear Clients
                    Move (FragmaClient(Self)) to Clients.Client_ID
                    Find Eq Clients By Index.6
                    If (Found) Send Request_Find to Clients_DD Eq Clients.File_Number 6
                End
                Forward Send Activate
            End_procedure
            
            
            
            
            //AB-StoreEnd

        End_Object    // oSelList

        Object oOK_bn is a ButtonSub
            Set Label to "&Ñß†¢¶ö„"
            Set Location to 218 341
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send OK To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a ButtonSub
            Set Label to "&Ä°Á®‡©û"
            Set Location to 218 396
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To (oSelList(current_object))
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a ButtonSub
            Set Label to "Ä&§òù„´û©û..."
            Set Location to 218 451
            Set Form_TypeFace Item 0 to "MS Sans Serif"

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
        
        Set Modal_State to True
        Set Locate_Mode to Center_On_Screen
        
        
        Procedure Activating Returns Integer
            Integer rVal
            Forward Get Msg_Activating to rVal
                 if (psmodule(self)='01') set label of sl100 to 'âò´·¢¶ö¶™ èú¢ò´È§'
            else if (psmodule(self)='02') set label of sl100 to 'âò´·¢¶ö¶™ è®¶£ûüú¨´È§'
            Procedure_Return rVal
        End_procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // sl100

//AB/     End_Object    // prj
