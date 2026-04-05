(defpackage #:components/media/video
  (:use #:cl)
  (:export #:component))

(defun components/media/video:component (src)
  (spinneret:with-html
    (:video :src         src
            :width       101
            :height      133.2
            :muted       t
            :loop        t
            :playsinline t
            :preload     "auto"
            :style       "aspect-ratio: 100 / 133.2; width: 100px; height: 133.2px; object-fit: cover;"
            :class       "--component-media-video")))
