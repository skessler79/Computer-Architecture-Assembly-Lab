		MOVS			R0, #0x01
		MOVS			R1, #0x1000
		ADDS			R1, R1, #1
		MOVS			R2, #0x2000
		ADDS			R2, R2, #1
		MOVS			R4, #0x1000

loop1	
		STRB			R0, [R1]
		ADDS			R0, R0, #1
		ADDS			R1, R1, #1
		CMP			R0, #11
		BNE			loop1

		SUBS			R1, R1, #1

loop2
		LDRB			R3, [R1]
		STRB			R3,[R2]
		SUBS			R1, R1, #1
		ADDS			R2, R2, #1
		CMP			R1, R4
		BGT			loop2

		END