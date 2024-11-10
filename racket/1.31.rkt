#lang racket

(define (product a b term next)
  (if (> a b)
    1
    (* (term a) (product (next a) b term next))
  )
)

(define (product-fast a b term next)
  (define (product-iter a result)
    (if (> a b)
      result
      (product-iter (next a) (* (term a) result))
  ))
  (product-iter a 1)
)

; factorial
; (define (identity x) x)
; (define (next x) (+ 1 x))
; (product-fast 1 5 identity next)

; pi / 2 approximation
(define (term a) (/ (* 4.0 a a) (- (* 4 a a) 1)))
(define (next a) (+ 1 a))
(product-fast 1 10 term next)