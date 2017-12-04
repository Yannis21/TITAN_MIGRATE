//AB/ Project Vrep
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Vrep"
//AB/     Set ProjectFileName to "Vrep.vw"
//AB/     Set GenerateFileName to "Vrep.vw"

// Project Object Structure
//   Vrep is a dbView
//     Sysrep_DD is a DataDictionary
//     The_Table is a dbGrid
//     btnEktyposh is a ButtonSub

// Register all objects
Register_Object btnEktyposh
Register_Object Sysrep_DD
Register_Object The_Table
Register_Object Vrep


//AB/ AppBuild VIEW


//AB-StoreTopStart
use r00.rv
//AB-StoreTopEnd

//AB-IgnoreStart

Use DFAllEnt.pkg
Use Button.Sub

Use SYSREP.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Vrep FOR Vrep

Object Vrep is a dbView
    Set Label to "É†òÆúÂ®û©û Ñ°´¨ß‡´†°È§"
    Set Size to 291 494
    Set Location to 1 4

    //AB-DDOStart

    Object Sysrep_DD is a Sysrep_DataDictionary

        //AB-StoreStart
        begin_constraints
           if (sysfile.titan=1) constrain sysrep.titan eq ''
        end_constraints
        //AB-StoreEnd

    End_Object    // Sysrep_DD

    Set Main_DD to (Sysrep_DD(self))
    Set Server to (Sysrep_DD(self))

    //AB-DDOEnd

    Object The_Table is a dbGrid
        Set Main_File to Sysrep.File_Number
        Set Ordering to 1
        Set Size to 242 481
        Set Location to 10 4
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Sysrep.View
            Entry_Item Sysrep.Descr
            Entry_Item Sysrep.Descr1
            Entry_Item Sysrep.Name
        End_Row

        Set Form_Width    item 0 to 55
        Set Header_Label  item 0 to "éüÊ§û Report"
        
        Set Form_Width    item 1 to 180
        Set Header_Label  item 1 to "èú®†ö®ò≠„ Ñ°´¨ß‡´†°¶Á (â¨°¢È£ò´¶™ èú¢ò´È§)"
        
        Set Form_Width    item 2 to 180
        Set Header_Label  item 2 to "èú®†ö®ò≠„ Ñ°´¨ß‡´†°¶Á (â¨°¢È£ò´¶™ è®¶£ûü.)"
        
        Set Form_Width    item 3 to 58
        Set Header_Label  item 3 to "é§¶£ò Report "
        
    End_Object    // The_Table

    Object btnEktyposh is a ButtonSub
        Set Label to "Ñ°´Á&ß‡©û"
        Set Bitmap to "Print17.bmp"
        Set Size to 21 23
        Set Location to 254 3
        Set Focus_Mode to Pointer_Only
        Set Form_FontHeight Item 0 to 12
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Set TooltipValue to "Ñ°´Áß‡©û Ñ°´¨ß‡´†°È§"
        
        Procedure OnClick
           integer ncode
           Send runparReport to (parWQLReport(r00(Self)))
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnEktyposh

End_Object    // Vrep


//AB-StoreStart
        
//AB-StoreEnd

//AB/ End_Object    // prj
