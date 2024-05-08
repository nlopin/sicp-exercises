#lang racket

(define (my-sqrt x) (sqrt-iter 1 x))

(define (sqrt-iter guess x) 
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (improve guess x) 
  (avg guess (/ x guess))
)

(define (avg x y) (/ (+ x y) 2)) 

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.00001))

(define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(my-sqrt 9)