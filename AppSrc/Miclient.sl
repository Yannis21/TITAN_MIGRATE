// Miclient.sl
// Miclient Lookup List

Use DFClient.pkg
Use DFSelLst.pkg
Use Windows.pkg

Use Micities.dd
Use Miareas.dd
Use Mipresp.dd
Use Miclient.dd

CD_Popup_Object Miclient_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 610
    Set Label To "Miclient Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oMicities_DD Is A Micities
    End_Object // oMicities_DD

    Object oMiareas_DD Is A Miareas
    End_Object // oMiareas_DD

    Object oMipresp_DD Is A Mipresp
    End_Object // oMipresp_DD

    Object oMiclient_DD Is A Miclient
        Set DDO_Server To oMicities_DD
        Set DDO_Server To oMiareas_DD
        Set DDO_Server To oMipresp_DD
    End_Object // oMiclient_DD

    Set Main_DD To oMiclient_DD
    Set Server  To oMiclient_DD



    Object oSelList Is A dbList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anAll
        Set Main_File to Miclient.File_Number
        Set Ordering to 1
        Set peResizeColumn to rcAll
        Set Auto_Server_State to True
        Set pbHeaderTogglesDirection to True

        Begin_row
            Entry_Item Miclient.Client_Id
            Entry_Item Miclient.Client_Name
            Entry_Item Miclient.Client_Afm
            Entry_Item Miclient.Client_Address
            Entry_Item Miclient.Client_Phone
        End_row

        Set Form_Width 0 to 84
        Set Header_Label 0 to "Client Id"

        Set Form_Width 1 to 150
        Set Header_Label 1 to "Client Name"

        Set Form_Width 2 to 74
        Set Header_Label 2 to "Client Afm"

        Set Form_Width 3 to 150
        Set Header_Label 3 to "Client Address"

        Set Form_Width 4 to 137
        Set Header_Label 4 to "Client Phone"

    End_Object // oSelList

    Object oOk_bn Is A Button
        Set Label to "&Ok"
        Set Location to 115 447
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object // oOk_bn

    Object oCancel_bn Is A Button
        Set Label to "&Cancel"
        Set Location to 115 501
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object // oCancel_bn

    Object oSearch_bn Is A Button
        Set Label to "&Search..."
        Set Location to 115 555
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object // oSearch_bn

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Miclient_sl
