//AB/ Project Vanprod:arxeio katanaloseon
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "Vanprod:arxeio katanaloseon"
//AB/     Set ProjectFileName to "Vanprod.VW"
//AB/     Set GenerateFileName to "NONAME"

// Project Object Structure
//   Vanprod is a dbViewSubs
//     Anprod_DD is a DataDictionary
//     Witemxtr_DD is a DataDictionary
//     Witemxtd_DD is a DataDictionary
//     Anprod_ is a dbGridSub
//     btnPump is a ButtonSub

// Register all objects
Register_Object Anprod_
Register_Object Anprod_DD
Register_Object btnPump
Register_Object Vanprod
Register_Object Witemxtd_DD
Register_Object Witemxtr_DD


//AB/ AppBuild VIEW


//AB-StoreTopStart
use sl22s.sl
use enhanprod.vw
//use vanproded.vw
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbViews.Sub
Use DFAllEnt.pkg
Use dbGrid.Sub
Use Button.Sub

Use ANPROD.DD
Use WITEMXTR.DD
Use WITEMXTD.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_Vanprod FOR Vanprod

Object Vanprod is a dbViewSubs

    //AB-StoreTopStart
    property date    pddate      public ''
    property integer pihmera     public 0
    property string  psitem      public ''
    property integer pimetaf     public 0
    property integer piekleise   public 0
    property string  pstexnikh   public ''
    property string  psrecr      public ''
    
    Property Integer piExeiBgeiGefyra  Public 0
    Property Integer piEinaiKleidomeno Public 0
    
    Function fsmtfanpr integer imetaf returns String
        string speri
        if      (imetaf=10) move 'Ä§ú¨' to speri
        else if (imetaf=20) move 'à.ï' to speri
        else if (imetaf=30) move 'É.ï' to speri
        Function_Return speri
    End_Function
    
    //AB-StoreTopEnd

    Set Label to "Ä®ÆúÂ¶ âò´ò§ò¢È©ú‡§"
    Set Size to 284 521
    Set Location to 3 2

    //AB-DDOStart

    Object Anprod_DD is a Anprod_DataDictionary

        //AB-StoreTopStart
                                                                
        //AB-StoreTopEnd


        //AB-StoreStart
                                                                
        begin_constraints
           set ordering to 2
           if (psitem(self)<>'') begin
               constrain anprod.anprod_date     eq (pddate(self))
               constrain anprod.anprod_form     eq (psitem(self))
               constrain anprod.anprod_site     eq syscurxr.branch_site
               constrain anprod.anprod_cartp    eq (pimetaf(self))
               constrain anprod.anprod_itemtn   eq (pstexnikh(self))
           end
           else begin
               if (pihmera(self)=0) begin
                    constrain anprod.anprod_date     eq (pddate(self))
                    constrain anprod.entolh_recr     eq ''
               end
               else begin
                    constrain anprod.anprod_site     eq syscurxr.branch_site
                    constrain anprod.anprod_date     eq (pddate(self))
               end
           end
        
        end_constraints
        
        procedure update
            date ddate
        
            forward send update
        //    if (anprod.anprod_site='');
               move syscurxr.branch_site  to anprod.anprod_site
            if (anprod.anprod_date='');
                move (pddate(self)) to anprod.anprod_date
            if (anprod.anprod_form='');
                move (psitem(self)) to anprod.anprod_form
            if (anprod.anprod_cartp='');
                move (pimetaf(self)) to anprod.anprod_cartp
        end_procedure
        
        Function Validate_Save  Returns Integer
                Local Integer iReturnVal
                Forward Get Validate_Save  To iReturnVal
                If (Not(iReturnVal)) Begin
                         If (anprod.anprod_item= '');
                           error 1111 'Éú§ õÈ©ò´ú úÂõ¶™ ©´†™ Ä§ò¢È©ú†™ !'
                End
                Function_Return iReturnVal
        End_Function   // Validate_Sav
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Anprod_DD

    Object Witemxtr_DD is a Witemxtr_DataDictionary
    End_Object    // Witemxtr_DD

    Object Witemxtd_DD is a Witemxtd_DataDictionary
        Set DDO_Server to (Witemxtr_DD(self))
    End_Object    // Witemxtd_DD

    Set Main_DD to (Anprod_DD(self))
    Set Server to (Anprod_DD(self))

    //AB-DDOEnd

    Object Anprod_ is a dbGridSub
        Set Main_File to Anprod.File_Number
        Set Size to 250 513
        Set Location to 4 3
        Set Wrap_State to TRUE

        Begin_Row
            Entry_Item Anprod.Anprod_date
            Entry_Item Anprod.Anprod_form
            Entry_Item Anprod.Anprod_item
            Entry_Item (fsitem(self,anprod.anprod_item))
            Entry_Item Anprod.Anprod_qty
            Entry_Item Anprod.Anprod_cartp
            Entry_Item (fsmtfanpr(self,anprod.anprod_cartp))
            Entry_Item Anprod.Anprod_itemtn
            Entry_Item Anprod.Anprod_mix
            Entry_Item Anprod.Entolh_recr
            Entry_Item Anprod.Anprod_site
        End_Row

        Set Form_Width    item 0 to 47
        Set Header_Label  item 0 to "Ü£/§Âò"
        
        Set Form_Width    item 1 to 52
        Set Header_Label  item 1 to "ÑÂõ¶™"
        
        Set Form_Width    item 2 to 50
        Set Header_Label  item 2 to "Ä§ò¢È©ú†™"
        
        Set Form_Width    item 3 to 67
        Set Header_Label  item 3 to "èú®†ö®ò≠„"
        
        Set Form_Width    item 4 to 52
        Set Header_Label  item 4 to "è¶©Ê´û´ò"
        
        Set Form_Width    item 5 to 30
        Set Header_Label  item 5 to "í.ã"
        
        Set Form_Width    item 6 to 49
        Set Header_Label  item 6 to "í®.ãú´ò≠."
        
        Set Form_Width    item 7 to 54
        Set Header_Label  item 7 to "íúÆ§.è®¶õ."
        
        Set Form_Width    item 8 to 40
        Set Header_Label  item 8 to "èò®."
        
        Set Form_Width    item 9 to 37
        Set Header_Label  item 9 to "Ñ§´¶¢„"
        
        Set Form_Width    item 10 to 29
        Set Header_Label  item 10 to "ìß¶°."
        

        //AB-StoreStart
                                                                        
        //Set Column_Option Item 1 to NoEnter True
        Set Column_Option Item 6 to NoEnter True
        Set Column_Option Item 3 to NoEnter True
        Set Column_Option Item 0 to NoEnter True
        Set Column_Option Item 10 to NoEnter True
        set points item 4 to 4
        //set points item 5 to 4
        set column_prompt_object item 2 to (sl22s(self))
        set currentrowcolor to 11468799
        set currentcellcolor to 11468799
        Set Points Item  5 to 0
        Set Numeric_Mask    Item 5 to 14 0 ' ,*'
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // Anprod_

    Object btnPump is a ButtonSub

        //AB-StoreTopStart
                                                                
        //AB-StoreTopEnd

        Set Bitmap to "Abcode.bmp"
        Set Size to 10 15
        Set Location to 257 9
        Set Focus_Mode to Pointer_Only
        Set Form_TypeFace Item 0 to "MS Sans Serif"

        //AB-StoreStart
                                                                
        Set TooltipValue to "Ä¢¢òö„ è¶©Ê´û´ò™ û Ñ†©òö‡ö„ °ò´ò§ò¢È©ú‡§ ö†ò ´¶ ©¨ö°ú°®†£‚§¶ úÂõ¶™ É†ò°Â§û©û™"
        
        Procedure OnClick
            String sRecr
            Integer iRec
            Get psrecr to sRecr
            If (Trim(sRecr)<>'') Begin
                Set Modal_State Of enhanprod to True
                set psrecr of (enhanprod(self)) to srecr
                Get Current_record Of anprod_ to iRec
                set pirec of (enhanprod(self)) to irec
                Send Activate_enhanprod
                Set Modal_State Of enhanprod to False
        //        If (iRec>0) Send Find_record to anprod_ iRec
            End
        End_Procedure // OnClick
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //AB-StoreEnd

    End_Object    // btnPump


    //AB-StoreStart
    
    On_Key Key_Alt+Key_o        Send Enhm_Anprod
    
    Procedure Activate_View returns Integer
        Integer rVal
        Send Rebuild_Constraints    to anprod_DD
        Send Beginning_Of_Data      to anprod_
    
        Integer iLock
        Integer iEkleise iGefyra
    
        Get piExeiBgeiGefyra  to iGefyra
        Get piEinaiKleidomeno to iEkleise
    
        If (iGefyra =1) Add 1 to iLock
        If (iEkleise=1) Add 1 to iLock
    
        If (iLock=0) Begin
            If Not Status anprod Begin
                set read_only_state of (anprod_(self))  to true
                Set Enabled_State   of btnPump          to False
            End
            else Begin
                set read_only_state of (anprod_(self))  to False
                Set Enabled_State   of btnPump          to True
            End
        End
        Else Begin
            set read_only_state of (anprod_(self))  to true
            Set Enabled_State   of btnPump          to False
        End
    
        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure
    
    Procedure Activate
        String sLabel
        Forward Send Activate
        Send Rebuild_Constraints    to anprod_DD
        Send Beginning_Of_Data      to anprod_
    End_Procedure
    
    Procedure Enhm_Anprod
        Integer iLock
        Integer iEkleise iGefyra
        Get piExeiBgeiGefyra  to iGefyra
        Get piEinaiKleidomeno to iEkleise
        If (iGefyra =1) Add 1 to iLock
        If (iEkleise=1) Add 1 to iLock
        If (iLock=0) SET read_only_state of (anprod_(self)) to false
        Else         SET read_only_state of (anprod_(self)) to True
    End_Procedure
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //AB-StoreEnd

End_Object    // Vanprod


//AB-StoreStart
                        
                        
                        
                        
//AB-StoreEnd

//AB/ End_Object    // prj
