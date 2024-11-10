#lang racket

(define (sum a b term next) 
  (define (iter a result)
    (if (> a b) result (iter (next a) (+ (term a) result)))
  )
  (iter a 0)
)

(define (identity x) x)
(define (next x) (+ x 1))
(sum 1 10 identity next)