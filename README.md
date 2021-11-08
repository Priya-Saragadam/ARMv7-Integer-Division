# ARMv7-Integer-Division
Integer Division is simple. We will have a dividend,divisor,quotient and remainder.
Algorithm is as follows:
 1. Set the value of the Quotient to 0.
 2. First, we need to take the input for Dividend and Divisor.
 3. If Divisor is 0:
       (i)terminate the program as we cannot divide any number by 0
 4. Else:
       (i)Compare Dividend and divisor.
       (ii)If Dividend is less than the divisor:
              (i)terminate the program as the data is invalid for integer divison.
LOOP_1 Else:
         (i)New_Dividend = Dividend - Divisor
         (ii)Quotient = Quotient + 1
         (iii)Compare New_Dividend and divisor.
         (iv)If New_Dividend is less than the divisor:
                (i) End the program
             Else:
                 (i)Goto LOOP_1
  5. End of the program         
