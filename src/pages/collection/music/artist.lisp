(defpackage #:pages/collection/music/artist
  (:use #:cl)
  (:export #:render))

(defun pages/collection/music/artist:render ()
  (layouts/main:html5
    (:h1 "Artist")
    (:ul
      (loop for artist in data/music/artist:+data+ do
        (let ((name (getf artist :name))
              (link (getf artist :link)))
          (:li (getf artist :name)
               (:br)
               (:a :href (getf link :spotify)
                   :rel "noopener noreferrer"
                   :target "_blank"
                   (:img :src (getf link :profile)
                         :width "80px"
                         :height "80px")))))))) 
