(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
  
; explain
a + b when a > 0
a - b when b <= 0
