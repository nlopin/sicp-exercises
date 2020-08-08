;implement cube-root procedure

(defn average [x y] (/ (+ x y) 2.0))

(defn square [x] (* x x))

(defn abs [x] (if (< x 0) (* -1 x) x))

(defn good-enough? [guess prev-guess] (< (abs (- guess prev-guess)) 0.001))

(defn improve [guess x]
  (average (/ (+ (/ x (square guess)) (* 2 guess)) 3) guess))

(defn cube-root-iter [guess x prev-guess]
  (if (good-enough? guess prev-guess)
    guess
    (cube-root-iter (improve guess x) x guess)))

(defn cube-root [x] (cube-root-iter 1 x 0))

(println (cube-root 27))