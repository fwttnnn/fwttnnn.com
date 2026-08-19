(defpackage #:pages/collection/fiction/cinema/series
  (:use #:cl)
  (:export #:render))

(defun pages/collection/fiction/cinema/series:render ()
  (layouts/main:html5
    (:h1 "Series")
    (:ul
      (loop for d in data/cinema/series:+data+ do
        (let ((genre (getf d :genre))
              (series (getf d :series)))
          (:li (getf d :genre))
          (:ul
           (loop for serie in series do
             (:li (getf serie :name)
                  (:br)
                  (:a :href (getf serie :link)
                      :rel "noopener noreferrer"
                      :target "_blank"
                       (:img :src (getf serie :poster)
                             :width "110px"
                             :height "163px"))))))))))
