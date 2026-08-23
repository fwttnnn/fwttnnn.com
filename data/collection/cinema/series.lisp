(defpackage #:data/collection/cinema/series
  (:use #:cl)
  (:export #:+data+))

(defparameter data/collection/cinema/series:+data+
  '((:genre "Law"
     :series ((:name "Better Call Saul"
               :link "https://en.wikipedia.org/wiki/Better_Call_Saul"
               :poster "https://upload.wikimedia.org/wikipedia/en/1/1c/Better_Call_Saul_season_1.jpg")))))
