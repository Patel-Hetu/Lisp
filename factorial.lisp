;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(defun tail-recursive-factorial (n &optional (acc 1))
  "Calculate the factorial of a number using tail recursion."
  (if (<= n 1)
      acc
      (tail-recursive-factorial (- n 1) (* acc n))))
