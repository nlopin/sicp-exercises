#lang racket

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
              (A x (- y 1))))))

(A 1 10); 2^y
(A 2 4); x^2^y
(A 3 3)