(defpackage #:pages/collection/fiction/cinema/animated
  (:use #:cl)
  (:export #:render))

(defun pages/collection/fiction/cinema/animated:render ()
  (layouts/main:html5
    (:h1 "Animated")
    (:ul
      (loop for d in data/cinema/animated:+data+ do
        (let ((genre (getf d :genre))
              (animes (getf d :animes)))
          (:li (getf d :genre))
          (:ul
           (loop for anime in animes do
             (:li (getf anime :name)
                  (:br)
                  (:a :href (getf anime :link)
                      :rel "noopener noreferrer"
                      :target "_blank"
                       (:img :src (getf anime :poster)
                             :width "110px"
                             :height "163px"))))))))))
