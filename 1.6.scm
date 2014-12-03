(define (new-if predict then-clause else-clause)
  (cond (predict then-clause)
        (else else-clause)))
        
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x))

; because new-if is applicative-order and sqrt is recursive procedure
; (sqrt-iter guess x) will loop forever
