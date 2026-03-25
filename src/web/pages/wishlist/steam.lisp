(defpackage #:pages/wishlist/steam
  (:use #:cl)
  (:export #:html))

(defun pages/wishlist/steam:html ()
  (html5:render
    (:p "Steam (PC) games wishlist")
    (:ul
      (loop for item in data/wishlist/steam:+data+ do
        (:li (getf item :category)
          (:ul
            (loop for link in (getf item :links) do
              (:li (:a :href link link)))))))))
