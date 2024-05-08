; recursive process:
(defn f-rec [n]
  (if (< n 3) n (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

(assert (= (f-rec 2) 2))
(assert (= (f-rec 3) 4))
(assert (= (f-rec 4) 11))
(assert (= (f-rec 5) 25))

; iterative process

(defn f-iterative [n]
  (defn calc [x y z] (+ x (* 2 y) (* 3 z)))
  (defn f-iter [one two three count]
    (cond (< n 3)      n
          (<= count 0) one
          :else        (f-iter (calc one two three) one two (- count 1))))
  (f-iter 2 1 0 (- n 2)))

(assert (= (f-iterative 2) 2))
(assert (= (f-iterative 3) 4))
(assert (= (f-iterative 4) 11))
(assert (= (f-iterative 5) 25))