#lang racket

(define (accumulate combiner null-value a b term next filter)
  (define (accumulate-iter a result) (
    if (or (> a b) (not (filter a)))
      result
      (accumulate-iter (next a) (combiner (term a) result)) 
  ))
  (accumulate-iter a null-value)
)

(define (identity x) x)
(define (next x) (+ 1 x))
(define (sum x y) (+ x y))
(define (all x) #t)

(accumulate sum 0 1 10 identity next all)

