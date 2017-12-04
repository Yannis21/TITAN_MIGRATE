//AB/ Project Vlogik:logistikopiish
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Vlogik:logistikopiish"
//AB/     Set ProjectFileName to "Vlogik.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Vlogik is a dbViewSubS
//     RadioGroupSub1 is a RadioGroupSub
//       Radio1 is a RadioSub
//       Radio2 is a RadioSub
//       Radio3 is a RadioSub
//       RadioSub1 is a RadioSub
//       RadioSub4 is a RadioSub
//     oOK_bn is a ButtonSub

// Register all objects
Register_Object oOK_bn
Register_Object Radio1
Register_Object Radio2
Register_Object Radio3
Register_Object RadioGroupSub1
Register_Object RadioSub1
Register_Object RadioSub4
Register_Object Vlogik


//AB/ AppBuild VIEW


//AB-StoreTopStart
use V21a.vw
use V30.vw
use V83l.vw
use V21b.vw
use VGL.vw

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Rgroup.Sub
Use Radio.Sub
Use Button.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Vlogik FOR Vlogik

Object Vlogik is a dbViewSubS

    //AB-StoreTopStart
    property integer piepil public 0
    //AB-StoreTopEnd

    Set Label to "Š¦š ©« ¡¦§¦ ã©œ ª §˜¨˜©«˜« ¡é¤ - ˜¥ ¦š¨á­à¤ - §˜šåà¤"
    Set Size to 129 300
    Set Location to 2 7

    //AB-DDOStart


    //AB-DDOEnd

    Object RadioGroupSub1 is a RadioGroupSub
        Set Size to 81 283
        Set Location to 2 3
        Object Radio1 is a RadioSub
            Set Label to "Š¦š ©« ¡¦§¦åž©ž §˜¨˜©«˜« ¡é¤ §à¢ã©œà¤ - ˜š¦¨é¤"
            Set Size to 10 199
            Set Location to 10 5
            Set TextColor to clRed
        End_Object    // Radio1

        Object Radio2 is a RadioSub
            Set Label to "Š¦š ©« ¡¦§¦åž©ž ¡ ¤ã©œà¤ ˜¥ ¦š¨á­à¤"
            Set Size to 10 162
            Set Location to 25 5
        End_Object    // Radio2

        Object Radio3 is a RadioSub
            Set Label to "Š¦š ©« ¡¦§¦åž©ž ¡ ¤ã©œà¤ §˜šåà¤"
            Set Size to 10 152
            Set Location to 40 5
        End_Object    // Radio3

        Object RadioSub1 is a RadioSub
            Set Label to "„¢œš®¦ª œšš¨˜­é¤ / £œ¨ ¡ã - ¦¢ ¡ã › ˜› ¡˜©å˜ ˜¡ç¨à©žª ¢¦š ©« ¡¦§¦åž©žª"
            Set Size to 10 267
            Set Location to 55 5
            Set Auto_Size_State to FALSE
        End_Object    // RadioSub1

        Object RadioSub4 is a RadioSub
            Set Label to "‚â­¬¨˜ £œ ‚.Š"
            Set Size to 12 68
            Set Location to 68 5
            Set Color to clAqua
            Set TextColor to clRed
            Set Auto_Size_State to FALSE
        End_Object    // RadioSub4


        //AB-StoreStart
                            
        Procedure Notify_Select_State integer inewItem integer ioldItem
            local integer licount
            Forward Send Notify_Select_State  iNewItem  iOldItem
            Set piEpil to (iNewItem+1)
        End_Procedure
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // RadioGroupSub1

    Object oOK_bn is a ButtonSub
        Set Label to "&„§ ¢¦šã"
        Set Location to 94 3
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        Procedure OnClick
           integer iepil
           get piepil to iepil
           if      (iepil=1) Send Activate_V21a
           else if (iepil=2) Send Activate_V30
           else if (iepil=3) Send Activate_V83l
           else if (iepil=4) Send Activate_V21b
           else if (iepil=5) Send Activate_VGL
        End_Procedure
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // oOK_bn


    //AB-StoreStart
                                                                    
    //AB-StoreEnd

End_Object    // Vlogik


//AB-StoreStart
    
//AB-StoreEnd

//AB/ End_Object    // prj
