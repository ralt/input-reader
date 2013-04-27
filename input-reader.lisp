(defun get-input ()
  (reduce #'(lambda (a b)
              (format nil "~A~%~A" a b))
          (with-open-stream (s *standard-input*)
            (loop for line = (read-line s nil)
                  while line
                  collect line))))

;;; cat file | sbcl --script %
(format t "~A~%" (get-input))
