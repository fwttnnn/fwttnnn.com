(defpackage #:pages/collection/fiction/cinema/movie
  (:use #:cl)
  (:export #:render))

(defun pages/collection/fiction/cinema/movie:render ()
  (layouts/main:html5
    (:h1 "Movies")
    (:ul
      (loop for d in data/cinema/movie:+data+ do
        (let ((genre (getf d :genre))
              (movies (getf d :movies)))
          (:li (getf d :genre))
          (:ul
           (loop for movie in movies do
             (:li (getf movie :name)
                  (:br)
                  (:a :href (getf movie :link)
                      :rel "noopener noreferrer"
                      :target "_blank"
                       (:img :src (getf movie :poster)
                             :width "110px"
                             :height "163px"))))))))))
