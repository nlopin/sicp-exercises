#lang racket

(define (num-integral fn a b n) 
  (define h (/ (- b a) n))
  (define (add-2h x) (+ x h h))

  (* (/ h 3) (+
    (fn a)
    (fn b)
    (* 4 (sum (add-2h a) b fn add-2h))
    (* 2 (sum (+ a h) b fn add-2h))
  ))
)

(define (sum a b term next) (
  if (> a b) 0 (+ (term a) (sum (next a) b term next))
))

(define (next x) (+ x 1))
(define (identity x) x)

(define (cube x) (* x x x))
(num-integral cube 0.0 1.0 1000.0)