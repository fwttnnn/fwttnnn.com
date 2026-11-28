(defpackage #:layouts/main
  (:use #:cl)
  (:export #:html5))

(defmacro layouts/main:html5 (desc &body body)
  `(sta6:html5
     (:head
       (:title "fattan")
       (:meta :charset "UTF-8")
       (:meta :name "viewport"
              :content "width=device-width, initial-scale=1.0")
       (:meta :name "description"
              :content ,desc)
       (:style (:raw "html, body { background: #000; } html { visibility: hidden; } html.loaded { visibility: visible; }"))
       (:link :rel "stylesheet" :href "/style/glob.css")
       (:link :rel "stylesheet" :href "/style/layout/gallery.css")
       (:link :rel "preconnect" :href "https://fonts.googleapis.com")
       (:link :rel "preconnect" :href "https://fonts.gstatic.com" :crossorigin t)
       (:link :href "https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible+Mono:ital,wght@0,200..800;1,200..800&display=swap" :rel "stylesheet")
       (:script :src "/script/load.js")
       (:script :src "https://unpkg.com/@studio-freight/lenis@1.0.42/dist/lenis.min.js" :async t)
       (:script :src "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js" :async t))
     (:main
       ,@body)
     (:script :type "module"
              :src "/script/app.js"
              :defer t)))
