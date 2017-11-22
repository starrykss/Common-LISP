(defun beforep (x y l)
  "returns true if X appears before Y in L"
  (member y (member x l)))

(defvar *male-names* '(john kim richard fred george))
(defvar *female-names* '(jane mary wanda barbara kim))

(defun gender-ambiguous-names ()
  (intersection *male-names* *female-names*))
(defun uniquely-male-names ()
  (set-difference *male-names* *female-names*))
(defun uniquely-female-names () 
  (set-difference *female-names* *male-names*))

(defun malep (x)
  (member x *male-names*))

(defun femalep (x)
  (member x *female-names*))

; (remove-duplicates '(a a a a a a b c c c d d ))
; => (A B C D)

;CG-USER(34): (set-exclusive-or '(a b c) '(d e f))
;=> (F E D C B A)
;CG-USER(35): (set-exclusive-or '(a b c) '(a d e))
;=> (E D C B)

(defparameter *Things*
  '((object1 large green shiny cube)
    (object2 large red dull pyramid)
    (object3 small blue shiny star)))

(defvar *Quality-Table*
    '((large . size) (small . size)
      (red . color) (green . color) (blue . color)
      (shiny . luster) (dull . luster)
      (cube . shape) (pyramid . shape) (star . shape)))

(defun description (x)
  (rest (assoc x *Things*)))

(defun differences (x y)
  (set-exclusive-or (description x) (description y)))

(defun contrast (x y)
  (remove-duplicates   ;; remove duplicate entries
   (sublis *Quality-Table* (differences x y))))

; (setq tpl:*print-length* nil) 
;; 리스트 크기 제한 없이 보여줌.

