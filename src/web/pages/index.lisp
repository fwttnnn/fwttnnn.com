(defpackage #:pages/index
  (:use #:cl)
  (:export #:html))

(defun pages/index:html ()
  (html5:render "Homepage"
    (:p "Hello, from Common Lisp!")
    (:ul
     (loop for item in data/steam/wishlist:+data+ do
       (:li (getf item :category)
         (:ul
           (loop for link in (getf item :links) do
             (:li (:a :href link link)))))))))
