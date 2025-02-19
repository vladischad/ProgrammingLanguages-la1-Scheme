;*******************************************************************************
; Program: super-duper.scm
; Function: takes atoms from source and iterates them count times
; Class: CS354-002
; Author: Vladyslav (Vlad) Maliutin
;*******************************************************************************

(define (duplicate-element elem count)
  (if (= count 0)
      '()
      (cons elem (duplicate-element elem (- count 1)))))

(define (super-duper source count)
  (cond
    ((not (list? source)) source)
    ((null? source) '())
    ((list? (car source)) 
     (cons (super-duper (car source) count) 
           (super-duper (cdr source) count)))
    (else 
     (append (duplicate-element (car source) count) 
             (super-duper (cdr source) count)))))

;; Test cases
(display (super-duper 123 1)) (newline)
(display (super-duper 123 2)) (newline)
(display (super-duper '() 1)) (newline)
(display (super-duper '() 2)) (newline)
(display (super-duper '(x) 1)) (newline)
(display (super-duper '(x) 2)) (newline)
(display (super-duper '(x y) 1)) (newline)
(display (super-duper '(x y) 2)) (newline)
(display (super-duper '((a b) y) 3)) (newline)