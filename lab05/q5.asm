		MOV		R0, #0x5000
		MOV		R1, #202
		MOV		R2, #5
		STRB		R1, [R0]
		STRB		R2, [R0, #1]




		MOV		R0, #0x5000
		LDRB		R3, [R0]
		LDRB		R4, [R0, #1]

		CMP		R3, #0
		BEQ		finish
		CMP		R4, #0
		BEQ		finish

loop
		SUBS		R3, R3, R4
		ADDS		R5, R5, #1
		CMP		R3, R4
		BEQ		zero
		BGT		loop
		B		finish

zero
		ADDS		R5, R5, #1
		SUBS		R3, R3, R3

finish
		MOV		R0, #0x7000
		STRB		R5, [R0]
		STRB		R3, [R0, #1]
		END