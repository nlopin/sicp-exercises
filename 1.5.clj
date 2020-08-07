; applicative or normal order evaluation?

(defn p [] (p))

(defn test [x y] (if (= x 0) 0 y))

(println (test 0 (p)))

; clojure uses applicative-order evaluation. The code above will cause infinite loop