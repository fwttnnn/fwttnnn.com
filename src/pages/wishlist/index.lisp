(defpackage #:pages/wishlist/index
  (:use #:cl)
  (:export #:render))

(defun pages/wishlist/index:render ()
  (layouts/main:html5
    (:ul 
      (:li "Games"
        (:ul
          (:li (:a :href "/wishlist/games/steam" "Steam")))))))
