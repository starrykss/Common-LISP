;;
;; AI Programming Design
;; 2017.03.23
;; Author: KSS
;;

;;
;; Lisp Exercises #2
;;

;;
;; Problem 2-1
;;

(defun func1 (x y) 
  "Function 4x+2y^3"
  "This function takes two numbers, otherwise, returns error message."
  (if (and (numberp x) (numberp y)) 
    (list 'CALCULATED 'VALUE '= (+ (* 4 x) (* 2 (* y (* y y))))) 
    (list 'YOUR 'INPUTS 'ARE 'NOT 'NUMBERS))) 

;;
;; Problem 2-2
;;

(defun play (x y)
  "Rock-Scissors-Paper game." 
  "In this game, each player picks one of Rock, Scissors, or Paper, and then both players tell what they picked."
  "If both players pick the same thing, it¡¯s a tie. "
  "This function takes two inputs, each of which is either ROCK, SCISSORS, or PAPER, and returns one of the symbols FIRST-WINS, SECOND-WINS, or TIE."
  (cond ((and (equal x 'ROCK) (equal y 'ROCK)) 'TIE)
        ((and (equal x 'SCISSORS) (equal y 'SCISSORS)) 'TIE)
        ((and (equal x 'PAPER) (equal y 'PAPER)) 'TIE)
	((and (equal x 'ROCK) (equal y 'SCISSORS)) 'FIRST-WINS)
        ((and (equal x 'SCISSORS) (equal y 'PAPER)) 'FIRST_WINS)
        ((and (equal x 'PAPER) (equal y 'ROCK)) 'FIRST-WINS)
        ((and (equal x 'ROCK) (equal y 'PAPER)) 'SECOND-WINS)
        ((and (equal x 'SCISSORS) (equal y 'ROCK)) 'SECOND-WINS)
        ((and (equal x 'PAPER) (equal y 'SCISSORS)) 'SECOND-WINS)
        ( t (list 'PLEASE 'INPUT 'ONE 'AMONG '"ROCK" '"SCISSORS" 'and '"PAPER"))))     ;; I added this part.

;;
;; Problem 2-3
;;

(defun picky-multiply (x y) 
  "This function requires that its first input be even and its second input be odd."
  "If an input is of the wrong sort, the function can fix it by adding one."
  (unless (evenp x) (incf x))
  (unless (oddp y) (incf y))
  (when (evenp x) (oddp y))
  (* x y))

;;
;; Problem 2-4
;;

(defun throw-die
    "This function returns a random number from 1 to 6, inclusive."
  (+ (random 6) 1))  ;; (Random n) reutrns one number from 0 to n-1.

(defun throw-dice
    "This function returns a list of two numbers: the value of the first die and the value of the second"
  (list (throw-die) (throw-die))) ;; (list (+ (random 6) 1) (+ (random 6) 1))) is also possible.