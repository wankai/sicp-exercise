(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; applicative-order evaluation. loop forever
(test 0 (p))
(test 0 (p))
(test 0 (p))
....

; normal-order evaluation. result is 0
(test 0 (p))
(if (= 0 0) 0 (p))
0
