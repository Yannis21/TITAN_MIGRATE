//AB/ Project type
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "type"
//AB/         Set ProjectFileName to "type.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   type is a dbModalPanel
//     Type_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Type_DD
Register_Object type


    //AB-IgnoreStart

    Use DFAllEnt.pkg


    Use TYPE.DD
    
    //AB-IgnoreEnd

    Object type is a dbModalPanel
        Set Label to "Change this 'Label' property..."
        Set Size to 148 297
        Set Location to 4 5

        //AB-DDOStart

        Object Type_DD is a Type_DataDictionary
        End_Object    // Type_DD

        Set Main_DD to (Type_DD(self))
        Set Server to (Type_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Type.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Type.Type_id
                Entry_Item Type.Cd_descr
            End_Row

            Set Form_Width    item 0 to 70
            Set Header_Label  item 0 to "Type id"
            
            Set Form_Width    item 1 to 201
            Set Header_Label  item 1 to "Cd descr"
            
        End_Object    // oSelList

        Object oOK_bn is a Button
            Set Label to "&OK"
            Set Location to 115 126

            //AB-StoreStart
            Procedure OnClick
                Send OK To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oOK_bn

        Object oCancel_bn is a Button
            Set Label to "&Cancel"
            Set Location to 115 181

            //AB-StoreStart
            Procedure OnClick
                Send Cancel To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oCancel_bn

        Object oSearch_bn is a Button
            Set Label to "&Search..."
            Set Location to 115 236

            //AB-StoreStart
            Procedure OnClick
                Send Search To oSelList
            End_Procedure
            //AB-StoreEnd

        End_Object    // oSearch_bn


        //AB-StoreStart
        On_Key Key_Alt+Key_O Send KeyAction To oOk_bn
        On_Key Key_Alt+Key_C Send KeyAction To oCancel_bn
        On_Key Key_Alt+Key_S Send KeyAction To oSearch_bn
        //AB-StoreEnd

    End_Object    // type

//AB/     End_Object    // prj
