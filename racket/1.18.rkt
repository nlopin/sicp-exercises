#lang racket

(define (fast-mult a b) (fast-mult-iter a b 0))

(define (fast-mult-iter a b acc)
  (cond
    [(or (= b 0) (= a 0)) 0]
    [(= b 1) (+ a acc)]
    [(odd? b) (fast-mult-iter a (- b 1) (+ acc a))]
    [else (fast-mult-iter (double a) (halve b) acc)]))


(define (halve a) (/ a 2))

(define (double a) (* 2 a))

(fast-mult 4 0)
(fast-mult 4 1)
(fast-mult 4 4)
(fast-mult 4 5)
