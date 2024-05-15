#lang racket

; iterative exponentiation process that uses successive squaring

(define (exp x n)
  (exp-iter x n 1)
)

(define (exp-iter x n acc)
  (cond
    [(= n 0) acc]
    [(odd? n) (exp-iter x (- n 1) (* acc x))]
    [else (exp-iter (square x) (/ n 2) acc)]
))

(define (square x) (* x x))

(exp 2 6)
(exp 3 3)
(exp 2 0)