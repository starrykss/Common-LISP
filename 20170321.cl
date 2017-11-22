International Allegro CL Free Express Edition
10.0 [Windows] (Mar 16, 2017 15:35)
Copyright (C) 1985-2015, Franz Inc., Oakland, CA, USA.  All Rights Reserved.

This development copy of Allegro CL is licensed to:
   Allegro CL 10.0 Express user

Loaded options from C:\Users\kss34\OneDrive\Documents\allegro-ide-options.cl.

;; Optimization settings: safety 1, space 1, speed 1, debug 2.
;; For a complete description of all compiler switches given the current optimization settings evaluate (EXPLAIN-COMPILER-SETTINGS).

[changing package from "COMMON-LISP-USER" to "COMMON-GRAPHICS-USER"]
CG-USER(1): (defun logicaland(x y) (and x y t))
LOGICALAND
CG-USER(2): (logicaland 'abc "abc")
T
CG-USER(3): (logicaland nil '(a b c))
NIL
CG-USER(4): (defun logicaland2 (x y) (if x (if y t)))
LOGICALAND2
CG-USER(5): (logicaland2 7 10)
T
CG-USER(6): (logicaland2 'a nil)
NIL
CG-USER(7): (defun logicalor (x y) (cond (x t) (y t) (t nil)))
LOGICALOR
CG-USER(8): (logicalor 'a 'b)
T
CG-USER(9): (logical 'a nil)
Error: attempt to call `LOGICAL' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(10): (logicalor 'a nil)
T
CG-USER(11): (logicalor nil nil)
NIL
CG-USER(12): (or nil 'a)
A
CG-USER(13): 