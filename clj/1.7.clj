; improve good-enough? procedure
; instead of using fixed precision, compare previous and current guess and if they start to differ slighly, stop
; ✅ the sqrt will work better with very big and very small numbers
(defn abs [x] (if (< x 0) (* -1 x) x))

(defn good-enough? [guess prev-guess] (< (abs (- prev-guess guess)) 0.001))

(defn average [x y] (/ (+ x y) 2.0))

(defn improve [guess x] (average guess (/ x guess)))

(defn sqrt-iter [guess x prev-guess]
  (if (good-enough? guess prev-guess)
          guess
          (sqrt-iter (improve guess x) x guess)))

(defn sqrt [x] (sqrt-iter 1 x 0))

(println (sqrt 0.2))