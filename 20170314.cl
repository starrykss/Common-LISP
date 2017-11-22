International Allegro CL Free Express Edition
10.0 [Windows] (Aug 15, 2016 10:51)
Copyright (C) 1985-2015, Franz Inc., Oakland, CA, USA.  All Rights Reserved.

This development copy of Allegro CL is licensed to:
   Allegro CL 10.0 Express user

Loaded options from C:\Users\kss34\OneDrive\Documents\allegro-ide-options.cl.

;; Optimization settings: safety 1, space 1, speed 1, debug 2.
;; For a complete description of all compiler switches given the current optimization settings evaluate (EXPLAIN-COMPILER-SETTINGS).

[changing package from "COMMON-LISP-USER" to "COMMON-GRAPHICS-USER"]
CG-USER(1): '((a b) . (c d))
CG-USER(1): 
CG-USER(1): '((a b) . (c d))
((A B) C D)
CG-USER(2): '(a b c)
(A B C)
CG-USER(3): '(a b . c)
(A B . C)
CG-USER(4): '(a b . (c))
(A B C)
CG-USER(5): (length '(a b c))
3
CG-USER(6): (length '(a b . c))
Error: Attempt to take the cdr of C which is not listp.
[condition type: TYPE-ERROR]
Restart actions (select using :continue):
 0: Return to Top Level (an "abort" restart).
 1: Exit the CG event-handling loop (event-loop)
 2: Unwind to the top-level event-handling loop.
 3: Exit this IDE listener (Listener 1).
 4: Abort entirely from this (lisp) process.

[1] CG-USER(7): 
CG-USER(7): MyAbs(-3)
Error: Attempt to take the value of the unbound variable `MYABS'.
[condition type: UNBOUND-VARIABLE]
CG-USER(8): MyAbs(-3)
Error: Attempt to take the value of the unbound variable `MYABS'.
[condition type: UNBOUND-VARIABLE]
CG-USER(9): 
; Loading C:\Users\kss34\Desktop\FirstCode.lsp
CG-USER(9): MyAbs(-3)
Error: Attempt to take the value of the unbound variable `MYABS'.
[condition type: UNBOUND-VARIABLE]
CG-USER(10): 
; Loading C:\Users\kss34\Desktop\FirstCode.lsp
CG-USER(10): (MyAbs 100)
100
CG-USER(11): (MyAbs -101)
101
CG-USER(12): (MyOddp 7)
TRUE
CG-USER(13): (MyOddp 4)
FALSE
CG-USER(14): (comparenums 7 8)
Error: attempt to call `COMPARENUMS' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(15): 
; Loading C:\Users\kss34\Desktop\FirstCode.lsp
CG-USER(15): (comparenums 7 8)
"first numver is smaller than second number."
CG-USER(16): (comparenums 8 7)
"first number is bigger than the second."
CG-USER(17): 
; Loading C:\Users\kss34\Desktop\FirstCode.lsp
CG-USER(17): (compute 'sum-of 1 2)
3
CG-USER(18): (compute 'product-of 2 3)
6
CG-USER(19): (compute 'plus 2 3)
UNKNOWN
CG-USER(20): 