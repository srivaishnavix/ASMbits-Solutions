.global _start
_start:
    call func
    1: br 1b  # done

func:
    # Set r2 = 123 and then return from the function.
	  movi r2, 123
    ret
