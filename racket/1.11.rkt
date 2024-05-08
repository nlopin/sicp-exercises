#lang racket

(define (f-rec n) (
    if (< n 3)
      n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))
    ))

(f-rec 2)
(f-rec 11)

; iterative process keeps intermediate state in 4 state variables
(define (f n) (if (< n 3) n (f-iter 0 1 2 (- n 2))))

(define (f-iter x y z n) (
  if (= n 0)
  z
  (f-iter y z (+ z (* 2 y) (* 3 x)) (- n 1))
))

(f 2)
(f 11)