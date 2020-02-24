		MOV		R1, #0x5000
		MOV		R0, #34
		STR		R0, [R1], #4
		MOV		R0, #25
		STR		R0, [R1], #4
		MOV		R0, #15
		STR		R0, [R1], #4
		MOV		R0, #23
		STR		R0, [R1], #4
		MOV		R0, #45
		STR		R0, [R1], #4
		MOV		R0, #64
		STR		R0, [R1], #4
		MOV		R0, #56
		STR		R0, [R1], #4
		MOV		R0, #23
		STR		R0, [R1]

		MOV		R2, #0
		MOV		R1, #0x5000
loop1
		LDR		R3, [R1, R2]
		ADDS		R2, R2, #4
		LDR		R4, [R1, R2]
		CMP		R3, R4
		BLT		swap
post
		ADDS		R5, R5, #1
		CMP		R5, #7
		BLT		loop1
		MOV		R2, #0
		MOV		R5, #0
		ADDS		R6, R6, #1
		CMP		R6, #7
		BLT		loop1
		B		finish
swap
		STR		R3, [R1, R2]
		SUBS		R2, R2, #4
		STR		R4, [R1, R2]
		ADDS		R2, R2, #4
		B		post

finish
		END
		