(defn a-plus-abs-b [a b]
  ((if (> b 0) + -) a b))

(println (a-plus-abs-b 5 3))
(println (a-plus-abs-b 5 -3))

(assert (= (a-plus-abs-b 1 1) 2))
(assert (= (a-plus-abs-b 1 -1) 2))
