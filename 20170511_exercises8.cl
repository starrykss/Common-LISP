;;
;; AI Programming Design
;; 2017.05.11
;; Author: KSS
;;

;;
;; Lisp Exercises #8
;;

;;
;; Problem 8-1
;;

(defun my-append (a b)
  (cond ((null a) nil)
        ((null b) nil)
        (t (union (reverse a) b))))

(defun my-append2 (a b)
  (cond ((null a) b)
        (t (cons (first a) (my-append2 (rest a) b)))))

;;
;; Problem 8-2
;;

(defun interleave (x y)
  (cond ((null x) '())
        ((null y) x)
        (t (append (list (first x) (first y)) (interleave (rest x) (rest y))))))

;;
;; Problem 8-3
;;

(defun my-draw-line (x) 
  (cond ((zerop x) (format t "~%"))
        (t (format t "*")
           (my-draw-line (- x 1)))))

(defun my-draw-box (a b)
  (cond ((zerop b) nil)
        (t (my-draw-line a)
           (my-draw-box a (- b 1)))))

;;
;; Problem 8-4
;;



;;
;; Problem 8-5
;;

(defun my-intersection (a b)
  (remove-if-not #'(lambda (e) (member e b)) a))