(defpackage #:html5
  (:use #:cl)
  (:export #:render))

(defmacro html5:render (&body body)
  `(progn
     (format t "<!DOCTYPE html>~%")
     (let ((spinneret:*html-style* :tree)
           (          *print-pretty* nil))
       (format t "~a~%"
         (spinneret:with-html-string
           (:html
            (:head
             (:title "fattan")
             (:meta :charset "UTF-8")
             (:meta :name "viewport"
                    :content "width=device-width, initial-scale=1.0")
             (:link :rel "stylesheet"
                    :href "/style/glob.css")
             (:script :src "https://unpkg.com/@studio-freight/lenis@1.0.42/dist/lenis.min.js")
             (:script :src "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js")))
            (:body
              ,@body
              (:script :type "module"
                       :src "/script/app.js")))))))
