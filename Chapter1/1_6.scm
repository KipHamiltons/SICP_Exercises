(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (abs x)
  (if (< x 0) (* -1 x) x))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(good-enough? 0 0.00001) ; #t
(good-enough? 0 0.001) ; #f

(define (average x y)
  (/ (+ x y) 2))

(average 1.0 2.0)
(average -1.0 4.7)

(define (improve guess x)
  (average guess (/ x guess)))

(improve 1.0 2.0)
(improve -1.0 7.0)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
	             x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (sqrt 2) ; Reaches max recursion depth because
           ; it evaluates the else-clause anyway
           ; and that continues to happen forever

; illustrated by this example
(define (recurses-forever)
  (recurses-forever))

(if #t 1
    (recurses-forever))

; (new-if #t 1 (recurses-forever))

; Exercise 1.7:

(sqrt 0.00001) ; Not good. should be 0.003

; (sqrt 10000000000000.0) ; Also not good - doesn't terminate

(define (good-enough? guess x)
  (< (abs (- (/ (square guess) x) 1)) 0.001 )) ; within 0.1%

(good-enough? 1 1)
(good-enough? 1.4142 2)

(sqrt 2)




