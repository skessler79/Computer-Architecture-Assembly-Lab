		EOR		R0, R0, R0		; set r0 to 0 (clear r0 with bitwise XOR), r0 = r0 XOR r0
		MOV		R1, #0xFFFFFFFF	; set r1 to -1
		MOV		R2, #0x00000066	; set r2 to 102
		ADDS		R1, R1, #0x01		; r1 = r1 + 1 = 0
		SUBS		R0, R0, #0x01		; r0 = r0 - 1 = -1
		ADD		R0, R0, R1		; r0 = r0 + r1 = -1
		SUBS		R0, R0, #0x86		; r0 = r0 - 134 = -135
		ORRS		R0, R0, R2		; r0 = r0 OR r2 = -129
		END						; signals end of program
