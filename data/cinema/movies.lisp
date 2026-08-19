(defpackage #:data/cinema/movies
  (:use #:cl)
  (:export #:+data+))

(defparameter data/cinema/movies:+data+
  '((:genre "Politics"
     :movies ((:name "A Taxi Driver"
               :link "https://en.wikipedia.org/wiki/A_Taxi_Driver"
               :poster "https://upload.wikimedia.org/wikipedia/en/2/23/A_Taxi_Driver.jpg")))))
