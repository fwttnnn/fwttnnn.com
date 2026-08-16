(defpackage #:data/cinema/series
  (:use #:cl)
  (:export #:+data+))

(defparameter data/cinema/series:+data+
  '((:genre "Law"
     :movies ((:name "Better Call Saul"
               :link "https://en.wikipedia.org/wiki/Better_Call_Saul"
               :poster "https://upload.wikimedia.org/wikipedia/en/1/1c/Better_Call_Saul_season_1.jpg")))))
