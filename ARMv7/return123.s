.global _start
_start:
    bl func
    1: b 1b  // done

func:
    // return 123: Set r0 = 123 and then return from the function.
    
    //Solution: (ARM uses # for immediate values)
	  mov r0, #123 //can also use #0x7b
	  bx lr
    
    //Other ways to load r0 with 123
    //Load-constant method
    ldr r0, =123
    
    //mov 16bit immediate
    movw r0, #123
