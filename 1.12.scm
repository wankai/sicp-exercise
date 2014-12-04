(define (pascal n)
  (pascal n n))

(define (display-pascal-iter row n)
  (if (= row 0)
      ()
      ((display-pascal-line n n)
       (display-pascal-iter (- n 1) n))))
       
(define (display-pascal-line row n)
  (each (range 0 row) (display )
