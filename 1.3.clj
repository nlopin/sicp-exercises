(defn square [x] (* x x))

(defn sum-of-max-squares [x y z]
  (cond (and (< x y) (< x z)) (+ (square y) (square z))
        (and (< y x) (< y z)) (+ (square x) (square z))
        :else                 (+ (square x) (square y))))

(println (sum-of-max-squares 5 10 15))
(println (sum-of-max-squares 15 5 10))
(println (sum-of-max-squares 15 10 5))