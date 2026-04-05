(defpackage #:components/animated/text/bubble/rainbow
  (:use #:cl)
  (:export #:component))

(defun components/animated/text/bubble/rainbow:component (text)
  (spinneret:with-html
    (:span
      (loop for ch across text do
        (:span :style "display: inline-block; cursor: pointer;"
               :class "--component-text-bubble-rainbow"
               ch)))))
