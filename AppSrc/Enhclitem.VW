//AB/ Project Enhclitem
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Enhclitem"
//AB/         Set ProjectFileName to "Enhclitem.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Enhclitem is a dbViewSubS
//     pmoves_DD is a pmoves_DataDictionary
//     clitem_DD is a clitem_DataDictionary
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object clitem_DD
Register_Object Enhclitem
Register_Object pmoves_DD


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    use pmoves.dd
    use clitem.dd
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Enhclitem FOR ;
    ;
    Object Enhclitem is a dbViewSubS

        //AB-StoreTopStart
        Object pmoves_DD is a pmoves_DataDictionary
        End_Object    // pmoves_DD
        
        Object clitem_DD is a clitem_DataDictionary
        End_Object    // pmoves_DD
        //AB-StoreTopEnd

        Set Label to "Ñ§û£ú®‡©û ò®Æú†¶¨ Clitem Ä§òõ®¶£†°·"
        Set Size to 89 425
        Set Location to 2 7

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 39 120

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel
                number nnunit nnqty nnpcdisc nnaxia nnnet nntotal
                Get Label to sLabel
                Clear pmoves
                move '01/01/1980' to pmoves.partl_hmnia
                Find Gt pmoves by index.9
                While (Found)
                   Set Label to pmoves.pms_Recr
                   if (pmoves.pms_module='01') begin
                      move (round_number((((pmoves.pms_unitprice*pmoves.pms_pctdisc)/100)),2)) to nntotal
                      move (pmoves.pms_unitprice - nntotal) to nnaxia
                      if (nnaxia<>0) begin
                         clear clitem
                         move pmoves.client_id  to clitem.client_id
                         move pmoves.witemx_code to clitem.item_code
                         find eq clitem by index.1
                         if (not(found)) begin
                            move pmoves.client_id  to clitem.client_id
                            move pmoves.witemx_code to clitem.item_code
                            move pmoves.partl_hmnia to clitem.item_date
                            move nnaxia             to clitem.item_axia
                            move pmoves.pms_pctdisc to clitem.item_pctdisc
                            move pmoves.pms_unitprice to clitem.item_price
                            saverecord clitem
                         end
                         else begin
                         if ((pmoves.pms_unitprice<>clitem.item_price)or(pmoves.pms_pctdisc<>clitem.item_pctdisc)) begin
                             reread clitem
                             move pmoves.partl_hmnia to clitem.item_date
                             move nnaxia             to clitem.item_axia
                             move pmoves.pms_unitprice to clitem.item_price
                             move pmoves.pms_pctdisc to clitem.item_pctdisc
                             saverecord clitem
                             unlock
                        end
                      end
                   end
                end
            
                  Find Gt pmoves by index.9
                Loop
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                                
                                
                                
        //AB-StoreEnd

    CD_End_Object    // Enhclitem


    //AB-StoreStart
                
                
    //AB-StoreEnd

//AB/     End_Object    // prj
