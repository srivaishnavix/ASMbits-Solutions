.global _start
_start:   
    // This is for testing your function
    bl  func   // Call your function
               // Your function should return here.
    1: b 1b    // Infinite loop to stop program after testing

func:
    // This is where your code starts running when judging.
    // Write a function here.
	
    //solution 1: (most preferred)
    bx lr
    
    //solution 2: (preferred one function calls another function)
    push {lr}
    pop {pc}
    
    //solution 3: (least preferred, as it doesn't handle switching between instruction set properly- Thumb(16bit) ARM(32 bit))
    mov pc, lr
