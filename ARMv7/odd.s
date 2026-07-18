.global _start
_start:
    mov r0, #1
    bl odd
    1: b 1b    // Done

.global odd
odd:
	  //Best solution
	  and r0, r0, #1
    bx lr
    
    //Updates flag as well
    ands r0, r0, #1
	  bx lr
    
    //Unsigned bit field extract
    ubfx r0, r0, #0, #1 // first imm-value is the location from where to extract, second imm-value is how many bits to extract
	  bx lr
	
	
