//AB/ Project sl014_1:Particle ekkremh
//AB/ Object prj is a Lookup_Project
//AB/     Set ProjectName to "sl014_1:Particle ekkremh"
//AB/     Set ProjectFileName to "sl014_1.SL"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   sl014_1 is a dbModalPanelSub
//     Ctypkin_DD is a DataDictionary
//     Wtypkin_DD is a DataDictionary
//     Ptyppar_DD is a DataDictionary
//     Clients_DD is a DataDictionary
//     Nomisma_DD is a DataDictionary
//     Particle_DD is a DataDictionary
//     oSelList is a dbListSub
//     oOK_bn is a ButtonSub
//     oSearch_bn is a ButtonSub

// Register all objects
Register_Object Clients_DD
Register_Object Ctypkin_DD
Register_Object Nomisma_DD
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Particle_DD
Register_Object Ptyppar_DD
Register_Object sl014_1
Register_Object Wtypkin_DD



//AB-StoreTopStart
Use sl100.sl
Use sl012.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use dbList.Sub
Use Button.Sub


Use CTYPKIN.DD
Use WTYPKIN.DD
Use PTYPPAR.DD
Use CLIENTS.DD
Use NOMISMA.DD
Use PARTICLE.DD

//AB-IgnoreEnd

Object sl014_1 is a dbModalPanelSub

    //AB-StoreTopStart
                    
    Property String psModule Public ''
    
    
    
    //AB-StoreTopEnd

    Set Label to "èò®ò©´ò´†°·"
    Set Size to 282 523
    Set Location to 4 3
    Set Exit_Application_Local_State to FALSE
    Set Modal_State to FALSE

    //AB-DDOStart

    Object Ctypkin_DD is a Ctypkin_DataDictionary
    End_Object    // Ctypkin_DD

    Object Wtypkin_DD is a Wtypkin_DataDictionary
    End_Object    // Wtypkin_DD

    Object Ptyppar_DD is a Ptyppar_DataDictionary
        Set DDO_Server to (Ctypkin_DD(self))
        Set DDO_Server to (Wtypkin_DD(self))
    End_Object    // Ptyppar_DD

    Object Clients_DD is a Clients_DataDictionary
    End_Object    // Clients_DD

    Object Nomisma_DD is a Nomisma_DataDictionary
    End_Object    // Nomisma_DD

    Object Particle_DD is a Particle_DataDictionary
        Set DDO_Server to (Clients_DD(self))
        Set DDO_Server to (Ptyppar_DD(self))
        Set DDO_Server to (Nomisma_DD(self))

        //AB-StoreStart
        
        begin_constraints
            String  sPtyppar sWtypkin sCtypkin sClientID
            Date    dHmnia
            set ordering to 10
            Constrain Particle.Company_Code  eq SysCurXR.Company_Code
            Constrain Particle.Branch_Code   eq SysCurXR.Branch_Code
            Constrain Particle.Year_Year     eq SysCurXR.Year_Year
            constrain particle.partl_module  eq '01'
            constrain particle.exei_sxetika eq '1'
            constrain particle.partl_timol ne 1
            constrain particle.partl_no gt 0
        End_constraints
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Particle_DD

    Set Main_DD to (Particle_DD(self))
    Set Server to (Particle_DD(self))

    //AB-DDOEnd

    Object oSelList is a dbListSub
        Set Main_File to Particle.File_Number
        Set Size to 239 511
        Set Location to 6 5

        Begin_Row
            Entry_Item Particle.Partl_recr
            Entry_Item Particle.Partl_hmnia
            Entry_Item Ptyppar.Ptyppar_descr
            Entry_Item Particle.Pseira_seira
            Entry_Item Particle.Partl_no
            Entry_Item Clients.Client_id
            Entry_Item Clients.Client_name
            Entry_Item Particle.Partl_ekleise
        End_Row

        Set Form_Width    item 0 to 0
        Set Header_Label  item 0 to ""
        
        Set Form_Width    item 1 to 60
        Set Header_Label  item 1 to "Ü£ú®/§Âò"
        
        Set Form_Width    item 2 to 117
        Set Header_Label  item 2 to "èò®ò©´ò´†°Ê"
        
        Set Form_Width    item 3 to 36
        Set Header_Label  item 3 to "ëú†®·"
        
        Set Form_Width    item 4 to 60
        Set Header_Label  item 4 to "Ä®†ü£Ê™"
        
        Set Form_Width    item 5 to 57
        Set Header_Label  item 5 to "â‡õ†°¶™"
        
        Set Form_Width    item 6 to 159
        Set Header_Label  item 6 to "èú¢·´û™ / è®¶£ûüú¨´„™"
        
        Set Form_Width    item 7 to 16
        Set Header_Label  item 7 to "K"
        Set Column_Checkbox_State  item 7 to True
        

        //AB-StoreStart
        set column_shadow_state item 0 to true
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oSelList

    Object oOK_bn is a ButtonSub
        Set Label to "&Ñß†¢¶ö„"
        Set Size to 13 50
        Set Location to 252 413

        //AB-StoreStart
        Procedure OnClick
            Send OK To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oOK_bn

    Object oSearch_bn is a ButtonSub
        Set Label to "Ä&§òù„´û©û"
        Set Size to 13 50
        Set Location to 252 466

        //AB-StoreStart
        Procedure OnClick
            Send Search To (oSelList(current_object))
        End_Procedure
        //AB-StoreEnd

    End_Object    // oSearch_bn


    //AB-StoreStart
                    
    On_Key Key_Alt+Key_E Send KeyAction To (oOk_bn(current_object))
    On_Key Key_Alt+Key_N Send KeyAction To (oSearch_bn(current_object))
    
    Procedure Activating
        Send Rebuild_Constraints to Particle_DD
        Send Beginning_Of_Data to oSelList True
        Forward Send Activating
    End_procedure
    
    
    Procedure Request_Cancel
    
        Forward Send Request_Cancel
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // sl014_1


//AB-StoreStart
                        
//AB-StoreEnd

//AB/ End_Object    // prj
