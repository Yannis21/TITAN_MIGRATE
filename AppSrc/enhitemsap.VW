//AB/ Project enhitemsap
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "enhitemsap"
//AB/         Set ProjectFileName to "enhitemsap.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   enhitemsap is a dbViewSubs
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object enhitemsap


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open item
    open wapokat
    
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbViews.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_enhitemsap FOR ;
    ;
    Object enhitemsap is a dbViewSubs
        Set Label to "Ä§òõ®¶£†°„ Ñ§û£ú®‡©û ò®Æú†¶¨ Ñ†õÈ§ £ú °‡õ†°Ê SAP"
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
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£‚®‡©û'
            
            Procedure OnClick
                String  sLabel sitem sti
                number nnunit nnqty nnpcdisc nnaxia nnnet nntotal
                Get Label to sLabel
                clear item
                find gt item.recnum
                while (found)
                        move '' to sitem
                        move '' to sti
                        move tmpanal.item to item.item_code
                        clear wapokat
                        move item.wapokat_code to wapokat.wapokat_code
                        find eq wapokat by index.1
                        if (not(found)) goto exit_item99
                        move 'B'                                to sitem
                        move wapokat.sap_descr              to sti
                        insert sti in sitem at 2
                        insert 'O' in sitem at 3
                        reread ITEM
                        insert item.sap in sitem at 4
                        move sitem                              to Item.codeglpol
                        saverecord item
                        unlock
                        exit_item99:
                        find gt item.recnum
                  Loop
            
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
                        
                        
                        
                        
        //AB-StoreEnd

    CD_End_Object    // enhitemsap


    //AB-StoreStart
            
            
            
    //AB-StoreEnd

//AB/     End_Object    // prj
