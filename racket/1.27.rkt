#lang racket

(define (congruent-test n) (
  (congruent-test-iter n (- n 1))
))

(define (congruent-test-iter n a) (
  (cond [(= a 1) (#t)]
    [else (printf "~s: ~s\n" a (congruent? a n)) (congruent-test-iter n (- a 1))])
))

(define (congruent? a m)
  (= a (expmod a m m))
  )

(define (expmod base exp m)
  (cond
    [(= exp 0) 1]
    [(even? exp) (remainder (square (expmod base (/ exp 2) m)) m)]
    [else (remainder (* base (expmod base (- exp 1) m)) m)]
  )
)

(define (square x) (* x x))

(congruent-test 561)