(define (square x) (* x x))

(define (sum-of-square x y z)
  (+ (square x) (square y) (square z)))

(define (le x y)
  (or (< x y) (= x y)))
