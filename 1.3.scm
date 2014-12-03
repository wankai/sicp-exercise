(define (square x) (* x x))

(define (sum-of-square x y z)
  (+ (square x) (square y) (square z)))

(define (le x y)
  (or (< x y) (= x y)))

(define (smallest x y z)
  (cond ((and (le x y) (le x z)) x)
        ((and (le y z) (le y z)) y)
        (else z)))

; solution
(define (sum-of-two-larger x y z)
  (- (sum-of-square x y z)
     (square (smallest x y z))))
