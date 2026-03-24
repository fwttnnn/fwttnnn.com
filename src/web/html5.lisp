(defpackage #:html5
  (:use #:cl)
  (:export #:render))

(defmacro html5:render (title &body body)
  `(let ((spinneret:*html-style* :tree))
     (format t "~a~%"
       (spinneret:with-html-string
         (:html
          (:head (:title ,title))
          (:body ,@body))))))
