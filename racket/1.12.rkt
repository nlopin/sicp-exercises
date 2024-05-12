#lang racket

(define (pascal-triangle n)
  (if (= n 1)
      '((1))
      (let ([rows (pascal-triangle (- n 1))])
        (append rows (list (build-current-row (last rows)))))))

(define (build-current-row prev-row)
  (let ([shifted-left (cons 0 prev-row)]
        [shifted-right (append prev-row '(0))])
    (map + shifted-left shifted-right)))

(define (last lst)
  (if (null? (cdr lst))
      lst
      (last (cdr lst))))

(define rows (pascal-triangle 3))
(map displayln rows)
