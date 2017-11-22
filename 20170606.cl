;; Destructive Operations 

;; CG-USER(28): (setf x nil)
;; NIL
;; CG-USER(29): (nconc x y)
;; (D E F)
;; CG-USER(30): x
;; NIL
;; CG-USER(31): y
;; (D E F)
;; CG-USER(32): (setf X (nconc X Y))
;; (D E F)
;; CG-USER(33): y
;; (D E F)
;; CG-USER(34): x
;; (D E F)

;; CG-USER(14): (setf x '(a b c))
;; (A B C)
;; CG-USER(15): (setf y '(d e f))
;; (D E F)
;; CG-USER(16): (setf z (append x y))
;; (A B C D E F)
;; CG-USER(17): z
;; (A B C D E F)
;; CG-USER(18): (nconc x y)
;; (A B C D E F)
;; CG-USER(19): x
;; (A B C D E F)
;; CG-USER(20): y
;; (D E F)

;; CG-USER(41): (setf Tree '(I say (e l (e l) o)))
;; (I SAY (E L (E L) O))
;; CG-USER(42): (nsubst 'a 'e Tree)
;; (I SAY (A L (A L) O))
;; CG-USER(43): Tree
;; (I SAY (A L (A L) O))


(defvar *Things* '((object1 large green shiny cube)
                   (object2 small red dull metal cube)))

(defun rename (Obj NewName)
  (setf (car (assoc Obj *Things*)) NewName))

(defun addProperty (Obj Property)
  (nconc (assoc Obj *Things*) (list Property)))



;; CG-USER(55): (addProperty 'object1 'triangle)
;; (OBJECT1 LARGE GREEN SHINY CUBE TRIANGLE)
;; CG-USER(56): (rename 'object1 'A)
;; A
;; CG-USER(57): (addProperty 'A 'purple)
;; (A LARGE GREEN SHINY CUBE TRIANGLE PURPLE)
;; CG-USER(58): (rename 'object2 'B)
;; B
;; CG-USER(59): (addProperty 'B 'Octagon)
;; (B SMALL RED DULL METAL CUBE OCTAGON)
;; CG-USER(60): *Things*
;; ((A LARGE GREEN SHINY CUBE TRIANGLE PURPLE) (B SMALL RED DULL METAL CUBE OCTAGON))

;; Structures

(defstruct starship 
               (captain nil)
               (name nil)
               (speed 0)
               (condition 'green)
               (shields 'down))

(defun alert (x) ;; causing a starship to raise shields
               (setf (starship-shields x) 'up)
               (if (equal (starship-condition x) 'green)
                   (setf (starship-condition x) 'yellow))
               'shields-raised)

;; CG-USER(73): (setf s1 (make-starship))
;; #S(STARSHIP :CAPTAIN NIL :NAME NIL :SPEED 0 :CONDITION GREEN :SHIELDS DOWN)
;; CG-USER(74): (setf s2 '#s(starship speed (warp 3) condition red shields up))
;; #S(STARSHIP :CAPTAIN NIL :NAME NIL :SPEED (WARP 3) :CONDITION RED :SHIELDS UP)
;; CG-USER(75): (type-of s2)
;; STARSHIP
;; CG-USER(76): (starship-p s2)
;; T
;; CG-USER(77): (starship-speed s2)
;; (WARP 3)
;; CG-USER(82): (setf (starship-name s1) "Enterprise")
;; "Enterprise"
;; CG-USER(83): s1
;; #S(STARSHIP :CAPTAIN NIL :NAME "Enterprise" :SPEED 0 :CONDITION GREEN :SHIELDS DOWN)
;; CG-USER(86): (alert s1)
;; SHIELDS-RAISED
;; CG-USER(87): s1
;; #S(STARSHIP :CAPTAIN NIL :NAME "Enterprise" :SPEED 0 :CONDITION YELLOW :SHIELDS UP)
;; CG-USER(88): s2
;; #S(STARSHIP :CAPTAIN NIL :NAME NIL :SPEED (WARP 3) :CONDITION RED :SHIELDS UP)
;; CG-USER(95): (setf s3 (make-starship :name "Reliant" :shields 'damaged))
;; #S(STARSHIP :CAPTAIN NIL :NAME "Reliant" :SPEED 0 :CONDITION GREEN :SHIELDS DAMAGED)
;; CG-USER(96): (setf s3 (make-starship :captain "Benson" :name "Reliant" :shields 'damaged))
;; #S(STARSHIP :CAPTAIN "Benson" :NAME "Reliant" :SPEED 0 :CONDITION GREEN :SHIELDS DAMAGED)
;; CG-USER(98): (setf s5 (make-starship))
;; #S(STARSHIP :CAPTAIN NIL :NAME NIL :SPEED 0 :CONDITION GREEN :SHIELDS DOWN)
;; CG-USER(100): (setf s6 (make-starship))
;; #S(STARSHIP :CAPTAIN NIL :NAME NIL :SPEED 0 :CONDITION GREEN :SHIELDS DOWN)
;; CG-USER(101): (equal s5 s6)
;; NIL
;; CG-USER(102): (equalp s5 s6)
;; T

(defstruct ship
  (name nil)
  (captain nil)
  (crew-size nil))

(defstruct (starship (:include ship))
  (weapons nil)
  (shields nil))

(defstruct (supplyship (:include ship))
  (cargo nil))



