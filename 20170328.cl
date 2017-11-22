
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
CG-USER(15): (myroses '(red white black blue))
Colors are RED.
Colors are WHITE.
Colors are BLACK.
Colors are BLUE.
FLOWERS
CG-USER(16): (mycounting 5)
Counting...... 0
Counting...... 1
Counting...... 2
Counting...... 3
Counting...... 4
DONE
CG-USER(17): (mycounting 5)
Counting...... 0
Counting...... 1
Counting...... 2
Counting...... 3
Counting...... 4
5

