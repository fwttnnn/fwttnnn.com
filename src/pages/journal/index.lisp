(defpackage #:pages/journal/index
  (:use #:cl)
  (:export #:html))

(defun pages/journal/index:html ()
  (html5:render
    (:ul 
      (:li "Life"
        (:ul
          (:li (:a :href "/journal/life/love" "Love")))))))
