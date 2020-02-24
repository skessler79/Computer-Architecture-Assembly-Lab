			MOV			R0, #0x17
			MOV			R1, #0X1000
			STR			R0, [R1]
			LDR			R2, [R1]
			MOV			R3, R2

			LSLS			R2, R2, #2
			SUB			R2, R2, R3
			MOV			R4 , #0x2000
			STR			R2, [R4]
			