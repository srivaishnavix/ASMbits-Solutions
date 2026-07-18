.global _start
_start:
    mov r0, #10
    bl abs
    1: b 1b    // Done

.global abs
abs:
	  cmp r0, #0
    neglt r0, r0
    bx lr
    
    //Using RSB
    cmp r0, #0
    rsblt r0, r0, #0
    bx lr
    
    //branch method
    cmp r0, #0
    bge done
    neg r0, r0
done:
    bx lr
    
   	//Advanced way
    mov r1, r0, asr #31
    eor r0, r0, r1
    sub r0, r0, r1
    bx  lr
	
	
