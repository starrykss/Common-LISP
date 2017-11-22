;; INPUT/OUTPUT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; WITH-OPEN-FILE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Opening file for output ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun get-tree-data ()
  (with-open-file (stream "timber.txt")
    (let* ((tree-loc (read stream))
           (tree-table (read stream))
           (num-trees (read stream)))
      (format t "~&There are ~S trees on ~S." num-trees tree-loc)
      (format t "~&They are: ~S" tree-table))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; WITH-OPEN-FILE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Opening file for output ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun save-tree-data (tree-loc tree-table num-trees)
  (with-open-file (stream "timber.txt" 
                          :direction :io 
                          :if-exists :overwrite
                          :if-does-not-exist :create)
    (format stream "~&~S~%" tree-loc)
    (format stream "~&~S~%" tree-table)
    (format stream "~&~S~%" num-trees)))

;; The text file is made in this location : C:\acl100express (Initial Location)
;; > (save-tree-data "The West Ridge"
;;                   '((45 redwood) (22 oak) (43 maple)) 
;;                   110) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Change the location to save the file? 
(defun save-tree-data2 (tree-loc tree-table num-trees)
  (with-open-file (stream "c:/temp/timber.txt"      ;; You should use '/' instead of '\'. (UNIX System)
                          :direction :io 
                          :if-exists :overwrite
                          :if-does-not-exist :create)
    (format stream "~&~S~%" tree-loc)
    (format stream "~&~S~%" tree-table)
    (format stream "~&~S~%" num-trees)))

;; > (save-tree-data2 "The West Ridge"
;;                    '((45 redwood) (22 oak) (43 maple))
;;                    110)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Handling End Of File ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun read-my-file()
  (with-open-file (stream "sample.txt")
    (let ((contents (read-all-objects stream)))
      (format t "~&Read ~3D objects from the file."
        (length contents))
      (contents))))

(defun read-all-objects (stream &optional eof-indicator)
  (let ((result (read stream nil eof-indicator)))
    (if (eq result eof-indicator)   ;; same address?
        nil
      (cons result (read-all-objects stream)))))
