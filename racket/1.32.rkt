#lang racket

(define (accumulate combiner null-value a b term next)
  (if (> a b) null-value
  (combiner (term a) (accumulate combiner null-value (next a) b term next)))
)

(define (accumulate-fast combiner null-value a b term next)
  (define (accumulate-iter a result)
    (if (> a b)
      result
      (accumulate-iter (next a) (combiner (term a) result))
    )
  )
  
  (accumulate-iter a null-value)
)

(define (sum a b term next)
  (define (combiner a b) (+ a b))
  (accumulate-fast combiner 0 a b term next)
)

(define (product a b term next)
  (define (combiner a b) (* a b))
  (accumulate-fast combiner 1 a b term next)
)

(define (identity x) x)
(define (next a) (+ a 1))
(sum 1 10 identity next)
(product 1 10 identity next)
