(defpackage #:helpers/path
  (:use #:cl)
  (:export #:slugify))

(defun helpers/path:slugify (string)
  (string-downcase
    (substitute #\- #\Space
                (string-trim " "
                             string))))
