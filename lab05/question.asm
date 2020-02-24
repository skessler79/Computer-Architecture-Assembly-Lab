		MOV			R0, #0x01
		MOV			R1, #0x1000
		ADDS			R1, R1, #1
		MOV			R2, #0x2000
		ADDS			R2, R2, #1
		MOV			R4, #0x1000
		ADDS			R4, R4, #1
		SUBS			R4, R4, #1

loop1	
		STR			R0, [R1]
		ADDS			R0, R0, #1
		ADDS			R1, R1, #1
		CMP			R0, #11
		BNE			loop1

		SUBS			R1, R1, #1

loop2
		LDR			R3, [R1]
		STR			R3,[R2]
		SUBS			R1, R1, #1
		ADDS			R2, R2, #1
		CMP			R1, R4
		BGT			loop2

		END