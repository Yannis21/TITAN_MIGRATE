
Use DBVIEW.SUB

//AB/ Project Data Entry View
//AB/ Object prj is a View_Project
//AB/     Set Size to 230 325

Deferred_View Activate_UpdateZonesForCN for ;
;
Object UpdateZonesForCN is a dbView

    Set Border_Style to Border_Thick
    Set Size to 91 411
    Set Location to 10 14
    Set Label to "Ñ§û£‚®‡©û è®Ê©üú´‡§ èúõÂ‡§ ÑêÇóå £ú ´û§ ÖÈ§û ©´û§ ¶ß¶Âò ò§„°¶¨§"

    Object btnSub2 is a Button
        Set Size to 20 383
        Set Location to 47 11
        Set Label to "Ñ§û£‚®‡©û"


        Procedure OnClick
            Integer iCnt iFS iExportFlag iRecn
            Integer iFileNumber iFields iField_Type
            String  sFullName sFileName sStr sPedio sLabel sName sMess
            String sSLS sCNT sMHX
            Integer isFound ByPass ichkCNnoClient ichkDebug iSKIPALL

            Get Label to sLabel
            Move 0 to iCnt
            
            File_Size Clients to iFS

            Clear CLIENTS
            Find GE CLIENTS.Recnum
            While (Found)
                Add 1 to iCnt
                Move (String(iCnt)+"/"+String(iFS)) to sMess
                Set Label to (Trim(sMess))

                If (Clients.EXPORTFLAG=1) Begin
                    Clear CN
                    Move Clients.CLIENT_ID to CN.CLIENT_ID
                    Find GE CN by Index.4
                    While ((Found) and (CN.CLIENT_ID=Clients.CLIENT_ID))
                        If (CN.EXPORTFLAG=1) Begin
                            Clear MICN
                            Move CN.CN_Code to MICN.CN_CODE
                            Find Eq MICN by Index.5
                            If (Found) Begin
                                Clear CNZONES
                                Move CN.CN_CODE to CNZONES.CN_CODE
                                Find GE CNZONES by Index.1
                                If ((Found=1) and (CN.CN_CODE=CNZONES.CN_CODE)) Begin
                                    Clear BRZONES
                                    Move CNZONES.BRZONE_RECR to BRZONES.BRZONE_RECR
                                    Find Eq BRZONES by Index.2
                                    If (Found) Begin
                                        Clear ZONES
                                        Move BRZONES.ZONE_ID to Zones.ZONE_ID
                                        Find Eq ZONES by Index.1 
                                        If (Found) Begin
                                            //Showln "<<>><<>><<>>"
                                            Reread MICN
                                            Move (Trim(Zones.ZONE_DESCR))   to MICN.CN_VDETAILS
                                            Move Zones.ZONE_ID              to MICN.CN_CLIENTMATCH  // MICN.CN_PUMPLICENSE
                                            Move Brzones.BRZONE_RECR        to MICN.CN_ZONE
                                            SaveRecord MICN
                                            Unlock
                                        End
                                    End
                                End                        
                            End                    
                        End
                        Find GT CN by Index.4
                    Loop
                End
                Find GT CLIENTS.Recnum
            Loop
            Send Info_Box "Ü Ñ§û£‚®‡©û é¢¶°¢û®Èüû°ú" "è¢û®¶≠¶®Âò"
            Set Label to sLabel
        End_Procedure

    End_Object

    //AB-DDOStart

    //AB-DDOEnd

CD_End_Object    // oCustomerView

//AB/ End_Object    // prj