;; recusive procedure
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (f (- n 2))
         (f (- n 3)))))
         
;; iterative procedure
;; c <- a + b + c
;; b <- c
;; a <- b

(define (f n)
  (if (< n 3)
      n
      (f-iter 0 1 2 3 n)))
  
(define (f-iter a b c count n)
  (if (> count n)
      c
      (f-iter b c (+ a b c) (+ count 1) n)))
