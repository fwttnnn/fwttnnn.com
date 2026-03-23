(defpackage #:app
  (:use #:cl)
  (:export #:main))

(defun app:main ()
  (let ((spinneret:*html-style* :tree))
    (format t "~a~%"
      (spinneret:with-html-string
        (:p "Hello, from Common Lisp!")))))
