;; Recursion

(defun anyoddp (x)
  (cond ((null x) nil)
        ((oddp (first x)) t)
        (t (anyoddp (rest x)))))

(defun fact (n)
  (cond ((zerop n) 1)
        (t (* n (fact (- n 1))))))

(defun count-slices (loaf)
  (cons ((null loaf) 0)
        (t (+ 1 (count-slices (rest loaf))))))

;; Double-Test Tail Recursion

(defun func (x)
  (cond (end-test-1 end-value-1)
        (end-test-2 end-value-2)
        (t (func reduced-x))))

(defun anyoddp (x)
  (cond ((null x) nil)
        ((oddp (first x) t)
         (t (anyoddp (rest x))))))

;; Single-Test Tail Recursion
(double func (x)
        (cond (end-test end-value)
              (t (func reduced-x))))

(defun find-first-atom (x)
  (cond ((atom x) x)
        (t (find-first-atom (first x)))))

;; Augmenting Recursion : building up results bit-by-bit

(defun func (x)
  (cond (end-test end-value)
        (t (aug-func aug-vval (func reduced-x)))))

(defun count-slices (loaf)
  (cond ((null loaf) 0)
        ;; augmentation
        (t (+ 1 (count-slices (rest loaf))))))

;; List-consing Recursion : augmentation function - cons

(defun func (n)
  (cond (end-test nil)
        (t (cons new-element (func reduced-n)))))

(defun laugh (n)
  (cond ((zerop n) nil)
        ;; augmentation
        (t (cons 'ha (laugh (- n 1))))))

;; Simultaneous Recursion on Several Variables
(defun func (n x)
  (cond (end-test end-value)
        (t (func reduced-n reduced-x))))

(defun my-nth (n x)
  (cond ((zerop n) (first x))
        (t (my-nth (-n 1) (rest x)))))

;; Conditional Augmentation
(defun func (x)
  (cond (end-test end-value)
        (aug-test (aug-fun aug-val (func reduced-x))
                  (t (func reduced-x)))))

(defun extract-symbols (x)
  (cond ((null x) nil)
        ((symbolp (first x)) (cons (first x) (extract-symbols (rest x))))
        (t (extract-symbols (rest x)))))

;; Multiple Recursion
(defun func (n)
  (cond (end-test-1 end-value-1)
        (end-test-2 end-value-2)
        (t (combiner (func first-reduced-n) (func second-reduced-n)))))

(defun fib (n)
  (cond ((equal n 0) 1)
        ((eqaul n 1) 1)
        (t (+ (fib (- n 1)) (fib (- n 2))))))

;; CAR/CDR Recursion
(defun func (x)
  (cond (end-test-1 end-value-1)
        (end-test-2 end-value-2)
        (t (combiner (func (car x) (func (cdr x)))))))

(defun find-number (x)
  "find any first number in an irregularly shaped list"
  (cond ((numberp x) x)
        ((atom x) nil)
        (t (or (find-number (car x)) (find-number (cdr x))))))

;; Recursive Data Strcutures
(defun my-mapcar (fn x)
  (cond ((null x) nil)
        (t (cons (funcall fn (first x)) (my-mapcar fn (rest x))))))

(defun find-number (x)
  "find any first number in an irregulary shaped list"
  (cond ((numberp x) x)
        ((atom x) nil)
        (t (or (find-number (car x) (find-numer (cdr x)))))))