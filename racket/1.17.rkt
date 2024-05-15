#lang racket

(define (fast-mult a b)
  (cond
    [(or (= b 0) (= a 0)) 0]
    [(= b 1) a]
    [(odd? b) (+ a (fast-mult a (- b 1)))]
    [else (fast-mult (double a) (halve b))]))

(define (halve a) (/ a 2))

(define (double a) (* 2 a))

(fast-mult 4 0)
(fast-mult 4 1)
(fast-mult 4 4)
(fast-mult 4 5)
