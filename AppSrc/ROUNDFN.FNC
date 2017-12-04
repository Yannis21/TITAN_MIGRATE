// ===========================================================================
//
// The ROUND_NUMBER global function has been designed to return the rounded
// value of a given 'numeric' argument at a specified rounding precision.
//
// ---------------------------------------------------------------------------
// This version dispenses with the use of powers (10 ^ n) to perform the
// necessary calculations.  It uses a string handling technique instead.
// ---------------------------------------------------------------------------
//
// The function requires two arguments, as follows:-
//
// (a) The numeric value to be rounded, where the range of valid values is
//     +/- 99,999,999,999,999.99999999.
//
// (b) The rounding precision required.  This must be an integer value in the
//     range -13 to +8.  If a value outside this range is used, the nearest
//     threshold value is substituted.
//
//     Values in the range +1 to +7 perform rounding on the decimal part of
//     the number.  A value of +8 will perform no rounding at all.  A zero
//     value will round to the nearest whole number.  Values -1 to -13 will
//     round progressively to the left of the decimal point (a frequent
//     requirement in financial reporting).
//
// If the result of the rounding produces a value outside the valid numeric
// range (+/- 99,999,999,999,999.99999999) then a zero value is returned.
//
// Assumptions:-  The only assumptions made have been that the range of
// numeric values and the limit of eight decimal places are unlikely to change
// in the forseeable future.
//
// Examples:-
//
//  1st Argument      2nd Argument   Return Value
//  ------------      ------------   ------------
//  123456.87654321         8         123456.87654321
//  123456.87654321         2         123456.88
// -123456.87654321         2        -123456.88
//  123456.98765432         0         123457
// -123456.98765432        -1        -123460
//  123456.98765432        -2         123500
//  123456.98765432        -3         123000
//  987654                 -4         990000
//  987654                 -5        1000000
//  987654                 -6        1000000
//  987654                 -7              0
//
// ===========================================================================


Function Round_Number GLOBAL number nVal integer iRnd returns Number

  Local Number nAdj

  Move 10000000000000 to nAdj

  // If the rounding precision falls in the range 0 to 8, then return:-

  If (iRnd >= 0) Function_Return ;
    (Number(Abs(nVal) / nVal) * 0.5 / (Number(Left(nAdj, ((iRnd + 1) ;
      min 9)))) + nVal / (Number(Left(nAdj, (9 - (iRnd min 8))))) ;
        * (Number(Left(nAdj, (9 - (iRnd min 8))))))

  // Else, where the rounding precision is in the range -1 to -5, return:-

  If (iRnd >= -5) Function_Return ;
    (Number(Abs(nVal) / nVal) * 0.5 * (Number(Left(nAdj, (Abs(iRnd) + 1)))) ;
      + nVal / (Number(Left(nAdj, (Abs(iRnd) + 9)))) ;
        * (Number(Left(nAdj, (Abs(iRnd) + 9)))))

  // Else, where the rounding precision is in the range -6 to -13, return:-

  Function_Return ;
    (Number(Abs(nVal) / nVal) * 0.5 * (Number(Left(nAdj, (Abs(iRnd) + 1)))) ;
      + nVal / (Number(nAdj)) / (Number(Left(nAdj, ((Abs(iRnd) - 4) min 9)))) ;
        * (Number(nAdj)) * (Number(Left(nAdj, ((Abs(iRnd) - 4) min 9)))))

End_Function
