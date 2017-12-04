//AB/ Project View to Maintain WorkSpc
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "View to Maintain WorkSpc"
//AB/     Set ProjectFileName to "workspc.vw"

// Project Object Structure
//   Workspc is a dbViewSubS
//     Workspc_DD is a DataDictionary
//     Workspc_ is a dbGridSub
//     Workspc_Data_Path is a dbFormSub
//     Workspc_Filelist_Path is a dbFormSub
//     ButtonSub1 is a ButtonSub

// Register all objects
Register_Object ButtonSub1
Register_Object Workspc
Register_Object Workspc_
Register_Object Workspc_Data_Path
Register_Object Workspc_DD
Register_Object Workspc_Filelist_Path


//AB/ AppBuild VIEW

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub
Use dbForm.Sub
Use Button.Sub

Use WORKSPC.DD

//AB-IgnoreEnd

DEFERRED_VIEW Activate_Workspc FOR ;
;
Object Workspc is a dbViewSubS
    Set Border_Style to Border_Thick
    Set Label to "É†òÆúÂ®†©û ò®ÆúÂ¶¨ WorkSpc"
    Set Size to 239 522
    Set Location to 5 5

    //AB-DDOStart

    Object Workspc_DD is a Workspc_DataDictionary
    End_Object    // Workspc_DD

    Set Main_DD to (Workspc_DD(self))
    Set Server to (Workspc_DD(self))

    //AB-DDOEnd

    Object Workspc_ is a dbGridSub
        Set Main_File to Workspc.File_Number
        Set Size to 129 506
        Set Location to 10 7
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Workspc.Recnum
            Entry_Item Workspc.Id
            Entry_Item Workspc.Titlos
            Entry_Item Workspc.Appsrcextrapath
            Entry_Item Workspc.Dataextrapath
            Entry_Item Workspc.Working
        End_Row

        Set Form_Width    item 0 to 35
        Set Header_Label  item 0 to "Rec"
        
        Set Form_Width    item 1 to 52
        Set Header_Label  item 1 to "â‡õ†°Ê™"
        
        Set Form_Width    item 2 to 109
        Set Header_Label  item 2 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 3 to 132
        Set Header_Label  item 3 to "Appsrc Path + Extra"
        
        Set Form_Width    item 4 to 124
        Set Header_Label  item 4 to "Data Path + Extra"
        
        Set Form_Width    item 5 to 49
        Set Header_Label  item 5 to "í®‚Æ¶¨©ú™"
        Set Column_Checkbox_State  item 5 to True
        

        //AB-StoreStart
                                                        
        Send DoRegSize Self smBottomRight
        
        //AB-StoreEnd

    End_Object    // Workspc_

    Object Workspc_Data_Path is a dbFormSub
        Entry_Item Workspc.Appsrcextrapath
        Set Label to "AppSrcPath+Extra"
        Set Size to 13 434
        Set Location to 152 76
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                        
        Send DoRegAlign self amBottomRight
        
        //AB-StoreEnd

    End_Object    // Workspc_Data_Path

    Object Workspc_Filelist_Path is a dbFormSub
        Entry_Item Workspc.Dataextrapath
        Set Label to "DataPath+Extra"
        Set Size to 13 434
        Set Location to 169 76
        Set Color to clBtnFace
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to jMode_Right
        Set Enabled_State to FALSE
        Set Form_TypeFace Item 0 to "MS Sans Serif"
        Set Item_Shadow_State Item 0 to TRUE
        Set Shadow_State Item 0 to TRUE

        //AB-StoreStart
                                                        
        Send DoRegAlign self amBottomRight
        
        //AB-StoreEnd

    End_Object    // Workspc_Filelist_Path

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart
        
        //AB-StoreTopEnd

        Set Label to "Ä¢¢ò•ú ´¶ Registry"
        Set Size to 20 170
        Set Location to 193 173
        Set Border_Style to Border_StaticEdge
        Set Focus_Mode to Pointer_Only
        Set Form_FontWeight Item 0 to 600
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
        
        Procedure OnClick
            String lsAppSrcPath lsDataPath lsCurWorkSpace lsLastChar lsFilelistName
            String lsModuleName lsID
            If (Current_Record(Workspc_DD(Self))) Begin
                Get WorkSpaceName of ghoWorkSpace to lsCurWorkSpace
                Get ModuleName    of ghoWorkSpace to lsModuleName
                Get Field_Current_Value of Workspc_DD Field Workspc.ID to lsID
                If (psPreSelectedWorkSpcID(Self) = lsID) Break
                Get Field_Current_Value of Workspc_DD Field Workspc.AppSrcExtraPath to lsAppSrcPath
                Get Field_Current_Value of Workspc_DD Field Workspc.DataExtraPath   to lsDataPath
                set_profile_string ("WorkSpaces\"+lsCurWorkSpace) "AppSrcPath"      to lsAppSrcPath
                set_profile_string ("WorkSpaces\"+lsCurWorkSpace) "DataPath"        to lsDataPath
                Send DoSetWorkSpace to ghoWorkSpace lsCurWorkSpace lsModuleName
            End
            //Send Stop_Modal_ui
        End_Procedure // OnClick
        
        //AB-StoreEnd

    End_Object    // ButtonSub1

CD_End_Object    // Workspc

//AB/ End_Object    // prj
