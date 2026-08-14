(defpackage #:components/animated/link
  (:use #:cl)
  (:export #:component))

(defun components/animated/link:component (animated-text-component href text &optional icon)
  (sta6:html
    (when icon
      (:a :style "display: inline-flex; align-items: center; vertical-align: middle;"
             :href href
             :target "_blank"
             :rel "noreferrer noopener"
             (:img :src icon
                   :width 20
                   :height 20))
      (:raw "&nbsp;"))
    (:a :href href
        :target "_blank"
        :rel "noreferrer noopener"
        (funcall animated-text-component
                 text))))
