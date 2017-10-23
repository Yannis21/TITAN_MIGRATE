// L:\VDF14.1.Dev\TITAN_MIGRATE\AppSrc\ClientsCN.vw
// ClientsCN
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfTable.pkg
Use Micities.dd
Use Miareas.dd
Use Mipresp.dd
Use Miclient.dd
Use Miconstr.dd
Use Misalesm.dd
Use Mimhxan.dd
Use Micn.dd
Use Miordh.dd
Use Miordd.dd

Activate_View Activate_DEOP_View for DEOP_View
Object DEOP_View is a dbView
    Object oMimhxan_DD is a Mimhxan
    End_Object

    Object oMisalesm_DD is a Misalesm
    End_Object

    Object oMiconstr_DD is a Miconstr
    End_Object

    Object oMipresp_DD is a Mipresp
    End_Object

    Object oMiareas_DD is a Miareas
    End_Object

    Object oMicities_DD is a Micities
    End_Object

    Object oMiclient_DD is a Miclient
        Set DDO_Server to oMipresp_DD
        Set DDO_Server to oMiareas_DD
        Set DDO_Server to oMicities_DD
    End_Object

    Object oMicn_DD is a Micn
        Set DDO_Server to oMimhxan_DD
        Set DDO_Server to oMisalesm_DD
        Set DDO_Server to oMiconstr_DD
        Set DDO_Server to oMiclient_DD
    End_Object

    Object oMiordh_DD is a Miordh
        Set Constrain_file to MICN.File_number
        Set DDO_Server to oMicn_DD
    End_Object

    Object oMiordd_DD is a Miordd
        Set Constrain_file to MIORDH.File_number
        Set DDO_Server to oMiordh_DD
    End_Object

    Set Main_DD to oMicn_DD
    Set Server to oMicn_DD

    Set Location to 5 5
    Set Size to 363 560
    Set Label to "ÉÑéè "
    Set Border_Style to Border_Thick


    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function // ConfirmDeleteHeader

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function // ConfirmSaveOrder

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to GET_ConfirmSaveHeader
    Set Verify_Delete_MSG     to GET_ConfirmDeleteHeader

    Object oDbGrid1 is a dbGrid
        Set Size to 121 550
        Set Location to 107 5

        Begin_Row
            Entry_Item MIORDH.AA_DEOP
            Entry_Item MIORDH.CN_CODE
            Entry_Item MIORDH.CLIENT_ID
            Entry_Item MIORDH.DEOP_DATE
            Entry_Item MIORDH.DEOP_LHXH
        End_Row

        Set Main_File to MIORDH.File_number

        Set Server to oMiordh_DD

        Set Form_Width 0 to 150
        Set Header_Label 0 to "AA DEOP"
        Set Form_Width 1 to 120
        Set Header_Label 1 to "CN CODE"
        Set Form_Width 2 to 120
        Set Header_Label 2 to "CLIENT ID"
        Set Form_Width 3 to 60
        Set Header_Label 3 to "DEOP DATE"
        Set Form_Width 4 to 60
        Set Header_Label 4 to "DEOP LHXH"
    End_Object

    Object oDbGrid2 is a dbGrid
        Set Size to 115 550
        Set Location to 238 5

        Begin_Row
            Entry_Item MIORDD.VITEM
            Entry_Item MIORDD.VITEM_DESCR
            Entry_Item MIORDD.VQTY
            Entry_Item MIORDD.VUNITPRICE
        End_Row

        Set Main_File to MIORDD.File_number

        Set Server to oMiordd_DD

        Set Form_Width 0 to 120
        Set Header_Label 0 to "VITEM"
        Set Form_Width 1 to 180
        Set Header_Label 1 to "VITEM DESCR"
        Set Form_Width 2 to 96
        Set Header_Label 2 to "VQTY"
        Set Form_Width 3 to 108
        Set Header_Label 3 to "VUNITPRICE"
    End_Object

    Object oMICN_CLIENT_ID is a dbForm
        Entry_Item MICN.CLIENT_ID

        Set Server to oMicn_DD
        Set Location to 6 66
        Set Size to 13 126
        Set Label to "CLIENT ID:"
        Set Enabled_State to False
    End_Object

    Object oMICN_CN_CODE is a dbForm
        Entry_Item MICN.CN_CODE

        Set Server to oMicn_DD
        Set Location to 24 66
        Set Size to 13 126
        Set Label to "CN CODE:"
    End_Object

    Object oMICN_CN_DESCR is a dbForm
        Entry_Item MICN.CN_DESCR

        Set Server to oMicn_DD
        Set Location to 39 66
        Set Size to 13 279
        Set Label to "CN DESCR:"
    End_Object

    Object oMICN_CN_ADDRESS is a dbForm
        Entry_Item MICN.CN_ADDRESS

        Set Server to oMicn_DD
        Set Location to 54 66
        Set Size to 13 279
        Set Label to "CN ADDRESS:"
    End_Object

    Object oMICN_CN_START_DATE is a dbForm
        Entry_Item MICN.CN_START_DATE

        Set Server to oMicn_DD
        Set Location to 69 66
        Set Size to 13 66
        Set Label to "CN START DATE:"
    End_Object

    Object oMICN_CN_END_DATE is a dbForm
        Entry_Item MICN.CN_END_DATE

        Set Server to oMicn_DD
        Set Location to 84 66
        Set Size to 13 66
        Set Label to "CN END DATE:"
    End_Object

    Object oMICLIENT_CLIENT_NAME is a dbForm
        Entry_Item MICLIENT.CLIENT_NAME
        Set Location to 6 259
        Set Size to 13 281
        Set Label to "CLIENT NAME:"
        Set Enabled_State to False
    End_Object

    Object oMICN_EXPORTFLAG is a dbForm
        Entry_Item MICN.EXPORTFLAG
        Set Location to 84 217
        Set Size to 13 18
        Set Label to "EXPORTFLAG:"
    End_Object

    //-------------------------------------------------------------------
    //  Table entry checking - attempt to save header record
    //  before entering a table (this is called by table. Return
    //  a non-zero if the save failed (i.e., do not enter table)
    //-------------------------------------------------------------------

    Function SaveHeader Returns Boolean
        Integer iRec
        Boolean bChanged bHasRecord
        Handle  hoSrvr

        Get Server to hoSrvr                   // The Header DDO.
        Get HasRecord of hoSrvr to bHasRecord  // Is there a record?
        Get Should_Save to bChanged            // Are there any current changes?

        // If there is no record and no changes we have an error.
        If (not(bHasRecord) AND not(bChanged) ) Begin  // no rec
            Error DfErr_Operator "You must First Create & Save the Header"
            Function_Return True
        End

        // Attempt to Save the current Record
        // request_save_no_clear does a save without clearing.
        Send Request_Save_No_Clear

        // The save succeeded if there are now no changes, and we
        // have a saved record. Should_save tells us if we've got changes.
        // We must check the DDO's HasRecord property to see if
        // we have a record. If it is false, we had no save.
        Get Should_Save to bChanged  // is a save still needed
        Get HasRecord of hoSrvr to bHasRecord // is there a record after the save?
        // if no record or changes still exist, return an error code of 1
        If (not(bHasRecord) OR (bChanged)) begin
            Function_Return true
        End
    End_Function // SaveHeader



End_Object
