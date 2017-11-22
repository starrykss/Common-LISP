;;
;; Lisp Exercises #8 INPUT/OUTPUT
;;

(defun read-all-objects (stream &optional eof-indicator)
  (let ((result (read stream nil eof-indicator)))
    (if (eq result eof-indicator)   
        nil
      (cons result (read-all-objects stream)))))

;;
;; Problem 8-1
;;

(defun save-score (lst)
  (with-open-file (stream "Score.txt"
                          :direction :io 
                          :if-exists :append
                          :if-does-not-exist :create)
      (format stream "~&~S~%" lst)))


;;
;; Problem 8-2
;;

(defun load-score (name)
  (with-open-file (stream "Score.txt")
    (let ((contents (read-all-objects stream)))
      (assoc name contents))))
      
;;
;; Problem 8-3
;;

(defun avg-score ()
  (with-open-file (stream "Score.txt")
    (mapcar #'(lambda (x) (list (nth 0 x)
                                (/ (+ (nth 1 x)
                                (nth 2 x)
                                      (nth 3 x)) 3))) (read-all-objects stream))))

;;
;; Problem 8-4
;;

(defun sbj-avg-score ()
  (with-open-file (stream "Score.txt")
    (let ((con (read-all-objects stream)))
      (list (/ (reduce #'+ (mapcar #'(lambda (x) (nth 1 x)) con)) (length con))
            (/ (reduce #'+ (mapcar #'(lambda (x) (nth 2 x)) con)) (length con))
            (/ (reduce #'+ (mapcar #'(lambda (x) (nth 3 x)) con)) (length con))))))