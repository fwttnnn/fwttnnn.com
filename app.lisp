(defpackage #:app
  (:use #:cl)
  (:export #:main))

(defun app:main ()
  (pages/index:html))
