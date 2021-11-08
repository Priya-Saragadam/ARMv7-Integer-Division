	/* A Lakshmi_Priya Original code: Integer Division*/
	
	AREA DIVISION,CODE,READONLY
	ENTRY
	LDR R0,=0X40000000
	LDMIA R0!,{R1,R2,R3}     ;R2 IS DIVIDEND AND R1 IS DIVISOR,let R3 be the quotient/counter with initial value 0
	CMP R1,#00               ;We cannot divide Dividend with 0. So, we are checking if our divisor i.e. R1 is 0 
	BEQ SAMBA                ;If R1 is eqaul to 0, we can end the program as the data is invalid
	CMP R2,R1                ;We cannot perform integer division if dividend is less than than the divisor.So, compare dividend and divisor 
	BLT SAMBA                ;If dividend is less than the divisor, we can end our program as the data is invalid 
REP SUB R2,R2,R1                 ;Else, Do repeated subtraction of Dividend and divisor and update the result as new Dividend
	ADD R3,R3,#01            ;R3 is our quotient. It is actually a counter. Each time we enter the loop REP, counter gets incremented by 1
	CMP R2,R1                ;We compare our new dividend and divisor
	BPL REP                  ;If the dividend is positive,we get into the loop REP
	STMIA R0!,{R2,R3}        ;Once the loop ends, the quotient(R3) and the remainder(R2) will be stored at the memory location pointed by R0
SAMBA B SAMBA                    ; Infinite loop to avoid execution of the same program
	END
