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

;; * : sum을 먼저 계산한 후 average를 계산하게 만든다.
;; Let 뒤에 *이 없을 경우, sum과 average가 동시에 계산되어서 오류가 발생한다.

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
  (dotimes (j n j)  ;; 마지막에 n 출력
    (format t "~&Counting...... ~S~%" j)))