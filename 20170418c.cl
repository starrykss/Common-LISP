International Allegro CL Free Express Edition
10.0 [Windows] (Mar 28, 2017 16:41)
Copyright (C) 1985-2015, Franz Inc., Oakland, CA, USA.  All Rights Reserved.

This development copy of Allegro CL is licensed to:
   Allegro CL 10.0 Express user

Loaded options from C:\Users\kss34\OneDrive\Documents\allegro-ide-options.cl.

;; Optimization settings: safety 1, space 1, speed 1, debug 2.
;; For a complete description of all compiler switches given the current optimization settings evaluate
;; (EXPLAIN-COMPILER-SETTINGS).

[changing package from "COMMON-LISP-USER" to "COMMON-GRAPHICS-USER"]
CG-USER(1): (cons '(a b c) '(d e f))
((A B C) D E F)
CG-USER(2): (member '(cal) '(nol lol ads))
NIL
CG-USER(3): (member 'cal '(abc cal nol lol))
(CAL NOL LOL)
CG-USER(4): (member 'cal '(nol lol ads))
NIL
CG-USER(5): (not (member 'cal '(nol lol ads)))
T
CG-USER(6): (and t (not (member 'cal '(nol lol ads))))
T
CG-USER(7): (defun beforep (x y l)
              (member y (member x l)))
BEFOREP
CG-USER(8): (beforep 'a 'b '(1 s e a e b))
(B)
CG-USER(9): (beforep 'b 'a '(1 se a e b))
NIL
CG-USER(10): (not (before p 'b 'a '(1 s e a e b)))
Error: attempt to call `BEFORE' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(11): (not (beforep 'b 'a '(1 s e a e b)))
T
CG-USER(12): (intersection '(fred john mary) '(sue mary fred))
(MARY FRED)
CG-USER(13): (union '(a s d f g) '(v w s r a))
(G F D V W S R A)
CG-USER(14): (set-difference '(a s d f g) '(v w s r a))
(G F D)
CG-USER(15): (subsetp '(a i) '(a e i o u))
T
CG-USER(16): (defvar *male-names* '(john kim richard fred george))
(defvar *female-names* '(jane mary wanda barbara kim))

(defun gender-ambiguous-names ()
  (intersection *male-names* *female-names*))
(defun uniquely-male-names ()
  (set-difference *male-names* *female-names*))
(defun uniquely-female-names () 
  (set-difference *female-names* *male-names*))

(defun malep (x)
  (member *male-names* *female-names*))

(defun femalep (x)
  (member *female-names* *male-names*))

*MALE-NAMES*
CG-USER(17): 
*FEMALE-NAMES*
CG-USER(18):
CG-USER(18): (defun beforep (x y l)
  "returns true if X appears before Y in L"
  (member y (member x l)))

(defvar *male-names* '(john kim richard fred george))
(defvar *female-names* '(jane mary wanda barbara kim))

(defun gender-ambiguous-names ()
  (intersection *male-names* *female-names*))
(defun uniquely-male-names ()
  (set-difference *male-names* *female-names*))
(defun uniquely-female-names () 
  (set-difference *female-names* *male-names*))

(defun malep ()
  (member *male-names* *female-names*))

(defun femalep ()
  (member *female-names* *male-names*))

BEFOREP
CG-USER(19): 
CG-USER(19): (malep ())
Error: attempt to call `MALEP' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(20): (defun malep (x)
  (member x *female-names*))

(defun femalep (x)
  (member x *male-names*))

MALEP
CG-USER(21): 
CG-USER(21): (malep '(kim))
NIL
CG-USER(22): (femalep '(mary))
Error: attempt to call `FEMALEP' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(23): (femalpe 'mary)
Error: attempt to call `FEMALPE' which is an undefined function.
[condition type: UNDEFINED-FUNCTION]
CG-USER(24): (defun femalep (x)
  (member x *male-names*))
FEMALEP
CG-USER(25): (femalep 'mary)
NIL
CG-USER(26): (femalep '(mary))
NIL
CG-USER(27): 
; Loading C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170418.cl
Warning: BEFOREP, :OPERATOR was defined at the top level and is now being defined in
         C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170418.cl
Warning: *MALE-NAMES*, :VARIABLE was defined at the top level and is now being defined in
         C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170418.cl
Warning: *FEMALE-NAMES*, :VARIABLE was defined at the top level and is now being defined in
         C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170418.cl
Warning: MALEP, :OPERATOR was defined at the top level and is now being defined in
         C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170418.cl
Warning: FEMALEP, :OPERATOR was defined at the top level and is now being defined in
         C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170418.cl
CG-USER(27): (defvar *male-names* '(john kim richard fred george))
(defvar *female-names* '(jane mary wanda barbara kim))

(defun gender-ambiguous-names ()
  (intersection *male-names* *female-names*))
(defun uniquely-male-names ()
  (set-difference *male-names* *female-names*))
(defun uniquely-female-names () 
  (set-difference *female-names* *male-names*))

(defun malep (x)
  (member x *male-names*))

(defun femalep (x)
  (member x *female-names*))
*MALE-NAMES*
CG-USER(28): 
*FEMALE-NAMES*
CG-USER(29): 
CG-USER(29): (malep 'kim)
(KIM RICHARD FRED GEORGE)
CG-USER(30): (femalep 'mary)
(MARY WANDA BARBARA KIM)
CG-USER(31): (subst 'on 'off '(keep off the grass))
(KEEP ON THE GRASS)
CG-USER(32): (sublis '((roses . violets) (red . blue)) '(roses are red))
(VIOLETS ARE BLUE)
CG-USER(33): (remove-duplicates '(a a a a a a b c c c d d ))
(A B C D)
CG-USER(34): (set-exclusive-or '(a b c) '(d e f))
(F E D C B A)
CG-USER(35): (set-exclusive-or '(a b c) '(a d e))
(E D C B)
CG-USER(36): (setf sounds '((cows . moo) '(pig . oink)))
((COWS . MOO) '(PIG . OINK))
CG-USER(37): (rassoc 'cow sounds)
NIL
CG-USER(38): (rassoc 'moo sounds)
(COWS . MOO)
CG-USER(39): (assoc 'moo sounds)
NIL
CG-USER(40): (assoc 'cows sounds)
(COWS . MOO)
CG-USER(41): (rassoc 'oink sounds)
NIL
CG-USER(42): (rassoc 'oink sounds)
NIL
CG-USER(43): (assoc 'oink sounds)
NIL
CG-USER(44): (assoc '(oink) sounds)
NIL
CG-USER(45): (setf sounds '((cows . moo) (pig . oink)))
((COWS . MOO) (PIG . OINK))
CG-USER(46): (rassoc 'oink sounds)
(PIG . OINK)
CG-USER(47): 
; Loading
CG-USER(47): (contrast 'object1 'object2)
(SHAPE LUSTER COLOR)
CG-USER(48): (contrast 'object1 'object3)
(SHAPE COLOR SIZE)
CG-USER(49): (description 'object1)
(LARGE GREEN SHINY CUBE)
CG-USER(50): (differences 'object1 'object2)
(PYRAMID DULL RED CUBE SHINY GREEN)
CG-USER(51): (differences 'object1 'object2 'object3)
Error: DIFFERENCES got 3 args, wanted 2 args.
[condition type: PROGRAM-ERROR]
CG-USER(52): (differences 'object1 'object2)
(PYRAMID DULL RED CUBE SHINY GREEN)
CG-USER(53): (contrast 'object1 'object2)
(SHAPE LUSTER COLOR)
CG-USER(54): (setq tpl:*print-length* nil)
NIL
CG-USER(55): (setq tpl:*print-length* nil)
NIL
CG-USER(56): (setf x '(a b c c c c c d d d d e e e e e e ee e e e))
(A B C C C C C D D D D E E E E E E EE E E E)
CG-USER(57): 