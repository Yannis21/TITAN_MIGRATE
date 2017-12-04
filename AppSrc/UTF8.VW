//AB/ Project UTF8
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "UTF8"
//AB/     Set ProjectFileName to "UTF8.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   UTF8 is a dbViewSub

// Register all objects
Register_Object UTF8


//AB/ AppBuild VIEW


//AB-StoreTopStart

Use CharTranslate.pkg

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_UTF8 FOR UTF8

Object UTF8 is a dbViewSub
    Set Label to "Dataflex ASCII output To UTF-8"
    Set Size to 275 571
    Set Location to 7 13

    //AB-DDOStart


    //AB-DDOEnd

End_Object    // UTF8


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
