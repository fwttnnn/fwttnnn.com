(defpackage #:pages/wishlist/games/steam
  (:use #:cl)
  (:export #:render))

(defun pages/wishlist/games/steam:render ()
  (layouts/main:html5
    (:p "Steam (PC) games wishlist")
    (:ul
      (loop for item in data/wishlist/games/steam:+data+ do
        (:li (getf item :category)
          (:ul
            (loop for link in (getf item :links) do
              (:li (:a :href link link)))))))))
