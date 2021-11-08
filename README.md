# ARMv7-Integer-Division
Integer Division is simple. We will have a dividend,divisor,quotient and remainder.
Algorithm is as follows:
 1. Set the value of the Quotient to 0.
 2. First, we need to take the input for Dividend and Divisor.
 3. If Divisor is 0:
       terminate the program as we cannot divide any number by 0
 4. Else:
       Compare Dividend and divisor.
       If Dividend is less than the divisor:
          terminate the program as the data is invalid for integer divison.
LOOP_1 Else:
          New_Dividend = Dividend - Divisor
          Quotient = Quotient + 1
          Compare New_Dividend and divisor.
          If New_Dividend is less than the divisor:
             End the program
          Else:
             Goto LOOP_1
End of the program         
