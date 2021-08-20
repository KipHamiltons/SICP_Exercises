(define (square_two_largest a b c)
		(cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
		      ((and (< b a) (< b c)) (+ (* a a) (* c c)))
		      (else (+ (* a a) (* b b)))))

(square_two_largest 1 2 3)
(square_two_largest 5 3 1)
(square_two_largest 4 4 4)

