// A test case to test your function with

.global _start
_start:
    ldr r0, =0x12345678
    bl shift
    b _start        // End of testing code

// Convert one U32 sample to U8 format
shift:
	lsr r0, r0, #24
	bx lr
    
    //Another way
	mov r0, r0, lsr#24
    bx lr
    
    //Unsigned bit field extract
    ubfx r0, r0, #24, #8
    bx lr
