		MOV		R0,#0x1000
		MOV		R3,#0x99
		MOV		R4,#0x19
		STR		R3,[R0]
		STR		R4,[R0,#0x4]
		;seperate	98 to 9 and 8
		ANDS		R5,R3,#0xF     ;9
		ANDS		R6,R4,#0xF	;8
		ANDS		R7,R3,#0xF0	;9
		ANDS		R8,R4,#0xF0	;9
		
		ADDS		R5,R5,R6
		SUBS		R10,R5,#0xA
		BLT		label1      ;if no overflow then jump
		
		ADDS		R5,R10,#0x6
		ADDS		R7,R7,#0xA
label1
		ADDS		R7,R7,R8
		SUBS		R11,R7,#0xA0
		BLT		label2
		
		ADDS		R7,R7,#0x60
		
label2
		ADDS		R12,R7,R5
		MOV		R2,#0x2000
		STR		R12,[R2]
