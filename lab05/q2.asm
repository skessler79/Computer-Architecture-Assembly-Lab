		MOVS			R0, #0x01
		MOVS			R1, #0x6000
		MOVS			R2, #0x7000
		MOVS			R4, #0x6000
		SUBS			R4, R4, #1

loop1	
		STR			R0, [R1]
		ADDS			R0, R0, #1
		ADDS			R1, R1, #4
		CMP			R0, #7
		BNE			loop1

		SUBS			R1, R1, #4

loop2
		LDR			R3, [R1]
		STR			R3,[R2]
		SUBS			R1, R1, #4
		ADDS			R2, R2, #4
		CMP			R1, R4
		BGT			loop2

		END