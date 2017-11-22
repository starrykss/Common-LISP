;;
;; Case Study: Tic-Tac-Toe
;;
;; Author : Sangsoon Kim
;; Date : May 30, 2017
;;

;; Defining global varaibles and constants

(defconstant One 1)       ;; human
(defconstant TheOther 10) ;; computer

(defvar *Opponent* One)
(defvar *Computer* TheOther)

(defvar *Triplets*
    '((1 2 3) (4 5 6) (7 8 9)       ;; Horizontal Line
      (1 4 7) (2 5 8) (3 6 9)       ;; Vertical Line
      (1 5 9) (3 5 7)))             ;; Diagonal Line

(defvar *Corners* (1 3 7 9))
(defvar *Sides* '(2 4 6 8))

;; Main

;; Initialization: Creating a board

(defun makeBoard ()
  (list 'Board 0 0 0 0 0 0 0 0 0))

(defun convert-to-letter (v)
  (cond ((equal v One) "O")
        ((equal v TheOther) "X")
        (t " ")))

(defun print-row (x y z)
  (format t "~& ~A ¦¢ ~A ¦¢ ~A"
    (convert-to-letter x)
    (convert-to-letter y)
    (convert-to-letter z)))

(defun printBoard (board)
  (format t "~%")
  (print-row (nth 1 board) (nth 2 board) (nth 3 board))
  (format t "~& ------------")
  (print-row (nth 4 board) (nth 5 board) (nth 6 board))
  (format t "~& ------------")
  (print-row (nth 7 board) (nth 8 board) (nth 9 board))
  (format t "~%~%"))

(defun makeMove (Player Pos Board)
  (setf (nth Pos Board) Player) Board)

(defun sumTriplet (Board Triplet)
  (+ (nth (first Triplet) Board)
     (nth (second Triplet) Board)
     (nth (third Triplet) Board)))

(defun computeSums (Board)
  (mapcar #'(lambda (Triplet) 
              (sumTriplet Board Triplet))
    *Triplets*))

(defun winnerP (Board)
  (let ((Sums (computeSums Board)))
    (or (member (* 3 *Computer*) Sums)
        (member (* 3 *Opponent*) Sums))))

(defun playOneGame ()
  (if (y-or-n-p "Do you like to go first? ")
      (opponentMove (makeBoard))
    (computerMove (makeBoard))))

(defun opponentMove (Board)
  (let* ((Pos (readALegalMove Board))
         (NewBoard (makeMove *Opponent* Pos Board)))
    (printBoard NewBoard)
    (cond ((winnerP NewBoard) 'YouWin)
          ((boardFullP NewBoard) 'TieGame)
          (t (computerMove NewBoard)))))

(defun readALegalMove (Board)
  (format t "~& Your move: ")
  (let ((Pos (read)))
    (cond ((not (and (integerp Pos)))
           (format t "~& Invalid input.")
           (readALegalMove Board))
          ((not (zerop (nth Pos Board)))
           (format t "~& Already occupied.")
           (readALegalMove Board))
          (t Pos))))

(defun boardFullP (Board)
  (not (member 0 Board)))

(defun computerMove (Board)
  (let* ((BestMove (chooseBestMove Board))
         (Pos (first BestMove))
         (Strategy (second BestMove))
         (NewBoard (makeMove *Computer* Pos Board)))
    (format t "~&My move: ~S" Pos)
    (format t "~&My strategy: ~A~%" Strategy)
    (printBoard NewBoard)
    (cond ((winnerP NewBoard) 'IWin)
          ((boardFullP NewBoard) 'TieGame)
          (t (opponentMove NewBoard)))))

(defun chooseBestMove (Board)
  "1st version"
  (randomMoveStrategy Board))

(defun randomMoveStrategy (Board)
  (list (pickRandomEmptyPosition Board) "Random Move"))

(defun pickRandomEmptyPosition (Board)
  (let ((Pos (+ 1 (random 9))))
    (if (zerop (nth Pos Board)) Pos (pickRandomEmptyPosition Board))))

(defun makeThree (Board)
  (let ((Pos (winOrBlock Board (* 2 *Computer*)))) ;; 2 * 10
    (and Pos (list Pos "make three in a row"))))

(defun blockOpponentWin (Board)
  (let ((Pos (winOrBlock Board (* 2 *Opponent*)))) ;; 2 * 1
    (and Pos (list Pos "block the opponent"))))

(defun winOrBlock (Board TargetSum)
  (let ((Triplet                              ;; Triplet ? a specific triplet, e.g., (1 2 3)
         (find-if #'(lambda (Tri) 
                      (equal (sumTriplet Board Tri) TargetSum)) *Triplets*)))
    (when Triplet (findEmptyPosition Board Triplet))))

(defun findEmptyPosition (Board Cells)        ;; Cells in a triplet, (1 2 3)
  (find-if #'(lambda (Pos) (zerop (nth Pos Board))) Cells))

(defun chooseBestMove (Board)
  "2nd version"
  (or (makeThree Board)
      (blockOpponentWin Board)
      (randomMoveStrategy Board)))

;;
;; Smarter Program
;;

(defun take-center (Board)
  "Taking 5th position on the board"
  (when (and (zerop (nth 5 Board)))
    (or (equal 1 (apply #'+ (cdr Board)))
        (equal 0 (apply #'+ (cdr Board))))
    (let ((Pos 5))
      (and Pos (list Pos "taking 5th position")))))


(defun block-opponent-win (board)
  (let ((Pos (winOrBlock Board (* 2 *Opponent*)))) ;; 2 * 1
    (and Pos (list Pos "block the opponent"))))


(defun block-squeeze-play (board)
  (when (and (or
              (= 12 (sum triplet Board '(1 5 9)))
              (= 12 (sum triplet Board '(3 5 7)))
              (equal (nth 5 Board) *Computer*)))
    (list (find empty position Board *Sides*) "block squeeze")))


(defun block-two-on-one (board)
  (when (and (or
              (= 12 (sum triplet Board '(1 5 9)))
              (= 12 (sum triplet Board '(3 5 7)))
              (equal (nth 5 Board) *Opponent*)))
    (list (find empty position Board *Corners*) "block 2on1")))


(defun random-move-strategy (board)
  (list (pickRandomEmptyPosition Board) "Random Move"))


(defun choose-best-move3 (Board)
  "3rd version"
  (or (take-center Board)
      (make-three Board)
      (block-opponent-win Board)
      (block-squeeze-play Board)
      (block-two-on-one Board)
      (random-move-strategy Board)))



;(defun block-squeeze-play (board)
;  (sq-and-2 board *computer* *sides* 12 "block squeeze play"))
;
;(defun block-two-on-one (board)
;  (sq-and-2 board *opponent* *corners* 12 "block two-on-one"))
;
;(defun try-squeeze-play (board)
;  (sq-and-2 board *opponent* nil 11 "set up a squeeze play"))
;
;(defun try-two-on-one (board)
;  (sq-and-2 board *computer* nil 11 "set up a two-on-one"))
;
;(defun sq-and-2 (board player pool v strategy)
;  (when (equal (nth 5 board) player)
;    (or (sq-helper board 1 9 v strategy pool)
;        (sq-helper board 3 7 v strategy pool))))
;
;(defun sq-helper (board c1 c2 val strategy pool)
;  (when (equal val (sum-triplet board (list c1 5 c2)))
;    (let ((pos (find-empty-position board (or pool (list c1 c2)))))
;      (and pos (list pos strategy)))))
;
;(defun exploit-two-on-one (board)
;  (when (equal (nth 5 board) *computer*)
;    (or (exploit-two board 1 2 4 3 7)
;        (exploit-two board 3 2 6 1 9)
;        (exploit-two board 7 4 8 1 9)
;        (exploit-two board 9 6 8 3 7))))
;
;(defun exploit-two (board pos d1 d2 c1 c2)
;  (and (equal (sum-triplet board (list c1 5 c2)) 21) 
;       (zerop (nth pos board))
;       (zerop (nth d1 board))
;       (zerop (nth d2 board))
;       (list pos "exploit two-on-one")))
;
;(defun choose-best-move (board)
;  (or (make-three-in-a-row board)
;      (block-opponent-win board)
;      (block-squeeze-play board)
;      (block-two-on-one board)
;      (exploit-two-on-one board)
;      (try-squeeze-play board)
;      (try-two-on-one board)
;      (random-move-strategy board)))