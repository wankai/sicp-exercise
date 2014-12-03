; help procedure
(define (square x) (* x x))

(define (sqrt x) (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) (* 0.001 x)))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

