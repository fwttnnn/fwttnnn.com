(defpackage #:app
  (:use #:cl)
  (:export #:main))

(defun app:main ()
  (format t "~a~%"
    (spinneret:with-html-string
      (:p "Hello, from Common Lisp!"))))
