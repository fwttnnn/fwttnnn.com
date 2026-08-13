(defpackage #:components/animated/text/bubble/blue
  (:use #:cl)
  (:export #:component))

(defun components/animated/text/bubble/blue:component (text)
  (sta6:html
    (:span
      (loop for ch across text do
        (:span :style "display: inline-block; cursor: pointer;"
               :class "--component-text-bubble-blue"
               ch)))))
