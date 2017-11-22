;;
;; AI Programming Design
;; 2017.04.13
;; Author: KSS
;;

;;
;; Lisp Exercises #5
;;

;;
;; Problem 5-1
;;

(defun my-butlast (x)
  "returns a list with the last element removed."
  (reverse (rest (reverse x))))

(defun my-butlast2 (x)
  "returns a list with the last element removed."
  (do* ((a (reverse x))
        (b (cdr a)))
       ((null x) nil)
    (return (reverse b))))

;;
;; Problem 5-2
;;

(defun my-complement-set (list1 list2)
  "returns a complement set of intersection of two input sets."
  (let ((a (reverse (set-difference list1 list2)))
        (b (reverse (set-difference list2 list1))))
    (setf c (append a b))))
  
(defun my-set (list1 list2)
  "returns a complement set of intersection of two input sets."
  (let ((a (set-difference list2 list1))
        (b (reverse (set-difference list1 list2))))
    (setf c (append a b))))

;;
;; Problem 5-3
;;

(defun set-equal (list1 list2)
  "returns T if two sets are equal."
  (and (subsetp list1 list2)
       (subsetp list2 list1)))

;;
;; Problem 5-4
;;

(defvar *books* '((War-and-peace Leo-Tolstoy) 
                  (Oliver-twist Charles-dickens)
                  (Tom-sawyer Mark-twain)
                  (Kidnapped Robert-louis-Stevenson)
                  (candide voltaire)))

(defun who-wrote (title *books*) ;;*
  "takes the name of a book as input and returns the book's author."
    (rest (assoc title *books*)))

  

