(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p)) ; Creates infinite recursion for applicative ordering
             ; but short-circuits for normal ordering
             ; because applicative ordering gets the values for
             ; all of the operands then evaluates `test` properly
             ; while normal ordering just gets an expression
             ; for the operands until it needs to evaluate them
