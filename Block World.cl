;;
;; Block's World
;; Date : June 8, 2017
;; Author : Sangsoon Kim
;;

(defstruct blocks (name nil) (color nil) (ison 'table) (isunder nil))

(defvar *blocks*)

;;
;; Main
;;

(defun start-world () (setf *blocks* nil))

(defun new-block (name color)
  (push (make-blocks :name name :color color) *blocks*))

(defun get-block (name)
  (dolist (x *blocks* nil)
    (if (equal name (blocks-name x)) (return x))))

(defun clear-top? (name)
  (if (get-block name)
      (if (blocks-isunder (get-block name))
          (format t "~&Block ~S supports something." name) 'T)
    (format t "~&Unknown block named: ~S" name)))

(defun lift-off (name)
  (if (clear-top? name)
      (if (equal (blocks-ison (get-block name)) 'table) 'T 
        (progn
          (setf (blocks-isunder (get-block (blocks-ison (get-block name)))) nil)
          (setf (blocks-ison (get-block name)) 'table) 'T)) nil))

(defun put-on (on-name under-name)
  (if (and (clear-top? on-name) (clear-top? under-name))
      (if (equal (blocks-ison (get-block on-name)) 'table)
          (progn (setf (blocks-ison (get-block on-name)) under-name)
            (setf (blocks-isunder (get-block under-name)) on-name) 'T)
        (progn (setf (blocks-isunder (get-block (blocks-ison (get-block on-name)))) nil)
          (setf (blocks-ison (get-block on-name)) under-name)
          (setf (blocks-isunder (get-block under-name)) on-name) 'T))))

(defun print-world ()
  (dolist (x *blocks*)
    (format t "~&Block ~S(~S) is on ~a and supports ~a." 
      (blocks-name x) (blocks-color x)
      (if (equal (blocks-ison x) 'table) "the table" (blocks-ison x))
      (if (equal (blocks-isunder x) nil) "nothing" (blocks-isunder x)))))