		MOV		R1, #0x30				; set r1 to 48
		MOV		R2, #0x39				; set r2 to 57
		SUBS		R3, R1, R2			; r3 = r1 - r2 = -9
		LDR		R4, =0x7500			; r4 is a pointer pointing to memory address 0x7500
		STR		R3, [R4, #0]			; store r3 into memory address pointed by r4
;		MOV		R4, #0x7500
;		STR 	     r3, [R4]
		END
