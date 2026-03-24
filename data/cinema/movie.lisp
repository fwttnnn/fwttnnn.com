(defpackage #:data/cinema/movie
  (:use #:cl)
  (:export #:+data+))

(defparameter data/cinema/movie:+data+
  '((:genre "Comedy"
     :movies ((:name ""
               :poster ""
               :link "")
              (:name ""
               :poster ""
               :link "")))
    (:genre "Adventure"
     :movies ((:name ""
               :poster ""
               :link "")))))
