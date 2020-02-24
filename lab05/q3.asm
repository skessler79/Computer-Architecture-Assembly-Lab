		MOV		R0, #0x7000
		ADDS		R0, R0, #0x60
		
		MOV		R1, #0x67
		MOV		R2, #0x45
		STRB		R1, [R0], #1
		STRB		R2, [R0], #1
		MOV		R1, #0x87
		STRB		R1, [R0], #1
		STRB		R2, [R0], #1
		MOV		R1, #0x1F
		STRB		R1, [R0], #1
		STRB		R2, [R0], #1
		MOV		R1, #0x30
		STRB		R1, [R0], #1
		STRB		R2, [R0], #1
		MOV		R1, #0x80
		STRB		R1, [R0], #1
		STRB		R2, [R0], #1
		MOV		R1, #0x7F
		STRB		R1, [R0], #1
		STRB		R2, [R0]



		MOV		R0, #0x7000
		ADDS		R0, R0, #0x60
		MOV		R3, #0x7000
		ADDS		R3, R3, #0x80

loop
		LDRB		R1, [R0], #2
		STRB		R1, [R3], #1
		MOV		R4, #0x7000
		ADDS		R4, R4, #0x6B
		CMP		R0, R4
		BLT		loop

		END
		