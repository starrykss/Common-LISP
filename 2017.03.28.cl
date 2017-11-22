
CG-USER(2): (setf x '(a b c))
(A B C)
CG-USER(3): x
(A B C)
CG-USER(4): (defvar *MySum* 0)
*MYSUM*
CG-USER(5): *My Sum*
Error: Attempt to take the value of the unbound variable `*MY'.
[condition type: UNBOUND-VARIABLE]
CG-USER(6): *MySum*
0
CG-USER(7): (setf *MySum* (+ *MySum* 100))
100
CG-USER(8): *MySum*
100
CG-USER(9): (defparameter *ToatalSum* 0)
*TOATALSUM*
CG-USER(10): *TotalSum*
Error: Attempt to take the value of the unbound variable `*TOTALSUM*'.
[condition type: UNBOUND-VARIABLE]
CG-USER(11): (defparameter *TotalSum* 0)
*TOTALSUM*
CG-USER(12): *TotalSum*
0
CG-USER(13): (setf *TotalSum* (+ *TotalSum* 50))
50
CG-USER(14): *TotalSum*
50
CG-USER(15): (defvar *MySum* 0)
*MYSUM*
CG-USER(16): (defparameter *TotalSum* 5000)
*TOTALSUM*
CG-USER(17): *TotalSum*
5000
CG-USER(18): (defvar *MySum*)
*MYSUM*
CG-USER(19): *MySum*
100
CG-USER(20): (defparameter *TotalSum*)
Error: MACRO DEFPARAMETER expects between 2 and 3 arguments.  It was given 1 argument: (*TOTALSUM*).
[condition type: PROGRAM-ERROR]
CG-USER(21): (setf *MySym* -1)
-1
CG-USER(22): *MySum*
100
CG-USER(23): *MySyn*
Error: Attempt to take the value of the unbound variable `*MYSYN*'.
[condition type: UNBOUND-VARIABLE]
CG-USER(24): *MySym*
-1
CG-USER(25): (random 5.0)
1.9101214
CG-USER(26): (random 1.0)
0.093025744
CG-USER(27): 
; Loading C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170328c.cl
CG-USER(27): (myaverage (3 7))
Error: Funcall of 3 which is a non-function.
[condition type: TYPE-ERROR]
CG-USER(28): (myaverage (3 7))
Error: Funcall of 3 which is a non-function.
[condition type: TYPE-ERROR]
CG-USER(29): (myaverage 10 20)
15.0
CG-USER(30): (myaverage 80 20)
50.0
CG-USER(31): (defun average (x y)
               (let ((sum (+ x y)))
                 (list x y 'average 'is (/ sum 2.0))))
AVERAGE
CG-USER(32): (average (2 3))
Error: Funcall of 2 which is a non-function.
[condition type: TYPE-ERROR]
CG-USER(33): (average 10 10)
(10 10 AVERAGE IS 10.0)
CG-USER(34): (format t "This is a comment")
This is a comment
NIL
CG-USER(35): 
; Loading C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170328c.cl

; Loading C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170328c.cl
CG-USER(35): (myaverage2 20 30)
 This is a comment.


NIL
CG-USER(36): 
; Loading C:\Users\kss34\Desktop\2017\대학교\2017년 1학기\강의자료\인공지능프로그래밍설계\Window Log\20170328c.cl
CG-USER(36): (myaverage2 10 20)
 This is a comment.


 The average of two inputs x and y is 15.0.
NIL
CG-USER(37): 