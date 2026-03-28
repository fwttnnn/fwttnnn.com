(defpackage #:data/cars/daily
  (:use #:cl)
  (:export #:+data+))

(defparameter data/cars/daily:+data+
  '((:manufacturer "Toyota"
     :cars (:name "Yaris (Bakpao)"
            :snapshots ("https://i.pinimg.com/736x/fb/44/39/fb4439406c827692a157d8980b7ef277.jpg"
                        "https://i.pinimg.com/736x/b5/f5/4a/b5f54a9aebc850c2d4bcdc95b90c7b6f.jpg")))
    (:manufacturer "Mazda"
     :cars (:name "Mazda 2"
            :snapshots ("https://i.pinimg.com/736x/be/bc/35/bebc35025900c694bc7ab1f78ea93ad6.jpg"
                        "https://i.pinimg.com/736x/a9/95/94/a99594f9cb147c0551a67047c589b18f.jpg"
                        "https://i.pinimg.com/736x/d5/8d/4d/d58d4d0de3d3161a241b6591ba6be645.jpg")))))
