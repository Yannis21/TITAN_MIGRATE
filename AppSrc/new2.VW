//AB/ Project new2
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "new2"
//AB/         Set ProjectFileName to "new2.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   new2 is a dbViewSubS
//     Anprod_DD is a DataDictionary
//     Anprod_ is a dbGridSub

// Register all objects
Register_Object Anprod_
Register_Object Anprod_DD
Register_Object new2


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use DFAllEnt.pkg
    Use dbGrid.Sub

    Use ANPROD.DD
    
    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_new2 FOR new2

    Object new2 is a dbViewSubS
        Set Label to "€¨®œå¦ ‰˜«˜¤˜¢é©œà¤"
        Set Size to 150 300
        Set Location to 6 6

        //AB-DDOStart

        Object Anprod_DD is a Anprod_DataDictionary
        End_Object    // Anprod_DD

        Set Main_DD to (Anprod_DD(self))
        Set Server to (Anprod_DD(self))

        //AB-DDOEnd

        Object Anprod_ is a dbGridSub
            Set Main_File to Anprod.File_Number
            Set Size to 70 150
            Set Location to 43 90
            Set Wrap_State to TRUE

            Begin_Row
                Entry_Item Anprod.Anprod_date
                Entry_Item Anprod.Anprod_item
                Entry_Item Anprod.Anprod_qty
                Entry_Item Anprod.Anprod_cartp
                Entry_Item Anprod.Anprod_itemtn
            End_Row

            Set Form_Width    item 0 to 60
            Set Header_Label  item 0 to "Anprod Date"
            
            Set Form_Width    item 1 to 120
            Set Header_Label  item 1 to "Anprod Item"
            
            Set Form_Width    item 2 to 108
            Set Header_Label  item 2 to "Anprod Qty"
            
            Set Form_Width    item 3 to 21
            Set Header_Label  item 3 to "Anprod Cartp"
            
            Set Form_Width    item 4 to 120
            Set Header_Label  item 4 to "Anprod Itemtn"
            
        End_Object    // Anprod_

    End_Object    // new2

//AB/     End_Object    // prj
