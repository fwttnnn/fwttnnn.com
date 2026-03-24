(defpackage #:html5
  (:use #:cl)
  (:export #:render))

(defmacro html5:render (title &body body)
  `(progn
     (format t "<!DOCTYPE html>~%")
     (let ((spinneret:*html-style* :tree))
       (format t "~a~%"
         (spinneret:with-html-string
           (:html
            (:head
             (:title ,title)
             (:script :src "https://unpkg.com/@studio-freight/lenis@1.0.42/dist/lenis.min.js")
             (:script :src "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js")))
            (:body ,@body))))))
