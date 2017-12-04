//AB/ Project Arraytst
//AB/     Object prj is a View_Project
//AB/         Set ProjectName to "Arraytst"
//AB/         Set ProjectFileName to "Arraytst.VW"
//AB/         Set GenerateFileName to "NONAME"

// Project Object Structure
//   Arraytst is a dbViewSubS
//     ButtonSub1 is a ButtonSub
//     xx is a c2dArray

// Register all objects
Register_Object Arraytst
Register_Object ButtonSub1
Register_Object xx


//AB/     AppBuild VIEW

    //AB-IgnoreStart

    Use dbView.Sub
    Use Button.Sub

    //AB-IgnoreEnd

    ACTIVATE_VIEW Activate_Arraytst FOR Arraytst

    Object Arraytst is a dbViewSubS

        //AB-StoreTopStart
        Use obarray2d.pkg

        //AB-StoreTopEnd

        Set Label to "Put The Label of The View Here"
        Set Size to 79 159
        Set Location to 6 6

        //AB-DDOStart


        //AB-DDOEnd

        Object ButtonSub1 is a ButtonSub
            Set Label to "ButtonSub1"
            Set Location to 25 53

            //AB-StoreStart

            Procedure OnClick
                Integer iCount iRows iInt
                String sVal1 sVal2

                Open Company
                Move 0 to Company.Recnum
                Find ge Company.recnum
                While (Found)


                    Send InsertRow to xx iCount
                    Set Cell_Value Of xx 0 iCount to Company.Company_Code
                    Set Cell_Value Of xx 1 iCount to (String(Company.Recnum))

                    Find gt Company.recnum
                    Add 1 to iCount
                Loop

                Get RecordCount of xx to iRows

                For iInt From 0 to (iRows-1)
                    Get Cell_Value Of xx 0 iInt to sVal1
                    Get Cell_Value Of xx 1 iInt to sVal2
                Loop

            End_Procedure // OnClick




            //AB-StoreEnd

        End_Object    // ButtonSub1


        //AB-StoreStart

        Object xx is a c2dArray
            Set piNumColumns to 2
        End_Object






        //AB-StoreEnd

    End_Object    // Arraytst

//AB/     End_Object    // prj
