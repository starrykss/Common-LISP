;; 
;; code header
;; Lab. #1
;; Author : Sanguk Noh
;; Date: 2017, 3, 14
;; Description : This is a first lab, Lisp
;; 한글도 가능
;; 

;; This part's for the absolute value
(defun MyAbs (x)
  "함수는 절대값을 계산한다."
  (if (< x 0) (- x) x))

(defun MyOddp (x)
  "This function returns True when the input number is odd."
  (if (oddp x) 'True 'False))

(defun CompareNums (x y)
  "This function compares two input numbers then returns the result."
  (cond ((= x y) "two numvers are euqal.")
        ((< x y) "first numver is smaller than second number.")
        (t "first number is bigger than the second.")))

(defun compute (op x y) 
  (cond ((equal op 'sum-of) (+ x y))
        ((equal op 'product-of) (* x y))
        (t 'unknown)))

(defun picky-multiply (x y) 
  (unless (oddp x) (incf x))
  (when (oddp y) (decf y))
  (* x y))
