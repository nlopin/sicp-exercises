#lang racket
(define (runtime) (current-inexact-milliseconds))

(define (search-for-primes start end)
  (cond [(> start end) "done"]
    [(even? start) (search-for-primes (+ 1 start) end)]
    [else (
      (timed-prime-test start)
      (search-for-primes (+ 2 start) end)
      )]))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime))
)

(define (start-prime-test n start-time)
  (if (prime? n) (report-prime (- (runtime) start-time)) "nothing"))

(define (prime? n) (= (smallest-divisor n) n))

(define (smallest-divisor n) (smallest-divisor-iter n 2))

(define (smallest-divisor-iter n test)
  (cond [(> (square test) n) n]
    [(divides? test n) test]
    [else (smallest-divisor-iter n (next-test test))]))

; avoid even numbers except 2
(define (next-test cur-test) (+ (if (= cur-test 2) 1 2)))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (divides? test n) (= 0 (remainder test n)))

(define (square x) (* x x))

(search-for-primes 1000 1100)