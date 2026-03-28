(defpackage #:pages/index
  (:use #:cl)
  (:export #:html))

(defun pages/index:html ()
  (html5:render
    (:p "Hi, welcome to my little corner on the internet!")
    (:ul
      (:li (:a :href "/collection" "/collection"))
      (:li (:a :href "/journal" "/journal"))
      (:li (:a :href "/wishlist" "/wishlist")))))
