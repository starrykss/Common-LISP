;;
;; AI Programming Design
;; 2017.03.16
;; Author: KSS
;;

;;
;; Lisp Exercises #1
;;

;; Example

(defun myfirst (lst)
  ""
  (first lst))

;;
;; Problem 1-1
;;

(defun func1 (x y) 
  (if (> x y) '(first_is_bigger_than_second) '(first_is_smaller_than_second)))

;;
;; Problem 1-2
;;

(defun func2 (x)
      (cond ((and (oddp x) (> x 0)) (expt x 2)) 
            ((and (oddp x) (< x 0)) (+ x x))
            (t (/ x 2))))

