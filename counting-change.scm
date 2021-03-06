(define half-dollar 50)
(define quarter 25)
(define dime 10)
(define nickle 5)
(define penny 1)

(define (max-unit n)
  (cond ((= n 5) half-dollar)
        ((= n 4) quater)
        ((= n 3) dime)
        ((= n 2) nickle)
        ((= n 1) pennu)))

(define (counting-change money)
  (counting-change-iter money 5))
  
(define (counting-change-iter money n)
  (cond ((< money 0) 0)
        ((= money 0) 1)
        ((= n 0) 0)
        (else (+ (counting-change-iter (- money (max-unit n))
                                       n)
                  (counting-change-iter money (- n 1))))))
