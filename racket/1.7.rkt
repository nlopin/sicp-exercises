#lang racket

(define (my-sqrt x) (sqrt-iter 1 0 x))
(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (sqt-iter (improve guess x) guess x)
  )
)

(define (improve guess x) 
  (avg guess (/ x guess))
)

(define (avg x y) (/ (+ x y) 2)) 

(define (good-enough? guess prev-guess) (= guess prev-guess))

(define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(my-sqrt 9.0)