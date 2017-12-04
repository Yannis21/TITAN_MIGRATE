//AB/ Project delme1
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "delme1"
//AB/     Set ProjectFileName to "#delme.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   The_View is a dbViewSubS
//     FormSub1 is a FormSub

// Register all objects
Register_Object FormSub1
Register_Object The_View


//AB/ AppBuild VIEW


//AB-StoreTopStart
Use Calendar.sl

//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use Form.Sub

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_The_View FOR The_View

Object The_View is a dbViewSubS
    Set Label to "Put The Label of The View Here"
    Set Size to 150 300
    Set Location to 9 17

    //AB-DDOStart


    //AB-DDOEnd

    Object FormSub1 is a FormSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Size to 13 85
        Set Location to 29 53
        Set Label_Col_Offset to 2
        Set Value Item 0 to "FormSub1"

        //AB-StoreStart
        
        Set Prompt_Object to (oCalendar(Self))
        //AB-StoreEnd

    End_Object    // FormSub1

End_Object    // The_View


//AB-StoreStart

//AB-StoreEnd

//AB/ End_Object    // prj
