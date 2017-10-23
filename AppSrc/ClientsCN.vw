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

ACTIVATE_VIEW Activate_ClientsCN FOR ClientsCN
Object ClientsCN Is A dbView
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
        Set Constrain_file to MICLIENT.File_number
        Set DDO_Server to oMiclient_DD
    End_Object

    Set Main_DD to oMiclient_DD
    Set Server to oMiclient_DD

    Set Location to 5 5
    Set Size to 249 560
    Set Label To "ClientsCN"
    Set Border_Style to Border_Thick



    Object oMiclientClient_Id Is A dbForm
        Entry_Item Miclient.Client_Id
        Set Size to 13 126
        Set Location to 5 45
        Set peAnchors to anLeftRight
        Set Label to "Client Id"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 40
        Set Label_row_Offset to 0
    End_Object // oMiclientClient_Id

    Object oMiclientClient_Name Is A dbForm
        Entry_Item Miclient.Client_Name
        Set Size to 13 486
        Set Location to 20 45
        Set peAnchors to anLeftRight
        Set Label to "Client Name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 40
        Set Label_row_Offset to 0
    End_Object // oMiclientClient_Name

    Object oMiclientClient_Afm Is A dbForm
        Entry_Item Miclient.Client_Afm
        Set Size to 13 126
        Set Location to 35 45
        Set peAnchors to anLeftRight
        Set Label to "Client Afm"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 40
        Set Label_row_Offset to 0
    End_Object // oMiclientClient_Afm

    Object oDetailGrid Is A dbGrid
        Set Size to 183 550
        Set Location to 58 5

        Begin_row
            Entry_Item Micn.Cn_Code
            Entry_Item Micn.Cn_Descr
            Entry_Item Micn.Cn_Address
            Entry_Item Micn.Cn_Start_Date
            Entry_Item Micn.Cn_End_Date
        End_row

        Set Main_file to Micn.File_number

        Set Form_Width 0 to 120
        Set Header_Label 0 to "Cn Code"

        Set Form_Width 1 to 150
        Set Header_Label 1 to "Cn Descr"

        Set Form_Width 2 to 150
        Set Header_Label 2 to "Cn Address"

        Set Form_Width 3 to 60
        Set Header_Label 3 to "Cn Start Date"

        Set Form_Width 4 to 60
        Set Header_Label 4 to "Cn End Date"


        Set Server to oMicn_DD
        Set Ordering to 6
        Set peResizeColumn to rcAll
        Set peAnchors to anAll
        Set Wrap_State to TRUE

        // Setting child_table_state to true will
        // cause the grid to save when exiting and
        // attempt to save the header when entering.
        Set Child_Table_State to True

        // Often grids are set up, so that items can never be added out
        // of order. New items are always added to the end of the table.
        // By setting Auto_Regenerate_State to false we are telling the
        // table to never bother reordering after adding records. This is
        // a minor optimization.
        //Set Auto_Regenerate_State to False // table is always in order.

        // Child_Entering is called when entering the table. Check with the header if it
        // has a valid saved record. If not, disallow entry.
        Function Child_Entering returns Integer
            Boolean bFail
            // Check with header to see if it is saved.
            Delegate Get SaveHeader to bFail
            Function_Return bFail // if non-zero do not enter
        End_Function // Child_Entering

        // Assign insert-row key append a row
        // Create new behavior to support append a row

        On_key kAdd_Mode send Append_a_Row  // Hot Key for KAdd_Mode = Shift+F10

        // Add new record to the end of the table.
        Procedure Append_a_Row 
            Send End_Of_Data
            Send Down
        End_Procedure // Append_a_Row

    End_Object // oDetailGrid


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



End_Object // ClientsCN
