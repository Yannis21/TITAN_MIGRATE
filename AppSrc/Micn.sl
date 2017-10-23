// Micn.sl
// Micn Lookup List

Use DFClient.pkg
Use DFSelLst.pkg
Use Windows.pkg

Use Micities.dd
Use Miareas.dd
Use Mipresp.dd
Use Miclient.dd
Use Miconstr.dd
Use Misalesm.dd
Use Mimhxan.dd
Use Micn.dd

CD_Popup_Object Micn_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 530
    Set Label To "Micn Lookup List"
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

    Object oMiconstr_DD Is A Miconstr
    End_Object // oMiconstr_DD

    Object oMisalesm_DD Is A Misalesm
    End_Object // oMisalesm_DD

    Object oMimhxan_DD Is A Mimhxan
    End_Object // oMimhxan_DD

    Object oMicn_DD Is A Micn
        Set DDO_Server To oMiclient_DD
        Set DDO_Server To oMiconstr_DD
        Set DDO_Server To oMisalesm_DD
        Set DDO_Server To oMimhxan_DD
    End_Object // oMicn_DD

    Set Main_DD To oMicn_DD
    Set Server  To oMicn_DD



    Object oSelList Is A dbList
        Set Size to 105 520
        Set Location to 5 5
        Set peAnchors to anAll
        Set Main_File to Micn.File_Number
        Set Ordering to 1
        Set peResizeColumn to rcAll
        Set Auto_Server_State to True
        Set pbHeaderTogglesDirection to True

        Begin_row
            Entry_Item Micn.Client_Id
            Entry_Item MICLIENT.CLIENT_NAME
            Entry_Item Micn.Cn_Code
            Entry_Item Micn.Cn_Descr
            Entry_Item Micn.Cn_Start_Date
            Entry_Item Micn.Cn_End_Date
        End_row

        Set Form_Width 0 to 62
        Set Header_Label 0 to "Client ID"

        Set Form_Width 1 to 101
        Set Header_Label 5 to "Cn End Date"

        Set Form_Width 2 to 85
        Set Header_Label 1 to "Name"

        Set Form_Width 3 to 147
        Set Header_Label 2 to "Cn Code"

        Set Form_Width 4 to 60
        Set Header_Label 3 to "Cn Descr"

        Set Form_Width 5 to 60
        Set Header_Label 4 to "Cn Start Date"

    End_Object // oSelList

    Object oOk_bn Is A Button
        Set Label to "&Ok"
        Set Location to 115 367
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object // oOk_bn

    Object oCancel_bn Is A Button
        Set Label to "&Cancel"
        Set Location to 115 421
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object // oCancel_bn

    Object oSearch_bn Is A Button
        Set Label to "&Search..."
        Set Location to 115 475
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object // oSearch_bn

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Micn_sl
