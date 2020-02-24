		MOV		R1, #0x1000
		ADDS		R1, R1, #1
		MOV		R0, #34
		STRB		R0, [R1], #1
		MOV		R0, #25
		STRB		R0, [R1], #1
		MOV		R0, #15
		STRB		R0, [R1], #1
		MOV		R0, #23
		STRB		R0, [R1], #1
		MOV		R0, #45
		STRB		R0, [R1], #1
		MOV		R0, #64
		STRB		R0, [R1], #1
		MOV		R0, #56
		STRB		R0, [R1], #1
		MOV		R0, #23
		STRB		R0, [R1]

		MOV		R1, #0x1000
		ADDS		R1, R1, #1
		MOV		R2, #0x3000
		ADDS		R2, R2, #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2], #1
		LDRB		R3, [R1], #1
		STRB		R3, [R2]

		MOV		R2, #0
		MOV		R1, #0x3000
		ADDS		R1, R1, #1
loop1
		LDRB		R3, [R1, R2]
		ADDS		R2, R2, #1
		LDRB		R4, [R1, R2]
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
		STRB		R3, [R1, R2]
		SUBS		R2, R2, #1
		STRB		R4, [R1, R2]
		ADDS		R2, R2, #1
		B		post

finish
		
		END
		