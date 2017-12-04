//AB/ Project Yan1
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Yan1"
//AB/     Set ProjectFileName to "Yan1.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Yan1 is a dbViewSubS
//     ButtonSub1 is a ButtonSub
//     ButtonSub3 is a ButtonSub
//     MyMessage is a OLEMsgBoxEx
//     MyFom is a OLEFormEx

// Register all objects
Register_Object ButtonSub1
Register_Object ButtonSub3
Register_Object MyFom
Register_Object MyMessage
Register_Object Yan1


//AB/ AppBuild VIEW


//AB-StoreTopStart
        
        
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Button.Sub

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Yan1 FOR ;
;
Object Yan1 is a dbViewSubS
    Set Label to "Put The Label of The View Here"
    Set Size to 160 387
    Set Location to 6 6

    //AB-DDOStart


    //AB-DDOEnd

    Object ButtonSub1 is a ButtonSub
        Set Label to "Custom Message Box"
        Set Size to 14 107
        Set Location to 6 7

        //AB-StoreStart
                    
        Procedure OnClick
            Integer iBtn
            SET MsgBoxExForeground      Of MyMessage to True
            SET MsgBoxExPrompt          Of MyMessage to (ToAnsi('ãú©©ò´ù †§ Ç°®†° message in the dialog box'))
            SET MsgBoxExTitle           Of MyMessage to (ToAnsi('ãú©©ò´ù †§ Ç°®†° message Title'))
            SET MsgBoxExButtons         Of MyMessage to OLEmbThreeCustomButtons
            SET MsgBoxExModal           Of MyMessage to OLEmbApplicationModal
            SET MsgBoxExDefaultButton   Of MyMessage to OLEmbDefaultButton2
            SET MsgBoxExIcon            Of MyMessage to OLEmbQuestion
            SET MsgBoxExButton1Caption  Of MyMessage to (ToAnsi('â¶¨£ßÂ 1'))
            SET MsgBoxExButton2Caption  Of MyMessage to (ToAnsi('â¶¨£ßÂ 2'))
            SET MsgBoxExButton3Caption  Of MyMessage to (ToAnsi('â¶¨£ßÂ 3'))
        
            Get MsgBoxExShow            Of MyMessage to iBtn
                 If (iBtn=1) Send Info_Box 'OK      Or Button 4 Pressed' 'Info'
            Else If (iBtn=2) Send Info_Box 'Cancel  Or Button 3 Pressed' 'Info'
            Else If (iBtn=3) Send Info_Box 'Abort               Pressed' 'Info'
            Else If (iBtn=4) Send Info_Box 'Retry               Pressed' 'Info'
            Else If (iBtn=5) Send Info_Box 'Ignore              Pressed' 'Info'
            Else If (iBtn=6) Send Info_Box 'Yes     Or Button 1 Pressed' 'Info'
            Else If (iBtn=7) Send Info_Box 'No      Or Button 2 Pressed' 'Info'
        End_Procedure // OnClick
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub3 is a ButtonSub
        Set Label to "Special Form"
        Set Size to 14 107
        Set Location to 25 7

        //AB-StoreStart
        
        Procedure OnClick
            Integer iBtn
            SET MsgBoxExForeground      Of MyForm to True
            SET MsgBoxExPrompt          Of MyForm to (ToAnsi('ãú©©ò´ù †§ Ç°®†° message in the dialog box'))
            SET MsgBoxExTitle           Of MyForm to (ToAnsi('ãú©©ò´ù †§ Ç°®†° message Title'))
            SET MsgBoxExButtons         Of MyForm to OLEmbThreeCustomButtons
            SET MsgBoxExModal           Of MyForm to OLEmbApplicationModal
            SET MsgBoxExDefaultButton   Of MyForm to OLEmbDefaultButton2
            SET MsgBoxExIcon            Of MyForm to OLEmbQuestion
            SET MsgBoxExButton1Caption  Of MyForm to (ToAnsi('â¶¨£ßÂ 1'))
            SET MsgBoxExButton2Caption  Of MyForm to (ToAnsi('â¶¨£ßÂ 2'))
            SET MsgBoxExButton3Caption  Of MyForm to (ToAnsi('â¶¨£ßÂ 3'))
        
            Get MsgBoxExShow            Of MyForm to iBtn
                 If (iBtn=1) Send Info_Box 'OK      Or Button 4 Pressed' 'Info'
            Else If (iBtn=2) Send Info_Box 'Cancel  Or Button 3 Pressed' 'Info'
            Else If (iBtn=3) Send Info_Box 'Abort               Pressed' 'Info'
            Else If (iBtn=4) Send Info_Box 'Retry               Pressed' 'Info'
            Else If (iBtn=5) Send Info_Box 'Ignore              Pressed' 'Info'
            Else If (iBtn=6) Send Info_Box 'Yes     Or Button 1 Pressed' 'Info'
            Else If (iBtn=7) Send Info_Box 'No      Or Button 2 Pressed' 'Info'
        End_Procedure // OnClick
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // ButtonSub3


    //AB-StoreStart
    
    Object MyMessage is a OLEMsgBoxEx
    End_Object
    
    Object MyFom is a OLEFormEx
    End_Object
    
    
    
    
    //AB-StoreEnd

CD_End_Object    // Yan1


//AB-StoreStart
        
        
//AB-StoreEnd

//AB/ End_Object    // prj
