;;
;; AI Programming Design
;; 2017.04.06
;; Author: KSS
;;

;;
;; Lisp Exercises #4
;;

;;
;; Problem 4-1
;;

(defun fib (n) 
  "Fibonacci Sequence of a number."
  (do* ((cnt 0 (+ cnt 1))
        (i 1 j)
        (j 1 k)
        (k 2 (+ i j)))
       ((equal cnt n) i)))

;;
;; Problem 4-2
;;

(defun count-slices (loaf)
  "This function finds how many elements a list contains."
  (do ((cnt 0 (+ cnt 1))
       (z loaf (rest z)))
      ((null z) cnt)))

;;
;; Problem 4-3
;;

(defun find-largest (list-of-numbers)
  "This function finds the largest number of a group of numbers."
  (let ((largest (first list-of-numbers)))
    (dolist (element (rest list-of-numbers) largest)
      (when (> element largest)
        (setf largest element)))))

;;
;; Problem 4-4
;;

(defun first-non-integer (x)
  "This function returns the first non-integer element of X."
  "If there is no non-integer element, then the function returns NIL."
  (do* ((z x (rest z))
        (z1 (first z) (first z)))
       ((null z) 'none)
    (unless (integerp z1)
      (return z1))))