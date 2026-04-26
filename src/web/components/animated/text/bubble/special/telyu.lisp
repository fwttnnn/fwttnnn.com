(defpackage #:components/animated/text/bubble/special/telyu
  (:use #:cl)
  (:export #:component))

(defun components/animated/text/bubble/special/telyu:component (text)
  (spinneret:with-html
    (:span
      (loop for ch across text do
        (:span :style "display: inline-block; cursor: pointer;"
               :class "--component-text-bubble--special-telyu"
               ch)))))
