.global _start
_start:
    mov r0, #1
    bl invert
    1: b 1b    // Done

.global invert
invert:
	  //Solution: (move not or move negate solution)
	  mvn r0, r0
    bx lr
    
    //XOR method(uses more instructions)
    ldr r1, =0xFFFFFFFF
    eor r0, r0, r1    
    bx lr
