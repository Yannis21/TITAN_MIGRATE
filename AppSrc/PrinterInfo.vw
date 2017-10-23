Use Windows.pkg
Use DFClient.pkg

Deferred_View Activate_oPrinterInfo for ;
Object oPrinterInfo is a dbView

    Set Border_Style to Border_Thick
    Set Size to 110 263
    Set Location to 2 2
    Set Label to "Printer Info for CR"

    Object oPrintDialog is a PrintDialog
    
        //PrintDialog is a predefined function in the PrintDialog class.
        //Call the PrintDialog via:
    
        //get PrintDialog to iIntegerVariable
    
        //DoCallPrintDialog is NOT a predefined method in the PrintDialog class,
        //DoCallPrintDialog is just a code sample.
        //You can call DoCallPrintDialog from another object, such as a button.
    
        //Procedure DoCallPrintDialog
        //    Boolean bOk
        //
        //    Get PrintDialog To bOk
        //    If (bOk) Begin
        //       
        //    End
        //End_Procedure
    
    End_Object

    Object oButton1 is a Button
        Set Size to 14 69
        Set Location to 16 97
        Set Label to "Get Printer Info"
    
        // fires when the button is clicked
        Procedure OnClick
            Send GetPrinter
        End_Procedure
    
    End_Object

    Procedure GetPrinter 
        String sDriver sDevice sPort 
        Integer iCancel iResult
        Pointer pHeap
        String[] sPrinter
        String[] sEmpty
        
        Move sEmpty to sPrinter
    
        Get PrintDialog of oPrintDialog to iCancel

        Get DeviceName of oPrintDialog to sPrinter[0]
        Get DriverName of oPrintDialog to sPrinter[1]
        Get OutputName of oPrintDialog to sPrinter[2]
        
        If (iCancel) Begin
            Move " " to sPrinter[0]  
            Move " " to sPrinter[1]  
            Move " " to sPrinter[2]  
        End
        
        // Unlock and free allocated memory
        Move (GlobalUnlock(DevModeHandle(oPrintDialog(Self)))) to iResult
        Move (GlobalFree(DevModeHandle(oPrintDialog(Self))))   to iResult
        Move (GlobalFree(DevNamesHandle(oPrintDialog(Self))))  to iResult
        
        Set Value of oForm1 to sPrinter[0]
        Set Value of oForm2 to sPrinter[1]
        Set Value of oForm3 to sPrinter[2]
        
    End_Procedure

    Object oForm1 is a Form
        Set Size to 13 193
        Set Location to 45 60
        Set Label to "Device Name"
    
        //OnChange is called on every changed character
    
        //Procedure OnChange
        //    String sValue
        //
        //    Get Value to sValue
        //End_Procedure
    
    End_Object

    Object oForm2 is a Form
        Set Size to 13 193
        Set Location to 65 60
        Set Label to "Driver Name"
        //OnChange is called on every changed character
    
        //Procedure OnChange
        //    String sValue
        //
        //    Get Value to sValue
        //End_Procedure
    
    End_Object

    Object oForm3 is a Form
        Set Size to 13 193
        Set Location to 85 60
        Set Label to "Output Name"
    
        //OnChange is called on every changed character
    
        //Procedure OnChange
        //    String sValue
        //
        //    Get Value to sValue
        //End_Procedure
    
    End_Object
Cd_End_Object
