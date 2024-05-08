#lang racket

(define (my-cubic-rt x)
  (define (sqrt-iter guess prev-guess)
    (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess) guess)
    )
  )
  (define (improve guess)
    ; (avg guess (/ x guess))
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)
  )

  (define (avg x y) (/ (+ x y) 2))

  (define (good-enough? guess prev-guess) (= guess prev-guess))

  (define (abs x) (if (< x 0) (- x) x))

  (define (square x) (* x x))

  (sqrt-iter 1 0)
)
(my-cubic-rt 27.0)