(defn square [x] (* x x))

(defn sum-squares [x y] (+ (square x) (square y)))

(defn sum-of-max-squares [x y z]
  (cond (and (< x y) (< x z)) (sum-squares y z)
        (and (< y x) (< y z)) (sum-squares x z)
        :else                 (sum-squares x y)))

(println (sum-of-max-squares 5 10 15))
(println (sum-of-max-squares 15 5 10))
(println (sum-of-max-squares 15 10 5))