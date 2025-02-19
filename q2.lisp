;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(defun combine-and-maximize (arr1 arr2)
  "Combine two arrays, alternating elements and their maximum."
  (let* ((combined (loop for x in arr1
                          for y in arr2
                          collect x
                          collect y))
         (maximized (loop for i below (length combined) by 2
                          collect (max (nth i combined) (nth (1+ i) combined)))))
    maximized))

