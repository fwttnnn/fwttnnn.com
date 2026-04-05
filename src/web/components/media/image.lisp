(defpackage #:components/media/image
  (:use #:cl)
  (:export #:component))

(defun components/media/image:component (src)
  (spinneret:with-html
    (:img :src    src
          :width  101
          :height 133.2
          :style  "width: 100px; height: 133.2px; object-fit: cover;")))
