; write procedure that calcs i j value of pascal triangle

(defn pascal-triangle-item [i j]
  (cond (> j i) 0
        (or (= j 1) (= i j)) 1
        :else (+ (pascal-triangle-item (- i 1) j) (pascal-triangle-item (- i 1) (- j 1)))))

(assert (= (pascal-triangle-item 1 1) 1))
(assert (= (pascal-triangle-item 2 1) 1))
(assert (= (pascal-triangle-item 2 2) 1))
(assert (= (pascal-triangle-item 3 2) 2))
(assert (= (pascal-triangle-item 3 1) 1))
(assert (= (pascal-triangle-item 3 3) 1))
(assert (= (pascal-triangle-item 4 1) 1))
(assert (= (pascal-triangle-item 4 4) 1))
(assert (= (pascal-triangle-item 4 2) 3))
(assert (= (pascal-triangle-item 4 3) 3))