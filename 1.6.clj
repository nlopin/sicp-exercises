; Why `if` is a special form?  try custom new-if and see
(defn new-if [predicate then-clause else-clause] (cond predicate then-clause
                                                       :else else-clause))
(defn abs [x] (if (< x 0) (* -1 x) x))

(defn square [x] (* x x))

(defn good-enough? [guess x] (< (abs (- (square guess) x)) 0.001))

(defn average [x y] (/ (+ x y) 2.0))

(defn improve [guess x] (average guess (/ x guess)))

(defn sqrt-iter [guess x]
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(defn sqrt [x] (sqrt-iter 1 x))

(println (sqrt 2))

; it stucks in infinite loop because special form `if` execute one path or another based on a predicate
; `new-if` uses standard applicative-order evaluation and evaluates all arguments no matter what predicate is