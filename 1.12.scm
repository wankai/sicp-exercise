(define (pascal row column)
  (if (or (= row 0) (= row column))
      0
      (+ (pascal (- row 1) (- column 1))
         (pascal (- row 1) column))))

(define (draw-pascal n)
  (draw-pascal-iter n n))

(define (draw-pascal-iter row n)
  (if (= row 0)
      ()
      ((draw-pascal-iter (- n 1) n)
       (newline)
       (draw-pascal-line n n))))
       
(define (draw-pascal-line row n)
  (draw-pascal-line-iter row row n))
  
(define (draw-pascal-line-iter column row n)
  (display (pascal row column))
  (if (< column row) (display " "))
  (draw-pascal-line-iter (- column 1) row n))
