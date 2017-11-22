;;
;; AI Programming Design
;; 2017.05.04
;; Author: KSS
;;

;;
;; Lisp Exercises #7
;;

;;
;; Problem 7-1
;;

(defun total-length (a)
  (length (reduce #'append a)))

;;
;; Problem 7-2
;;

;;(defun flipe (e)
;;  (if (equal e 'up) 'down 'up))
;;
;;(defun flip (x)
;;  (mapcar #'flipe x))

(defun flip (x)
  (mapcar #'(lambda (e) (if (equal e 'up) 'down 'up)) x))

;;
;; Problem 7-3
;;

(defun my-member (a b)
  (cond ((null b) nil)
        ((equal a (first b)) b)
        (t (my-member a (rest b)))))

;;
;; Problem 7-4
;;

(defun merge-lists (a b)
  (cond ((null a) b)
        ((null b) a)
        ((< (first a) (first b)) (cons (first a) (merge-lists (rest a) b)))
        (t (cons (first b) (merge-lists a (rest b))))))

;;
;; Problem 7-5
;;

(defun my-append (a b)
  (cond ((null a) nil)
        ((null b) nil)
        (t (union (reverse a) b))))