// A test case to test your function with
.global _start
_start:
    ldr r0, =0x11223344
    bl bswap
    b _start        // End of testing code

// Byte swap
bswap:
	//reverse
	rev r0,r0
    bx lr
    
    //eor
    eor r1, r0, r0, ror #16
    bic r1, r1, #0x00FF0000
    mov r0, r0, ror #8
    eor r0, r0, r1, lsr #8
    
    bx lr
