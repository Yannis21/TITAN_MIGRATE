//AB/ Project test
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "test"
//AB/     Set ProjectFileName to "test.vw"

// Project Object Structure
//   test is a dbView
//     Form1 is a Form
//     Button1 is a Button

// Register all objects
Register_Object Button1
Register_Object Form1
Register_Object test


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use DFAllEnt.pkg

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_test FOR test

Object test is a dbView

    //AB-StoreTopStart

    //AB-StoreTopEnd

    Set Label to "test"
    Set Size to 138 348
    Set Location to 6 6

    //AB-DDOStart


    //AB-DDOEnd

    Object Form1 is a Form
        Set Size to 13 149
        Set Location to 12 75
    End_Object    // Form1

    Object Button1 is a Button
        Set Label to "Search"
        Set Location to 66 58

        //AB-StoreStart
        use listfile.pkg

        Procedure onclick
            string s_search  s_filename
            integer i_nb_item  i_item
            handle h_list
            get value of form1 to s_search
            move (trim(s_search)) to s_search
            if (s_search <> "") begin
               get msg_list_file s_search  to h_list
            end
            if (h_list <> 0) begin
               get item_count of h_list to i_nb_item
               for i_item from 0 to (i_nb_item - 1) do
                  get string_value of h_list to s_filename
                  showln  i_item  '  value = ' (string_value(h_list, i_item))
               loop
            end
        End_Procedure // OnClick
        //AB-StoreEnd

    End_Object    // Button1


    //AB-StoreStart

    //AB-StoreEnd

End_Object    // test

//AB/ End_Object    // prj