//AB/ Project ListFile
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "ListFile"
//AB/     Set ProjectFileName to "ListFile.vw"
//AB/     Set GenerateFileName to "ListFile.vw"

// Project Object Structure
//   ListFile is a dbView
//     Codedef_DD is a DataDictionary
//     Txt_DD is a DataDictionary
//     Champs_DD is a DataDictionary
//     Form1 is a Form
//     Button1 is a Button

// Register all objects
Register_Object Button1
Register_Object Champs_DD
Register_Object Codedef_DD
Register_Object Form1
Register_Object Txt_DD
Register_Object ListFile


//AB/ AppBuild VIEW

//AB-IgnoreStart

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_ListFile FOR ListFile

Object ListFile is a dbView
    Set Label to "ListFile"
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
               loop
            end
        End_Procedure // OnClick
        //AB-StoreEnd

    End_Object    // Button1

End_Object    // ListFile

//AB/ End_Object    // prj
