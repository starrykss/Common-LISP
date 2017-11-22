;;
;; AI Programming Design
;; 2017.04.27
;; Author: KSS
;;

;;
;; Lisp Exercises #6
;;


(defvar *ROOMS* '((front-stairs (north-upstairs-bedroom) (south living-room))
                  (back-stairs (north library) (south downstairs-bedroom) (east living-room))
                  (library (east upstairs-bedroom) (south back-stairs))
                  (upstairs-bedroom (west library) (south front-stairs))
                  (living-room (north front-stairs) (west back-stairs) (east kitchen) (south dining-room))
                  (kitchen (west living-room) (south pantry))
                  (dining-room (north living-room) (west downstairs-bedroom) (east pantry))
                  (downstairs-bedroom (north back-stairs) (east dining-room))
                  (pantry (north kitchen) (west dining-room))))

;;
;; Problem 6-1
;;

(defun choices (room)
  (assoc room *rooms*))

;;
;; Problem 6-2
;;

(defun look (direction room)
  (second (assoc direction (cdr (choices room)))))
(setf loc 'pantry)

;;
;; Problem 6-3
;;

(defun upstairsp (x)
  (or (equal x 'library) (equal x 'upstairs-bedroom)))


;;
;; Problem 6-4
;;

(defun onstairsp (x)
  (or (equal x 'back-stairs) (equal x 'front-stairs)))

;;
;; Problem 6-5
;;

(defun where ()
  (if (onstairsp loc) 
      (list 'robbie 'is 'on 'the loc) 
    (list 'robbie 'is (if (upstairsp loc) 'upstairs 'downstairs) 'in 'the loc)))

;;
;; Problem 6-6
;;

(defun set-location (place) 
  (setf loc place))

(defun move (direction)
  (let ((nloc (look direction loc)))
    (cond ((null nloc) '(Robbie can't go to the side.))
          (t (set-location nloc) (where)))))

;;
;; Problem 6-7
;;

(defun royal-we (list)
  (subst 'we 'i list))

;;
;; Problem 6-8
;;

(defun swap-first-last (x)
  (let* ((a (reverse (rest x)))
         (b (reverse (rest a))))
    (cons (first a) (append b (list (first x))))))