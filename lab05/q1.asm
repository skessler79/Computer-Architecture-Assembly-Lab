		MOVS			R0, #0x01
		MOVS			R1, #0x6000
		MOVS			R2, #0x7000

loop1	
		STR			R0, [R1]
		ADDS			R0, R0, #1
		ADDS			R1, R1, #4
		CMP			R0, #7
		BNE			loop1

		MOVS			R1, #0x6000

loop2
		LDR			R3, [R1]
		STR			R3,[R2]
		ADDS			R1, R1, #4
		ADDS			R2, R2, #4
		CMP			R3, #6
		BNE			loop2

		END