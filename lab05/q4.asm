		MOV		R0, #0x5000
		MOV		R1, #2000
		MOV		R2, #6
		STRB		R1, [R0]
		STRB		R2, [R0, #1]

		LDRB		R3, [R0]
		LDRB		R4, [R0, #1]

		CMP		R3, #0
		BEQ		store
		CMP		R4, #0
		BEQ		store

loop
		ADDS		R5, R5, R3
		SUBS		R4, R4, #1
		BGT		loop

store
		MOV		R0, #0x7000
		CMP		R5, #0xFF
		STRB		R5, [R0], #1
		BLT		finish
		LSR		R5, R5, #8
		STRB		R5, [R0]

finish
		END