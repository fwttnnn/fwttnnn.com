(defpackage #:data/animals
  (:use #:cl)
  (:export #:+data+))

(defparameter data/animals:+data+
  '((:name "Crows"
     :images '("https://i.pinimg.com/736x/6d/04/a8/6d04a82c85bee54c5d6fda3d19e9d0e2.jpg"
               "https://i.pinimg.com/736x/f8/0c/32/f80c323d56643e4a25f8585eac864e4d.jpg"
               "https://i.pinimg.com/vwebp/736x/19/fd/d3/19fdd36c88cc2f79b831fe8c25c229f8.webp"))
    (:name "Orcas"
     :images '("https://i.pinimg.com/vwebp/1200x/f8/33/5b/f8335b799b00b74953bdfc3aa751a065.webp"
               "https://i.pinimg.com/vwebp/736x/4f/fd/db/4ffddbe2b9d9a3628b493266518dabd1.webp"))))
