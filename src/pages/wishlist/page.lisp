(defpackage #:pages/wishlist/page
  (:use #:cl)
  (:export #:render))

(defun pages/wishlist/page:render ()
  (layouts/main:html5
    (:ul 
      (:li "Games"
        (:ul
          (:li (:a :href "/wishlist/games/steam" "Steam")))))))
