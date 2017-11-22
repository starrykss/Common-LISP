;;
;; Header
;;

;;
;; Variables and Constants
;;

;; (defvar)

;; (defparameter)

;; (defconstant)

;;
;; Functions
;;

;; Utilities

;; Main

(defun myaverage (x y)
  "returns the average of two inputs x and y"
  (let* ((sum (+ x y))
         (average (/ sum 2.0)))
    average))

;; * : sum�� ���� ����� �� average�� ����ϰ� �����.
;; Let �ڿ� *�� ���� ���, sum�� average�� ���ÿ� ���Ǿ ������ �߻��Ѵ�.

(defun myaverage2 (x y)
  "returns the average of two inputs x and y"
  (let* ((sum (+ x y))
         (average (/ sum 2.0)))
    (format t "~&~&~& This is a comment.~%~%~%")
    (format t "~& The average of two inputs x and y is ~S.~%" average)))

(defun myroses (x)
              "returns the color of the roses"
              (dolist (i x 'flowers)
                (format t "~&Colors are ~S.~%" i)))

(defun mycounting (n)
  "returns the number of steps"
  (dotimes (j n 'done)
    (format t "~&Counting...... ~S~%" j)))

(defun mycounting (n)
  "returns the number of steps"
  (dotimes (j n j)  ;; �������� n ���
    (format t "~&Counting...... ~S~%" j)))