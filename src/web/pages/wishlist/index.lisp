(defpackage #:pages/wishlist/index
  (:use #:cl)
  (:export #:html))

(defun pages/wishlist/index:html ()
  (html5:render
    (:ul 
      (:li "Games"
        (:ul
          (:li (:a :href "/wishlist/games/steam" "Steam")))))))
