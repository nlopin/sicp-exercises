#lang racket

; find smallest divisor using linear algorithm
(define (smallest-divisor n) (smallest-divisor-iter n 2))

(define (smallest-divisor-iter n d)
  ; it make sense to test values till square root of n
  (cond [(> (square d) n) n]
    [(divides? d n) d]
    [else (smallest-divisor-iter n (+ 1 d))]))

(define (square x) (* x x))

(define (divides? d n) (= 0 (remainder n d)))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)