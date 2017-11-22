;;
;; AI Programming Design
;; 2017.05.25
;; Author: KSS
;;

;;
;; Lisp Exercises #9
;;

;;
;; Problem 9-1
;;

(defun dot-prin1 (x)
  (cond ((atom x) (format t "~S" x))
        (t (format t "(")
           (dot-prin1 (car x))
           (format t " . ")
           (dot-prin1 (cdr x))
           (format t ")"))))

;;
;; Problem 9-2
;;

(defun hybrid-prin1 (x)
  (cond ((atom x) (format t "~S" x))
      (t (hybrid-print-car (car x))
         (hybrid-print-cdr (cdr x)))))

(defun hybrid-print-car (x)
  (format t "(")
  (hybrid-prin1 x))

(defun hybrid-print-cdr (x)
  (cond ((null x) (format t ")"))
        ((atom x) (format t " . ~S)" x))
        (t (format t " ")
           (hybrid-prin1 (car x))
           (hybrid-print-cdr (cdr x)))))


;;
;; Problem 9-3
;;

(defun cookie-monster ()
  (format t "~&Give me cookie!!!!~%")
  (format t "Cookie? ")
  (let ((response (read)))
    (cond ((equal response 'cookie)
           (format t "~&Thank you!")
           (format t "...Munch munch munch")
           (format t "... BURP"))
          (t (format t "~&No want ~S...~%~%" response)
             (cookie-monster)))))

;;
;; Problem 9-4
;;

(defun compute-pay ()
  (format t "~&What is the hourly wage? ")
  (let ((wage (read)))
    (format t "~&How many hours worked? ")
    (let ((hours (read)))
      (format t "~&The worker earned ~S dollars." (* wage hours)))))