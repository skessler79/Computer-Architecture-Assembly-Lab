		MOV		R0, #0				; set r0 to 0
		MOV		R10, #0x8E			; set r10 to 232
		MOV		R12, #0xF7			; set r12 to 247
		AND		R1, R10, #15			; logical mask for the lower order 4 bits for r10
		AND		R2, R12, #15			; logical mask for the lower order 4 bits for r10
		EOR		R3, R1, R2			; r1 XOR r2
		LDR		R4, =0x500			; r4 is now a pointer pointing to memory address 0x500
		STR		R3, [R4, #0]			; storing r3 into memory address pointed by r4
		END