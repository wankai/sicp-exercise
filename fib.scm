; recursive process
(define (fib n)
  (if (= n 0)
      1
      (* n (fib (- n 1)))))

; iterative process
(define (fib n)
  (fib-iter 1 1 n))
  
(define (fib-iter current product max)
  (if (> current max)
      product
      (fib-iter (+ current 1)
                (* current product)
                max)))
