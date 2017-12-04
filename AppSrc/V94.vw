//AB/ Project V94:orders
//AB/ Object prj is a View_Project
//AB/     Set ProjectName to "V94:orders"
//AB/     Set ProjectFileName to "V94.vw"

// Project Object Structure
//   V94 is a dbViewSubS
//     Syscurxr_DD is a DataDictionary
//     order1_DD is a DataDictionary
//     ordersd_DD is a DataDictionary
//     Container1 is a dbContainer3d
//       order1_recr is a dbFormSub
//       order1_descr is a dbFormSub
//       order1_date is a dbFormSub
//       TextBoxSub4 is a TextBoxSub
//       TextBoxSub5 is a TextBoxSub
//       TextBoxSub6 is a TextBoxSub
//       TextBoxSub7 is a TextBoxSub
//       TextBoxSub9 is a TextBoxSub
//       TextBoxSub10 is a TextBoxSub
//       TextBoxSub17 is a TextBoxSub
//       order1_resp is a dbFormSub
//       TextBoxSub18 is a TextBoxSub
//       order1_OurDate is a dbFormSub
//       order1_Nomisma is a dbFormSub
//       FormSub1 is a FormSub
//       dbCheckBoxSub1 is a dbCheckBoxSub
//       dbCheckBoxSub2 is a dbCheckBoxSub
//       TextBoxSub20 is a TextBoxSub
//       dbCheckBoxSub3 is a dbCheckBoxSub
//       TextBoxSub22 is a TextBoxSub
//     dbTabDialogSubS1 is a dbTabDialogSubS
//       dbTabPageSubS1 is a dbTabPageSubS
//         The_Table is a dbGridSub
//       dbTabPageSubS2 is a dbTabPageSubS
//         eggr_date is a dbFormSub
//         Eggr_Name is a dbFormSub
//         metasx_Date is a dbFormSub
//         Metasx_Name is a dbFormSub
//         dbEditSub1 is a dbEditSub
//         TextBoxSub19 is a TextBoxSub
//         Textbox1 is a Textbox
//         Textbox2 is a Textbox
//         Textbox3 is a Textbox
//         Textbox4 is a Textbox
//     ButtonSub1 is a ButtonSub
//     ButtonSub2 is a ButtonSub
//     dbGroupSub1 is a dbGroupSub
//       Company_Company_Name is a dbFormSub
//       Branch_Branch_Name is a dbFormSub
//       Year_Year_Year is a dbFormSub
//       TextBoxSub1 is a TextBoxSub
//       TextBoxSub2 is a TextBoxSub
//       TextBoxSub3 is a TextBoxSub
//     dbGroupSub2 is a dbGroupSub
//       TextBoxSub29 is a TextBoxSub
//       order1_qty is a dbFormSub
//       TextBoxSub30 is a TextBoxSub
//       order1_net is a dbFormSub
//       TextBoxSub31 is a TextBoxSub
//       order1_Disc is a dbFormSub
//       TextBoxSub32 is a TextBoxSub
//       order1_Extra is a dbFormSub
//       TextBoxSub33 is a TextBoxSub
//       order1_Fpa is a dbFormSub
//       TextBoxSub34 is a TextBoxSub
//       order1_Total is a dbFormSub

// Register all objects
Register_Object Branch_Branch_Name
Register_Object ButtonSub1
Register_Object ButtonSub2
Register_Object Company_Company_Name
Register_Object Container1
Register_Object dbCheckBoxSub1
Register_Object dbCheckBoxSub2
Register_Object dbCheckBoxSub3
Register_Object dbEditSub1
Register_Object dbGroupSub1
Register_Object dbGroupSub2
Register_Object dbTabDialogSubS1
Register_Object dbTabPageSubS1
Register_Object dbTabPageSubS2
Register_Object Eggr_Name
Register_Object eggr_date
Register_Object FormSub1
Register_Object Metasx_Name
Register_Object metasx_Date
Register_Object order1_DD
Register_Object order1_Disc
Register_Object order1_date
Register_Object order1_descr
Register_Object order1_Extra
Register_Object order1_Fpa
Register_Object order1_Nomisma
Register_Object order1_net
Register_Object order1_OurDate
Register_Object order1_qty
Register_Object order1_recr
Register_Object order1_resp
Register_Object order1_Total
Register_Object ordersd_DD
Register_Object Syscurxr_DD
Register_Object TextBoxSub1
Register_Object TextBoxSub10
Register_Object TextBoxSub17
Register_Object TextBoxSub18
Register_Object TextBoxSub19
Register_Object TextBoxSub2
Register_Object TextBoxSub20
Register_Object TextBoxSub22
Register_Object TextBoxSub29
Register_Object TextBoxSub3
Register_Object TextBoxSub30
Register_Object TextBoxSub31
Register_Object TextBoxSub32
Register_Object TextBoxSub33
Register_Object TextBoxSub34
Register_Object TextBoxSub4
Register_Object TextBoxSub5
Register_Object TextBoxSub6
Register_Object TextBoxSub7
Register_Object TextBoxSub9
Register_Object Textbox1
Register_Object Textbox2
Register_Object Textbox3
Register_Object Textbox4
Register_Object The_Table
Register_Object V94
Register_Object Year_Year_Year


//AB/ AppBuild VIEW


//AB-StoreTopStart
Open witemcl
Open iteml
open clients
open nomisma
use sl94.sl
use sl186.sl
Use r94_1.rv
Use V94_1.vw
use sl100.sl
use douppar.pkg
//AB-StoreTopEnd

//AB-IgnoreStart

Use dbView.Sub
Use DFAllEnt.pkg
Use dbForm.Sub
Use Txtbox.Sub
Use Form.Sub
Use dbChkbox.Sub
Use dbTabDlgS.Sub
Use dbGrid.Sub
Use dbEdit.Sub
Use Button.Sub
Use dbGroup.Sub

Use SYSCURXR.DD
Use ORDER1.DD
Use ORDERSD.DD

//AB-IgnoreEnd

ACTIVATE_VIEW Activate_V94 FOR V94

Object V94 is a dbViewSubS

    //AB-StoreTopStart
    property number fpreis##    public 0
    property string psrecr      public ''
    property string psmodule    public ''
    Property String psNomisma    Public ''

    Function fnitemprom string ritem string prom Returns string
          clear witemcl
          move ritem to witemcl.item_code
          move prom to witemcl.client_code
          find eq witemcl by index.1
          move witemcl.client_itemcode to ritem
          set fpreis## to witemcl.client_price
          function_return ritem
    end_Function

    Function fnitem string name Returns number
        number fpa
        clear iteml
        move name to iteml.item_code
        find eq iteml by index.5
        if (found = 1) begin
            move iteml.fpa_pososto to fpa
        end
        function_return fpa
    end_Function

    //AB-StoreTopEnd

    Set Label to "É†òÆúÂ®û©û èò®òööú¢†È§ "
    Set Size to 295 519
    Set Location to 1 3

    //AB-DDOStart

    Object Syscurxr_DD is a Syscurxr_DataDictionary
    End_Object    // Syscurxr_DD

    Object order1_DD is a Order1_DataDictionary

        //AB-StoreStart
        set allow_foreign_new_save_state to  true

        Procedure OnConstrain
            Constrain order1.company_code  eq SysCurXR.Company_Code
            Constrain order1.Branch_Code   eq SysCurXR.Branch_Code
            Constrain order1.Year_Year     eq SysCurXR.Year_Year
            If (psModule(Self)<>'') Begin
                Constrain order1.Module eq (psModule(Self))
            End
        End_Procedure

        Procedure Update
            String  sNomisma
            Date    dHmnia
            Move order1.date               to dHmnia
            If (dHmnia='')  Sysdate4          order1.date
            Move order1.nomisma            to sNomisma
            Move (Trim(sNomisma))          to sNomisma
            If (sNomisma='') Move SysCurXr.C_Code0  to order1.nomisma
            Forward Send Update
        End_Procedure




        //AB-StoreEnd

    End_Object    // order1_DD

    Object ordersd_DD is a Ordersd_DataDictionary
        Set DDO_Server to (order1_DD(self))
        Set Constrain_File to Order1.File_Number
    End_Object    // ordersd_DD

    Set Main_DD to (order1_DD(self))
    Set Server to (order1_DD(self))

    //AB-DDOEnd

    Object Container1 is a dbContainer3d
        Set Border_Style to Border_Normal
        Set Size to 111 325
        Set Location to 26 3
        Object order1_recr is a dbFormSub
            Entry_Item Order1.Recr
            Set Size to 13 66
            Set Location to 4 127
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Set enabled_state to false


















            //AB-StoreEnd

        End_Object    // order1_recr

        Object order1_descr is a dbFormSub
            Entry_Item Order1.Descr
            Set Size to 13 191
            Set Location to 18 127
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart








            //AB-StoreEnd

        End_Object    // order1_descr

        Object order1_date is a dbFormSub
            Entry_Item Order1.Date
            Set Size to 13 66
            Set Location to 32 127
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart
            Procedure Prompt
                Integer iRec fin akyrh
                Forward Send Prompt

                //  Send Enable_The_Fields to v94
            End_procedure

            Procedure refresh integer iMode
                Integer iRec fin akyrh itable
                String sNomisma
                Get Field_Current_Value Of (order1_DD(self)) Field order1.finish To fin
                Get Field_Current_Value Of (order1_DD(self)) Field order1.akyrh  To akyrh
                if (fin = 1 or akyrh = 1) begin
                   Set Color Of (FormSub1(container1(current_object))) to clred
                end
                else begin
                   Set Color Of  (FormSub1(container1(current_object))) to cllime
                end

                Set read_only_state of (ordersd_dd(self)) to (order1.metasx=1)
                Set Enabled_State of buttonsub1 to (order1.metasx=0)
                Set Enabled_State of (eggr_date(dbTabPageSubS2(dbTabDialogSubS1(current_object)))) to (order1.metasx=0)
                Set Enabled_State of (eggr_name(dbTabPageSubS2(dbTabDialogSubS1(current_object)))) to (order1.metasx=0)
                Set Enabled_State of (metasx_date(dbTabPageSubS2(dbTabDialogSubS1(current_object)))) to (order1.metasx=0)
                Set Enabled_State of (metasx_name(dbTabPageSubS2(dbTabDialogSubS1(current_object)))) to (order1.metasx=0)
                Get Field_Current_Value Of Order1_DD Field Order1.Nomisma to sNomisma
              //  If ((Trim(sNomisma)<>psNomisma(Self)) And (Trim(sNomisma)<>'')) Begin
              //      Set psNomisma to (Trim(sNomisma))
                    Move (the_table(dbTabPageSubS1(dbTabDialogSubS1(Self)))) to itable
                    set dynamic_update_state of itable to false
                    Send Set_The_Decimal_Points
                    Send Enable_The_Fields to v94
                    set dynamic_update_state of itable to true
              //  End
                Forward Send Refresh iMode
            End_procedure





















            //AB-StoreEnd

        End_Object    // order1_date

        Object TextBoxSub4 is a TextBoxSub
            Set Label to "Ä/Ä èò®òööú¢Âò™"
            Set Location to 5 6
            Set Size to 10 65
        End_Object    // TextBoxSub4

        Object TextBoxSub5 is a TextBoxSub
            Set Label to "Ü£/§Âò ëÁ§´ò•û™ èò®òööú¢Âò™"
            Set Location to 34 6
            Set Size to 10 109
        End_Object    // TextBoxSub5

        Object TextBoxSub6 is a TextBoxSub
            Set Label to "ìßúÁü¨§¶™ ëÁ§´ò•û™"
            Set Location to 48 6
            Set Size to 10 74
        End_Object    // TextBoxSub6

        Object TextBoxSub7 is a TextBoxSub
            Set Label to "Öû´¶Á£ú§û Ü£/§Âò èò®·õ¶©û™"
            Set Location to 62 6
            Set Size to 10 104
        End_Object    // TextBoxSub7

        Object TextBoxSub9 is a TextBoxSub
            Set Label to "èò®ò£‚§ú† ©ú Ñ°°®ú£Ê´û´ò"
            Set Location to 90 6
            Set Size to 10 108
        End_Object    // TextBoxSub9

        Object TextBoxSub10 is a TextBoxSub
            Set Label to "Ä†´†¶¢¶öÂò èò®òööú¢Âò™"
            Set Location to 20 6
            Set Size to 10 95
        End_Object    // TextBoxSub10

        Object TextBoxSub17 is a TextBoxSub
            Set Label to "Ñß†ôúôòÂ‡©û"
            Set Location to 81 253
            Set Size to 10 47
        End_Object    // TextBoxSub17

        Object order1_resp is a dbFormSub
            Entry_Item Order1.Resp
            Set Size to 13 191
            Set Location to 46 127
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // order1_resp

        Object TextBoxSub18 is a TextBoxSub
            Set Label to "Ä°¨®û"
            Set Location to 95 252
            Set Size to 10 33
        End_Object    // TextBoxSub18

        Object order1_OurDate is a dbFormSub
            Entry_Item Order1.Ourdate
            Set Size to 13 67
            Set Location to 60 127
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
        End_Object    // order1_OurDate

        Object order1_Nomisma is a dbFormSub
            Entry_Item Order1.Nomisma
            Set Size to 13 67
            Set Location to 74 127
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right

            //AB-StoreStart

            Procedure Onkillfocus
                send request_save to order1_dd
            End_procedure

            Procedure OnChange
                String sNomisma
                If (Focus(Desktop)=Order1_Nomisma(Self)) Begin
                    Get Field_Current_Value Of Order1_DD Field Order1.Nomisma to sNomisma
                    If (Trim(sNomisma)<>psNomisma(Self)) Begin
                        Set psNomisma to (Trim(sNomisma))
                        Send Set_The_Decimal_Points
                    End
                End
            End_Procedure
















            //AB-StoreEnd

        End_Object    // order1_Nomisma

        Object FormSub1 is a FormSub
            Set Size to 18 67
            Set Location to 89 127
            Set Label_Col_Offset to 2

            //AB-StoreStart
            set shadow_state to true

            //AB-StoreEnd

        End_Object    // FormSub1

        Object dbCheckBoxSub1 is a dbCheckBoxSub
            Entry_Item Order1.Okey
            Set Size to 13 12
            Set Location to 79 303
        End_Object    // dbCheckBoxSub1

        Object dbCheckBoxSub2 is a dbCheckBoxSub
            Entry_Item Order1.Akyrh
            Set Size to 13 10
            Set Location to 94 303

            //AB-StoreStart

            procedure onchange
              integer fin akyrh
              Get Field_Current_Value Of (order1_DD(self)) Field order1.finish To fin
              Get Field_Current_Value Of (order1_DD(self)) Field order1.akyrh  To akyrh
              if (fin = 1 or akyrh = 1) begin
                 Set Color Of (FormSub1(container1(current_object))) to clred
              end
              else begin
                Set Color Of  (FormSub1(container1(current_object))) to cllime
              end
            end_procedure

            //AB-StoreEnd

        End_Object    // dbCheckBoxSub2

        Object TextBoxSub20 is a TextBoxSub
            Set Label to "Ñö°®Âüû°ú"
            Set Location to 65 252
            Set Size to 10 47
        End_Object    // TextBoxSub20

        Object dbCheckBoxSub3 is a dbCheckBoxSub
            Entry_Item Order1.Eggrish
            Set Size to 13 13
            Set Location to 64 303

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // dbCheckBoxSub3

        Object TextBoxSub22 is a TextBoxSub
            Set Label to "åÊ£†©£ò"
            Set Location to 76 6
            Set Size to 10 33
        End_Object    // TextBoxSub22

    End_Object    // Container1

    Object dbTabDialogSubS1 is a dbTabDialogSubS
        Set Size to 117 513
        Set Location to 139 2
        Set Border_Style to Border_Normal
        Object dbTabPageSubS1 is a dbTabPageSubS
            Set Label to "ë´¶†ÆúÂò èò®òööú¢Âò™"
            Object The_Table is a dbGridSub
                Set Main_File to Ordersd.File_Number
                Set Server to (ordersd_DD(self))
                Set Ordering to 1
                Set Size to 101 509
                Set Location to 4 0
                Set Wrap_State to TRUE

                Begin_Row
                    Entry_Item Ordersd.Item_code
                    Entry_Item Ordersd.Clients_code
                    Entry_Item Ordersd.Clients_item
                    Entry_Item Ordersd.Qty
                    Entry_Item Ordersd.Unitprice
                    Entry_Item Ordersd.Pcdisc
                    Entry_Item Ordersd.Pcfpa
                    Entry_Item Ordersd.Posodisc
                    Entry_Item Ordersd.Posofpa
                    Entry_Item Ordersd.Extra
                    Entry_Item Ordersd.Net
                    Entry_Item Ordersd.Total
                End_Row

                Set Form_Width    item 0 to 49
                Set Header_Label  item 0 to "ÑÂõ¶™"

                Set Form_Width    item 1 to 53
                Set Header_Label  item 1 to "è®¶£ûü."

                Set Form_Width    item 2 to 58
                Set Header_Label  item 2 to "ÑÂõ¶™ è®¶£ûü.."

                Set Form_Width    item 3 to 32
                Set Header_Label  item 3 to "è¶©¶´."

                Set Form_Width    item 4 to 40
                Set Header_Label  item 4 to "í†£„ ã¶§."

                Set Form_Width    item 5 to 28
                Set Header_Label  item 5 to "% Î°ß"

                Set Form_Width    item 6 to 34
                Set Header_Label  item 6 to "% îèÄ"

                Set Form_Width    item 7 to 44
                Set Header_Label  item 7 to "è¶©Ê Î°ß"

                Set Form_Width    item 8 to 48
                Set Header_Label  item 8 to "è¶©Ê îèÄ"

                Set Form_Width    item 9 to 37
                Set Header_Label  item 9 to "Ñß†ôò®."

                Set Form_Width    item 10 to 40
                Set Header_Label  item 10 to "âòüò®·"

                Set Form_Width    item 11 to 40
                Set Header_Label  item 11 to "ëÁ§¶¢ò"


                //AB-StoreStart
                Set points Item  3 to  1
                Set Column_Option Item  2 to  NoEnter True
                Set Column_Option Item  7 to  NoEnter True
                Set Column_Option Item  8 to  NoEnter True
                Set Column_Option Item  11 to  NoEnter True

                set child_table_state to true

                procedure item_change integer fromi integer toi returns integer
                 Integer iColumn iFieldNumber iFileNumber
                 Integer iFromPCT iDecimals iYear iColfrom iColTo
                 Number nQty nTimhMon nQtyTimhMon nPctEkpt nPosoEkpt preis## fpa##
                 Number nPosoNet nPctFpa nPosoFpa nPosoSynolo nFpa nextra
                 String sNameFrom sNameTo sRecr rval## ritem## rprom##  name##  wname## sitem## lsitem##
                 local integer rval icol iBase_item
                 forward get msg_item_change fromi toi to rval

                 Get Field_Current_Value Of ordersd_DD Field ordersd.item_code To lsitem##
                 if (lsitem## <> '') begin
                     Get Column FromI    to iColumn
                     Get Column FromI    to iColFrom
                     Get Column ToI      to iColTo
                     Get Data_File  Item iColumn                             to iFileNumber
                     Get Data_Field Item iColumn                             to iFieldNumber
                     Get_Attribute DF_FIELD_NAME Of iFileNumber iFieldNumber to sNameFrom
                     Move (Trim(sNameFrom))                                  to sNameFrom
                     Get Column ToI                                          to iColumn
                     Get Data_File  Item iColumn                             to iFileNumber
                     Get Data_Field Item iColumn                             to iFieldNumber
                     Get_Attribute DF_FIELD_NAME Of iFileNumber iFieldNumber to sNameTo
                     Move (Trim(sNameTo))                                    to sNameTo
                     Get Field_Current_Value Of ordersd_DD Field ordersd.qty To nQty
                     Get Field_Current_Value Of ordersd_DD Field ordersd.unitprice   To nTimhMon
                     If (sNameFrom=(Uppercase('item_code'))) Begin
                        Get Field_Current_Value Of ordersd_DD Field ordersd.item_code To wname##
                        set Fragmaprom of (sl186(self)) to wname##
                        Move (fnitem(self,wname##)) to fpa##
                        Set Field_Changed_Value Of ordersd_DD Field ordersd.pcfpa To fpa##
                     end
                     If (sNameFrom=(Uppercase('clients_code'))) Begin
                       if (psModule(Self)='02') begin
                        get Field_current_Value Of ordersd_dd Field ordersd.unitprice to preis##
                        get Field_current_Value Of ordersd_dd Field ordersd.clients_code to rprom##
                        get Field_current_Value Of ordersd_dd Field ordersd.item_code to ritem##
                        Move (fnitemprom(self,Ritem##,rprom##)) to ritem##
                        Set Field_Changed_Value Of ordersd_dd Field ordersd.clients_item to ritem##
                        if (preis## = 0) begin
                           get fpreis## to preis##
                           Set Field_Changed_Value Of ordersd_dd Field ordersd.unitprice to preis##
                        end
                       end
                     end
                 end

                     If ((nQty<>0) And (nTimhMon<>0)) Begin
                         Move (nQty*nTimhMon) to nQtyTimhMon
                         Get Field_Current_Value Of ordersd_DD Field ordersd.pcdisc    To nPctEkpt
                         Get Field_Current_Value Of ordersd_DD Field ordersd.posodisc  To nPosoEkpt

                         If (sNameFrom=(Uppercase('pcdisc'))) Begin
                            Move  (Round_number(((nQtyTimhMon*nPctEkpt/100)),2))            to nPosoEkpt
                            Set Field_Changed_Value Of ordersd_DD Field ordersd.posodisc To nPosoEkpt
                         End
                         Get Field_Current_Value Of ordersd_DD Field ordersd.posodisc    To nPosoEkpt
                         Set Field_Changed_Value Of ordersd_DD Field ordersd.net  To (nQtyTimhMon-nPosoEkpt)
                         Move (nQtyTimhMon-nPosoEkpt)                         To nPosoNet

                         Get Field_Current_Value Of ordersd_DD Field ordersd.pcfpa    To nPctFpa
                         Get Field_Current_Value Of ordersd_DD Field ordersd.posofpa    To nPosoFpa

                         If (sNameFrom=(Uppercase('pcfpa'))) Begin
                            Move  (Round_number(((nPosoNet*nPctFpa/100)),2)) to nPosoFpa
                            Set Field_Changed_Value Of ordersd_DD Field ordersd.posofpa To nPosoFpa
                         End

                         Get Field_Current_Value Of ordersd_DD Field ordersd.posofpa     To nPosoFpa
                         Get Field_Current_Value Of ordersd_DD Field ordersd.extra    To nextra
                         If (sNameFrom=(Uppercase('extra'))) Begin
                            Move  (Round_number((nextra),2)) to nextra
                            Set Field_Changed_Value Of ordersd_DD Field ordersd.extra To nextra
                         End

                         Get Field_Current_Value Of ordersd_DD Field ordersd.extra    To nextra

                         Move (nPosoNet+nPosoFpa+nextra)       to npososynolo
                         Set Field_Changed_Value Of ordersd_DD Field ordersd.total    To nPosoSynolo

                     End

                 procedure_return rval
                end_procedure


















































































                //AB-StoreEnd

            End_Object    // The_Table

        End_Object    // dbTabPageSubS1

        Object dbTabPageSubS2 is a dbTabPageSubS
            Set Label to "è®Ê©üú´ò ë´¶†ÆúÂò - ëÆÊ¢†ò"
            Object eggr_date is a dbFormSub
                Entry_Item Order1.Eggrishdate
                Set Size to 13 58
                Set Location to 3 103
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // eggr_date

            Object Eggr_Name is a dbFormSub
                Entry_Item Order1.Eggrishname
                Set Size to 13 186
                Set Location to 2 261
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Eggr_Name

            Object metasx_Date is a dbFormSub
                Entry_Item Order1.Metasxdate
                Set Size to 13 58
                Set Location to 18 103
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // metasx_Date

            Object Metasx_Name is a dbFormSub
                Entry_Item Order1.Metasxname
                Set Size to 13 186
                Set Location to 17 261
                Set Label_Col_Offset to 2
                Set Label_Justification_Mode to jMode_Right
            End_Object    // Metasx_Name

            Object dbEditSub1 is a dbEditSub
                Entry_Item Order1.Sxolia
                Set Size to 51 494
                Set Location to 43 3
            End_Object    // dbEditSub1

            Object TextBoxSub19 is a TextBoxSub
                Set Label to "ëÆÊ¢†ò"
                Set Location to 31 4
                Set Size to 10 28
                Set FontWeight to 800
            End_Object    // TextBoxSub19

            Object Textbox1 is a Textbox
                Set Label to "Ü£/§Âò Ñö°®†©û™"
                Set Location to 4 4
                Set Size to 10 69
            End_Object    // Textbox1

            Object Textbox2 is a Textbox
                Set Label to "é Ñö°®Â§‡§"
                Set Location to 4 179
                Set Size to 10 54
            End_Object    // Textbox2

            Object Textbox3 is a Textbox
                Set Label to "Ü£/§Âò ãú´ò©Æû£ò´†©£¶Á"
                Set Location to 20 3
                Set Size to 10 91
            End_Object    // Textbox3

            Object Textbox4 is a Textbox
                Set Label to "ìßúÁü¨§¶™ ãú´ò©Æû£."
                Set Location to 20 179
                Set Size to 8 80
            End_Object    // Textbox4

        End_Object    // dbTabPageSubS2

    End_Object    // dbTabDialogSubS1

    Object ButtonSub1 is a ButtonSub

        //AB-StoreTopStart

        //AB-StoreTopEnd

        Set Label to "ãú´ò©Æû£ò´†©£Ê™ ë‚ èò®òööú¢Âú™ è®¶£ûüú¨´È§"
        Set Bitmap to "auto.bmp"
        Set Size to 20 21
        Set Location to 258 47
        Set Border_Style to Border_Normal

        //AB-StoreStart
        Set TooltipValue to "ãú´ò©Æû£ò´†©£Ê™ íû™ èò®òööú¢Âò™ ëú èò®òööú¢Âú™ Ä§· è®¶£ûüú¨´„"
        Procedure OnClick
            integer libpo05## listatus## retval irecnum iakyrh iError_Object_ID
            string msgstr lsstore## wrecr edate mdate ename mname
            Get Field_Current_Value Of order1_DD Field order1.akyrh to iakyrh
            if (iakyrh=1) begin
              send info_box 'Ü èò®òööú¢Âò ÑÂ§ò† Ä°¨®û ! Éú§ ÇÂ§ú´ò† ãú´ò©Æû£ò´†©£Ê™ !!' 'è¢û®¶≠¶®Âò'
            end
            else begin
            Get YesNo_Box 'Ä®ÆÂùú† Ü É†òõ†°ò©Âò ãú´ò©Æû£ò´†©£¶Á ëú èò®òööú¢Âú™ è®¶£ûüú¨´È§ ! åò ë¨§úÆÂ©‡ ??' to RetVal
            If (RetVal =MBR_yes) begin
               Get Field_Current_Value Of order1_DD Field order1.recr To wrecr
               Get Field_Current_Value Of order1_DD Field order1.recnum To irecnum
               Get Field_Current_Value Of order1_DD Field order1.metasx To retval
               Get Field_Current_Value Of order1_DD Field order1.eggrishdate  To edate
               Get Field_Current_Value Of order1_DD Field order1.eggrishname To ename
               Get Field_Current_Value Of order1_DD Field order1.metasxdate To mdate
               Get Field_Current_Value Of order1_DD Field order1.metasxname To mname
               if (edate = '' or ename = '' or mdate = '' or mname = '') begin
                  Send Info_Box 'É‚§ ë¨£ß¢û®Èüû°ò§ èúõÂò ë´¶§ èÂ§ò°ò è®Ê©üú´ò ë´¶†ÆúÂò !!' 'è¢û®¶≠¶®Âò'
               end
               else begin
               Set Field_changed_Value Of order1_DD Field order1.eggrishdate  To edate
               Set Field_changed_Value Of order1_DD Field order1.eggrishname To ename
               Set Field_changed_Value Of order1_DD Field order1.metasxdate To mdate
               Set Field_Changed_Value Of order1_DD Field order1.metasxname To mname
               send request_save to (order1_dd(self))
               if (retval <> 1) begin
                 begin_transaction
                  Move  Error_Object_ID  to iError_Object_ID
                  move (oDouppar(current_object)) to liBpo05##
                  send beg_uppar to libpo05## wrecr
                 end_transaction
                  Move  iError_Object_ID  to Error_Object_ID
                  if (not(err)) begin
                    Move "Ñ§û£‚®‡©û èò®òööú¢†È§ è®¶£ûüú¨´È§ é¢¶°¢û®Èüû°ú Ñß†´¨ÆÈ™ !!" to MsgStr
                    Send Info_Box MsgStr
                    move wrecr to order1.recr
                    send Find  to order1_dd eq 2
                    send beginning_of_data to (the_table(dbTabPageSubS1(dbTabDialogSubS1(current_object)))) true
                    Send Activate_V94_1
                  end
                  else send info_box 'èò®¶¨©†·©´û°ú ©≠·¢£ò ©´¶§ £ú´ò©Æû£ò´†©£Ê' 'è¢û®¶≠¶®Âò'
               end
             end
            end
           end
        End_Procedure // OnClick



































        //AB-StoreEnd

    End_Object    // ButtonSub1

    Object ButtonSub2 is a ButtonSub
        Set Label to "ButtonSub3"
        Set Bitmap to "printer.bmp"
        Set Size to 20 27
        Set Location to 258 8

        //AB-StoreStart
        Set TooltipValue to "Ñ°´Áß‡©û èò®òööú¢Âò™ Ä§· è®¶£ûüú¨´„"

        Procedure OnClick
           string wrecr
           Get Field_Current_Value Of order1_DD Field order1.recr To wrecr
           Set psRecr  of (r94_1(self)) to Wrecr
           Send runparReport to (parWQLReport(r94_1(Self)))
        End_Procedure // OnClick



















        //AB-StoreEnd

    End_Object    // ButtonSub2

    Object dbGroupSub1 is a dbGroupSub

        //AB-StoreTopStart


        //AB-StoreTopEnd

        Set Size to 26 512
        Set Location to -2 1
        Object Company_Company_Name is a dbFormSub
            Entry_Item Syscurxr.Company_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 106
            Set Location to 9 63
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart

            //AB-StoreEnd

        End_Object    // Company_Company_Name

        Object Branch_Branch_Name is a dbFormSub
            Entry_Item Syscurxr.Branch_name
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 123
            Set Location to 9 245
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart

            //AB-StoreEnd

        End_Object    // Branch_Branch_Name

        Object Year_Year_Year is a dbFormSub

            //AB-StoreTopStart

            //AB-StoreTopEnd

            Entry_Item Syscurxr.Year_descr
            Set Server to (Syscurxr_DD(self))
            Set Size to 13 85
            Set Location to 8 422
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // Year_Year_Year

        Object TextBoxSub1 is a TextBoxSub
            Set Label to "Ñ´ò†®úÂò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 10
            Set Size to 10 31
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // TextBoxSub1

        Object TextBoxSub2 is a TextBoxSub
            Set Label to "ìß¶°ò´·©´û£ò"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 177
            Set Size to 10 53
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE

            //AB-StoreStart


            //AB-StoreEnd

        End_Object    // TextBoxSub2

        Object TextBoxSub3 is a TextBoxSub
            Set Label to "ï®„©û"
            Set Auto_Size_State to FALSE
            Set TextColor to clNavy
            Set FontSize to 4 0
            Set Location to 10 375
            Set Size to 10 32
            Set FontWeight to 800
            Set Justification_Mode to jMode_Right
            Set TypeFace to "MS Sans Serif"
            Set Enabled_State to TRUE
        End_Object    // TextBoxSub3


        //AB-StoreStart

        //AB-StoreEnd

    End_Object    // dbGroupSub1

    Object dbGroupSub2 is a dbGroupSub
        Set Size to 112 182
        Set Location to 25 331
        Object TextBoxSub29 is a TextBoxSub
            Set Label to "ëÁ§¶¢¶ è¶©¶´„´‡§"
            Set Location to 10 11
            Set Size to 10 72
        End_Object    // TextBoxSub29

        Object order1_qty is a dbFormSub
            Entry_Item Order1.Qty
            Set Size to 13 69
            Set Location to 7 105
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart
            Set points Item   to  1


            //AB-StoreEnd

        End_Object    // order1_qty

        Object TextBoxSub30 is a TextBoxSub
            Set Label to "ëÁ§¶¢¶ âòüò®È§ è¶©È§"
            Set Location to 25 11
            Set Size to 10 85
        End_Object    // TextBoxSub30

        Object order1_net is a dbFormSub
            Entry_Item Order1.Net
            Set Size to 13 69
            Set Location to 23 105
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_Mask Item 0 to "###,###,###.####"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart








            //AB-StoreEnd

        End_Object    // order1_net

        Object TextBoxSub31 is a TextBoxSub
            Set Label to "ëÁ§¶¢¶ Ñ°ß´È©ú‡§"
            Set Location to 41 11
            Set Size to 10 75
        End_Object    // TextBoxSub31

        Object order1_Disc is a dbFormSub
            Entry_Item Order1.Disc
            Set Size to 13 69
            Set Location to 39 105
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_Mask Item 0 to "###,###,###.####"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart





            //AB-StoreEnd

        End_Object    // order1_Disc

        Object TextBoxSub32 is a TextBoxSub
            Set Label to "ëÁ§¶¢¶ Ñß†ôò®Á§©ú‡§"
            Set Location to 57 11
            Set Size to 10 85
        End_Object    // TextBoxSub32

        Object order1_Extra is a dbFormSub
            Entry_Item Order1.Extra
            Set Size to 13 69
            Set Location to 54 105
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_Mask Item 0 to "###,###,###.####"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart



            //AB-StoreEnd

        End_Object    // order1_Extra

        Object TextBoxSub33 is a TextBoxSub
            Set Label to "ëÁ§¶¢¶ î.è.Ä."
            Set Location to 71 11
            Set Size to 10 67
        End_Object    // TextBoxSub33

        Object order1_Fpa is a dbFormSub
            Entry_Item Order1.Fpa
            Set Size to 13 69
            Set Location to 70 105
            Set Color to clBtnFace
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_Mask Item 0 to "###,###,###.####"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart



            //AB-StoreEnd

        End_Object    // order1_Fpa

        Object TextBoxSub34 is a TextBoxSub
            Set Label to "ëÁ§¶¢ò èò®òööú¢Âò™ "
            Set Location to 97 11
            Set Size to 10 87
        End_Object    // TextBoxSub34

        Object order1_Total is a dbFormSub
            Entry_Item Order1.Total
            Set Size to 13 69
            Set Location to 94 105
            Set Color to clBtnFace
            Set TextColor to clYellow
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to jMode_Right
            Set Enabled_State to FALSE
            Set Form_Mask Item 0 to "###,###,###.####"
            Set Item_Shadow_State Item 0 to TRUE
            Set Shadow_State Item 0 to TRUE

            //AB-StoreStart



            //AB-StoreEnd

        End_Object    // order1_Total

    End_Object    // dbGroupSub2


    //AB-StoreStart
    set verify_data_loss_msg    to get_no_confirmation
    set verify_save_msg         to get_no_confirmation
    set verify_exit_msg         to get_no_confirmation
    Procedure Enable_The_Fields
        Integer imetasx
        Get Field_Current_Value Of order1_DD Field order1.metasx to imetasx
       // Set Enabled_State   Of (order1_recr(container1(Self))) to true
        Set Enabled_State   Of (order1_descr(container1(Self))) to (imetasx=0)
       // Set Enabled_State   Of (order1_date(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (order1_resp(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (order1_ourdate(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (order1_nomisma(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (dbcheckboxsub1(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (dbcheckboxsub2(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (dbcheckboxsub3(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (dbcheckboxsub3(container1(Self))) to (imetasx=0)
        Set Enabled_State   Of (buttonsub2(Self)) to (imetasx=0)
        Set Read_Only_State Of (order1_DD(v94(Self))) to (imetasx = 1)
        Set Read_Only_State Of (ordersd_DD(v94(Self))) to (imetasx = 1)
    End_Procedure

    Procedure Set_The_Decimal_Points
        Integer itable
        String  sCode sNomisma sRecr
        date    dHmnia


        Get Field_Current_Value Of order1_DD Field order1.nomisma to sNomisma
        Move (Trim(sNomisma))   to sNomisma
        Clear Nomisma
        Move snomisma           to Nomisma.Nomisma_Code
        Find eq Nomisma by Index.1
        Move (the_table(dbTabPageSubS1(dbTabDialogSubS1(Self)))) to itable

        Set Points          Of (order1_net  (dbgroupsub2(self))) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (order1_net  (dbgroupsub2(self))) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Points          Of (order1_disc (dbgroupsub2(self))) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (order1_disc (dbgroupsub2(self))) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Points          Of (order1_extra(dbgroupsub2(self))) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (order1_extra(dbgroupsub2(self))) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Points          Of (order1_fpa  (dbgroupsub2(self))) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (order1_fpa  (dbgroupsub2(self))) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Points          Of (order1_total(dbgroupsub2(self))) Item  0 to     Nomisma.Dekadika
        Set Numeric_Mask    Of (order1_total(dbgroupsub2(self))) Item  0 to 12  Nomisma.Dekadika " ,*"
        Set Dynamic_Update_State    Of itable to False
        Set Visible_State           Of itable to False
        Set Points          Of itable            Item   3 to 1
        Set Points          Of itable            Item   5 to 0
        Set Points          Of itable            Item   6 to 0
        Set Points          Of itable            Item   4 to    Nomisma.Dekadika
        Set Numeric_Mask    Of itable            Item   4 to 14 Nomisma.Dekadika " ,*"
        Set Points          Of itable            Item   7 to    Nomisma.Dekadika
        Set Numeric_Mask    Of itable            Item   7 to 14 Nomisma.Dekadika " ,*"
        Set Points          Of itable            Item   8 to    Nomisma.Dekadika
        Set Numeric_Mask    Of itable            Item   8 to 14 Nomisma.Dekadika  " ,*"
        Set Points          Of itable            Item   9 to    Nomisma.Dekadika
        Set Numeric_Mask    Of itable            Item   9 to 14 Nomisma.Dekadika " ,*"
        Set Points          Of itable            Item  10 to    Nomisma.Dekadika
        Set Numeric_Mask    Of itable            Item  10 to 14 Nomisma.Dekadika " ,*"
        Set Points          Of itable            Item  11 to    Nomisma.Dekadika
        Set Numeric_Mask    Of itable            Item  11 to 14 Nomisma.Dekadika " ,*"
        Set Visible_State           Of itable to true
        Set Dynamic_Update_State    Of itable to true
    End_procedure

    Procedure Activate_View Returns Integer
        String  sStr sModule sDescr sRecr
        Integer rVal iRecnum itable

        Get psMenuModule  Of Main_Menu  to sModule
        Set psModule to sModule
        move (the_table(dbTabPageSubS1(dbTabDialogSubS1(self)))) to itable
        Case Begin
            Case (psModule(Self)='01') // è‡¢„©ú†™ / èú¢·´ú™
                set label of v94 to "É†òÆúÂ®û©û èò®òööú¢†È§ èú¢ò´È§"
                set Header_Label of itable item 1   to 'èú¢·´û™'
                set Header_Label of itable item 2   to 'ÑÂõ¶™ èú¢·´û'
                set column_prompt_object of itable item 1 to (sl100(self))
                set prompt_button_value  of itable to '>>'
                Set psModule Of (sl100(Self)) to (psModule(Self))
              Case Break
            Case (psModule(Self)='02') // è®¶£ûüú¨´‚™ / Äö¶®‚™
                set label of v94 to "É†òÆúÂ®û©û èò®òööú¢†È§ è®¶£ûüú¨´È§ "
                set Header_Label of itable item 1   to 'è®¶£ûü.'
                set Header_Label of itable item 2   to 'ÑÂõ¶™ è®¶£ûü.'
                set column_prompt_object of itable item 1 to (sl186(self))
                set prompt_button_value of itable to '>>'
                set  fragmaprom1 of (sl186(self)) to ''
                set  psmodule of (sl186(self)) to (psmodule(self))
              Case Break
        Case End

        Forward Get Msg_Activate_View to rVal
        Procedure_Return rVal
    End_Procedure




































































































    //AB-StoreEnd

End_Object    // V94


//AB-StoreStart


























//AB-StoreEnd

//AB/ End_Object    // prj
