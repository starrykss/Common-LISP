;;
;; AI Programming Design
;; 2017.03.30
;; Author: KSS
;;

;;
;; Lisp Exercises #3
;;

;;
;; Problem 3-1
;;

;; Solution 1-1)
;; (defun find-largest (list-of-numbers)
;;  (do* ((largest (first list-of-numbers))
;;        (z (rest list-of-numbers) (rest z)
;;           (element (first z) (first z)))
;;        ((null z) largest)
;;        (when (> element largest)
;;          (setf largest elemenet)))))

;; Solution 1-2)
(defun find-largest (list-of-numbers)
  (let ((largest (first list-of-numbers)))
    (dolist (element (rest list-of-numbers) largest)
      (when (> element largest)
        (setf largest element)))))

;; Solution 2-1)
(defun find-smallest (list-of-numbers)
  (let ((smallest (first list-of-numbers)))
    (dolist (element (rest list-of-numbers) smallest)
      (when (< element smallest)
        (setf smallest element)))))

;;
;; Problem 3-2
;;

(defun size-range (list-of-numbers)
  "This function returns the size of range."
  (let ((smallest (find-smallest list-of-numbers))
        (largest  (find-largest  list-of-numbers)))
    (list 'THE 'SIZE 'OF 'RANGE 'IS (- largest smallest))))  

;;
;; Problem 3-3
;;

(defun My-ADDER (n) 
  "This function adds up from zero to the input number"
  (let ((sum 0))
    (dotimes (i (+ n 1) sum) (setf sum (+ sum i)))))

;;
;; Problem 3-4 (EXTRA)
;;

(defun find-all-odd (list-of-numbers)
  "This function returns odds in a list."
  (let ((result nil))
    (dolist (e list-of-numbers result)
      (when (oddp e) 
        (push e result)))
    (reverse result)))
  

;;
;; Problem 3-5 (EXTRA)
;;

(defun it-nth (n x)
  "This function returns an element which you want to find."
  (dotimes (i n (first x))
    (pop x)))

(defun check-all-odd (x)
  (cond ((null x) t)
        (unless (evenp (first x))
          (check-all-odd (rest x)))))
  