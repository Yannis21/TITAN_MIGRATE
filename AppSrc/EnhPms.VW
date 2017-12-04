//AB/ Project EnhPms
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "EnhPms"
//AB/         Set ProjectFileName to "EnhPms.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   EnhPms is a dbViewSubS
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object EnhPms


//AB/     AppBuild VIEW


    //AB-StoreTopStart

    //AB-StoreTopEnd

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    DEFERRED_VIEW Activate_EnhPms FOR ;
    ;
    Object EnhPms is a dbViewSubS

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "Ñ§û£ú®‡©û ò®Æú†¶¨ Pmoves °ò† Particle £ú ìß¶¢¶†ßò è¶©¶´û´‡§ °ò† flag ´† ´¨ßÈ§ú†"
        Set Size to 89 479
        Set Location to 7 9

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Set Label to "ButtonSub1"
            Set Size to 14 191
            Set Location to 39 142

            //AB-StoreStart

            Set Label to 'Ñ§û£ú®‡©û'

            Procedure OnClick
                String  sLabel
                Integer iMet iMet2
                Get Label to sLabel

                Open Ctypkin
                Open Country
                Open Towns
                Open Cities
                Open Payresp
                Open Areas
                Open Clients
                Open Cmoves
                Open Cflagkin
                Open Wtypkin
                Open Ptyppar
                Open Nomisma
                Open Fpa
                Open Particle
                Open Partlfpa
                Open Wapokat
                Open Wapomast
                Open Wax
                Open Units
                Open Witemkat
                Open Fpa
                Open Wam
                Open Item
                Open Witemx
                Open Pmoves

                Move 0 to iMet
                Move 0 to iMet2

                Clear Pmoves
                Lock
                Find Gt Pmoves.recnum
                While (Found)
                    Set Label to (String(Pmoves.recnum))
                    Relate Pmoves
                    Move  Pmoves.Pms_Qty                    to Pmoves.Timol_Qty
                    Move (Pmoves.Pms_Qty-Pmoves.Timol_Qty)  to Pmoves.Timol_Ypol
                    Move Ptyppar.Ti_Typonei_Pms             to Pmoves.Ti_Typonei_Pms
                    Saverecord Pmoves
                    Find Gt Pmoves.recnum
                Loop
                Unlock
                Send Info_Box 'Ü ú§û£‚®‡©û ´ú¢úÂ‡©ú úß†´¨ÆÈ™' 'è¢û®¶≠¶®Âò'
                Set Label to sLabel
            End_Procedure // OnClick


            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart

        //AB-StoreEnd

    CD_End_Object    // EnhPms

//AB/     End_Object    // prj
