(defpackage #:pages/collection/cars/daily
  (:use #:cl)
  (:export #:render))

(defun pages/collection/cars/daily:render ()
  (layouts/main:html5
    (:h1 "Daily drive cars")
    (:p "I <3 underpowered hatchbacks, they don't slurp as much fuel.")
    (loop for d in data/cars/daily:+data+ do
      (:h2 (getf d :manufacturer)
        (:ul
          (loop for car in (getf d :cars) do
            (:li (getf car :name)
              (:ul :style "display: flex; flex-wrap: wrap; gap: 6px; list-style: none; margin: 8px 0px; padding: 0px;"
                (loop for snapshot in (getf car :snapshots) do
                  (:li (:a :href snapshot
                           :target "_blank"
                         (:img :width  (format nil "~a" 140)
                               :height (format nil "~a" 140)
                               :src    snapshot))))))))))))
