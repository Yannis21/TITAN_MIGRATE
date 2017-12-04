//AB/ Project Enhbrzones
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Enhbrzones"
//AB/         Set ProjectFileName to "Enhbrzones.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Enhbrzones is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Enhbrzones


//AB/     AppBuild VIEW


    //AB-StoreTopStart
    open brzones
    open cnzones
    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_Enhbrzones FOR ;
    ;
    Object Enhbrzones is a dbViewSubS

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ñ§û£ú®‡©û ò®Æú†¶¨ Brzones £ú §‚¶ ìß¶°ò´·©´û£ò"
        Set Size to 89 425
        Set Location to 2 7

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart
            
            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 181
            Set Location to 53 119
            Set Form_TypeFace Item 0 to "MS Sans Serif"

            //AB-StoreStart
            
            Set Label to 'Ñ§û£ú®‡©û'
            
            Procedure OnClick
                String  sLabel
                number nnunit nnqty nnpcdisc nnaxia nnnet nntotal
                Get Label to sLabel
                Lock
                Clear brzones
                Find Gt brzones.recnum
                While (Found)
                   Set Label to brzones.recnum
                   move '64.14' to brzones.branch_recr
                   move '64'    to brzones.beto_site
                   saverecord brzones
                  Find Gt brzones.recnum
                Loop
                clear cnzones
                Find Gt cnzones.recnum
                While (Found)
                   Set Label to cnzones.recnum
                   move '64.14' to cnzones.branch_recr
                   move '64'    to cnzones.beto_site_3
                   saverecord cnzones
                  Find Gt cnzones.recnum
                Loop
                unlock
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú !' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart
        
        
        
        
        //AB-StoreEnd

    CD_End_Object    // Enhbrzones


    //AB-StoreStart
    
    
    
    //AB-StoreEnd

//AB/     End_Object    // prj
