#lang sicp
; recursive
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

; iteration
(define (g n)
  (f-iter n 2 1 0))

(define (f-iter n a b c)
  (if (= n 0)
    c
    (f-iter (- n 1)
            (+ a (* 2 b) (* 3 c))
            a
            b)))

; test
(= (f 0) (g 0))
(= (f 1) (g 1))
(= (f 2) (g 2))
(= (f 3) (g 3))
(= (f 10) (g 10))
