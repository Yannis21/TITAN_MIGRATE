//AB/ Project songs
//AB/     Object prj is a Lookup_Project
//AB/         Set ProjectName to "songs"
//AB/         Set ProjectFileName to "songs.SL"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   songs is a dbModalPanel
//     Category_DD is a DataDictionary
//     Type_DD is a DataDictionary
//     Details_DD is a DataDictionary
//     Songs_DD is a DataDictionary
//     oSelList is a dbList
//     oOK_bn is a Button
//     oCancel_bn is a Button
//     oSearch_bn is a Button

// Register all objects
Register_Object Category_DD
Register_Object Details_DD
Register_Object oCancel_bn
Register_Object oOK_bn
Register_Object oSearch_bn
Register_Object oSelList
Register_Object Songs_DD
Register_Object songs
Register_Object Type_DD


    //AB-IgnoreStart

    Use DFAllEnt.pkg


    Use CATEGORY.DD
    Use TYPE.DD
    Use DETAILS.DD
    Use SONGS.DD
    
    //AB-IgnoreEnd

    Object songs is a dbModalPanel
        Set Label to "Change this 'Label' property..."
        Set Size to 148 297
        Set Location to 4 5

        //AB-DDOStart

        Object Category_DD is a Category_DataDictionary
        End_Object    // Category_DD

        Object Type_DD is a Type_DataDictionary
        End_Object    // Type_DD

        Object Details_DD is a Details_DataDictionary
            Set DDO_Server to (Category_DD(self))
            Set DDO_Server to (Type_DD(self))
        End_Object    // Details_DD

        Object Songs_DD is a Songs_DataDictionary
            Set DDO_Server to (Details_DD(self))
        End_Object    // Songs_DD

        Set Main_DD to (Songs_DD(self))
        Set Server to (Songs_DD(self))

        //AB-DDOEnd

        Object oSelList is a dbList
            Set Main_File to Songs.File_Number
            Set Size to 105 280
            Set Location to 6 6

            Begin_Row
                Entry_Item Songs.No
                Entry_Item Songs.Title
                Entry_Item Songs.Time
                Entry_Item Details.Cd_num
            End_Row

            Set Form_Width    item 0 to 24
            Set Header_Label  item 0 to "No"
            
            Set Form_Width    item 1 to 240
            Set Header_Label  item 1 to "Title"
            
            Set Form_Width    item 2 to 48
            Set Header_Label  item 2 to "Time"
            
            Set Form_Width    item 3 to 30
            Set Header_Label  item 3 to "Cd num"
            
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

    End_Object    // songs

//AB/     End_Object    // prj
