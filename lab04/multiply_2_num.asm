		mov		r0, #1000
		adds		r0, r0, #234
		mov		r1, #0x1000
		mov		r2, #34
		str		r0, [r1]
		str		r2, [r1, #4]

		ldr		r3, [r1]
		ldr		r4, [r1, #4]
		
		cmp		r3, #0
		beq		finish
		cmp		r4, #0
		beq		finish

loop
		add		r5, r5, r3
		subs		r2, r2, #1
		bne		loop

finish
		mov		r6, #0x2000
		str		r5, [r6]