(defpackage #:layouts/main
  (:use #:cl)
  (:export #:html5))

(defmacro layouts/main:html5 (&body body)
  `(sta6:html5
     (:head
       (:title "fattan")
       (:meta :charset "UTF-8")
       (:meta :name "viewport"
              :content "width=device-width, initial-scale=1.0")
       (:link :rel "stylesheet"
              :href "/style/glob.css")
       (:link :rel "stylesheet"
              :href "/style/layout/gallery.css")
       (:script :src "https://unpkg.com/@studio-freight/lenis@1.0.42/dist/lenis.min.js")
       (:script :src "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"))
     ,@body
     (:script :type "module"
              :src "/script/app.js")))
