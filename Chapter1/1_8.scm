(define (cube x)
  (* x x x))

(cube 1)
(cube 2)
(cube -3)

(define (cube-deriv x)
  (* 3 x x))

(cube-deriv 1)
(cube-deriv 2)
(cube-deriv -3)

(define (ratio-term x a)
  (/ (- (cube x) a)  (cube-deriv x)))

(ratio-term 1 1)
(ratio-term 2 2)
(ratio-term -3 3)
(ratio-term 1 27)
(ratio-term -29/3 27)

(define (abs x)
  (if (< x 0)
    (* x -1)
    x))

(abs 1)
(abs 2)
(abs -3)

(define (good-enough? guess x)
  (< (abs (- (/ (cube guess) x) 1)) 0.0001))

(good-enough? 1 1)
(good-enough? 1 -3)
(good-enough? 1000000 1000001)
(good-enough? 2.5 -2.5)
(good-enough? 2.000001 8)

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (- guess (ratio-term guess x)) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 1)
(cube-root 27)
(cube-root 1000000)
 
