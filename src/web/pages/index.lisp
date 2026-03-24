(defpackage #:pages/index
  (:use #:cl)
  (:export #:html))

(defun pages/index:html ()
  (html5:render "Homepage"
    (:p "Hello, from Common Lisp!")))
