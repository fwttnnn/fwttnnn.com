(defpackage #:pages/index
  (:use #:cl)
  (:export #:html))

(defun pages/index:html ()
  (html5:render
    (:p "Hi, welcome to my little corner on the internet!")
    (:ul
      (loop for item in data/steam/wishlist:+data+ do
        (:li (getf item :category)
          (:ul
            (loop for link in (getf item :links) do
              (:li (:a :href link link)))))))))
