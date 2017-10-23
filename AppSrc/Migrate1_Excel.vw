//AB/ Project Data Entry View
//AB/ Object prj is a View_Project
//AB/     Set Size to 230 325

Use DBVIEW.SUB

Activate_View Activate_Migrate1_Excel for Activate_Migrate1_Excel

Object Activate_Migrate1_Excel is a dbViewSub

    Set Border_Style to Border_Thick
    Set Size to 275 508
    Set Location to 10 18

    Property Integer piChoice public 0

    Procedure Activate_View Returns Integer
        Integer rVal
        String  sFolderInitial
        Set Label to "„¥˜šàšã ‹˜¨¡˜¨ ©£â¤à¤ „šš¨˜­é Migration ©œ Excel" 
        
        Forward Get Msg_Activate_View to rVal

        Procedure_Return rVal
    End_Procedure

End_Object

//AB/ End_Object    // prj