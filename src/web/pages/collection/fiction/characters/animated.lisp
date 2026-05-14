(defpackage #:pages/collection/fiction/characters/animated
  (:use #:cl)
  (:export #:html))

(defun pages/collection/fiction/characters/animated:html ()
  (html5:render
    (:ul :style "list-style: none;"
      (loop for ch in data/characters/animated:+data+ do
        (:li :style "margin-bottom: 24px;"
          (:img :height "128"
                :width  "128"
                :style  "object-fit: cover;"
                :src (getf ch :portrait))
          (:p :style "margin: 0;" (getf ch :name)))))))
